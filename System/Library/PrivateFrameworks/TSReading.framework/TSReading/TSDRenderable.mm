@interface TSDRenderable
+ (id)renderable;
+ (id)renderableFromLayer:(id)layer;
- (BOOL)allowsGroupOpacity;
- (BOOL)containsPoint:(CGPoint)point;
- (BOOL)isEqual:(id)equal;
- (BOOL)isHidden;
- (BOOL)masksToBounds;
- (BOOL)shouldRasterize;
- (BOOL)tsd_tilingSafeHasContents;
- (CALayer)mask;
- (CALayer)superlayer;
- (CALayerDelegate)delegate;
- (CGAffineTransform)affineTransform;
- (CGColor)backgroundColor;
- (CGColor)borderColor;
- (CGColor)shadowColor;
- (CGPath)shadowPath;
- (CGPoint)anchorPoint;
- (CGPoint)convertPoint:(CGPoint)point fromLayer:(id)layer;
- (CGPoint)convertPoint:(CGPoint)point toLayer:(id)layer;
- (CGPoint)position;
- (CGRect)bounds;
- (CGRect)contentsRect;
- (CGRect)frame;
- (CGSize)preferredFrameSize;
- (CGSize)shadowOffset;
- (NSArray)sublayers;
- (NSArray)subrenderables;
- (NSString)contentsGravity;
- (NSString)magnificationFilter;
- (NSString)name;
- (TSDRenderable)initWithCALayer:(id)layer;
- (TSDRenderable)presentationRenderable;
- (double)borderWidth;
- (double)contentsScale;
- (double)cornerRadius;
- (double)rasterizationScale;
- (double)shadowRadius;
- (double)zPosition;
- (float)opacity;
- (float)shadowOpacity;
- (id)animationForKey:(id)key;
- (id)contents;
- (id)description;
- (unsigned)edgeAntialiasingMask;
- (void)addAnimation:(id)animation forKey:(id)key;
- (void)addSublayer:(id)sublayer;
- (void)addSubrenderable:(id)subrenderable;
- (void)removeAnimationForKey:(id)key;
- (void)removeFromSuperlayer;
- (void)setAffineTransform:(CGAffineTransform *)transform;
- (void)setAllowsGroupOpacity:(BOOL)opacity;
- (void)setAnchorPoint:(CGPoint)point;
- (void)setBackgroundColor:(CGColor *)color;
- (void)setBorderColor:(CGColor *)color;
- (void)setBorderWidth:(double)width;
- (void)setBounds:(CGRect)bounds;
- (void)setContents:(id)contents;
- (void)setContentsGravity:(id)gravity;
- (void)setContentsRect:(CGRect)rect;
- (void)setContentsScale:(double)scale;
- (void)setCornerRadius:(double)radius;
- (void)setDelegate:(id)delegate;
- (void)setEdgeAntialiasingMask:(unsigned int)mask;
- (void)setFrame:(CGRect)frame;
- (void)setHidden:(BOOL)hidden;
- (void)setIfDifferentFrame:(CGRect)frame orTransform:(CGAffineTransform *)transform;
- (void)setMagnificationFilter:(id)filter;
- (void)setMask:(id)mask;
- (void)setMaskRenderable:(id)renderable;
- (void)setMasksToBounds:(BOOL)bounds;
- (void)setName:(id)name;
- (void)setNeedsDisplay;
- (void)setOpacity:(float)opacity;
- (void)setPosition:(CGPoint)position;
- (void)setRasterizationScale:(double)scale;
- (void)setShadowColor:(CGColor *)color;
- (void)setShadowOffset:(CGSize)offset;
- (void)setShadowOpacity:(float)opacity;
- (void)setShadowPath:(CGPath *)path;
- (void)setShadowRadius:(double)radius;
- (void)setShouldRasterize:(BOOL)rasterize;
- (void)setSublayers:(id)sublayers;
- (void)setSubrenderables:(id)subrenderables;
- (void)setZPosition:(double)position;
@end

@implementation TSDRenderable

