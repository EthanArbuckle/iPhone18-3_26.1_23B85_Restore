@interface PXGAsyncScrollController
- (CGRect)activeRect;
- (CGRect)contentBounds;
- (CGRect)visibleRect;
- (CGSize)presentedContentSize;
- (CGSize)referenceSize;
- (PXGAsyncScrollController)init;
- (PXGAsyncScrollController)initWithQueue:(id)queue;
- (PXScrollControllerUpdateDelegate)updateDelegate;
- (UIEdgeInsets)contentInset;
- (void)didScroll;
- (void)setIsActive:(BOOL)active;
- (void)setNeedsUpdate;
- (void)setReferenceSize:(CGSize)size;
- (void)setUpdateDelegate:(id)delegate;
- (void)setVisibleOrigin:(CGPoint)origin;
- (void)setVisibleRect:(CGRect)rect;
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
    updateDelegate = [(PXGAsyncScrollController *)self updateDelegate];
    [updateDelegate px_scrollControllerDidScroll:self];
  }
}

- (void)updateIfNeeded
{
  if (self->_needsUpdate && [(PXGAsyncScrollController *)self isActive])
  {
    self->_needsUpdate = 0;
    updateDelegate = [(PXGAsyncScrollController *)self updateDelegate];
    [updateDelegate px_scrollControllerDidUpdate:self];
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

- (void)setVisibleRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (!CGRectEqualToRect(self->_visibleRect, rect))
  {
    self->_visibleRect.origin.x = x;
    self->_visibleRect.origin.y = y;
    self->_visibleRect.size.width = width;
    self->_visibleRect.size.height = height;

    [(PXGAsyncScrollController *)self didScroll];
  }
}

- (void)setVisibleOrigin:(CGPoint)origin
{
  y = origin.y;
  x = origin.x;
  [(PXGAsyncScrollController *)self visibleRect];

  [(PXGAsyncScrollController *)self setVisibleRect:x, y];
}

- (void)setIsActive:(BOOL)active
{
  if (self->_isActive != active)
  {
    self->_isActive = active;
    [(PXGAsyncScrollController *)self setNeedsUpdate];
  }
}

- (void)setReferenceSize:(CGSize)size
{
  if (self->_referenceSize.width != size.width || self->_referenceSize.height != size.height)
  {
    self->_referenceSize = size;
    [(PXGAsyncScrollController *)self visibleRect];
    [(PXGAsyncScrollController *)self setVisibleRect:?];

    [(PXGAsyncScrollController *)self setNeedsUpdate];
  }
}

- (void)setUpdateDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_updateDelegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_updateDelegate, obj);
    self->_delegateRespondsToDidScroll = objc_opt_respondsToSelector() & 1;
  }
}

- (PXGAsyncScrollController)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGAsyncScrollController.m" lineNumber:42 description:{@"%s is not available as initializer", "-[PXGAsyncScrollController init]"}];

  abort();
}

- (PXGAsyncScrollController)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = PXGAsyncScrollController;
  v6 = [(PXGAsyncScrollController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v7->_isActive = 1;
  }

  return v7;
}

@end