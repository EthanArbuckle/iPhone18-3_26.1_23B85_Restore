@interface MADAutoAssetHistoryTracker
+ (id)currentTime;
+ (id)nameForHistoryType:(int64_t)type;
+ (id)newBucketFilename:(int64_t)filename forBucketIndex:(int64_t)index;
+ (id)operationName:(int64_t)name;
+ (id)paddedNameForClient:(id)client;
+ (id)paddedNameForErrorCode:(id)code;
+ (id)paddedNameForErrorDomain:(id)domain;
+ (id)paddedNameForHistoryLayer:(int64_t)layer;
+ (id)selectorNameForSelector:(id)selector;
+ (id)summaryOfAssetSelectors:(id)selectors;
- (BOOL)makeSureHistoryDirectoryExists;
- (MADAutoAssetHistoryTracker)initWithCoder:(id)coder;
- (id)historyTypeName;
- (id)initForHistoryType:(int64_t)type withMaximumFilesystemBytes:(int64_t)bytes usingProtectionQueue:(id)queue;
- (id)newBucketIndexFilename;
- (id)summary;
- (int64_t)recordFormattedHistoryEntry:(id)entry toBucketFilename:(id)filename settingCurrentBucketBytes:(BOOL)bytes;
- (void)createBucketIndexFile;
- (void)createEmptyBucketFileForIndex:(int64_t)index settingCurrentBucketBytes:(BOOL)bytes;
- (void)encodeWithCoder:(id)coder;
- (void)loadBucketIndex;
- (void)loadPersistedState;
- (void)recordHistoryEntry:(int64_t)entry toHistoryType:(int64_t)type fromClient:(id)client fromLayer:(int64_t)layer forAssetID:(id)d withSelector:(id)selector withSelectors:(id)selectors usageCount:(int64_t)self0 configuredCount:(int64_t)self1 requestedCount:(int64_t)self2 fromPallasCount:(int64_t)self3 vendingCount:(int64_t)self4 forClientDomainName:(id)self5 forAssetSetIdentifier:(id)self6 forAtomicInstance:(id)self7 withAddendumMessage:(id)self8 forPushChannelID:(id)self9 forPopulationType:(id)populationType forTargetOSVersion:(id)version forTargetBuildVersion:(id)buildVersion withOptionalCount:(unint64_t)optionalCount withRequiredCount:(unint64_t)requiredCount isRequired:(id)required failingWithError:(id)error;
- (void)verifyAllOtherBucketFilesExist;
@end

@implementation MADAutoAssetHistoryTracker

- (id)initForHistoryType:(int64_t)type withMaximumFilesystemBytes:(int64_t)bytes usingProtectionQueue:(id)queue
{
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = MADAutoAssetHistoryTracker;
  v10 = [(MADAutoAssetHistoryTracker *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_protectionQueue, queue);
    v11->_loadedFromPersistedState = 0;
    v11->_historyType = type;
    v11->_currentBucketFileIndex = 0;
    v11->_currentBucketFilesystemBytes = 0;
    v11->_maximumBucketFilesystemBytes = bytes / 10;
  }

  return v11;
}

- (MADAutoAssetHistoryTracker)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = MADAutoAssetHistoryTracker;
  v5 = [(MADAutoAssetHistoryTracker *)&v8 init];
  if (v5)
  {
    v5->_historyType = [coderCopy decodeInt64ForKey:@"historyType"];
    v5->_loadedFromPersistedState = [coderCopy decodeBoolForKey:@"loadedFromPersistedState"];
    v5->_currentBucketFileIndex = [coderCopy decodeInt64ForKey:@"currentBucketFileIndex"];
    v5->_currentBucketFilesystemBytes = [coderCopy decodeInt64ForKey:@"currentBucketFilesystemBytes"];
    v5->_maximumBucketFilesystemBytes = [coderCopy decodeInt64ForKey:@"maximumBucketFilesystemBytes"];
    protectionQueue = v5->_protectionQueue;
    v5->_protectionQueue = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[MADAutoAssetHistoryTracker historyType](self forKey:{"historyType"), @"historyType"}];
  [coderCopy encodeBool:-[MADAutoAssetHistoryTracker loadedFromPersistedState](self forKey:{"loadedFromPersistedState"), @"loadedFromPersistedState"}];
  [coderCopy encodeInt64:-[MADAutoAssetHistoryTracker currentBucketFileIndex](self forKey:{"currentBucketFileIndex"), @"currentBucketFileIndex"}];
  [coderCopy encodeInt64:-[MADAutoAssetHistoryTracker currentBucketFilesystemBytes](self forKey:{"currentBucketFilesystemBytes"), @"currentBucketFilesystemBytes"}];
  [coderCopy encodeInt64:-[MADAutoAssetHistoryTracker maximumBucketFilesystemBytes](self forKey:{"maximumBucketFilesystemBytes"), @"maximumBucketFilesystemBytes"}];
}

- (void)loadPersistedState
{
  protectionQueue = [(MADAutoAssetHistoryTracker *)self protectionQueue];
  dispatch_assert_queue_V2(protectionQueue);

  if (![(MADAutoAssetHistoryTracker *)self loadedFromPersistedState])
  {
    [(MADAutoAssetHistoryTracker *)self makeSureHistoryDirectoryExists];
    [(MADAutoAssetHistoryTracker *)self loadBucketIndex];
    v4 = [MADAutoAssetHistoryTracker newBucketFilename:[(MADAutoAssetHistoryTracker *)self historyType] forBucketIndex:[(MADAutoAssetHistoryTracker *)self currentBucketFileIndex]];
    if (!v4)
    {
      historyTypeName6 = _MADLog(@"AutoHistory");
      if (os_log_type_enabled(historyTypeName6, OS_LOG_TYPE_ERROR))
      {
        historyTypeName = [(MADAutoAssetHistoryTracker *)self historyTypeName];
        *buf = 138544130;
        v21 = historyTypeName;
        v22 = 2048;
        currentBucketFileIndex = [(MADAutoAssetHistoryTracker *)self currentBucketFileIndex];
        v24 = 2048;
        currentBucketFilesystemBytes = [(MADAutoAssetHistoryTracker *)self currentBucketFilesystemBytes];
        v26 = 2048;
        maximumBucketFilesystemBytes = [(MADAutoAssetHistoryTracker *)self maximumBucketFilesystemBytes];
        _os_log_impl(&dword_0, historyTypeName6, OS_LOG_TYPE_ERROR, "{AUTO-HISTORY-TRACKER[%{public}@]:loadPersistedState} | unable to determine current bucket filename | currentBucketFileIndex:%ld | currentBucketFilesystemBytes:%ld | maximumBucketFilesystemBytes:%ld", buf, 0x2Au);
      }

      goto LABEL_21;
    }

    historyTypeName6 = +[NSFileManager defaultManager];
    if ([historyTypeName6 fileExistsAtPath:v4])
    {
      v19 = 0;
      historyTypeName5 = [historyTypeName6 attributesOfItemAtPath:v4 error:&v19];
      v7 = v19;
      v8 = v7;
      if (!historyTypeName5 || v7)
      {
        v10 = _MADLog(@"AutoHistory");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          historyTypeName2 = [(MADAutoAssetHistoryTracker *)self historyTypeName];
          v14 = [NSError buildCheckedError:v8];
          *buf = 138543874;
          v21 = historyTypeName2;
          v22 = 2114;
          currentBucketFileIndex = v4;
          v24 = 2114;
          currentBucketFilesystemBytes = v14;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "{AUTO-HISTORY-TRACKER[%{public}@]:loadPersistedState} | unable to determine size of bucket file:%{public}@ | error:%{public}@", buf, 0x20u);
        }
      }

      else
      {
        fileSize = [historyTypeName5 fileSize];
        if ((fileSize & 0x8000000000000000) == 0 && fileSize <= [(MADAutoAssetHistoryTracker *)self maximumBucketFilesystemBytes])
        {
          [(MADAutoAssetHistoryTracker *)self setCurrentBucketFilesystemBytes:fileSize];
          v15 = _MADLog(@"AutoHistory");
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            historyTypeName3 = [(MADAutoAssetHistoryTracker *)self historyTypeName];
            currentBucketFilesystemBytes2 = [(MADAutoAssetHistoryTracker *)self currentBucketFilesystemBytes];
            maximumBucketFilesystemBytes2 = [(MADAutoAssetHistoryTracker *)self maximumBucketFilesystemBytes];
            *buf = 138544130;
            v21 = historyTypeName3;
            v22 = 2114;
            currentBucketFileIndex = v4;
            v24 = 2048;
            currentBucketFilesystemBytes = currentBucketFilesystemBytes2;
            v26 = 2048;
            maximumBucketFilesystemBytes = maximumBucketFilesystemBytes2;
            _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "{AUTO-HISTORY-TRACKER[%{public}@]:loadPersistedState} | validated currentBucketFilename:%{public}@ | currentBucketFilesystemBytes:%ld | maximumBucketFilesystemBytes:%ld", buf, 0x2Au);
          }

          goto LABEL_19;
        }

        v10 = _MADLog(@"AutoHistory");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          historyTypeName4 = [(MADAutoAssetHistoryTracker *)self historyTypeName];
          *buf = 138543874;
          v21 = historyTypeName4;
          v22 = 2114;
          currentBucketFileIndex = v4;
          v24 = 2048;
          currentBucketFilesystemBytes = fileSize;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "{AUTO-HISTORY-TRACKER[%{public}@]:loadPersistedState} | invalid currentBucketFilename:%{public}@ | out-of-range size(%ld bytes)", buf, 0x20u);
        }
      }

      [(MADAutoAssetHistoryTracker *)self createEmptyBucketFileForIndex:[(MADAutoAssetHistoryTracker *)self currentBucketFileIndex] settingCurrentBucketBytes:1];
    }

    else
    {
      [(MADAutoAssetHistoryTracker *)self createEmptyBucketFileForIndex:[(MADAutoAssetHistoryTracker *)self currentBucketFileIndex] settingCurrentBucketBytes:1];
      v8 = _MADLog(@"AutoHistory");
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
LABEL_20:

        [(MADAutoAssetHistoryTracker *)self verifyAllOtherBucketFilesExist];
        goto LABEL_21;
      }

      historyTypeName5 = [(MADAutoAssetHistoryTracker *)self historyTypeName];
      *buf = 138544130;
      v21 = historyTypeName5;
      v22 = 2114;
      currentBucketFileIndex = v4;
      v24 = 2048;
      currentBucketFilesystemBytes = [(MADAutoAssetHistoryTracker *)self currentBucketFilesystemBytes];
      v26 = 2048;
      maximumBucketFilesystemBytes = [(MADAutoAssetHistoryTracker *)self maximumBucketFilesystemBytes];
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "{AUTO-HISTORY-TRACKER[%{public}@]:loadPersistedState} | created currentBucketFilename:%{public}@ | currentBucketFilesystemBytes:%ld | maximumBucketFilesystemBytes:%ld", buf, 0x2Au);
    }

