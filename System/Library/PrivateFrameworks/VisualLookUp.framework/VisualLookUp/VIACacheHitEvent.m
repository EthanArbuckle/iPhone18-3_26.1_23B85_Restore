@interface VIACacheHitEvent
- (VIACacheHitEvent)initWithContext:(id)a3;
- (id)feedback;
@end

@implementation VIACacheHitEvent

- (VIACacheHitEvent)initWithContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VIACacheHitEvent;
  v6 = [(VIACacheHitEvent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, a3);
  }

  return v7;
}

- (id)feedback
{
  v2 = objc_alloc_init(VIACacheHitEventFeedback);

  return v2;
}

@end