@interface MADAutoAssetHistoryTracker
+ (id)currentTime;
+ (id)nameForHistoryType:(int64_t)a3;
+ (id)newBucketFilename:(int64_t)a3 forBucketIndex:(int64_t)a4;
+ (id)operationName:(int64_t)a3;
+ (id)paddedNameForClient:(id)a3;
+ (id)paddedNameForErrorCode:(id)a3;
+ (id)paddedNameForErrorDomain:(id)a3;
+ (id)paddedNameForHistoryLayer:(int64_t)a3;
+ (id)selectorNameForSelector:(id)a3;
+ (id)summaryOfAssetSelectors:(id)a3;
- (BOOL)makeSureHistoryDirectoryExists;
- (MADAutoAssetHistoryTracker)initWithCoder:(id)a3;
- (id)historyTypeName;
- (id)initForHistoryType:(int64_t)a3 withMaximumFilesystemBytes:(int64_t)a4 usingProtectionQueue:(id)a5;
- (id)newBucketIndexFilename;
- (id)summary;
- (int64_t)recordFormattedHistoryEntry:(id)a3 toBucketFilename:(id)a4 settingCurrentBucketBytes:(BOOL)a5;
- (void)createBucketIndexFile;
- (void)createEmptyBucketFileForIndex:(int64_t)a3 settingCurrentBucketBytes:(BOOL)a4;
- (void)encodeWithCoder:(id)a3;
- (void)loadBucketIndex;
- (void)loadPersistedState;
- (void)recordHistoryEntry:(int64_t)a3 toHistoryType:(int64_t)a4 fromClient:(id)a5 fromLayer:(int64_t)a6 forAssetID:(id)a7 withSelector:(id)a8 withSelectors:(id)a9 usageCount:(int64_t)a10 configuredCount:(int64_t)a11 requestedCount:(int64_t)a12 fromPallasCount:(int64_t)a13 vendingCount:(int64_t)a14 forClientDomainName:(id)a15 forAssetSetIdentifier:(id)a16 forAtomicInstance:(id)a17 withAddendumMessage:(id)a18 forPushChannelID:(id)a19 forPopulationType:(id)a20 forTargetOSVersion:(id)a21 forTargetBuildVersion:(id)a22 withOptionalCount:(unint64_t)a23 withRequiredCount:(unint64_t)a24 isRequired:(id)a25 failingWithError:(id)a26;
- (void)verifyAllOtherBucketFilesExist;
@end

@implementation MADAutoAssetHistoryTracker

- (id)initForHistoryType:(int64_t)a3 withMaximumFilesystemBytes:(int64_t)a4 usingProtectionQueue:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = MADAutoAssetHistoryTracker;
  v10 = [(MADAutoAssetHistoryTracker *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_protectionQueue, a5);
    v11->_loadedFromPersistedState = 0;
    v11->_historyType = a3;
    v11->_currentBucketFileIndex = 0;
    v11->_currentBucketFilesystemBytes = 0;
    v11->_maximumBucketFilesystemBytes = a4 / 10;
  }

  return v11;
}

- (MADAutoAssetHistoryTracker)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MADAutoAssetHistoryTracker;
  v5 = [(MADAutoAssetHistoryTracker *)&v8 init];
  if (v5)
  {
    v5->_historyType = [v4 decodeInt64ForKey:@"historyType"];
    v5->_loadedFromPersistedState = [v4 decodeBoolForKey:@"loadedFromPersistedState"];
    v5->_currentBucketFileIndex = [v4 decodeInt64ForKey:@"currentBucketFileIndex"];
    v5->_currentBucketFilesystemBytes = [v4 decodeInt64ForKey:@"currentBucketFilesystemBytes"];
    v5->_maximumBucketFilesystemBytes = [v4 decodeInt64ForKey:@"maximumBucketFilesystemBytes"];
    protectionQueue = v5->_protectionQueue;
    v5->_protectionQueue = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:-[MADAutoAssetHistoryTracker historyType](self forKey:{"historyType"), @"historyType"}];
  [v4 encodeBool:-[MADAutoAssetHistoryTracker loadedFromPersistedState](self forKey:{"loadedFromPersistedState"), @"loadedFromPersistedState"}];
  [v4 encodeInt64:-[MADAutoAssetHistoryTracker currentBucketFileIndex](self forKey:{"currentBucketFileIndex"), @"currentBucketFileIndex"}];
  [v4 encodeInt64:-[MADAutoAssetHistoryTracker currentBucketFilesystemBytes](self forKey:{"currentBucketFilesystemBytes"), @"currentBucketFilesystemBytes"}];
  [v4 encodeInt64:-[MADAutoAssetHistoryTracker maximumBucketFilesystemBytes](self forKey:{"maximumBucketFilesystemBytes"), @"maximumBucketFilesystemBytes"}];
}

