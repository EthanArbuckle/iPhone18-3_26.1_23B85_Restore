@interface UIPDFHighlighter
- (UIPDFHighlighter)init;
- (void)addAnimation:(id)animation;
- (void)addHighlightFor:(id)for to:(id)to animated:(BOOL)animated;
- (void)addHighlightLayerFor:(id)for atIndex:(unint64_t)index to:(id)to animated:(BOOL)animated;
- (void)addRectPath:(CGPath *)path toView:(id)view layer:(id)layer rectangle:(id *)rectangle upright:(BOOL)upright;
- (void)clear;
- (void)dealloc;
- (void)drawLayer:(id)layer inContext:(CGContext *)context;
- (void)makeTheBorderPath:(id)path layer:(id)layer rectangle:(id *)rectangle upright:(BOOL)upright;
- (void)makeTheClipPath:(id)path layer:(id)layer rectangle:(id *)rectangle upright:(BOOL)upright;
- (void)setNeedsDisplay;
- (void)unhide;
@end

@implementation UIPDFHighlighter

- (UIPDFHighlighter)init
{
  v12 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = UIPDFHighlighter;
  v2 = [(UIPDFHighlighter *)&v5 init];
  if (v2)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    *components = xmmword_18A6817C0;
    v11 = unk_18A6817D0;
    *v8 = xmmword_18A6817E0;
    v9 = unk_18A6817F0;
    *v6 = xmmword_18A681800;
    v7 = unk_18A681810;
    v2->_highlightColor = CGColorCreate(DeviceRGB, components);
    v2->_borderColor = CGColorCreate(DeviceRGB, v8);
    v2->_whiteColor = CGColorCreate(DeviceRGB, v6);
    CGColorSpaceRelease(DeviceRGB);
    [(UIPDFHighlighter *)v2 setInset:6.0];
    v2->_highLightLayers = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = UIPDFHighlighter;
  [(UIPDFHighlighter *)&v3 dealloc];
  [(NSMutableArray *)self->_highLightLayers removeAllObjects];

  CGPDFPageRelease(self->_page);
}

- (void)unhide
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  highLightLayers = self->_highLightLayers;
  v3 = [(NSMutableArray *)highLightLayers countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(highLightLayers);
        }

        [*(*(&v7 + 1) + 8 * i) setHidden:0];
      }

      v4 = [(NSMutableArray *)highLightLayers countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)addRectPath:(CGPath *)path toView:(id)view layer:(id)layer rectangle:(id *)rectangle upright:(BOOL)upright
{
  uprightCopy = upright;
  v11 = rectangle->var1.x;
  v12 = rectangle->var1.y;
  v13 = rectangle->var2.x;
  v14 = rectangle->var2.y;
  v15 = rectangle->var3.x;
  v16 = rectangle->var3.y;
  [view convertPointFromPDFPageSpace:{rectangle->var0.x, rectangle->var0.y}];
  v18 = v17;
  v20 = v19;
  [view convertPointFromPDFPageSpace:{v11, v12}];
  v22 = v21;
  v24 = v23;
  [view convertPointFromPDFPageSpace:{v13, v14}];
  v26 = v25;
  v28 = v27;
  [view convertPointFromPDFPageSpace:{v15, v16}];
  v30 = v29;
  ya = v31;
  [layer convertPoint:objc_msgSend(view fromLayer:{"layer"), v18, v20}];
  v33 = v32;
  v35 = v34;
  [layer convertPoint:objc_msgSend(view fromLayer:{"layer"), v22, v24}];
  v37 = v36;
  v39 = v38;
  [layer convertPoint:objc_msgSend(view fromLayer:{"layer"), v26, v28}];
  x = v40;
  v42 = v41;
  [layer convertPoint:objc_msgSend(view fromLayer:{"layer"), v30, ya}];
  v44 = v43;
  v52 = v45;
  y = v35;
  if (uprightCopy)
  {
    v46 = 2.0;
  }

  else
  {
    v46 = 0.0;
  }

  v47 = v46 + v35;
  v48 = v33;
  v49 = v47;
  CGPathMoveToPoint(path, 0, v48, v47);
  v50 = v39 - v46;
  CGPathAddLineToPoint(path, 0, v37, v50);
  if (uprightCopy)
  {
    CGPathAddArc(path, 0, v37 + 2.0, v50, 2.0, -3.14159265, 1.57079633, 1);
    CGPathAddLineToPoint(path, 0, x + -2.0, v42);
    CGPathAddArc(path, 0, x + -2.0, v42 + -2.0, 2.0, 1.57079633, 0.0, 1);
    CGPathAddLineToPoint(path, 0, v44, v52 + 2.0);
    CGPathAddArc(path, 0, v44 + -2.0, v52 + 2.0, 2.0, 0.0, -1.14159265, 1);
    CGPathAddLineToPoint(path, 0, v48 + 2.0, y);

    CGPathAddArc(path, 0, v48 + 2.0, v49, 2.0, -1.57079633, -3.14159265, 1);
  }

  else
  {
    CGPathAddLineToPoint(path, 0, x, v42);
    CGPathAddLineToPoint(path, 0, v44, v52 + 0.0);

    CGPathAddLineToPoint(path, 0, v48 + 0.0, y);
  }
}

