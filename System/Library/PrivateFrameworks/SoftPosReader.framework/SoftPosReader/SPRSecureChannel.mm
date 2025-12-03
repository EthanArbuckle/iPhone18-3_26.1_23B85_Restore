@interface SPRSecureChannel
+ (id)secureChannelWithName:(id)name error:(id *)error;
- (BOOL)startSessionAsyncWithRequest:(id)request delegate:(id)delegate error:(id *)error;
- (SPRSecureChannel)init;
- (SPRSecureChannel)initWithName:(id)name error:(id *)error;
- (id)startSessionWithRequest:(id)request error:(id *)error;
@end

@implementation SPRSecureChannel

- (SPRSecureChannel)init
{
  v6 = objc_msgSend_shared(SPRPrimer, a2, v2, v3, v4);
  v10 = objc_msgSend_secureChannelAndReturnError_(v6, v7, 0, v8, v9);

  return v10;
}

- (SPRSecureChannel)initWithName:(id)name error:(id *)error
{
  v7 = objc_msgSend_shared(SPRPrimer, a2, name, error, v4);
  v11 = objc_msgSend_secureChannelAndReturnError_(v7, v8, error, v9, v10);

  return v11;
}

+ (id)secureChannelWithName:(id)name error:(id *)error
{
  v6 = objc_msgSend_shared(SPRPrimer, a2, name, error, v4);
  v10 = objc_msgSend_secureChannelAndReturnError_(v6, v7, error, v8, v9);

  return v10;
}

- (id)startSessionWithRequest:(id)request error:(id *)error
{
  v6 = MEMORY[0x277CCAD38];
  requestCopy = request;
  v12 = objc_msgSend_ephemeralSessionConfiguration(v6, v8, v9, v10, v11);
  v14 = objc_msgSend_startSessionWithRequest_configuration_error_(self, v13, requestCopy, v12, error);

  return v14;
}

- (BOOL)startSessionAsyncWithRequest:(id)request delegate:(id)delegate error:(id *)error
{
  v8 = MEMORY[0x277CCAD38];
  delegateCopy = delegate;
  requestCopy = request;
  v15 = objc_msgSend_ephemeralSessionConfiguration(v8, v11, v12, v13, v14);
  LOBYTE(error) = objc_msgSend_startSessionAsyncWithRequest_configuration_delegate_error_(self, v16, requestCopy, v15, delegateCopy, error);

  return error;
}

@end