@interface TRDeviceSetupLegacySetupActionAuthInfo
- (TRDeviceSetupLegacySetupActionAuthInfo)initWithHeaders:(id)headers body:(id)body;
@end

@implementation TRDeviceSetupLegacySetupActionAuthInfo

- (TRDeviceSetupLegacySetupActionAuthInfo)initWithHeaders:(id)headers body:(id)body
{
  headersCopy = headers;
  bodyCopy = body;
  v14.receiver = self;
  v14.super_class = TRDeviceSetupLegacySetupActionAuthInfo;
  v8 = [(TRDeviceSetupLegacySetupActionAuthInfo *)&v14 init];
  if (v8)
  {
    v9 = [headersCopy copy];
    headers = v8->_headers;
    v8->_headers = v9;

    v11 = [bodyCopy copy];
    body = v8->_body;
    v8->_body = v11;
  }

  return v8;
}

@end