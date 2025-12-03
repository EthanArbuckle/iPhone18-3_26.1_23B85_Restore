@interface BAURLDownload
+ (BOOL)_cellularNetworkProhibitsDownloadUsingError:(id)error;
- (BAURLDownload)init;
- (BAURLDownload)initWithCoder:(id)coder;
- (BAURLDownload)initWithIdentifier:(NSString *)identifier request:(NSURLRequest *)request essential:(BOOL)essential fileSize:(NSUInteger)fileSize applicationGroupIdentifier:(NSString *)applicationGroupIdentifier priority:(BADownloaderPriority)priority;
- (BOOL)_startDownloadWithDelegate:(id)delegate error:(id *)error;
- (BOOL)startDownloadWithDelegate:(id)delegate error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (int64_t)stopRequest;
- (void)_handleChallenge:(id)challenge authenticationHandler:(id)handler;
- (void)_handleDownloadCompletionWithFileLocation:(id)location response:(id)response;
- (void)_handleDownloadFailureWithError:(id)error resumeData:(id)data response:(id)response;
- (void)_handleProgressWithBytesReceived:(unint64_t)received totalBytesRecieved:(unint64_t)recieved totalDownloadSize:(int64_t)size resuming:(BOOL)resuming;
- (void)_informDelegateOfFailedDownloadWithError:(id)error silentFailure:(BOOL)failure;
- (void)_informDelegateOfPausedDownloadWithWillImmediatelyResume:(BOOL)resume;
- (void)dealloc;
- (void)demoteToBackground;
- (void)encodeWithCoder:(id)coder;
- (void)pauseDownload;
- (void)promoteToForeground;
- (void)setStopRequest:(int64_t)request;
@end

@implementation BAURLDownload

- (void)dealloc
{
  downloadLock = [(BADownload *)self downloadLock];
  os_unfair_lock_lock(downloadLock);
  [(BADownload *)self _removeActivityAndPowerAssertion];
  os_unfair_lock_unlock(downloadLock);
  v4.receiver = self;
  v4.super_class = BAURLDownload;
  [(BAURLDownload *)&v4 dealloc];
}

- (BOOL)startDownloadWithDelegate:(id)delegate error:(id *)error
{
  delegateCopy = delegate;
  downloadLock = [(BADownload *)self downloadLock];
  os_unfair_lock_lock(downloadLock);
  LOBYTE(error) = [(BAURLDownload *)self _startDownloadWithDelegate:delegateCopy error:error];
  os_unfair_lock_unlock(downloadLock);

  return error;
}

