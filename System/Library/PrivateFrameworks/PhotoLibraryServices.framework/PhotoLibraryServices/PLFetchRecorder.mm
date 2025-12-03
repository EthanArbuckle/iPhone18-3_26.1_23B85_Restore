@interface PLFetchRecorder
+ (BOOL)_isRecordingFileFromURL:(id)l;
+ (BOOL)isCurrentProcessEnabledForRecordingBundle:(id)bundle;
+ (PLFetchRecorderSQLGeneralizationResult)_generalizedStringByFactoringOutInClausesFromSQL:(id)l;
+ (PLFetchRecorderSQLGeneralizationResult)generalizedSQLFromSQL:(id)l bindVariables:(id)variables fromFetchRequest:(id)request;
+ (id)_findRecordingsWithinURL:(id)l;
+ (id)_generalizedStringByFactoringOutLimitClauseFrom:(id)from;
+ (id)_paramStringFromBindVariableComponent:(id)component;
+ (id)fileURLsToExistingRecordings;
+ (id)sqlFromGeneralizedSQL:(id)l bindVars:(id)vars multiInCounts:(id)counts error:(id *)error;
- (PLFetchRecorder)init;
- (void)_startRecording;
- (void)_startWatchingRecordingFile;
- (void)_stopRecording;
- (void)_stopWatchingRecordingFile;
- (void)managedObjectContext:(id)context didExecuteFetchRequest:(id)request withSQLString:(id)string bindVariables:(id)variables rowCount:(int64_t)count;
- (void)managedObjectContext:(id)context willExecuteFetchRequest:(id)request;
@end

@implementation PLFetchRecorder

- (PLFetchRecorder)init
{
  v9.receiver = self;
  v9.super_class = PLFetchRecorder;
  v2 = [(PLFetchRecorder *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_stateLock._os_unfair_lock_opaque = 0;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_BACKGROUND, 0);
    v6 = dispatch_queue_create("com.apple.photos.lofr.filewatcher", v5);
    fileWatcherQueue = v3->_fileWatcherQueue;
    v3->_fileWatcherQueue = v6;
  }

  return v3;
}

- (void)_startRecording
{
  v22 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_stateLock);
  if (self->_recording)
  {
LABEL_12:
    os_unfair_lock_unlock(&self->_stateLock);
    return;
  }

  v3 = PLBackendGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_INFO, "LOFR Starting recording...", buf, 2u);
  }

  v4 = NSTemporaryDirectory();
  v5 = [v4 stringByAppendingPathComponent:@"lofr"];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if ([defaultManager fileExistsAtPath:v5])
  {
LABEL_7:
    v10 = +[PLFetchRecording suggestedFilenameForCurrentProcess];
    v11 = [v5 stringByAppendingPathComponent:v10];

    v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:v11];
    v13 = [[PLFetchRecording alloc] initWithMode:1 atFileURL:v12 size:3145728];
    recording = self->_recording;
    self->_recording = v13;

    if (self->_recording)
    {
      v15 = PLBackendGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v19 = v11;
        _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_INFO, "LOFR Started recording to path: %@", buf, 0xCu);
      }

      [(PLFetchRecorder *)self _startWatchingRecordingFile];
    }

    goto LABEL_12;
  }

  v17 = 0;
  v7 = [defaultManager createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:&v17];
  v8 = v17;
  v9 = v8;
  if (v7)
  {

    goto LABEL_7;
  }

  v16 = PLBackendGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v19 = v5;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "LOFR Can't create dir: %@, error: %@", buf, 0x16u);
  }

  os_unfair_lock_unlock(&self->_stateLock);
}

