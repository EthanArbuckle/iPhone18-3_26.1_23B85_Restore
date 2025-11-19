@interface _UISMutableTouchAuthenticationRecord
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _UISMutableTouchAuthenticationRecord

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_UISTouchAuthenticationRecord alloc];
  v5 = self;
  if (v4)
  {
    v6 = [(_UISTouchAuthenticationRecord *)v4 _init];
    v4 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_securityAnalysis, v5->super._securityAnalysis);
      v7 = [(NSString *)v5->super._hostBundleId copy];
      hostBundleId = v4->_hostBundleId;
      v4->_hostBundleId = v7;

      v9 = [(NSString *)v5->super._hostSDKVersion copy];
      hostSDKVersion = v4->_hostSDKVersion;
      v4->_hostSDKVersion = v9;

      v4->_hostIsInternal = v5->super._hostIsInternal;
      v11 = [(NSString *)v5->super._serviceBundleId copy];
      serviceBundleId = v4->_serviceBundleId;
      v4->_serviceBundleId = v11;

      v4->_serviceInstanceIdentifier = v5->super._serviceInstanceIdentifier;
    }
  }

  return v4;
}

@end