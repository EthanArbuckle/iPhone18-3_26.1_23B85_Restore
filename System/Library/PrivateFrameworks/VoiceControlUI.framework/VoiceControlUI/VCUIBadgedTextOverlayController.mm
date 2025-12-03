@interface VCUIBadgedTextOverlayController
- (CGRect)focusRect;
- (CGSize)preferredContentSize;
- (VCUIBadgedTextOverlayController)init;
- (void)viewDidLoad;
@end

@implementation VCUIBadgedTextOverlayController

- (VCUIBadgedTextOverlayController)init
{
  v6.receiver = self;
  v6.super_class = VCUIBadgedTextOverlayController;
  v2 = [(VCUIBadgedTextOverlayController *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    swiftVC = v2->_swiftVC;
    v2->_swiftVC = v3;
  }

  return v2;
}

- (void)viewDidLoad
{
  v30[4] = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = VCUIBadgedTextOverlayController;
  [(VCUIBadgedTextOverlayController *)&v29 viewDidLoad];
  [(VCUIBadgedTextOverlayController *)self addChildViewController:self->_swiftVC];
  clearColor = [MEMORY[0x277D75348] clearColor];
  view = [(VCUIBadgedTextOverlayController_Swift *)self->_swiftVC view];
  [view setBackgroundColor:clearColor];

  view2 = [(VCUIBadgedTextOverlayController *)self view];
  view3 = [(VCUIBadgedTextOverlayController_Swift *)self->_swiftVC view];
  [view2 addSubview:view3];

  v19 = MEMORY[0x277CCAAD0];
  view4 = [(VCUIBadgedTextOverlayController_Swift *)self->_swiftVC view];
  leadingAnchor = [view4 leadingAnchor];
  view5 = [(VCUIBadgedTextOverlayController *)self view];
  leadingAnchor2 = [view5 leadingAnchor];
  v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v30[0] = v24;
  view6 = [(VCUIBadgedTextOverlayController_Swift *)self->_swiftVC view];
  trailingAnchor = [view6 trailingAnchor];
  view7 = [(VCUIBadgedTextOverlayController *)self view];
  trailingAnchor2 = [view7 trailingAnchor];
  v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v30[1] = v18;
  view8 = [(VCUIBadgedTextOverlayController_Swift *)self->_swiftVC view];
  topAnchor = [view8 topAnchor];
  view9 = [(VCUIBadgedTextOverlayController *)self view];
  topAnchor2 = [view9 topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v30[2] = v10;
  view10 = [(VCUIBadgedTextOverlayController_Swift *)self->_swiftVC view];
  bottomAnchor = [view10 bottomAnchor];
  view11 = [(VCUIBadgedTextOverlayController *)self view];
  bottomAnchor2 = [view11 bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v30[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:4];
  [v19 activateConstraints:v16];
}

- (CGSize)preferredContentSize
{
  [(VCUIBadgedTextOverlayController_Swift *)self->_swiftVC preferredContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGRect)focusRect
{
  [(VCUIBadgedTextOverlayController_Swift *)self->_swiftVC focusRect];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end