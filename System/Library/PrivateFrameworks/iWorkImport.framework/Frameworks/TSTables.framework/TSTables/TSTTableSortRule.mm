@interface TSTTableSortRule
+ (id)ruleWithBaseIndex:(TSUModelColumnOrRowIndex)index direction:(int)direction;
- (BOOL)isEqual:(id)equal;
- (TSTTableSortRule)initWithBaseIndex:(TSUModelColumnOrRowIndex)index direction:(int)direction;
- (id)copyWithZone:(_NSZone *)zone;
- (id)ruleByChangingBaseIndexTo:(TSUModelColumnOrRowIndex)to;
- (id)ruleByChangingDirectionTo:(int)to;
- (void)encodeToArchive:(void *)archive;
@end

@implementation TSTTableSortRule

+ (id)ruleWithBaseIndex:(TSUModelColumnOrRowIndex)index direction:(int)direction
{
  v4 = *&direction;
  v6 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_initWithBaseIndex_direction_(v6, v7, index._index, v4, v8);

  return v9;
}

- (TSTTableSortRule)initWithBaseIndex:(TSUModelColumnOrRowIndex)index direction:(int)direction
{
  v7.receiver = self;
  v7.super_class = TSTTableSortRule;
  result = [(TSTTableSortRule *)&v7 init];
  if (result)
  {
    result->_baseIndex = index;
    result->_direction = direction;
  }

  return result;
}

- (id)ruleByChangingBaseIndexTo:(TSUModelColumnOrRowIndex)to
{
  v5 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_initWithBaseIndex_direction_(v5, v6, to._index, self->_direction, v7);

  return v8;
}

- (id)ruleByChangingDirectionTo:(int)to
{
  v3 = *&to;
  v5 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_initWithBaseIndex_direction_(v5, v6, self->_baseIndex._index, v3, v7);

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v9 = objc_msgSend_allocWithZone_(v5, v6, zone, v7, v8);
  index = self->_baseIndex._index;
  direction = self->_direction;

  return objc_msgSend_initWithBaseIndex_direction_(v9, v10, index, direction, v11);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = TSUDynamicCast();
  v10 = v5;
  v15 = v5 && objc_msgSend_baseIndex(v5, v6, v7, v8, v9) == self->_baseIndex._index && objc_msgSend_direction(v10, v11, v12, v13, v14) == self->_direction;

  return v15;
}

- (void)encodeToArchive:(void *)archive
{
  v3 = *(archive + 4);
  *(archive + 4) = v3 | 2;
  index = self->_baseIndex._index;
  v5 = self->_direction != 0;
  *(archive + 4) = v3 | 3;
  *(archive + 6) = index;
  *(archive + 7) = v5;
}

@end