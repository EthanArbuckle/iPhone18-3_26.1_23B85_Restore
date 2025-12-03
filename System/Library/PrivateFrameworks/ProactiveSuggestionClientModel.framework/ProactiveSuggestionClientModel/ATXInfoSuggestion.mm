@interface ATXInfoSuggestion
+ (id)_executableSpecificationForInfoSuggestion:(id)suggestion;
+ (id)_uiSpecForInfoSuggestion:(id)suggestion;
+ (id)infoSuggestionFromProactiveSuggestion:(id)suggestion;
+ (id)proactiveSuggestionForInfoSuggestion:(id)suggestion withClientModelId:(id)id clientModelVersion:(id)version rawScore:(double)score confidenceCategory:(int64_t)category;
- (ATXInfoSuggestion)initWithCoder:(id)coder;
- (ATXInfoSuggestion)initWithData:(id)data;
- (ATXInfoSuggestion)initWithProactiveSuggestion:(id)suggestion;
- (ATXInfoSuggestion)initWithProto:(id)proto;
- (ATXInfoSuggestion)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXInfoSuggestion:(id)suggestion;
- (INIntent)intent;
- (NSString)description;
- (id)_dictionaryRepresentationAvoidingLoadingIntentIfPossible:(BOOL)possible;
- (id)_initWithAppBundleIdentifier:(id)identifier widgetBundleIdentifier:(id)bundleIdentifier widgetKind:(id)kind criterion:(id)criterion applicableLayouts:(unint64_t)layouts suggestionIdentifier:(id)suggestionIdentifier startDate:(id)date endDate:(id)self0 intent:(id)self1 intentDescription:(id)self2 metadata:(id)self3 relevanceScore:(id)self4;
- (id)_safeDecodeObjectOfClass:(Class)class allowedClasses:(id)classes forKey:(id)key withCoder:(id)coder;
- (id)_safeDecodeObjectOfClass:(Class)class forKey:(id)key withCoder:(id)coder;
- (id)_verifyAndReturnDecodedObject:(id)object ofClass:(Class)class forKey:(id)key withCoder:(id)coder;
- (id)copyByReplacingIntentWithIndexingHash;
- (id)copyWithZone:(_NSZone *)zone;
- (id)data;
- (id)encodeAsProto;
- (id)proto;
- (unint64_t)hash;
- (void)data;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)handleMemoryPressure;
- (void)intent;
- (void)proto;
@end

@implementation ATXInfoSuggestion

- (unint64_t)hash
{
  v3 = [(NSString *)self->_appBundleIdentifier hash];
  v4 = [(NSString *)self->_widgetBundleIdentifier hash]- v3 + 32 * v3;
  v5 = [(NSString *)self->_widgetKind hash]- v4 + 32 * v4;
  v6 = [(NSString *)self->_criterion hash];
  v7 = self->_layouts - (v6 - v5 + 32 * v5) + 32 * (v6 - v5 + 32 * v5);
  v8 = [(NSString *)self->_suggestionIdentifier hash]- v7 + 32 * v7;
  return [(NSDictionary *)self->_metadata hash]- v8 + 32 * v8;
}

- (void)dealloc
{
  mEMORY[0x1E698B000] = [MEMORY[0x1E698B000] sharedInstance];
  [mEMORY[0x1E698B000] unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = ATXInfoSuggestion;
  [(ATXInfoSuggestion *)&v4 dealloc];
}

- (NSString)description
{
  v2 = [(ATXInfoSuggestion *)self _dictionaryRepresentationAvoidingLoadingIntentIfPossible:1];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v4 = [v2 descriptionWithLocale:currentLocale];

  return v4;
}

- (id)encodeAsProto
{
  proto = [(ATXInfoSuggestion *)self proto];
  data = [proto data];

  return data;
}

- (id)proto
{
  v3 = objc_opt_new();
  [v3 setAppBundleIdentifier:self->_appBundleIdentifier];
  [v3 setWidgetBundleIdentifier:self->_widgetBundleIdentifier];
  [v3 setWidgetKind:self->_widgetKind];
  [v3 setCriterion:self->_criterion];
  [v3 setLayouts:self->_layouts];
  [v3 setSuggestionIdentifier:self->_suggestionIdentifier];
  [(NSDate *)self->_startDate timeIntervalSinceReferenceDate];
  [v3 setStartDate:?];
  [(NSDate *)self->_endDate timeIntervalSinceReferenceDate];
  [v3 setEndDate:?];
  [v3 setClientModelId:self->_clientModelId];
  [v3 setConfidenceLevel:self->_confidenceLevel];
  [v3 setSourceIdentifier:self->_sourceIdentifier];
  if (self->_intentDescription)
  {
    v4 = objc_autoreleasePoolPush();
    intentDescription = self->_intentDescription;
    v26 = 0;
    v6 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:intentDescription requiringSecureCoding:1 error:&v26];
    v7 = v26;
    [v3 setArchivedIntentDescription:v6];

    if (v7)
    {
      v8 = __atxlog_handle_gi();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [ATXInfoSuggestion proto];
      }
    }

    objc_autoreleasePoolPop(v4);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_intentProtoData)
  {
    [v3 setArchivedIntent:?];
  }

  else if (!self->_intentDescription)
  {
    intent = [(ATXInfoSuggestion *)selfCopy intent];

    if (intent)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = MEMORY[0x1E696ACC8];
      intent2 = [(ATXInfoSuggestion *)selfCopy intent];
      v25 = 0;
      v14 = [v12 archivedDataWithRootObject:intent2 requiringSecureCoding:1 error:&v25];
      v15 = v25;
      [v3 setArchivedIntent:v14];

      objc_autoreleasePoolPop(v11);
      if (v15)
      {
        v16 = __atxlog_handle_gi();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [ATXInfoSuggestion proto];
        }
      }
    }
  }

  objc_sync_exit(selfCopy);

  if (selfCopy->_metadata)
  {
    v17 = objc_autoreleasePoolPush();
    metadata = selfCopy->_metadata;
    v24 = 0;
    v19 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:metadata requiringSecureCoding:1 error:&v24];
    v20 = v24;
    [v3 setArchivedMetadata:v19];

    objc_autoreleasePoolPop(v17);
    if (v20)
    {
      v21 = __atxlog_handle_gi();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [ATXInfoSuggestion proto];
      }
    }
  }

  relevanceScore = selfCopy->_relevanceScore;
  if (relevanceScore)
  {
    [(NSNumber *)relevanceScore doubleValue];
    [v3 setRelevanceScore:?];
  }

  else
  {
    [v3 setHasRelevanceScore:0];
  }

  return v3;
}

