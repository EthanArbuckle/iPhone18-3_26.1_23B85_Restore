@interface UISegmentedControlTabStyleProvider
- (id)fontColorForSegment:(id)a3 enabled:(BOOL)a4 selected:(BOOL)a5 state:(unint64_t)a6;
@end

@implementation UISegmentedControlTabStyleProvider

- (id)fontColorForSegment:(id)a3 enabled:(BOOL)a4 selected:(BOOL)a5 state:(unint64_t)a6
{
  if (a5)
  {
    v6 = [a3 traitCollection];
    if ([v6 userInterfaceStyle] == 1)
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
    v7 = [UIColor secondaryLabelColor:a3];
  }

  return v7;
}

@end