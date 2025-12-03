@interface PassKitServicesXPCService
- (void)imageDataForPassUniqueIdentifier:(id)identifier size:(CGSize)size completion:(id)completion;
- (void)imageDataForRecurringPaymentMemo:(id)memo size:(CGSize)size completion:(id)completion;
- (void)imageDataForTransaction:(id)transaction size:(CGSize)size completion:(id)completion;
@end

@implementation PassKitServicesXPCService

- (void)imageDataForTransaction:(id)transaction size:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  transactionCopy = transaction;
  completionCopy = completion;
  v11 = objc_autoreleasePoolPush();
  v12 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [transactionCopy identifier];
    *buf = 138412290;
    v30 = identifier;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Getting icon for transaction %@.", buf, 0xCu);
  }

  iconGenerator = self->_iconGenerator;
  if (!iconGenerator)
  {
    v15 = [PKPaymentTransactionIconGenerator alloc];
    PKScreenScale();
    v16 = [v15 initWithCache:0 scale:?];
    v17 = self->_iconGenerator;
    self->_iconGenerator = v16;

    iconGenerator = self->_iconGenerator;
  }

  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_100000F80;
  v26 = &unk_100004138;
  v18 = transactionCopy;
  v27 = v18;
  v19 = completionCopy;
  v28 = v19;
  height = [(PKPaymentTransactionIconGenerator *)iconGenerator iconForTransaction:v18 size:1 ignoreLogoURL:0 requestType:&v23 iconHandler:width, height];
  if (height)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      identifier2 = [v18 identifier];
      *buf = 138412546;
      v30 = height;
      v31 = 2112;
      v32 = identifier2;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Returning %@ for transaction %@.", buf, 0x16u);
    }

    v22 = UIImagePNGRepresentation(height);
    (*(v19 + 2))(v19, v22);
  }

  objc_autoreleasePoolPop(v11);
}

- (void)imageDataForPassUniqueIdentifier:(id)identifier size:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  identifierCopy = identifier;
  completionCopy = completion;
  if (completionCopy)
  {
    if ([identifierCopy length])
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000011A8;
      v10[3] = &unk_100004160;
      v11 = identifierCopy;
      v13 = width;
      v14 = height;
      v12 = completionCopy;
      dispatch_async(&_dispatch_main_q, v10);
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

- (void)imageDataForRecurringPaymentMemo:(id)memo size:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  memoCopy = memo;
  completionCopy = completion;
  if (completionCopy)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000141C;
    v10[3] = &unk_100004160;
    v11 = memoCopy;
    v13 = width;
    v14 = height;
    v12 = completionCopy;
    dispatch_async(&_dispatch_main_q, v10);
  }
}

@end