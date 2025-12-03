@interface WFParameterHostingView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)attachToParentViewController:(id)controller;
- (void)configureConfigurationUIViewWithParameter:(id)parameter state:(id)state processing:(BOOL)processing shouldFocus:(BOOL)focus variableProvider:(id)provider widgetFamily:(int64_t)family fillProvider:(id)fillProvider overridingCellBackgroundColor:(id)self0 overridingTintColor:(id)self1 updateBlock:(id)self2;
- (void)configureViewForRuntimeUIWithParameter:(id)parameter state:(id)state processing:(BOOL)processing shouldFocus:(BOOL)focus variableProvider:(id)provider updateBlock:(id)block;
- (void)detachFromParentViewController;
- (void)layoutSubviews;
@end

@implementation WFParameterHostingView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_274601CFC();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  sub_274601EA8();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)configureViewForRuntimeUIWithParameter:(id)parameter state:(id)state processing:(BOOL)processing shouldFocus:(BOOL)focus variableProvider:(id)provider updateBlock:(id)block
{
  focusCopy = focus;
  processingCopy = processing;
  v14 = _Block_copy(block);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  parameterCopy = parameter;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_274601F28(parameterCopy, state, processingCopy, focusCopy, provider, sub_274603918, v15);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)configureConfigurationUIViewWithParameter:(id)parameter state:(id)state processing:(BOOL)processing shouldFocus:(BOOL)focus variableProvider:(id)provider widgetFamily:(int64_t)family fillProvider:(id)fillProvider overridingCellBackgroundColor:(id)self0 overridingTintColor:(id)self1 updateBlock:(id)self2
{
  v18 = _Block_copy(block);
  if (fillProvider)
  {
    parameterCopy = parameter;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    colorCopy = color;
    tintColorCopy = tintColor;
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_27463C13C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v29, 0, sizeof(v29));
    parameterCopy2 = parameter;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    colorCopy2 = color;
    tintColorCopy2 = tintColor;
    selfCopy2 = self;
  }

  v27 = swift_allocObject();
  *(v27 + 16) = v18;
  sub_274602070(parameter, state, processing, focus, provider, family, v29, color, tintColor, sub_27460333C, v27);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_27440CB1C(v29, &unk_28094A230);
}

- (void)attachToParentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_274602F84(controller);
}

- (void)detachFromParentViewController
{
  selfCopy = self;
  sub_274602FF4();
}

@end