- (BOOL)_startDownloadWithDelegate:(id)delegate error:(id *)error
{
  delegateCopy = delegate;
  os_unfair_lock_assert_owner([(BADownload *)self downloadLock]);
  v73 = delegateCopy;
  [(BADownload *)self setDelegate:delegateCopy];
  sub_10004C130(self, 2);
  [(BADownload *)self setDownloadError:0];
  [(BAURLDownload *)self setBailError:0];
  isForegroundDownload = [(BADownload *)self isForegroundDownload];
  if ([(BAURLDownload *)self stopRequest]== 6)
  {
    v7 = sub_100010694();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Download timed out awaiting connectivity. Restarting Download: %{public}@", buf, 0xCu);
    }

    v72 = 0;
  }

  else
  {
    v72 = isForegroundDownload;
  }

  [(BAURLDownload *)self setStopRequest:0];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  request = [(BAURLDownload *)self request];
  v76 = [request mutableCopy];

  objc_opt_class();
  v75 = isKindOfClass & 1;
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v76 URL], v10 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v11 = objc_opt_isKindOfClass(), v10, (v11 & 1) == 0))
  {
    v12 = [v76 URL];
    scheme = [v12 scheme];
    v14 = [scheme caseInsensitiveCompare:@"file"];

    v15 = [v76 URL];
    scheme2 = [v15 scheme];
    v17 = [scheme2 caseInsensitiveCompare:@"https"];

    if (!v75 || v14)
    {
      if (v17)
      {
        if (error)
        {
          sub_100027BE4(-205);
          *error = v18 = 0;
          goto LABEL_61;
        }

LABEL_60:
        v18 = 0;
        goto LABEL_61;
      }
    }
  }

  applicationInfo = [(BADownload *)self applicationInfo];

  if (applicationInfo)
  {
    v20 = sub_100010694();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Download %{public}@ is restricted, validating.", buf, 0xCu);
    }

    request2 = [(BAURLDownload *)self request];
    v22 = [request2 URL];
    host = [v22 host];

    applicationInfo2 = [(BADownload *)self applicationInfo];
    allowedDownloadDomains = [applicationInfo2 allowedDownloadDomains];
    LOBYTE(v22) = [allowedDownloadDomains containsObject:host];

    if ((v22 & 1) == 0)
    {
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      applicationInfo3 = [(BADownload *)self applicationInfo];
      allowedDownloadDomainWildcards = [applicationInfo3 allowedDownloadDomainWildcards];

      v27 = [allowedDownloadDomainWildcards countByEnumeratingWithState:&v87 objects:v91 count:16];
      if (v27)
      {
        v28 = *v88;
        while (2)
        {
          for (i = 0; i != v27; i = i + 1)
          {
            if (*v88 != v28)
            {
              objc_enumerationMutation(allowedDownloadDomainWildcards);
            }

            v30 = [*(*(&v87 + 1) + 8 * i) substringFromIndex:1];
            request3 = [(BAURLDownload *)self request];
            v32 = [request3 URL];
            host2 = [v32 host];
            v34 = [host2 hasSuffix:v30];

            if (v34)
            {

              goto LABEL_31;
            }
          }

          v27 = [allowedDownloadDomainWildcards countByEnumeratingWithState:&v87 objects:v91 count:16];
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

        if (!error)
        {
          goto LABEL_59;
        }

        v36 = 202;
LABEL_58:
        *error = sub_100027BE4(v36);
LABEL_59:

        goto LABEL_60;
      }
    }

LABEL_31:
    applicationInfo4 = [(BADownload *)self applicationInfo];
    v38 = [applicationInfo4 remainingDownloadAllowanceWithNecessity:-[BADownload necessity](self isManifest:{"necessity"), v75}] == 0;

    if (v38)
    {
      v69 = sub_100010694();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        sub_1000478D0();
      }

      if (!error)
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
    applicationInfo5 = [(BADownload *)self applicationInfo];
    if (applicationInfo5)
    {
      permitInitialCellularDownload = [(BADownload *)self permitInitialCellularDownload];

      if (permitInitialCellularDownload)
      {
        [v39 setAllowsCellularAccess:1];
      }
    }

    v42 = 7;
  }

  else
  {
    uniqueIdentifier = [(BADownload *)self uniqueIdentifier];
    v39 = [NSURLSessionConfiguration backgroundSessionConfigurationWithIdentifier:uniqueIdentifier];

    [v39 setAllowsCellularAccess:0];
    [v39 setAllowsExpensiveNetworkAccess:0];
    [v39 set_allowsRetryForBackgroundDataTasks:0];
    [v76 setAllowsCellularAccess:{objc_msgSend(v39, "allowsCellularAccess")}];
    [v76 setAllowsExpensiveNetworkAccess:{objc_msgSend(v39, "allowsExpensiveNetworkAccess")}];
    [v76 setNetworkServiceType:3];
    v42 = 3;
  }

  sub_10004C130(self, v42);
  applicationIdentifier = [(BADownload *)self applicationIdentifier];
  [v39 set_sourceApplicationBundleIdentifier:applicationIdentifier];

  v45 = [v76 copy];
  [(BAURLDownload *)self setRequest:v45];

  objc_initWeak(buf, self);
  resumeData = [(BADownload *)self resumeData];

  v47 = [BAURLSession alloc];
  if (resumeData)
  {
    resumeData2 = [(BADownload *)self resumeData];
    downloadCachePath = [(BADownload *)self downloadCachePath];
    v50 = [NSURL fileURLWithPath:downloadCachePath isDirectory:1];
    isForegroundDownload2 = [(BADownload *)self isForegroundDownload];
    v85[0] = _NSConcreteStackBlock;
    v85[1] = 3221225472;
    v85[2] = sub_100003334;
    v85[3] = &unk_100079238;
    v52 = &v86;
    objc_copyWeak(&v86, buf);
    v53 = [(BAURLSession *)v47 initWithResumeData:resumeData2 withDestinationDirectory:v50 inBackground:isForegroundDownload2 ^ 1 withAuthenticationHandler:v85 withRedirectResponseHandler:0];
    [(BADownload *)self setSession:v53];
  }

  else
  {
    resumeData2 = [(BAURLDownload *)self request];
    downloadCachePath = [(BADownload *)self downloadCachePath];
    v50 = [NSURL fileURLWithPath:downloadCachePath isDirectory:1];
    isForegroundDownload3 = [(BADownload *)self isForegroundDownload];
    v83[0] = _NSConcreteStackBlock;
    v83[1] = 3221225472;
    v83[2] = sub_1000033AC;
    v83[3] = &unk_100079238;
    v52 = &v84;
    objc_copyWeak(&v84, buf);
    v53 = [(BAURLSession *)v47 initWithURLRequest:resumeData2 withDestinationDirectory:v50 inBackground:isForegroundDownload3 ^ 1 withAuthenticationHandler:v83];
    [(BADownload *)self setSession:v53];
  }

  objc_destroyWeak(v52);
  session = [(BADownload *)self session];
  v18 = session != 0;

  if (v18)
  {
    v56 = +[NSDate now];
    [(BADownload *)self setDownloadStartDate:v56];

    uniqueIdentifier2 = [(BADownload *)self uniqueIdentifier];
    [(BADownload *)self _addActivityWithIdentifier:uniqueIdentifier2 takePowerAssertion:[(BADownload *)self isForegroundDownload]];

    delegate = [(BADownload *)self delegate];
    if (delegate)
    {
      delegate2 = [(BADownload *)self delegate];
      v60 = objc_opt_respondsToSelector();

      if (v60)
      {
        responseQueue = [(BADownload *)self responseQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100003424;
        block[3] = &unk_100079260;
        block[4] = self;
        dispatch_async(responseQueue, block);
      }
    }

    session2 = [(BADownload *)self session];
    [session2 setUseUniqueFileName:1];

    if (v72)
    {
      necessity = [(BADownload *)self necessity];
      session3 = [(BADownload *)self session];
      v65 = session3;
      v66 = 60.0;
      if (necessity == 1)
      {
        v66 = 10.0;
      }

      [session3 setInitialConnectivityTimeout:v66];
    }

    session4 = [(BADownload *)self session];
    responseQueue2 = [(BADownload *)self responseQueue];
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
    [session4 startAsyncDownloadNotifyingOnQueue:responseQueue2 sessionConfiguration:v39 extractorFactory:v81 bytesReceivedHandler:v79 completionHandler:v77];

    objc_destroyWeak(&v80);
  }

  else if (error)
  {
    *error = sub_100027BE4(-200);
  }

  objc_destroyWeak(buf);

LABEL_61:
  return v18;
}

