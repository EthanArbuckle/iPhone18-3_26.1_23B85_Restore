@interface MADAutoAssetClientRequest
+ (id)responseErrorSummary:(id)summary;
- ($115C4C562B26FF47E01F9F4EA65B5887)clientRequestAuditToken;
- (MADAutoAssetClientRequest)initWithCoder:(id)coder;
- (id)initForClientID:(id)d withClientRequestMessage:(id)message withClientProgressProxy:(id)proxy withClientReplyCompletion:(id)completion;
- (id)summaryWithResponseMessage:(BOOL)message;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADAutoAssetClientRequest

- (id)initForClientID:(id)d withClientRequestMessage:(id)message withClientProgressProxy:(id)proxy withClientReplyCompletion:(id)completion
{
  dCopy = d;
  messageCopy = message;
  proxyCopy = proxy;
  completionCopy = completion;
  v29.receiver = self;
  v29.super_class = MADAutoAssetClientRequest;
  v15 = [(MADAutoAssetClientRequest *)&v29 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_clientID, d);
    v17 = +[NSUUID UUID];
    uUIDString = [v17 UUIDString];
    clientRequestUUID = v16->_clientRequestUUID;
    v16->_clientRequestUUID = uUIDString;

    objc_storeStrong(&v16->_clientRequestMessage, message);
    objc_storeStrong(&v16->_clientProgressProxy, proxy);
    responseMessage = v16->_responseMessage;
    v16->_responseMessage = 0;

    responseError = v16->_responseError;
    v16->_responseError = 0;

    autoAssetJobUUID = v16->_autoAssetJobUUID;
    v16->_autoAssetJobUUID = 0;

    downloadProgress = v16->_downloadProgress;
    v16->_downloadProgress = 0;

    autoAssetStatus = v16->_autoAssetStatus;
    v16->_autoAssetStatus = 0;

    timedTracker = v16->_timedTracker;
    v16->_timedTracker = 0;

    v26 = objc_retainBlock(completionCopy);
    clientReplyCompletion = v16->_clientReplyCompletion;
    v16->_clientReplyCompletion = v26;
  }

  return v16;
}

- (MADAutoAssetClientRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = MADAutoAssetClientRequest;
  v5 = [(MADAutoAssetClientRequest *)&v28 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientID"];
    clientID = v5->_clientID;
    v5->_clientID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientRequestUUID"];
    clientRequestUUID = v5->_clientRequestUUID;
    v5->_clientRequestUUID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientRequestMessage"];
    clientRequestMessage = v5->_clientRequestMessage;
    v5->_clientRequestMessage = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientProgressProxy"];
    clientProgressProxy = v5->_clientProgressProxy;
    v5->_clientProgressProxy = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"responseMessage"];
    responseMessage = v5->_responseMessage;
    v5->_responseMessage = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"responseError"];
    responseError = v5->_responseError;
    v5->_responseError = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"autoAssetJobUUID"];
    autoAssetJobUUID = v5->_autoAssetJobUUID;
    v5->_autoAssetJobUUID = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"downloadProgress"];
    downloadProgress = v5->_downloadProgress;
    v5->_downloadProgress = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"autoAssetStatus"];
    autoAssetStatus = v5->_autoAssetStatus;
    v5->_autoAssetStatus = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timedTracker"];
    timedTracker = v5->_timedTracker;
    v5->_timedTracker = v24;

    clientReplyCompletion = v5->_clientReplyCompletion;
    v5->_clientReplyCompletion = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  clientID = [(MADAutoAssetClientRequest *)self clientID];
  [coderCopy encodeObject:clientID forKey:@"clientID"];

  clientRequestUUID = [(MADAutoAssetClientRequest *)self clientRequestUUID];
  [coderCopy encodeObject:clientRequestUUID forKey:@"clientRequestUUID"];

  clientRequestMessage = [(MADAutoAssetClientRequest *)self clientRequestMessage];
  [coderCopy encodeObject:clientRequestMessage forKey:@"clientRequestMessage"];

  clientProgressProxy = [(MADAutoAssetClientRequest *)self clientProgressProxy];
  [coderCopy encodeObject:clientProgressProxy forKey:@"clientProgressProxy"];

  responseMessage = [(MADAutoAssetClientRequest *)self responseMessage];
  [coderCopy encodeObject:responseMessage forKey:@"responseMessage"];

  responseError = [(MADAutoAssetClientRequest *)self responseError];
  [coderCopy encodeObject:responseError forKey:@"responseError"];

  autoAssetJobUUID = [(MADAutoAssetClientRequest *)self autoAssetJobUUID];
  [coderCopy encodeObject:autoAssetJobUUID forKey:@"autoAssetJobUUID"];

  downloadProgress = [(MADAutoAssetClientRequest *)self downloadProgress];
  [coderCopy encodeObject:downloadProgress forKey:@"downloadProgress"];

  autoAssetStatus = [(MADAutoAssetClientRequest *)self autoAssetStatus];
  [coderCopy encodeObject:autoAssetStatus forKey:@"autoAssetStatus"];

  timedTracker = [(MADAutoAssetClientRequest *)self timedTracker];
  [coderCopy encodeObject:timedTracker forKey:@"timedTracker"];
}