- (TSDRenderable)initWithCALayer:(id)layer
{
  layerCopy = layer;
  if ((-[TSDRenderable isMemberOfClass:](self, "isMemberOfClass:", [objc_opt_class() tsd_renderableClass]) & 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDRenderable initWithCALayer:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDRenderable.m"];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [currentHandler handleFailureInFunction:v7 file:v8 lineNumber:30 description:{@"Wrong renderable class (%@) for layer class (%@)!", v10, v12}];
  }

  v16.receiver = self;
  v16.super_class = TSDRenderable;
  v13 = [(TSDRenderable *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_layer, layer);
  }

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(CALayer *)self->_layer isEqual:equalCopy->_layer];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

+ (id)renderableFromLayer:(id)layer
{
  layerCopy = layer;
  v4 = [objc_alloc(objc_msgSend(objc_opt_class() "tsd_renderableClass"))];

  return v4;
}

+ (id)renderable
{
  v2 = [self alloc];
  layer = [MEMORY[0x277CD9ED0] layer];
  v4 = [v2 initWithCALayer:layer];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  layer = [(TSDRenderable *)self layer];
  v7 = [v3 stringWithFormat:@"<%@: %@>", v5, layer];

  return v7;
}

- (void)addSubrenderable:(id)subrenderable
{
  subrenderableCopy = subrenderable;
  layer = [(TSDRenderable *)self layer];
  layer2 = [subrenderableCopy layer];

  [layer addSublayer:layer2];
}

- (void)setSubrenderables:(id)subrenderables
{
  v19 = *MEMORY[0x277D85DE8];
  subrenderablesCopy = subrenderables;
  if (subrenderablesCopy)
  {
    array = [MEMORY[0x277CBEB18] array];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = subrenderablesCopy;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          layer = [*(*(&v14 + 1) + 8 * i) layer];
          [array addObject:layer];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    layer2 = [(TSDRenderable *)self layer];
    [layer2 setSublayers:array];
  }

  else
  {
    layer3 = [(TSDRenderable *)self layer];
    [layer3 setSublayers:0];
  }
}

- (NSArray)subrenderables
{
  v19 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  layer = [(TSDRenderable *)self layer];
  sublayers = [layer sublayers];

  v6 = [sublayers countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(sublayers);
        }

        v10 = [TSDRenderable renderableFromLayer:*(*(&v14 + 1) + 8 * v9)];
        [(NSArray *)array addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [sublayers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  if ([(NSArray *)array count])
  {
    v11 = array;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

- (void)setMaskRenderable:(id)renderable
{
  layer = [renderable layer];
  layer2 = [(TSDRenderable *)self layer];
  [layer2 setMask:layer];
}

- (TSDRenderable)presentationRenderable
{
  layer = [(TSDRenderable *)self layer];
  presentationLayer = [layer presentationLayer];

  if (presentationLayer)
  {
    layer2 = [(TSDRenderable *)self layer];
    presentationLayer2 = [layer2 presentationLayer];
    v7 = [TSDRenderable renderableFromLayer:presentationLayer2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CALayerDelegate)delegate
{
  layer = [(TSDRenderable *)self layer];
  delegate = [layer delegate];

  return delegate;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  layer = [(TSDRenderable *)self layer];
  [layer setDelegate:delegateCopy];
}

- (id)contents
{
  layer = [(TSDRenderable *)self layer];
  contents = [layer contents];

  return contents;
}

- (void)setContents:(id)contents
{
  contentsCopy = contents;
  layer = [(TSDRenderable *)self layer];
  [layer setContents:contentsCopy];
}

- (CALayer)superlayer
{
  layer = [(TSDRenderable *)self layer];
  superlayer = [layer superlayer];

  return superlayer;
}

- (NSArray)sublayers
{
  layer = [(TSDRenderable *)self layer];
  sublayers = [layer sublayers];

  return sublayers;
}

- (void)setSublayers:(id)sublayers
{
  sublayersCopy = sublayers;
  layer = [(TSDRenderable *)self layer];
  [layer setSublayers:sublayersCopy];
}

- (CGPoint)anchorPoint
{
  layer = [(TSDRenderable *)self layer];
  [layer anchorPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)setAnchorPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  layer = [(TSDRenderable *)self layer];
  [layer setAnchorPoint:{x, y}];
}

- (CALayer)mask
{
  layer = [(TSDRenderable *)self layer];
  mask = [layer mask];

  return mask;
}

- (void)setMask:(id)mask
{
  maskCopy = mask;
  layer = [(TSDRenderable *)self layer];
  [layer setMask:maskCopy];
}

- (BOOL)isHidden
{
  layer = [(TSDRenderable *)self layer];
  isHidden = [layer isHidden];

  return isHidden;
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  layer = [(TSDRenderable *)self layer];
  [layer setHidden:hiddenCopy];
}

- (float)opacity
{
  layer = [(TSDRenderable *)self layer];
  [layer opacity];
  v4 = v3;

  return v4;
}

- (void)setOpacity:(float)opacity
{
  layer = [(TSDRenderable *)self layer];
  *&v4 = opacity;
  [layer setOpacity:v4];
}

- (CGRect)bounds
{
  layer = [(TSDRenderable *)self layer];
  [layer bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  layer = [(TSDRenderable *)self layer];
  [layer setBounds:{x, y, width, height}];
}

- (CGRect)frame
{
  layer = [(TSDRenderable *)self layer];
  [layer frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  layer = [(TSDRenderable *)self layer];
  [layer setFrame:{x, y, width, height}];
}

- (CGPoint)position
{
  layer = [(TSDRenderable *)self layer];
  [layer position];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)setPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  layer = [(TSDRenderable *)self layer];
  [layer setPosition:{x, y}];
}

- (CGAffineTransform)affineTransform
{
  layer = [(TSDRenderable *)self layer];
  if (layer)
  {
    v6 = layer;
    [layer affineTransform];
    layer = v6;
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (void)setAffineTransform:(CGAffineTransform *)transform
{
  v3 = [(TSDRenderable *)self layer:*&transform->a];
  [v3 setAffineTransform:&v4];
}

- (double)contentsScale
{
  layer = [(TSDRenderable *)self layer];
  [layer contentsScale];
  v4 = v3;

  return v4;
}

- (void)setContentsScale:(double)scale
{
  layer = [(TSDRenderable *)self layer];
  [layer setContentsScale:scale];
}

- (CGColor)backgroundColor
{
  layer = [(TSDRenderable *)self layer];
  backgroundColor = [layer backgroundColor];

  return backgroundColor;
}

- (void)setBackgroundColor:(CGColor *)color
{
  layer = [(TSDRenderable *)self layer];
  [layer setBackgroundColor:color];
}

- (double)cornerRadius
{
  layer = [(TSDRenderable *)self layer];
  [layer cornerRadius];
  v4 = v3;

  return v4;
}

- (void)setCornerRadius:(double)radius
{
  layer = [(TSDRenderable *)self layer];
  [layer setCornerRadius:radius];
}

- (unsigned)edgeAntialiasingMask
{
  layer = [(TSDRenderable *)self layer];
  edgeAntialiasingMask = [layer edgeAntialiasingMask];

  return edgeAntialiasingMask;
}

- (void)setEdgeAntialiasingMask:(unsigned int)mask
{
  v3 = *&mask;
  layer = [(TSDRenderable *)self layer];
  [layer setEdgeAntialiasingMask:v3];
}

- (double)borderWidth
{
  layer = [(TSDRenderable *)self layer];
  [layer borderWidth];
  v4 = v3;

  return v4;
}

- (void)setBorderWidth:(double)width
{
  layer = [(TSDRenderable *)self layer];
  [layer setBorderWidth:width];
}

- (CGColor)borderColor
{
  layer = [(TSDRenderable *)self layer];
  borderColor = [layer borderColor];

  return borderColor;
}

- (void)setBorderColor:(CGColor *)color
{
  layer = [(TSDRenderable *)self layer];
  [layer setBorderColor:color];
}

- (NSString)name
{
  layer = [(TSDRenderable *)self layer];
  name = [layer name];

  return name;
}

- (void)setName:(id)name
{
  nameCopy = name;
  layer = [(TSDRenderable *)self layer];
  [layer setName:nameCopy];
}

- (CGRect)contentsRect
{
  layer = [(TSDRenderable *)self layer];
  [layer contentsRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setContentsRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  layer = [(TSDRenderable *)self layer];
  [layer setContentsRect:{x, y, width, height}];
}

- (BOOL)allowsGroupOpacity
{
  layer = [(TSDRenderable *)self layer];
  allowsGroupOpacity = [layer allowsGroupOpacity];

  return allowsGroupOpacity;
}

- (void)setAllowsGroupOpacity:(BOOL)opacity
{
  opacityCopy = opacity;
  layer = [(TSDRenderable *)self layer];
  [layer setAllowsGroupOpacity:opacityCopy];
}

- (BOOL)masksToBounds
{
  layer = [(TSDRenderable *)self layer];
  masksToBounds = [layer masksToBounds];

  return masksToBounds;
}

- (void)setMasksToBounds:(BOOL)bounds
{
  boundsCopy = bounds;
  layer = [(TSDRenderable *)self layer];
  [layer setMasksToBounds:boundsCopy];
}

- (NSString)magnificationFilter
{
  layer = [(TSDRenderable *)self layer];
  magnificationFilter = [layer magnificationFilter];

  return magnificationFilter;
}

- (void)setMagnificationFilter:(id)filter
{
  filterCopy = filter;
  layer = [(TSDRenderable *)self layer];
  [layer setMagnificationFilter:filterCopy];
}

- (double)zPosition
{
  layer = [(TSDRenderable *)self layer];
  [layer zPosition];
  v4 = v3;

  return v4;
}

- (void)setZPosition:(double)position
{
  layer = [(TSDRenderable *)self layer];
  [layer setZPosition:position];
}

- (NSString)contentsGravity
{
  layer = [(TSDRenderable *)self layer];
  contentsGravity = [layer contentsGravity];

  return contentsGravity;
}

- (void)setContentsGravity:(id)gravity
{
  gravityCopy = gravity;
  layer = [(TSDRenderable *)self layer];
  [layer setContentsGravity:gravityCopy];
}

- (CGColor)shadowColor
{
  layer = [(TSDRenderable *)self layer];
  shadowColor = [layer shadowColor];

  return shadowColor;
}

- (void)setShadowColor:(CGColor *)color
{
  layer = [(TSDRenderable *)self layer];
  [layer setShadowColor:color];
}

- (float)shadowOpacity
{
  layer = [(TSDRenderable *)self layer];
  [layer shadowOpacity];
  v4 = v3;

  return v4;
}

- (void)setShadowOpacity:(float)opacity
{
  layer = [(TSDRenderable *)self layer];
  *&v4 = opacity;
  [layer setShadowOpacity:v4];
}

- (CGSize)shadowOffset
{
  layer = [(TSDRenderable *)self layer];
  [layer shadowOffset];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setShadowOffset:(CGSize)offset
{
  height = offset.height;
  width = offset.width;
  layer = [(TSDRenderable *)self layer];
  [layer setShadowOffset:{width, height}];
}

- (double)shadowRadius
{
  layer = [(TSDRenderable *)self layer];
  [layer shadowRadius];
  v4 = v3;

  return v4;
}

- (void)setShadowRadius:(double)radius
{
  layer = [(TSDRenderable *)self layer];
  [layer setShadowRadius:radius];
}

- (CGPath)shadowPath
{
  layer = [(TSDRenderable *)self layer];
  shadowPath = [layer shadowPath];

  return shadowPath;
}

- (void)setShadowPath:(CGPath *)path
{
  layer = [(TSDRenderable *)self layer];
  [layer setShadowPath:path];
}

- (BOOL)shouldRasterize
{
  layer = [(TSDRenderable *)self layer];
  shouldRasterize = [layer shouldRasterize];

  return shouldRasterize;
}

- (void)setShouldRasterize:(BOOL)rasterize
{
  rasterizeCopy = rasterize;
  layer = [(TSDRenderable *)self layer];
  [layer setShouldRasterize:rasterizeCopy];
}

- (double)rasterizationScale
{
  layer = [(TSDRenderable *)self layer];
  [layer rasterizationScale];
  v4 = v3;

  return v4;
}

- (void)setRasterizationScale:(double)scale
{
  layer = [(TSDRenderable *)self layer];
  [layer setRasterizationScale:scale];
}

- (CGSize)preferredFrameSize
{
  layer = [(TSDRenderable *)self layer];
  [layer preferredFrameSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (BOOL)tsd_tilingSafeHasContents
{
  layer = [(TSDRenderable *)self layer];
  tilingSafeHasContents = [layer tilingSafeHasContents];

  return tilingSafeHasContents;
}

- (void)removeFromSuperlayer
{
  layer = [(TSDRenderable *)self layer];
  [layer removeFromSuperlayer];
}

- (void)setNeedsDisplay
{
  layer = [(TSDRenderable *)self layer];
  [layer setNeedsDisplay];
}

- (void)addSublayer:(id)sublayer
{
  sublayerCopy = sublayer;
  layer = [(TSDRenderable *)self layer];
  [layer addSublayer:sublayerCopy];
}

- (void)addAnimation:(id)animation forKey:(id)key
{
  keyCopy = key;
  animationCopy = animation;
  layer = [(TSDRenderable *)self layer];
  [layer addAnimation:animationCopy forKey:keyCopy];
}

- (id)animationForKey:(id)key
{
  keyCopy = key;
  layer = [(TSDRenderable *)self layer];
  v6 = [layer animationForKey:keyCopy];

  return v6;
}

- (void)removeAnimationForKey:(id)key
{
  keyCopy = key;
  layer = [(TSDRenderable *)self layer];
  [layer removeAnimationForKey:keyCopy];
}

- (BOOL)containsPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  layer = [(TSDRenderable *)self layer];
  v6 = [layer containsPoint:{x, y}];

  return v6;
}

- (CGPoint)convertPoint:(CGPoint)point fromLayer:(id)layer
{
  y = point.y;
  x = point.x;
  layerCopy = layer;
  layer = [(TSDRenderable *)self layer];
  [layer convertPoint:layerCopy fromLayer:{x, y}];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (CGPoint)convertPoint:(CGPoint)point toLayer:(id)layer
{
  y = point.y;
  x = point.x;
  layerCopy = layer;
  layer = [(TSDRenderable *)self layer];
  [layer convertPoint:layerCopy toLayer:{x, y}];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (void)setIfDifferentFrame:(CGRect)frame orTransform:(CGAffineTransform *)transform
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  layer = [(TSDRenderable *)self layer];
  v10 = *&transform->c;
  v11[0] = *&transform->a;
  v11[1] = v10;
  v11[2] = *&transform->tx;
  [layer setIfDifferentFrame:v11 orTransform:{x, y, width, height}];
}

@end