- (void)loadPersistedState
{
  v3 = [(MADAutoAssetHistoryTracker *)self protectionQueue];
  dispatch_assert_queue_V2(v3);

  if (![(MADAutoAssetHistoryTracker *)self loadedFromPersistedState])
  {
    [(MADAutoAssetHistoryTracker *)self makeSureHistoryDirectoryExists];
    [(MADAutoAssetHistoryTracker *)self loadBucketIndex];
    v4 = [MADAutoAssetHistoryTracker newBucketFilename:[(MADAutoAssetHistoryTracker *)self historyType] forBucketIndex:[(MADAutoAssetHistoryTracker *)self currentBucketFileIndex]];
    if (!v4)
    {
      v5 = _MADLog(@"AutoHistory");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v12 = [(MADAutoAssetHistoryTracker *)self historyTypeName];
        *buf = 138544130;
        v21 = v12;
        v22 = 2048;
        v23 = [(MADAutoAssetHistoryTracker *)self currentBucketFileIndex];
        v24 = 2048;
        v25 = [(MADAutoAssetHistoryTracker *)self currentBucketFilesystemBytes];
        v26 = 2048;
        v27 = [(MADAutoAssetHistoryTracker *)self maximumBucketFilesystemBytes];
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "{AUTO-HISTORY-TRACKER[%{public}@]:loadPersistedState} | unable to determine current bucket filename | currentBucketFileIndex:%ld | currentBucketFilesystemBytes:%ld | maximumBucketFilesystemBytes:%ld", buf, 0x2Au);
      }

      goto LABEL_21;
    }

    v5 = +[NSFileManager defaultManager];
    if ([v5 fileExistsAtPath:v4])
    {
      v19 = 0;
      v6 = [v5 attributesOfItemAtPath:v4 error:&v19];
      v7 = v19;
      v8 = v7;
      if (!v6 || v7)
      {
        v10 = _MADLog(@"AutoHistory");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v13 = [(MADAutoAssetHistoryTracker *)self historyTypeName];
          v14 = [NSError buildCheckedError:v8];
          *buf = 138543874;
          v21 = v13;
          v22 = 2114;
          v23 = v4;
          v24 = 2114;
          v25 = v14;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "{AUTO-HISTORY-TRACKER[%{public}@]:loadPersistedState} | unable to determine size of bucket file:%{public}@ | error:%{public}@", buf, 0x20u);
        }
      }

      else
      {
        v9 = [v6 fileSize];
        if ((v9 & 0x8000000000000000) == 0 && v9 <= [(MADAutoAssetHistoryTracker *)self maximumBucketFilesystemBytes])
        {
          [(MADAutoAssetHistoryTracker *)self setCurrentBucketFilesystemBytes:v9];
          v15 = _MADLog(@"AutoHistory");
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = [(MADAutoAssetHistoryTracker *)self historyTypeName];
            v17 = [(MADAutoAssetHistoryTracker *)self currentBucketFilesystemBytes];
            v18 = [(MADAutoAssetHistoryTracker *)self maximumBucketFilesystemBytes];
            *buf = 138544130;
            v21 = v16;
            v22 = 2114;
            v23 = v4;
            v24 = 2048;
            v25 = v17;
            v26 = 2048;
            v27 = v18;
            _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "{AUTO-HISTORY-TRACKER[%{public}@]:loadPersistedState} | validated currentBucketFilename:%{public}@ | currentBucketFilesystemBytes:%ld | maximumBucketFilesystemBytes:%ld", buf, 0x2Au);
          }

          goto LABEL_19;
        }

        v10 = _MADLog(@"AutoHistory");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = [(MADAutoAssetHistoryTracker *)self historyTypeName];
          *buf = 138543874;
          v21 = v11;
          v22 = 2114;
          v23 = v4;
          v24 = 2048;
          v25 = v9;
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

      v6 = [(MADAutoAssetHistoryTracker *)self historyTypeName];
      *buf = 138544130;
      v21 = v6;
      v22 = 2114;
      v23 = v4;
      v24 = 2048;
      v25 = [(MADAutoAssetHistoryTracker *)self currentBucketFilesystemBytes];
      v26 = 2048;
      v27 = [(MADAutoAssetHistoryTracker *)self maximumBucketFilesystemBytes];
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "{AUTO-HISTORY-TRACKER[%{public}@]:loadPersistedState} | created currentBucketFilename:%{public}@ | currentBucketFilesystemBytes:%ld | maximumBucketFilesystemBytes:%ld", buf, 0x2Au);
    }

LABEL_19:

    goto LABEL_20;
  }

  v4 = _MADLog(@"AutoHistory");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(MADAutoAssetHistoryTracker *)self historyTypeName];
    *buf = 138544130;
    v21 = v5;
    v22 = 2048;
    v23 = [(MADAutoAssetHistoryTracker *)self currentBucketFileIndex];
    v24 = 2048;
    v25 = [(MADAutoAssetHistoryTracker *)self currentBucketFilesystemBytes];
    v26 = 2048;
    v27 = [(MADAutoAssetHistoryTracker *)self maximumBucketFilesystemBytes];
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "{AUTO-HISTORY-TRACKER[%{public}@]:loadPersistedState} | additional trigger to load from persisted-state when already loaded | currentBucketFileIndex:%ld | currentBucketFilesystemBytes:%ld | maximumBucketFilesystemBytes:%ld", buf, 0x2Au);
LABEL_21:
  }
}

