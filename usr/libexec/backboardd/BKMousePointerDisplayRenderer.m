@interface BKMousePointerDisplayRenderer
+ (BKMousePointerDisplayRendererRootLayerProperties)rootLayerPropertiesForDisplay:(SEL)a3 displayController:(id)a4;
- (BKMousePointerDisplayRenderer)initWithDisplayName:(id)a3;
- (BKMousePointerDisplayRendererRootLayerProperties)rootLayerProperties;
- (BKMousePointerDisplayRendererTransformLayerProperties)transformLayerProperties;
- (CGPoint)pointerPosition;
- (void)_updateTransformLayerPosition;
- (void)setPointerLayer:(id)a3;
- (void)setPointerPosition:(CGPoint)a3;
- (void)setRootLayerProperties:(BKMousePointerDisplayRendererRootLayerProperties *)a3;
@end

@implementation BKMousePointerDisplayRenderer

- (BKMousePointerDisplayRendererTransformLayerProperties)transformLayerProperties
{
  v3 = *&self[1].affineTransform.tx;
  *&retstr->affineTransform.tx = *&self[1].affineTransform.c;
  retstr->bounds.origin = v3;
  retstr->bounds.size = self[1].bounds.origin;
  v4 = *&self[1].affineTransform.a;
  *&retstr->affineTransform.a = self->bounds.size;
  *&retstr->affineTransform.c = v4;
  return self;
}

- (BKMousePointerDisplayRendererRootLayerProperties)rootLayerProperties
{
  v3 = *&self[2].affineTransform.c;
  *&retstr->affineTransform.tx = *&self[2].affineTransform.a;
  retstr->bounds.origin = v3;
  retstr->bounds.size = *&self[2].affineTransform.tx;
  retstr->displayScale = self[2].bounds.origin.x;
  v4 = *&self[1].bounds.size.height;
  *&retstr->affineTransform.a = *&self[1].bounds.origin.y;
  *&retstr->affineTransform.c = v4;
  return self;
}

- (CGPoint)pointerPosition
{
  x = self->_pointerPosition.x;
  y = self->_pointerPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)_updateTransformLayerPosition
{
  [(CALayer *)self->_rootLayer bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CALayer *)self->_rootLayer anchorPoint];
  transformLayer = self->_transformLayer;
  v13 = v4 + v12 * v8;
  v15 = v6 + v14 * v10;

  [(CALayer *)transformLayer setPosition:v13, v15];
}

