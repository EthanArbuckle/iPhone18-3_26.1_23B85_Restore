@interface PXHUDBoxedValueVisualization
- (void)setValue:(id)a3;
@end

@implementation PXHUDBoxedValueVisualization

- (void)setValue:(id)a3
{
  v5 = a3;
  if (self->_value != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_value, a3);
    [(PXHUDVisualization *)self _notifyDelegateVisualizationDidChange];
    v5 = v6;
  }
}

@end