@interface PXGInteraction
- (PXGHitTestEnvironment)view;
- (PXGLayout)layout;
- (PXScrollViewController)scrollViewController;
- (void)setLayout:(id)a3;
- (void)setScrollViewController:(id)a3;
- (void)setView:(id)a3;
@end

@implementation PXGInteraction

- (PXScrollViewController)scrollViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewController);

  return WeakRetained;
}

- (PXGHitTestEnvironment)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (PXGLayout)layout
{
  WeakRetained = objc_loadWeakRetained(&self->_layout);

  return WeakRetained;
}

- (void)setScrollViewController:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewController);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_scrollViewController, obj);
    [(PXGInteraction *)self scrollViewControllerDidChange];
    v5 = obj;
  }
}

- (void)setView:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_view);

  if (WeakRetained != obj)
  {
    [(PXGInteraction *)self viewWillChange];
    objc_storeWeak(&self->_view, obj);
    [(PXGInteraction *)self viewDidChange];
  }
}

- (void)setLayout:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_layout);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_layout, obj);
    [(PXGInteraction *)self layoutDidChange];
    v5 = obj;
  }
}

@end