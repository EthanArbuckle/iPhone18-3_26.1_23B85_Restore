@interface TSWPEffectsWindow
+ (id)sharedEffectsWindowAboveStatusBar;
+ (id)sharedEffectsWindowAboveStatusBarForView:(id)view;
- (TSWPEffectsWindow)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)didAddSubview:(id)subview;
- (void)pDidChangeStatusBarOrientation:(id)orientation;
- (void)p_updateForOrientation:(int64_t)orientation;
- (void)willRemoveSubview:(id)subview;
@end

@implementation TSWPEffectsWindow

- (TSWPEffectsWindow)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = TSWPEffectsWindow;
  v3 = [(TSWPEffectsWindow *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D75C40]) initWithFrame:{0.0, 0.0, 10.0, 10.0}];
    v3->_dummyToReclaimFirstResponder = v4;
    [(UITextView *)v4 setHidden:1];
    [(TSWPEffectsWindow *)v3 addSubview:v3->_dummyToReclaimFirstResponder];
    v3->_readyToGo = 1;
  }

  return v3;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  [(UITextView *)self->_dummyToReclaimFirstResponder removeFromSuperview];

  v3.receiver = self;
  v3.super_class = TSWPEffectsWindow;
  [(TSWPEffectsWindow *)&v3 dealloc];
}

- (void)didAddSubview:(id)subview
{
  v4.receiver = self;
  v4.super_class = TSWPEffectsWindow;
  [(TSWPEffectsWindow *)&v4 didAddSubview:subview];
  if (self->_readyToGo)
  {
    if (!self->_activeEffectsCount || [(TSWPEffectsWindow *)self isHidden])
    {
      [(TSWPEffectsWindow *)self setHidden:0];
    }

    ++self->_activeEffectsCount;
  }
}

- (void)willRemoveSubview:(id)subview
{
  v6.receiver = self;
  v6.super_class = TSWPEffectsWindow;
  [(TSWPEffectsWindow *)&v6 willRemoveSubview:?];
  if (self->_readyToGo)
  {
    v5 = self->_activeEffectsCount - 1;
    self->_activeEffectsCount = v5;
    if (!v5)
    {
      [(TSWPEffectsWindow *)self setHidden:1];
    }

    objc_opt_class();
    TSUFindFirstResponderView();
    if ([TSUDynamicCast() isDescendantOfView:subview])
    {
      [(UITextView *)self->_dummyToReclaimFirstResponder becomeFirstResponder];
      [(UITextView *)self->_dummyToReclaimFirstResponder resignFirstResponder];
    }
  }
}

- (void)p_updateForOrientation:(int64_t)orientation
{
  [(TSWPEffectsWindow *)self _setWindowInterfaceOrientation:orientation];

  [(TSWPEffectsWindow *)self _updateTransformLayer];
}

+ (id)sharedEffectsWindowAboveStatusBar
{
  v2 = sEffectsWindowAboveStatusBar;
  if (!sEffectsWindowAboveStatusBar)
  {
    v3 = [TSWPEffectsWindow alloc];
    [objc_msgSend(MEMORY[0x277D759A0] "mainScreen")];
    sEffectsWindowAboveStatusBar = [(TSWPEffectsWindow *)v3 initWithFrame:?];
    [sEffectsWindowAboveStatusBar setUserInteractionEnabled:1];
    [sEffectsWindowAboveStatusBar setWindowLevel:*MEMORY[0x277D772B8] + 1.0];
    [sEffectsWindowAboveStatusBar setAutoresizesSubviews:0];
    v2 = sEffectsWindowAboveStatusBar;
  }

  [v2 p_updateForOrientation:{objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277D75128], "sharedApplication"), "keyWindow"), "windowScene"), "interfaceOrientation")}];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [sEffectsWindowAboveStatusBar setBackgroundColor:clearColor];
  return sEffectsWindowAboveStatusBar;
}

+ (id)sharedEffectsWindowAboveStatusBarForView:(id)view
{
  if (!view)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPEffectsWindow sharedEffectsWindowAboveStatusBarForView:]"];
    [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEffectsWindow.mm"), 160, @"invalid nil value for '%s'", "view"}];
  }

  v6 = [objc_msgSend(view "window")];
  if (!v6)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPEffectsWindow sharedEffectsWindowAboveStatusBarForView:]"];
    [currentHandler2 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEffectsWindow.mm"), 164, @"invalid nil value for '%s'", "viewScene"}];
  }

  AssociatedObject = objc_getAssociatedObject(v6, kTSWPEffectsWindow);
  if (!AssociatedObject)
  {
    v10 = [TSWPEffectsWindow alloc];
    [objc_msgSend(MEMORY[0x277D759A0] "mainScreen")];
    AssociatedObject = [(TSWPEffectsWindow *)v10 initWithFrame:?];
    [(TSWPEffectsWindow *)AssociatedObject setUserInteractionEnabled:1];
    [(TSWPEffectsWindow *)AssociatedObject setWindowLevel:*MEMORY[0x277D772B8] + 1.0];
    [(TSWPEffectsWindow *)AssociatedObject setAutoresizesSubviews:0];
    [(TSWPEffectsWindow *)AssociatedObject setWindowScene:v6];
    objc_setAssociatedObject(v6, kTSWPEffectsWindow, AssociatedObject, 1);
  }

  -[TSWPEffectsWindow p_updateForOrientation:](AssociatedObject, "p_updateForOrientation:", [objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277D75128] "sharedApplication")]);
  -[TSWPEffectsWindow setBackgroundColor:](AssociatedObject, "setBackgroundColor:", [MEMORY[0x277D75348] clearColor]);
  return AssociatedObject;
}

- (void)pDidChangeStatusBarOrientation:(id)orientation
{
  v3 = sEffectsWindowAboveStatusBar;
  sharedApplication = [objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277D75128] sharedApplication];

  [v3 p_updateForOrientation:sharedApplication];
}

@end