LABEL_19:

    goto LABEL_20;
  }

  v4 = _MADLog(@"AutoHistory");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    historyTypeName6 = [(MADAutoAssetHistoryTracker *)self historyTypeName];
    *buf = 138544130;
    v21 = historyTypeName6;
    v22 = 2048;
    currentBucketFileIndex = [(MADAutoAssetHistoryTracker *)self currentBucketFileIndex];
    v24 = 2048;
    currentBucketFilesystemBytes = [(MADAutoAssetHistoryTracker *)self currentBucketFilesystemBytes];
    v26 = 2048;
    maximumBucketFilesystemBytes = [(MADAutoAssetHistoryTracker *)self maximumBucketFilesystemBytes];
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "{AUTO-HISTORY-TRACKER[%{public}@]:loadPersistedState} | additional trigger to load from persisted-state when already loaded | currentBucketFileIndex:%ld | currentBucketFilesystemBytes:%ld | maximumBucketFilesystemBytes:%ld", buf, 0x2Au);
LABEL_21:
  }
}

- (void)recordHistoryEntry:(int64_t)entry toHistoryType:(int64_t)type fromClient:(id)client fromLayer:(int64_t)layer forAssetID:(id)d withSelector:(id)selector withSelectors:(id)selectors usageCount:(int64_t)self0 configuredCount:(int64_t)self1 requestedCount:(int64_t)self2 fromPallasCount:(int64_t)self3 vendingCount:(int64_t)self4 forClientDomainName:(id)self5 forAssetSetIdentifier:(id)self6 forAtomicInstance:(id)self7 withAddendumMessage:(id)self8 forPushChannelID:(id)self9 forPopulationType:(id)populationType forTargetOSVersion:(id)version forTargetBuildVersion:(id)buildVersion withOptionalCount:(unint64_t)optionalCount withRequiredCount:(unint64_t)requiredCount isRequired:(id)required failingWithError:(id)error
{
  clientCopy = client;
  dCopy = d;
  selectorCopy = selector;
  selectorsCopy = selectors;
  nameCopy = name;
  *(&v132 + 1) = identifier;
  *&v132 = instance;
  messageCopy = message;
  *(&v131 + 1) = iD;
  *&v131 = populationType;
  versionCopy = version;
  buildVersionCopy = buildVersion;
  requiredCopy = required;
  errorCopy = error;
  context = objc_autoreleasePoolPush();
  v137 = +[MADAutoAssetHistoryTracker currentTime];
  v136 = [MADAutoAssetHistoryTracker operationName:entry];
  v123 = requiredCopy;
  if (requiredCopy)
  {
    bOOLValue = [requiredCopy BOOLValue];
    v35 = @"OPTIONAL|";
    if (bOOLValue)
    {
      v35 = @"REQUIRED|";
    }

    v129 = v35;
    if (![requiredCopy BOOLValue])
    {
      requiredCount = optionalCount;
    }

    requiredCount = [NSString stringWithFormat:@"Count:%llu|", requiredCount];
  }

  else
  {
    requiredCount = &stru_4BD3F0;
    v129 = &stru_4BD3F0;
  }

  v124 = messageCopy;
  if (messageCopy)
  {
    messageCopy = [[NSString alloc] initWithFormat:@" | %@\n", messageCopy];
  }

  else
  {
    messageCopy = @"\n";
  }

  v37 = objc_opt_new();
  if (clientCopy)
  {
    v38 = [MADAutoAssetHistoryTracker paddedNameForClient:clientCopy];
    v39 = @"client";
  }

  else
  {
    v38 = [MADAutoAssetHistoryTracker paddedNameForHistoryLayer:layer];
    v39 = @"layer";
  }

  v40 = [NSString alloc];
  v120 = v38;
  if (v38)
  {
    v41 = [v40 initWithFormat:@"%@=%@", v39, v38];
  }

  else
  {
    v41 = [v40 initWithFormat:@"from=%@", v39, v89];
  }

  v42 = v41;
  if (dCopy)
  {
    if ([dCopy hasSuffix:@".asset"] && (v43 = objc_msgSend(dCopy, "length"), v43 > objc_msgSend(@".asset", "length")))
    {
      v44 = [dCopy substringWithRange:{0, objc_msgSend(dCopy, "length") - objc_msgSend(@".asset", "length")}];
    }

    else
    {
      v44 = dCopy;
    }

    v134 = v44;
  }

  else
  {
    v134 = 0;
  }

  v125 = selectorsCopy;
  v126 = selectorCopy;
  if (selectorCopy)
  {
    v45 = [NSString alloc];
    v46 = [MADAutoAssetHistoryTracker selectorNameForSelector:selectorCopy];
    v47 = [v45 initWithFormat:@"selector=%@", v46];
LABEL_29:
    v142 = v47;

    goto LABEL_30;
  }

  if (selectorsCopy)
  {
    v48 = [NSString alloc];
    v46 = [MADAutoAssetHistoryTracker summaryOfAssetSelectors:selectorsCopy];
    v47 = [v48 initWithFormat:@"selectors=%@", v46];
    goto LABEL_29;
  }

  v142 = 0;
LABEL_30:
  v49 = nameCopy;
  if (nameCopy)
  {
    nameCopy = [NSString stringWithFormat:@"domain:%@", nameCopy];
    if (!versionCopy)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  nameCopy = &stru_4BD3F0;
  if (versionCopy)
  {
LABEL_32:
    [v37 appendFormat:@"targetOS:%@", versionCopy];
  }

LABEL_33:
  if (buildVersionCopy)
  {
    v50 = [v37 length];
    v51 = @"|";
    if (!v50)
    {
      v51 = &stru_4BD3F0;
    }

    [v37 appendFormat:@"%@targetBuild:%@", v51, buildVersionCopy];
  }

  v52 = @"BLANK_ENTRY";
  if (type > 3)
  {
    if (type <= 5)
    {
      if (type == 4)
      {
        if (v142)
        {
          if (*(&v132 + 1))
          {
            v135 = [[NSString alloc] initWithFormat:@"time=%@ op=%@ %@ %@ set=%@ %@ %@%@%@ %@", v137, v136, v42, nameCopy, *(&v132 + 1), v142, v129, requiredCount, v37, messageCopy];
          }

          else
          {
            v79 = [NSString alloc];
            if (v134)
            {
              v135 = [v79 initWithFormat:@"time=%@ op=%@ %@ %@ asset=%@ %@ %@%@%@ %@", v137, v136, v42, nameCopy, v134, v142, v129, requiredCount, v37, messageCopy];
            }

            else
            {
              v135 = [v79 initWithFormat:@"time=%@ op=%@ %@ %@ %@ %@%@%@ %@", v137, v136, v42, nameCopy, v142, v129, requiredCount, v37, messageCopy, v111];
            }
          }
        }

        else if (*(&v132 + 1))
        {
          v135 = [[NSString alloc] initWithFormat:@"time=%@ op=%@ %@ %@ set=%@ %@%@%@ %@", v137, v136, v42, nameCopy, *(&v132 + 1), v129, requiredCount, v37, messageCopy, v111];
        }

        else
        {
          v82 = [NSString alloc];
          if (v134)
          {
            v135 = [v82 initWithFormat:@"time=%@ op=%@ %@ %@ asset=%@ %@%@%@ %@", v137, v136, v42, nameCopy, v134, v129, requiredCount, v37, messageCopy, v111];
          }

          else
          {
            v135 = [v82 initWithFormat:@"time=%@ op=%@ %@ %@ %@%@%@ %@", v137, v136, v42, nameCopy, v129, requiredCount, v37, messageCopy, v108, v111];
          }
        }

        goto LABEL_137;
      }

      v55 = [NSString alloc];
      if (v142)
      {
        v96 = v142;
        v99 = messageCopy;
        v93 = v134;
LABEL_64:
        v135 = [v55 initWithFormat:@"time=%@ op=%@ %@ asset=%@ %@%@", v137, v136, v42, v93, v96, v99, v102, v105, v108, v111];
LABEL_137:
        v52 = v135;
        goto LABEL_138;
      }

      v97 = messageCopy;
      v94 = v134;
LABEL_91:
      v135 = [v55 initWithFormat:@"time=%@ op=%@ %@ asset=%@%@", v137, v136, v42, v94, v97, v98, v102, v105, v108, v111];
      goto LABEL_137;
    }

    if (type != 6)
    {
      if (type == 7)
      {
        v64 = [NSString alloc];
        if (v131 == 0)
        {
          v131 = [v64 initWithFormat:@"time=%@ op=%@ selector=%@\n", v137, v136, v142, v92, v95];
        }

        else
        {
          v131 = [v64 initWithFormat:@"time=%@ op=%@ selector=%@ pushChannelID:%@ populationType:%@\n", v137, v136, v142, *(&v131 + 1), v131];
        }

        v52 = v131;
        v49 = nameCopy;
      }

      goto LABEL_138;
    }

    v55 = [NSString alloc];
    v66 = v142;
    if (v142)
    {
      if (v134)
      {
        v135 = [v55 initWithFormat:@"time=%@ op=%@ %@ name=%@ %@%@", v137, v136, v42, v134, v142, messageCopy, v102, v105, v108, v111];
        goto LABEL_137;
      }

      goto LABEL_75;
    }

    if (v134)
    {
      v135 = [v55 initWithFormat:@"time=%@ op=%@ %@ name=%@%@", v137, v136, v42, v134, messageCopy, v98, v102, v105, v108, v111];
      goto LABEL_137;
    }

LABEL_95:
    v135 = [v55 initWithFormat:@"time=%@ op=%@ %@%@", v137, v136, v42, messageCopy, v95, v98, v102, v105, v108, v111];
    goto LABEL_137;
  }

  if (type > 1)
  {
    if (type == 2)
    {
      v67 = [NSString alloc];
      if ((requestedCount & configuredCount & pallasCount & vendingCount) < 0 != v68)
      {
        vendingCount = [v67 initWithFormat:@"count=%004ld", count, v90, v91, v92];
      }

      else
      {
        vendingCount = [v67 initWithFormat:@"configured=%004ld requested:%004ld fromPallas:%004ld vending:%004ld", configuredCount, requestedCount, pallasCount, vendingCount];
      }

      v70 = vendingCount;
      v49 = nameCopy;
      v71 = [NSString alloc];
      if (v142)
      {
        if (nameCopy | *(&v132 + 1) | v132)
        {
          if (v132 == 0)
          {
            v108 = [v71 initWithFormat:@"time=%@ op=%@ %@ %@ domain=%@ %@%@", v137, v136, v42, v70, nameCopy, v142, messageCopy, v105, v108];
          }

          else if (v132)
          {
            if (*(&v132 + 1))
            {
              v108 = [v71 initWithFormat:@"time=%@ op=%@ %@ %@ id=%@ set=%@ domain=%@ %@%@", v137, v136, v42, v70, v132, nameCopy, v142, messageCopy];
            }

            else
            {
              v108 = [v71 initWithFormat:@"time=%@ op=%@ %@ %@ id=%@ domain=%@ %@%@", v137, v136, v42, v70, v132, nameCopy, v142, messageCopy, v108];
            }
          }

          else
          {
            v108 = [v71 initWithFormat:@"time=%@ op=%@ %@ %@ id-%@ set=%@ domain=%@ %@%@", v137, v136, v42, v70, @"UNKNOWN                                 ", *(&v132 + 1), nameCopy, v142, messageCopy];
          }
        }

        else
        {
          v108 = [v71 initWithFormat:@"time=%@ op=%@ %@ %@ %@%@", v137, v136, v42, v70, v142, messageCopy, v102, v105, v108];
        }
      }

      else if (nameCopy | *(&v132 + 1) | v132)
      {
        if (v132 == 0)
        {
          v108 = [v71 initWithFormat:@"time=%@ op=%@ %@ %@ domain=%@%@", v137, v136, v42, v70, nameCopy, messageCopy, v102, v105, v108];
        }

        else if (v132)
        {
          if (*(&v132 + 1))
          {
            v108 = [v71 initWithFormat:@"time=%@ op=%@ %@ %@ id=%@ set=%@ domain=%@%@", v137, v136, v42, v70, v132, nameCopy, messageCopy, v108];
          }

          else
          {
            v108 = [v71 initWithFormat:@"time=%@ op=%@ %@ %@ id=%@ domain=%@%@", v137, v136, v42, v70, v132, nameCopy, messageCopy, v105, v108];
          }
        }

        else
        {
          v108 = [v71 initWithFormat:@"time=%@ op=%@ %@ %@ id-%@ set=%@ domain=%@%@", v137, v136, v42, v70, @"UNKNOWN                                 ", *(&v132 + 1), nameCopy, messageCopy, v108];
        }
      }

      else
      {
        v108 = [v71 initWithFormat:@"time=%@ op=%@ %@ %@%@", v137, v136, v42, v70, messageCopy, v98, v102, v105, v108];
      }

      v52 = v108;

      goto LABEL_138;
    }

    if (errorCopy)
    {
      v56 = [NSError buildCheckedError:errorCopy];
      if (v56)
      {
        domain = v56;
        checkedDepthCount = [v56 checkedDepthCount];
        v59 = [MADAutoAssetHistoryTracker paddedNameForErrorDomain:domain];
        v60 = [MADAutoAssetHistoryTracker paddedNameForErrorCode:domain];
        if (checkedDepthCount >= 1 && ([domain checkedForDepthIndex:checkedDepthCount], (v61 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v62 = v61;
          v113 = [MADAutoAssetHistoryTracker paddedNameForErrorDomain:v61];
          v114 = [MADAutoAssetHistoryTracker paddedNameForErrorCode:v62];
          v119 = [[NSString alloc] initWithFormat:@"error_domain=%@ error_code=%@ top_domain=%@ top_code=%@", v113, v114, v59, v60];
          localizedDescription2 = v62;
          v116 = [NSString alloc];
          localizedDescription = [v62 localizedDescription];
          v115 = [v116 initWithFormat:@" error_desc=%@", localizedDescription];
        }

        else
        {
          v119 = [[NSString alloc] initWithFormat:@"error_domain=%@ error_code=%@            %@          %@", v59, v60, @"                                    ", @"            "];
          v77 = [NSString alloc];
          localizedDescription2 = [domain localizedDescription];
          v115 = [v77 initWithFormat:@" error_desc=%@", localizedDescription2];
        }

        v78 = v60;
        v75 = *(&v132 + 1);
        v76 = v134;

        v73 = v115;
        v74 = v119;
      }

      else
      {
        v80 = [NSString alloc];
        domain = [errorCopy domain];
        v74 = [v80 initWithFormat:@"bad_error_domain=%@ bad_error_code=%ld", domain, objc_msgSend(errorCopy, "code")];
        v73 = &stru_4BD3F0;
        v75 = *(&v132 + 1);
        v76 = v134;
      }
    }

    else
    {
      v73 = &stru_4BD3F0;
      v74 = @"NO_ERROR_PROVIDED";
      v75 = *(&v132 + 1);
      v76 = v134;
    }

    if (v142)
    {
      if (!(v75 | v132 | v76))
      {
        v111 = [[NSString alloc] initWithFormat:@"time=%@ op=%@ %@ %@ %@%@%@", v137, v136, v42, v74, v142, v73, messageCopy, v105, v108, v111];
        goto LABEL_151;
      }

      if (v76)
      {
        if (!(v75 | v132))
        {
          v111 = [[NSString alloc] initWithFormat:@"time=%@ op=%@ %@ %@ asset=%@ %@ %@%@", v137, v136, v42, v74, v76, v142, v73, messageCopy, v108, v111];
          goto LABEL_151;
        }

LABEL_119:
        v52 = @"BLANK_ENTRY";
LABEL_152:

        goto LABEL_138;
      }

      v83 = [NSString alloc];
      if (v49)
      {
        if (v132)
        {
          if (!v75)
          {
            v111 = [v83 initWithFormat:@"time=%@ op=%@ %@ %@ id=%@ domain=%@ %@%@%@", v137, v136, v42, v74, v132, v49, v142, v73, messageCopy, v111];
            goto LABEL_151;
          }

          v109 = v73;
          v112 = messageCopy;
          v103 = v49;
          v106 = v142;
          v100 = v75;
          v84 = v132;
        }

        else
        {
          v109 = v73;
          v112 = messageCopy;
          v103 = v49;
          v106 = v142;
          v84 = @"UNKNOWN                                 ";
          v100 = v75;
        }

        v111 = [v83 initWithFormat:@"time=%@ op=%@ %@ %@ id=%@ set=%@ domain=%@ %@%@%@", v137, v136, v42, v74, v84, v100, v103, v106, v109, v112];
      }

      else
      {
        v111 = [v83 initWithFormat:@"time=%@ op=%@ %@ %@ id=%@ set=%@ %@%@%@", v137, v136, v42, v74, @"UNKNOWN                                 ", v75, v142, v73, messageCopy, v111];
      }
    }

    else
    {
      if (!(v75 | v132 | v76))
      {
        v111 = [[NSString alloc] initWithFormat:@"time=%@ op=%@ %@ %@%@%@", v137, v136, v42, v74, v73, messageCopy, v102, v105, v108, v111];
        goto LABEL_151;
      }

      if (v76)
      {
        if (!(v75 | v132))
        {
          v111 = [[NSString alloc] initWithFormat:@"time=%@ op=%@ %@ %@ asset=%@ %@%@", v137, v136, v42, v74, v76, v73, messageCopy, v105, v108, v111];
          goto LABEL_151;
        }

        goto LABEL_119;
      }

      v85 = [NSString alloc];
      if (v49)
      {
        if (v132)
        {
          if (!v75)
          {
            v111 = [v85 initWithFormat:@"time=%@ op=%@ %@ %@ id=%@ domain=%@%@%@", v137, v136, v42, v74, v132, v49, v73, messageCopy, v108, v111];
            goto LABEL_151;
          }

          v107 = v73;
          v110 = messageCopy;
          v101 = v75;
          v104 = v49;
          v86 = v132;
        }

        else
        {
          v107 = v73;
          v110 = messageCopy;
          v101 = v75;
          v104 = v49;
          v86 = @"UNKNOWN                                 ";
        }

        v111 = [v85 initWithFormat:@"time=%@ op=%@ %@ %@ id=%@ set=%@ domain=%@%@%@", v137, v136, v42, v74, v86, v101, v104, v107, v110, v111];
      }

      else
      {
        v111 = [v85 initWithFormat:@"time=%@ op=%@ %@ %@ id=%@ set=%@%@%@", v137, v136, v42, v74, @"UNKNOWN                                 ", v75, v73, messageCopy, v108, v111];
      }
    }

LABEL_151:
    v52 = v111;
    goto LABEL_152;
  }

  if (!type)
  {
    v55 = [NSString alloc];
    v66 = v142;
    if (v142)
    {
      if (v134)
      {
        v96 = v142;
        v99 = messageCopy;
        v93 = v134;
        goto LABEL_64;
      }

LABEL_75:
      v135 = [v55 initWithFormat:@"time=%@ op=%@ %@ %@%@", v137, v136, v42, v66, messageCopy, v98, v102, v105, v108, v111];
      goto LABEL_137;
    }

    if (v134)
    {
      v94 = v134;
      v97 = messageCopy;
      goto LABEL_91;
    }

    goto LABEL_95;
  }

  if (type == 1)
  {
    v53 = [NSString alloc];
    if (v142)
    {
      if (v134)
      {
        v135 = [v53 initWithFormat:@"time=%@ op=%@ %@ count=%004ld asset=%@ %@%@", v137, v136, v42, count, v134, v142, messageCopy, v105, v108, v111];
      }

      else
      {
        v135 = [v53 initWithFormat:@"time=%@ op=%@ %@ count=%004ld %@%@", v137, v136, v42, count, v142, messageCopy, v102, v105, v108, v111];
      }
    }

    else if (v134)
    {
      v135 = [v53 initWithFormat:@"time=%@ op=%@ %@ count=%004ld asset=%@%@", v137, v136, v42, count, v134, messageCopy, v102, v105, v108, v111];
    }

    else
    {
      v135 = [v53 initWithFormat:@"time=%@ op=%@ %@ count=%004ld%@", v137, v136, v42, count, messageCopy, v98, v102, v105, v108, v111];
    }

    goto LABEL_137;
  }

LABEL_138:
  protectionQueue = [(MADAutoAssetHistoryTracker *)self protectionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __413__MADAutoAssetHistoryTracker_recordHistoryEntry_toHistoryType_fromClient_fromLayer_forAssetID_withSelector_withSelectors_usageCount_configuredCount_requestedCount_fromPallasCount_vendingCount_forClientDomainName_forAssetSetIdentifier_forAtomicInstance_withAddendumMessage_forPushChannelID_forPopulationType_forTargetOSVersion_forTargetBuildVersion_withOptionalCount_withRequiredCount_isRequired_failingWithError___block_invoke;
  block[3] = &unk_4B2B18;
  v144 = v52;
  selfCopy = self;
  v88 = v52;
  dispatch_async(protectionQueue, block);

  objc_autoreleasePoolPop(context);
}

void __413__MADAutoAssetHistoryTracker_recordHistoryEntry_toHistoryType_fromClient_fromLayer_forAssetID_withSelector_withSelectors_usageCount_configuredCount_requestedCount_fromPallasCount_vendingCount_forClientDomainName_forAssetSetIdentifier_forAtomicInstance_withAddendumMessage_forPushChannelID_forPopulationType_forTargetOSVersion_forTargetBuildVersion_withOptionalCount_withRequiredCount_isRequired_failingWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) length];
  v3 = &v2[[*(a1 + 40) currentBucketFilesystemBytes]];
  if (v3 > [*(a1 + 40) maximumBucketFilesystemBytes])
  {
    v4 = [*(a1 + 40) currentBucketFilesystemBytes];
    v5 = [*(a1 + 40) currentBucketFileIndex];
    v6 = [*(a1 + 40) currentBucketFileIndex];
    v7 = *(a1 + 40);
    if (v6 > 8)
    {
      v8 = 0;
    }

    else
    {
      v8 = [*(a1 + 40) currentBucketFileIndex] + 1;
    }

    [v7 setCurrentBucketFileIndex:v8];
    [*(a1 + 40) createBucketIndexFile];
    [*(a1 + 40) createEmptyBucketFileForIndex:objc_msgSend(*(a1 + 40) settingCurrentBucketBytes:{"currentBucketFileIndex"), 1}];
    v9 = _MADLog(@"AutoHistory");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 40) historyTypeName];
      v11 = [*(a1 + 40) currentBucketFileIndex];
      v12 = [*(a1 + 40) currentBucketFilesystemBytes];
      v13 = [*(a1 + 40) maximumBucketFilesystemBytes];
      v15 = 138544642;
      v16 = v10;
      v17 = 2048;
      v18 = v5;
      v19 = 2048;
      v20 = v11;
      v21 = 2048;
      v22 = v4;
      v23 = 2048;
      v24 = v12;
      v25 = 2048;
      v26 = v13;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "{AUTO-HISTORY-TRACKER[%{public}@]:recordHistoryEntry} | bucket index change %ld=>%ld | previousBucketFilesystemBytes:%ld currentBucketFilesystemBytes:%ld | maximumBucketFilesystemBytes:%ld", &v15, 0x3Eu);
    }
  }

  v14 = +[MADAutoAssetHistoryTracker newBucketFilename:forBucketIndex:](MADAutoAssetHistoryTracker, "newBucketFilename:forBucketIndex:", [*(a1 + 40) historyType], objc_msgSend(*(a1 + 40), "currentBucketFileIndex"));
  [*(a1 + 40) setCurrentBucketFilesystemBytes:{objc_msgSend(*(a1 + 40), "recordFormattedHistoryEntry:toBucketFilename:settingCurrentBucketBytes:", *(a1 + 32), v14, 1)}];
}

