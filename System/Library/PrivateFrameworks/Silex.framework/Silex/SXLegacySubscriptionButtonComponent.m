@interface SXLegacySubscriptionButtonComponent
- (id)action;
@end

@implementation SXLegacySubscriptionButtonComponent

- (id)action
{
  v2 = objc_alloc_init(SXSubscribeAction);

  return v2;
}

@end