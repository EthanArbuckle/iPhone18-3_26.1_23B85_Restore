@interface MADAutoAssetClientRequest
+ (id)responseErrorSummary:(id)a3;
- ($115C4C562B26FF47E01F9F4EA65B5887)clientRequestAuditToken;
- (MADAutoAssetClientRequest)initWithCoder:(id)a3;
- (id)initForClientID:(id)a3 withClientRequestMessage:(id)a4 withClientProgressProxy:(id)a5 withClientReplyCompletion:(id)a6;
- (id)summaryWithResponseMessage:(BOOL)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADAutoAssetClientRequest

- (id)initForClientID:(id)a3 withClientRequestMessage:(id)a4 withClientProgressProxy:(id)a5 withClientReplyCompletion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v29.receiver = self;
  v29.super_class = MADAutoAssetClientRequest;
  v15 = [(MADAutoAssetClientRequest *)&v29 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_clientID, a3);
    v17 = +[NSUUID UUID];
    v18 = [v17 UUIDString];
    clientRequestUUID = v16->_clientRequestUUID;
    v16->_clientRequestUUID = v18;

    objc_storeStrong(&v16->_clientRequestMessage, a4);
    objc_storeStrong(&v16->_clientProgressProxy, a5);
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

    v26 = objc_retainBlock(v14);
    clientReplyCompletion = v16->_clientReplyCompletion;
    v16->_clientReplyCompletion = v26;
  }

  return v16;
}

- (MADAutoAssetClientRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = MADAutoAssetClientRequest;
  v5 = [(MADAutoAssetClientRequest *)&v28 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientID"];
    clientID = v5->_clientID;
    v5->_clientID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientRequestUUID"];
    clientRequestUUID = v5->_clientRequestUUID;
    v5->_clientRequestUUID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientRequestMessage"];
    clientRequestMessage = v5->_clientRequestMessage;
    v5->_clientRequestMessage = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientProgressProxy"];
    clientProgressProxy = v5->_clientProgressProxy;
    v5->_clientProgressProxy = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"responseMessage"];
    responseMessage = v5->_responseMessage;
    v5->_responseMessage = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"responseError"];
    responseError = v5->_responseError;
    v5->_responseError = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"autoAssetJobUUID"];
    autoAssetJobUUID = v5->_autoAssetJobUUID;
    v5->_autoAssetJobUUID = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"downloadProgress"];
    downloadProgress = v5->_downloadProgress;
    v5->_downloadProgress = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"autoAssetStatus"];
    autoAssetStatus = v5->_autoAssetStatus;
    v5->_autoAssetStatus = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timedTracker"];
    timedTracker = v5->_timedTracker;
    v5->_timedTracker = v24;

    clientReplyCompletion = v5->_clientReplyCompletion;
    v5->_clientReplyCompletion = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MADAutoAssetClientRequest *)self clientID];
  [v4 encodeObject:v5 forKey:@"clientID"];

  v6 = [(MADAutoAssetClientRequest *)self clientRequestUUID];
  [v4 encodeObject:v6 forKey:@"clientRequestUUID"];

  v7 = [(MADAutoAssetClientRequest *)self clientRequestMessage];
  [v4 encodeObject:v7 forKey:@"clientRequestMessage"];

  v8 = [(MADAutoAssetClientRequest *)self clientProgressProxy];
  [v4 encodeObject:v8 forKey:@"clientProgressProxy"];

  v9 = [(MADAutoAssetClientRequest *)self responseMessage];
  [v4 encodeObject:v9 forKey:@"responseMessage"];

  v10 = [(MADAutoAssetClientRequest *)self responseError];
  [v4 encodeObject:v10 forKey:@"responseError"];

  v11 = [(MADAutoAssetClientRequest *)self autoAssetJobUUID];
  [v4 encodeObject:v11 forKey:@"autoAssetJobUUID"];

  v12 = [(MADAutoAssetClientRequest *)self downloadProgress];
  [v4 encodeObject:v12 forKey:@"downloadProgress"];

  v13 = [(MADAutoAssetClientRequest *)self autoAssetStatus];
  [v4 encodeObject:v13 forKey:@"autoAssetStatus"];

  v14 = [(MADAutoAssetClientRequest *)self timedTracker];
  [v4 encodeObject:v14 forKey:@"timedTracker"];
}

