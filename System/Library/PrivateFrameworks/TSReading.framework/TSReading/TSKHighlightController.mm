@interface TSKHighlightController
- (CGAffineTransform)transform;
- (CGRect)buildLayersForPath:(CGPath *)path withImage:(id)image;
- (void)createLayerWithZOrder:(double)order contentsScaleForLayers:(double)layers;
- (void)dealloc;
- (void)reset;
- (void)setCanvasTransform:(CGAffineTransform *)transform layerTransform:(CGAffineTransform *)layerTransform;
- (void)setPath:(CGPath *)path;
- (void)setTransform:(CGAffineTransform *)transform;
@end

@implementation TSKHighlightController

- (void)setPath:(CGPath *)path
{
  path = self->_path;
  if (path != path)
  {
    CGPathRelease(path);
    self->_path = CGPathRetain(path);
  }
}

- (void)dealloc
{
  [(TSKHighlightController *)self reset];
  v3.receiver = self;
  v3.super_class = TSKHighlightController;
  [(TSKHighlightController *)&v3 dealloc];
}

- (void)reset
{
  [(TSKHighlightController *)self setImage:0];
  [(TSKHighlightController *)self setPath:0];
  [(CALayer *)self->_containingLayer setDelegate:0];
  [(NSArray *)[(CALayer *)self->_containingLayer sublayers] makeObjectsPerformSelector:sel_setDelegate_ withObject:0];

  self->_containingLayer = 0;
}

- (void)createLayerWithZOrder:(double)order contentsScaleForLayers:(double)layers
{
  if (self->_containingLayer)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKHighlightController createLayerWithZOrder:contentsScaleForLayers:]"];
    [currentHandler handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKHighlightController.m"), 91, @"Shouldn't be creating _containingLayer again"}];
    [(TSKHighlightController *)self reset];
  }

  if (layers <= 0.0)
  {
    layers = 1.0;
  }

  v9 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  self->_containingLayer = v9;
  v10 = *MEMORY[0x277CBF348];
  v11 = *(MEMORY[0x277CBF348] + 8);
  [(CALayer *)v9 setAnchorPoint:*MEMORY[0x277CBF348], v11];
  [(CALayer *)self->_containingLayer setEdgeAntialiasingMask:0];
  [(CALayer *)self->_containingLayer setContentsScale:layers];
  [(CALayer *)self->_containingLayer setZPosition:order];
  [(CALayer *)self->_containingLayer setDelegate:self];
  v12 = objc_alloc_init(MEMORY[0x277CD9ED0]);
  self->_imageLayer = v12;
  [(CALayer *)v12 setAnchorPoint:v10, v11];
  [(CALayer *)self->_imageLayer setEdgeAntialiasingMask:0];
  [(CALayer *)self->_imageLayer setContentsScale:layers];
  [(CALayer *)self->_containingLayer addSublayer:self->_imageLayer];
  [(CALayer *)self->_imageLayer setDelegate:self];
  imageLayer = self->_imageLayer;
}

- (CGRect)buildLayersForPath:(CGPath *)path withImage:(id)image
{
  v7 = MEMORY[0x277CBF3A0];
  v8 = *(MEMORY[0x277CBF3A0] + 16);
  self->_overallRect.origin = *MEMORY[0x277CBF3A0];
  self->_overallRect.size = v8;
  [(TSKHighlightController *)self setImage:image];
  [(TSKHighlightController *)self setPath:path];
  if (path)
  {
    BoundingBox = CGPathGetBoundingBox(path);
    v34 = CGRectIntegral(BoundingBox);
    v9 = *&self->_layerTransform.c;
    *&v32.a = *&self->_layerTransform.a;
    *&v32.c = v9;
    *&v32.tx = *&self->_layerTransform.tx;
    v35 = CGRectApplyAffineTransform(v34, &v32);
    x = v35.origin.x;
    y = v35.origin.y;
    width = v35.size.width;
    height = v35.size.height;
    [(TSKHighlightController *)self viewScale];
    if (v14 != 0.0)
    {
      [(TSKHighlightController *)self viewScale];
      v16 = v15;
      [(TSKHighlightController *)self viewScale];
      CGAffineTransformMakeScale(&v32, v16, v17);
      v36.origin.x = x;
      v36.origin.y = y;
      v36.size.width = width;
      v36.size.height = height;
      v37 = CGRectApplyAffineTransform(v36, &v32);
      x = v37.origin.x;
      y = v37.origin.y;
      width = v37.size.width;
      height = v37.size.height;
    }

    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    self->_overallRect = CGRectIntegral(v38);
    [(CALayer *)self->_containingLayer setFrame:*v7, v7[1], v7[2], v7[3]];
    v18 = self->_overallRect.origin.x;
    v19 = self->_overallRect.origin.y;
    v20 = self->_overallRect.size.width;
    v21 = self->_overallRect.size.height;
    [image size];
    v23 = v22;
    v25 = v24;
    *&v22 = (v24 - v21) * 0.5;
    *&v24 = (v23 - v20) * 0.5;
    v26 = v18 - roundf(*&v24);
    v27 = v19 - roundf(*&v22);
    [(CALayer *)self->_imageLayer setContents:[(TSUImage *)self->_image CGImage]];
    [(CALayer *)self->_imageLayer setFrame:v26, v27, v23, v25];
    [(CALayer *)self->_imageLayer setContentsGravity:*MEMORY[0x277CDA6E0]];
    [(CALayer *)self->_containingLayer setHidden:0];
  }

  v28 = self->_overallRect.origin.x;
  v29 = self->_overallRect.origin.y;
  v30 = self->_overallRect.size.width;
  v31 = self->_overallRect.size.height;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (void)setTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->c;
  *&self->_layerTransform.tx = *&transform->tx;
  *&self->_layerTransform.c = v4;
  *&self->_layerTransform.a = v3;
  v5 = *&transform->a;
  v6 = *&transform->c;
  *&self->_canvasTransform.tx = *&transform->tx;
  *&self->_canvasTransform.c = v6;
  *&self->_canvasTransform.a = v5;
}

- (CGAffineTransform)transform
{
  v3 = *&self[1].d;
  *&retstr->a = *&self[1].b;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].ty;
  return self;
}

- (void)setCanvasTransform:(CGAffineTransform *)transform layerTransform:(CGAffineTransform *)layerTransform
{
  v4 = *&transform->a;
  v5 = *&transform->c;
  *&self->_canvasTransform.tx = *&transform->tx;
  *&self->_canvasTransform.c = v5;
  *&self->_canvasTransform.a = v4;
  v6 = *&layerTransform->a;
  v7 = *&layerTransform->c;
  *&self->_layerTransform.tx = *&layerTransform->tx;
  *&self->_layerTransform.c = v7;
  *&self->_layerTransform.a = v6;
}

@end