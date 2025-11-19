@interface UISegmentedControlTVGlassStyleProvider
+ (id)_tvDefaultTextColorFocused;
- (_UIViewMaterial)backgroundMaterial;
- (double)defaultHeightForControlSize:(int)a3 traitCollection:(id)a4;
- (id)createBackdropView;
- (id)fontColorForSegment:(id)a3 enabled:(BOOL)a4 selected:(BOOL)a5 state:(unint64_t)a6;
- (id)highlightColorForSegmentSelected:(BOOL)a3 highlighted:(BOOL)a4 traitCollection:(id)a5 tintColor:(id)a6;
- (int64_t)selectedSegmentCompositingModeForTraitCollection:(id)a3;
@end

@implementation UISegmentedControlTVGlassStyleProvider

- (id)createBackdropView
{
  v3 = objc_opt_new();
  v4 = [v3 layer];
  [v4 setCornerRadius:*MEMORY[0x1E6979E40]];

  v5 = [v3 layer];
  [v5 setCornerCurve:*MEMORY[0x1E69796E8]];

  [v3 setClipsToBounds:1];
  objc_storeStrong(&self->_backdropView, v3);

  return v3;
}

- (double)defaultHeightForControlSize:(int)a3 traitCollection:(id)a4
{
  if (a3 != 1)
  {
    return 84.0;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = self;
  v7.super_class = UISegmentedControlTVGlassStyleProvider;
  [(UISegmentedControlTVStyleProvider *)&v7 defaultHeightForControlSize:*&a3 traitCollection:a4];
  return result;
}

- (id)fontColorForSegment:(id)a3 enabled:(BOOL)a4 selected:(BOOL)a5 state:(unint64_t)a6
{
  v7 = a5;
  v8 = a4;
  v10 = a3;
  switch(a6)
  {
    case 8uLL:
      goto LABEL_4;
    case 4uLL:
      v11 = [objc_opt_class() _tvDefaultTextColorSelected];
      break;
    case 1uLL:
LABEL_4:
      v11 = [objc_opt_class() _tvDefaultTextColorFocused];
      break;
    default:
      v14.receiver = self;
      v14.super_class = UISegmentedControlTVGlassStyleProvider;
      v11 = [(UISegmentedControlTVStyleProvider *)&v14 fontColorForSegment:v10 enabled:v8 selected:v7 state:a6];
      break;
  }

  v12 = v11;

  return v12;
}

- (id)highlightColorForSegmentSelected:(BOOL)a3 highlighted:(BOOL)a4 traitCollection:(id)a5 tintColor:(id)a6
{
  v6 = a3;
  v7 = [a5 userInterfaceStyle];
  if (v6)
  {
    v8 = 1.0;
    if (v7 == 1)
    {
      v8 = 0.0;
    }

    v9 = [UIColor colorWithWhite:v8 alpha:0.2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)selectedSegmentCompositingModeForTraitCollection:(id)a3
{
  if ([a3 userInterfaceStyle] == 1)
  {
    return 23;
  }

  else
  {
    return 24;
  }
}

- (_UIViewMaterial)backgroundMaterial
{
  v2 = [[_UIViewGlass alloc] initWithVariant:9];

  return v2;
}

+ (id)_tvDefaultTextColorFocused
{
  v2 = +[UIColor labelColor];
  v3 = [UITraitCollection traitCollectionWithUserInterfaceStyle:1];
  v4 = [v2 resolvedColorWithTraitCollection:v3];

  return v4;
}

@end