- (INIntent)intent
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  intent = selfCopy->_intent;
  if (intent)
  {
    goto LABEL_2;
  }

  intentDescription = selfCopy->_intentDescription;
  if (intentDescription)
  {
    createIntent = [(ATXCustomIntentDescription *)intentDescription createIntent];
    v8 = selfCopy->_intent;
    selfCopy->_intent = createIntent;

    intent = selfCopy->_intent;
    if (intent)
    {
LABEL_2:
      v4 = intent;
      goto LABEL_3;
    }

    v9 = __atxlog_handle_gi();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [(ATXInfoSuggestion *)selfCopy intent];
    }
  }

  if (selfCopy->_intentProtoData)
  {
    v10 = __atxlog_handle_gi();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [ATXInfoSuggestion intent];
    }

    v11 = objc_autoreleasePoolPush();
    v12 = MEMORY[0x1E696ACD0];
    v13 = objc_opt_class();
    intentProtoData = selfCopy->_intentProtoData;
    v19 = 0;
    v15 = [v12 unarchivedObjectOfClass:v13 fromData:intentProtoData error:&v19];
    v16 = v19;
    v17 = selfCopy->_intent;
    selfCopy->_intent = v15;

    if (v16)
    {
      v18 = __atxlog_handle_gi();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [ATXInfoSuggestion intent];
      }
    }

    v4 = selfCopy->_intent;

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    v4 = 0;
  }

LABEL_3:
  objc_sync_exit(selfCopy);

  return v4;
}

- (id)_initWithAppBundleIdentifier:(id)identifier widgetBundleIdentifier:(id)bundleIdentifier widgetKind:(id)kind criterion:(id)criterion applicableLayouts:(unint64_t)layouts suggestionIdentifier:(id)suggestionIdentifier startDate:(id)date endDate:(id)self0 intent:(id)self1 intentDescription:(id)self2 metadata:(id)self3 relevanceScore:(id)self4
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  kindCopy = kind;
  criterionCopy = criterion;
  suggestionIdentifierCopy = suggestionIdentifier;
  dateCopy = date;
  v21 = criterionCopy;
  endDateCopy = endDate;
  intentCopy = intent;
  descriptionCopy = description;
  v24 = bundleIdentifierCopy;
  metadataCopy = metadata;
  scoreCopy = score;
  v50.receiver = self;
  v50.super_class = ATXInfoSuggestion;
  v27 = [(ATXInfoSuggestion *)&v50 init];
  if (v27)
  {
    v28 = [identifierCopy copy];
    appBundleIdentifier = v27->_appBundleIdentifier;
    v27->_appBundleIdentifier = v28;

    v30 = [v24 copy];
    widgetBundleIdentifier = v27->_widgetBundleIdentifier;
    v27->_widgetBundleIdentifier = v30;

    v32 = [kindCopy copy];
    widgetKind = v27->_widgetKind;
    v27->_widgetKind = v32;

    v34 = [v21 copy];
    criterion = v27->_criterion;
    v27->_criterion = v34;

    v27->_layouts = layouts;
    v36 = [suggestionIdentifierCopy copy];
    suggestionIdentifier = v27->_suggestionIdentifier;
    v27->_suggestionIdentifier = v36;

    objc_storeStrong(&v27->_startDate, date);
    objc_storeStrong(&v27->_endDate, endDate);
    v38 = [intentCopy copy];
    intent = v27->_intent;
    v27->_intent = v38;

    objc_storeStrong(&v27->_intentDescription, description);
    v40 = [metadataCopy copy];
    metadata = v27->_metadata;
    v27->_metadata = v40;

    objc_storeStrong(&v27->_relevanceScore, score);
    mEMORY[0x1E698B000] = [MEMORY[0x1E698B000] sharedInstance];
    [mEMORY[0x1E698B000] registerObserver:v27];
  }

  return v27;
}

- (ATXInfoSuggestion)initWithData:(id)data
{
  dataCopy = data;
  v5 = objc_autoreleasePoolPush();
  v11 = 0;
  v6 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v11];
  v7 = v11;
  objc_autoreleasePoolPop(v5);
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = __atxlog_handle_gi();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ATXInfoSuggestion initWithData:];
    }
  }

  return v6;
}

