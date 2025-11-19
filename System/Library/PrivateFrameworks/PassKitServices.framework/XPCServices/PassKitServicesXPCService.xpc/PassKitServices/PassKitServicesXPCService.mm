@interface PassKitServicesXPCService
- (void)imageDataForPassUniqueIdentifier:(id)a3 size:(CGSize)a4 completion:(id)a5;
- (void)imageDataForRecurringPaymentMemo:(id)a3 size:(CGSize)a4 completion:(id)a5;
- (void)imageDataForTransaction:(id)a3 size:(CGSize)a4 completion:(id)a5;
@end

@implementation PassKitServicesXPCService

- (void)imageDataForTransaction:(id)a3 size:(CGSize)a4 completion:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a3;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v9 identifier];
    *buf = 138412290;
    v30 = v13;
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
  v18 = v9;
  v27 = v18;
  v19 = v10;
  v28 = v19;
  v20 = [(PKPaymentTransactionIconGenerator *)iconGenerator iconForTransaction:v18 size:1 ignoreLogoURL:0 requestType:&v23 iconHandler:width, height];
  if (v20)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v18 identifier];
      *buf = 138412546;
      v30 = v20;
      v31 = 2112;
      v32 = v21;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Returning %@ for transaction %@.", buf, 0x16u);
    }

    v22 = UIImagePNGRepresentation(v20);
    (*(v19 + 2))(v19, v22);
  }

  objc_autoreleasePoolPop(v11);
}

- (void)imageDataForPassUniqueIdentifier:(id)a3 size:(CGSize)a4 completion:(id)a5
{
  height = a4.height;
  width = a4.width;
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    if ([v8 length])
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000011A8;
      v10[3] = &unk_100004160;
      v11 = v8;
      v13 = width;
      v14 = height;
      v12 = v9;
      dispatch_async(&_dispatch_main_q, v10);
    }

    else
    {
      (*(v9 + 2))(v9, 0);
    }
  }
}

- (void)imageDataForRecurringPaymentMemo:(id)a3 size:(CGSize)a4 completion:(id)a5
{
  height = a4.height;
  width = a4.width;
  v8 = a3;
  v9 = a5;
  if (v9)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000141C;
    v10[3] = &unk_100004160;
    v11 = v8;
    v13 = width;
    v14 = height;
    v12 = v9;
    dispatch_async(&_dispatch_main_q, v10);
  }
}

@end