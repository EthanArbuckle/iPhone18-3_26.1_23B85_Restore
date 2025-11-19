@interface PUSlideshowSettingsViewControllerSpec
- (UIColor)cellBackgroundColor;
- (UIColor)tableViewBackgroundColor;
- (UIView)tableViewHeaderView;
- (id)currentChange;
- (unint64_t)rectEdgeForExtendedLayout;
@end

@implementation PUSlideshowSettingsViewControllerSpec

- (unint64_t)rectEdgeForExtendedLayout
{
  if ([(PUSlideshowSettingsViewControllerSpec *)self shouldUseBlurredBackground])
  {
    return 0;
  }

  else
  {
    return 15;
  }
}

- (UIView)tableViewHeaderView
{
  if ([(PUSlideshowSettingsViewControllerSpec *)self shouldUseBlurredBackground])
  {
    v3 = 0;
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    [(PUViewControllerSpec *)self layoutReferenceSize];
    v3 = [v4 initWithFrame:{0.0, 0.0, v5, 44.0}];
  }

  return v3;
}

- (UIColor)tableViewBackgroundColor
{
  if ([(PUSlideshowSettingsViewControllerSpec *)self shouldUseBlurredBackground])
  {
    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
  }

  return v2;
}

- (UIColor)cellBackgroundColor
{
  if ([(PUSlideshowSettingsViewControllerSpec *)self shouldUseBlurredBackground])
  {
    [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  }
  v2 = ;

  return v2;
}

- (id)currentChange
{
  v4.receiver = self;
  v4.super_class = PUSlideshowSettingsViewControllerSpec;
  v2 = [(PUViewControllerSpec *)&v4 currentChange];

  return v2;
}

@end