@interface NSIndexPath(UIKitAdditions)
+ (id)indexPathForItem:()UIKitAdditions inSection:;
+ (id)indexPathForRow:()UIKitAdditions inSection:;
- (uint64_t)row;
@end

@implementation NSIndexPath(UIKitAdditions)

- (uint64_t)row
{
  if ([self length] != 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSIndexPath+UIKitAdditions.m" lineNumber:32 description:@"Invalid index path for use with UITableView. Index paths passed to table view must contain exactly two indices specifying the section and row. Please use the category on NSIndexPath in NSIndexPath+UIKitAdditions.h if possible."];
  }

  return [self indexAtPosition:1];
}

+ (id)indexPathForRow:()UIKitAdditions inSection:
{
  v6[2] = *MEMORY[0x1E69E9840];
  v6[0] = a4;
  v6[1] = a3;
  v4 = [objc_opt_class() indexPathWithIndexes:v6 length:2];

  return v4;
}

+ (id)indexPathForItem:()UIKitAdditions inSection:
{
  v6[2] = *MEMORY[0x1E69E9840];
  v6[0] = a4;
  v6[1] = a3;
  v4 = [objc_opt_class() indexPathWithIndexes:v6 length:2];

  return v4;
}

@end