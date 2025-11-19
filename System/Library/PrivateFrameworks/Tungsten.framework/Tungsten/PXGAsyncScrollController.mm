@interface PXGAsyncScrollController
- (CGRect)activeRect;
- (CGRect)contentBounds;
- (CGRect)visibleRect;
- (CGSize)presentedContentSize;
- (CGSize)referenceSize;
- (PXGAsyncScrollController)init;
- (PXGAsyncScrollController)initWithQueue:(id)a3;
- (PXScrollControllerUpdateDelegate)updateDelegate;
- (UIEdgeInsets)contentInset;
- (void)didScroll;
- (void)setIsActive:(BOOL)a3;
- (void)setNeedsUpdate;
- (void)setReferenceSize:(CGSize)a3;
- (void)setUpdateDelegate:(id)a3;
- (void)setVisibleOrigin:(CGPoint)a3;
- (void)setVisibleRect:(CGRect)a3;
- (void)updateIfNeeded;
@end

@implementation PXGAsyncScrollController

- (CGRect)contentBounds
{
  x = self->_contentBounds.origin.x;
  y = self->_contentBounds.origin.y;
  width = self->_contentBounds.size.width;
  height = self->_contentBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)presentedContentSize
{
  width = self->_presentedContentSize.width;
  height = self->_presentedContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)visibleRect
{
  x = self->_visibleRect.origin.x;
  y = self->_visibleRect.origin.y;
  width = self->_visibleRect.size.width;
  height = self->_visibleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)activeRect
{
  x = self->_activeRect.origin.x;
  y = self->_activeRect.origin.y;
  width = self->_activeRect.size.width;
  height = self->_activeRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)referenceSize
{
  width = self->_referenceSize.width;
  height = self->_referenceSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PXScrollControllerUpdateDelegate)updateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_updateDelegate);

  return WeakRetained;
}

- (void)didScroll
{
  if (self->_delegateRespondsToDidScroll)
  {
    v4 = [(PXGAsyncScrollController *)self updateDelegate];
    [v4 px_scrollControllerDidScroll:self];
  }
}

- (void)updateIfNeeded
{
  if (self->_needsUpdate && [(PXGAsyncScrollController *)self isActive])
  {
    self->_needsUpdate = 0;
    v3 = [(PXGAsyncScrollController *)self updateDelegate];
    [v3 px_scrollControllerDidUpdate:self];
  }
}

- (void)setNeedsUpdate
{
  self->_needsUpdate = 1;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__PXGAsyncScrollController_setNeedsUpdate__block_invoke;
  v4[3] = &unk_2782AB888;
  objc_copyWeak(&v5, &location);
  dispatch_async(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __42__PXGAsyncScrollController_setNeedsUpdate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateIfNeeded];
}

- (void)setVisibleRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!CGRectEqualToRect(self->_visibleRect, a3))
  {
    self->_visibleRect.origin.x = x;
    self->_visibleRect.origin.y = y;
    self->_visibleRect.size.width = width;
    self->_visibleRect.size.height = height;

    [(PXGAsyncScrollController *)self didScroll];
  }
}

- (void)setVisibleOrigin:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(PXGAsyncScrollController *)self visibleRect];

  [(PXGAsyncScrollController *)self setVisibleRect:x, y];
}

- (void)setIsActive:(BOOL)a3
{
  if (self->_isActive != a3)
  {
    self->_isActive = a3;
    [(PXGAsyncScrollController *)self setNeedsUpdate];
  }
}

- (void)setReferenceSize:(CGSize)a3
{
  if (self->_referenceSize.width != a3.width || self->_referenceSize.height != a3.height)
  {
    self->_referenceSize = a3;
    [(PXGAsyncScrollController *)self visibleRect];
    [(PXGAsyncScrollController *)self setVisibleRect:?];

    [(PXGAsyncScrollController *)self setNeedsUpdate];
  }
}

- (void)setUpdateDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_updateDelegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_updateDelegate, obj);
    self->_delegateRespondsToDidScroll = objc_opt_respondsToSelector() & 1;
  }
}

- (PXGAsyncScrollController)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXGAsyncScrollController.m" lineNumber:42 description:{@"%s is not available as initializer", "-[PXGAsyncScrollController init]"}];

  abort();
}

- (PXGAsyncScrollController)initWithQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXGAsyncScrollController;
  v6 = [(PXGAsyncScrollController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    v7->_isActive = 1;
  }

  return v7;
}

@end