- (void)_handleDownloadFailureWithError:(id)error resumeData:(id)data response:(id)response
{
  errorCopy = error;
  dataCopy = data;
  responseCopy = response;
  downloadLock = [(BADownload *)self downloadLock];
  os_unfair_lock_lock(downloadLock);
  session = [(BADownload *)self session];
  [session invalidate];

  [(BADownload *)self setSession:0];
  bailError = [(BAURLDownload *)self bailError];

  if (bailError)
  {
    bailError2 = [(BAURLDownload *)self bailError];
    userInfo = [bailError2 userInfo];
    v16 = [userInfo mutableCopy];

    [v16 setObject:errorCopy forKey:NSUnderlyingErrorKey];
    bailError3 = [(BAURLDownload *)self bailError];
    domain = [bailError3 domain];
    bailError4 = [(BAURLDownload *)self bailError];
    v20 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", domain, [bailError4 code], v16);

    errorCopy = v20;
  }

  stopRequest = [(BAURLDownload *)self stopRequest];
  v22 = 0;
  if (stopRequest <= 3)
  {
    switch(stopRequest)
    {
      case 1:
        goto LABEL_20;
      case 2:
        v22 = 1;
        goto LABEL_20;
      case 3:
LABEL_12:
        [(BADownload *)self setResumeData:dataCopy];
        [(BAURLDownload *)self _informDelegateOfPausedDownloadWithWillImmediatelyResume:0];
LABEL_21:
        [(BADownload *)self _removeActivityAndPowerAssertion];
        goto LABEL_22;
    }

LABEL_11:
    if ([objc_opt_class() _cellularNetworkProhibitsDownloadUsingError:errorCopy])
    {
      goto LABEL_12;
    }

    v22 = 0;
LABEL_20:
    [(BAURLDownload *)self _informDelegateOfFailedDownloadWithError:errorCopy silentFailure:v22];
    goto LABEL_21;
  }

  if (stopRequest == 4)
  {
    v22 = 1;
    goto LABEL_14;
  }

  if (stopRequest == 5)
  {
LABEL_14:
    [(BADownload *)self setIsForegroundDownload:v22];
    goto LABEL_15;
  }

  if (stopRequest != 6)
  {
    goto LABEL_11;
  }

LABEL_15:
  [(BADownload *)self setResumeData:dataCopy];
  [(BAURLDownload *)self _informDelegateOfPausedDownloadWithWillImmediatelyResume:1];
  v23 = objc_autoreleasePoolPush();
  delegate = [(BADownload *)self delegate];
  v27 = 0;
  v25 = [(BAURLDownload *)self _startDownloadWithDelegate:delegate error:&v27];
  v26 = v27;

  objc_autoreleasePoolPop(v23);
  if ((v25 & 1) == 0)
  {
    [(BAURLDownload *)self _informDelegateOfFailedDownloadWithError:v26 silentFailure:0];
  }

LABEL_22:
  os_unfair_lock_unlock(downloadLock);
}

