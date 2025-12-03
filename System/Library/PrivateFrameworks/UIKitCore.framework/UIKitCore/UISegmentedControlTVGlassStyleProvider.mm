@interface UISegmentedControlTVGlassStyleProvider
+ (id)_tvDefaultTextColorFocused;
- (_UIViewMaterial)backgroundMaterial;
- (double)defaultHeightForControlSize:(int)size traitCollection:(id)collection;
- (id)createBackdropView;
- (id)fontColorForSegment:(id)segment enabled:(BOOL)enabled selected:(BOOL)selected state:(unint64_t)state;
- (id)highlightColorForSegmentSelected:(BOOL)selected highlighted:(BOOL)highlighted traitCollection:(id)collection tintColor:(id)color;
- (int64_t)selectedSegmentCompositingModeForTraitCollection:(id)collection;
@end

@implementation UISegmentedControlTVGlassStyleProvider

- (id)createBackdropView
{
  v3 = objc_opt_new();
  layer = [v3 layer];
  [layer setCornerRadius:*MEMORY[0x1E6979E40]];

  layer2 = [v3 layer];
  [layer2 setCornerCurve:*MEMORY[0x1E69796E8]];

  [v3 setClipsToBounds:1];
  objc_storeStrong(&self->_backdropView, v3);

  return v3;
}

- (double)defaultHeightForControlSize:(int)size traitCollection:(id)collection
{
  if (size != 1)
  {
    return 84.0;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = self;
  v7.super_class = UISegmentedControlTVGlassStyleProvider;
  [(UISegmentedControlTVStyleProvider *)&v7 defaultHeightForControlSize:*&size traitCollection:collection];
  return result;
}

- (id)fontColorForSegment:(id)segment enabled:(BOOL)enabled selected:(BOOL)selected state:(unint64_t)state
{
  selectedCopy = selected;
  enabledCopy = enabled;
  segmentCopy = segment;
  switch(state)
  {
    case 8uLL:
      goto LABEL_4;
    case 4uLL:
      _tvDefaultTextColorSelected = [objc_opt_class() _tvDefaultTextColorSelected];
      break;
    case 1uLL:
LABEL_4:
      _tvDefaultTextColorSelected = [objc_opt_class() _tvDefaultTextColorFocused];
      break;
    default:
      v14.receiver = self;
      v14.super_class = UISegmentedControlTVGlassStyleProvider;
      _tvDefaultTextColorSelected = [(UISegmentedControlTVStyleProvider *)&v14 fontColorForSegment:segmentCopy enabled:enabledCopy selected:selectedCopy state:state];
      break;
  }

  v12 = _tvDefaultTextColorSelected;

  return v12;
}

- (id)highlightColorForSegmentSelected:(BOOL)selected highlighted:(BOOL)highlighted traitCollection:(id)collection tintColor:(id)color
{
  selectedCopy = selected;
  userInterfaceStyle = [collection userInterfaceStyle];
  if (selectedCopy)
  {
    v8 = 1.0;
    if (userInterfaceStyle == 1)
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

- (int64_t)selectedSegmentCompositingModeForTraitCollection:(id)collection
{
  if ([collection userInterfaceStyle] == 1)
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