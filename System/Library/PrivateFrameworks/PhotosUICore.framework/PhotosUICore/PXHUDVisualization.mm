@interface PXHUDVisualization
- (PXHUDVisualizationDelegate)delegate;
- (UIColor)color;
- (void)_notifyDelegateVisualizationDidChange;
- (void)setColor:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation PXHUDVisualization

- (PXHUDVisualizationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_notifyDelegateVisualizationDidChange
{
  v3 = [(PXHUDVisualization *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(PXHUDVisualization *)self delegate];
    [v5 visualizationDidChange:self];
  }
}

- (void)setColor:(id)a3
{
  v5 = a3;
  if (self->_color != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_color, a3);
    [(PXHUDVisualization *)self _notifyDelegateVisualizationDidChange];
    v5 = v6;
  }
}

- (UIColor)color
{
  color = self->_color;
  if (color)
  {
    v3 = color;
  }

  else
  {
    v3 = [MEMORY[0x1E69DC888] whiteColor];
  }

  return v3;
}

- (void)setTitle:(id)a3
{
  if (self->_title != a3)
  {
    v5 = [a3 copy];
    title = self->_title;
    self->_title = v5;

    [(PXHUDVisualization *)self _notifyDelegateVisualizationDidChange];
  }
}

@end