@interface UISwipeActionVisualStyle_iOS
- (double)buttonCornerRadiusForStyle:(unint64_t)a3 view:(id)a4;
- (double)interButtonPaddingForStyle:(unint64_t)a3;
- (double)interitemButtonCornerRadiusForStyle:(unint64_t)a3;
- (double)paddingToSwipeViewForStyle:(unint64_t)a3;
@end

@implementation UISwipeActionVisualStyle_iOS

- (double)buttonCornerRadiusForStyle:(unint64_t)a3 view:(id)a4
{
  v4 = [a4 traitCollection];
  v5 = [v4 userInterfaceIdiom];
  if (v5 == 6)
  {
    v6 = 16.0;
  }

  else if (v5 == 3)
  {
    v6 = 10.0;
  }

  else if (_UISolariumEnabled())
  {
    v6 = 26.0;
  }

  else
  {
    v6 = 10.0;
  }

  return v6;
}

- (double)interitemButtonCornerRadiusForStyle:(unint64_t)a3
{
  result = 0.0;
  if (a3 == 2)
  {
    return 2.0;
  }

  return result;
}

- (double)paddingToSwipeViewForStyle:(unint64_t)a3
{
  result = 0.0;
  if (a3 == 2)
  {
    return 8.0;
  }

  return result;
}

- (double)interButtonPaddingForStyle:(unint64_t)a3
{
  result = 0.0;
  if (a3 == 2)
  {
    return 2.0;
  }

  return result;
}

@end