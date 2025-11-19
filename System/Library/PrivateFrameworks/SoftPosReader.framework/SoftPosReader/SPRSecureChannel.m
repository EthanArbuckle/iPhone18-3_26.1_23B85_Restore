@interface SPRSecureChannel
+ (id)secureChannelWithName:(id)a3 error:(id *)a4;
- (BOOL)startSessionAsyncWithRequest:(id)a3 delegate:(id)a4 error:(id *)a5;
- (SPRSecureChannel)init;
- (SPRSecureChannel)initWithName:(id)a3 error:(id *)a4;
- (id)startSessionWithRequest:(id)a3 error:(id *)a4;
@end

@implementation SPRSecureChannel

- (SPRSecureChannel)init
{
  v6 = objc_msgSend_shared(SPRPrimer, a2, v2, v3, v4);
  v10 = objc_msgSend_secureChannelAndReturnError_(v6, v7, 0, v8, v9);

  return v10;
}

- (SPRSecureChannel)initWithName:(id)a3 error:(id *)a4
{
  v7 = objc_msgSend_shared(SPRPrimer, a2, a3, a4, v4);
  v11 = objc_msgSend_secureChannelAndReturnError_(v7, v8, a4, v9, v10);

  return v11;
}

+ (id)secureChannelWithName:(id)a3 error:(id *)a4
{
  v6 = objc_msgSend_shared(SPRPrimer, a2, a3, a4, v4);
  v10 = objc_msgSend_secureChannelAndReturnError_(v6, v7, a4, v8, v9);

  return v10;
}

- (id)startSessionWithRequest:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CCAD38];
  v7 = a3;
  v12 = objc_msgSend_ephemeralSessionConfiguration(v6, v8, v9, v10, v11);
  v14 = objc_msgSend_startSessionWithRequest_configuration_error_(self, v13, v7, v12, a4);

  return v14;
}

- (BOOL)startSessionAsyncWithRequest:(id)a3 delegate:(id)a4 error:(id *)a5
{
  v8 = MEMORY[0x277CCAD38];
  v9 = a4;
  v10 = a3;
  v15 = objc_msgSend_ephemeralSessionConfiguration(v8, v11, v12, v13, v14);
  LOBYTE(a5) = objc_msgSend_startSessionAsyncWithRequest_configuration_delegate_error_(self, v16, v10, v15, v9, a5);

  return a5;
}

@end