- (void)managedObjectContext:(id)context didExecuteFetchRequest:(id)request withSQLString:(id)string bindVariables:(id)variables rowCount:(int64_t)count
{
  countCopy = count;
  contextCopy = context;
  requestCopy = request;
  stringCopy = string;
  variablesCopy = variables;
  userInfo = [contextCopy userInfo];
  v16 = [userInfo objectForKeyedSubscript:@"lofr_preStats"];

  userInfo2 = [contextCopy userInfo];
  v18 = [userInfo2 objectForKeyedSubscript:@"lofr_statementStartTime"];

  v34 = v18;
  [v18 doubleValue];
  v20 = v19;
  databaseStatistics = [contextCopy databaseStatistics];
  v35 = v16;
  v22 = [databaseStatistics databaseStatisticsBySubtracting:v16];

  string = [MEMORY[0x1E696AD60] string];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __100__PLFetchRecorder_managedObjectContext_didExecuteFetchRequest_withSQLString_bindVariables_rowCount___block_invoke;
  v39[3] = &unk_1E7578398;
  v24 = string;
  v40 = v24;
  v25 = variablesCopy;
  v41 = v25;
  [v25 enumerateObjectsUsingBlock:v39];
  if ([requestCopy fetchLimit])
  {
    if ([v24 length])
    {
      [v24 appendString:{@", "}];
    }

    [v24 appendFormat:@"%lu", objc_msgSend(requestCopy, "fetchLimit")];
  }

  v36 = stringCopy;
  v37 = requestCopy;
  v26 = [objc_opt_class() generalizedSQLFromSQL:stringCopy bindVariables:v25 fromFetchRequest:requestCopy];
  v28 = v27;
  [(PLFetchRecorder *)self _startRecording];
  os_unfair_lock_lock(&self->_stateLock);
  v29 = self->_recording;
  os_unfair_lock_unlock(&self->_stateLock);
  v30 = [contextCopy description];
  cacheHitPages = [v22 cacheHitPages];
  cacheMissPages = [v22 cacheMissPages];
  Current = CFAbsoluteTimeGetCurrent();
  [(PLFetchRecording *)v29 recordStatementWithNormalizedSQL:v26 bindVariablesAsString:v24 multiInCounts:v28 contextName:v30 pagesHit:cacheHitPages pagesMissed:cacheMissPages rowCount:Current - v20 duration:__PAIR64__(qos_class_self() QOS:countCopy)];
}

void __100__PLFetchRecorder_managedObjectContext_didExecuteFetchRequest_withSQLString_bindVariables_rowCount___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v6 = [a2 value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 timeIntervalSinceReferenceDate];
    [*(a1 + 32) appendFormat:@"%f", v5];
  }

  else
  {
    [*(a1 + 32) appendFormat:@"%@", v6];
  }

  if ([*(a1 + 40) count] >= 2 && objc_msgSend(*(a1 + 40), "count") - 1 > a3)
  {
    [*(a1 + 32) appendString:{@", "}];
  }
}

- (void)managedObjectContext:(id)context willExecuteFetchRequest:(id)request
{
  contextCopy = context;
  databaseStatistics = [contextCopy databaseStatistics];
  userInfo = [contextCopy userInfo];
  [userInfo setObject:databaseStatistics forKeyedSubscript:@"lofr_preStats"];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:CFAbsoluteTimeGetCurrent()];
  userInfo2 = [contextCopy userInfo];

  [userInfo2 setObject:v8 forKeyedSubscript:@"lofr_statementStartTime"];
}

- (void)_stopWatchingRecordingFile
{
  fileWatcherSource = self->_fileWatcherSource;
  if (fileWatcherSource)
  {
    dispatch_source_cancel(fileWatcherSource);
    fileWatcherSource = self->_fileWatcherSource;
  }

  self->_fileWatcherSource = 0;
}

- (void)_startWatchingRecordingFile
{
  if (self->_fileWatcherSource)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLFetchRecorder.m" lineNumber:233 description:@"Cannot start watching when watcher already set."];
  }

  v3 = [(PLFetchRecording *)self->_recording fd];
  v4 = dispatch_source_create(MEMORY[0x1E69E9728], v3, 1uLL, self->_fileWatcherQueue);
  objc_initWeak(&location, self);
  if (v4)
  {
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __46__PLFetchRecorder__startWatchingRecordingFile__block_invoke;
    handler[3] = &unk_1E75788C0;
    objc_copyWeak(&v11, &location);
    dispatch_source_set_event_handler(v4, handler);
    dispatch_activate(v4);
    objc_destroyWeak(&v11);
  }

  else
  {
    v5 = PLBackendGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "LOFR Cannot create file watcher for fetch recorder.", v9, 2u);
    }
  }

  fileWatcherSource = self->_fileWatcherSource;
  self->_fileWatcherSource = v4;

  objc_destroyWeak(&location);
}

void __46__PLFetchRecorder__startWatchingRecordingFile__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _stopRecording];
    [v2 _startRecording];
    WeakRetained = v2;
  }
}

- (void)_stopRecording
{
  os_unfair_lock_lock(&self->_stateLock);
  if (self->_recording)
  {
    v3 = PLBackendGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_INFO, "LOFR Stopping recording...", v5, 2u);
    }

    [(PLFetchRecorder *)self _stopWatchingRecordingFile];
    recording = self->_recording;
    self->_recording = 0;
  }

  os_unfair_lock_unlock(&self->_stateLock);
}