- (id)summaryWithResponseMessage:(BOOL)message
{
  messageCopy = message;
  responseError = [(MADAutoAssetClientRequest *)self responseError];
  v6 = [MADAutoAssetClientRequest responseErrorSummary:responseError];

  clientID = [(MADAutoAssetClientRequest *)self clientID];
  clientRequestUUID = [(MADAutoAssetClientRequest *)self clientRequestUUID];
  clientRequestMessage = [(MADAutoAssetClientRequest *)self clientRequestMessage];
  v34 = [MADAutoAssetControlManager newSummaryForRequestMessage:"newSummaryForRequestMessage:includingSelector:" includingSelector:?];
  clientProgressProxy = [(MADAutoAssetClientRequest *)self clientProgressProxy];
  v9 = @"Y";
  summary = @"N";
  v28 = clientProgressProxy;
  if (!clientProgressProxy)
  {
    v9 = @"N";
  }

  v24 = v9;
  responseMessage = [(MADAutoAssetClientRequest *)self responseMessage];
  if (responseMessage)
  {
    if (messageCopy)
    {
      responseMessage2 = [(MADAutoAssetClientRequest *)self responseMessage];
      summary = [responseMessage2 summary];
      v26 = 1;
    }

    else
    {
      v26 = 0;
      summary = @"Y";
    }
  }

  else
  {
    v26 = 0;
  }

  autoAssetJobUUID = [(MADAutoAssetClientRequest *)self autoAssetJobUUID];
  if (autoAssetJobUUID)
  {
    autoAssetJobUUID2 = [(MADAutoAssetClientRequest *)self autoAssetJobUUID];
  }

  else
  {
    autoAssetJobUUID2 = @"N";
  }

  downloadProgress = [(MADAutoAssetClientRequest *)self downloadProgress];
  if (downloadProgress)
  {
    downloadProgress2 = [(MADAutoAssetClientRequest *)self downloadProgress];
    summary2 = [downloadProgress2 summary];
  }

  else
  {
    summary2 = @"N";
  }

  v30 = clientID;
  v31 = summary;
  autoAssetStatus = [(MADAutoAssetClientRequest *)self autoAssetStatus];
  if (autoAssetStatus)
  {
    autoAssetStatus2 = [(MADAutoAssetClientRequest *)self autoAssetStatus];
    summary3 = [autoAssetStatus2 summary];
  }

  else
  {
    summary3 = @"N";
  }

  v25 = autoAssetJobUUID;
  timedTracker = [(MADAutoAssetClientRequest *)self timedTracker];
  if (timedTracker)
  {
    autoAssetJobUUID = [(MADAutoAssetClientRequest *)self timedTracker];
    summary4 = [autoAssetJobUUID summary];
  }

  else
  {
    summary4 = @"N";
  }

  clientReplyCompletion = [(MADAutoAssetClientRequest *)self clientReplyCompletion];
  v18 = @"Y";
  if (!clientReplyCompletion)
  {
    v18 = @"N";
  }

  v19 = [NSString stringWithFormat:@"[clientID:%@|requestUUID:%@|requestMessage:%@|progressProxy:%@|responseMessage:%@|responseError:%@|jobUUID:%@|downloadProgress:%@|autoAssetStatus:%@|timedTracker:%@|replyCompletion:%@]", v30, clientRequestUUID, v34, v24, v31, v6, autoAssetJobUUID2, summary2, summary3, summary4, v18];

  if (timedTracker)
  {
  }

  if (autoAssetStatus)
  {
  }

  if (downloadProgress)
  {
  }

  if (v25)
  {
  }

  if (v26)
  {
  }

  return v19;
}

+ (id)responseErrorSummary:(id)summary
{
  if (summary)
  {
    checkedDescription = [summary checkedDescription];
    if ([checkedDescription hasPrefix:@"[com.apple.MobileAssetError."])
    {
      v4 = [checkedDescription substringFromIndex:{objc_msgSend(@"[com.apple.MobileAssetError.", "length")}];
      v5 = [NSString stringWithFormat:@"[%@", v4];
    }

    else
    {
      v5 = checkedDescription;
    }
  }

  else
  {
    v5 = @"N";
  }

  return v5;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)clientRequestAuditToken
{
  v3 = *&self[3].var0[4];
  *retstr->var0 = *self[3].var0;
  *&retstr->var0[4] = v3;
  return self;
}

@end