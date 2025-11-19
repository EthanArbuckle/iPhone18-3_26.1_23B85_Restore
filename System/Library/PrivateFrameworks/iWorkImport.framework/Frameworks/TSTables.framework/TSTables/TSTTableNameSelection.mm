@interface TSTTableNameSelection
+ (id)tableNameSelection;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSelection:(id)a3;
@end

@implementation TSTTableNameSelection

+ (id)tableNameSelection
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v4, v6, v5, v7, v8))
  {
    isEqualToSelection = objc_msgSend_isEqualToSelection_(self, v9, v4, v10, v11);
  }

  else
  {
    isEqualToSelection = 0;
  }

  return isEqualToSelection;
}

- (BOOL)isEqualToSelection:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  v3 = a3;
  objc_opt_class();
  v4 = TSUDynamicCast();

  v5 = v4 != 0;
  return v5;
}

@end