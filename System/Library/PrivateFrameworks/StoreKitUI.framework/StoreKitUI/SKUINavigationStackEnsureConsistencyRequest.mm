@interface SKUINavigationStackEnsureConsistencyRequest
- (BOOL)isEqual:(id)equal;
- (SKUINavigationStackEnsureConsistencyRequest)initWithNavigationControllerOperation:(int64_t)operation operationDidComplete:(BOOL)complete;
@end

@implementation SKUINavigationStackEnsureConsistencyRequest

- (SKUINavigationStackEnsureConsistencyRequest)initWithNavigationControllerOperation:(int64_t)operation operationDidComplete:(BOOL)complete
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
    result->_navigationControllerOperation = operation;
    result->_operationDidComplete = complete;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_navigationControllerOperation == equalCopy->_navigationControllerOperation && self->_operationDidComplete == equalCopy->_operationDidComplete;
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