- (id)_dictionaryRepresentationAvoidingLoadingIntentIfPossible:(BOOL)possible
{
  possibleCopy = possible;
  v5 = objc_opt_new();
  [v5 setObject:self->_appBundleIdentifier forKeyedSubscript:@"app"];
  [v5 setObject:self->_widgetBundleIdentifier forKeyedSubscript:@"widget"];
  [v5 setObject:self->_widgetKind forKeyedSubscript:@"kind"];
  [v5 setObject:self->_criterion forKeyedSubscript:@"criterion"];
  [v5 setObject:self->_suggestionIdentifier forKeyedSubscript:@"suggID"];
  [v5 setObject:self->_clientModelId forKeyedSubscript:@"clientModelId"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_layouts];
  [v5 setObject:v6 forKeyedSubscript:@"layouts"];

  [v5 setObject:self->_startDate forKeyedSubscript:@"startDate"];
  [v5 setObject:self->_endDate forKeyedSubscript:@"endDate"];
  v7 = [(ATXCustomIntentDescription *)self->_intentDescription description];
  [v5 setObject:v7 forKeyedSubscript:@"intentDescription"];

  if (self->_intentDescription && possibleCopy)
  {
    intent = __atxlog_handle_gi();
    if (os_log_type_enabled(intent, OS_LOG_TYPE_DEBUG))
    {
      [ATXInfoSuggestion _dictionaryRepresentationAvoidingLoadingIntentIfPossible:];
    }
  }

  else
  {
    intent = [(ATXInfoSuggestion *)self intent];
    v9 = [intent description];
    [v5 setObject:v9 forKeyedSubscript:@"intent"];
  }

  [v5 setObject:self->_metadata forKeyedSubscript:@"meta"];
  [v5 setObject:self->_sourceIdentifier forKeyedSubscript:@"src"];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:self->_confidenceLevel];
  [v5 setObject:v10 forKeyedSubscript:@"confLevel"];

  [v5 setObject:self->_relevanceScore forKeyedSubscript:@"relevanceScore"];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v16 = [objc_opt_class() allocWithZone:zone];
  appBundleIdentifier = self->_appBundleIdentifier;
  widgetBundleIdentifier = self->_widgetBundleIdentifier;
  widgetKind = self->_widgetKind;
  criterion = self->_criterion;
  layouts = self->_layouts;
  suggestionIdentifier = self->_suggestionIdentifier;
  startDate = self->_startDate;
  endDate = self->_endDate;
  intent = [(ATXInfoSuggestion *)self intent];
  metadata = self->_metadata;
  v14 = [v16 initWithAppBundleIdentifier:appBundleIdentifier widgetBundleIdentifier:widgetBundleIdentifier widgetKind:widgetKind criterion:criterion applicableLayouts:layouts suggestionIdentifier:suggestionIdentifier startDate:startDate endDate:endDate intent:intent metadata:metadata relevanceScore:self->_relevanceScore];

  [v14 setSourceIdentifier:self->_sourceIdentifier];
  [v14 setConfidenceLevel:self->_confidenceLevel];
  [v14 setClientModelId:self->_clientModelId];
  return v14;
}

- (id)copyByReplacingIntentWithIndexingHash
{
  intent = [(ATXInfoSuggestion *)self intent];
  atx_indexingHash = [intent atx_indexingHash];

  v5 = objc_alloc(objc_opt_class());
  metadata = self->_metadata;
  v7 = [v5 initWithAppBundleIdentifier:self->_appBundleIdentifier widgetBundleIdentifier:self->_widgetBundleIdentifier widgetKind:self->_widgetKind criterion:self->_criterion applicableLayouts:self->_layouts suggestionIdentifier:self->_suggestionIdentifier startDate:self->_startDate endDate:self->_endDate intent:0 metadata:metadata relevanceScore:self->_relevanceScore];
  [v7 setSourceIdentifier:self->_sourceIdentifier];
  [v7 setConfidenceLevel:self->_confidenceLevel];
  [v7 setClientModelId:self->_clientModelId];
  [v7 setIntentIndexingHash:atx_indexingHash];
  return v7;
}

- (id)data
{
  v3 = objc_autoreleasePoolPush();
  v9 = 0;
  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v9];
  v5 = v9;
  objc_autoreleasePoolPop(v3);
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = __atxlog_handle_gi();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ATXInfoSuggestion data];
    }
  }

  return v4;
}

- (ATXInfoSuggestion)initWithProactiveSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v5 = [ATXInfoSuggestion alloc];
  executableSpecification = [suggestionCopy executableSpecification];

  executable = [executableSpecification executable];
  v8 = [(ATXInfoSuggestion *)v5 initWithData:executable];

  if (!v8)
  {
    v9 = __atxlog_handle_gi();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ATXInfoSuggestion initWithProactiveSuggestion:];
    }
  }

  return v8;
}