- (void)_handleDownloadCompletionWithFileLocation:(id)location response:(id)response
{
  locationCopy = location;
  os_unfair_lock_lock([(BADownload *)self downloadLock]);
  sub_10004C18C(self, locationCopy);

  sub_10004C130(self, 8);
  [(BADownload *)self setDownloadError:0];
  [(BADownload *)self setResumeData:0];
  v7 = sub_10004C614(self, v6);
  v8 = [NSNumber numberWithUnsignedInteger:[(BAURLDownload *)self amountDownloaded]];
  [(BADownload *)self setDownloadedFileSize:v8];

  session = [(BADownload *)self session];
  [session invalidate];

  [(BADownload *)self setSession:0];
  responseQueue = [(BADownload *)self responseQueue];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_1000042E0;
  v15 = &unk_100079300;
  selfCopy = self;
  v17 = v7;
  v11 = v7;
  dispatch_async(responseQueue, &v12);

  os_unfair_lock_unlock([(BADownload *)self downloadLock:v12]);
}

- (void)_handleProgressWithBytesReceived:(unint64_t)received totalBytesRecieved:(unint64_t)recieved totalDownloadSize:(int64_t)size resuming:(BOOL)resuming
{
  os_unfair_lock_lock([(BADownload *)self downloadLock]);
  if (sub_10004C244(self) == 3)
  {
    sub_10004C130(self, 7);
  }

  [(BAURLDownload *)self setAmountDownloaded:recieved];
  os_unfair_lock_unlock([(BADownload *)self downloadLock]);
  delegate = [(BADownload *)self delegate];
  v12 = delegate;
  if (resuming)
  {
    if (delegate)
    {
      delegate2 = [(BADownload *)self delegate];
      v14 = objc_opt_respondsToSelector();

      if (v14)
      {
        delegate3 = [(BADownload *)self delegate];
        [delegate3 download:self didResumeAtOffset:recieved expectedTotalBytes:size];
LABEL_10:
      }
    }
  }

  else if (delegate)
  {
    delegate4 = [(BADownload *)self delegate];
    v17 = objc_opt_respondsToSelector();

    if (v17)
    {
      delegate3 = [(BADownload *)self delegate];
      [delegate3 download:self didWriteBytes:received totalBytesWritten:recieved totalBytesExpectedToWrite:size];
      goto LABEL_10;
    }
  }

  os_unfair_lock_lock([(BADownload *)self downloadLock]);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (!resuming)
  {
    applicationInfo = [(BADownload *)self applicationInfo];

    if (applicationInfo)
    {
      objc_opt_class();
      v20 = objc_opt_isKindOfClass();
      applicationInfo2 = [(BADownload *)self applicationInfo];
      v22 = [applicationInfo2 remainingDownloadAllowanceWithNecessity:-[BADownload necessity](self isManifest:{"necessity"), v20 & 1}];

      applicationInfo3 = [(BADownload *)self applicationInfo];
      v24 = [applicationInfo3 consumeAllowanceShouldStopWithAdditionalBytes:received downloadNecessity:-[BADownload necessity](self isManifest:{"necessity"), isKindOfClass & 1}];

      if ((v24 & 1) != 0 || !v22)
      {
        v25 = sub_100027BE4(204);
        goto LABEL_24;
      }
    }
  }

  if ((sub_10004C1FC(self) || (isKindOfClass & 1) == 0 && [(BADownload *)self necessity]== 1) && sub_10004C1FC(self) < recieved)
  {
    v25 = sub_100027CE0(@"BAURLDownloadErrorDomain", 101);
LABEL_24:
    v27 = v25;
    [(BAURLDownload *)self setBailError:v25];

    os_unfair_lock_unlock([(BADownload *)self downloadLock]);

    [(BAURLDownload *)self cancelDownload];
    return;
  }

  downloadLock = [(BADownload *)self downloadLock];

  os_unfair_lock_unlock(downloadLock);
}

