@interface UIWebRotatingNodePopover
- (CGPoint)presentationPoint;
- (UIWebRotatingNodePopover)initWithDOMNode:(id)a3;
- (void)dealloc;
- (void)popoverControllerDidDismissPopover:(id)a3;
- (void)presentPopoverAnimated:(BOOL)a3;
- (void)setPopoverController:(id)a3;
@end

@implementation UIWebRotatingNodePopover

- (UIWebRotatingNodePopover)initWithDOMNode:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = UIWebRotatingNodePopover;
  v5 = [(UIWebRotatingNodePopover *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(UIWebRotatingNodePopover *)v5 setNode:v4];
    [(UIWebRotatingNodePopover *)v6 setPresentationPoint:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:v6 selector:sel_willRotate_ name:@"UIWindowWillRotateNotification" object:0];
    [v7 addObserver:v6 selector:sel_didRotate_ name:@"UIWindowDidRotateNotification" object:0];
    v8 = v6;
  }

  return v6;
}

- (void)dealloc
{
  v6[2] = *MEMORY[0x1E69E9840];
  [(UIWebRotatingNodePopover *)self setNode:0];
  [(UIPopoverController *)self->_popoverController dismissPopoverAnimated:1];
  [(UIPopoverController *)self->_popoverController setDelegate:0];
  [(UIWebRotatingNodePopover *)self setPopoverController:0];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = @"UIWindowWillRotateNotification";
  v6[1] = @"UIWindowDidRotateNotification";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  [(NSNotificationCenter *)v3 _uiRemoveObserver:v4 names:?];

  v5.receiver = self;
  v5.super_class = UIWebRotatingNodePopover;
  [(UIWebRotatingNodePopover *)&v5 dealloc];
}

- (void)setPopoverController:(id)a3
{
  v5 = a3;
  popoverController = self->_popoverController;
  if (popoverController != v5)
  {
    v7 = v5;
    [(UIPopoverController *)popoverController setDelegate:0];
    objc_storeStrong(&self->_popoverController, a3);
    [(UIPopoverController *)self->_popoverController setDelegate:self];
    v5 = v7;
  }
}

- (void)presentPopoverAnimated:(BOOL)a3
{
  v3 = a3;
  WebThreadLock();
  v5 = [(DOMNode *)self->_node ownerDocument];
  v6 = [v5 webFrame];

  v7 = [UIWebBrowserView getUIWebBrowserViewForWebFrame:v6];
  v8 = [(UIWebRotatingNodePopover *)self popoverArrowDirections];
  [(UIPopoverController *)self->_popoverController _setAllowsPopoverPresentationToAdapt:0];
  [(UIWebRotatingNodePopover *)self presentationPoint];
  if (v10 == *MEMORY[0x1E695EFF8] && v9 == *(MEMORY[0x1E695EFF8] + 8))
  {
    node = self->_node;
    if (node)
    {
      [(DOMNode *)node absoluteQuad];
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
    }

    [v7 convertRect:v6 fromFrame:quadBoundingBox(&v21)];
    popoverController = self->_popoverController;
    v26 = CGRectIntegral(v27);
    v18 = popoverController;
  }

  else
  {
    [v7 _documentScale];
    v13 = v12;
    v14 = self->_popoverController;
    [(UIWebRotatingNodePopover *)self presentationPoint];
    v16 = v15 * v13;
    [(UIWebRotatingNodePopover *)self presentationPoint];
    v25.origin.y = v17 * v13;
    v25.size.width = 1.0;
    v25.size.height = 1.0;
    v25.origin.x = v16;
    v26 = CGRectIntegral(v25);
    v18 = v14;
  }

  [(UIPopoverController *)v18 presentPopoverFromRect:v7 inView:v8 permittedArrowDirections:v3 animated:v26.origin.x, v26.origin.y, v26.size.width, v26.size.height, v21, v22, v23, v24];
}

- (void)popoverControllerDidDismissPopover:(id)a3
{
  if (!self->_isRotating)
  {
    [(UIWebRotatingNodePopoverDelegate *)self->_dismissDelegate popoverWasDismissed:self];
  }
}

- (CGPoint)presentationPoint
{
  x = self->_presentationPoint.x;
  y = self->_presentationPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end