+ (id)proactiveSuggestionForInfoSuggestion:(id)suggestion withClientModelId:(id)id clientModelVersion:(id)version rawScore:(double)score confidenceCategory:(int64_t)category
{
  v31 = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  versionCopy = version;
  idCopy = id;
  v15 = [[ATXProactiveSuggestionClientModelSpecification alloc] initWithClientModelId:idCopy clientModelVersion:versionCopy engagementResetPolicy:1];

  v16 = [self _executableSpecificationForInfoSuggestion:suggestionCopy];
  if (v16)
  {
    appBundleIdentifier = [suggestionCopy appBundleIdentifier];
    v18 = CFPreferencesCopyValue(@"SBSearchDisabledShortcuts", @"com.apple.spotlightui", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    v19 = [v18 containsObject:appBundleIdentifier];

    if (!v19)
    {
      v23 = [self _uiSpecForInfoSuggestion:suggestionCopy];
      if (v23)
      {
        v24 = [[ATXProactiveSuggestionScoreSpecification alloc] initWithRawScore:category suggestedConfidenceCategory:score];
        v22 = [[ATXProactiveSuggestion alloc] initWithClientModelSpecification:v15 executableSpecification:v16 uiSpecification:v23 scoreSpecification:v24];
      }

      else
      {
        v22 = 0;
      }

      goto LABEL_11;
    }

    v20 = __atxlog_handle_gi();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      appBundleIdentifier2 = [suggestionCopy appBundleIdentifier];
      v27 = 136315394;
      v28 = "+[ATXInfoSuggestion proactiveSuggestionForInfoSuggestion:withClientModelId:clientModelVersion:rawScore:confidenceCategory:]";
      v29 = 2112;
      v30 = appBundleIdentifier2;
      _os_log_impl(&dword_1DEFC4000, v20, OS_LOG_TYPE_DEFAULT, "%s: BundleId: %@ is disabled to show suggestions on home screen", &v27, 0x16u);
    }
  }

  v22 = 0;
LABEL_11:

  v25 = *MEMORY[0x1E69E9840];

  return v22;
}

+ (id)_executableSpecificationForInfoSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v4 = [ATXProactiveSuggestionExecutableSpecification alloc];
  v5 = [suggestionCopy description];
  suggestionIdentifier = [suggestionCopy suggestionIdentifier];
  v7 = [(ATXProactiveSuggestionExecutableSpecification *)v4 initWithExecutableObject:suggestionCopy executableDescription:v5 executableIdentifier:suggestionIdentifier suggestionExecutableType:3];

  return v7;
}

+ (id)_uiSpecForInfoSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v4 = +[ATXProactiveSuggestionLayoutConfig layoutConfigurationsForLayoutOptions:](ATXProactiveSuggestionLayoutConfig, "layoutConfigurationsForLayoutOptions:", [suggestionCopy layouts]);
  if ([v4 count])
  {
    v5 = [ATXProactiveSuggestionUISpecification alloc];
    widgetBundleIdentifier = [suggestionCopy widgetBundleIdentifier];
    LOWORD(v9) = 0;
    v7 = [(ATXProactiveSuggestionUISpecification *)v5 initWithTitle:widgetBundleIdentifier subtitle:0 predictionReason:0 preferredLayoutConfigs:v4 allowedOnLockscreen:0 allowedOnHomeScreen:1 allowedOnSpotlight:v9 shouldClearOnEngagement:?];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)infoSuggestionFromProactiveSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v4 = suggestionCopy;
  if (suggestionCopy && ([suggestionCopy executableSpecification], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "executableType"), v5, v6 == 3))
  {
    executableSpecification = [v4 executableSpecification];
    executableClassString = [executableSpecification executableClassString];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [executableClassString isEqualToString:v10];

    if (v11)
    {
      executableSpecification2 = [v4 executableSpecification];
      executableObject = [executableSpecification2 executableObject];

      if (executableObject)
      {
        goto LABEL_12;
      }

      v14 = __atxlog_handle_gi();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        +[ATXInfoSuggestion infoSuggestionFromProactiveSuggestion:];
      }
    }

    else
    {
      v14 = __atxlog_handle_gi();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        +[ATXInfoSuggestion infoSuggestionFromProactiveSuggestion:];
      }

      executableObject = 0;
    }
  }

  else
  {
    executableObject = 0;
  }

LABEL_12:

  return executableObject;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(ATXInfoSuggestion *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (id)_safeDecodeObjectOfClass:(Class)class allowedClasses:(id)classes forKey:(id)key withCoder:(id)coder
{
  coderCopy = coder;
  keyCopy = key;
  v12 = [coderCopy decodeObjectOfClasses:classes forKey:keyCopy];
  v13 = [(ATXInfoSuggestion *)self _verifyAndReturnDecodedObject:v12 ofClass:class forKey:keyCopy withCoder:coderCopy];

  return v13;
}

- (id)_safeDecodeObjectOfClass:(Class)class forKey:(id)key withCoder:(id)coder
{
  coderCopy = coder;
  keyCopy = key;
  v10 = [coderCopy decodeObjectOfClass:class forKey:keyCopy];
  v11 = [(ATXInfoSuggestion *)self _verifyAndReturnDecodedObject:v10 ofClass:class forKey:keyCopy withCoder:coderCopy];

  return v11;
}

- (id)_verifyAndReturnDecodedObject:(id)object ofClass:(Class)class forKey:(id)key withCoder:(id)coder
{
  v22[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  keyCopy = key;
  coderCopy = coder;
  v11 = coderCopy;
  if (objectCopy)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      keyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"key %@ maps to unexpected class", keyCopy];
      v13 = objc_alloc(MEMORY[0x1E696ABC0]);
      v21 = *MEMORY[0x1E696A578];
      v22[0] = keyCopy;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v15 = [v13 initWithDomain:@"ATXInfoSuggestion" code:-1 userInfo:v14];

      [v11 failWithError:v15];
      v16 = __atxlog_handle_gi();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [ATXInfoSuggestion _verifyAndReturnDecodedObject:ofClass:forKey:withCoder:];
      }

LABEL_9:
      v18 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    error = [coderCopy error];

    if (error)
    {
      keyCopy = __atxlog_handle_gi();
      if (os_log_type_enabled(keyCopy, OS_LOG_TYPE_ERROR))
      {
        [ATXInfoSuggestion _verifyAndReturnDecodedObject:v11 ofClass:keyCopy forKey:? withCoder:?];
      }

      goto LABEL_9;
    }
  }

  v18 = objectCopy;
