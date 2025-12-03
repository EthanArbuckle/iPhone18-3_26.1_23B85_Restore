@interface NSProgress
+ (id)tsu_progressWithChildren:(id)children;
+ (id)tsu_progressWithTSUProgress:(id)progress totalUnitCount:(int64_t)count;
- (int64_t)tsu_pendingUnitCountForIncompleteProgress:(int64_t)progress;
- (void)tsu_stopObservingTSUProgress;
@end

@implementation NSProgress

+ (id)tsu_progressWithTSUProgress:(id)progress totalUnitCount:(int64_t)count
{
  progressCopy = progress;
  v6 = [[NSProgress alloc] initWithParent:0 userInfo:0];
  [v6 setTotalUnitCount:count];
  [progressCopy maxValue];
  v8 = v7;
  if (([progressCopy isIndeterminate] & 1) == 0 && v8 > 0.0)
  {
    [progressCopy value];
    [v6 setCompletedUnitCount:{(v9 / v8 * objc_msgSend(v6, "totalUnitCount"))}];
  }

  countCopy = 10;
  if (count > 10)
  {
    countCopy = count;
  }

  if (v8 > 0.0)
  {
    v11 = v8 / countCopy;
  }

  else
  {
    v11 = countCopy;
  }

  objc_initWeak(&location, progressCopy);
  objc_initWeak(&from, v6);
  v12 = &_dispatch_main_q;
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_10007BF50;
  v23 = &unk_1001CC370;
  objc_copyWeak(&v24, &location);
  objc_copyWeak(v25, &from);
  v25[1] = count;
  v13 = [progressCopy addProgressObserverWithValueInterval:&_dispatch_main_q queue:&v20 handler:v11];

  if (!v13)
  {
    v14 = +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015A164();
    }

    v15 = TSUAssertCat_log_t;
    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015A18C(v14, v15);
    }

    v16 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[NSProgress(NSProgress_TSUAdditions) tsu_progressWithTSUProgress:totalUnitCount:]");
    v17 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/NSProgress_TSUAdditions.m"];
    [TSUAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:70 isFatal:0 description:"invalid nil value for '%{public}s'", "progressObserver", v20, v21, v22, v23];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v18 = objc_alloc_init(TSUProgressUserInfoObject);
  [(TSUProgressUserInfoObject *)v18 setProgress:progressCopy];
  [(TSUProgressUserInfoObject *)v18 setProgressObserver:v13];
  [v6 setUserInfoObject:v18 forKey:@"TSUProgressUserInfoKey"];

  objc_destroyWeak(v25);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v6;
}

+ (id)tsu_progressWithChildren:(id)children
{
  childrenCopy = children;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [childrenCopy countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v24;
    v8 = 1;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(childrenCopy);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v6 += [v10 totalUnitCount];
        kind = [v10 kind];
        LODWORD(v10) = kind == NSProgressKindFile;

        v8 &= v10;
      }

      v5 = [childrenCopy countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
    v8 = 1;
  }

  v12 = [NSProgress discreteProgressWithTotalUnitCount:v6];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = childrenCopy;
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [v12 addChild:*(*(&v19 + 1) + 8 * j) withPendingUnitCount:{objc_msgSend(*(*(&v19 + 1) + 8 * j), "totalUnitCount", v19)}];
      }

      v15 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v15);
  }

  if (v8)
  {
    [v12 setKind:NSProgressKindFile];
  }

  return v12;
}

- (void)tsu_stopObservingTSUProgress
{
  v3 = objc_opt_class();
  userInfo = [(NSProgress *)self userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"TSUProgressUserInfoKey"];
  v8 = TSUDynamicCast(v3, v5);

  progress = [v8 progress];
  progressObserver = [v8 progressObserver];
  [progress removeProgressObserver:progressObserver];
}

- (int64_t)tsu_pendingUnitCountForIncompleteProgress:(int64_t)progress
{
  totalUnitCount = [(NSProgress *)self totalUnitCount];
  completedUnitCount = [(NSProgress *)self completedUnitCount];
  v7 = totalUnitCount - completedUnitCount;
  if (totalUnitCount - completedUnitCount < 0)
  {
    v7 = completedUnitCount - totalUnitCount;
  }

  progressCopy = v7 >> 1;
  if (v7 > progress)
  {
    progressCopy = progress;
  }

  if (v7 < 2 && v7 < progress)
  {
    return 0;
  }

  else
  {
    return progressCopy;
  }
}

@end