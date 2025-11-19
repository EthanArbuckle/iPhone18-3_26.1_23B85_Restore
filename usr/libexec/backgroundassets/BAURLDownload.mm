@interface BAURLDownload
+ (BOOL)_cellularNetworkProhibitsDownloadUsingError:(id)a3;
- (BAURLDownload)init;
- (BAURLDownload)initWithCoder:(id)a3;
- (BAURLDownload)initWithIdentifier:(NSString *)identifier request:(NSURLRequest *)request essential:(BOOL)essential fileSize:(NSUInteger)fileSize applicationGroupIdentifier:(NSString *)applicationGroupIdentifier priority:(BADownloaderPriority)priority;
- (BOOL)_startDownloadWithDelegate:(id)a3 error:(id *)a4;
- (BOOL)startDownloadWithDelegate:(id)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (int64_t)stopRequest;
- (void)_handleChallenge:(id)a3 authenticationHandler:(id)a4;
- (void)_handleDownloadCompletionWithFileLocation:(id)a3 response:(id)a4;
- (void)_handleDownloadFailureWithError:(id)a3 resumeData:(id)a4 response:(id)a5;
- (void)_handleProgressWithBytesReceived:(unint64_t)a3 totalBytesRecieved:(unint64_t)a4 totalDownloadSize:(int64_t)a5 resuming:(BOOL)a6;
- (void)_informDelegateOfFailedDownloadWithError:(id)a3 silentFailure:(BOOL)a4;
- (void)_informDelegateOfPausedDownloadWithWillImmediatelyResume:(BOOL)a3;
- (void)dealloc;
- (void)demoteToBackground;
- (void)encodeWithCoder:(id)a3;
- (void)pauseDownload;
- (void)promoteToForeground;
- (void)setStopRequest:(int64_t)a3;
@end

@implementation BAURLDownload

- (void)dealloc
{
  v3 = [(BADownload *)self downloadLock];
  os_unfair_lock_lock(v3);
  [(BADownload *)self _removeActivityAndPowerAssertion];
  os_unfair_lock_unlock(v3);
  v4.receiver = self;
  v4.super_class = BAURLDownload;
  [(BAURLDownload *)&v4 dealloc];
}

- (BOOL)startDownloadWithDelegate:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(BADownload *)self downloadLock];
  os_unfair_lock_lock(v7);
  LOBYTE(a4) = [(BAURLDownload *)self _startDownloadWithDelegate:v6 error:a4];
  os_unfair_lock_unlock(v7);

  return a4;
}

- (BOOL)_startDownloadWithDelegate:(id)a3 error:(id *)a4
{
  v5 = a3;
  os_unfair_lock_assert_owner([(BADownload *)self downloadLock]);
  v73 = v5;
  [(BADownload *)self setDelegate:v5];
  sub_10004C130(self, 2);
  [(BADownload *)self setDownloadError:0];
  [(BAURLDownload *)self setBailError:0];
  v6 = [(BADownload *)self isForegroundDownload];
  if ([(BAURLDownload *)self stopRequest]== 6)
  {
    v7 = sub_100010694();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v93 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Download timed out awaiting connectivity. Restarting Download: %{public}@", buf, 0xCu);
    }

    v72 = 0;
  }

  else
  {
    v72 = v6;
  }

  [(BAURLDownload *)self setStopRequest:0];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v9 = [(BAURLDownload *)self request];
  v76 = [v9 mutableCopy];

  objc_opt_class();
  v75 = isKindOfClass & 1;
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v76 URL], v10 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v11 = objc_opt_isKindOfClass(), v10, (v11 & 1) == 0))
  {
    v12 = [v76 URL];
    v13 = [v12 scheme];
    v14 = [v13 caseInsensitiveCompare:@"file"];

    v15 = [v76 URL];
    v16 = [v15 scheme];
    v17 = [v16 caseInsensitiveCompare:@"https"];

    if (!v75 || v14)
    {
      if (v17)
      {
        if (a4)
        {
          sub_100027BE4(-205);
          *a4 = v18 = 0;
          goto LABEL_61;
        }

LABEL_60:
        v18 = 0;
        goto LABEL_61;
      }
    }
  }

  v19 = [(BADownload *)self applicationInfo];

  if (v19)
  {
    v20 = sub_100010694();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v93 = self;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Download %{public}@ is restricted, validating.", buf, 0xCu);
    }

    v21 = [(BAURLDownload *)self request];
    v22 = [v21 URL];
    v71 = [v22 host];

    v23 = [(BADownload *)self applicationInfo];
    v24 = [v23 allowedDownloadDomains];
    LOBYTE(v22) = [v24 containsObject:v71];

    if ((v22 & 1) == 0)
    {
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v25 = [(BADownload *)self applicationInfo];
      v26 = [v25 allowedDownloadDomainWildcards];

      v27 = [v26 countByEnumeratingWithState:&v87 objects:v91 count:16];
      if (v27)
      {
        v28 = *v88;
        while (2)
        {
          for (i = 0; i != v27; i = i + 1)
          {
            if (*v88 != v28)
            {
              objc_enumerationMutation(v26);
            }

            v30 = [*(*(&v87 + 1) + 8 * i) substringFromIndex:1];
            v31 = [(BAURLDownload *)self request];
            v32 = [v31 URL];
            v33 = [v32 host];
            v34 = [v33 hasSuffix:v30];

            if (v34)
            {

              goto LABEL_31;
            }
          }

          v27 = [v26 countByEnumeratingWithState:&v87 objects:v91 count:16];
          if (v27)
          {
            continue;
          }

          break;
        }
      }

      if ((v75 & 1) == 0)
      {
        v35 = sub_100010694();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          sub_100047868();
        }

        if (!a4)
        {
          goto LABEL_59;
        }

        v36 = 202;
LABEL_58:
        *a4 = sub_100027BE4(v36);
LABEL_59:

        goto LABEL_60;
      }
    }