- (void)_handleChallenge:(id)challenge authenticationHandler:(id)handler
{
  challengeCopy = challenge;
  handlerCopy = handler;
  delegate = [(BADownload *)self delegate];
  if (delegate)
  {
    v8 = delegate;
    delegate2 = [(BADownload *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      delegate3 = [(BADownload *)self delegate];
      [delegate3 download:self didReceiveChallenge:challengeCopy completionHandler:handlerCopy];
LABEL_7:

      goto LABEL_12;
    }
  }

  protectionSpace = [challengeCopy protectionSpace];
  authenticationMethod = [protectionSpace authenticationMethod];
  if ([authenticationMethod isEqualToString:NSURLAuthenticationMethodServerTrust])
  {
    previousFailureCount = [challengeCopy previousFailureCount];

    if (!previousFailureCount)
    {
      delegate3 = [challengeCopy protectionSpace];
      v15 = +[NSURLCredential credentialForTrust:](NSURLCredential, "credentialForTrust:", [delegate3 serverTrust]);
      handlerCopy[2](handlerCopy, 0, v15);

      goto LABEL_7;
    }
  }

  else
  {
  }

  if ([challengeCopy previousFailureCount])
  {
    handlerCopy[2](handlerCopy, 1, 0);
  }

  else
  {
    proposedCredential = [challengeCopy proposedCredential];
    handlerCopy[2](handlerCopy, 0, proposedCredential);
  }

LABEL_12:
}

- (void)_informDelegateOfPausedDownloadWithWillImmediatelyResume:(BOOL)resume
{
  os_unfair_lock_assert_owner([(BADownload *)self downloadLock]);
  sub_10004C130(self, 5);
  delegate = [(BADownload *)self delegate];
  if (delegate)
  {
    v6 = delegate;
    delegate2 = [(BADownload *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      responseQueue = [(BADownload *)self responseQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000048F8;
      block[3] = &unk_100079260;
      block[4] = self;
      dispatch_async(responseQueue, block);
    }
  }

  if (!resume)
  {
    [(BADownload *)self _removeActivityAndPowerAssertion];
  }
}

- (void)_informDelegateOfFailedDownloadWithError:(id)error silentFailure:(BOOL)failure
{
  failureCopy = failure;
  errorCopy = error;
  os_unfair_lock_assert_owner([(BADownload *)self downloadLock]);
  if (failureCopy)
  {
    v7 = -2;
  }

  else
  {
    v7 = -1;
  }

  sub_10004C130(self, v7);
  [(BADownload *)self setDownloadError:errorCopy];

  delegate = [(BADownload *)self delegate];
  if (delegate)
  {
    v9 = delegate;
    delegate2 = [(BADownload *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      responseQueue = [(BADownload *)self responseQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100004A64;
      block[3] = &unk_100079260;
      block[4] = self;
      dispatch_async(responseQueue, block);
    }
  }
}

- (void)pauseDownload
{
  downloadLock = [(BADownload *)self downloadLock];
  os_unfair_lock_lock(downloadLock);
  session = [(BADownload *)self session];

  if (session)
  {
    [(BAURLDownload *)self setStopRequest:3];
    sub_10004C130(self, 4);
    session2 = [(BADownload *)self session];
    [session2 cancel];
  }

  os_unfair_lock_unlock(downloadLock);
}

- (void)promoteToForeground
{
  downloadLock = [(BADownload *)self downloadLock];
  os_unfair_lock_lock(downloadLock);
  if (![(BADownload *)self isForegroundDownload])
  {
    session = [(BADownload *)self session];

    if (session)
    {
      [(BAURLDownload *)self setStopRequest:4];
      sub_10004C130(self, 4);
      session2 = [(BADownload *)self session];
      [session2 cancel];
    }
  }

  os_unfair_lock_unlock(downloadLock);
}

- (void)demoteToBackground
{
  downloadLock = [(BADownload *)self downloadLock];
  os_unfair_lock_lock(downloadLock);
  if ([(BADownload *)self isForegroundDownload])
  {
    session = [(BADownload *)self session];

    if (session)
    {
      [(BAURLDownload *)self setStopRequest:5];
      sub_10004C130(self, 4);
      session2 = [(BADownload *)self session];
      [session2 cancel];
    }
  }

  os_unfair_lock_unlock(downloadLock);
}

+ (BOOL)_cellularNetworkProhibitsDownloadUsingError:(id)error
{
  userInfo = [error userInfo];
  v5 = [userInfo objectForKey:NSURLErrorNetworkUnavailableReasonKey];

  if (v5)
  {
    intValue = [v5 intValue];
    if (intValue == 1)
    {
      v7 = sub_100010694();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138543362;
        selfCopy2 = self;
        v8 = "Pausing download %{public}@ because our network is expensive.";
        goto LABEL_9;
      }

LABEL_10:

      v9 = 1;
      goto LABEL_11;
    }

    if (!intValue)
    {
      v7 = sub_100010694();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138543362;
        selfCopy2 = self;
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
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setStopRequest:(int64_t)request
{
  v4 = [NSNumber numberWithInteger:request];
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
  scheme = [v19 scheme];
  v21 = [scheme caseInsensitiveCompare:@"https"];

  if (v21)
  {
    v22 = NSInvalidArgumentException;
    v23 = @"request can only download over HTTPS.";
LABEL_7:
    v24 = [NSException exceptionWithName:v22 reason:v23 userInfo:0];
    [v24 raise];

    selfCopy = 0;
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
  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (BAURLDownload)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = BAURLDownload;
  v5 = [(BADownload *)&v10 initWithCoder:coderCopy];
  if (v5 && ([coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"request"], v6 = objc_claimAutoreleasedReturnValue(), request = v5->_request, v5->_request = v6, request, !v5->_request))
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = BAURLDownload;
  v4 = [(BADownload *)&v6 copyWithZone:zone];
  [v4 setRequest:self->_request];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  request = self->_request;
  coderCopy = coder;
  [coderCopy encodeObject:request forKey:@"request"];
  v6.receiver = self;
  v6.super_class = BAURLDownload;
  [(BADownload *)&v6 encodeWithCoder:coderCopy];
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