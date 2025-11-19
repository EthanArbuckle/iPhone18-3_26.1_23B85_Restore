@interface TSTTableSortRule
+ (id)ruleWithBaseIndex:(TSUModelColumnOrRowIndex)a3 direction:(int)a4;
- (BOOL)isEqual:(id)a3;
- (TSTTableSortRule)initWithBaseIndex:(TSUModelColumnOrRowIndex)a3 direction:(int)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)ruleByChangingBaseIndexTo:(TSUModelColumnOrRowIndex)a3;
- (id)ruleByChangingDirectionTo:(int)a3;
- (void)encodeToArchive:(void *)a3;
@end

@implementation TSTTableSortRule

+ (id)ruleWithBaseIndex:(TSUModelColumnOrRowIndex)a3 direction:(int)a4
{
  v4 = *&a4;
  v6 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_initWithBaseIndex_direction_(v6, v7, a3._index, v4, v8);

  return v9;
}

- (TSTTableSortRule)initWithBaseIndex:(TSUModelColumnOrRowIndex)a3 direction:(int)a4
{
  v7.receiver = self;
  v7.super_class = TSTTableSortRule;
  result = [(TSTTableSortRule *)&v7 init];
  if (result)
  {
    result->_baseIndex = a3;
    result->_direction = a4;
  }

  return result;
}

- (id)ruleByChangingBaseIndexTo:(TSUModelColumnOrRowIndex)a3
{
  v5 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_initWithBaseIndex_direction_(v5, v6, a3._index, self->_direction, v7);

  return v8;
}

- (id)ruleByChangingDirectionTo:(int)a3
{
  v3 = *&a3;
  v5 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_initWithBaseIndex_direction_(v5, v6, self->_baseIndex._index, v3, v7);

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v9 = objc_msgSend_allocWithZone_(v5, v6, a3, v7, v8);
  index = self->_baseIndex._index;
  direction = self->_direction;

  return objc_msgSend_initWithBaseIndex_direction_(v9, v10, index, direction, v11);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();
  v10 = v5;
  v15 = v5 && objc_msgSend_baseIndex(v5, v6, v7, v8, v9) == self->_baseIndex._index && objc_msgSend_direction(v10, v11, v12, v13, v14) == self->_direction;

  return v15;
}

- (void)encodeToArchive:(void *)a3
{
  v3 = *(a3 + 4);
  *(a3 + 4) = v3 | 2;
  index = self->_baseIndex._index;
  v5 = self->_direction != 0;
  *(a3 + 4) = v3 | 3;
  *(a3 + 6) = index;
  *(a3 + 7) = v5;
}

@end