LABEL_31:
    v37 = [(BADownload *)self applicationInfo];
    v38 = [v37 remainingDownloadAllowanceWithNecessity:-[BADownload necessity](self isManifest:{"necessity"), v75}] == 0;

    if (v38)
    {
      v69 = sub_100010694();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        sub_1000478D0();
      }

      if (!a4)
      {
        goto LABEL_59;
      }

      v36 = 203;
      goto LABEL_58;
    }
  }

  if ([(BADownload *)self isForegroundDownload])
  {
    v39 = +[NSURLSessionConfiguration defaultSessionConfiguration];
    [v39 setAllowsExpensiveNetworkAccess:1];
    [v39 setTimeoutIntervalForRequest:60.0];
    [v39 setWaitsForConnectivity:v72];
    v40 = [(BADownload *)self applicationInfo];
    if (v40)
    {
      v41 = [(BADownload *)self permitInitialCellularDownload];

      if (v41)
      {
        [v39 setAllowsCellularAccess:1];
      }
    }

    v42 = 7;
  }

  else
  {
    v43 = [(BADownload *)self uniqueIdentifier];
    v39 = [NSURLSessionConfiguration backgroundSessionConfigurationWithIdentifier:v43];

    [v39 setAllowsCellularAccess:0];
    [v39 setAllowsExpensiveNetworkAccess:0];
    [v39 set_allowsRetryForBackgroundDataTasks:0];
    [v76 setAllowsCellularAccess:{objc_msgSend(v39, "allowsCellularAccess")}];
    [v76 setAllowsExpensiveNetworkAccess:{objc_msgSend(v39, "allowsExpensiveNetworkAccess")}];
    [v76 setNetworkServiceType:3];
    v42 = 3;
  }

  sub_10004C130(self, v42);
  v44 = [(BADownload *)self applicationIdentifier];
  [v39 set_sourceApplicationBundleIdentifier:v44];

  v45 = [v76 copy];
  [(BAURLDownload *)self setRequest:v45];

  objc_initWeak(buf, self);
  v46 = [(BADownload *)self resumeData];

  v47 = [BAURLSession alloc];
  if (v46)
  {
    v48 = [(BADownload *)self resumeData];
    v49 = [(BADownload *)self downloadCachePath];
    v50 = [NSURL fileURLWithPath:v49 isDirectory:1];
    v51 = [(BADownload *)self isForegroundDownload];
    v85[0] = _NSConcreteStackBlock;
    v85[1] = 3221225472;
    v85[2] = sub_100003334;
    v85[3] = &unk_100079238;
    v52 = &v86;
    objc_copyWeak(&v86, buf);
    v53 = [(BAURLSession *)v47 initWithResumeData:v48 withDestinationDirectory:v50 inBackground:v51 ^ 1 withAuthenticationHandler:v85 withRedirectResponseHandler:0];
    [(BADownload *)self setSession:v53];
  }

  else
  {
    v48 = [(BAURLDownload *)self request];
    v49 = [(BADownload *)self downloadCachePath];
    v50 = [NSURL fileURLWithPath:v49 isDirectory:1];
    v54 = [(BADownload *)self isForegroundDownload];
    v83[0] = _NSConcreteStackBlock;
    v83[1] = 3221225472;
    v83[2] = sub_1000033AC;
    v83[3] = &unk_100079238;
    v52 = &v84;
    objc_copyWeak(&v84, buf);
    v53 = [(BAURLSession *)v47 initWithURLRequest:v48 withDestinationDirectory:v50 inBackground:v54 ^ 1 withAuthenticationHandler:v83];
    [(BADownload *)self setSession:v53];
  }

  objc_destroyWeak(v52);
  v55 = [(BADownload *)self session];
  v18 = v55 != 0;

  if (v18)
  {
    v56 = +[NSDate now];
    [(BADownload *)self setDownloadStartDate:v56];

    v57 = [(BADownload *)self uniqueIdentifier];
    [(BADownload *)self _addActivityWithIdentifier:v57 takePowerAssertion:[(BADownload *)self isForegroundDownload]];

    v58 = [(BADownload *)self delegate];
    if (v58)
    {
      v59 = [(BADownload *)self delegate];
      v60 = objc_opt_respondsToSelector();

      if (v60)
      {
        v61 = [(BADownload *)self responseQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100003424;
        block[3] = &unk_100079260;
        block[4] = self;
        dispatch_async(v61, block);
      }
    }

    v62 = [(BADownload *)self session];
    [v62 setUseUniqueFileName:1];

    if (v72)
    {
      v63 = [(BADownload *)self necessity];
      v64 = [(BADownload *)self session];
      v65 = v64;
      v66 = 60.0;
      if (v63 == 1)
      {
        v66 = 10.0;
      }

      [v64 setInitialConnectivityTimeout:v66];
    }

    v67 = [(BADownload *)self session];
    v68 = [(BADownload *)self responseQueue];
    v81[0] = _NSConcreteStackBlock;
    v81[1] = 3221225472;
    v81[2] = sub_100003478;
    v81[3] = &unk_100079288;
    v81[4] = self;
    v79[0] = _NSConcreteStackBlock;
    v79[1] = 3221225472;
    v79[2] = sub_100003B08;
    v79[3] = &unk_1000792B0;
    objc_copyWeak(&v80, buf);
    v77[0] = _NSConcreteStackBlock;
    v77[1] = 3221225472;
    v77[2] = sub_100003B78;
    v77[3] = &unk_1000792D8;
    v77[4] = self;
    v78 = v75;
    [v67 startAsyncDownloadNotifyingOnQueue:v68 sessionConfiguration:v39 extractorFactory:v81 bytesReceivedHandler:v79 completionHandler:v77];

    objc_destroyWeak(&v80);
  }

  else if (a4)
  {
    *a4 = sub_100027BE4(-200);
  }

  objc_destroyWeak(buf);

LABEL_61:
  return v18;
}

