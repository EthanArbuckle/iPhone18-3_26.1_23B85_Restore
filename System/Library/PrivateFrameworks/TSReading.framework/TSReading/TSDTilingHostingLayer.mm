@interface TSDTilingHostingLayer
- (TSDTilingHostingLayer)init;
- (TSDTilingHostingLayer)initWithCoder:(id)coder;
- (void)dealloc;
- (void)setNeedsDisplayForDirtyTiles:(id)tiles;
@end

@implementation TSDTilingHostingLayer

- (TSDTilingHostingLayer)init
{
  v5.receiver = self;
  v5.super_class = TSDTilingHostingLayer;
  v2 = [(TSDTilingHostingLayer *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TSDTilingHostingLayer *)v2 p_commonInit];
  }

  return v3;
}

- (TSDTilingHostingLayer)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = TSDTilingHostingLayer;
  v3 = [(TSDTilingHostingLayer *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(TSDTilingHostingLayer *)v3 p_commonInit];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSDTilingHostingLayer;
  [(TSDTilingHostingLayer *)&v3 dealloc];
}

- (void)setNeedsDisplayForDirtyTiles:(id)tiles
{
  [(TSDTilingHostingLayer *)self setNeedsDisplay];
  mDirtyTilingLayers = self->mDirtyTilingLayers;

  [(NSMutableSet *)mDirtyTilingLayers addObject:tiles];
}

@end