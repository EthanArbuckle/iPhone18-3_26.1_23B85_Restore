@interface WebPolicyDecisionListenerPrivate
- (WebPolicyDecisionListenerPrivate)initWithTarget:(id)a3 action:(SEL)a4;
@end

@implementation WebPolicyDecisionListenerPrivate

- (WebPolicyDecisionListenerPrivate)initWithTarget:(id)a3 action:(SEL)a4
{
  v11.receiver = self;
  v11.super_class = WebPolicyDecisionListenerPrivate;
  v6 = [(WebPolicyDecisionListenerPrivate *)&v11 init];
  if (v6)
  {
    if (a3)
    {
      v7 = a3;
    }

    m_ptr = v6->target.m_ptr;
    v6->target.m_ptr = a3;
    if (m_ptr)
    {
    }

    if (a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = 0;
    }

    v6->action = v9;
  }

  return v6;
}

@end