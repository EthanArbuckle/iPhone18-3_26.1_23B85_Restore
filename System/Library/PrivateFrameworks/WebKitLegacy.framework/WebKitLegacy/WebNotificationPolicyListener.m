@interface WebNotificationPolicyListener
- (WebNotificationPolicyListener)initWithPermissionHandler:(void *)a3;
- (void)allow;
- (void)deny;
@end

@implementation WebNotificationPolicyListener

- (WebNotificationPolicyListener)initWithPermissionHandler:(void *)a3
{
  v8.receiver = self;
  v8.super_class = WebNotificationPolicyListener;
  result = [(WebNotificationPolicyListener *)&v8 init];
  if (result)
  {
    v5 = *a3;
    *a3 = 0;
    ptr = result->_permissionHandler.m_function.m_callableWrapper.__ptr_;
    result->_permissionHandler.m_function.m_callableWrapper.__ptr_ = v5;
    if (ptr)
    {
      v7 = result;
      (*(*ptr + 8))(ptr);
      return v7;
    }
  }

  return result;
}

- (void)allow
{
  ptr = self->_permissionHandler.m_function.m_callableWrapper.__ptr_;
  if (ptr)
  {
    self->_permissionHandler.m_function.m_callableWrapper.__ptr_ = 0;
    (*(*ptr + 16))(ptr, 2);
    v3 = *(*ptr + 8);

    v3(ptr);
  }
}

- (void)deny
{
  ptr = self->_permissionHandler.m_function.m_callableWrapper.__ptr_;
  if (ptr)
  {
    self->_permissionHandler.m_function.m_callableWrapper.__ptr_ = 0;
    (*(*ptr + 16))(ptr, 1);
    v3 = *(*ptr + 8);

    v3(ptr);
  }
}

@end