- (id)summaryWithResponseMessage:(BOOL)a3
{
  v3 = a3;
  v5 = [(MADAutoAssetClientRequest *)self responseError];
  v6 = [MADAutoAssetClientRequest responseErrorSummary:v5];

  v7 = [(MADAutoAssetClientRequest *)self clientID];
  v35 = [(MADAutoAssetClientRequest *)self clientRequestUUID];
  v29 = [(MADAutoAssetClientRequest *)self clientRequestMessage];
  v34 = [MADAutoAssetControlManager newSummaryForRequestMessage:"newSummaryForRequestMessage:includingSelector:" includingSelector:?];
  v8 = [(MADAutoAssetClientRequest *)self clientProgressProxy];
  v9 = @"Y";
  v10 = @"N";
  v28 = v8;
  if (!v8)
  {
    v9 = @"N";
  }

  v24 = v9;
  v27 = [(MADAutoAssetClientRequest *)self responseMessage];
  if (v27)
  {
    if (v3)
    {
      v21 = [(MADAutoAssetClientRequest *)self responseMessage];
      v10 = [v21 summary];
      v26 = 1;
    }

    else
    {
      v26 = 0;
      v10 = @"Y";
    }
  }

  else
  {
    v26 = 0;
  }

  v11 = [(MADAutoAssetClientRequest *)self autoAssetJobUUID];
  if (v11)
  {
    v33 = [(MADAutoAssetClientRequest *)self autoAssetJobUUID];
  }

  else
  {
    v33 = @"N";
  }

  v12 = [(MADAutoAssetClientRequest *)self downloadProgress];
  if (v12)
  {
    v23 = [(MADAutoAssetClientRequest *)self downloadProgress];
    v32 = [v23 summary];
  }

  else
  {
    v32 = @"N";
  }

  v30 = v7;
  v31 = v10;
  v13 = [(MADAutoAssetClientRequest *)self autoAssetStatus];
  if (v13)
  {
    v22 = [(MADAutoAssetClientRequest *)self autoAssetStatus];
    v14 = [v22 summary];
  }

  else
  {
    v14 = @"N";
  }

  v25 = v11;
  v15 = [(MADAutoAssetClientRequest *)self timedTracker];
  if (v15)
  {
    v11 = [(MADAutoAssetClientRequest *)self timedTracker];
    v16 = [v11 summary];
  }

  else
  {
    v16 = @"N";
  }

  v17 = [(MADAutoAssetClientRequest *)self clientReplyCompletion];
  v18 = @"Y";
  if (!v17)
  {
    v18 = @"N";
  }

  v19 = [NSString stringWithFormat:@"[clientID:%@|requestUUID:%@|requestMessage:%@|progressProxy:%@|responseMessage:%@|responseError:%@|jobUUID:%@|downloadProgress:%@|autoAssetStatus:%@|timedTracker:%@|replyCompletion:%@]", v30, v35, v34, v24, v31, v6, v33, v32, v14, v16, v18];

  if (v15)
  {
  }

  if (v13)
  {
  }

  if (v12)
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

+ (id)responseErrorSummary:(id)a3
{
  if (a3)
  {
    v3 = [a3 checkedDescription];
    if ([v3 hasPrefix:@"[com.apple.MobileAssetError."])
    {
      v4 = [v3 substringFromIndex:{objc_msgSend(@"[com.apple.MobileAssetError.", "length")}];
      v5 = [NSString stringWithFormat:@"[%@", v4];
    }

    else
    {
      v5 = v3;
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