- (void)_handleDownloadFailureWithError:(id)a3 resumeData:(id)a4 response:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(BADownload *)self downloadLock];
  os_unfair_lock_lock(v11);
  v12 = [(BADownload *)self session];
  [v12 invalidate];

  [(BADownload *)self setSession:0];
  v13 = [(BAURLDownload *)self bailError];

  if (v13)
  {
    v14 = [(BAURLDownload *)self bailError];
    v15 = [v14 userInfo];
    v16 = [v15 mutableCopy];

    [v16 setObject:v8 forKey:NSUnderlyingErrorKey];
    v17 = [(BAURLDownload *)self bailError];
    v18 = [v17 domain];
    v19 = [(BAURLDownload *)self bailError];
    v20 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", v18, [v19 code], v16);

    v8 = v20;
  }

  v21 = [(BAURLDownload *)self stopRequest];
  v22 = 0;
  if (v21 <= 3)
  {
    switch(v21)
    {
      case 1:
        goto LABEL_20;
      case 2:
        v22 = 1;
        goto LABEL_20;
      case 3:
LABEL_12:
        [(BADownload *)self setResumeData:v9];
        [(BAURLDownload *)self _informDelegateOfPausedDownloadWithWillImmediatelyResume:0];
LABEL_21:
        [(BADownload *)self _removeActivityAndPowerAssertion];
        goto LABEL_22;
    }

LABEL_11:
    if ([objc_opt_class() _cellularNetworkProhibitsDownloadUsingError:v8])
    {
      goto LABEL_12;
    }

    v22 = 0;
LABEL_20:
    [(BAURLDownload *)self _informDelegateOfFailedDownloadWithError:v8 silentFailure:v22];
    goto LABEL_21;
  }

  if (v21 == 4)
  {
    v22 = 1;
    goto LABEL_14;
  }

  if (v21 == 5)
  {
LABEL_14:
    [(BADownload *)self setIsForegroundDownload:v22];
    goto LABEL_15;
  }

  if (v21 != 6)
  {
    goto LABEL_11;
  }