- (BOOL)makeSureHistoryDirectoryExists
{
  protectionQueue = [(MADAutoAssetHistoryTracker *)self protectionQueue];
  dispatch_assert_queue_V2(protectionQueue);

  v4 = +[NSFileManager defaultManager];
  v5 = getRepositoryPath(@"/private/var/MobileAsset/AssetsV2/history");
  v6 = [v4 fileExistsAtPath:v5];

  if (v6)
  {
    v7 = 0;
    v8 = 1;
  }

  else
  {
    v9 = getRepositoryPath(@"/private/var/MobileAsset/AssetsV2/history");
    v15 = 0;
    v8 = 1;
    v10 = [v4 createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:0 error:&v15];
    v7 = v15;

    if ((v10 & 1) == 0)
    {
      v11 = _MADLog(@"AutoHistory");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        historyTypeName = [(MADAutoAssetHistoryTracker *)self historyTypeName];
        v13 = [NSError buildCheckedError:v7];
        *buf = 138543618;
        v17 = historyTypeName;
        v18 = 2114;
        v19 = v13;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "{AUTO-HISTORY-TRACKER[%{public}@]:makeSureHistoryDirectoryExists} | unable to create base history directory | error:%{public}@", buf, 0x16u);
      }

      v8 = 0;
    }
  }

  return v8;
}

