@interface JaliscoHideItemOperation
- (JaliscoHideItemOperation)initWithCoder:(id)coder;
- (JaliscoHideItemOperation)initWithConfiguration:(id)configuration clientIdentity:(id)identity itemPurchaseHistoryIDs:(id)ds;
- (JaliscoHideItemOperation)initWithItemPurchaseHistoryIDs:(id)ds;
- (void)encodeWithCoder:(id)coder;
- (void)main;
@end

@implementation JaliscoHideItemOperation

- (void)main
{
  if ([(NSArray *)self->_itemPurchaseHistoryIDs count])
  {
    v23 = [NSString stringWithFormat:@"JaliscoHideItemOperation - (purchase_history_id count = %llu)", [(NSArray *)self->_itemPurchaseHistoryIDs count]];
    v3 = [[MSVXPCTransaction alloc] initWithName:v23];
    [v3 beginTransaction];
    musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
    clientIdentity = [(CloudLibraryOperation *)self clientIdentity];
    [musicLibrary setClientIdentity:clientIdentity];

    connection = [(CloudLibraryOperation *)self connection];
    v7 = +[NSMutableArray array];
    if ([(NSArray *)self->_itemPurchaseHistoryIDs count])
    {
      v8 = 0;
      v9 = ML3TrackPropertyHidden;
      do
      {
        v38 = v9;
        v39 = &__kCFBooleanTrue;
        v10 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        [v7 addObject:v10];

        ++v8;
      }

      while (v8 < [(NSArray *)self->_itemPurchaseHistoryIDs count]);
    }

    v11 = +[ICBulkSetItemPropertyRequest requestWithDatabaseID:itemIDs:properties:useLongIDs:](ICBulkSetItemPropertyRequest, "requestWithDatabaseID:itemIDs:properties:useLongIDs:", [connection databaseID], self->_itemPurchaseHistoryIDs, v7, 1);
    [v11 setVerificationInteractionLevel:2];
    [v11 setRequestPersonalizationStyle:2];
    v12 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync_Oversize");
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
      itemPurchaseHistoryIDs = self->_itemPurchaseHistoryIDs;
      *buf = 138544386;
      v29 = v14;
      v30 = 2048;
      v31 = v11;
      v32 = 2114;
      v33 = v15;
      v34 = 2114;
      v35 = action;
      v36 = 2114;
      v37 = itemPurchaseHistoryIDs;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Sending hide items request <%{public}@: %p method=%{public}@ action=%{public}@> for purchase history ids: %{public}@", buf, 0x34u);
    }

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000D1B00;
    v24[3] = &unk_1001DF440;
    v25 = v11;
    selfCopy = self;
    v27 = dispatch_semaphore_create(0);
    v18 = v27;
    v19 = v11;
    [connection sendRequest:v19 withResponseHandler:v24];
    dispatch_semaphore_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
    musicLibrary2 = [(CloudLibraryOperation *)self musicLibrary];
    v21 = MSVTCCIdentityForCurrentProcess();
    [musicLibrary2 setClientIdentity:v21];

    [v3 endTransaction];
  }

  else
  {
    v22 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "No item purchase history ids to delete.", buf, 2u);
    }

    [(CloudLibraryOperation *)self setStatus:1];
  }
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = JaliscoHideItemOperation;
  coderCopy = coder;
  [(CloudLibraryOperation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_itemPurchaseHistoryIDs forKey:{@"JaliscoHideItemOperationItemPurchaseHistoryIDsKey", v5.receiver, v5.super_class}];
}

- (JaliscoHideItemOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = JaliscoHideItemOperation;
  v5 = [(CloudLibraryOperation *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [NSSet setWithObjects:v6, objc_opt_class(), 0];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"JaliscoHideItemOperationItemPurchaseHistoryIDsKey"];
    v9 = [v8 copy];
    itemPurchaseHistoryIDs = v5->_itemPurchaseHistoryIDs;
    v5->_itemPurchaseHistoryIDs = v9;
  }

  return v5;
}

- (JaliscoHideItemOperation)initWithConfiguration:(id)configuration clientIdentity:(id)identity itemPurchaseHistoryIDs:(id)ds
{
  dsCopy = ds;
  v13.receiver = self;
  v13.super_class = JaliscoHideItemOperation;
  v9 = [(CloudLibraryOperation *)&v13 initWithConfiguration:configuration clientIdentity:identity];
  if (v9)
  {
    v10 = [dsCopy copy];
    itemPurchaseHistoryIDs = v9->_itemPurchaseHistoryIDs;
    v9->_itemPurchaseHistoryIDs = v10;
  }

  return v9;
}

- (JaliscoHideItemOperation)initWithItemPurchaseHistoryIDs:(id)ds
{
  dsCopy = ds;
  v5 = objc_opt_new();
  v6 = MSVTCCIdentityForCurrentProcess();
  v7 = [(JaliscoHideItemOperation *)self initWithConfiguration:v5 clientIdentity:v6 itemPurchaseHistoryIDs:dsCopy];

  return v7;
}

@end