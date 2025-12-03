@interface PUIViewportLayer
- (PUIViewportLayer)initWithCoder:(id)coder;
- (PUIViewportLayer)initWithLayer:(id)layer;
- (PUIViewportLayer)initWithScale:(double)scale;
- (void)layoutSublayers;
- (void)setScale:(double)scale;
@end

@implementation PUIViewportLayer

- (PUIViewportLayer)initWithScale:(double)scale
{
  v7.receiver = self;
  v7.super_class = PUIViewportLayer;
  v3 = [(PUIViewportLayer *)&v7 init];
  if (v3)
  {
    layer = [MEMORY[0x1E6979398] layer];
    contentLayer = v3->_contentLayer;
    v3->_contentLayer = layer;

    [(PUIViewportLayer *)v3 setName:@"Viewport Layer"];
    [(CALayer *)v3->_contentLayer setName:@"Scale Layer"];
    [(PUIViewportLayer *)v3 addSublayer:v3->_contentLayer];
  }

  return v3;
}

- (PUIViewportLayer)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = PUIViewportLayer;
  return [(PUIViewportLayer *)&v4 initWithCoder:coder];
}

- (PUIViewportLayer)initWithLayer:(id)layer
{
  layerCopy = layer;
  v9.receiver = self;
  v9.super_class = PUIViewportLayer;
  v5 = [(PUIViewportLayer *)&v9 initWithLayer:layerCopy];
  if (v5)
  {
    v6 = [layerCopy valueForKey:@"scale"];
    [v6 doubleValue];
    v5->_scale = v7;
  }

  return v5;
}

- (void)setScale:(double)scale
{
  if (self->_scale != scale)
  {
    self->_scale = scale;
    [(PUIViewportLayer *)self setNeedsLayout];
  }
}

- (void)layoutSublayers
{
  v24 = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = PUIViewportLayer;
  [(PUIViewportLayer *)&v22 layoutSublayers];
  memset(&v21, 0, sizeof(v21));
  scale = self->_scale;
  v4 = *(MEMORY[0x1E69792E8] + 80);
  *&v20.m31 = *(MEMORY[0x1E69792E8] + 64);
  *&v20.m33 = v4;
  v5 = *(MEMORY[0x1E69792E8] + 112);
  *&v20.m41 = *(MEMORY[0x1E69792E8] + 96);
  *&v20.m43 = v5;
  v6 = *(MEMORY[0x1E69792E8] + 16);
  *&v20.m11 = *MEMORY[0x1E69792E8];
  *&v20.m13 = v6;
  v7 = *(MEMORY[0x1E69792E8] + 48);
  *&v20.m21 = *(MEMORY[0x1E69792E8] + 32);
  *&v20.m23 = v7;
  CATransform3DScale(&v21, &v20, scale, scale, 1.0);
  contentLayer = self->_contentLayer;
  v20 = v21;
  [(CALayer *)contentLayer setTransform:&v20];
  v9 = self->_contentLayer;
  [(PUIViewportLayer *)self bounds];
  [(CALayer *)v9 setFrame:?];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  sublayers = [(CALayer *)self->_contentLayer sublayers];
  v11 = [sublayers countByEnumeratingWithState:&v16 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(sublayers);
        }

        v15 = *(*(&v16 + 1) + 8 * v14);
        [(CALayer *)self->_contentLayer bounds];
        [v15 setFrame:?];
        ++v14;
      }

      while (v12 != v14);
      v12 = [sublayers countByEnumeratingWithState:&v16 objects:v23 count:16];
    }

    while (v12);
  }
}

@end