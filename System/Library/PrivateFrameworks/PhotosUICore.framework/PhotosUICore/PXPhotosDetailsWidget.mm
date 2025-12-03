@interface PXPhotosDetailsWidget
- (PXPhotosDetailsContext)context;
- (PXPhotosDetailsWidget)init;
- (PXWidgetDelegate)widgetDelegate;
- (PXWidgetSpec)spec;
- (UIView)contentView;
- (UIViewController)contentHostedViewController;
- (double)preferredContentHeightForWidth:(double)width;
- (double)preferredContentWidthForHorizontalLayoutWithAvailableWidth:(double)width;
- (void)contentViewDidDisappear;
- (void)setContentHostedViewController:(id)controller;
- (void)setContext:(id)context;
- (void)setSpec:(id)spec;
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
  selfCopy = self;
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

- (void)setContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_1A4110FA4(contextCopy);
}

- (PXWidgetSpec)spec
{
  v2 = *((*MEMORY[0x1E69E7D40] & *self) + 0xF0);
  selfCopy = self;
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

- (void)setSpec:(id)spec
{
  specCopy = spec;
  selfCopy = self;
  sub_1A4111958(specCopy);
}

- (UIViewController)contentHostedViewController
{
  selfCopy = self;
  v3 = sub_1A4111D28();

  return v3;
}

- (void)setContentHostedViewController:(id)controller
{
  v4 = *(self + OBJC_IVAR___PXPhotosDetailsWidget____lazy_storage___contentHostedViewController);
  *(self + OBJC_IVAR___PXPhotosDetailsWidget____lazy_storage___contentHostedViewController) = controller;
  controllerCopy = controller;
  selfCopy = self;
  sub_1A3C327F4(v4);
}

- (double)preferredContentHeightForWidth:(double)width
{
  selfCopy = self;
  v5 = sub_1A4111FF8(width);

  return v5;
}

- (double)preferredContentWidthForHorizontalLayoutWithAvailableWidth:(double)width
{
  v3 = *((*MEMORY[0x1E69E7D40] & *self) + 0x108);
  selfCopy = self;
  v5 = v3();
  contentSizeCategory = [v5 contentSizeCategory];

  [objc_opt_self() dynamicTextScaleFactorForCategory_];
  v8 = v7;

  return v8 * 362.0;
}

- (UIView)contentView
{
  v2 = *((*MEMORY[0x1E69E7D40] & *self) + 0x128);
  selfCopy = self;
  v4 = v2();
  if (!v4 || (v5 = v4, initWithFrame_ = [v4 view], v5, !initWithFrame_))
  {
    initWithFrame_ = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  }

  return initWithFrame_;
}

- (void)contentViewDidDisappear
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *self) + 0xD8);
  selfCopy = self;
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