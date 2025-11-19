@interface PXPlacesMapPipeline
- (PXPlacesMapPipeline)initWithLayout:(id)a3 updatePlan:(id)a4 renderer:(id)a5 selectionHandler:(id)a6;
- (id)executeRemoval;
- (id)executeWithUpdatedViewPort:(id)a3 andDataSourceChange:(id)a4;
@end

@implementation PXPlacesMapPipeline

- (id)executeRemoval
{
  v3 = [(PXPlacesMapPipeline *)self updatePlan];
  v4 = [v3 removalPlanResult];

  v5 = [(PXPlacesMapPipeline *)self updatePlan];
  [v5 reset];

  return v4;
}

- (id)executeWithUpdatedViewPort:(id)a3 andDataSourceChange:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PXPlacesMapPipeline *)self layout];
  v9 = [v8 layoutForViewPort:v7 andDataSourceChange:v6];

  v10 = [(PXPlacesMapPipeline *)self updatePlan];
  v11 = [v10 resultForNewLayoutResult:v9];

  return v11;
}

- (PXPlacesMapPipeline)initWithLayout:(id)a3 updatePlan:(id)a4 renderer:(id)a5 selectionHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = PXPlacesMapPipeline;
  v15 = [(PXPlacesMapPipeline *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_layout, a3);
    objc_storeStrong(&v16->_updatePlan, a4);
    objc_storeStrong(&v16->_renderer, a5);
    objc_storeStrong(&v16->_selectionHandler, a6);
    [(PXPlacesMapLayout *)v16->_layout setPipelineComponentProvider:v16];
    [(PXPlacesMapUpdatePlan *)v16->_updatePlan setPipelineComponentProvider:v16];
    [(PXPlacesMapAnnotationRenderer *)v16->_renderer setPipelineComponentProvider:v16];
    [(PXPlacesMapSelectionHandler *)v16->_selectionHandler setPipelineComponentProvider:v16];
  }

  return v16;
}

@end