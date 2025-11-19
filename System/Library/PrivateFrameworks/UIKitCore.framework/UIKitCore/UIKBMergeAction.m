@interface UIKBMergeAction
+ (id)mergeActionWithOrderedKeyList:(id)a3 factors:(id)a4;
+ (id)mergeActionWithRemainingKeyName:(id)a3 disappearingKeyName:(id)a4 factors:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation UIKBMergeAction

- (id)copyWithZone:(_NSZone *)a3
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

+ (id)mergeActionWithRemainingKeyName:(id)a3 disappearingKeyName:(id)a4 factors:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(UIKBMergeAction);
  remainingKeyName = v10->_remainingKeyName;
  v10->_remainingKeyName = v7;
  v12 = v7;

  disappearingKeyName = v10->_disappearingKeyName;
  v10->_disappearingKeyName = v8;
  v14 = v8;

  factors = v10->_factors;
  v10->_factors = v9;

  return v10;
}

+ (id)mergeActionWithOrderedKeyList:(id)a3 factors:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(UIKBMergeAction);
  orderedKeyList = v7->_orderedKeyList;
  v7->_orderedKeyList = v5;
  v9 = v5;

  factors = v7->_factors;
  v7->_factors = v6;

  return v7;
}

@end