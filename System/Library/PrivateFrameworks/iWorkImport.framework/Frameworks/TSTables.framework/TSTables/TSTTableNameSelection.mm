@interface TSTTableNameSelection
+ (id)tableNameSelection;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSelection:(id)selection;
@end

@implementation TSTTableNameSelection

+ (id)tableNameSelection
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5, v7, v8))
  {
    isEqualToSelection = objc_msgSend_isEqualToSelection_(self, v9, equalCopy, v10, v11);
  }

  else
  {
    isEqualToSelection = 0;
  }

  return isEqualToSelection;
}

- (BOOL)isEqualToSelection:(id)selection
{
  if (selection == self)
  {
    return 1;
  }

  selectionCopy = selection;
  objc_opt_class();
  v4 = TSUDynamicCast();

  v5 = v4 != 0;
  return v5;
}

@end