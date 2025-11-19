@interface SKUINavigationStackEnsureConsistencyRequest
- (BOOL)isEqual:(id)a3;
- (SKUINavigationStackEnsureConsistencyRequest)initWithNavigationControllerOperation:(int64_t)a3 operationDidComplete:(BOOL)a4;
@end

@implementation SKUINavigationStackEnsureConsistencyRequest

- (SKUINavigationStackEnsureConsistencyRequest)initWithNavigationControllerOperation:(int64_t)a3 operationDidComplete:(BOOL)a4
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUINavigationStackEnsureConsistencyRequest initWithNavigationControllerOperation:operationDidComplete:];
  }

  v8.receiver = self;
  v8.super_class = SKUINavigationStackEnsureConsistencyRequest;
  result = [(SKUINavigationStackEnsureConsistencyRequest *)&v8 init];
  if (result)
  {
    result->_navigationControllerOperation = a3;
    result->_operationDidComplete = a4;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_navigationControllerOperation == v4->_navigationControllerOperation && self->_operationDidComplete == v4->_operationDidComplete;
  }

  return v5;
}

- (void)initWithNavigationControllerOperation:operationDidComplete:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUINavigationStackEnsureConsistencyRequest initWithNavigationControllerOperation:operationDidComplete:]";
}

@end