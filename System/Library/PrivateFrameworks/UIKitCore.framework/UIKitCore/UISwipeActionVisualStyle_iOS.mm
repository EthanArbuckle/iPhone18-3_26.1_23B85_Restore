@interface UISwipeActionVisualStyle_iOS
- (double)buttonCornerRadiusForStyle:(unint64_t)style view:(id)view;
- (double)interButtonPaddingForStyle:(unint64_t)style;
- (double)interitemButtonCornerRadiusForStyle:(unint64_t)style;
- (double)paddingToSwipeViewForStyle:(unint64_t)style;
@end

@implementation UISwipeActionVisualStyle_iOS

- (double)buttonCornerRadiusForStyle:(unint64_t)style view:(id)view
{
  traitCollection = [view traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];
  if (userInterfaceIdiom == 6)
  {
    v6 = 16.0;
  }

  else if (userInterfaceIdiom == 3)
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

- (double)interitemButtonCornerRadiusForStyle:(unint64_t)style
{
  result = 0.0;
  if (style == 2)
  {
    return 2.0;
  }

  return result;
}

- (double)paddingToSwipeViewForStyle:(unint64_t)style
{
  result = 0.0;
  if (style == 2)
  {
    return 8.0;
  }

  return result;
}

- (double)interButtonPaddingForStyle:(unint64_t)style
{
  result = 0.0;
  if (style == 2)
  {
    return 2.0;
  }

  return result;
}

@end