LABEL_11:

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (ATXInfoSuggestion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];
  if (!v5)
  {
    v7 = [(ATXInfoSuggestion *)self _safeDecodeObjectOfClass:objc_opt_class() forKey:@"app" withCoder:coderCopy];
    v8 = [(ATXInfoSuggestion *)self _safeDecodeObjectOfClass:objc_opt_class() forKey:@"widget" withCoder:coderCopy];
    v9 = [(ATXInfoSuggestion *)self _safeDecodeObjectOfClass:objc_opt_class() forKey:@"kind" withCoder:coderCopy];
    v10 = [(ATXInfoSuggestion *)self _safeDecodeObjectOfClass:objc_opt_class() forKey:@"criterion" withCoder:coderCopy];
    v11 = v10;
    if (v7 && v8 && v9 && v10)
    {
      v12 = [coderCopy decodeIntegerForKey:@"layouts"];
      if (v12)
      {
        v13 = v12;
        v55.receiver = self;
        v55.super_class = ATXInfoSuggestion;
        v14 = [(ATXInfoSuggestion *)&v55 init];
        v15 = v14;
        if (v14)
        {
          objc_storeStrong(&v14->_appBundleIdentifier, v7);
          objc_storeStrong(&v15->_widgetBundleIdentifier, v8);
          v54 = v9;
          objc_storeStrong(&v15->_widgetKind, v9);
          objc_storeStrong(&v15->_criterion, v11);
          v15->_layouts = v13;
          v16 = [(ATXInfoSuggestion *)v15 _safeDecodeObjectOfClass:objc_opt_class() forKey:@"suggID" withCoder:coderCopy];
          suggestionIdentifier = v15->_suggestionIdentifier;
          v15->_suggestionIdentifier = v16;

          v18 = [(ATXInfoSuggestion *)v15 _safeDecodeObjectOfClass:objc_opt_class() forKey:@"startDate" withCoder:coderCopy];
          startDate = v15->_startDate;
          v15->_startDate = v18;

          v20 = [(ATXInfoSuggestion *)v15 _safeDecodeObjectOfClass:objc_opt_class() forKey:@"endDate" withCoder:coderCopy];
          endDate = v15->_endDate;
          v15->_endDate = v20;

          v22 = [(ATXInfoSuggestion *)v15 _safeDecodeObjectOfClass:objc_opt_class() forKey:@"intent" withCoder:coderCopy];
          intent = v15->_intent;
          v15->_intent = v22;

          if (!v15->_intent)
          {
            v24 = [(ATXInfoSuggestion *)v15 _safeDecodeObjectOfClass:objc_opt_class() forKey:@"intentDescription" withCoder:coderCopy];
            v25 = v24;
            if (v24)
            {
              createIntent = [v24 createIntent];
              v27 = v15->_intent;
              v15->_intent = createIntent;

              if (!v15->_intent)
              {
                v28 = v11;
                v29 = __atxlog_handle_gi();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
                {
                  [ATXInfoSuggestion initWithCoder:];
                }

                v11 = v28;
              }
            }
          }

          v30 = objc_opt_class();
          v52 = MEMORY[0x1E695DFD8];
          v53 = v30;
          v51 = objc_opt_class();
          v50 = objc_opt_class();
          v31 = v11;
          v32 = objc_opt_class();
          v33 = v8;
          v34 = v7;
          v35 = objc_opt_class();
          v36 = objc_opt_class();
          v49 = v35;
          v7 = v34;
          v8 = v33;
          v48 = v32;
          v11 = v31;
          v37 = [v52 setWithObjects:{v51, v50, v48, v49, v36, objc_opt_class(), 0}];
          v38 = [(ATXInfoSuggestion *)v15 _safeDecodeObjectOfClass:v53 allowedClasses:v37 forKey:@"meta" withCoder:coderCopy];
          metadata = v15->_metadata;
          v15->_metadata = v38;

          v40 = [(ATXInfoSuggestion *)v15 _safeDecodeObjectOfClass:objc_opt_class() forKey:@"src" withCoder:coderCopy];
          sourceIdentifier = v15->_sourceIdentifier;
          v15->_sourceIdentifier = v40;

          v15->_confidenceLevel = [coderCopy decodeIntegerForKey:@"confLevel"];
          v42 = [(ATXInfoSuggestion *)v15 _safeDecodeObjectOfClass:objc_opt_class() forKey:@"clientModelId" withCoder:coderCopy];
          clientModelId = v15->_clientModelId;
          v15->_clientModelId = v42;

          v44 = [(ATXInfoSuggestion *)v15 _safeDecodeObjectOfClass:objc_opt_class() forKey:@"relevanceScore" withCoder:coderCopy];
          relevanceScore = v15->_relevanceScore;
          v15->_relevanceScore = v44;

          v9 = v54;
        }

        self = v15;
        selfCopy2 = self;
        goto LABEL_23;
      }

      v46 = __atxlog_handle_gi();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        [ATXInfoSuggestion initWithCoder:];
      }
    }

    else
    {
      v46 = __atxlog_handle_gi();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        [ATXInfoSuggestion initWithCoder:];
      }
    }

    selfCopy2 = 0;
