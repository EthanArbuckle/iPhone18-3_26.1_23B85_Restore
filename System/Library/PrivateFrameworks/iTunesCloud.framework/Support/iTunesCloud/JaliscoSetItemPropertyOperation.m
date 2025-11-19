@interface JaliscoSetItemPropertyOperation
- (JaliscoSetItemPropertyOperation)initWithCoder:(id)a3;
- (JaliscoSetItemPropertyOperation)initWithConfiguration:(id)a3 clientIdentity:(id)a4 purchaseHistoryID:(unint64_t)a5 properties:(id)a6;
- (JaliscoSetItemPropertyOperation)initWithPurchaseHistoryID:(unint64_t)a3 properties:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)main;
@end

@implementation JaliscoSetItemPropertyOperation

- (void)main
{
  context = objc_autoreleasePoolPush();
  v23 = [NSString stringWithFormat:@"JaliscoSetItemPropertyOperation - (purchase_history_id = %llu)", self->_purchaseHistoryID];
  v3 = [[MSVXPCTransaction alloc] initWithName:v23];
  [v3 beginTransaction];
  v4 = [(CloudLibraryOperation *)self musicLibrary];
  v5 = [(CloudLibraryOperation *)self clientIdentity];
  [v4 setClientIdentity:v5];

  v6 = [(CloudLibraryOperation *)self connection];
  v7 = [v6 databaseID];
  v8 = [NSNumber numberWithUnsignedLongLong:self->_purchaseHistoryID];
  v42 = v8;
  v9 = [NSArray arrayWithObjects:&v42 count:1];
  properties = self->_properties;
  v10 = [NSArray arrayWithObjects:&properties count:1];
  v11 = [ICBulkSetItemPropertyRequest requestWithDatabaseID:v7 itemIDs:v9 properties:v10 useLongIDs:1];

  [v11 setVerificationInteractionLevel:2];
  v12 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    if ([v11 method])
    {
      v15 = @"POST";
    }

    else
    {
      v15 = @"GET";
    }

    v16 = [v11 action];
    purchaseHistoryID = self->_purchaseHistoryID;
    v18 = self->_properties;
    *buf = 138544642;
    v30 = v14;
    v31 = 2048;
    v32 = v11;
    v33 = 2114;
    v34 = v15;
    v35 = 2114;
    v36 = v16;
    v37 = 2048;
    v38 = purchaseHistoryID;
    v39 = 2114;
    v40 = v18;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Sending set item properties request <%{public}@: %p method=%{public}@ action=%{public}@> for purchase history id: %llu properties: %{public}@", buf, 0x3Eu);
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10002C500;
  v25[3] = &unk_1001DF440;
  v26 = v11;
  v27 = self;
  v28 = dispatch_semaphore_create(0);
  v19 = v28;
  v20 = v11;
  [v6 sendRequest:v20 withResponseHandler:v25];
  dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
  v21 = [(CloudLibraryOperation *)self musicLibrary];
  v22 = MSVTCCIdentityForCurrentProcess();
  [v21 setClientIdentity:v22];

  [v3 endTransaction];
  objc_autoreleasePoolPop(context);
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = JaliscoSetItemPropertyOperation;
  v4 = a3;
  [(CloudLibraryOperation *)&v5 encodeWithCoder:v4];
  [v4 encodeInt64:self->_purchaseHistoryID forKey:{@"JaliscoSetItemPropertyOperationPurchaseHistoryIDKey", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_properties forKey:@"JaliscoSetItemPropertyOperationPropertiesKey"];
}

- (JaliscoSetItemPropertyOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = JaliscoSetItemPropertyOperation;
  v5 = [(CloudLibraryOperation *)&v9 initWithCoder:v4];
  if (v5)
  {
    v5->_purchaseHistoryID = [v4 decodeInt64ForKey:@"JaliscoSetItemPropertyOperationPurchaseHistoryIDKey"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"JaliscoSetItemPropertyOperationPropertiesKey"];
    properties = v5->_properties;
    v5->_properties = v6;
  }

  return v5;
}

- (JaliscoSetItemPropertyOperation)initWithConfiguration:(id)a3 clientIdentity:(id)a4 purchaseHistoryID:(unint64_t)a5 properties:(id)a6
{
  v10 = a6;
  v16.receiver = self;
  v16.super_class = JaliscoSetItemPropertyOperation;
  v11 = [(CloudLibraryOperation *)&v16 initWithConfiguration:a3 clientIdentity:a4];
  v12 = v11;
  if (v11)
  {
    v11->_purchaseHistoryID = a5;
    v13 = [v10 copy];
    properties = v12->_properties;
    v12->_properties = v13;
  }

  return v12;
}

- (JaliscoSetItemPropertyOperation)initWithPurchaseHistoryID:(unint64_t)a3 properties:(id)a4
{
  v6 = a4;
  v7 = objc_opt_new();
  v8 = MSVTCCIdentityForCurrentProcess();
  v9 = [(JaliscoSetItemPropertyOperation *)self initWithConfiguration:v7 clientIdentity:v8 purchaseHistoryID:a3 properties:v6];

  return v9;
}

@end