- (void)loadBucketIndex
{
  protectionQueue = [(MADAutoAssetHistoryTracker *)self protectionQueue];
  dispatch_assert_queue_V2(protectionQueue);

  newBucketIndexFilename = [(MADAutoAssetHistoryTracker *)self newBucketIndexFilename];
  v5 = +[NSFileManager defaultManager];
  if ([v5 fileExistsAtPath:newBucketIndexFilename])
  {
    v17 = 0;
    historyTypeName4 = [NSString stringWithContentsOfFile:newBucketIndexFilename encoding:4 error:&v17];
    v7 = v17;
    if (v7)
    {
      v8 = _MADLog(@"AutoHistory");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        historyTypeName = [(MADAutoAssetHistoryTracker *)self historyTypeName];
        v10 = [NSError buildCheckedError:v7];
        *buf = 138543874;
        v19 = historyTypeName;
        v20 = 2114;
        v21 = newBucketIndexFilename;
        v22 = 2114;
        currentBucketFileIndex2 = v10;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "{AUTO-HISTORY-TRACKER[%{public}@]:loadBucketIndex} | unable to read bucket index from bucket file:%{public}@ | error:%{public}@", buf, 0x20u);
      }
    }

    else
    {
      intValue = [historyTypeName4 intValue];
      v12 = intValue;
      if (intValue < 0xB)
      {
        [(MADAutoAssetHistoryTracker *)self setCurrentBucketFileIndex:intValue];
        v14 = _MADLog(@"AutoHistory");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          historyTypeName2 = [(MADAutoAssetHistoryTracker *)self historyTypeName];
          currentBucketFileIndex = [(MADAutoAssetHistoryTracker *)self currentBucketFileIndex];
          *buf = 138543874;
          v19 = historyTypeName2;
          v20 = 2114;
          v21 = newBucketIndexFilename;
          v22 = 2048;
          currentBucketFileIndex2 = currentBucketFileIndex;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "{AUTO-HISTORY-TRACKER[%{public}@]:loadBucketIndex} | valid bucket index file:%{public}@ | currentBucketFileIndex:%ld", buf, 0x20u);
        }

        goto LABEL_11;
      }

      v8 = _MADLog(@"AutoHistory");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        historyTypeName3 = [(MADAutoAssetHistoryTracker *)self historyTypeName];
        *buf = 138543874;
        v19 = historyTypeName3;
        v20 = 2048;
        v21 = v12;
        v22 = 2114;
        currentBucketFileIndex2 = newBucketIndexFilename;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "{AUTO-HISTORY-TRACKER[%{public}@]:loadBucketIndex} | invalid bucket index(%ld) in bucket file:%{public}@", buf, 0x20u);
      }
    }

    [(MADAutoAssetHistoryTracker *)self setCurrentBucketFileIndex:0];
    [(MADAutoAssetHistoryTracker *)self createBucketIndexFile];
LABEL_11:

    goto LABEL_12;
  }

  [(MADAutoAssetHistoryTracker *)self setCurrentBucketFileIndex:0];
  [(MADAutoAssetHistoryTracker *)self createBucketIndexFile];
  v7 = _MADLog(@"AutoHistory");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    historyTypeName4 = [(MADAutoAssetHistoryTracker *)self historyTypeName];
    *buf = 138543874;
    v19 = historyTypeName4;
    v20 = 2114;
    v21 = newBucketIndexFilename;
    v22 = 2048;
    currentBucketFileIndex2 = [(MADAutoAssetHistoryTracker *)self currentBucketFileIndex];
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "{AUTO-HISTORY-TRACKER[%{public}@]:loadBucketIndex} | created bucket index file:%{public}@ | currentBucketFileIndex:%ld", buf, 0x20u);
    goto LABEL_11;
  }

LABEL_12:
}

- (void)createBucketIndexFile
{
  protectionQueue = [(MADAutoAssetHistoryTracker *)self protectionQueue];
  dispatch_assert_queue_V2(protectionQueue);

  newBucketIndexFilename = [(MADAutoAssetHistoryTracker *)self newBucketIndexFilename];
  v5 = [[NSString alloc] initWithFormat:@"%d", -[MADAutoAssetHistoryTracker currentBucketFileIndex](self, "currentBucketFileIndex")];
  v11 = 0;
  [v5 writeToFile:newBucketIndexFilename atomically:1 encoding:4 error:&v11];
  v6 = v11;
  v7 = _MADLog(@"AutoHistory");
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      historyTypeName = [(MADAutoAssetHistoryTracker *)self historyTypeName];
      v10 = [NSError buildCheckedError:v6];
      *buf = 138543874;
      v13 = historyTypeName;
      v14 = 2114;
      v15 = newBucketIndexFilename;
      v16 = 2114;
      v17 = v10;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "{AUTO-HISTORY-TRACKER[%{public}@]:createBucketIndexFile} | unable to write bucket index to bucket file:%{public}@ | error:%{public}@", buf, 0x20u);

LABEL_6:
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    historyTypeName = [(MADAutoAssetHistoryTracker *)self historyTypeName];
    *buf = 138543874;
    v13 = historyTypeName;
    v14 = 2114;
    v15 = newBucketIndexFilename;
    v16 = 2114;
    v17 = v5;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "{AUTO-HISTORY-TRACKER[%{public}@]:createBucketIndexFile} | set bucket file:%{public}@ | currentBucketFileIndex:%{public}@", buf, 0x20u);
    goto LABEL_6;
  }
}

- (void)createEmptyBucketFileForIndex:(int64_t)index settingCurrentBucketBytes:(BOOL)bytes
{
  bytesCopy = bytes;
  protectionQueue = [(MADAutoAssetHistoryTracker *)self protectionQueue];
  dispatch_assert_queue_V2(protectionQueue);

  v13 = +[NSFileManager defaultManager];
  v8 = [MADAutoAssetHistoryTracker newBucketFilename:[(MADAutoAssetHistoryTracker *)self historyType] forBucketIndex:index];
  v9 = [NSString alloc];
  v10 = +[MADAutoAssetHistoryTracker currentTime];
  v11 = [MADAutoAssetHistoryTracker operationName:0];
  v12 = [v9 initWithFormat:@"time=%@ op=%@\n", v10, v11];

  [v13 createFileAtPath:v8 contents:0 attributes:0];
  [(MADAutoAssetHistoryTracker *)self recordFormattedHistoryEntry:v12 toBucketFilename:v8 settingCurrentBucketBytes:bytesCopy];
}

