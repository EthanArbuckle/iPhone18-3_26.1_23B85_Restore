@interface BKDisplayAnnotationRenderer
- (BKDisplayAnnotation)annotation;
- (CALayer)layer;
- (void)didRemoveAnnotation;
- (void)locationDidChange;
- (void)regenerateLayerTree;
- (void)sizeLayerToFitAtScale:(double)scale;
- (void)styleSheetDidChange;
@end

@implementation BKDisplayAnnotationRenderer

- (BKDisplayAnnotation)annotation
{
  WeakRetained = objc_loadWeakRetained(&self->_annotation);

  return WeakRetained;
}

- (void)regenerateLayerTree
{
  annotation = [(BKDisplayAnnotationRenderer *)self annotation];
  location = [annotation location];
  annotationController = [annotation annotationController];
  rootLayer = [annotationController rootLayer];
  transformLayer = [annotationController transformLayer];
  referenceSpaceLayer = [annotationController referenceSpaceLayer];
  [rootLayer rasterizationScale];
  v9 = v8;
  layer = [(BKDisplayAnnotationRenderer *)self layer];
  v11 = transformLayer;
  definedInReferenceSpace = [location definedInReferenceSpace];
  v13 = referenceSpaceLayer;
  if ((definedInReferenceSpace & 1) != 0 || (v14 = [location inhibitRotation], v13 = rootLayer, v15 = v11, v14))
  {
    v15 = v13;
  }

  superlayer = [layer superlayer];

  if (superlayer != v15)
  {
    [layer removeFromSuperlayer];
    [v15 addSublayer:layer];
  }

  [(BKDisplayAnnotationRenderer *)self sizeLayerToFitAtScale:v9];
  [(BKDisplayAnnotationRenderer *)self locationDidChange];
}

- (void)sizeLayerToFitAtScale:(double)scale
{
  layer = [(BKDisplayAnnotationRenderer *)self layer];
  WeakRetained = objc_loadWeakRetained(&self->_annotation);
  styleSheet = [WeakRetained styleSheet];
  [styleSheet sizeLayer:layer toFitAtScale:scale];
}

- (CALayer)layer
{
  p_layer = &self->_layer;
  v4 = self->_layer;
  WeakRetained = objc_loadWeakRetained(p_layer - 1);
  annotationController = [WeakRetained annotationController];
  v7 = annotationController;
  if (v4)
  {
    v8 = 1;
  }

  else
  {
    v8 = annotationController == 0;
  }

  if (!v8)
  {
    rootLayer = [annotationController rootLayer];
    [rootLayer rasterizationScale];
    v11 = v10;
    styleSheet = [WeakRetained styleSheet];
    content = [WeakRetained content];
    v4 = [styleSheet newLayerForContent:content scale:v11];

    objc_storeStrong(p_layer, v4);
    self->_shouldReapplyStyles = 1;
  }

  if (v4 && self->_shouldReapplyStyles)
  {
    styleSheet2 = [WeakRetained styleSheet];
    content2 = [WeakRetained content];
    [styleSheet2 applyToLayer:v4 forContent:content2];

    self->_shouldReapplyStyles = 0;
  }

  v16 = *p_layer;
  v17 = v16;

  return v16;
}

- (void)styleSheetDidChange
{
  annotation = [(BKDisplayAnnotationRenderer *)self annotation];
  styleSheet = [annotation styleSheet];
  self->_shouldReapplyStyles = 1;
  if (self->_layer)
  {
    layer = [(BKDisplayAnnotationRenderer *)self layer];
    content = [annotation content];
    [styleSheet applyToLayer:layer forContent:content];

    [(CALayer *)self->_layer setNeedsDisplay];
  }
}

- (void)didRemoveAnnotation
{
  [(CALayer *)self->_layer removeFromSuperlayer];
  layer = self->_layer;
  self->_layer = 0;

  self->_shouldReapplyStyles = 1;
}

- (void)locationDidChange
{
  layer = [(BKDisplayAnnotationRenderer *)self layer];
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  annotation = [(BKDisplayAnnotationRenderer *)self annotation];
  location = [annotation location];
  if ([location definedInReferenceSpace])
  {
    [location superBias];
    [layer setAnchorPoint:?];
    [location point];
    [layer setPosition:?];
  }

  else
  {
    if ([location shouldAutoposition])
    {
      superlayer = [layer superlayer];
      [superlayer bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
      [location superBias];
      v15 = v14;
      v17 = v16;
      v36.origin.x = v7;
      v36.origin.y = v9;
      v36.size.width = v11;
      v36.size.height = v13;
      v18 = CGRectGetMaxX(v36) * v15;
      v37.origin.x = v7;
      v37.origin.y = v9;
      v37.size.width = v11;
      v37.size.height = v13;
      v19 = v17 * CGRectGetMaxY(v37);
      [layer setAnchorPoint:{v15, v17}];
      [layer setPosition:{v18, v19}];
    }

    else
    {
      [location point];
      superlayer = [annotation annotationController];
      display = [superlayer display];
      uniqueId = [display uniqueId];

      context = [superlayer context];
      contextId = [context contextId];

      sub_100007C3C(uniqueId);
      v26 = sub_100007CE4(contextId, uniqueId, v24, v25);
      v28 = v27;
      superlayer2 = [layer superlayer];
      [superlayer2 convertPoint:0 fromLayer:{v26, v28}];
      v31 = v30;
      v33 = v32;

      [location superBias];
      [layer setAnchorPoint:?];
      [layer setPosition:{v31, v33}];
    }
  }

  +[CATransaction commit];
}

@end