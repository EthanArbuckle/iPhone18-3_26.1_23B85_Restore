@interface UISegmentedControlCarPlayGlassStyleProvider
- (id)fontColorForSegment:(id)a3 enabled:(BOOL)a4 selected:(BOOL)a5 state:(unint64_t)a6;
- (id)highlightColorForSegmentSelected:(BOOL)a3 highlighted:(BOOL)a4 traitCollection:(id)a5 tintColor:(id)a6;
@end

@implementation UISegmentedControlCarPlayGlassStyleProvider

- (id)fontColorForSegment:(id)a3 enabled:(BOOL)a4 selected:(BOOL)a5 state:(unint64_t)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a3;
  v9 = v8;
  if ((v6 & 8) != 0)
  {
    v11 = +[UIColor _carSystemFocusLabelColor];
  }

  else
  {
    if (v7)
    {
      v10 = [v8 traitCollection];
      if ([v10 userInterfaceStyle] == 2)
      {
        +[UIColor whiteColor];
      }

      else
      {
        +[UIColor blackColor];
      }
      v12 = ;

      goto LABEL_10;
    }

    v11 = +[UIColor labelColor];
  }

  v12 = v11;
LABEL_10:

  return v12;
}

- (id)highlightColorForSegmentSelected:(BOOL)a3 highlighted:(BOOL)a4 traitCollection:(id)a5 tintColor:(id)a6
{
  v7 = a4;
  v8 = a3;
  v9 = a5;
  v10 = a6;
  if (v7)
  {
    v11 = +[UIColor _carSystemFocusColor];
LABEL_3:
    v12 = v11;
    goto LABEL_9;
  }

  if (v8)
  {
    if ([v9 userInterfaceStyle] == 2)
    {
      +[UIColor secondarySystemFillColor];
    }

    else
    {
      +[UIColor whiteColor];
    }
    v11 = ;
    goto LABEL_3;
  }

  v12 = 0;
LABEL_9:

  return v12;
}

@end