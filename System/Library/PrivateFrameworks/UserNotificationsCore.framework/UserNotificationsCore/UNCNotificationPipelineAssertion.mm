@interface UNCNotificationPipelineAssertion
- (UNCNotificationPipelineAssertion)init;
@end

@implementation UNCNotificationPipelineAssertion

- (UNCNotificationPipelineAssertion)init
{
  v6.receiver = self;
  v6.super_class = UNCNotificationPipelineAssertion;
  v2 = [(UNCNotificationPipelineAssertion *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(UNCNotificationPipelineAssertionImpl);
    assertion = v2->_assertion;
    v2->_assertion = v3;
  }

  return v2;
}

@end