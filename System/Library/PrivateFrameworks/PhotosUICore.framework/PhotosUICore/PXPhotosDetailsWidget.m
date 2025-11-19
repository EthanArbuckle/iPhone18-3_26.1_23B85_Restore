@interface PXPhotosDetailsWidget
- (PXPhotosDetailsContext)context;
- (PXPhotosDetailsWidget)init;
- (PXWidgetDelegate)widgetDelegate;
- (PXWidgetSpec)spec;
- (UIView)contentView;
- (UIViewController)contentHostedViewController;
- (double)preferredContentHeightForWidth:(double)a3;
- (double)preferredContentWidthForHorizontalLayoutWithAvailableWidth:(double)a3;
- (void)contentViewDidDisappear;
- (void)setContentHostedViewController:(id)a3;
- (void)setContext:(id)a3;
- (void)setSpec:(id)a3;
@end

@implementation PXPhotosDetailsWidget

- (PXWidgetDelegate)widgetDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (PXPhotosDetailsContext)context
{
  v2 = *((*MEMORY[0x1E69E7D40] & *self) + 0x90);
  v3 = self;
  result = v2();
  if (result)
  {
    v5 = result;

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)setContext:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1A4110FA4(v4);
}

- (PXWidgetSpec)spec
{
  v2 = *((*MEMORY[0x1E69E7D40] & *self) + 0xF0);
  v3 = self;
  result = v2();
  if (result)
  {
    v5 = result;

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)setSpec:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1A4111958(v4);
}

- (UIViewController)contentHostedViewController
{
  v2 = self;
  v3 = sub_1A4111D28();

  return v3;
}

- (void)setContentHostedViewController:(id)a3
{
  v4 = *(self + OBJC_IVAR___PXPhotosDetailsWidget____lazy_storage___contentHostedViewController);
  *(self + OBJC_IVAR___PXPhotosDetailsWidget____lazy_storage___contentHostedViewController) = a3;
  v5 = a3;
  v6 = self;
  sub_1A3C327F4(v4);
}

- (double)preferredContentHeightForWidth:(double)a3
{
  v4 = self;
  v5 = sub_1A4111FF8(a3);

  return v5;
}

- (double)preferredContentWidthForHorizontalLayoutWithAvailableWidth:(double)a3
{
  v3 = *((*MEMORY[0x1E69E7D40] & *self) + 0x108);
  v4 = self;
  v5 = v3();
  v6 = [v5 contentSizeCategory];

  [objc_opt_self() dynamicTextScaleFactorForCategory_];
  v8 = v7;

  return v8 * 362.0;
}

- (UIView)contentView
{
  v2 = *((*MEMORY[0x1E69E7D40] & *self) + 0x128);
  v3 = self;
  v4 = v2();
  if (!v4 || (v5 = v4, v6 = [v4 view], v5, !v6))
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  }

  return v6;
}

- (void)contentViewDidDisappear
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *self) + 0xD8);
  v6 = self;
  v4 = v3();
  if (v4)
  {
    v5 = v4;
    (*((*v2 & *v4) + 0x148))();
  }
}

- (PXPhotosDetailsWidget)init
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___PXPhotosDetailsWidget__context) = 0;
  *(self + OBJC_IVAR___PXPhotosDetailsWidget__viewModel) = 0;
  *(self + OBJC_IVAR___PXPhotosDetailsWidget__spec) = 0;
  *(self + OBJC_IVAR___PXPhotosDetailsWidget____lazy_storage___contentHostedViewController) = 1;
  v4.receiver = self;
  v4.super_class = type metadata accessor for PhotosDetailsWidget();
  return [(PXPhotosDetailsWidget *)&v4 init];
}

@end