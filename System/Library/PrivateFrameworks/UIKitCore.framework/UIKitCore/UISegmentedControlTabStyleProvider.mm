@interface UISegmentedControlTabStyleProvider
- (id)fontColorForSegment:(id)segment enabled:(BOOL)enabled selected:(BOOL)selected state:(unint64_t)state;
@end

@implementation UISegmentedControlTabStyleProvider

- (id)fontColorForSegment:(id)segment enabled:(BOOL)enabled selected:(BOOL)selected state:(unint64_t)state
{
  if (selected)
  {
    traitCollection = [segment traitCollection];
    if ([traitCollection userInterfaceStyle] == 1)
    {
      +[UIColor tintColor];
    }

    else
    {
      +[UIColor labelColor];
    }
    v7 = ;
  }

  else
  {
    v7 = [UIColor secondaryLabelColor:segment];
  }

  return v7;
}

@end