@interface WebPolicyDecisionListener
- (id)_initWithTarget:(id)target action:(SEL)action;
- (void)_invalidate;
- (void)_usePolicy:(unsigned __int8)policy;
- (void)dealloc;
@end

@implementation WebPolicyDecisionListener

- (id)_initWithTarget:(id)target action:(SEL)action
{
  v9.receiver = self;
  v9.super_class = WebPolicyDecisionListener;
  result = [(WebPolicyDecisionListener *)&v9 init];
  if (result)
  {
    v7 = result;
    v8 = [[WebPolicyDecisionListenerPrivate alloc] initWithTarget:target action:action];
    result = v7;
    v7[1] = v8;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WebPolicyDecisionListener;
  [(WebPolicyDecisionListener *)&v3 dealloc];
}

- (void)_usePolicy:(unsigned __int8)policy
{
  v3 = self->_private;
  m_ptr = v3->target.m_ptr;
  if (m_ptr)
  {
    action = v3->action;
    if (action)
    {
      [m_ptr action];
    }

    else
    {
      [m_ptr 0];
    }
  }
}

- (void)_invalidate
{
  v2 = self->_private;
  m_ptr = v2->target.m_ptr;
  v2->target.m_ptr = 0;
  if (m_ptr)
  {
  }
}

@end