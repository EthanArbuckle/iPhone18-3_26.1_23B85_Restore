@interface _UIScrollViewAutomaticContentSizeConstraint
- (id)description;
@end

@implementation _UIScrollViewAutomaticContentSizeConstraint

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_UIScrollViewAutomaticContentSizeConstraint *)self firstAttribute];
  v7 = [(_UIScrollViewAutomaticContentSizeConstraint *)self firstItem];
  v8 = v7;
  if (v6 == 101)
  {
    [v7 _contentWidthVariable];
  }

  else
  {
    [v7 _contentHeightVariable];
  }
  v9 = ;
  [(_UIScrollViewAutomaticContentSizeConstraint *)self constant];
  v11 = [v3 stringWithFormat:@"<%@:%p %@ == %f>", v5, self, v9, v10];

  return v11;
}

@end