- (void)recordHistoryEntry:(int64_t)a3 toHistoryType:(int64_t)a4 fromClient:(id)a5 fromLayer:(int64_t)a6 forAssetID:(id)a7 withSelector:(id)a8 withSelectors:(id)a9 usageCount:(int64_t)a10 configuredCount:(int64_t)a11 requestedCount:(int64_t)a12 fromPallasCount:(int64_t)a13 vendingCount:(int64_t)a14 forClientDomainName:(id)a15 forAssetSetIdentifier:(id)a16 forAtomicInstance:(id)a17 withAddendumMessage:(id)a18 forPushChannelID:(id)a19 forPopulationType:(id)a20 forTargetOSVersion:(id)a21 forTargetBuildVersion:(id)a22 withOptionalCount:(unint64_t)a23 withRequiredCount:(unint64_t)a24 isRequired:(id)a25 failingWithError:(id)a26
{
  v140 = a5;
  v28 = a7;
  v29 = a8;
  v30 = a9;
  v31 = a15;
  *(&v132 + 1) = a16;
  *&v132 = a17;
  v32 = a18;
  *(&v131 + 1) = a19;
  *&v131 = a20;
  v139 = a21;
  v138 = a22;
  v33 = a25;
  v130 = a26;
  context = objc_autoreleasePoolPush();
  v137 = +[MADAutoAssetHistoryTracker currentTime];
  v136 = [MADAutoAssetHistoryTracker operationName:a3];
  v123 = v33;
  if (v33)
  {
    v34 = [v33 BOOLValue];
    v35 = @"OPTIONAL|";
    if (v34)
    {
      v35 = @"REQUIRED|";
    }

    v129 = v35;
    if (![v33 BOOLValue])
    {
      a24 = a23;
    }

    v128 = [NSString stringWithFormat:@"Count:%llu|", a24];
  }

  else
  {
    v128 = &stru_4BD3F0;
    v129 = &stru_4BD3F0;
  }

  v124 = v32;
  if (v32)
  {
    v135 = [[NSString alloc] initWithFormat:@" | %@\n", v32];
  }

  else
  {
    v135 = @"\n";
  }

  v37 = objc_opt_new();
  if (v140)
  {
    v38 = [MADAutoAssetHistoryTracker paddedNameForClient:v140];
    v39 = @"client";
  }

  else
  {
    v38 = [MADAutoAssetHistoryTracker paddedNameForHistoryLayer:a6];
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
  if (v28)
  {
    if ([v28 hasSuffix:@".asset"] && (v43 = objc_msgSend(v28, "length"), v43 > objc_msgSend(@".asset", "length")))
    {
      v44 = [v28 substringWithRange:{0, objc_msgSend(v28, "length") - objc_msgSend(@".asset", "length")}];
    }

    else
    {
      v44 = v28;
    }

    v134 = v44;
  }

  else
  {
    v134 = 0;
  }

  v125 = v30;
  v126 = v29;
  if (v29)
  {
    v45 = [NSString alloc];
    v46 = [MADAutoAssetHistoryTracker selectorNameForSelector:v29];
    v47 = [v45 initWithFormat:@"selector=%@", v46];
LABEL_29:
    v142 = v47;

    goto LABEL_30;
  }

  if (v30)
  {
    v48 = [NSString alloc];
    v46 = [MADAutoAssetHistoryTracker summaryOfAssetSelectors:v30];
    v47 = [v48 initWithFormat:@"selectors=%@", v46];
    goto LABEL_29;
  }

  v142 = 0;
LABEL_30:
  v49 = v31;
  if (v31)
  {
    v127 = [NSString stringWithFormat:@"domain:%@", v31];
    if (!v139)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v127 = &stru_4BD3F0;
  if (v139)
  {
LABEL_32:
    [v37 appendFormat:@"targetOS:%@", v139];
  }

LABEL_33:
  if (v138)
  {
    v50 = [v37 length];
    v51 = @"|";
    if (!v50)
    {
      v51 = &stru_4BD3F0;
    }

    [v37 appendFormat:@"%@targetBuild:%@", v51, v138];
  }

  v52 = @"BLANK_ENTRY";
  if (a4 > 3)
  {
    if (a4 <= 5)
    {
      if (a4 == 4)
      {
        if (v142)
        {
          if (*(&v132 + 1))
          {
            v54 = [[NSString alloc] initWithFormat:@"time=%@ op=%@ %@ %@ set=%@ %@ %@%@%@ %@", v137, v136, v42, v127, *(&v132 + 1), v142, v129, v128, v37, v135];
          }

          else
          {
            v79 = [NSString alloc];
            if (v134)
            {
              v54 = [v79 initWithFormat:@"time=%@ op=%@ %@ %@ asset=%@ %@ %@%@%@ %@", v137, v136, v42, v127, v134, v142, v129, v128, v37, v135];
            }

            else
            {
              v54 = [v79 initWithFormat:@"time=%@ op=%@ %@ %@ %@ %@%@%@ %@", v137, v136, v42, v127, v142, v129, v128, v37, v135, v111];
            }
          }
        }

        else if (*(&v132 + 1))
        {
          v54 = [[NSString alloc] initWithFormat:@"time=%@ op=%@ %@ %@ set=%@ %@%@%@ %@", v137, v136, v42, v127, *(&v132 + 1), v129, v128, v37, v135, v111];
        }

        else
        {
          v82 = [NSString alloc];
          if (v134)
          {
            v54 = [v82 initWithFormat:@"time=%@ op=%@ %@ %@ asset=%@ %@%@%@ %@", v137, v136, v42, v127, v134, v129, v128, v37, v135, v111];
          }

          else
          {
            v54 = [v82 initWithFormat:@"time=%@ op=%@ %@ %@ %@%@%@ %@", v137, v136, v42, v127, v129, v128, v37, v135, v108, v111];
          }
        }

        goto LABEL_137;
      }

      v55 = [NSString alloc];
      if (v142)
      {
        v96 = v142;
        v99 = v135;
        v93 = v134;
LABEL_64:
        v54 = [v55 initWithFormat:@"time=%@ op=%@ %@ asset=%@ %@%@", v137, v136, v42, v93, v96, v99, v102, v105, v108, v111];
LABEL_137:
        v52 = v54;
        goto LABEL_138;
      }

      v97 = v135;
      v94 = v134;
LABEL_91:
      v54 = [v55 initWithFormat:@"time=%@ op=%@ %@ asset=%@%@", v137, v136, v42, v94, v97, v98, v102, v105, v108, v111];
      goto LABEL_137;
    }

    if (a4 != 6)
    {
      if (a4 == 7)
      {
        v64 = [NSString alloc];
        if (v131 == 0)
        {
          v65 = [v64 initWithFormat:@"time=%@ op=%@ selector=%@\n", v137, v136, v142, v92, v95];
        }

        else
        {
          v65 = [v64 initWithFormat:@"time=%@ op=%@ selector=%@ pushChannelID:%@ populationType:%@\n", v137, v136, v142, *(&v131 + 1), v131];
        }

        v52 = v65;
        v49 = v31;
      }

      goto LABEL_138;
    }

    v55 = [NSString alloc];
    v66 = v142;
    if (v142)
    {
      if (v134)
      {
        v54 = [v55 initWithFormat:@"time=%@ op=%@ %@ name=%@ %@%@", v137, v136, v42, v134, v142, v135, v102, v105, v108, v111];
        goto LABEL_137;
      }

      goto LABEL_75;
    }

    if (v134)
    {
      v54 = [v55 initWithFormat:@"time=%@ op=%@ %@ name=%@%@", v137, v136, v42, v134, v135, v98, v102, v105, v108, v111];
      goto LABEL_137;
    }

LABEL_95:
    v54 = [v55 initWithFormat:@"time=%@ op=%@ %@%@", v137, v136, v42, v135, v95, v98, v102, v105, v108, v111];
    goto LABEL_137;
  }

  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v67 = [NSString alloc];
      if ((a12 & a11 & a13 & a14) < 0 != v68)
      {
        v69 = [v67 initWithFormat:@"count=%004ld", a10, v90, v91, v92];
      }

      else
      {
        v69 = [v67 initWithFormat:@"configured=%004ld requested:%004ld fromPallas:%004ld vending:%004ld", a11, a12, a13, a14];
      }

      v70 = v69;
      v49 = v31;
      v71 = [NSString alloc];
      if (v142)
      {
        if (v31 | *(&v132 + 1) | v132)
        {
          if (v132 == 0)
          {
            v72 = [v71 initWithFormat:@"time=%@ op=%@ %@ %@ domain=%@ %@%@", v137, v136, v42, v70, v31, v142, v135, v105, v108];
          }

          else if (v132)
          {
            if (*(&v132 + 1))
            {
              v72 = [v71 initWithFormat:@"time=%@ op=%@ %@ %@ id=%@ set=%@ domain=%@ %@%@", v137, v136, v42, v70, v132, v31, v142, v135];
            }

            else
            {
              v72 = [v71 initWithFormat:@"time=%@ op=%@ %@ %@ id=%@ domain=%@ %@%@", v137, v136, v42, v70, v132, v31, v142, v135, v108];
            }
          }

          else
          {
            v72 = [v71 initWithFormat:@"time=%@ op=%@ %@ %@ id-%@ set=%@ domain=%@ %@%@", v137, v136, v42, v70, @"UNKNOWN                                 ", *(&v132 + 1), v31, v142, v135];
          }
        }

        else
        {
          v72 = [v71 initWithFormat:@"time=%@ op=%@ %@ %@ %@%@", v137, v136, v42, v70, v142, v135, v102, v105, v108];
        }
      }

      else if (v31 | *(&v132 + 1) | v132)
      {
        if (v132 == 0)
        {
          v72 = [v71 initWithFormat:@"time=%@ op=%@ %@ %@ domain=%@%@", v137, v136, v42, v70, v31, v135, v102, v105, v108];
        }

        else if (v132)
        {
          if (*(&v132 + 1))
          {
            v72 = [v71 initWithFormat:@"time=%@ op=%@ %@ %@ id=%@ set=%@ domain=%@%@", v137, v136, v42, v70, v132, v31, v135, v108];
          }

          else
          {
            v72 = [v71 initWithFormat:@"time=%@ op=%@ %@ %@ id=%@ domain=%@%@", v137, v136, v42, v70, v132, v31, v135, v105, v108];
          }
        }

        else
        {
          v72 = [v71 initWithFormat:@"time=%@ op=%@ %@ %@ id-%@ set=%@ domain=%@%@", v137, v136, v42, v70, @"UNKNOWN                                 ", *(&v132 + 1), v31, v135, v108];
        }
      }

      else
      {
        v72 = [v71 initWithFormat:@"time=%@ op=%@ %@ %@%@", v137, v136, v42, v70, v135, v98, v102, v105, v108];
      }

      v52 = v72;

      goto LABEL_138;
    }

    if (v130)
    {
      v56 = [NSError buildCheckedError:v130];
      if (v56)
      {
        v57 = v56;
        v58 = [v56 checkedDepthCount];
        v59 = [MADAutoAssetHistoryTracker paddedNameForErrorDomain:v57];
        v60 = [MADAutoAssetHistoryTracker paddedNameForErrorCode:v57];
        if (v58 >= 1 && ([v57 checkedForDepthIndex:v58], (v61 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v62 = v61;
          v113 = [MADAutoAssetHistoryTracker paddedNameForErrorDomain:v61];
          v114 = [MADAutoAssetHistoryTracker paddedNameForErrorCode:v62];
          v119 = [[NSString alloc] initWithFormat:@"error_domain=%@ error_code=%@ top_domain=%@ top_code=%@", v113, v114, v59, v60];
          v115 = v62;
          v116 = [NSString alloc];
          v63 = [v62 localizedDescription];
          v117 = [v116 initWithFormat:@" error_desc=%@", v63];
        }

        else
        {
          v119 = [[NSString alloc] initWithFormat:@"error_domain=%@ error_code=%@            %@          %@", v59, v60, @"                                    ", @"            "];
          v77 = [NSString alloc];
          v115 = [v57 localizedDescription];
          v117 = [v77 initWithFormat:@" error_desc=%@", v115];
        }

        v78 = v60;
        v75 = *(&v132 + 1);
        v76 = v134;

        v73 = v117;
        v74 = v119;
      }

      else
      {
        v80 = [NSString alloc];
        v57 = [v130 domain];
        v74 = [v80 initWithFormat:@"bad_error_domain=%@ bad_error_code=%ld", v57, objc_msgSend(v130, "code")];
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
        v81 = [[NSString alloc] initWithFormat:@"time=%@ op=%@ %@ %@ %@%@%@", v137, v136, v42, v74, v142, v73, v135, v105, v108, v111];
        goto LABEL_151;
      }

      if (v76)
      {
        if (!(v75 | v132))
        {
          v81 = [[NSString alloc] initWithFormat:@"time=%@ op=%@ %@ %@ asset=%@ %@ %@%@", v137, v136, v42, v74, v76, v142, v73, v135, v108, v111];
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
            v81 = [v83 initWithFormat:@"time=%@ op=%@ %@ %@ id=%@ domain=%@ %@%@%@", v137, v136, v42, v74, v132, v49, v142, v73, v135, v111];
            goto LABEL_151;
          }

          v109 = v73;
          v112 = v135;
          v103 = v49;
          v106 = v142;
          v100 = v75;
          v84 = v132;
        }

        else
        {
          v109 = v73;
          v112 = v135;
          v103 = v49;
          v106 = v142;
          v84 = @"UNKNOWN                                 ";
          v100 = v75;
        }

        v81 = [v83 initWithFormat:@"time=%@ op=%@ %@ %@ id=%@ set=%@ domain=%@ %@%@%@", v137, v136, v42, v74, v84, v100, v103, v106, v109, v112];
      }

      else
      {
        v81 = [v83 initWithFormat:@"time=%@ op=%@ %@ %@ id=%@ set=%@ %@%@%@", v137, v136, v42, v74, @"UNKNOWN                                 ", v75, v142, v73, v135, v111];
      }
    }

    else
    {
      if (!(v75 | v132 | v76))
      {
        v81 = [[NSString alloc] initWithFormat:@"time=%@ op=%@ %@ %@%@%@", v137, v136, v42, v74, v73, v135, v102, v105, v108, v111];
        goto LABEL_151;
      }

      if (v76)
      {
        if (!(v75 | v132))
        {
          v81 = [[NSString alloc] initWithFormat:@"time=%@ op=%@ %@ %@ asset=%@ %@%@", v137, v136, v42, v74, v76, v73, v135, v105, v108, v111];
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
            v81 = [v85 initWithFormat:@"time=%@ op=%@ %@ %@ id=%@ domain=%@%@%@", v137, v136, v42, v74, v132, v49, v73, v135, v108, v111];
            goto LABEL_151;
          }

          v107 = v73;
          v110 = v135;
          v101 = v75;
          v104 = v49;
          v86 = v132;
        }

        else
        {
          v107 = v73;
          v110 = v135;
          v101 = v75;
          v104 = v49;
          v86 = @"UNKNOWN                                 ";
        }

        v81 = [v85 initWithFormat:@"time=%@ op=%@ %@ %@ id=%@ set=%@ domain=%@%@%@", v137, v136, v42, v74, v86, v101, v104, v107, v110, v111];
      }

      else
      {
        v81 = [v85 initWithFormat:@"time=%@ op=%@ %@ %@ id=%@ set=%@%@%@", v137, v136, v42, v74, @"UNKNOWN                                 ", v75, v73, v135, v108, v111];
      }
    }

LABEL_151:
    v52 = v81;
    goto LABEL_152;
  }

  if (!a4)
  {
    v55 = [NSString alloc];
    v66 = v142;
    if (v142)
    {
      if (v134)
      {
        v96 = v142;
        v99 = v135;
        v93 = v134;
        goto LABEL_64;
      }

LABEL_75:
      v54 = [v55 initWithFormat:@"time=%@ op=%@ %@ %@%@", v137, v136, v42, v66, v135, v98, v102, v105, v108, v111];
      goto LABEL_137;
    }

    if (v134)
    {
      v94 = v134;
      v97 = v135;
      goto LABEL_91;
    }

    goto LABEL_95;
  }

  if (a4 == 1)
  {
    v53 = [NSString alloc];
    if (v142)
    {
      if (v134)
      {
        v54 = [v53 initWithFormat:@"time=%@ op=%@ %@ count=%004ld asset=%@ %@%@", v137, v136, v42, a10, v134, v142, v135, v105, v108, v111];
      }

      else
      {
        v54 = [v53 initWithFormat:@"time=%@ op=%@ %@ count=%004ld %@%@", v137, v136, v42, a10, v142, v135, v102, v105, v108, v111];
      }
    }

    else if (v134)
    {
      v54 = [v53 initWithFormat:@"time=%@ op=%@ %@ count=%004ld asset=%@%@", v137, v136, v42, a10, v134, v135, v102, v105, v108, v111];
    }

    else
    {
      v54 = [v53 initWithFormat:@"time=%@ op=%@ %@ count=%004ld%@", v137, v136, v42, a10, v135, v98, v102, v105, v108, v111];
    }

    goto LABEL_137;
  }

LABEL_138:
  v87 = [(MADAutoAssetHistoryTracker *)self protectionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __413__MADAutoAssetHistoryTracker_recordHistoryEntry_toHistoryType_fromClient_fromLayer_forAssetID_withSelector_withSelectors_usageCount_configuredCount_requestedCount_fromPallasCount_vendingCount_forClientDomainName_forAssetSetIdentifier_forAtomicInstance_withAddendumMessage_forPushChannelID_forPopulationType_forTargetOSVersion_forTargetBuildVersion_withOptionalCount_withRequiredCount_isRequired_failingWithError___block_invoke;
  block[3] = &unk_4B2B18;
  v144 = v52;
  v145 = self;
  v88 = v52;
  dispatch_async(v87, block);

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
  v3 = [(MADAutoAssetHistoryTracker *)self protectionQueue];
  dispatch_assert_queue_V2(v3);

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
        v12 = [(MADAutoAssetHistoryTracker *)self historyTypeName];
        v13 = [NSError buildCheckedError:v7];
        *buf = 138543618;
        v17 = v12;
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
  v3 = [(MADAutoAssetHistoryTracker *)self protectionQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(MADAutoAssetHistoryTracker *)self newBucketIndexFilename];
  v5 = +[NSFileManager defaultManager];
  if ([v5 fileExistsAtPath:v4])
  {
    v17 = 0;
    v6 = [NSString stringWithContentsOfFile:v4 encoding:4 error:&v17];
    v7 = v17;
    if (v7)
    {
      v8 = _MADLog(@"AutoHistory");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = [(MADAutoAssetHistoryTracker *)self historyTypeName];
        v10 = [NSError buildCheckedError:v7];
        *buf = 138543874;
        v19 = v9;
        v20 = 2114;
        v21 = v4;
        v22 = 2114;
        v23 = v10;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "{AUTO-HISTORY-TRACKER[%{public}@]:loadBucketIndex} | unable to read bucket index from bucket file:%{public}@ | error:%{public}@", buf, 0x20u);
      }
    }

    else
    {
      v11 = [v6 intValue];
      v12 = v11;
      if (v11 < 0xB)
      {
        [(MADAutoAssetHistoryTracker *)self setCurrentBucketFileIndex:v11];
        v14 = _MADLog(@"AutoHistory");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [(MADAutoAssetHistoryTracker *)self historyTypeName];
          v16 = [(MADAutoAssetHistoryTracker *)self currentBucketFileIndex];
          *buf = 138543874;
          v19 = v15;
          v20 = 2114;
          v21 = v4;
          v22 = 2048;
          v23 = v16;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "{AUTO-HISTORY-TRACKER[%{public}@]:loadBucketIndex} | valid bucket index file:%{public}@ | currentBucketFileIndex:%ld", buf, 0x20u);
        }

        goto LABEL_11;
      }

      v8 = _MADLog(@"AutoHistory");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v13 = [(MADAutoAssetHistoryTracker *)self historyTypeName];
        *buf = 138543874;
        v19 = v13;
        v20 = 2048;
        v21 = v12;
        v22 = 2114;
        v23 = v4;
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
    v6 = [(MADAutoAssetHistoryTracker *)self historyTypeName];
    *buf = 138543874;
    v19 = v6;
    v20 = 2114;
    v21 = v4;
    v22 = 2048;
    v23 = [(MADAutoAssetHistoryTracker *)self currentBucketFileIndex];
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "{AUTO-HISTORY-TRACKER[%{public}@]:loadBucketIndex} | created bucket index file:%{public}@ | currentBucketFileIndex:%ld", buf, 0x20u);
    goto LABEL_11;
  }

