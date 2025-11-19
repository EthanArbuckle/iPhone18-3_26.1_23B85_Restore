@interface PXGHostingLayerVisibilityInfo
- (PXGHostingLayerVisibilityInfo)init;
- (PXGHostingLayerVisibilityInfoDelegate)delegate;
- (void)setIsVisible:(BOOL)a3;
@end

@implementation PXGHostingLayerVisibilityInfo

- (PXGHostingLayerVisibilityInfoDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setIsVisible:(BOOL)a3
{
  if (self->_isVisible != a3)
  {
    self->_isVisible = a3;
    v5 = [(PXGHostingLayerVisibilityInfo *)self delegate];
    [v5 hostingLayerVisibilityInfoDidChange:self];
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