LABEL_15:
  [(BADownload *)self setResumeData:v9];
  [(BAURLDownload *)self _informDelegateOfPausedDownloadWithWillImmediatelyResume:1];
  v23 = objc_autoreleasePoolPush();
  v24 = [(BADownload *)self delegate];
  v27 = 0;
  v25 = [(BAURLDownload *)self _startDownloadWithDelegate:v24 error:&v27];
  v26 = v27;

  objc_autoreleasePoolPop(v23);
  if ((v25 & 1) == 0)
  {
    [(BAURLDownload *)self _informDelegateOfFailedDownloadWithError:v26 silentFailure:0];
  }

LABEL_22:
  os_unfair_lock_unlock(v11);
}

- (void)_handleDownloadCompletionWithFileLocation:(id)a3 response:(id)a4
{
  v5 = a3;
  os_unfair_lock_lock([(BADownload *)self downloadLock]);
  sub_10004C18C(self, v5);

  sub_10004C130(self, 8);
  [(BADownload *)self setDownloadError:0];
  [(BADownload *)self setResumeData:0];
  v7 = sub_10004C614(self, v6);
  v8 = [NSNumber numberWithUnsignedInteger:[(BAURLDownload *)self amountDownloaded]];
  [(BADownload *)self setDownloadedFileSize:v8];

  v9 = [(BADownload *)self session];
  [v9 invalidate];

  [(BADownload *)self setSession:0];
  v10 = [(BADownload *)self responseQueue];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_1000042E0;
  v15 = &unk_100079300;
  v16 = self;
  v17 = v7;
  v11 = v7;
  dispatch_async(v10, &v12);

  os_unfair_lock_unlock([(BADownload *)self downloadLock:v12]);
}

- (void)_handleProgressWithBytesReceived:(unint64_t)a3 totalBytesRecieved:(unint64_t)a4 totalDownloadSize:(int64_t)a5 resuming:(BOOL)a6
{
  os_unfair_lock_lock([(BADownload *)self downloadLock]);
  if (sub_10004C244(self) == 3)
  {
    sub_10004C130(self, 7);
  }

  [(BAURLDownload *)self setAmountDownloaded:a4];
  os_unfair_lock_unlock([(BADownload *)self downloadLock]);
  v11 = [(BADownload *)self delegate];
  v12 = v11;
  if (a6)
  {
    if (v11)
    {
      v13 = [(BADownload *)self delegate];
      v14 = objc_opt_respondsToSelector();

      if (v14)
      {
        v15 = [(BADownload *)self delegate];
        [v15 download:self didResumeAtOffset:a4 expectedTotalBytes:a5];
LABEL_10:
      }
    }
  }

  else if (v11)
  {
    v16 = [(BADownload *)self delegate];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      v15 = [(BADownload *)self delegate];
      [v15 download:self didWriteBytes:a3 totalBytesWritten:a4 totalBytesExpectedToWrite:a5];
      goto LABEL_10;
    }
  }

  os_unfair_lock_lock([(BADownload *)self downloadLock]);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (!a6)
  {
    v19 = [(BADownload *)self applicationInfo];

    if (v19)
    {
      objc_opt_class();
      v20 = objc_opt_isKindOfClass();
      v21 = [(BADownload *)self applicationInfo];
      v22 = [v21 remainingDownloadAllowanceWithNecessity:-[BADownload necessity](self isManifest:{"necessity"), v20 & 1}];

      v23 = [(BADownload *)self applicationInfo];
      v24 = [v23 consumeAllowanceShouldStopWithAdditionalBytes:a3 downloadNecessity:-[BADownload necessity](self isManifest:{"necessity"), isKindOfClass & 1}];

      if ((v24 & 1) != 0 || !v22)
      {
        v25 = sub_100027BE4(204);
        goto LABEL_24;
      }
    }
  }

  if ((sub_10004C1FC(self) || (isKindOfClass & 1) == 0 && [(BADownload *)self necessity]== 1) && sub_10004C1FC(self) < a4)
  {
    v25 = sub_100027CE0(@"BAURLDownloadErrorDomain", 101);
LABEL_24:
    v27 = v25;
    [(BAURLDownload *)self setBailError:v25];

    os_unfair_lock_unlock([(BADownload *)self downloadLock]);

    [(BAURLDownload *)self cancelDownload];
    return;
  }

  v26 = [(BADownload *)self downloadLock];

  os_unfair_lock_unlock(v26);
}