LABEL_12:
}

- (void)createBucketIndexFile
{
  v3 = [(MADAutoAssetHistoryTracker *)self protectionQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(MADAutoAssetHistoryTracker *)self newBucketIndexFilename];
  v5 = [[NSString alloc] initWithFormat:@"%d", -[MADAutoAssetHistoryTracker currentBucketFileIndex](self, "currentBucketFileIndex")];
  v11 = 0;
  [v5 writeToFile:v4 atomically:1 encoding:4 error:&v11];
  v6 = v11;
  v7 = _MADLog(@"AutoHistory");
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = [(MADAutoAssetHistoryTracker *)self historyTypeName];
      v10 = [NSError buildCheckedError:v6];
      *buf = 138543874;
      v13 = v9;
      v14 = 2114;
      v15 = v4;
      v16 = 2114;
      v17 = v10;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "{AUTO-HISTORY-TRACKER[%{public}@]:createBucketIndexFile} | unable to write bucket index to bucket file:%{public}@ | error:%{public}@", buf, 0x20u);

LABEL_6:
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(MADAutoAssetHistoryTracker *)self historyTypeName];
    *buf = 138543874;
    v13 = v9;
    v14 = 2114;
    v15 = v4;
    v16 = 2114;
    v17 = v5;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "{AUTO-HISTORY-TRACKER[%{public}@]:createBucketIndexFile} | set bucket file:%{public}@ | currentBucketFileIndex:%{public}@", buf, 0x20u);
    goto LABEL_6;
  }
}

