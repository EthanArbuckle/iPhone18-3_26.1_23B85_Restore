@interface WPTrackingDomain
- (WPTrackingDomain)initWithHost:(id)a3 owner:(id)a4 canBlock:(BOOL)a5;
@end

@implementation WPTrackingDomain

- (WPTrackingDomain)initWithHost:(id)a3 owner:(id)a4 canBlock:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = WPTrackingDomain;
  v11 = [(WPTrackingDomain *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_host, a3);
    objc_storeStrong(&v12->_owner, a4);
    v12->_canBlock = a5;
    v13 = v12;
  }

  return v12;
}

@end