- (void)verifyAllOtherBucketFilesExist
{
  protectionQueue = [(MADAutoAssetHistoryTracker *)self protectionQueue];
  dispatch_assert_queue_V2(protectionQueue);

  v4 = +[NSFileManager defaultManager];
  v5 = 0;
  *&v6 = 138543874;
  v19 = v6;
  do
  {
    if (v5 != [(MADAutoAssetHistoryTracker *)self currentBucketFileIndex])
    {
      v7 = [MADAutoAssetHistoryTracker newBucketFilename:[(MADAutoAssetHistoryTracker *)self historyType] forBucketIndex:v5];
      if (v7)
      {
        if ([v4 fileExistsAtPath:v7])
        {
          v20 = 0;
          v8 = [v4 attributesOfItemAtPath:v7 error:&v20];
          v9 = v20;
          v10 = v9;
          if (!v8 || v9)
          {
            v14 = _MADLog(@"AutoHistory");
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              historyTypeName = [(MADAutoAssetHistoryTracker *)self historyTypeName];
              v16 = [NSError buildCheckedError:v10];
              *buf = v19;
              v22 = historyTypeName;
              v23 = 2114;
              v24 = v7;
              v25 = 2114;
              v26 = v16;
              _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "{AUTO-HISTORY-TRACKER[%{public}@]:loadPersistedState} | unable to determine size of bucket file:%{public}@ | error:%{public}@", buf, 0x20u);
            }

            [(MADAutoAssetHistoryTracker *)self createEmptyBucketFileForIndex:[(MADAutoAssetHistoryTracker *)self currentBucketFileIndex] settingCurrentBucketBytes:0];
          }

          else
          {
            fileSize = [v8 fileSize];
            if (fileSize < 0 || fileSize > [(MADAutoAssetHistoryTracker *)self maximumBucketFilesystemBytes])
            {
              v12 = _MADLog(@"AutoHistory");
              if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
              {
                historyTypeName2 = [(MADAutoAssetHistoryTracker *)self historyTypeName];
                *buf = v19;
                v22 = historyTypeName2;
                v23 = 2048;
                v24 = fileSize;
                v25 = 2114;
                v26 = v7;
                _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "{AUTO-HISTORY-TRACKER[%{public}@]:loadPersistedState} | out-of-range size(%ld bytes) of bucket file:%{public}@", buf, 0x20u);
              }

              [v4 createFileAtPath:v7 contents:0 attributes:0];
            }

            else
            {
              v17 = _MADLog(@"AutoHistory");
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                historyTypeName3 = [(MADAutoAssetHistoryTracker *)self historyTypeName];
                *buf = v19;
                v22 = historyTypeName3;
                v23 = 2114;
                v24 = v7;
                v25 = 2048;
                v26 = fileSize;
                _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "{AUTO-HISTORY-TRACKER[%{public}@]:loadPersistedState} | verified other bucket file:%{public}@ | currentBucketFilesystemBytes:%ld", buf, 0x20u);
              }
            }
          }
        }

        else
        {
          [(MADAutoAssetHistoryTracker *)self createEmptyBucketFileForIndex:v5 settingCurrentBucketBytes:0];
        }
      }
    }

    ++v5;
  }

  while (v5 != &dword_8 + 2);
}

- (int64_t)recordFormattedHistoryEntry:(id)entry toBucketFilename:(id)filename settingCurrentBucketBytes:(BOOL)bytes
{
  bytesCopy = bytes;
  entryCopy = entry;
  filenameCopy = filename;
  protectionQueue = [(MADAutoAssetHistoryTracker *)self protectionQueue];
  dispatch_assert_queue_V2(protectionQueue);

  v11 = [NSFileHandle fileHandleForWritingAtPath:filenameCopy];
  if (v11)
  {
    v12 = [entryCopy length];
    v42 = 0;
    v43 = 0;
    v13 = [v11 seekToEndReturningOffset:&v43 error:&v42];
    v14 = v42;
    if (v13)
    {
      v15 = [entryCopy dataUsingEncoding:4];
      v41 = 0;
      v16 = [v11 writeData:v15 error:&v41];
      v17 = v41;

      if (!v16)
      {
        v24 = [NSError buildCheckedError:v17];
        v34 = _MADLog(@"AutoHistory");
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          historyTypeName = [(MADAutoAssetHistoryTracker *)self historyTypeName];
          v36 = @"NO_ERROR";
          *buf = 138543874;
          v45 = historyTypeName;
          if (v24)
          {
            v36 = v24;
          }

          v46 = 2114;
          v47 = filenameCopy;
          v48 = 2114;
          v49 = v36;
          _os_log_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "{AUTO-HISTORY-TRACKER[%{public}@]:recordFormattedHistoryEntry} | unable to write latest entry to bucket file:%{public}@ | error:%{public}@", buf, 0x20u);
        }

        v19 = 0;
        goto LABEL_31;
      }

      v40 = 0;
      v18 = [v11 seekToEndReturningOffset:&v43 error:&v40];
      v14 = v40;

      if (v18)
      {
        v19 = v43;
        if (v43 < v12)
        {
          currentBucketFilesystemBytes = [(MADAutoAssetHistoryTracker *)self currentBucketFilesystemBytes];
          v21 = _MADLog(@"AutoHistory");
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            historyTypeName2 = [(MADAutoAssetHistoryTracker *)self historyTypeName];
            *buf = 138543618;
            v45 = historyTypeName2;
            v46 = 2114;
            v47 = filenameCopy;
            _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "{AUTO-HISTORY-TRACKER[%{public}@]:recordFormattedHistoryEntry} | unable to get accurate filesystem size after writing entry to bucket file:%{public}@", buf, 0x16u);
          }

          v19 = v12 + currentBucketFilesystemBytes;
        }

        v39 = 0;
        v23 = [v11 closeAndReturnError:&v39];
        v17 = v39;

        v24 = 0;
        if ((v23 & 1) == 0)
        {
          v24 = [NSError buildCheckedError:v17];
          v25 = _MADLog(@"AutoHistory");
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            historyTypeName3 = [(MADAutoAssetHistoryTracker *)self historyTypeName];
            v27 = @"NO_ERROR";
            *buf = 138543874;
            v45 = historyTypeName3;
            if (v24)
            {
              v27 = v24;
            }

            v46 = 2114;
            v47 = filenameCopy;
            v48 = 2114;
            v49 = v27;
            _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "{AUTO-HISTORY-TRACKER[%{public}@]:recordFormattedHistoryEntry} | unable to seek to end of bucket file:%{public}@ (after writing) | error:%{public}@", buf, 0x20u);
          }
        }

        if (bytesCopy)
        {
          [(MADAutoAssetHistoryTracker *)self setCurrentBucketFilesystemBytes:v19];
        }

LABEL_31:
        v14 = v17;
        goto LABEL_32;
      }

      v24 = [NSError buildCheckedError:v14];
      v30 = _MADLog(@"AutoHistory");
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        historyTypeName4 = [(MADAutoAssetHistoryTracker *)self historyTypeName];
        v38 = @"NO_ERROR";
        *buf = 138543874;
        v45 = historyTypeName4;
        if (v24)
        {
          v38 = v24;
        }

        v46 = 2114;
        v47 = filenameCopy;
        v48 = 2114;
        v49 = v38;
        v33 = "{AUTO-HISTORY-TRACKER[%{public}@]:recordFormattedHistoryEntry} | unable to write latest entry to bucket file:%{public}@ | error:%{public}@";
LABEL_24:
        _os_log_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, v33, buf, 0x20u);
      }
    }

    else
    {
      v24 = [NSError buildCheckedError:v14];
      v30 = _MADLog(@"AutoHistory");
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        historyTypeName4 = [(MADAutoAssetHistoryTracker *)self historyTypeName];
        v32 = @"NO_ERROR";
        *buf = 138543874;
        v45 = historyTypeName4;
        if (v24)
        {
          v32 = v24;
        }

        v46 = 2114;
        v47 = filenameCopy;
        v48 = 2114;
        v49 = v32;
        v33 = "{AUTO-HISTORY-TRACKER[%{public}@]:recordFormattedHistoryEntry} | unable to seek to end of bucket file:%{public}@ | error:%{public}@";
        goto LABEL_24;
      }
    }

    v19 = 0;
LABEL_32:

    goto LABEL_33;
  }

  v28 = _MADLog(@"AutoHistory");
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    historyTypeName5 = [(MADAutoAssetHistoryTracker *)self historyTypeName];
    *buf = 138543618;
    v45 = historyTypeName5;
    v46 = 2114;
    v47 = filenameCopy;
    _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "{AUTO-HISTORY-TRACKER[%{public}@]:recordFormattedHistoryEntry} | unable to get handle to bucket file:%{public}@", buf, 0x16u);
  }

  v19 = 0;
LABEL_33:

  return v19;
}

+ (id)currentTime
{
  v2 = objc_alloc_init(NSDateFormatter);
  v3 = objc_alloc_init(NSDate);
  [v2 setDateFormat:@"yyyy-MM-dd_HH:mm:ss"];
  v4 = [v2 stringFromDate:v3];

  return v4;
}