- (void)makeTheClipPath:(id)path layer:(id)layer rectangle:(id *)rectangle upright:(BOOL)upright
{
  uprightCopy = upright;
  Mutable = CGPathCreateMutable();
  [layer setClipPath:Mutable];
  var1 = rectangle->var1;
  v14[0] = rectangle->var0;
  v14[1] = var1;
  var3 = rectangle->var3;
  v14[2] = rectangle->var2;
  v14[3] = var3;
  [(UIPDFHighlighter *)self addRectPath:Mutable toView:path layer:layer rectangle:v14 upright:uprightCopy];
  CGPathRelease(Mutable);
}

- (void)makeTheBorderPath:(id)path layer:(id)layer rectangle:(id *)rectangle upright:(BOOL)upright
{
  uprightCopy = upright;
  Mutable = CGPathCreateMutable();
  [layer setBorderPath:Mutable];
  var1 = rectangle->var1;
  v14[0] = rectangle->var0;
  v14[1] = var1;
  var3 = rectangle->var3;
  v14[2] = rectangle->var2;
  v14[3] = var3;
  [(UIPDFHighlighter *)self addRectPath:Mutable toView:path layer:layer rectangle:v14 upright:uprightCopy];
  CGPathRelease(Mutable);
}

- (void)addAnimation:(id)animation
{
  v4 = [MEMORY[0x1E6979318] animationWithKeyPath:@"bounds"];
  v5 = MEMORY[0x1E696B098];
  [animation bounds];
  v9 = CGRectInset(v8, -10.0, -10.0);
  [v4 setFromValue:{objc_msgSend(v5, "valueWithCGRect:", v9.origin.x, v9.origin.y, v9.size.width, v9.size.height)}];
  v6 = MEMORY[0x1E696B098];
  [animation bounds];
  [v4 setToValue:{objc_msgSend(v6, "valueWithCGRect:")}];
  [v4 setDuration:0.5];

  [animation addAnimation:v4 forKey:0];
}

