@interface PXPlacesMapPipeline
- (PXPlacesMapPipeline)initWithLayout:(id)layout updatePlan:(id)plan renderer:(id)renderer selectionHandler:(id)handler;
- (id)executeRemoval;
- (id)executeWithUpdatedViewPort:(id)port andDataSourceChange:(id)change;
@end

@implementation PXPlacesMapPipeline

- (id)executeRemoval
{
  updatePlan = [(PXPlacesMapPipeline *)self updatePlan];
  removalPlanResult = [updatePlan removalPlanResult];

  updatePlan2 = [(PXPlacesMapPipeline *)self updatePlan];
  [updatePlan2 reset];

  return removalPlanResult;
}

- (id)executeWithUpdatedViewPort:(id)port andDataSourceChange:(id)change
{
  changeCopy = change;
  portCopy = port;
  layout = [(PXPlacesMapPipeline *)self layout];
  v9 = [layout layoutForViewPort:portCopy andDataSourceChange:changeCopy];

  updatePlan = [(PXPlacesMapPipeline *)self updatePlan];
  v11 = [updatePlan resultForNewLayoutResult:v9];

  return v11;
}

- (PXPlacesMapPipeline)initWithLayout:(id)layout updatePlan:(id)plan renderer:(id)renderer selectionHandler:(id)handler
{
  layoutCopy = layout;
  planCopy = plan;
  rendererCopy = renderer;
  handlerCopy = handler;
  v18.receiver = self;
  v18.super_class = PXPlacesMapPipeline;
  v15 = [(PXPlacesMapPipeline *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_layout, layout);
    objc_storeStrong(&v16->_updatePlan, plan);
    objc_storeStrong(&v16->_renderer, renderer);
    objc_storeStrong(&v16->_selectionHandler, handler);
    [(PXPlacesMapLayout *)v16->_layout setPipelineComponentProvider:v16];
    [(PXPlacesMapUpdatePlan *)v16->_updatePlan setPipelineComponentProvider:v16];
    [(PXPlacesMapAnnotationRenderer *)v16->_renderer setPipelineComponentProvider:v16];
    [(PXPlacesMapSelectionHandler *)v16->_selectionHandler setPipelineComponentProvider:v16];
  }

  return v16;
}

@end