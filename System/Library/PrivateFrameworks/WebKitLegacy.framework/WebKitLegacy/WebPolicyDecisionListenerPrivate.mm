@interface WebPolicyDecisionListenerPrivate
- (WebPolicyDecisionListenerPrivate)initWithTarget:(id)target action:(SEL)action;
@end

@implementation WebPolicyDecisionListenerPrivate

- (WebPolicyDecisionListenerPrivate)initWithTarget:(id)target action:(SEL)action
{
  v11.receiver = self;
  v11.super_class = WebPolicyDecisionListenerPrivate;
  v6 = [(WebPolicyDecisionListenerPrivate *)&v11 init];
  if (v6)
  {
    if (target)
    {
      targetCopy = target;
    }

    m_ptr = v6->target.m_ptr;
    v6->target.m_ptr = target;
    if (m_ptr)
    {
    }

    if (action)
    {
      actionCopy = action;
    }

    else
    {
      actionCopy = 0;
    }

    v6->action = actionCopy;
  }

  return v6;
}

@end