- (void)createEmptyBucketFileForIndex:(int64_t)a3 settingCurrentBucketBytes:(BOOL)a4
{
  v4 = a4;
  v7 = [(MADAutoAssetHistoryTracker *)self protectionQueue];
  dispatch_assert_queue_V2(v7);

  v13 = +[NSFileManager defaultManager];
  v8 = [MADAutoAssetHistoryTracker newBucketFilename:[(MADAutoAssetHistoryTracker *)self historyType] forBucketIndex:a3];
  v9 = [NSString alloc];
  v10 = +[MADAutoAssetHistoryTracker currentTime];
  v11 = [MADAutoAssetHistoryTracker operationName:0];
  v12 = [v9 initWithFormat:@"time=%@ op=%@\n", v10, v11];

  [v13 createFileAtPath:v8 contents:0 attributes:0];
  [(MADAutoAssetHistoryTracker *)self recordFormattedHistoryEntry:v12 toBucketFilename:v8 settingCurrentBucketBytes:v4];
}

- (void)verifyAllOtherBucketFilesExist
{
  v3 = [(MADAutoAssetHistoryTracker *)self protectionQueue];
  dispatch_assert_queue_V2(v3);

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
              v15 = [(MADAutoAssetHistoryTracker *)self historyTypeName];
              v16 = [NSError buildCheckedError:v10];
              *buf = v19;
              v22 = v15;
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
            v11 = [v8 fileSize];
            if (v11 < 0 || v11 > [(MADAutoAssetHistoryTracker *)self maximumBucketFilesystemBytes])
            {
              v12 = _MADLog(@"AutoHistory");
              if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
              {
                v13 = [(MADAutoAssetHistoryTracker *)self historyTypeName];
                *buf = v19;
                v22 = v13;
                v23 = 2048;
                v24 = v11;
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
                v18 = [(MADAutoAssetHistoryTracker *)self historyTypeName];
                *buf = v19;
                v22 = v18;
                v23 = 2114;
                v24 = v7;
                v25 = 2048;
                v26 = v11;
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

- (int64_t)recordFormattedHistoryEntry:(id)a3 toBucketFilename:(id)a4 settingCurrentBucketBytes:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(MADAutoAssetHistoryTracker *)self protectionQueue];
  dispatch_assert_queue_V2(v10);

  v11 = [NSFileHandle fileHandleForWritingAtPath:v9];
  if (v11)
  {
    v12 = [v8 length];
    v42 = 0;
    v43 = 0;
    v13 = [v11 seekToEndReturningOffset:&v43 error:&v42];
    v14 = v42;
    if (v13)
    {
      v15 = [v8 dataUsingEncoding:4];
      v41 = 0;
      v16 = [v11 writeData:v15 error:&v41];
      v17 = v41;

      if (!v16)
      {
        v24 = [NSError buildCheckedError:v17];
        v34 = _MADLog(@"AutoHistory");
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = [(MADAutoAssetHistoryTracker *)self historyTypeName];
          v36 = @"NO_ERROR";
          *buf = 138543874;
          v45 = v35;
          if (v24)
          {
            v36 = v24;
          }

          v46 = 2114;
          v47 = v9;
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
          v20 = [(MADAutoAssetHistoryTracker *)self currentBucketFilesystemBytes];
          v21 = _MADLog(@"AutoHistory");
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v22 = [(MADAutoAssetHistoryTracker *)self historyTypeName];
            *buf = 138543618;
            v45 = v22;
            v46 = 2114;
            v47 = v9;
            _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "{AUTO-HISTORY-TRACKER[%{public}@]:recordFormattedHistoryEntry} | unable to get accurate filesystem size after writing entry to bucket file:%{public}@", buf, 0x16u);
          }

          v19 = v12 + v20;
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
            v26 = [(MADAutoAssetHistoryTracker *)self historyTypeName];
            v27 = @"NO_ERROR";
            *buf = 138543874;
            v45 = v26;
            if (v24)
            {
              v27 = v24;
            }

            v46 = 2114;
            v47 = v9;
            v48 = 2114;
            v49 = v27;
            _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "{AUTO-HISTORY-TRACKER[%{public}@]:recordFormattedHistoryEntry} | unable to seek to end of bucket file:%{public}@ (after writing) | error:%{public}@", buf, 0x20u);
          }
        }

        if (v5)
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
        v31 = [(MADAutoAssetHistoryTracker *)self historyTypeName];
        v38 = @"NO_ERROR";
        *buf = 138543874;
        v45 = v31;
        if (v24)
        {
          v38 = v24;
        }

        v46 = 2114;
        v47 = v9;
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
        v31 = [(MADAutoAssetHistoryTracker *)self historyTypeName];
        v32 = @"NO_ERROR";
        *buf = 138543874;
        v45 = v31;
        if (v24)
        {
          v32 = v24;
        }

        v46 = 2114;
        v47 = v9;
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
    v29 = [(MADAutoAssetHistoryTracker *)self historyTypeName];
    *buf = 138543618;
    v45 = v29;
    v46 = 2114;
    v47 = v9;
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

