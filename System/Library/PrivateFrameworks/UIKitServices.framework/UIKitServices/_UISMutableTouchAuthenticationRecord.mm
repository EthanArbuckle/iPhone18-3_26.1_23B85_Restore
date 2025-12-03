@interface _UISMutableTouchAuthenticationRecord
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _UISMutableTouchAuthenticationRecord

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_UISTouchAuthenticationRecord alloc];
  selfCopy = self;
  if (v4)
  {
    _init = [(_UISTouchAuthenticationRecord *)v4 _init];
    v4 = _init;
    if (_init)
    {
      objc_storeStrong(&_init->_securityAnalysis, selfCopy->super._securityAnalysis);
      v7 = [(NSString *)selfCopy->super._hostBundleId copy];
      hostBundleId = v4->_hostBundleId;
      v4->_hostBundleId = v7;

      v9 = [(NSString *)selfCopy->super._hostSDKVersion copy];
      hostSDKVersion = v4->_hostSDKVersion;
      v4->_hostSDKVersion = v9;

      v4->_hostIsInternal = selfCopy->super._hostIsInternal;
      v11 = [(NSString *)selfCopy->super._serviceBundleId copy];
      serviceBundleId = v4->_serviceBundleId;
      v4->_serviceBundleId = v11;

      v4->_serviceInstanceIdentifier = selfCopy->super._serviceInstanceIdentifier;
    }
  }

  return v4;
}

@end