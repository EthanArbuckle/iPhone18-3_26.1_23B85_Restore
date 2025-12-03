@interface PCStatusConditionRateLimitedObject
- (id)init:(id)init at:(id)at kind:(int64_t)kind;
@end

@implementation PCStatusConditionRateLimitedObject

- (id)init:(id)init at:(id)at kind:(int64_t)kind
{
  initCopy = init;
  atCopy = at;
  v14.receiver = self;
  v14.super_class = PCStatusConditionRateLimitedObject;
  v11 = [(PCStatusConditionRateLimitedObject *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_statusCondition, init);
    objc_storeStrong(&v12->_setTime, at);
    v12->_operation = kind;
  }

  return v12;
}

@end