- (void)_handleChallenge:(id)a3 authenticationHandler:(id)a4
{
  v17 = a3;
  v6 = a4;
  v7 = [(BADownload *)self delegate];
  if (v7)
  {
    v8 = v7;
    v9 = [(BADownload *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(BADownload *)self delegate];
      [v11 download:self didReceiveChallenge:v17 completionHandler:v6];
LABEL_7:

      goto LABEL_12;
    }
  }

  v12 = [v17 protectionSpace];
  v13 = [v12 authenticationMethod];
  if ([v13 isEqualToString:NSURLAuthenticationMethodServerTrust])
  {
    v14 = [v17 previousFailureCount];

    if (!v14)
    {
      v11 = [v17 protectionSpace];
      v15 = +[NSURLCredential credentialForTrust:](NSURLCredential, "credentialForTrust:", [v11 serverTrust]);
      v6[2](v6, 0, v15);

      goto LABEL_7;
    }
  }

  else
  {
  }

  if ([v17 previousFailureCount])
  {
    v6[2](v6, 1, 0);
  }

  else
  {
    v16 = [v17 proposedCredential];
    v6[2](v6, 0, v16);
  }

LABEL_12:
}

- (void)_informDelegateOfPausedDownloadWithWillImmediatelyResume:(BOOL)a3
{
  os_unfair_lock_assert_owner([(BADownload *)self downloadLock]);
  sub_10004C130(self, 5);
  v5 = [(BADownload *)self delegate];
  if (v5)
  {
    v6 = v5;
    v7 = [(BADownload *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(BADownload *)self responseQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000048F8;
      block[3] = &unk_100079260;
      block[4] = self;
      dispatch_async(v9, block);
    }
  }

  if (!a3)
  {
    [(BADownload *)self _removeActivityAndPowerAssertion];
  }
}

- (void)_informDelegateOfFailedDownloadWithError:(id)a3 silentFailure:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  os_unfair_lock_assert_owner([(BADownload *)self downloadLock]);
  if (v4)
  {
    v7 = -2;
  }

  else
  {
    v7 = -1;
  }

  sub_10004C130(self, v7);
  [(BADownload *)self setDownloadError:v6];

  v8 = [(BADownload *)self delegate];
  if (v8)
  {
    v9 = v8;
    v10 = [(BADownload *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [(BADownload *)self responseQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100004A64;
      block[3] = &unk_100079260;
      block[4] = self;
      dispatch_async(v12, block);
    }
  }
}

- (void)pauseDownload
{
  v3 = [(BADownload *)self downloadLock];
  os_unfair_lock_lock(v3);
  v4 = [(BADownload *)self session];

  if (v4)
  {
    [(BAURLDownload *)self setStopRequest:3];
    sub_10004C130(self, 4);
    v5 = [(BADownload *)self session];
    [v5 cancel];
  }

  os_unfair_lock_unlock(v3);
}

- (void)promoteToForeground
{
  v3 = [(BADownload *)self downloadLock];
  os_unfair_lock_lock(v3);
  if (![(BADownload *)self isForegroundDownload])
  {
    v4 = [(BADownload *)self session];

    if (v4)
    {
      [(BAURLDownload *)self setStopRequest:4];
      sub_10004C130(self, 4);
      v5 = [(BADownload *)self session];
      [v5 cancel];
    }
  }

  os_unfair_lock_unlock(v3);
}

- (void)demoteToBackground
{
  v3 = [(BADownload *)self downloadLock];
  os_unfair_lock_lock(v3);
  if ([(BADownload *)self isForegroundDownload])
  {
    v4 = [(BADownload *)self session];

    if (v4)
    {
      [(BAURLDownload *)self setStopRequest:5];
      sub_10004C130(self, 4);
      v5 = [(BADownload *)self session];
      [v5 cancel];
    }
  }

  os_unfair_lock_unlock(v3);
}

+ (BOOL)_cellularNetworkProhibitsDownloadUsingError:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:NSURLErrorNetworkUnavailableReasonKey];

  if (v5)
  {
    v6 = [v5 intValue];
    if (v6 == 1)
    {
      v7 = sub_100010694();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138543362;
        v12 = a1;
        v8 = "Pausing download %{public}@ because our network is expensive.";
        goto LABEL_9;
      }

LABEL_10:

      v9 = 1;
      goto LABEL_11;
    }

    if (!v6)
    {
      v7 = sub_100010694();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138543362;
        v12 = a1;
        v8 = "Pausing download %{public}@ because we are on cellular.";
LABEL_9:
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, &v11, 0xCu);
        goto LABEL_10;
      }

      goto LABEL_10;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (int64_t)stopRequest
{
  v2 = objc_getAssociatedObject(self, "stopRequest");
  v3 = [v2 integerValue];

  return v3;
}

