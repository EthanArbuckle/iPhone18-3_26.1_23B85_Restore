@interface PXHUDVisualization
- (PXHUDVisualizationDelegate)delegate;
- (UIColor)color;
- (void)_notifyDelegateVisualizationDidChange;
- (void)setColor:(id)color;
- (void)setTitle:(id)title;
@end

@implementation PXHUDVisualization

- (PXHUDVisualizationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_notifyDelegateVisualizationDidChange
{
  delegate = [(PXHUDVisualization *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(PXHUDVisualization *)self delegate];
    [delegate2 visualizationDidChange:self];
  }
}

- (void)setColor:(id)color
{
  colorCopy = color;
  if (self->_color != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_color, color);
    [(PXHUDVisualization *)self _notifyDelegateVisualizationDidChange];
    colorCopy = v6;
  }
}

- (UIColor)color
{
  color = self->_color;
  if (color)
  {
    whiteColor = color;
  }

  else
  {
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  }

  return whiteColor;
}

- (void)setTitle:(id)title
{
  if (self->_title != title)
  {
    v5 = [title copy];
    title = self->_title;
    self->_title = v5;

    [(PXHUDVisualization *)self _notifyDelegateVisualizationDidChange];
  }
}

@end