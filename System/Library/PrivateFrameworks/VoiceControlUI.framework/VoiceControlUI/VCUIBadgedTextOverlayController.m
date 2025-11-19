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
  v3 = [MEMORY[0x277D75348] clearColor];
  v4 = [(VCUIBadgedTextOverlayController_Swift *)self->_swiftVC view];
  [v4 setBackgroundColor:v3];

  v5 = [(VCUIBadgedTextOverlayController *)self view];
  v6 = [(VCUIBadgedTextOverlayController_Swift *)self->_swiftVC view];
  [v5 addSubview:v6];

  v19 = MEMORY[0x277CCAAD0];
  v28 = [(VCUIBadgedTextOverlayController_Swift *)self->_swiftVC view];
  v26 = [v28 leadingAnchor];
  v27 = [(VCUIBadgedTextOverlayController *)self view];
  v25 = [v27 leadingAnchor];
  v24 = [v26 constraintEqualToAnchor:v25];
  v30[0] = v24;
  v23 = [(VCUIBadgedTextOverlayController_Swift *)self->_swiftVC view];
  v21 = [v23 trailingAnchor];
  v22 = [(VCUIBadgedTextOverlayController *)self view];
  v20 = [v22 trailingAnchor];
  v18 = [v21 constraintEqualToAnchor:v20];
  v30[1] = v18;
  v17 = [(VCUIBadgedTextOverlayController_Swift *)self->_swiftVC view];
  v7 = [v17 topAnchor];
  v8 = [(VCUIBadgedTextOverlayController *)self view];
  v9 = [v8 topAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  v30[2] = v10;
  v11 = [(VCUIBadgedTextOverlayController_Swift *)self->_swiftVC view];
  v12 = [v11 bottomAnchor];
  v13 = [(VCUIBadgedTextOverlayController *)self view];
  v14 = [v13 bottomAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
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