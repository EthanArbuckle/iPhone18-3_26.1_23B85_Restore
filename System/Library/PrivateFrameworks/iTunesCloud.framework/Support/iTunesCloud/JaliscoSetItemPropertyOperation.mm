@interface JaliscoSetItemPropertyOperation
- (JaliscoSetItemPropertyOperation)initWithCoder:(id)coder;
- (JaliscoSetItemPropertyOperation)initWithConfiguration:(id)configuration clientIdentity:(id)identity purchaseHistoryID:(unint64_t)d properties:(id)properties;
- (JaliscoSetItemPropertyOperation)initWithPurchaseHistoryID:(unint64_t)d properties:(id)properties;
- (void)encodeWithCoder:(id)coder;
- (void)main;
@end

@implementation JaliscoSetItemPropertyOperation

- (void)main
{
  context = objc_autoreleasePoolPush();
  v23 = [NSString stringWithFormat:@"JaliscoSetItemPropertyOperation - (purchase_history_id = %llu)", self->_purchaseHistoryID];
  v3 = [[MSVXPCTransaction alloc] initWithName:v23];
  [v3 beginTransaction];
  musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
  clientIdentity = [(CloudLibraryOperation *)self clientIdentity];
  [musicLibrary setClientIdentity:clientIdentity];

  connection = [(CloudLibraryOperation *)self connection];
  databaseID = [connection databaseID];
  v8 = [NSNumber numberWithUnsignedLongLong:self->_purchaseHistoryID];
  v42 = v8;
  v9 = [NSArray arrayWithObjects:&v42 count:1];
  properties = self->_properties;
  v10 = [NSArray arrayWithObjects:&properties count:1];
  v11 = [ICBulkSetItemPropertyRequest requestWithDatabaseID:databaseID itemIDs:v9 properties:v10 useLongIDs:1];

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

    action = [v11 action];
    purchaseHistoryID = self->_purchaseHistoryID;
    v18 = self->_properties;
    *buf = 138544642;
    v30 = v14;
    v31 = 2048;
    v32 = v11;
    v33 = 2114;
    v34 = v15;
    v35 = 2114;
    v36 = action;
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
  selfCopy = self;
  v28 = dispatch_semaphore_create(0);
  v19 = v28;
  v20 = v11;
  [connection sendRequest:v20 withResponseHandler:v25];
  dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
  musicLibrary2 = [(CloudLibraryOperation *)self musicLibrary];
  v22 = MSVTCCIdentityForCurrentProcess();
  [musicLibrary2 setClientIdentity:v22];

  [v3 endTransaction];
  objc_autoreleasePoolPop(context);
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = JaliscoSetItemPropertyOperation;
  coderCopy = coder;
  [(CloudLibraryOperation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:self->_purchaseHistoryID forKey:{@"JaliscoSetItemPropertyOperationPurchaseHistoryIDKey", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_properties forKey:@"JaliscoSetItemPropertyOperationPropertiesKey"];
}

- (JaliscoSetItemPropertyOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = JaliscoSetItemPropertyOperation;
  v5 = [(CloudLibraryOperation *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_purchaseHistoryID = [coderCopy decodeInt64ForKey:@"JaliscoSetItemPropertyOperationPurchaseHistoryIDKey"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"JaliscoSetItemPropertyOperationPropertiesKey"];
    properties = v5->_properties;
    v5->_properties = v6;
  }

  return v5;
}

- (JaliscoSetItemPropertyOperation)initWithConfiguration:(id)configuration clientIdentity:(id)identity purchaseHistoryID:(unint64_t)d properties:(id)properties
{
  propertiesCopy = properties;
  v16.receiver = self;
  v16.super_class = JaliscoSetItemPropertyOperation;
  v11 = [(CloudLibraryOperation *)&v16 initWithConfiguration:configuration clientIdentity:identity];
  v12 = v11;
  if (v11)
  {
    v11->_purchaseHistoryID = d;
    v13 = [propertiesCopy copy];
    properties = v12->_properties;
    v12->_properties = v13;
  }

  return v12;
}

- (JaliscoSetItemPropertyOperation)initWithPurchaseHistoryID:(unint64_t)d properties:(id)properties
{
  propertiesCopy = properties;
  v7 = objc_opt_new();
  v8 = MSVTCCIdentityForCurrentProcess();
  v9 = [(JaliscoSetItemPropertyOperation *)self initWithConfiguration:v7 clientIdentity:v8 purchaseHistoryID:d properties:propertiesCopy];

  return v9;
}

@end