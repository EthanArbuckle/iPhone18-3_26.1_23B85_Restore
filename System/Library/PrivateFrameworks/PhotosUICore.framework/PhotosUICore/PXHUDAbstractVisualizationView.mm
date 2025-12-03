@interface PXHUDAbstractVisualizationView
- (void)setVisualization:(id)visualization;
@end

@implementation PXHUDAbstractVisualizationView

- (void)setVisualization:(id)visualization
{
  visualizationCopy = visualization;
  if (self->_visualization != visualizationCopy)
  {
    v6 = visualizationCopy;
    objc_storeStrong(&self->_visualization, visualization);
    [(PXHUDVisualization *)self->_visualization setDelegate:self];
    [(PXHUDAbstractVisualizationView *)self visualizationDidUpdate];
    visualizationCopy = v6;
  }
}

@end