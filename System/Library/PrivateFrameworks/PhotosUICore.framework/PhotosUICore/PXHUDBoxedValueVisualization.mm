@interface PXHUDBoxedValueVisualization
- (void)setValue:(id)value;
@end

@implementation PXHUDBoxedValueVisualization

- (void)setValue:(id)value
{
  valueCopy = value;
  if (self->_value != valueCopy)
  {
    v6 = valueCopy;
    objc_storeStrong(&self->_value, value);
    [(PXHUDVisualization *)self _notifyDelegateVisualizationDidChange];
    valueCopy = v6;
  }
}

@end