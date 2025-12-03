@interface WebNodeHighlightView
- (WebNodeHighlightView)initWithWebNodeHighlight:(id)highlight;
- (void)_attach:(id)_attach numLayers:(unint64_t)layers;
- (void)_layoutForNodeHighlight:(void *)highlight parent:(id)parent;
- (void)_layoutForRectsHighlight:(void *)highlight parent:(id)parent;
- (void)_removeAllLayers;
- (void)dealloc;
- (void)layoutSublayers:(id)sublayers;
@end

@implementation WebNodeHighlightView

- (void)_removeAllLayers
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  layers = self->_layers;
  v4 = [(NSMutableArray *)layers countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(layers);
        }

        [*(*(&v8 + 1) + 8 * i) removeFromSuperlayer];
      }

      v5 = [(NSMutableArray *)layers countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_layers removeAllObjects];
}

- (WebNodeHighlightView)initWithWebNodeHighlight:(id)highlight
{
  v4 = [(WebNodeHighlightView *)self initWithFrame:*MEMORY[0x1E696AA80], *(MEMORY[0x1E696AA80] + 8), *(MEMORY[0x1E696AA80] + 16), *(MEMORY[0x1E696AA80] + 24)];
  if (v4)
  {
    v4->_webNodeHighlight = highlight;
    v4->_layers = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  return v4;
}

- (void)dealloc
{
  [(WebNodeHighlightView *)self detachFromWebNodeHighlight];
  [(WebNodeHighlightView *)self _removeAllLayers];

  v3.receiver = self;
  v3.super_class = WebNodeHighlightView;
  [(WebNodeHighlightView *)&v3 dealloc];
}

- (void)_attach:(id)_attach numLayers:(unint64_t)layers
{
  layersCopy = layers;
  if (-[NSMutableArray count](self->_layers, "count") != layers || [-[NSMutableArray objectAtIndex:](self->_layers objectAtIndex:{0), "superlayer"}] != _attach)
  {
    [(WebNodeHighlightView *)self _removeAllLayers];
    for (; layersCopy; --layersCopy)
    {
      v7 = objc_alloc_init(MEMORY[0x1E69794A0]);
      [(NSMutableArray *)self->_layers addObject:v7];
      [_attach addSublayer:v7];
      if (v7)
      {
      }
    }
  }
}

- (void)_layoutForNodeHighlight:(void *)highlight parent:(id)parent
{
  if (*(highlight + 15))
  {
    [(WebNodeHighlightView *)self _attach:parent numLayers:4];
    v6 = [(NSMutableArray *)self->_layers objectAtIndex:0];
    v7 = [(NSMutableArray *)self->_layers objectAtIndex:1];
    v8 = [(NSMutableArray *)self->_layers objectAtIndex:2];
    v9 = [(NSMutableArray *)self->_layers objectAtIndex:3];
    v10 = *(highlight + 15);
    if (!v10)
    {
      goto LABEL_15;
    }

    v11 = *(highlight + 6);
    v12 = v11[1];
    v21[0] = *v11;
    v21[1] = v12;
    if (v10 == 1)
    {
      __break(0xC471u);
      JUMPOUT(0x1C7AE8EA4);
    }

    v13 = v11[3];
    v20[0] = v11[2];
    v20[1] = v13;
    if (v10 <= 2)
    {
      __break(0xC471u);
      JUMPOUT(0x1C7AE8EACLL);
    }

    v14 = v11[5];
    v19[0] = v11[4];
    v19[1] = v14;
    if (v10 == 3)
    {
LABEL_15:
      __break(0xC471u);
      JUMPOUT(0x1C7AE8E9CLL);
    }

    v15 = v9;
    v16 = v11[7];
    v18[0] = v11[6];
    v18[1] = v16;
    WebCore::cachedCGColor();
    [(CAShapeLayer *)v6 setFillColor:cf];
    if (cf)
    {
      CFRelease(cf);
    }

    WebCore::cachedCGColor();
    [(CAShapeLayer *)v7 setFillColor:0];
    WebCore::cachedCGColor();
    [(CAShapeLayer *)v8 setFillColor:0];
    WebCore::cachedCGColor();
    [(CAShapeLayer *)v15 setFillColor:0];
    layerPathWithHole(v6, v21, v20);
    layerPathWithHole(v7, v20, v19);
    layerPathWithHole(v8, v19, v18);
    layerPath(v15, v18);
  }

  else
  {

    [(WebNodeHighlightView *)self _removeAllLayers];
  }
}

- (void)_layoutForRectsHighlight:(void *)highlight parent:(id)parent
{
  v5 = *(highlight + 15);
  if (v5)
  {
    [(WebNodeHighlightView *)self _attach:parent numLayers:v5];
    WebCore::cachedCGColor();
    v7 = 0;
    v8 = 0;
    v9 = 32 * v5;
    do
    {
      v10 = [(NSMutableArray *)self->_layers objectAtIndex:v8];
      [(CAShapeLayer *)v10 setFillColor:cf];
      if (v8 >= *(highlight + 15))
      {
        __break(0xC471u);
        return;
      }

      layerPath(v10, (*(highlight + 6) + v7));
      ++v8;
      v7 += 32;
    }

    while (v9 != v7);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {

    [(WebNodeHighlightView *)self _removeAllLayers];
  }
}

- (void)layoutSublayers:(id)sublayers
{
  if (self->_webNodeHighlight)
  {
    WebThreadLock();
    webNodeHighlight = self->_webNodeHighlight;
    if (webNodeHighlight)
    {
      [(WebNodeHighlight *)webNodeHighlight inspectorController];
      if (*&v8[0])
      {
        v9 = 0;
        memset(v8, 0, sizeof(v8));
        v10 = 1;
        v11 = 0u;
        v12 = 0u;
        v13 = 0u;
        v14 = 1;
        v6 = self->_webNodeHighlight;
        if (v6)
        {
          [(WebNodeHighlight *)v6 inspectorController];
        }

        WebCore::InspectorController::getHighlight();
        if (v10 == 3)
        {
          [(WebNodeHighlightView *)self _layoutForRectsHighlight:v8 parent:sublayers];
        }

        else if (v10 == 1)
        {
          [(WebNodeHighlightView *)self _layoutForNodeHighlight:v8 parent:sublayers];
        }

        WebCore::InspectorOverlayHighlight::~InspectorOverlayHighlight(v8, v7);
      }
    }
  }
}

@end