LABEL_23:

    goto LABEL_24;
  }

  self = [(ATXInfoSuggestion *)self initWithProtoData:v5];
  selfCopy2 = self;
LABEL_24:

  return selfCopy2;
}

- (void)handleMemoryPressure
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_intentProtoData && selfCopy->_intent)
  {
    v3 = __atxlog_handle_default();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1DEFC4000, v3, OS_LOG_TYPE_DEFAULT, "Purging intent proto data due to memory pressure", v5, 2u);
    }

    intentProtoData = selfCopy->_intentProtoData;
    selfCopy->_intentProtoData = 0;
  }

  objc_sync_exit(selfCopy);
}

- (ATXInfoSuggestion)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBInfoSuggestion alloc] initWithData:dataCopy];

    self = [(ATXInfoSuggestion *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXInfoSuggestion)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = __atxlog_handle_default();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [(ATXInfoSuggestion *)self initWithProto:v5];
      }

      selfCopy = 0;
      goto LABEL_42;
    }

    v5 = protoCopy;
    appBundleIdentifier = [v5 appBundleIdentifier];
    widgetBundleIdentifier = [v5 widgetBundleIdentifier];
    criterion = [v5 criterion];
    v9 = criterion;
    if (!appBundleIdentifier || !widgetBundleIdentifier || !criterion)
    {
      v14 = __atxlog_handle_gi();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [ATXInfoSuggestion initWithProto:];
      }

      selfCopy = 0;
      goto LABEL_41;
    }

    archivedIntent = [v5 archivedIntent];
    v56 = widgetBundleIdentifier;
    v57 = appBundleIdentifier;
    v55 = v9;
    if (archivedIntent)
    {
      v11 = __atxlog_handle_gi();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [ATXInfoSuggestion initWithProto:];
      }

      v12 = 0;
    }

    else
    {
      if (![v5 hasArchivedIntentDescription])
      {
        v53 = 0;
LABEL_28:
        archivedMetadata = [v5 archivedMetadata];

        v23 = 0x1E695D000uLL;
        v24 = 0x1E696A000uLL;
        v54 = archivedIntent;
        if (archivedMetadata)
        {
          v25 = objc_autoreleasePoolPush();
          v51 = MEMORY[0x1E696ACD0];
          context = v25;
          v26 = objc_autoreleasePoolPush();
          v27 = objc_alloc(MEMORY[0x1E695DFD8]);
          v28 = objc_opt_class();
          v29 = objc_opt_class();
          v30 = objc_opt_class();
          v31 = objc_opt_class();
          v32 = objc_opt_class();
          v33 = [v27 initWithObjects:{v28, v29, v30, v31, v32, objc_opt_class(), 0}];
          objc_autoreleasePoolPop(v26);
          archivedMetadata2 = [v5 archivedMetadata];
          v58 = 0;
          v35 = [v51 unarchivedObjectOfClasses:v33 fromData:archivedMetadata2 error:&v58];
          v36 = v58;

          objc_autoreleasePoolPop(context);
          if (v36)
          {
            v37 = __atxlog_handle_gi();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              [ATXInfoSuggestion initWithProto:];
            }
          }

          v23 = 0x1E695D000;
          v24 = 0x1E696A000;
        }

        else
        {
          v35 = 0;
        }

        if ([v5 hasRelevanceScore])
        {
          v38 = *(v24 + 3480);
          [v5 relevanceScore];
          v39 = [v38 numberWithDouble:?];
        }

        else
        {
          v39 = 0;
        }

        widgetKind = [v5 widgetKind];
        layouts = [v5 layouts];
        suggestionIdentifier = [v5 suggestionIdentifier];
        v43 = *(v23 + 3840);
        [v5 startDate];
        v44 = [v43 dateWithTimeIntervalSinceReferenceDate:?];
        v45 = *(v23 + 3840);
        [v5 endDate];
        v46 = [v45 dateWithTimeIntervalSinceReferenceDate:?];
        v47 = [(ATXInfoSuggestion *)self initWithAppBundleIdentifier:v57 widgetBundleIdentifier:v56 widgetKind:widgetKind criterion:v55 applicableLayouts:layouts suggestionIdentifier:suggestionIdentifier startDate:v44 endDate:v46 intent:0 metadata:v35 relevanceScore:v39];

        v14 = v54;
        if (v47)
        {
          clientModelId = [v5 clientModelId];
          [(ATXInfoSuggestion *)v47 setClientModelId:clientModelId];

          [(ATXInfoSuggestion *)v47 setConfidenceLevel:[v5 confidenceLevel]];
          sourceIdentifier = [v5 sourceIdentifier];
          [(ATXInfoSuggestion *)v47 setSourceIdentifier:sourceIdentifier];

          objc_storeStrong(&v47->_intentProtoData, v54);
          objc_storeStrong(&v47->_intentDescription, v53);
        }

        self = v47;

        selfCopy = self;
        widgetBundleIdentifier = v56;
        appBundleIdentifier = v57;
        v9 = v55;
LABEL_41:

LABEL_42:
        goto LABEL_43;
      }

      v15 = __atxlog_handle_gi();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [ATXInfoSuggestion initWithProto:];
      }

      v16 = objc_autoreleasePoolPush();
      v17 = MEMORY[0x1E696ACD0];
      v18 = objc_opt_class();
      archivedIntentDescription = [v5 archivedIntentDescription];
      v59 = 0;
      v12 = [v17 unarchivedObjectOfClass:v18 fromData:archivedIntentDescription error:&v59];
      v11 = v59;

      objc_autoreleasePoolPop(v16);
      v20 = __atxlog_handle_gi();
      v21 = v20;
      if (v11)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [ATXInfoSuggestion initWithProto:];
        }
      }

      else if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [ATXInfoSuggestion initWithProto:];
      }
    }

    v53 = v12;

    goto LABEL_28;
  }

  selfCopy = 0;