+ (id)operationName:(int64_t)name
{
  result = @"UNKNOWN";
  if (name > 599)
  {
    if (name <= 1000)
    {
      if (name <= 799)
      {
        if (name > 699)
        {
          v4 = @"STARTING_DOWNLOAD_GROUPS   ";
          v38 = @"DETERMINE_DONE             ";
          v39 = @"DETERMINE_DROPPED          ";
          if (name != 705)
          {
            v39 = @"UNKNOWN";
          }

          if (name != 704)
          {
            v38 = v39;
          }

          if (name != 703)
          {
            v4 = v38;
          }

          v8 = @"DETERMINE_CONTENT_AVAILABLE";
          v40 = @"STARTING_DOWNLOAD_ALL      ";
          v41 = @"DETERMINE_GROUPS_AVAILABLE ";
          if (name != 702)
          {
            v41 = @"UNKNOWN";
          }

          if (name != 701)
          {
            v40 = v41;
          }

          if (name != 700)
          {
            v8 = v40;
          }

          v11 = name <= 702;
        }

        else
        {
          v4 = @"STA_STARTUP_COOKIE_SUCCESS ";
          v22 = @"STA_STARTUP_COOKIE_FAILURE ";
          v23 = @"STA_STARTUP_COOKIE_EXISTS  ";
          if (name != 624)
          {
            v23 = @"UNKNOWN";
          }

          if (name != 623)
          {
            v22 = v23;
          }

          if (name != 622)
          {
            v4 = v22;
          }

          v8 = @"PRG_ENTRY_DOWNLOADED       ";
          v24 = @"STA_STARTUP_ACTIVATED      ";
          v25 = @"STA_STARTUP_BEGINNING      ";
          if (name != 621)
          {
            v25 = @"UNKNOWN";
          }

          if (name != 620)
          {
            v24 = v25;
          }

          if (name != 600)
          {
            v8 = v24;
          }

          v11 = name <= 621;
        }
      }

      else if (name <= 805)
      {
        v4 = @"PURGED_STAGED_CONTENT      ";
        v34 = @"CANCEL_ACTIVE_JOB          ";
        v35 = @"ERASE_STAGING_CLIENT_REQ   ";
        if (name != 805)
        {
          v35 = @"UNKNOWN";
        }

        if (name != 804)
        {
          v34 = v35;
        }

        if (name != 803)
        {
          v4 = v34;
        }

        v8 = @"STORE_STAGE_REQUEST        ";
        v36 = @"INVALID_STAGE_REQUEST      ";
        v37 = @"PURGE_STAGING_CLIENT_REQ   ";
        if (name != 802)
        {
          v37 = @"UNKNOWN";
        }

        if (name != 801)
        {
          v36 = v37;
        }

        if (name != 800)
        {
          v8 = v36;
        }

        v11 = name <= 802;
      }

      else
      {
        v4 = @"STAGED_DONE_DOWNLOADED     ";
        v12 = @"SUCESS_DECIDE_MORE_CONTENT ";
        if (name != 1000)
        {
          v12 = @"UNKNOWN";
        }

        if (name != 904)
        {
          v4 = v12;
        }

        v13 = @"STAGED_NO_DOWNLOADED       ";
        v14 = @"STAGED_REQUIRED_DOWNLOADED ";
        if (name != 903)
        {
          v14 = @"UNKNOWN";
        }

        if (name != 902)
        {
          v13 = v14;
        }

        if (name <= 903)
        {
          v4 = v13;
        }

        v8 = @"ERASED_STAGED_CONTENT      ";
        v15 = @"STAGED_NO_CANDIDATES       ";
        v16 = @"STAGED_HAVE_CANDIDATES     ";
        if (name != 901)
        {
          v16 = @"UNKNOWN";
        }

        if (name != 900)
        {
          v15 = v16;
        }

        if (name != 806)
        {
          v8 = v15;
        }

        v11 = name <= 901;
      }
    }

    else if (name > 1302)
    {
      if (name <= 1501)
      {
        v4 = @"SCHEDULED_SET_JOBS         ";
        v30 = @"DEL_AI_DROP_ELIMINATE      ";
        v31 = @"DEL_AI_DROP_MATCHES_LATEST ";
        if (name != 1501)
        {
          v31 = @"UNKNOWN";
        }

        if (name != 1500)
        {
          v30 = v31;
        }

        if (name != 1401)
        {
          v4 = v30;
        }

        v8 = @"CLIENT_RECIEVE_NOTIFICATION";
        v32 = @"DAEMON_RECIEVE_NOTIFICATION";
        v33 = @"SCHEDULED_SINGLETON_JOBS   ";
        if (name != 1400)
        {
          v33 = @"UNKNOWN";
        }

        if (name != 1304)
        {
          v32 = v33;
        }

        if (name != 1303)
        {
          v8 = v32;
        }

        v11 = name <= 1400;
      }

      else
      {
        v4 = @"SET_JOB_ASSET_DOWNLOAD_END  ";
        v17 = @"QUIET_OPERATION            ";
        if (name != 9999)
        {
          v17 = @"UNKNOWN";
        }

        if (name != 1701)
        {
          v4 = v17;
        }

        v18 = @"RECLAIMED_ASSET";
        v19 = @"SET_JOB_ASSET_DOWNLOAD_START";
        if (name != 1700)
        {
          v19 = @"UNKNOWN";
        }

        if (name != 1600)
        {
          v18 = v19;
        }

        if (name <= 1700)
        {
          v4 = v18;
        }

        v8 = @"DEL_AI_DROP_CORRUPTED_ASSET";
        v20 = @"DEL_AI_DROP_FORCE_UNLCK_DEV";
        v21 = @"DEL_AI_ELIMINATED          ";
        if (name != 1504)
        {
          v21 = @"UNKNOWN";
        }

        if (name != 1503)
        {
          v20 = v21;
        }

        if (name != 1502)
        {
          v8 = v20;
        }

        v11 = name <= 1599;
      }
    }

    else if (name <= 1202)
    {
      v4 = @"PERSONALIZE                ";
      v26 = @"DEPERSONALIZE              ";
      v27 = @"BEGIN_ACCESS               ";
      if (name != 1202)
      {
        v27 = @"UNKNOWN";
      }

      if (name != 1201)
      {
        v26 = v27;
      }

      if (name != 1200)
      {
        v4 = v26;
      }

      v8 = @"FAILED_DECIDE_MORE_CONTENT ";
      v28 = @"DETERMINE_ASSET_TYPE_START ";
      v29 = @"DETERMINE_ASSET_TYPE_DONE  ";
      if (name != 1101)
      {
        v29 = @"UNKNOWN";
      }

      if (name != 1100)
      {
        v28 = v29;
      }

      if (name != 1001)
      {
        v8 = v28;
      }

      v11 = name <= 1199;
    }

    else
    {
      v4 = @"SUBSCRIBE_CHANNEL          ";
      v5 = @"UNSUBSCRIBE_CHANNEL        ";
      if (name != 1301)
      {
        v5 = @"UNKNOWN";
      }

      if (name != 1300)
      {
        v4 = v5;
      }

      v6 = @"PRE-PERSONALIZE            ";
      v7 = @"COMMIT_PRE_PERSONALIZED    ";
      if (name != 1207)
      {
        v7 = @"UNKNOWN";
      }

      if (name != 1206)
      {
        v6 = v7;
      }

      if (name <= 1299)
      {
        v4 = v6;
      }

      v8 = @"END_ACCESS                 ";
      v9 = @"BEGIN_MAP_TO_EXCLAVES      ";
      v10 = @"END_MAP_TO_EXCLAVES        ";
      if (name != 1205)
      {
        v10 = @"UNKNOWN";
      }

      if (name != 1204)
      {
        v9 = v10;
      }

      if (name != 1203)
      {
        v8 = v9;
      }

      v11 = name <= 1205;
    }

    if (v11)
    {
      return v8;
    }

    else
    {
      return v4;
    }
  }

  else if (name <= 101)
  {
    v42 = @"ADD_CLIENT_DOWNLOAD        ";
    v43 = @"ADD_CLIENT_LOCK            ";
    if (name != 101)
    {
      v43 = @"UNKNOWN";
    }

    if (name != 100)
    {
      v42 = v43;
    }

    if (name)
    {
      return v42;
    }

    else
    {
      return @"NEW                        ";
    }
  }

  else
  {
    switch(name)
    {
      case 200:
        result = @"ADD_PRE_INSTALL_DISCOVERED ";
        break;
      case 201:
        result = @"ADD_SCHEDULER_DOWNLOADED   ";
        break;
      case 202:
        result = @"ADD_CONNECTOR_DOWNLOADED   ";
        break;
      case 203:
        result = @"ADD_PRE_SU_STAGED          ";
        break;
      case 204:
        result = @"ADD_PRE_SU_IMMED_PROMOTED  ";
        break;
      case 205:
        result = @"ADD_PRE_SU_NEW_OS_PROMOTED ";
        break;
      case 206:
        result = @"ADD_FEWEER_CONFIG_ENTRIES  ";
        break;
      case 207:
      case 208:
      case 209:
      case 210:
      case 211:
      case 212:
      case 213:
      case 214:
      case 215:
      case 216:
      case 217:
      case 218:
      case 219:
      case 230:
      case 231:
      case 232:
      case 233:
      case 234:
      case 235:
      case 236:
      case 237:
      case 238:
      case 239:
      case 240:
      case 241:
      case 242:
      case 243:
      case 244:
      case 245:
      case 246:
      case 247:
      case 248:
      case 249:
      case 252:
      case 253:
      case 254:
      case 255:
      case 256:
      case 257:
      case 258:
      case 259:
      case 260:
      case 261:
      case 262:
      case 263:
      case 264:
      case 265:
      case 266:
      case 267:
      case 268:
      case 269:
      case 270:
      case 271:
      case 272:
      case 273:
      case 274:
      case 275:
      case 276:
      case 277:
      case 278:
      case 279:
      case 280:
      case 281:
      case 282:
      case 283:
      case 284:
      case 285:
      case 286:
      case 287:
      case 288:
      case 289:
      case 290:
      case 291:
      case 292:
      case 293:
      case 294:
      case 295:
      case 296:
      case 297:
      case 298:
      case 299:
      case 304:
      case 305:
      case 306:
      case 307:
      case 308:
      case 309:
      case 310:
      case 311:
      case 312:
      case 313:
      case 314:
      case 315:
      case 316:
      case 317:
      case 318:
      case 319:
      case 358:
      case 359:
      case 360:
      case 361:
      case 362:
      case 363:
      case 364:
      case 365:
      case 366:
      case 367:
      case 368:
      case 369:
      case 396:
      case 397:
      case 398:
      case 399:
      case 412:
      case 413:
      case 414:
      case 415:
      case 416:
      case 417:
      case 418:
      case 419:
      case 421:
      case 422:
      case 423:
      case 424:
      case 425:
      case 426:
      case 427:
      case 428:
      case 429:
      case 430:
      case 431:
      case 432:
      case 433:
      case 434:
      case 435:
      case 436:
      case 437:
      case 438:
      case 439:
      case 462:
      case 463:
      case 464:
      case 465:
      case 466:
      case 467:
      case 468:
      case 469:
      case 470:
      case 471:
      case 472:
      case 473:
      case 474:
      case 475:
      case 476:
      case 477:
      case 478:
      case 479:
      case 480:
      case 481:
      case 482:
      case 483:
      case 484:
      case 485:
      case 486:
      case 487:
      case 488:
      case 489:
      case 490:
      case 491:
      case 492:
      case 493:
      case 494:
      case 495:
      case 496:
      case 497:
      case 498:
      case 499:
        return result;
      case 220:
        result = @"ADD_AI_PROMOTED_STARTUP    ";
        break;
      case 221:
        result = @"ADD_AI_SCHEDULER_TRIGGERED ";
        break;
      case 222:
        result = @"ADD_AI_FROM_SATISFYING     ";
        break;
      case 223:
        result = @"ADD_AI_FROM_STAGED_DESCR   ";
        break;
      case 224:
        result = @"ADD_AI_FROM_PRE_INSTALLED  ";
        break;
      case 225:
        result = @"ADD_AI_ROUTING_NEW_SET_JOB ";
        break;
      case 226:
        result = @"ADD_AI_SUB_ATOMIC_0_ENTRIES";
        break;
      case 227:
        result = @"ADD_AI_SUB_ATOMIC_W_ENTRIES";
        break;
      case 228:
        result = @"ADD_AI_RECOVER_LOST        ";
        break;
      case 229:
        result = @"ADD_AI_FROM_SU_SUSPEND_0   ";
        break;
      case 250:
        result = @"MOD_CLIENT_LOCK            ";
        break;
      case 251:
        result = @"MOD_CLIENT_LOCK_INHIBITED  ";
        break;
      case 300:
        result = @"DEL_CLIENT_ELIMINATE       ";
        break;
      case 301:
        result = @"DEL_CLIENT_ELIM_NEVER_LOCK ";
        break;
      case 302:
        result = @"DEL_CLIENT_UNLOCK          ";
        break;
      case 303:
        result = @"DEL_CLIENT_UNLOCK_INHIBITED";
        break;
      case 320:
        result = @"DEL_AI_DROP_LOAD_PERSISTED ";
        break;
      case 321:
        result = @"DEL_AI_DISCOVERED_NOT_DWNLD";
        break;
      case 322:
        result = @"DEL_AI_NO_CONTENT_FILESYSTM";
        break;
      case 323:
        result = @"DEL_AI_FAILED_ALLOCATION   ";
        break;
      case 324:
        result = @"DEL_AI_DROP_CROSSCHECK_TRIM";
        break;
      case 325:
        result = @"DEL_AI_DROP_UNLOCKED_OTHER ";
        break;
      case 326:
        result = @"DEL_AI_ELIMINATE_LOAD_PERSD";
        break;
      case 327:
        result = @"DEL_AI_ELIMINATE_MATCH_SID ";
        break;
      case 328:
        result = @"DEL_AI_ELIMINATE_RMV_CONTNT";
        break;
      case 329:
        result = @"DEL_AI_DROP_LOAD_SET_DESCRS";
        break;
      case 330:
        result = @"DEL_AI_DROP_CROSSCHK_DESCRS";
        break;
      case 331:
        result = @"DEL_AI_RMV_PREVIOUS_STAGED ";
        break;
      case 332:
        result = @"DEL_AI_RMV_CURRENT_SET_JOB ";
        break;
      case 333:
        result = @"DEL_AI_RMV_CURR_SET_JOB_2ND";
        break;
      case 334:
        result = @"DEL_AI_CROSSCHECK_TRIM     ";
        break;
      case 335:
        result = @"DEL_AI_OVERFLOW_TRIM       ";
        break;
      case 336:
        result = @"DEL_AI_DROP_OVERFLOW_TRIM_D";
        break;
      case 337:
        result = @"DEL_AI_DROP_FAIL_ALLOC     ";
        break;
      case 338:
        result = @"DEL_AI_DROP_INCOMPLETE     ";
        break;
      case 339:
        result = @"DEL_AI_DROP_PSUS_ALTERED   ";
        break;
      case 340:
        result = @"DEL_AI_DROP_PSUS_PALLAS_RSP";
        break;
      case 341:
        result = @"DEL_AI_DROP_MULTIPLE_STALE ";
        break;
      case 342:
        result = @"DEL_AI_DROP_FORCE_UNLOCKED ";
        break;
      case 343:
        result = @"DEL_AI_DROP_UNREFERENCED   ";
        break;
      case 344:
        result = @"DEL_AI_DROP_ONCE_PERSONALZD";
        break;
      case 345:
        result = @"DEL_AI_DROP_MISSING_SETDESC";
        break;
      case 346:
        result = @"DEL_AI_DROP_UNLK_NOT_LATEST";
        break;
      case 347:
        result = @"DEL_AI_DROP_FROM_SU_RESUME0";
        break;
      case 348:
        result = @"DEL_AI_DROP_CACHE_DELETE_UN";
        break;
      case 349:
        result = @"DEL_AI_DROP_CACHE_DELETE_LK";
        break;
      case 350:
        result = @"ADD_SD_PROMOTED_STARTUP    ";
        break;
      case 351:
        result = @"ADD_SD_FROM_STAGED_DESCR   ";
        break;
      case 352:
        result = @"ADD_SD_PRE_INSTALLED       ";
        break;
      case 353:
        result = @"ADD_SD_ROUTING_NEW_SET_JOB ";
        break;
      case 354:
        result = @"ADD_SD_FROM_OTHR_SATISFYING";
        break;
      case 355:
        result = @"ADD_SD_FROM_ALREADY_DWNLDED";
        break;
      case 356:
        result = @"ADD_SD_DOWNLOADED_OR_SAME  ";
        break;
      case 357:
        result = @"ADD_SD_SAME_VERSION_FOUND  ";
        break;
      case 370:
        result = @"DEL_SD_ELIMINATE_LOAD_PERSD";
        break;
      case 371:
        result = @"DEL_SD_ELIMINATE_MATCH_SID ";
        break;
      case 372:
        result = @"DEL_SD_ELIMINATE_RMV_CONTNT";
        break;
      case 373:
        result = @"DEL_SD_DROP_LOAD_SET_DESCRS";
        break;
      case 374:
        result = @"DEL_SD_DROP_CROSSCHK_DESCRS";
        break;
      case 375:
        result = @"DEL_SD_RMV_PREVIOUS_STAGED ";
        break;
      case 376:
        result = @"DEL_SD_NO_CONTENT_FILESYSTM";
        break;
      case 377:
        result = @"DEL_SD_ELIMINATE_DROP_MATCH";
        break;
      case 378:
        result = @"DEL_SD_DROP_UNLOCKED_OTHER ";
        break;
      case 379:
        result = @"DEL_SD_DROP_NO_LATEST_AI   ";
        break;
      case 380:
        result = @"DEL_SD_DROP_OVERFLOW_TRIM_D";
        break;
      case 381:
        result = @"DEL_SD_DROP_INCOMPLETE     ";
        break;
      case 382:
        result = @"DEL_SD_DROP_CROSSCHECK_TRIM";
        break;
      case 383:
        result = @"DEL_SD_DROP_PSUS_ALTERED   ";
        break;
      case 384:
        result = @"DEL_SD_DROP_PSUS_PALLAS_RSP";
        break;
      case 385:
        result = @"DEL_SD_DROP_MULTIPLE_STALE ";
        break;
      case 386:
        result = @"DEL_SD_DROP_FORCE_UNLOCKED ";
        break;
      case 387:
        result = @"DEL_SD_DROP_UNREFERENCED   ";
        break;
      case 388:
        result = @"DEL_SD_DROP_ONCE_PERSONALZD";
        break;
      case 389:
        result = @"DEL_SD_DROP_UNLK_NOT_LATEST";
        break;
      case 390:
        result = @"DEL_SD_DROP_CACHE_DELETE_UN";
        break;
      case 391:
        result = @"DEL_SD_DROP_CACHE_DELETE_LK";
        break;
      case 392:
        result = @"DEL_SD_DROP_ELIMINATE      ";
        break;
      case 393:
        result = @"DEL_SD_DROP_CORRUPTED_ASSET";
        break;
      case 394:
        result = @"DEL_SD_DROP_FORCE_UNLCK_DEV";
        break;
      case 395:
        result = @"DEL_SD_ELIMINATED          ";
        break;
      case 400:
        result = @"DEL_NO_DESCRIPTOR          ";
        break;
      case 401:
        result = @"DEL_NO_ASSET_CONTENT       ";
        break;
      case 402:
        result = @"DEL_OLDER_WHEN_NEWER_FOUND ";
        break;
      case 403:
        result = @"DEL_OLDER_WHEN_UNLOCKED    ";
        break;
      case 404:
        result = @"DEL_CACHE_DELETE_STAGED    ";
        break;
      case 405:
        result = @"DEL_CACHE_DELETE_UNLOCKED  ";
        break;
      case 406:
        result = @"DEL_CACHE_DELETE_LOCKED    ";
        break;
      case 407:
        result = @"DEL_PRE_SU_PURGED          ";
        break;
      case 408:
        result = @"DEL_CHANGE_STAGED_TARGET   ";
        break;
      case 409:
        result = @"DEL_ASSET_CORRUPTED        ";
        break;
      case 410:
        result = @"DEL_ASSET_INCOMPLETE       ";
        break;
      case 411:
        result = @"DEL_ASSET_SMAC_DIFF_OS_BLD ";
        break;
      case 420:
        result = @"VLD_LOAD_LOCAL_URL_PRESENT ";
        break;
      case 440:
        result = @"SET_CONFIG_SPECIFIERS      ";
        break;
      case 441:
        result = @"SET_CONFIG_LATEST_VEND_SET ";
        break;
      case 442:
        result = @"SET_CONFIG_LATEST_VEND_CLR ";
        break;
      case 443:
        result = @"SET_CONFIG_NEED_FOR_ATOMIC ";
        break;
      case 444:
        result = @"SET_CONFIG_LOAD_PERSISTED  ";
        break;
      case 445:
        result = @"SET_CONFIG_IMPLIED_REQUEST ";
        break;
      case 446:
        result = @"SET_CONFIG_CHANGED         ";
        break;
      case 447:
        result = @"SET_CONFIG_LOAD_SET_TARGET ";
        break;
      case 448:
        result = @"SET_CONFIG_LOOKUP_RESPONSE ";
        break;
      case 449:
        result = @"SET_CONFIG_ALTER_ENTRIES   ";
        break;
      case 450:
        result = @"SET_CONFIG_REFRESH_STALE   ";
        break;
      case 451:
        result = @"SET_CONFIG_NEW_SET_CONFIG  ";
        break;
      case 452:
        result = @"SET_CONFIG_FORCE_UNLOCKED  ";
        break;
      case 453:
        result = @"SET_CONFIG_PSUS_LKUP_ASSOC ";
        break;
      case 454:
        result = @"SET_CONFIG_PSUS_LKUP_CLEARD";
        break;
      case 455:
        result = @"SET_CONFIG_SAME_VEND_CONFIG";
        break;
      case 456:
        result = @"SET_CONFIG_FIX_VEND_CONFIG ";
        break;
      case 457:
        result = @"SET_CONFIG_LATEST_VEND_SAME";
        break;
      case 458:
        result = @"SET_CONFIG_MOST_RCNT_RCVD  ";
        break;
      case 459:
        result = @"SET_CONFIG_MOST_RCNT_RCVD_S";
        break;
      case 460:
        result = @"SET_CONFIG_AVAIL_LOST      ";
        break;
      case 461:
        result = @"SET_CONFIG_AVAIL_GAINED    ";
        break;
      case 500:
        result = @"TRY_CLIENT_LOCK            ";
        break;
      case 501:
      case 502:
        result = @"TRY_CLIENT_LOCK_CONTINUE   ";
        break;
      case 503:
        result = @"JOB_FAILED_TO_START        ";
        break;
      case 504:
        result = @"JOB_FAILED                 ";
        break;
      case 505:
        result = @"JOB_FAILED_TO_PATCH        ";
        break;
      case 506:
        result = @"JOB_FAILED_REVOKED         ";
        break;
      default:
        if (name == 102)
        {
          result = @"ADD_CLIENT_INHIBITED       ";
        }

        break;
    }
  }

  return result;
}

