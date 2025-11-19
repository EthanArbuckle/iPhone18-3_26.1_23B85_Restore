@interface PXHUDAbstractVisualizationView
- (void)setVisualization:(id)a3;
@end

@implementation PXHUDAbstractVisualizationView

- (void)setVisualization:(id)a3
{
  v5 = a3;
  if (self->_visualization != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_visualization, a3);
    [(PXHUDVisualization *)self->_visualization setDelegate:self];
    [(PXHUDAbstractVisualizationView *)self visualizationDidUpdate];
    v5 = v6;
  }
}

@end