- (void)setStopRequest:(int64_t)a3
{
  v4 = [NSNumber numberWithInteger:a3];
  objc_setAssociatedObject(self, "stopRequest", v4, 1);
}

- (BAURLDownload)init
{
  result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT);
  if (result)
  {
    v3 = 136315138;
    v4 = "BAURLDownload cannot be constructed using -init.";
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "BUG IN CLIENT OF BackgroundAssets: %s", &v3, 0xCu);
  }

  qword_100089A98 = "BUG IN CLIENT OF BackgroundAssets: BAURLDownload cannot be constructed using -init.";
  __break(0xB001u);
  return result;
}

- (BAURLDownload)initWithIdentifier:(NSString *)identifier request:(NSURLRequest *)request essential:(BOOL)essential fileSize:(NSUInteger)fileSize applicationGroupIdentifier:(NSString *)applicationGroupIdentifier priority:(BADownloaderPriority)priority
{
  v11 = essential;
  v14 = identifier;
  v15 = request;
  v16 = applicationGroupIdentifier;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v22 = NSInvalidArgumentException;
    v23 = @"request must be a URLRequest.";
    goto LABEL_7;
  }

  v17 = [(NSURLRequest *)v15 URL];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v22 = NSInvalidArgumentException;
    v23 = @"request must have a valid URL.";
    goto LABEL_7;
  }

  v19 = [(NSURLRequest *)v15 URL];
  v20 = [v19 scheme];
  v21 = [v20 caseInsensitiveCompare:@"https"];

  if (v21)
  {
    v22 = NSInvalidArgumentException;
    v23 = @"request can only download over HTTPS.";
LABEL_7:
    v24 = [NSException exceptionWithName:v22 reason:v23 userInfo:0];
    [v24 raise];

    v25 = 0;
    goto LABEL_8;
  }

  if (([objc_opt_class() supportsSecureCoding] & 1) == 0)
  {
    v22 = NSInvalidArgumentException;
    v23 = @"request must be secure coding compliant.";
    goto LABEL_7;
  }

  if (!v14)
  {
    v27 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"identifier can not be nil" userInfo:0];
    [v27 raise];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v28 = [NSException exceptionWithName:NSInvalidArgumentException reason:@"identifier must be a string." userInfo:0];
    [v28 raise];
  }

  v31.receiver = self;
  v31.super_class = BAURLDownload;
  v29 = [(BADownload *)&v31 initPrivatelyWithApplicationGroupIdentifier:v16];
  v30 = v29;
  if (v29)
  {
    [v29 setRequest:v15];
    [v30 setIdentifier:v14];
    [v30 setNecessity:v11];
    [v30 setPriority:priority];
    sub_10003173C(v30, fileSize);
  }

  self = v30;
  v25 = self;
LABEL_8:

  return v25;
}

- (BAURLDownload)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = BAURLDownload;
  v5 = [(BADownload *)&v10 initWithCoder:v4];
  if (v5 && ([v4 decodeObjectOfClass:objc_opt_class() forKey:@"request"], v6 = objc_claimAutoreleasedReturnValue(), request = v5->_request, v5->_request = v6, request, !v5->_request))
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = BAURLDownload;
  v4 = [(BADownload *)&v6 copyWithZone:a3];
  [v4 setRequest:self->_request];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  request = self->_request;
  v5 = a3;
  [v5 encodeObject:request forKey:@"request"];
  v6.receiver = self;
  v6.super_class = BAURLDownload;
  [(BADownload *)&v6 encodeWithCoder:v5];
}

- (id)debugDescription
{
  v7.receiver = self;
  v7.super_class = BAURLDownload;
  v3 = [(BADownload *)&v7 debugDescription];
  v4 = [v3 mutableCopy];

  v5 = [(NSURLRequest *)self->_request URL];
  [v4 appendFormat:@"URL: %@\n", v5];

  return v4;
}

@end