- (void)addHighlightLayerFor:(id)for atIndex:(unint64_t)index to:(id)to animated:(BOOL)animated
{
  animatedCopy = animated;
  v44 = 0u;
  memset(&v43, 0, sizeof(v43));
  [(UIPDFHighlighter *)self inset];
  if (for)
  {
    [for rectangleAtIndex:index scale:1.0 inset:-v11];
    v42 = 0u;
    memset(&v41, 0, sizeof(v41));
    [(UIPDFHighlighter *)self inset];
    [for rectangleAtIndex:index scale:1.0 inset:-(v12 + -1.0)];
  }

  else
  {
    v44 = 0u;
    memset(&v43, 0, sizeof(v43));
    [(UIPDFHighlighter *)self inset];
    memset(&v41, 0, sizeof(v41));
    v42 = 0u;
  }

  self->_enlargeFactor = 1.08;
  v13 = objc_alloc_init(UIPDFHighlightLayer);
  [(NSMutableArray *)self->_highLightLayers addObject:v13];
  CATransform3DMakeScale(&v40, 1.0, -1.0, 1.0);
  v36 = *&v40.m31;
  v37 = *&v40.m33;
  v38 = *&v40.m41;
  v39 = *&v40.m43;
  *&v34.a = *&v40.m11;
  *&v34.c = *&v40.m13;
  *&v34.tx = *&v40.m21;
  v35 = *&v40.m23;
  [(UIPDFHighlightLayer *)v13 setTransform:&v34];
  memset(&v33, 0, sizeof(v33));
  memset(&v32, 0, sizeof(v32));
  [for getBounds:&v33 transform:&v32 index:index];
  v34 = v32;
  v45 = CGRectApplyAffineTransform(v33, &v34);
  x = v45.origin.x;
  y = v45.origin.y;
  width = v45.size.width;
  height = v45.size.height;
  [to convertRectFromPDFPageSpace:?];
  v17 = v46.origin.x;
  v18 = v46.origin.y;
  v19 = v46.size.width;
  v20 = v46.size.height;
  MidX = CGRectGetMidX(v46);
  v47.origin.x = v17;
  v47.origin.y = v18;
  v47.size.width = v19;
  v47.size.height = v20;
  MidY = CGRectGetMidY(v47);
  [(UIPDFHighlighter *)self inset];
  v24 = -v23;
  [(UIPDFHighlighter *)self inset];
  v48 = CGRectInset(v33, v24, -v25);
  v34 = v32;
  v49 = CGRectApplyAffineTransform(v48, &v34);
  [to convertRectFromPDFPageSpace:{v49.origin.x, v49.origin.y, v49.size.width, v49.size.height}];
  v51 = CGRectIntegral(v50);
  [(UIPDFHighlightLayer *)v13 setBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v51.size.width, v51.size.height];
  [(UIPDFHighlightLayer *)v13 setPosition:MidX, MidY];
  -[UIPDFHighlightLayer setShadowColor:](v13, "setShadowColor:", [+[UIColor blackColor](UIColor CGColor]);
  [(UIPDFHighlightLayer *)v13 setShadowOffset:4.0, -4.0];
  LODWORD(v26) = 1061997773;
  [(UIPDFHighlightLayer *)v13 setShadowOpacity:v26];
  [(UIPDFHighlightLayer *)v13 setShadowRadius:3.0];
  -[UIPDFHighlightLayer setBackgroundColor:](v13, "setBackgroundColor:", [+[UIColor clearColor](UIColor CGColor]);
  [(UIPDFHighlightLayer *)v13 setDelegate:self];
  [objc_msgSend(to "layer")];
  [(UIPDFHighlightLayer *)v13 setNeedsDisplay];
  v34 = v32;
  IsIdentity = CGAffineTransformIsIdentity(&v34);
  v34 = v43;
  v35 = v44;
  [(UIPDFHighlighter *)self makeTheClipPath:to layer:v13 rectangle:&v34 upright:IsIdentity];
  v34 = v32;
  v28 = CGAffineTransformIsIdentity(&v34);
  v34 = v41;
  v35 = v42;
  [(UIPDFHighlighter *)self makeTheBorderPath:to layer:v13 rectangle:&v34 upright:v28];
  MutableCopyByTransformingPath = CGPathCreateMutableCopyByTransformingPath([(UIPDFHighlightLayer *)v13 clipPath], 0);
  [(UIPDFHighlightLayer *)v13 setShadowPath:MutableCopyByTransformingPath];
  CGPathRelease(MutableCopyByTransformingPath);
  [(UIPDFHighlightLayer *)v13 bounds];
  v30 = (CGRectGetWidth(v52) / self->_pdfToViewScale - width * self->_enlargeFactor) * 0.5;
  [(UIPDFHighlightLayer *)v13 bounds];
  [(UIPDFHighlightLayer *)v13 setOffset:v30 - x, (CGRectGetHeight(v53) / self->_pdfToViewScale - height * self->_enlargeFactor) * 0.5 - y];
  if (animatedCopy)
  {
    [(UIPDFHighlighter *)self addAnimation:v13];
  }
}

- (void)addHighlightFor:(id)for to:(id)to animated:(BOOL)animated
{
  animatedCopy = animated;
  numberOfRectangles = [for numberOfRectangles];
  if (numberOfRectangles)
  {
    v10 = numberOfRectangles;
    v11 = [objc_msgSend(to "page")];
    self->_page = v11;
    CGPDFPageRetain(v11);
    [to convertRectFromPDFPageSpace:{0.0, 0.0, 1.0, 1.0}];
    v12 = 0;
    self->_pdfToViewScale = v13;
    do
    {
      [(UIPDFHighlighter *)self addHighlightLayerFor:for atIndex:v12++ to:to animated:animatedCopy];
    }

    while (v10 != v12);
  }
}

- (void)setNeedsDisplay
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  highLightLayers = self->_highLightLayers;
  v3 = [(NSMutableArray *)highLightLayers countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(highLightLayers);
        }

        [*(*(&v7 + 1) + 8 * i) setNeedsDisplay];
      }

      v4 = [(NSMutableArray *)highLightLayers countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)drawLayer:(id)layer inContext:(CGContext *)context
{
  CGContextSaveGState(context);
  CGContextAddPath(context, [layer clipPath]);
  CGContextClip(context);
  CGContextSetFillColorWithColor(context, [+[UIColor CGColor] whiteColor];
  [layer bounds];
  CGContextFillRect(context, v11);
  CGContextSaveGState(context);
  CGContextScaleCTM(context, self->_pdfToViewScale * self->_enlargeFactor, self->_pdfToViewScale * self->_enlargeFactor);
  [layer offset];
  v8 = v7;
  [layer offset];
  CGContextTranslateCTM(context, v8, v9);
  CGContextDrawPDFPage(context, self->_page);
  CGContextRestoreGState(context);
  CGContextSetBlendMode(context, kCGBlendModeMultiply);
  CGContextSetFillColorWithColor(context, self->_highlightColor);
  [layer bounds];
  v13 = CGRectInset(v12, 2.0, 2.0);
  CGContextFillRect(context, v13);
  CGContextSetStrokeColorWithColor(context, self->_borderColor);
  CGContextSetBlendMode(context, kCGBlendModeNormal);
  CGContextAddPath(context, [layer borderPath]);
  CGContextSetLineWidth(context, 1.0);
  CGContextStrokePath(context);

  CGContextRestoreGState(context);
}

- (void)clear
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  highLightLayers = self->_highLightLayers;
  v4 = [(NSMutableArray *)highLightLayers countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(highLightLayers);
        }

        [*(*(&v8 + 1) + 8 * i) removeFromSuperlayer];
      }

      v5 = [(NSMutableArray *)highLightLayers countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_highLightLayers removeAllObjects];
}

@end