@interface TSKHighlightArrayController
- (CGAffineTransform)transform;
- (TSKHighlightArrayController)initWithZOrder:(double)a3 delegate:(id)a4;
- (id)buildHighlightsForSearchReferences:(id)a3 contentsScaleForLayers:(double)a4;
- (void)dealloc;
- (void)reset;
- (void)setCanvasTransform:(CGAffineTransform *)a3 layerTransform:(CGAffineTransform *)a4;
- (void)setTransform:(CGAffineTransform *)a3;
- (void)startAnimating;
- (void)stop;
@end

@implementation TSKHighlightArrayController

- (TSKHighlightArrayController)initWithZOrder:(double)a3 delegate:(id)a4
{
  v7.receiver = self;
  v7.super_class = TSKHighlightArrayController;
  result = [(TSKHighlightArrayController *)&v7 init];
  if (result)
  {
    result->_delegate = a4;
    result->_zOrder = a3;
  }

  return result;
}

- (void)dealloc
{
  [(TSKHighlightArrayController *)self disconnect];
  [(TSKHighlightArrayController *)self reset];
  v3.receiver = self;
  v3.super_class = TSKHighlightArrayController;
  [(TSKHighlightArrayController *)&v3 dealloc];
}

- (void)startAnimating
{
  if ([(NSMutableArray *)self->_controllers count]&& self->_shouldPulsate && !self->_pulsating)
  {
    [(NSMutableArray *)self->_controllers makeObjectsPerformSelector:sel_startAnimating];
    self->_pulsating = 1;
  }
}

- (void)stop
{
  if ([(NSMutableArray *)self->_controllers count]&& self->_shouldPulsate)
  {
    self->_pulsating = 0;
    controllers = self->_controllers;

    [(NSMutableArray *)controllers makeObjectsPerformSelector:sel_stop];
  }
}

- (void)reset
{
  [(NSMutableArray *)self->_controllers makeObjectsPerformSelector:sel_reset];

  self->_controllers = 0;
  self->_layers = 0;
}

- (id)buildHighlightsForSearchReferences:(id)a3 contentsScaleForLayers:(double)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a3, "count")}];
  if (self->_creatingLayers)
  {
    v8 = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKHighlightArrayController buildHighlightsForSearchReferences:contentsScaleForLayers:]"];
    [v8 handleFailureInFunction:v9 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKHighlightArrayController.m"), 82, @"buildHighlightsForSearchReferences: should not be called recursively."}];
  }

  else
  {
    self->_creatingLayers = 1;
    if (!self->_layers)
    {
      self->_layers = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(a3, "count")}];
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v10 = [a3 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v29;
      do
      {
        v13 = 0;
        do
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(a3);
          }

          v14 = *(*(&v28 + 1) + 8 * v13);
          if (self->_shouldPulsate)
          {
            v15 = [[TSKPulseAnimationController alloc] initWithDelegate:self];
          }

          else
          {
            v15 = objc_alloc_init(TSKHighlightController);
          }

          v16 = v15;
          [v7 addObject:v15];

          if (self->_shouldPulsate)
          {
            [(TSKPulseAnimationController *)v16 setAutohide:self->_autohide];
          }

          v17 = [(TSKHighlightArrayControllerProtocol *)self->_delegate newPathForSearchReference:v14];
          v18 = v17;
          if (v17 && !CGPathIsEmpty(v17))
          {
            [(TSKHighlightController *)v16 setViewScale:self->_viewScale];
            v19 = *&self->_canvasTransform.c;
            v27[0] = *&self->_canvasTransform.a;
            v27[1] = v19;
            v20 = *&self->_layerTransform.a;
            v27[2] = *&self->_canvasTransform.tx;
            v21 = *&self->_layerTransform.c;
            v22 = *&self->_layerTransform.tx;
            v26[0] = v20;
            v26[1] = v21;
            v26[2] = v22;
            [(TSKHighlightController *)v16 setCanvasTransform:v27 layerTransform:v26];
            v23 = [(TSKHighlightArrayControllerProtocol *)self->_delegate imageForSearchReference:v14 forPath:v18 shouldPulsate:self->_shouldPulsate];
            [(TSKHighlightController *)v16 createLayerWithZOrder:self->_zOrder contentsScaleForLayers:a4];
            [(TSKHighlightController *)v16 buildLayersForPath:v18 withImage:v23];
            [(NSMutableArray *)self->_layers addObject:[(TSKHighlightController *)v16 layer]];
          }

          CGPathRelease(v18);
          ++v13;
        }

        while (v11 != v13);
        v11 = [a3 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v11);
    }

    self->_creatingLayers = 0;
  }

  controllers = self->_controllers;
  if (!controllers)
  {
    if ([a3 count])
    {
      self->_controllers = [v7 mutableCopy];
      return v7;
    }

    controllers = self->_controllers;
  }

  [(NSMutableArray *)controllers addObjectsFromArray:v7];
  return v7;
}

- (void)setTransform:(CGAffineTransform *)a3
{
  v3 = *&a3->a;
  v4 = *&a3->tx;
  *&self->_layerTransform.c = *&a3->c;
  *&self->_layerTransform.tx = v4;
  *&self->_layerTransform.a = v3;
  v5 = *&a3->a;
  v6 = *&a3->tx;
  *&self->_canvasTransform.c = *&a3->c;
  *&self->_canvasTransform.tx = v6;
  *&self->_canvasTransform.a = v5;
}

- (CGAffineTransform)transform
{
  v3 = *&self[1].c;
  *&retstr->a = *&self[1].a;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].tx;
  return self;
}

- (void)setCanvasTransform:(CGAffineTransform *)a3 layerTransform:(CGAffineTransform *)a4
{
  v4 = *&a3->a;
  v5 = *&a3->tx;
  *&self->_canvasTransform.c = *&a3->c;
  *&self->_canvasTransform.tx = v5;
  *&self->_canvasTransform.a = v4;
  v6 = *&a4->a;
  v7 = *&a4->tx;
  *&self->_layerTransform.c = *&a4->c;
  *&self->_layerTransform.tx = v7;
  *&self->_layerTransform.a = v6;
}

@end