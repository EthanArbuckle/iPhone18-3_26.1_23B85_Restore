@interface TFFeedbackFormViewSpecification
+ (UIEdgeInsets)formCellInsetsInTraitEnvironment:(id)environment;
@end

@implementation TFFeedbackFormViewSpecification

+ (UIEdgeInsets)formCellInsetsInTraitEnvironment:(id)environment
{
  traitCollection = [environment traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  v5 = 20.0;
  if (horizontalSizeClass != 2)
  {
    v5 = 16.0;
  }

  v6 = 0.0;
  v7 = 0.0;
  v8 = v5;
  result.right = v8;
  result.bottom = v7;
  result.left = v5;
  result.top = v6;
  return result;
}

@end