@interface _UIScrollViewAutomaticContentSizeConstraint
- (id)description;
@end

@implementation _UIScrollViewAutomaticContentSizeConstraint

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  firstAttribute = [(_UIScrollViewAutomaticContentSizeConstraint *)self firstAttribute];
  firstItem = [(_UIScrollViewAutomaticContentSizeConstraint *)self firstItem];
  v8 = firstItem;
  if (firstAttribute == 101)
  {
    [firstItem _contentWidthVariable];
  }

  else
  {
    [firstItem _contentHeightVariable];
  }
  v9 = ;
  [(_UIScrollViewAutomaticContentSizeConstraint *)self constant];
  v11 = [v3 stringWithFormat:@"<%@:%p %@ == %f>", v5, self, v9, v10];

  return v11;
}

@end