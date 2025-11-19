@interface TRDeviceSetupLegacySetupActionAuthInfo
- (TRDeviceSetupLegacySetupActionAuthInfo)initWithHeaders:(id)a3 body:(id)a4;
@end

@implementation TRDeviceSetupLegacySetupActionAuthInfo

- (TRDeviceSetupLegacySetupActionAuthInfo)initWithHeaders:(id)a3 body:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = TRDeviceSetupLegacySetupActionAuthInfo;
  v8 = [(TRDeviceSetupLegacySetupActionAuthInfo *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    headers = v8->_headers;
    v8->_headers = v9;

    v11 = [v7 copy];
    body = v8->_body;
    v8->_body = v11;
  }

  return v8;
}

@end