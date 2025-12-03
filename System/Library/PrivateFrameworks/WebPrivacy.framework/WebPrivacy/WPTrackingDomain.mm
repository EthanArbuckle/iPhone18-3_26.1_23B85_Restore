@interface WPTrackingDomain
- (WPTrackingDomain)initWithHost:(id)host owner:(id)owner canBlock:(BOOL)block;
@end

@implementation WPTrackingDomain

- (WPTrackingDomain)initWithHost:(id)host owner:(id)owner canBlock:(BOOL)block
{
  hostCopy = host;
  ownerCopy = owner;
  v15.receiver = self;
  v15.super_class = WPTrackingDomain;
  v11 = [(WPTrackingDomain *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_host, host);
    objc_storeStrong(&v12->_owner, owner);
    v12->_canBlock = block;
    v13 = v12;
  }

  return v12;
}

@end