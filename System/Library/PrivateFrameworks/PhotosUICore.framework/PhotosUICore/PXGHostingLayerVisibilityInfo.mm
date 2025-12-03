@interface PXGHostingLayerVisibilityInfo
- (PXGHostingLayerVisibilityInfo)init;
- (PXGHostingLayerVisibilityInfoDelegate)delegate;
- (void)setIsVisible:(BOOL)visible;
@end

@implementation PXGHostingLayerVisibilityInfo

- (PXGHostingLayerVisibilityInfoDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setIsVisible:(BOOL)visible
{
  if (self->_isVisible != visible)
  {
    self->_isVisible = visible;
    delegate = [(PXGHostingLayerVisibilityInfo *)self delegate];
    [delegate hostingLayerVisibilityInfoDidChange:self];
  }
}

- (PXGHostingLayerVisibilityInfo)init
{
  v3.receiver = self;
  v3.super_class = PXGHostingLayerVisibilityInfo;
  result = [(PXGHostingLayerVisibilityInfo *)&v3 init];
  if (result)
  {
    result->_isVisible = 1;
  }

  return result;
}

@end