- (void)setRootLayerProperties:(BKMousePointerDisplayRendererRootLayerProperties *)a3
{
  v5 = *&self->_rootLayerProperties.affineTransform.c;
  *&t1.a = *&self->_rootLayerProperties.affineTransform.a;
  *&t1.c = v5;
  *&t1.tx = *&self->_rootLayerProperties.affineTransform.tx;
  v6 = *&a3->affineTransform.c;
  *&v45.a = *&a3->affineTransform.a;
  *&v45.c = v6;
  *&v45.tx = *&a3->affineTransform.tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v45))
  {
    goto LABEL_4;
  }

  x = self->_rootLayerProperties.bounds.origin.x;
  y = self->_rootLayerProperties.bounds.origin.y;
  width = self->_rootLayerProperties.bounds.size.width;
  height = self->_rootLayerProperties.bounds.size.height;
  v11 = a3->bounds.origin.x;
  v12 = a3->bounds.origin.y;
  v13 = a3->bounds.size.width;
  v14 = a3->bounds.size.height;
  if (!BSRectEqualToRect() || (v15 = self->_rootLayerProperties.displayScale, v16 = a3->displayScale, (BSFloatEqualToFloat() & 1) == 0))
  {
LABEL_4:
    displayScale = self->_rootLayerProperties.displayScale;
    if (BSFloatEqualToFloat())
    {
      v18 = 1;
    }

    else
    {
      v19 = self->_rootLayerProperties.displayScale;
      v18 = BSFloatEqualToFloat();
    }

    v20 = *&a3->affineTransform.tx;
    origin = a3->bounds.origin;
    size = a3->bounds.size;
    self->_rootLayerProperties.displayScale = a3->displayScale;
    v23 = *&a3->affineTransform.c;
    *&self->_rootLayerProperties.affineTransform.a = *&a3->affineTransform.a;
    *&self->_rootLayerProperties.affineTransform.c = v23;
    self->_rootLayerProperties.bounds.origin = origin;
    self->_rootLayerProperties.bounds.size = size;
    *&self->_rootLayerProperties.affineTransform.tx = v20;
    *&v20 = self->_rootLayerProperties.displayScale;
    if (BSFloatEqualToFloat())
    {
      v24 = 1;
    }

    else
    {
      v25 = self->_rootLayerProperties.displayScale;
      v24 = BSFloatEqualToFloat();
    }

    if (v24 != v18)
    {
      [(CAContext *)self->_context setLayer:0];
      [(CAContext *)self->_context invalidate];
      context = self->_context;
      self->_context = 0;
    }

    if (!CGRectIsEmpty(self->_rootLayerProperties.bounds))
    {
      v27 = self->_rootLayerProperties.displayScale;
      if (BSFloatGreaterThanFloat())
      {
        if (!self->_rootLayer)
        {
          v28 = +[CALayer layer];
          rootLayer = self->_rootLayer;
          self->_rootLayer = v28;
        }

        if (self->_transformLayer)
        {
          [(CALayer *)self->_rootLayer addSublayer:?];
        }

        v30 = self->_context;
        if (!v30)
        {
          v47[0] = kCAContextDisplayable;
          v47[1] = kCAContextDisplayName;
          displayName = self->_displayName;
          v48[0] = &__kCFBooleanTrue;
          v48[1] = displayName;
          v47[2] = kCAContextIgnoresHitTest;
          v47[3] = kCAContextSecure;
          v48[2] = &__kCFBooleanTrue;
          v48[3] = &__kCFBooleanTrue;
          v32 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:4];
          v33 = [CAContext remoteContextWithOptions:v32];
          v34 = self->_context;
          self->_context = v33;

          LODWORD(v35) = 1173553152;
          [(CAContext *)self->_context setLevel:v35];
          [(CAContext *)self->_context setSecure:1];

          v30 = self->_context;
        }

        [(CAContext *)v30 setLayer:self->_rootLayer];
      }
    }

    v36 = self->_rootLayer;
    v37 = *&self->_rootLayerProperties.affineTransform.c;
    *&t1.a = *&self->_rootLayerProperties.affineTransform.a;
    *&t1.c = v37;
    *&t1.tx = *&self->_rootLayerProperties.affineTransform.tx;
    [(CALayer *)v36 setAffineTransform:&t1];
    [(CALayer *)self->_rootLayer setRasterizationScale:self->_rootLayerProperties.displayScale];
    [(CALayer *)self->_rootLayer setBounds:self->_rootLayerProperties.bounds.origin.x, self->_rootLayerProperties.bounds.origin.y, self->_rootLayerProperties.bounds.size.width, self->_rootLayerProperties.bounds.size.height];
    bounds = self->_rootLayerProperties.bounds;
    v38 = *&self->_rootLayerProperties.affineTransform.c;
    *&t1.a = *&self->_rootLayerProperties.affineTransform.a;
    *&t1.c = v38;
    *&t1.tx = *&self->_rootLayerProperties.affineTransform.tx;
    v50 = CGRectApplyAffineTransform(bounds, &t1);
    v39 = v50.origin.x;
    v40 = v50.origin.y;
    v41 = v50.size.width;
    v42 = v50.size.height;
    v43 = self->_rootLayer;
    MidX = CGRectGetMidX(v50);
    v51.origin.x = v39;
    v51.origin.y = v40;
    v51.size.width = v41;
    v51.size.height = v42;
    [(CALayer *)v43 setPosition:MidX, CGRectGetMidY(v51)];
    [(BKMousePointerDisplayRenderer *)self _updateTransformLayerPosition];
  }
}

- (void)setPointerPosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = self->_pointerPosition.x;
  v7 = self->_pointerPosition.y;
  if ((BSPointEqualToPoint() & 1) == 0)
  {
    self->_pointerPosition.x = x;
    self->_pointerPosition.y = y;
    pointerLayer = self->_pointerLayer;

    [(CALayer *)pointerLayer setPosition:x, y];
  }
}

- (void)setPointerLayer:(id)a3
{
  v5 = a3;
  p_pointerLayer = &self->_pointerLayer;
  pointerLayer = self->_pointerLayer;
  v10 = v5;
  if (pointerLayer != v5)
  {
    if (pointerLayer)
    {
      v8 = [(CALayer *)pointerLayer superlayer];
      transformLayer = self->_transformLayer;

      if (v8 == transformLayer)
      {
        [(CALayer *)*p_pointerLayer removeFromSuperlayer];
      }
    }

    objc_storeStrong(&self->_pointerLayer, a3);
    if (*p_pointerLayer)
    {
      [(CALayer *)self->_transformLayer addSublayer:?];
      [(CALayer *)self->_pointerLayer setPosition:self->_pointerPosition.x, self->_pointerPosition.y];
    }
  }
}

- (BKMousePointerDisplayRenderer)initWithDisplayName:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BKMousePointerDisplayRenderer;
  v5 = [(BKMousePointerDisplayRenderer *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    displayName = v5->_displayName;
    v5->_displayName = v6;
  }

  return v5;
}

+ (BKMousePointerDisplayRendererRootLayerProperties)rootLayerPropertiesForDisplay:(SEL)a3 displayController:(id)a4
{
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (v8)
  {
    [v8 geometryForDisplay:v7];
    v10 = 0.0;
    if (BSFloatLessThanOrEqualToFloat())
    {
      v10 = 1.0;
    }
  }

  else if (BSFloatLessThanOrEqualToFloat())
  {
    v10 = 1.0;
  }

  else
  {
    v10 = 0.0;
  }

  CGAffineTransformMakeScale(&retstr->affineTransform, v10, v10);
  retstr->bounds.origin.x = 0.0;
  retstr->bounds.origin.y = 0.0;
  retstr->bounds.size.width = 0.0 / v10;
  retstr->bounds.size.height = 0.0 / v10;
  retstr->displayScale = v10;

  return result;
}

@end