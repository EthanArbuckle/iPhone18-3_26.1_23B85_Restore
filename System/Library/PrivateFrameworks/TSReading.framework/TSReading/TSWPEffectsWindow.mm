@interface TSWPEffectsWindow
+ (id)sharedEffectsWindowAboveStatusBar;
+ (id)sharedEffectsWindowAboveStatusBarForView:(id)a3;
- (TSWPEffectsWindow)initWithFrame:(CGRect)a3;
- (void)dealloc;
- (void)didAddSubview:(id)a3;
- (void)pDidChangeStatusBarOrientation:(id)a3;
- (void)p_updateForOrientation:(int64_t)a3;
- (void)willRemoveSubview:(id)a3;
@end

@implementation TSWPEffectsWindow

- (TSWPEffectsWindow)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = TSWPEffectsWindow;
  v3 = [(TSWPEffectsWindow *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)didAddSubview:(id)a3
{
  v4.receiver = self;
  v4.super_class = TSWPEffectsWindow;
  [(TSWPEffectsWindow *)&v4 didAddSubview:a3];
  if (self->_readyToGo)
  {
    if (!self->_activeEffectsCount || [(TSWPEffectsWindow *)self isHidden])
    {
      [(TSWPEffectsWindow *)self setHidden:0];
    }

    ++self->_activeEffectsCount;
  }
}

- (void)willRemoveSubview:(id)a3
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
    if ([TSUDynamicCast() isDescendantOfView:a3])
    {
      [(UITextView *)self->_dummyToReclaimFirstResponder becomeFirstResponder];
      [(UITextView *)self->_dummyToReclaimFirstResponder resignFirstResponder];
    }
  }
}

- (void)p_updateForOrientation:(int64_t)a3
{
  [(TSWPEffectsWindow *)self _setWindowInterfaceOrientation:a3];

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
  v4 = [MEMORY[0x277D75348] clearColor];
  [sEffectsWindowAboveStatusBar setBackgroundColor:v4];
  return sEffectsWindowAboveStatusBar;
}

+ (id)sharedEffectsWindowAboveStatusBarForView:(id)a3
{
  if (!a3)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPEffectsWindow sharedEffectsWindowAboveStatusBarForView:]"];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEffectsWindow.mm"), 160, @"invalid nil value for '%s'", "view"}];
  }

  v6 = [objc_msgSend(a3 "window")];
  if (!v6)
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSWPEffectsWindow sharedEffectsWindowAboveStatusBarForView:]"];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPEffectsWindow.mm"), 164, @"invalid nil value for '%s'", "viewScene"}];
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

- (void)pDidChangeStatusBarOrientation:(id)a3
{
  v3 = sEffectsWindowAboveStatusBar;
  v4 = [objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277D75128] sharedApplication];

  [v3 p_updateForOrientation:v4];
}

@end