+ (id)sqlFromGeneralizedSQL:(id)l bindVars:(id)vars multiInCounts:(id)counts error:(id *)error
{
  lCopy = l;
  varsCopy = vars;
  countsCopy = counts;
  string = [MEMORY[0x1E696AD60] string];
  v14 = [varsCopy componentsSeparatedByString:{@", "}];
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v16 = [lCopy componentsSeparatedByCharactersInSet:whitespaceCharacterSet];

  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v34[3] = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v33[3] = 0;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __70__PLFetchRecorder_sqlFromGeneralizedSQL_bindVars_multiInCounts_error___block_invoke;
  v24[3] = &unk_1E75783C0;
  v29 = v34;
  v17 = v14;
  v25 = v17;
  v18 = string;
  v26 = v18;
  selfCopy = self;
  v19 = countsCopy;
  v27 = v19;
  v30 = v33;
  errorCopy = error;
  v20 = v16;
  v28 = v20;
  [v20 enumerateObjectsUsingBlock:v24];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v22 = [v18 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  _Block_object_dispose(v33, 8);
  _Block_object_dispose(v34, 8);

  return v22;
}

void __70__PLFetchRecorder_sqlFromGeneralizedSQL_bindVars_multiInCounts_error___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v30 = a2;
  if ([v30 hasPrefix:@"?"])
  {
    v5 = *(*(*(a1 + 64) + 8) + 24);
    if (v5 < [*(a1 + 32) count])
    {
      v6 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 64) + 8) + 24)];
      v7 = *(a1 + 40);
      v8 = [*(a1 + 80) _paramStringFromBindVariableComponent:v6];
      [v7 appendString:v8];

      v9 = [v30 stringByReplacingOccurrencesOfString:@"?" withString:&stru_1F0F06D80];
      if ([v9 length])
      {
        [*(a1 + 40) appendString:v9];
      }

      [*(a1 + 40) appendString:@" "];
      ++*(*(*(a1 + 64) + 8) + 24);

      goto LABEL_28;
    }
  }

  if ([v30 hasPrefix:@"(?)"])
  {
    v10 = *(*(*(a1 + 64) + 8) + 24);
    if (v10 < [*(a1 + 32) count])
    {
      v6 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 64) + 8) + 24)];
      v11 = *(a1 + 40);
      v12 = [*(a1 + 80) _paramStringFromBindVariableComponent:v6];
      [v11 appendFormat:@"(%@)", v12];

      ++*(*(*(a1 + 64) + 8) + 24);
LABEL_28:

      goto LABEL_32;
    }
  }

  if ([v30 hasPrefix:@"(*)"])
  {
    objc_msgSend(*(a1 + 40), "appendString:", @"(");
    v13 = [*(a1 + 48) objectAtIndexedSubscript:*(*(*(a1 + 72) + 8) + 24)];
    v14 = [v13 integerValue];

    ++*(*(*(a1 + 72) + 8) + 24);
    if (v14 >= 1)
    {
      for (i = 0; v14 != i; ++i)
      {
        v16 = *(*(*(a1 + 64) + 8) + 24);
        if (v16 >= [*(a1 + 32) count])
        {
          break;
        }

        v17 = i + *(*(*(a1 + 64) + 8) + 24);
        if (v17 >= [*(a1 + 32) count])
        {
          v21 = *(a1 + 88);
          if (!v21 || *v21)
          {
            continue;
          }

          v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"LOFR index out of bounds: %ld, item count: %ld", v17, objc_msgSend(*(a1 + 32), "count")];
          v22 = PLErrorCreate();
          v23 = *(a1 + 88);
          v24 = *v23;
          *v23 = v22;
        }

        else
        {
          v18 = [*(a1 + 32) objectAtIndexedSubscript:v17];
          v19 = *(a1 + 40);
          v20 = [*(a1 + 80) _paramStringFromBindVariableComponent:v18];
          [v19 appendString:v20];

          if (v14 - 1 > i)
          {
            [*(a1 + 40) appendString:{@", "}];
          }
        }
      }
    }

    *(*(*(a1 + 64) + 8) + 24) += v14;
    v25 = *(a1 + 40);
    v26 = @" ");
    goto LABEL_31;
  }

  if ([v30 isEqualToString:@"N"])
  {
    v27 = *(*(*(a1 + 64) + 8) + 24);
    if (v27 < [*(a1 + 32) count])
    {
      v6 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 64) + 8) + 24)];
      v28 = [v6 integerValue];
      if (v28)
      {
        v29 = v28;
      }

      else
      {
        v29 = -1;
      }

      ++*(*(*(a1 + 64) + 8) + 24);
      [*(a1 + 40) appendFormat:@"%ld", v29];
      goto LABEL_28;
    }
  }

  [*(a1 + 40) appendString:v30];
  if ([*(a1 + 56) count] - 1 > a3)
  {
    v25 = *(a1 + 40);
    v26 = @" ";
LABEL_31:
    [v25 appendString:v26];
  }

