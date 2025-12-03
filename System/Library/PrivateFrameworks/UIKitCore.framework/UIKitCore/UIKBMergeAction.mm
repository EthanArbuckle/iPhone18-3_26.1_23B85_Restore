@interface UIKBMergeAction
+ (id)mergeActionWithOrderedKeyList:(id)list factors:(id)factors;
+ (id)mergeActionWithRemainingKeyName:(id)name disappearingKeyName:(id)keyName factors:(id)factors;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation UIKBMergeAction

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[UIKBMergeAction allocWithZone:?]];
  v5 = [(NSString *)self->_remainingKeyName copy];
  remainingKeyName = v4->_remainingKeyName;
  v4->_remainingKeyName = v5;

  v7 = [(NSString *)self->_disappearingKeyName copy];
  disappearingKeyName = v4->_disappearingKeyName;
  v4->_disappearingKeyName = v7;

  v9 = [(NSArray *)self->_orderedKeyList copy];
  orderedKeyList = v4->_orderedKeyList;
  v4->_orderedKeyList = v9;

  v11 = [(UIKBGeometry *)self->_factors copy];
  factors = v4->_factors;
  v4->_factors = v11;

  return v4;
}

+ (id)mergeActionWithRemainingKeyName:(id)name disappearingKeyName:(id)keyName factors:(id)factors
{
  nameCopy = name;
  keyNameCopy = keyName;
  factorsCopy = factors;
  v10 = objc_alloc_init(UIKBMergeAction);
  remainingKeyName = v10->_remainingKeyName;
  v10->_remainingKeyName = nameCopy;
  v12 = nameCopy;

  disappearingKeyName = v10->_disappearingKeyName;
  v10->_disappearingKeyName = keyNameCopy;
  v14 = keyNameCopy;

  factors = v10->_factors;
  v10->_factors = factorsCopy;

  return v10;
}

+ (id)mergeActionWithOrderedKeyList:(id)list factors:(id)factors
{
  listCopy = list;
  factorsCopy = factors;
  v7 = objc_alloc_init(UIKBMergeAction);
  orderedKeyList = v7->_orderedKeyList;
  v7->_orderedKeyList = listCopy;
  v9 = listCopy;

  factors = v7->_factors;
  v7->_factors = factorsCopy;

  return v7;
}

@end