+ (id)paddedNameForHistoryLayer:(int64_t)layer
{
  if (layer > 7)
  {
    v3 = @"UNKNOWN";
  }

  else
  {
    v3 = off_4B3AD8[layer];
  }

  v4 = [(__CFString *)v3 length];
  if (v4 < 26)
  {
    if (v4 != &dword_18 + 1)
    {
      v5 = [@"                         " substringWithRange:{0, 25 - v4}];
      v3 = [NSString stringWithFormat:@"%@%@", v3, v5];
    }
  }

  else
  {
    v3 = [(__CFString *)v3 substringWithRange:0, 25];
  }

  return v3;
}

+ (id)paddedNameForClient:(id)client
{
  clientCopy = client;
  v4 = [clientCopy length];
  if (v4 >= 25)
  {
    v5 = [clientCopy substringWithRange:{0, 24}];
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  if (v4 == &dword_18)
  {
    v5 = clientCopy;
    goto LABEL_5;
  }

  v7 = [@"                        " substringWithRange:{0, 24 - v4}];
  v6 = [NSString stringWithFormat:@"%@%@", clientCopy, v7];

LABEL_7:

  return v6;
}

+ (id)paddedNameForErrorDomain:(id)domain
{
  domainCopy = domain;
  domain = [domainCopy domain];
  v5 = [domain length];

  if (v5 < 37)
  {
    [domainCopy domain];
    if (v5 == &stru_20.cmdsize)
      v7 = {;
    }

    else
      v8 = {;
      v9 = [@"                                    " substringWithRange:{0, 36 - v5}];
      v7 = [NSString stringWithFormat:@"%@%@", v8, v9];
    }
  }

  else
  {
    domain2 = [domainCopy domain];
    v7 = [domain2 substringWithRange:{0, 36}];
  }

  return v7;
}

+ (id)paddedNameForErrorCode:(id)code
{
  v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%ld", [code code]);
  v4 = [v3 length];
  if (v4 >= 13)
  {
    v5 = [v3 substringWithRange:{0, 12}];
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  if (v4 == &dword_C)
  {
    v5 = v3;
    goto LABEL_5;
  }

  v7 = [@"            " substringWithRange:{0, 12 - v4}];
  v6 = [NSString stringWithFormat:@"%@%@", v3, v7];

LABEL_7:

  return v6;
}

+ (id)selectorNameForSelector:(id)selector
{
  selectorCopy = selector;
  if (__isPlatformVersionAtLeast(2, 18, 4, 0) && (objc_opt_respondsToSelector() & 1) != 0 && ([selectorCopy setAtomicInstanceUUID], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    setAtomicInstanceUUID = [selectorCopy setAtomicInstanceUUID];
    v6 = [NSString stringWithFormat:@"setAtomicInstance:%@", setAtomicInstanceUUID];
  }

  else
  {
    assetType = [selectorCopy assetType];
    v8 = [assetType length];

    setAtomicInstanceUUID = [selectorCopy assetType];
    v9 = [@"com.apple.MobileAsset." length];
    assetType2 = [selectorCopy assetType];
    v11 = [assetType2 hasPrefix:@"com.apple.MobileAsset."];

    if (v11)
    {
      v12 = v8 <= v9;
      v13 = v8 - v9;
      if (!v12)
      {
        assetType3 = [selectorCopy assetType];
        v15 = [assetType3 substringWithRange:{v9, v13}];

        setAtomicInstanceUUID = v15;
      }
    }

    assetSpecifier = [selectorCopy assetSpecifier];
    assetVersion = [selectorCopy assetVersion];
    if (assetVersion)
    {
      assetVersion2 = [selectorCopy assetVersion];
      v6 = [NSString stringWithFormat:@"%@|%@|%@", setAtomicInstanceUUID, assetSpecifier, assetVersion2];
    }

    else
    {
      v6 = [NSString stringWithFormat:@"%@|%@|%@", setAtomicInstanceUUID, assetSpecifier, @"ALL"];
    }
  }

  return v6;
}

+ (id)nameForHistoryType:(int64_t)type
{
  if (type < 8)
  {
    return off_4B3B18[type];
  }

  v5 = _MADLog(@"AutoHistory");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 134217984;
    typeCopy = type;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "{AUTO-HISTORY-TRACKER:nameForHistoryType} | invalid history-type:%ld", &v6, 0xCu);
  }

  return @"HISTORY_TYPE_UNKNOWN";
}

- (id)newBucketIndexFilename
{
  protectionQueue = [(MADAutoAssetHistoryTracker *)self protectionQueue];
  dispatch_assert_queue_V2(protectionQueue);

  historyTypeName = [(MADAutoAssetHistoryTracker *)self historyTypeName];
  if (historyTypeName)
  {
    v5 = [NSString alloc];
    v6 = getRepositoryPath(@"/private/var/MobileAsset/AssetsV2/history");
    v7 = [v5 initWithFormat:@"%@/%@_%@_%@.txt", v6, @"MAAutoAsset", historyTypeName, @"History"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)historyTypeName
{
  protectionQueue = [(MADAutoAssetHistoryTracker *)self protectionQueue];
  dispatch_assert_queue_V2(protectionQueue);

  historyType = [(MADAutoAssetHistoryTracker *)self historyType];

  return [MADAutoAssetHistoryTracker nameForHistoryType:historyType];
}

+ (id)newBucketFilename:(int64_t)filename forBucketIndex:(int64_t)index
{
  v5 = [MADAutoAssetHistoryTracker nameForHistoryType:filename];
  if (v5)
  {
    v6 = [NSString alloc];
    v7 = getRepositoryPath(@"/private/var/MobileAsset/AssetsV2/history");
    index = [v6 initWithFormat:@"%@/%@_%@_%@_%02ld.log", v7, @"MAAutoAsset", v5, @"History", index];
  }

  else
  {
    index = 0;
  }

  return index;
}

+ (id)summaryOfAssetSelectors:(id)selectors
{
  selectorsCopy = selectors;
  v4 = selectorsCopy;
  if (!selectorsCopy || ![selectorsCopy count])
  {
    v14 = @"N";
    goto LABEL_34;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v29 = v4;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (!v6)
  {
LABEL_17:

LABEL_18:
    v14 = objc_msgSend([NSMutableString alloc], "initWithString:", @"(");
    v28 = 0;
    v15 = 1;
    goto LABEL_19;
  }

  v7 = v6;
  assetType2 = 0;
  v9 = *v35;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v35 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v34 + 1) + 8 * i);
      if (assetType2)
      {
        assetType = [v11 assetType];
        v13 = [SUCore stringIsEqual:assetType to:assetType2];

        if ((v13 & 1) == 0)
        {

          goto LABEL_17;
        }
      }

      else
      {
        assetType2 = [v11 assetType];
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v34 objects:v39 count:16];
  }

  while (v7);

  if (!assetType2)
  {
    goto LABEL_18;
  }

  v28 = assetType2;
  v14 = objc_msgSend([NSMutableString alloc], "initWithFormat:", @"[asset-type:%@]("), assetType2;
  v15 = 0;
LABEL_19:
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v16 = v5;
  v17 = [v16 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v31;
    v20 = 1;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v22 = *(*(&v30 + 1) + 8 * j);
        if ((v20 & 1) == 0)
        {
          [(__CFString *)v14 appendString:@", "];
        }

        if (v15)
        {
          assetType3 = [v22 assetType];
          [(__CFString *)v14 appendFormat:@"[type:%@]", assetType3];
        }

        assetVersion = [v22 assetVersion];

        assetSpecifier = [v22 assetSpecifier];
        if (assetVersion)
        {
          assetVersion2 = [v22 assetVersion];
          [(__CFString *)v14 appendFormat:@"%@(%@)", assetSpecifier, assetVersion2];
        }

        else
        {
          [(__CFString *)v14 appendString:assetSpecifier];
        }

        v20 = 0;
      }

      v18 = [v16 countByEnumeratingWithState:&v30 objects:v38 count:16];
      v20 = 0;
    }

    while (v18);
  }

  [(__CFString *)v14 appendString:@""]);
  v4 = v29;
LABEL_34:

  return v14;
}

- (id)summary
{
  v3 = [MADAutoAssetHistoryTracker nameForHistoryType:[(MADAutoAssetHistoryTracker *)self historyType]];
  protectionQueue = [(MADAutoAssetHistoryTracker *)self protectionQueue];
  if (protectionQueue)
  {
    v5 = @"Y";
  }

  else
  {
    v5 = @"N";
  }

  if ([(MADAutoAssetHistoryTracker *)self loadedFromPersistedState])
  {
    v6 = @"Y";
  }

  else
  {
    v6 = @"N";
  }

  v7 = [NSString stringWithFormat:@"protectionQueue:%@|historyType:%@|loadedFromPersistedState:%@|currentBucketFileIndex:%ld|currentBucketFilesystemBytes:%ld|maximumBucketFilesystemBytes:%ld", v5, v3, v6, [(MADAutoAssetHistoryTracker *)self currentBucketFileIndex], [(MADAutoAssetHistoryTracker *)self currentBucketFilesystemBytes], [(MADAutoAssetHistoryTracker *)self maximumBucketFilesystemBytes]];

  return v7;
}

@end