LABEL_43:

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXInfoSuggestion *)self isEqualToATXInfoSuggestion:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXInfoSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  appBundleIdentifier = self->_appBundleIdentifier;
  appBundleIdentifier = [suggestionCopy appBundleIdentifier];
  if (![(NSString *)appBundleIdentifier isEqualToString:appBundleIdentifier])
  {
    goto LABEL_11;
  }

  widgetBundleIdentifier = self->_widgetBundleIdentifier;
  widgetBundleIdentifier = [suggestionCopy widgetBundleIdentifier];
  if (![widgetBundleIdentifier isEqualToString:widgetBundleIdentifier])
  {
LABEL_10:

LABEL_11:
    goto LABEL_12;
  }

  widgetKind = self->_widgetKind;
  v11 = widgetKind;
  if (!widgetKind)
  {
    widgetBundleIdentifier = [suggestionCopy widgetKind];
    if (!widgetBundleIdentifier)
    {
      v12 = 0;
      goto LABEL_15;
    }

    v11 = self->_widgetKind;
  }

  widgetKind = [suggestionCopy widgetKind];
  if (![(NSString *)v11 isEqualToString:widgetKind])
  {

    if (!widgetKind)
    {
    }

    goto LABEL_10;
  }

  v12 = 1;
LABEL_15:
  criterion = self->_criterion;
  criterion = [suggestionCopy criterion];
  if (!-[NSString isEqualToString:](criterion, "isEqualToString:", criterion) || (confidenceLevel = self->_confidenceLevel, confidenceLevel != [suggestionCopy confidenceLevel]) || (layouts = self->_layouts, layouts != objc_msgSend(suggestionCopy, "layouts")))
  {

    v21 = 0;
    if ((v12 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  suggestionIdentifier = self->_suggestionIdentifier;
  v66 = suggestionIdentifier;
  if (!suggestionIdentifier)
  {
    suggestionIdentifier = [suggestionCopy suggestionIdentifier];
    if (!suggestionIdentifier)
    {
      v61 = 0;
      v64 = 0;
      goto LABEL_45;
    }

    v61 = suggestionIdentifier;
    suggestionIdentifier = self->_suggestionIdentifier;
  }

  suggestionIdentifier2 = [suggestionCopy suggestionIdentifier];
  if (![(NSString *)suggestionIdentifier isEqualToString:?])
  {
    v21 = 0;
    goto LABEL_99;
  }

  v64 = 1;
LABEL_45:
  startDate = self->_startDate;
  v63 = startDate;
  if (!startDate)
  {
    startDate = [suggestionCopy startDate];
    if (!startDate)
    {
      v57 = 0;
      v60 = 0;
      goto LABEL_52;
    }

    v57 = startDate;
    startDate = self->_startDate;
  }

  startDate2 = [suggestionCopy startDate];
  [(NSDate *)startDate timeIntervalSinceDate:?];
  if (fabs(v31) >= 1.0)
  {
    v21 = 0;
    goto LABEL_96;
  }

  v60 = 1;
LABEL_52:
  endDate = self->_endDate;
  v59 = endDate;
  if (!endDate)
  {
    endDate = [suggestionCopy endDate];
    if (!endDate)
    {
      v53 = 0;
      v56 = 0;
      goto LABEL_64;
    }

    v53 = endDate;
    endDate = self->_endDate;
  }

  endDate2 = [suggestionCopy endDate];
  [(NSDate *)endDate timeIntervalSinceDate:?];
  if (fabs(v34) >= 1.0)
  {
    v21 = 0;
    goto LABEL_93;
  }

  v56 = 1;
LABEL_64:
  metadata = self->_metadata;
  v55 = metadata;
  if (!metadata)
  {
    metadata = [suggestionCopy metadata];
    if (!metadata)
    {
      v50 = 0;
      v52 = 0;
      goto LABEL_77;
    }

    v50 = metadata;
    metadata = self->_metadata;
  }

  metadata2 = [suggestionCopy metadata];
  if (![(NSDictionary *)metadata isEqualToDictionary:?])
  {
    v21 = 0;
LABEL_89:
    v46 = metadata2;
    goto LABEL_90;
  }

  v52 = 1;
LABEL_77:
  relevanceScore = self->_relevanceScore;
  if (!relevanceScore)
  {
    relevanceScore = [suggestionCopy relevanceScore];
    if (!relevanceScore)
    {
      v47 = 0;
      v21 = 1;
      goto LABEL_88;
    }

    v47 = relevanceScore;
    if (!self->_relevanceScore)
    {
      v21 = 0;
      goto LABEL_88;
    }
  }

  v51 = relevanceScore;
  relevanceScore2 = [suggestionCopy relevanceScore];
  if (relevanceScore2)
  {
    v49 = relevanceScore2;
    [(NSNumber *)self->_relevanceScore doubleValue];
    v43 = v42;
    relevanceScore3 = [suggestionCopy relevanceScore];
    [relevanceScore3 doubleValue];
    v21 = vabdd_f64(v43, v44) < 0.00000011920929;
  }

  else
  {
    v21 = 0;
  }

  if (!v51)
  {
LABEL_88:

    if ((v52 & 1) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_89;
  }

  v46 = metadata2;
  if (v52)
  {
LABEL_90:
  }

LABEL_91:
  if (v55)
  {
    if (!v56)
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

  if (v56)
  {
LABEL_93:
  }

LABEL_94:
  if (v59)
  {
    if (!v60)
    {
      goto LABEL_97;
    }

    goto LABEL_96;
  }

  if (v60)
  {
LABEL_96:
  }

LABEL_97:
  if (v63)
  {
    if (!v64)
    {
      goto LABEL_100;
    }

    goto LABEL_99;
  }

  if (v64)
  {
LABEL_99:
  }

LABEL_100:
  if (!v66)
  {
  }

  if (v12)
  {
LABEL_24:
  }

LABEL_25:
  if (!widgetKind)
  {

    if (v21)
    {
      goto LABEL_29;
    }

LABEL_12:
    v13 = 0;
    goto LABEL_13;
  }

  if (!v21)
  {
    goto LABEL_12;
  }

LABEL_29:
  intentIndexingHash = self->_intentIndexingHash;
  if (intentIndexingHash)
  {
LABEL_30:
    if ([suggestionCopy intentIndexingHash])
    {
      intentIndexingHash = [suggestionCopy intentIndexingHash];
    }

    else
    {
      intent = [suggestionCopy intent];
      intentIndexingHash = [intent atx_indexingHash];
    }

    v13 = intentIndexingHash == intentIndexingHash;
    goto LABEL_13;
  }

  if ([suggestionCopy intentIndexingHash])
  {
    intentIndexingHash = self->_intentIndexingHash;
    if (!intentIndexingHash)
    {
      intent2 = [(ATXInfoSuggestion *)self intent];
      intentIndexingHash = [intent2 atx_indexingHash];
    }

    goto LABEL_30;
  }

  intentDescription = self->_intentDescription;
  v27 = intentDescription;
  if (!intentDescription)
  {
    intentIndexingHash = [suggestionCopy intentDescription];
    if (!intentIndexingHash)
    {
      v28 = 0;
      goto LABEL_59;
    }

    v27 = self->_intentDescription;
  }

  widgetBundleIdentifier = [suggestionCopy intentDescription];
  if ([(ATXCustomIntentDescription *)v27 isEqual:widgetBundleIdentifier])
  {
    v28 = 1;
LABEL_59:
    intent3 = [(ATXInfoSuggestion *)self intent];
    if (intent3 || ([suggestionCopy intent], (widgetKind = objc_claimAutoreleasedReturnValue()) != 0))
    {
      intent4 = [(ATXInfoSuggestion *)self intent];
      intent5 = [suggestionCopy intent];
      v13 = [intent4 atx_isEqualToIntent:intent5];

      if (intent3)
      {
        goto LABEL_72;
      }
    }

    else
    {
      v13 = 1;
    }

LABEL_72:
    if (!v28)
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

  v13 = 0;
LABEL_73:

LABEL_74:
  if (!intentDescription)
  {
  }

LABEL_13:

  return v13;
}

- (void)initWithData:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0(&dword_1DEFC4000, v0, v1, "error deserializing info suggestion: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)data
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0(&dword_1DEFC4000, v0, v1, "error serializing info suggestion: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)initWithProactiveSuggestion:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_verifyAndReturnDecodedObject:ofClass:forKey:withCoder:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0(&dword_1DEFC4000, v0, v1, "ATXInfoSuggestion: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_verifyAndReturnDecodedObject:(void *)a1 ofClass:(NSObject *)a2 forKey:withCoder:.cold.2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 error];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_1DEFC4000, a2, OS_LOG_TYPE_ERROR, "ATXInfoSuggestion: error initWithCoder: %@", v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

- (void)initWithCoder:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithCoder:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  v4 = 2112;
  v5 = v0;
  _os_log_fault_impl(&dword_1DEFC4000, v1, OS_LOG_TYPE_FAULT, "ATXInfoSuggestion: could not make intent for %@: %@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)initWithCoder:.cold.3()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithProto:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_0_0();
  _os_log_fault_impl(&dword_1DEFC4000, a2, OS_LOG_TYPE_FAULT, "Unable to construct class %@ from ProtoBuf object", v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)initWithProto:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithProto:.cold.5()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0(&dword_1DEFC4000, v0, v1, "Could not unarchive intent description: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)initWithProto:.cold.6()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_1DEFC4000, v0, OS_LOG_TYPE_DEBUG, "Unarchived intent description: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)initWithProto:.cold.7()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0(&dword_1DEFC4000, v0, v1, "Could not unarchive metadata for info suggestion: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)intent
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0(&dword_1DEFC4000, v0, v1, "Could not unarchive intent for info suggestion: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)proto
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0(&dword_1DEFC4000, v0, v1, "Could not archive metadata with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end