+ (id)operationName:(int64_t)a3
{
  result = @"UNKNOWN";
  if (a3 > 599)
  {
    if (a3 <= 1000)
    {
      if (a3 <= 799)
      {
        if (a3 > 699)
        {
          v4 = @"STARTING_DOWNLOAD_GROUPS   ";
          v38 = @"DETERMINE_DONE             ";
          v39 = @"DETERMINE_DROPPED          ";
          if (a3 != 705)
          {
            v39 = @"UNKNOWN";
          }

          if (a3 != 704)
          {
            v38 = v39;
          }

          if (a3 != 703)
          {
            v4 = v38;
          }

          v8 = @"DETERMINE_CONTENT_AVAILABLE";
          v40 = @"STARTING_DOWNLOAD_ALL      ";
          v41 = @"DETERMINE_GROUPS_AVAILABLE ";
          if (a3 != 702)
          {
            v41 = @"UNKNOWN";
          }

          if (a3 != 701)
          {
            v40 = v41;
          }

          if (a3 != 700)
          {
            v8 = v40;
          }

          v11 = a3 <= 702;
        }

        else
        {
          v4 = @"STA_STARTUP_COOKIE_SUCCESS ";
          v22 = @"STA_STARTUP_COOKIE_FAILURE ";
          v23 = @"STA_STARTUP_COOKIE_EXISTS  ";
          if (a3 != 624)
          {
            v23 = @"UNKNOWN";
          }

          if (a3 != 623)
          {
            v22 = v23;
          }

          if (a3 != 622)
          {
            v4 = v22;
          }

          v8 = @"PRG_ENTRY_DOWNLOADED       ";
          v24 = @"STA_STARTUP_ACTIVATED      ";
          v25 = @"STA_STARTUP_BEGINNING      ";
          if (a3 != 621)
          {
            v25 = @"UNKNOWN";
          }

          if (a3 != 620)
          {
            v24 = v25;
          }

          if (a3 != 600)
          {
            v8 = v24;
          }

          v11 = a3 <= 621;
        }
      }

      else if (a3 <= 805)
      {
        v4 = @"PURGED_STAGED_CONTENT      ";
        v34 = @"CANCEL_ACTIVE_JOB          ";
        v35 = @"ERASE_STAGING_CLIENT_REQ   ";
        if (a3 != 805)
        {
          v35 = @"UNKNOWN";
        }

        if (a3 != 804)
        {
          v34 = v35;
        }

        if (a3 != 803)
        {
          v4 = v34;
        }

        v8 = @"STORE_STAGE_REQUEST        ";
        v36 = @"INVALID_STAGE_REQUEST      ";
        v37 = @"PURGE_STAGING_CLIENT_REQ   ";
        if (a3 != 802)
        {
          v37 = @"UNKNOWN";
        }

        if (a3 != 801)
        {
          v36 = v37;
        }

        if (a3 != 800)
        {
          v8 = v36;
        }

        v11 = a3 <= 802;
      }

      else
      {
        v4 = @"STAGED_DONE_DOWNLOADED     ";
        v12 = @"SUCESS_DECIDE_MORE_CONTENT ";
        if (a3 != 1000)
        {
          v12 = @"UNKNOWN";
        }

        if (a3 != 904)
        {
          v4 = v12;
        }

        v13 = @"STAGED_NO_DOWNLOADED       ";
        v14 = @"STAGED_REQUIRED_DOWNLOADED ";
        if (a3 != 903)
        {
          v14 = @"UNKNOWN";
        }

        if (a3 != 902)
        {
          v13 = v14;
        }

        if (a3 <= 903)
        {
          v4 = v13;
        }

        v8 = @"ERASED_STAGED_CONTENT      ";
        v15 = @"STAGED_NO_CANDIDATES       ";
        v16 = @"STAGED_HAVE_CANDIDATES     ";
        if (a3 != 901)
        {
          v16 = @"UNKNOWN";
        }

        if (a3 != 900)
        {
          v15 = v16;
        }

        if (a3 != 806)
        {
          v8 = v15;
        }

        v11 = a3 <= 901;
      }
    }

    else if (a3 > 1302)
    {
      if (a3 <= 1501)
      {
        v4 = @"SCHEDULED_SET_JOBS         ";
        v30 = @"DEL_AI_DROP_ELIMINATE      ";
        v31 = @"DEL_AI_DROP_MATCHES_LATEST ";
        if (a3 != 1501)
        {
          v31 = @"UNKNOWN";
        }

        if (a3 != 1500)
        {
          v30 = v31;
        }

        if (a3 != 1401)
        {
          v4 = v30;
        }

        v8 = @"CLIENT_RECIEVE_NOTIFICATION";
        v32 = @"DAEMON_RECIEVE_NOTIFICATION";
        v33 = @"SCHEDULED_SINGLETON_JOBS   ";
        if (a3 != 1400)
        {
          v33 = @"UNKNOWN";
        }

        if (a3 != 1304)
        {
          v32 = v33;
        }

        if (a3 != 1303)
        {
          v8 = v32;
        }

        v11 = a3 <= 1400;
      }

      else
      {
        v4 = @"SET_JOB_ASSET_DOWNLOAD_END  ";
        v17 = @"QUIET_OPERATION            ";
        if (a3 != 9999)
        {
          v17 = @"UNKNOWN";
        }

        if (a3 != 1701)
        {
          v4 = v17;
        }

        v18 = @"RECLAIMED_ASSET";
        v19 = @"SET_JOB_ASSET_DOWNLOAD_START";
        if (a3 != 1700)
        {
          v19 = @"UNKNOWN";
        }

        if (a3 != 1600)
        {
          v18 = v19;
        }

        if (a3 <= 1700)
        {
          v4 = v18;
        }

        v8 = @"DEL_AI_DROP_CORRUPTED_ASSET";
        v20 = @"DEL_AI_DROP_FORCE_UNLCK_DEV";
        v21 = @"DEL_AI_ELIMINATED          ";
        if (a3 != 1504)
        {
          v21 = @"UNKNOWN";
        }

        if (a3 != 1503)
        {
          v20 = v21;
        }

        if (a3 != 1502)
        {
          v8 = v20;
        }

        v11 = a3 <= 1599;
      }
    }

    else if (a3 <= 1202)
    {
      v4 = @"PERSONALIZE                ";
      v26 = @"DEPERSONALIZE              ";
      v27 = @"BEGIN_ACCESS               ";
      if (a3 != 1202)
      {
        v27 = @"UNKNOWN";
      }

      if (a3 != 1201)
      {
        v26 = v27;
      }

      if (a3 != 1200)
      {
        v4 = v26;
      }

      v8 = @"FAILED_DECIDE_MORE_CONTENT ";
      v28 = @"DETERMINE_ASSET_TYPE_START ";
      v29 = @"DETERMINE_ASSET_TYPE_DONE  ";
      if (a3 != 1101)
      {
        v29 = @"UNKNOWN";
      }

      if (a3 != 1100)
      {
        v28 = v29;
      }

      if (a3 != 1001)
      {
        v8 = v28;
      }

      v11 = a3 <= 1199;
    }

    else
    {
      v4 = @"SUBSCRIBE_CHANNEL          ";
      v5 = @"UNSUBSCRIBE_CHANNEL        ";
      if (a3 != 1301)
      {
        v5 = @"UNKNOWN";
      }

      if (a3 != 1300)
      {
        v4 = v5;
      }

      v6 = @"PRE-PERSONALIZE            ";
      v7 = @"COMMIT_PRE_PERSONALIZED    ";
      if (a3 != 1207)
      {
        v7 = @"UNKNOWN";
      }

      if (a3 != 1206)
      {
        v6 = v7;
      }

      if (a3 <= 1299)
      {
        v4 = v6;
      }

      v8 = @"END_ACCESS                 ";
      v9 = @"BEGIN_MAP_TO_EXCLAVES      ";
      v10 = @"END_MAP_TO_EXCLAVES        ";
      if (a3 != 1205)
      {
        v10 = @"UNKNOWN";
      }

      if (a3 != 1204)
      {
        v9 = v10;
      }

      if (a3 != 1203)
      {
        v8 = v9;
      }

      v11 = a3 <= 1205;
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

  else if (a3 <= 101)
  {
    v42 = @"ADD_CLIENT_DOWNLOAD        ";
    v43 = @"ADD_CLIENT_LOCK            ";
    if (a3 != 101)
    {
      v43 = @"UNKNOWN";
    }

    if (a3 != 100)
    {
      v42 = v43;
    }

    if (a3)
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
    switch(a3)
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
        if (a3 == 102)
        {
          result = @"ADD_CLIENT_INHIBITED       ";
        }

        break;
    }
  }

  return result;
}

+ (id)paddedNameForHistoryLayer:(int64_t)a3
{
  if (a3 > 7)
  {
    v3 = @"UNKNOWN";
  }

  else
  {
    v3 = off_4B3AD8[a3];
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

+ (id)paddedNameForClient:(id)a3
{
  v3 = a3;
  v4 = [v3 length];
  if (v4 >= 25)
  {
    v5 = [v3 substringWithRange:{0, 24}];
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  if (v4 == &dword_18)
  {
    v5 = v3;
    goto LABEL_5;
  }

  v7 = [@"                        " substringWithRange:{0, 24 - v4}];
  v6 = [NSString stringWithFormat:@"%@%@", v3, v7];

LABEL_7:

  return v6;
}

+ (id)paddedNameForErrorDomain:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = [v4 length];

  if (v5 < 37)
  {
    [v3 domain];
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
    v6 = [v3 domain];
    v7 = [v6 substringWithRange:{0, 36}];
  }

  return v7;
}

+ (id)paddedNameForErrorCode:(id)a3
{
  v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%ld", [a3 code]);
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

+ (id)selectorNameForSelector:(id)a3
{
  v3 = a3;
  if (__isPlatformVersionAtLeast(2, 18, 4, 0) && (objc_opt_respondsToSelector() & 1) != 0 && ([v3 setAtomicInstanceUUID], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = [v3 setAtomicInstanceUUID];
    v6 = [NSString stringWithFormat:@"setAtomicInstance:%@", v5];
  }

  else
  {
    v7 = [v3 assetType];
    v8 = [v7 length];

    v5 = [v3 assetType];
    v9 = [@"com.apple.MobileAsset." length];
    v10 = [v3 assetType];
    v11 = [v10 hasPrefix:@"com.apple.MobileAsset."];

    if (v11)
    {
      v12 = v8 <= v9;
      v13 = v8 - v9;
      if (!v12)
      {
        v14 = [v3 assetType];
        v15 = [v14 substringWithRange:{v9, v13}];

        v5 = v15;
      }
    }

    v16 = [v3 assetSpecifier];
    v17 = [v3 assetVersion];
    if (v17)
    {
      v18 = [v3 assetVersion];
      v6 = [NSString stringWithFormat:@"%@|%@|%@", v5, v16, v18];
    }

    else
    {
      v6 = [NSString stringWithFormat:@"%@|%@|%@", v5, v16, @"ALL"];
    }
  }

  return v6;
}

+ (id)nameForHistoryType:(int64_t)a3
{
  if (a3 < 8)
  {
    return off_4B3B18[a3];
  }

  v5 = _MADLog(@"AutoHistory");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 134217984;
    v7 = a3;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "{AUTO-HISTORY-TRACKER:nameForHistoryType} | invalid history-type:%ld", &v6, 0xCu);
  }

  return @"HISTORY_TYPE_UNKNOWN";
}

- (id)newBucketIndexFilename
{
  v3 = [(MADAutoAssetHistoryTracker *)self protectionQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(MADAutoAssetHistoryTracker *)self historyTypeName];
  if (v4)
  {
    v5 = [NSString alloc];
    v6 = getRepositoryPath(@"/private/var/MobileAsset/AssetsV2/history");
    v7 = [v5 initWithFormat:@"%@/%@_%@_%@.txt", v6, @"MAAutoAsset", v4, @"History"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)historyTypeName
{
  v3 = [(MADAutoAssetHistoryTracker *)self protectionQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(MADAutoAssetHistoryTracker *)self historyType];

  return [MADAutoAssetHistoryTracker nameForHistoryType:v4];
}

+ (id)newBucketFilename:(int64_t)a3 forBucketIndex:(int64_t)a4
{
  v5 = [MADAutoAssetHistoryTracker nameForHistoryType:a3];
  if (v5)
  {
    v6 = [NSString alloc];
    v7 = getRepositoryPath(@"/private/var/MobileAsset/AssetsV2/history");
    v8 = [v6 initWithFormat:@"%@/%@_%@_%@_%02ld.log", v7, @"MAAutoAsset", v5, @"History", a4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)summaryOfAssetSelectors:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3 || ![v3 count])
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
  v8 = 0;
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
      if (v8)
      {
        v12 = [v11 assetType];
        v13 = [SUCore stringIsEqual:v12 to:v8];

        if ((v13 & 1) == 0)
        {

          goto LABEL_17;
        }
      }

      else
      {
        v8 = [v11 assetType];
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v34 objects:v39 count:16];
  }

  while (v7);

  if (!v8)
  {
    goto LABEL_18;
  }

  v28 = v8;
  v14 = objc_msgSend([NSMutableString alloc], "initWithFormat:", @"[asset-type:%@]("), v8;
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
          v23 = [v22 assetType];
          [(__CFString *)v14 appendFormat:@"[type:%@]", v23];
        }

        v24 = [v22 assetVersion];

        v25 = [v22 assetSpecifier];
        if (v24)
        {
          v26 = [v22 assetVersion];
          [(__CFString *)v14 appendFormat:@"%@(%@)", v25, v26];
        }

        else
        {
          [(__CFString *)v14 appendString:v25];
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
  v4 = [(MADAutoAssetHistoryTracker *)self protectionQueue];
  if (v4)
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