LABEL_32:
}

+ (PLFetchRecorderSQLGeneralizationResult)generalizedSQLFromSQL:(id)l bindVariables:(id)variables fromFetchRequest:(id)request
{
  lCopy = l;
  variablesCopy = variables;
  requestCopy = request;
  v10 = lCopy;
  v11 = v10;
  if ([requestCopy fetchLimit])
  {
    v11 = [objc_opt_class() _generalizedStringByFactoringOutLimitClauseFrom:v10];
  }

  if ([variablesCopy count] < 2)
  {
    goto LABEL_8;
  }

  v12 = objc_alloc_init(PLFetchRecorderPredicateVisitor);
  predicate = [requestCopy predicate];
  [(PLFetchRecorderPredicateVisitor *)v12 examinePredicate:predicate];

  if (![(PLFetchRecorderPredicateVisitor *)v12 foundOperatorIN])
  {

LABEL_8:
    v16 = 0;
LABEL_9:
    v14 = v11;
    goto LABEL_10;
  }

  v14 = [objc_opt_class() _generalizedStringByFactoringOutInClausesFromSQL:v11];
  v16 = v15;

  if (!v14)
  {
    goto LABEL_9;
  }

LABEL_10:
  if ([v14 isEqualToString:v10] && objc_msgSend(variablesCopy, "count") >= 0x33)
  {

    v14 = 0;
    v16 = MEMORY[0x1E695E0F0];
  }

  v17 = v14;
  v18 = v16;
  result.var1 = v18;
  result.var0 = v17;
  return result;
}

+ (id)fileURLsToExistingRecordings
{
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  v4 = MEMORY[0x1E695DFF8];
  v5 = NSTemporaryDirectory();
  v6 = [v4 fileURLWithPath:v5];

  v7 = [self _findRecordingsWithinURL:v6];
  [orderedSet unionOrderedSet:v7];

  v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/private/var/mobile/Containers/Data/PluginKitPlugin"];
  v9 = [self _findRecordingsWithinURL:v8];
  [orderedSet unionOrderedSet:v9];

  v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/private/var/mobile/tmp"];
  v11 = [self _findRecordingsWithinURL:v10];
  [orderedSet unionOrderedSet:v11];

  array = [orderedSet array];

  return array;
}

+ (BOOL)isCurrentProcessEnabledForRecordingBundle:(id)bundle
{
  bundleCopy = bundle;
  if (MEMORY[0x19EAEE230]() && ((PLIsAssetsd() & 1) != 0 || (PLIsPTPD() & 1) != 0 || (PFIsPhotosAppAnyPlatform() & 1) != 0 || (PFIsCameraAppAnyPlatform() & 1) != 0 || (PLIsInternalTool() & 1) != 0 || (PFIsPhotosPicker() & 1) != 0 || (PLIsMediaanalysisd() & 1) != 0 || (PLIsImagePlaygroundApp() & 1) != 0 || PLIsPhotoanalysisd()) && [bundleCopy isSystemPhotoLibrary])
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v5 = [standardUserDefaults objectForKey:@"com.apple.photos.lofr.enabled" inDomain:*MEMORY[0x1E696A400]];

    if (v5)
    {
      bOOLValue = [v5 BOOLValue];
    }

    else
    {
      if (isCurrentProcessEnabledForRecordingBundle__onceToken != -1)
      {
        dispatch_once(&isCurrentProcessEnabledForRecordingBundle__onceToken, &__block_literal_global_69_115942);
      }

      bOOLValue = isCurrentProcessEnabledForRecordingBundle__launchedForTesting == 0;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

void __61__PLFetchRecorder_isCurrentProcessEnabledForRecordingBundle___block_invoke()
{
  v0 = [NSClassFromString(&cfstr_Uiapplication.isa) sharedApplication];
  isCurrentProcessEnabledForRecordingBundle__launchedForTesting = [v0 launchedToTest];
}

+ (id)_findRecordingsWithinURL:(id)l
{
  lCopy = l;
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc(MEMORY[0x1E69BF240]);
  path = [lCopy path];
  v9 = [v7 initWithFilePath:path];

  [v9 setContinueAfterError:1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__PLFetchRecorder__findRecordingsWithinURL___block_invoke;
  v12[3] = &unk_1E7578370;
  selfCopy = self;
  v10 = orderedSet;
  v13 = v10;
  [v9 visitURLsLoadingPropertiesForKeys:MEMORY[0x1E695E0F0] withBlock:v12];

  objc_autoreleasePoolPop(v6);

  return v10;
}

uint64_t __44__PLFetchRecorder__findRecordingsWithinURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 40) _isRecordingFileFromURL:v3])
  {
    [*(a1 + 32) addObject:v3];
  }

  return 1;
}

