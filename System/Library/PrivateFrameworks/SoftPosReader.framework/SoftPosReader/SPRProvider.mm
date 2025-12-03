@interface SPRProvider
+ (SPRProvider)shared;
- (id)makeConfiguratorAndReturnError:(id *)error;
- (id)makeMonitorAndReturnError:(id *)error;
- (id)makeORReaderAndReturnError:(id *)error;
- (id)makePINControllerAndReturnError:(id *)error;
- (id)makeReaderAndReturnError:(id *)error;
@end

@implementation SPRProvider

+ (SPRProvider)shared
{
  v5 = objc_msgSend_shared(SPRPrimer, a2, v2, v3, v4);
  v10 = objc_msgSend_getProvider(v5, v6, v7, v8, v9);

  return v10;
}

- (id)makeConfiguratorAndReturnError:(id *)error
{
  v5 = [SPRConfigurator alloc];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_26A9483F8;
  v15[3] = &unk_279CA5C10;
  v15[4] = self;
  v9 = objc_msgSend_initWithConnector_(v5, v6, v15, v7, v8);
  v13 = objc_msgSend_connectAndReturnError_(v9, v10, error, v11, v12);

  return v13;
}

- (id)makeMonitorAndReturnError:(id *)error
{
  v5 = [SPRMonitor alloc];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_26A94873C;
  v15[3] = &unk_279CA5C60;
  v15[4] = self;
  v9 = objc_msgSend_initWithConnector_(v5, v6, v15, v7, v8);
  v13 = objc_msgSend_connectAndReturnError_(v9, v10, error, v11, v12);

  return v13;
}

- (id)makeReaderAndReturnError:(id *)error
{
  v5 = [SPRReader alloc];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_26A948A68;
  v15[3] = &unk_279CA5CB0;
  v15[4] = self;
  v9 = objc_msgSend_initWithConnector_(v5, v6, v15, v7, v8);
  v13 = objc_msgSend_connectAndReturnError_(v9, v10, error, v11, v12);

  return v13;
}

- (id)makePINControllerAndReturnError:(id *)error
{
  v5 = [SPRPINController alloc];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_26A948D94;
  v15[3] = &unk_279CA5D00;
  v15[4] = self;
  v9 = objc_msgSend_initWithConnector_(v5, v6, v15, v7, v8);
  v13 = objc_msgSend_connectAndReturnError_(v9, v10, error, v11, v12);

  return v13;
}

- (id)makeORReaderAndReturnError:(id *)error
{
  v4 = [ORReader alloc];
  IsProduction_error = objc_msgSend_initWithIsProduction_error_(v4, v5, 1, error, v6);

  return IsProduction_error;
}

@end