+ (BOOL)_isRecordingFileFromURL:(id)l
{
  lCopy = l;
  pathExtension = [lCopy pathExtension];
  v5 = [pathExtension isEqualToString:@"lofr"];

  if (v5)
  {
    pathComponents = [lCopy pathComponents];
    if ([pathComponents count] < 2)
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v7 = [pathComponents objectAtIndexedSubscript:{objc_msgSend(pathComponents, "count") - 2}];
      LOBYTE(v5) = [v7 isEqualToString:@"lofr"];
    }
  }

  return v5;
}

+ (id)_paramStringFromBindVariableComponent:(id)component
{
  componentCopy = component;
  if (_paramStringFromBindVariableComponent__onceToken != -1)
  {
    dispatch_once(&_paramStringFromBindVariableComponent__onceToken, &__block_literal_global_115949);
  }

  v4 = [_paramStringFromBindVariableComponent__formatter numberFromString:componentCopy];
  if (v4)
  {
    v5 = [_paramStringFromBindVariableComponent__formatter stringFromNumber:v4];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 length];
  if (v6 == [componentCopy length])
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v5];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@'", componentCopy];
  }
  v7 = ;

  return v7;
}

uint64_t __57__PLFetchRecorder__paramStringFromBindVariableComponent___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = _paramStringFromBindVariableComponent__formatter;
  _paramStringFromBindVariableComponent__formatter = v0;

  v2 = _paramStringFromBindVariableComponent__formatter;

  return [v2 setNumberStyle:1];
}

+ (PLFetchRecorderSQLGeneralizationResult)_generalizedStringByFactoringOutInClausesFromSQL:(id)l
{
  lCopy = l;
  v4 = objc_msgSend(@"IN  (?,?"), "length";
  v5 = [lCopy length];
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:10];
  v7 = ~v4 - v5;
  while (1)
  {
    v8 = [lCopy length];
    v9 = (v7 + v8) & ~((v7 + v8) >> 63);
    v10 = objc_msgSend(lCopy, "rangeOfString:options:range:", @"IN  (?,?"), 4, v9, objc_msgSend(lCopy, "length") - v9;
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    v11 = v10;
    v12 = [lCopy rangeOfString:@"" options:? range:?], 0, v11, objc_msgSend(lCopy, "length") - v11);
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    v13 = v12 - v11;
    v14 = [lCopy substringWithRange:{v11, v12 - v11 + 1}];
    v15 = [v14 componentsSeparatedByString:@"?"];
    v16 = [v15 count] - 1;

    if (v16 >= 1)
    {
      v17 = [MEMORY[0x1E696AD98] numberWithInteger:v16];
      [v6 insertObject:v17 atIndex:0];

      v18 = [lCopy stringByReplacingOccurrencesOfString:v14 withString:@"IN (*)" options:0 range:{v11, v13 + 1}];

      lCopy = v18;
    }
  }

  v19 = lCopy;
  v20 = v6;
  result.var1 = v20;
  result.var0 = v19;
  return result;
}

+ (id)_generalizedStringByFactoringOutLimitClauseFrom:(id)from
{
  fromCopy = from;
  v4 = [@"LIMIT " length];
  v5 = [fromCopy length] + ~v4;
  if (v5 <= 100)
  {
    v5 = 100;
  }

  v6 = [fromCopy rangeOfString:@"LIMIT " options:4 range:{v5 - 100, objc_msgSend(fromCopy, "length") - (v5 - 100)}];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v6;
    v8 = [fromCopy length];
    if (v8 != 0x8000000000000000)
    {
      v9 = v8 - v7;
      v10 = [fromCopy substringWithRange:{v7, v8 - v7}];
      v11 = [fromCopy stringByReplacingOccurrencesOfString:v10 withString:@"LIMIT N" options:0 range:{v7, v9}];

      fromCopy = v11;
    }
  }

  return fromCopy;
}

@end