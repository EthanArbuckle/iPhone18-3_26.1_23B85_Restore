@interface UIPDFSearchHighlightsController
- (BOOL)hasSearchHighlights;
- (CGRect)unionFrom:(unint64_t)from to:(unint64_t)to;
- (UIPDFSearchHighlightsController)initWithPageView:(id)view;
- (id)hitTest:(CGPoint)test;
- (unint64_t)indexOfColumnBreakStartingAt:(unint64_t)at;
- (void)_addAnimation2:(id)animation2;
- (void)_addAnimation:(id)animation;
- (void)addLayer:(CGRect)layer path:(CGPath *)path shadowPath:(CGPath *)shadowPath animated:(BOOL)animated;
- (void)addSearchHighlightForRotatedSelection:(id)selection animated:(BOOL)animated;
- (void)addSearchHighlightForSelection:(id)selection animated:(BOOL)animated;
- (void)clearSearchHighlights;
- (void)dealloc;
- (void)drawLayer:(id)layer inContext:(CGContext *)context;
- (void)layoutSublayersOfLayer:(id)layer;
- (void)makeType1Path:(CGPath *)path shadowPath:(CGPath *)shadowPath;
- (void)makeType1Shadow:(CGPath *)shadow rect:(CGRect)rect inset:(CGPoint)inset;
- (void)makeType2Path:(CGPath *)path to:(unint64_t)to shadowPath:(CGPath *)shadowPath;
- (void)makeType2Shadow:(CGPath *)shadow rect:(CGRect)rect;
- (void)makeType3Path:(CGPath *)path from:(unint64_t)from to:(unint64_t)to shadowPath:(CGPath *)shadowPath;
- (void)makeType4Path:(CGPath *)path from:(unint64_t)from to:(unint64_t)to shadowPath:(CGPath *)shadowPath;
- (void)pageDidRender:(id)render;
- (void)setNeedsDisplay;
@end

@implementation UIPDFSearchHighlightsController

- (UIPDFSearchHighlightsController)initWithPageView:(id)view
{
  v15 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = UIPDFSearchHighlightsController;
  v4 = [(UIPDFSearchHighlightsController *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_pageView = view;
    v4->_searchHighlightLayers = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    *components = xmmword_18A6817A0;
    v14 = unk_18A6817B0;
    v5->_highlightColor = CGColorCreate(DeviceRGB, components);
    *v11 = xmmword_18A6817E0;
    v12 = unk_18A6817F0;
    v5->_borderColor = CGColorCreate(DeviceRGB, v11);
    *v9 = xmmword_18A6817E0;
    v10 = unk_18A6817F0;
    v5->_shadowColor = CGColorCreate(DeviceRGB, v9);
    CGColorSpaceRelease(DeviceRGB);
    v5->_pageRendered = 0;
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  return v5;
}

- (void)dealloc
{
  [(UIPDFSearchHighlightsController *)self clearSearchHighlights];

  CGColorRelease(self->_highlightColor);
  CGColorRelease(self->_shadowColor);
  CGColorRelease(self->_borderColor);
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  v3.receiver = self;
  v3.super_class = UIPDFSearchHighlightsController;
  [(UIPDFSearchHighlightsController *)&v3 dealloc];
}

- (void)pageDidRender:(id)render
{
  v15 = *MEMORY[0x1E69E9840];
  object = [render object];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && object == self->_pageView)
  {
    self->_pageRendered = 1;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    searchHighlightLayers = self->_searchHighlightLayers;
    v6 = [(NSMutableArray *)searchHighlightLayers countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(searchHighlightLayers);
          }

          [*(*(&v10 + 1) + 8 * v9++) setHidden:0];
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)searchHighlightLayers countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)clearSearchHighlights
{
  v13 = *MEMORY[0x1E69E9840];
  searchHighlightLayers = self->_searchHighlightLayers;
  if (searchHighlightLayers)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v4 = [(NSMutableArray *)searchHighlightLayers countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(searchHighlightLayers);
          }

          [*(*(&v8 + 1) + 8 * v7++) removeFromSuperlayer];
        }

        while (v5 != v7);
        v5 = [(NSMutableArray *)searchHighlightLayers countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }

    [(NSMutableArray *)self->_searchHighlightLayers removeAllObjects];
  }
}

- (BOOL)hasSearchHighlights
{
  searchHighlightLayers = self->_searchHighlightLayers;
  if (searchHighlightLayers)
  {
    LOBYTE(searchHighlightLayers) = [(NSMutableArray *)searchHighlightLayers count]!= 0;
  }

  return searchHighlightLayers;
}

- (id)hitTest:(CGPoint)test
{
  v3 = [(CALayer *)[(UIView *)self->_pageView layer] hitTest:test.x, test.y];

  return [(CALayer *)v3 valueForKey:@"selection"];
}

- (void)_addAnimation:(id)animation
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

- (void)_addAnimation2:(id)animation2
{
  v4 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform"];
  v5 = 0uLL;
  memset(&v8, 0, sizeof(v8));
  if (animation2)
  {
    [animation2 transform];
    v5 = 0uLL;
  }

  *&v7.m41 = v5;
  *&v7.m43 = v5;
  *&v7.m31 = v5;
  *&v7.m33 = v5;
  *&v7.m21 = v5;
  *&v7.m23 = v5;
  *&v7.m11 = v5;
  *&v7.m13 = v5;
  v6 = v8;
  CATransform3DScale(&v7, &v6, 1.08, 1.08, 1.0);
  v6 = v7;
  [v4 setFromValue:{objc_msgSend(MEMORY[0x1E696B098], "valueWithCATransform3D:", &v6)}];
  v6 = v8;
  [v4 setToValue:{objc_msgSend(MEMORY[0x1E696B098], "valueWithCATransform3D:", &v6)}];
  [v4 setDuration:0.4];
  [animation2 addAnimation:v4 forKey:0];
}

- (void)addSearchHighlightForRotatedSelection:(id)selection animated:(BOOL)animated
{
  animatedCopy = animated;
  numberOfRectangles = [selection numberOfRectangles];
  if (numberOfRectangles)
  {
    v8 = numberOfRectangles;
    v9 = 0;
    v10 = 0.5;
    do
    {
      memset(&v33, 0, sizeof(v33));
      memset(&v32, 0, sizeof(v32));
      [selection getBounds:&v32 transform:&v33 index:v9];
      [(UIPDFPageView *)self->_pageView convertRectFromPDFPageSpace:*&v32.origin, *&v32.size];
      v35 = CGRectInset(v34, -2.0, -2.0);
      x = v35.origin.x;
      y = v35.origin.y;
      width = v35.size.width;
      height = v35.size.height;
      layer = [MEMORY[0x1E6979398] layer];
      [layer setBounds:{x, y, width, height}];
      v36.origin.x = x;
      v36.origin.y = y;
      v36.size.width = width;
      v36.size.height = height;
      MidX = CGRectGetMidX(v36);
      v37.origin.x = x;
      v37.origin.y = y;
      v37.size.width = width;
      v37.size.height = height;
      MidY = CGRectGetMidY(v37);
      v25 = v33;
      if (!CGAffineTransformIsIdentity(&v25))
      {
        v25 = v33;
        CPRotationDegreesFromTransform(&v25.a);
        v25 = v33;
        v19 = v18 * -3.14159265 / 180.0;
        v38 = CGRectApplyAffineTransform(v32, &v25);
        [(UIPDFPageView *)self->_pageView convertRectFromPDFPageSpace:v38.origin.x, v38.origin.y, v38.size.width, v38.size.height];
        v20 = v39.origin.x;
        v21 = v39.origin.y;
        v22 = v39.size.width;
        v23 = v39.size.height;
        MidX = CGRectGetMidX(v39);
        v40.origin.x = v20;
        v40.origin.y = v21;
        v40.size.width = v22;
        v40.size.height = v23;
        v10 = 0.5;
        MidY = CGRectGetMidY(v40);
        CATransform3DMakeRotation(&v31, v19, 0.0, 0.0, 1.0);
        v27 = *&v31.m31;
        v28 = *&v31.m33;
        v29 = *&v31.m41;
        v30 = *&v31.m43;
        *&v25.a = *&v31.m11;
        *&v25.c = *&v31.m13;
        *&v25.tx = *&v31.m21;
        v26 = *&v31.m23;
        [layer setTransform:&v25];
      }

      [layer setPosition:{MidX, MidY + v10}];
      [layer setBackgroundColor:self->_highlightColor];
      LODWORD(v24) = 1.0;
      [layer setOpacity:v24];
      [layer setCornerRadius:3.0];
      [layer setBorderWidth:0.0];
      [layer setHidden:!self->_pageRendered];
      [layer setValue:selection forKey:@"selection"];
      [layer setDelegate:self];
      [layer setNeedsLayout];
      [layer setNeedsDisplay];
      [(NSMutableArray *)self->_searchHighlightLayers addObject:layer];
      [(CALayer *)[(UIView *)self->_pageView layer] addSublayer:layer];
      if (animatedCopy)
      {
        [(UIPDFSearchHighlightsController *)self _addAnimation:layer];
      }

      ++v9;
    }

    while (v8 != v9);
  }
}

- (void)addLayer:(CGRect)layer path:(CGPath *)path shadowPath:(CGPath *)shadowPath animated:(BOOL)animated
{
  animatedCopy = animated;
  height = layer.size.height;
  width = layer.size.width;
  y = layer.origin.y;
  x = layer.origin.x;
  layer = [MEMORY[0x1E69794A0] layer];
  [layer setBounds:{x, y, width, height}];
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  MidX = CGRectGetMidX(v20);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  [layer setPosition:{MidX, CGRectGetMidY(v21)}];
  [layer setFillColor:self->_highlightColor];
  LODWORD(v16) = 0.25;
  [layer setOpacity:v16];
  [layer setStrokeColor:self->_borderColor];
  [layer setValue:self->_selection forKey:@"selection"];
  [layer setPath:path];
  [layer setHidden:!self->_pageRendered];
  if (shadowPath)
  {
    [layer setShadowPath:shadowPath];
    [layer setShadowOffset:{5.0, 5.0}];
    LODWORD(v17) = 1.0;
    [layer setShadowOpacity:v17];
    [layer setShadowColor:{-[UIColor CGColor](+[UIColor blackColor](UIColor, "blackColor"), "CGColor")}];
  }

  if (animatedCopy)
  {
    [(UIPDFSearchHighlightsController *)self _addAnimation2:layer];
  }

  [(CALayer *)[(UIView *)self->_pageView layer] addSublayer:layer];
  searchHighlightLayers = self->_searchHighlightLayers;

  [(NSMutableArray *)searchHighlightLayers addObject:layer];
}

- (unint64_t)indexOfColumnBreakStartingAt:(unint64_t)at
{
  v5 = [(NSMutableArray *)self->_rectangles count];
  v6 = v5;
  if (v5 - 1 > at)
  {
    v7 = v5;
    [-[NSMutableArray objectAtIndex:](self->_rectangles objectAtIndex:{at), "CGRectValue"}];
    MinY = CGRectGetMinY(v13);
    v9 = at + 1;
    do
    {
      v6 = v9;
      if (v9 >= v7)
      {
        break;
      }

      [-[NSMutableArray objectAtIndex:](self->_rectangles objectAtIndex:{v9), "CGRectValue"}];
      v10 = CGRectGetMinY(v14);
      v9 = v6 + 1;
      v11 = v10 < MinY;
      MinY = v10;
    }

    while (!v11);
  }

  return v6;
}

- (CGRect)unionFrom:(unint64_t)from to:(unint64_t)to
{
  v7 = [(NSMutableArray *)self->_rectangles count];
  if (v7 > from && v7 > to && from <= to)
  {
    [-[NSMutableArray objectAtIndex:](self->_rectangles objectAtIndex:{from), "CGRectValue"}];
    x = v16;
    y = v17;
    width = v18;
    height = v19;
    if (from < to)
    {
      v20 = from + 1;
      do
      {
        [-[NSMutableArray objectAtIndex:](self->_rectangles objectAtIndex:{v20), "CGRectValue"}];
        v28.origin.x = v21;
        v28.origin.y = v22;
        v28.size.width = v23;
        v28.size.height = v24;
        v25.origin.x = x;
        v25.origin.y = y;
        v25.size.width = width;
        v25.size.height = height;
        v26 = CGRectUnion(v25, v28);
        x = v26.origin.x;
        y = v26.origin.y;
        width = v26.size.width;
        height = v26.size.height;
        ++v20;
      }

      while (v20 <= to);
    }
  }

  else
  {
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
  }

  v12 = x;
  v13 = y;
  v14 = width;
  v15 = height;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)makeType1Shadow:(CGPath *)shadow rect:(CGRect)rect inset:(CGPoint)inset
{
  x = inset.x;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  v9 = rect.origin.x;
  MinX = CGRectGetMinX(rect);
  v17.origin.x = v9;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  MaxY = CGRectGetMaxY(v17);
  v18.origin.x = v9;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  MaxX = CGRectGetMaxX(v18);
  v19.origin.x = v9;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  MinY = CGRectGetMinY(v19);
  CGPathMoveToPoint(shadow, 0, MinX, MaxY);
  CGPathAddLineToPoint(shadow, 0, MinX, MaxY + -5.0);
  CGPathAddLineToPoint(shadow, 0, x + -5.0, MaxY + -5.0);
  CGPathAddLineToPoint(shadow, 0, x + -5.0, inset.y + -5.0);
  CGPathAddLineToPoint(shadow, 0, MaxX + -5.0, inset.y + -5.0);
  CGPathAddLineToPoint(shadow, 0, MaxX + -5.0, MinY);
  CGPathAddLineToPoint(shadow, 0, MaxX, MinY);
  CGPathAddLineToPoint(shadow, 0, MaxX, inset.y);
  CGPathAddLineToPoint(shadow, 0, inset.x, inset.y);
  CGPathAddLineToPoint(shadow, 0, inset.x, MaxY);

  CGPathCloseSubpath(shadow);
}

- (void)makeType2Shadow:(CGPath *)shadow rect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  MinX = CGRectGetMinX(rect);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  MaxY = CGRectGetMaxY(v14);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  MaxX = CGRectGetMaxX(v15);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  MinY = CGRectGetMinY(v16);
  CGPathMoveToPoint(shadow, 0, MinX, MaxY);
  CGPathAddLineToPoint(shadow, 0, MinX, MaxY + -5.0);
  CGPathAddLineToPoint(shadow, 0, MaxX + -5.0, MaxY + -5.0);
  CGPathAddLineToPoint(shadow, 0, MaxX + -5.0, MinY);
  CGPathAddLineToPoint(shadow, 0, MaxX, MinY);
  CGPathAddLineToPoint(shadow, 0, MaxX, MaxY);

  CGPathCloseSubpath(shadow);
}

- (void)makeType1Path:(CGPath *)path shadowPath:(CGPath *)shadowPath
{
  v7 = [(NSMutableArray *)self->_rectangles count];
  [-[NSMutableArray objectAtIndex:](self->_rectangles objectAtIndex:{0), "CGRectValue"}];
  v9 = v8;
  v46 = v8;
  v11 = v10;
  recta = v10;
  v13 = v12;
  v33 = v14;
  v35 = v12;
  v15 = v14;
  [-[NSMutableArray objectAtIndex:](self->_rectangles objectAtIndex:{v7 - 1), "CGRectValue"}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [(UIPDFSearchHighlightsController *)self unionFrom:1 to:v7 - 2];
  v61.origin.x = v24;
  v42 = v25;
  v44 = v24;
  v61.origin.y = v25;
  v61.size.width = v26;
  v40 = v26;
  v61.size.height = v27;
  v37 = v27;
  v51.origin.x = v9;
  v51.origin.y = v11;
  v51.size.width = v13;
  v51.size.height = v15;
  v52 = CGRectUnion(v51, v61);
  v62.origin.x = v17;
  v62.origin.y = v19;
  v62.size.width = v21;
  v62.size.height = v23;
  v53 = CGRectUnion(v52, v62);
  x = v53.origin.x;
  y = v53.origin.y;
  width = v53.size.width;
  height = v53.size.height;
  MinX = CGRectGetMinX(v53);
  v54.origin.x = v17;
  v54.origin.y = v19;
  v54.size.width = v21;
  v54.size.height = v23;
  MaxX = CGRectGetMaxX(v54);
  v55.origin.x = v46;
  v55.origin.y = recta;
  v55.size.height = v33;
  v55.size.width = v35;
  v36 = CGRectGetMinX(v55);
  v56.origin.x = x;
  v56.origin.y = y;
  v56.size.width = width;
  v56.size.height = height;
  v34 = CGRectGetMaxX(v56);
  v57.origin.x = x;
  v57.origin.y = y;
  v57.size.width = width;
  v57.size.height = height;
  rect = CGRectGetMinY(v57);
  v58.origin.x = v44;
  v58.origin.y = v42;
  v58.size.width = v40;
  v58.size.height = v37;
  MinY = CGRectGetMinY(v58);
  v59.origin.x = v44;
  v59.origin.y = v42;
  v59.size.width = v40;
  v59.size.height = v37;
  MaxY = CGRectGetMaxY(v59);
  v60.origin.x = x;
  v60.origin.y = y;
  v60.size.width = width;
  v60.size.height = height;
  v43 = CGRectGetMaxY(v60);
  [(UIPDFSearchHighlightsController *)self makeType1Shadow:shadowPath rect:x inset:y, width, height, MaxX, MaxY];
  v41 = vabdd_f64(v34, MaxX);
  v45 = vabdd_f64(MinX, v36);
  if (v45 <= 4.0)
  {
    CGPathMoveToPoint(path, 0, MinX, MinY);
  }

  else
  {
    CGPathMoveToPoint(path, 0, MinX + 4.0, MinY);
    CGPathAddArc(path, 0, v36 + -4.0, MinY + -4.0, 4.0, 1.57079633, 0.0, 1);
  }

  CGPathAddArc(path, 0, v36 + 4.0, rect + 4.0, 4.0, 3.14159265, -1.57079633, 0);
  CGPathAddArc(path, 0, v34 + -4.0, rect + 4.0, 4.0, -1.57079633, 0.0, 0);
  if (v41 > 4.0)
  {
    CGPathAddArc(path, 0, v34 + -4.0, MaxY + -4.0, 4.0, 0.0, 1.57079633, 0);
    CGPathAddArc(path, 0, MaxX + 4.0, MaxY + 4.0, 4.0, -1.57079633, 3.14159265, 1);
  }

  CGPathAddArc(path, 0, MaxX + -4.0, v43 + -4.0, 4.0, 0.0, 1.57079633, 0);
  CGPathAddArc(path, 0, MinX + 4.0, v43 + -4.0, 4.0, 1.57079633, -3.14159265, 0);
  if (v45 > 4.0)
  {
    CGPathAddArc(path, 0, MinX + 4.0, MinY + 4.0, 4.0, 3.14159265, -1.57079633, 0);
  }

  CGPathCloseSubpath(path);
}

- (void)makeType2Path:(CGPath *)path to:(unint64_t)to shadowPath:(CGPath *)shadowPath
{
  [-[NSMutableArray objectAtIndex:](self->_rectangles objectAtIndex:{0), "CGRectValue"}];
  v10 = v9;
  rect_8a = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [(UIPDFSearchHighlightsController *)self unionFrom:1 to:to];
  v47.origin.x = v17;
  recta = v17;
  v47.origin.y = v18;
  v31 = v19;
  v32 = v18;
  v47.size.width = v19;
  v47.size.height = v20;
  v30 = v20;
  v39.origin.x = v10;
  v39.origin.y = v12;
  v39.size.width = v14;
  v39.size.height = v16;
  v40 = CGRectUnion(v39, v47);
  x = v40.origin.x;
  y = v40.origin.y;
  width = v40.size.width;
  height = v40.size.height;
  [(UIPDFSearchHighlightsController *)self makeType2Shadow:shadowPath rect:?];
  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  MinX = CGRectGetMinX(v41);
  v42.origin.x = rect_8a;
  v42.origin.y = v12;
  v42.size.width = v14;
  v42.size.height = v16;
  v26 = CGRectGetMinX(v42);
  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  rect_8 = CGRectGetMaxX(v43);
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  MinY = CGRectGetMinY(v44);
  v45.origin.x = recta;
  v45.size.width = v31;
  v45.origin.y = v32;
  v45.size.height = v30;
  v27 = CGRectGetMinY(v45);
  v46.origin.x = x;
  v46.origin.y = y;
  v46.size.width = width;
  v46.size.height = height;
  rect = CGRectGetMaxY(v46);
  v28 = vabdd_f64(MinX, v26);
  if (v28 <= 4.0)
  {
    CGPathMoveToPoint(path, 0, MinX, v27);
    v29 = MinX + 4.0;
  }

  else
  {
    v29 = MinX + 4.0;
    CGPathMoveToPoint(path, 0, v29, v27);
    CGPathAddArc(path, 0, v26 + -4.0, v27 + -4.0, 4.0, 1.57079633, 0.0, 1);
  }

  CGPathAddArc(path, 0, v26 + 4.0, MinY + 4.0, 4.0, 3.14159265, -1.57079633, 0);
  CGPathAddArc(path, 0, rect_8 + -4.0, MinY + 4.0, 4.0, -1.57079633, 0.0, 0);
  CGPathAddArc(path, 0, rect_8 + -4.0, rect + -4.0, 4.0, 0.0, 1.57079633, 0);
  CGPathAddArc(path, 0, v29, rect + -4.0, 4.0, 1.57079633, -3.14159265, 0);
  if (v28 > 4.0)
  {
    CGPathAddArc(path, 0, v29, v27 + 4.0, 4.0, 3.14159265, -1.57079633, 0);
  }

  CGPathCloseSubpath(path);
}

- (void)makeType3Path:(CGPath *)path from:(unint64_t)from to:(unint64_t)to shadowPath:(CGPath *)shadowPath
{
  [(UIPDFSearchHighlightsController *)self unionFrom:from to:to];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [(UIPDFSearchHighlightsController *)self makeType2Shadow:shadowPath rect:?];
  v26.origin.x = v10;
  v26.origin.y = v12;
  v26.size.width = v14;
  v26.size.height = v16;
  MinX = CGRectGetMinX(v26);
  v27.origin.x = v10;
  v27.origin.y = v12;
  v27.size.width = v14;
  v27.size.height = v16;
  MinY = CGRectGetMinY(v27);
  v28.origin.x = v10;
  v28.origin.y = v12;
  v28.size.width = v14;
  v28.size.height = v16;
  MaxX = CGRectGetMaxX(v28);
  v29.origin.x = v10;
  v29.origin.y = v12;
  v29.size.width = v14;
  v29.size.height = v16;
  v18 = CGRectGetMinY(v29);
  v30.origin.x = v10;
  v30.origin.y = v12;
  v30.size.width = v14;
  v30.size.height = v16;
  v21 = CGRectGetMaxX(v30);
  v31.origin.x = v10;
  v31.origin.y = v12;
  v31.size.width = v14;
  v31.size.height = v16;
  MaxY = CGRectGetMaxY(v31);
  v32.origin.x = v10;
  v32.origin.y = v12;
  v32.size.width = v14;
  v32.size.height = v16;
  v23 = CGRectGetMinX(v32);
  v33.origin.x = v10;
  v33.origin.y = v12;
  v33.size.width = v14;
  v33.size.height = v16;
  v20 = CGRectGetMaxY(v33);
  CGPathMoveToPoint(path, 0, MinX + 4.0, MinY);
  CGPathAddArc(path, 0, MaxX + -4.0, v18 + 4.0, 4.0, -1.57079633, 0.0, 0);
  CGPathAddArc(path, 0, v21 + -4.0, MaxY + -4.0, 4.0, 0.0, 1.57079633, 0);
  CGPathAddArc(path, 0, v23 + 4.0, v20 + -4.0, 4.0, 1.57079633, -3.14159265, 0);
  CGPathAddArc(path, 0, MinX + 4.0, MinY + 4.0, 4.0, 3.14159265, -1.57079633, 0);

  CGPathCloseSubpath(path);
}

- (void)makeType4Path:(CGPath *)path from:(unint64_t)from to:(unint64_t)to shadowPath:(CGPath *)shadowPath
{
  [-[NSMutableArray objectAtIndex:](self->_rectangles objectAtIndex:{to), "CGRectValue"}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [(UIPDFSearchHighlightsController *)self unionFrom:from to:to - 1];
  v38 = v20;
  y = v19;
  v36 = v22;
  v37 = v21;
  v23 = *MEMORY[0x1E695F050];
  v24 = *(MEMORY[0x1E695F050] + 8);
  v25 = *(MEMORY[0x1E695F050] + 16);
  v26 = *(MEMORY[0x1E695F050] + 24);
  v42.origin.x = v12;
  v42.origin.y = v14;
  v42.size.width = v16;
  v42.size.height = v18;
  v51.origin.x = *MEMORY[0x1E695F050];
  v51.origin.y = v24;
  v51.size.width = v25;
  v51.size.height = v26;
  if (!CGRectEqualToRect(v42, v51))
  {
    v43.origin.y = v38;
    v43.origin.x = y;
    v43.size.height = v36;
    v43.size.width = v37;
    v52.origin.x = v23;
    v52.origin.y = v24;
    v52.size.width = v25;
    v52.size.height = v26;
    if (!CGRectEqualToRect(v43, v52))
    {
      v44.origin.x = v12;
      v44.origin.y = v14;
      v44.size.width = v16;
      v44.size.height = v18;
      v53.origin.y = v38;
      v53.origin.x = y;
      v53.size.height = v36;
      v53.size.width = v37;
      v45 = CGRectUnion(v44, v53);
      x = v45.origin.x;
      v28 = v45.origin.y;
      width = v45.size.width;
      height = v45.size.height;
      MinX = CGRectGetMinX(v45);
      v46.origin.x = v12;
      v46.origin.y = v14;
      v46.size.width = v16;
      v46.size.height = v18;
      MaxX = CGRectGetMaxX(v46);
      v47.origin.x = x;
      v47.origin.y = v28;
      v47.size.width = width;
      v47.size.height = height;
      v34 = CGRectGetMaxX(v47);
      v48.origin.x = x;
      v48.origin.y = v28;
      v48.size.width = width;
      v48.size.height = height;
      MinY = CGRectGetMinY(v48);
      v49.origin.y = v38;
      v49.origin.x = y;
      v49.size.height = v36;
      v49.size.width = v37;
      MaxY = CGRectGetMaxY(v49);
      v50.origin.x = x;
      v50.origin.y = v28;
      v50.size.width = width;
      v50.size.height = height;
      v39 = CGRectGetMaxY(v50);
      [(UIPDFSearchHighlightsController *)self makeType1Shadow:shadowPath rect:x inset:v28, width, height, MaxX, MaxY];
      CGPathMoveToPoint(path, 0, MinX + 4.0, MinY);
      CGPathAddArc(path, 0, v34 + -4.0, MinY + 4.0, 4.0, -1.57079633, 0.0, 0);
      CGPathAddArc(path, 0, v34 + -4.0, MaxY + -4.0, 4.0, 0.0, 1.57079633, 0);
      CGPathAddArc(path, 0, MaxX + 4.0, MaxY + 4.0, 4.0, -1.57079633, 3.14159265, 1);
      CGPathAddArc(path, 0, MaxX + -4.0, v39 + -4.0, 4.0, 0.0, 1.57079633, 0);
      CGPathAddArc(path, 0, MinX + 4.0, v39 + -4.0, 4.0, 1.57079633, -3.14159265, 0);
      CGPathAddArc(path, 0, MinX + 4.0, MinY + 4.0, 4.0, 3.14159265, -1.57079633, 0);

      CGPathCloseSubpath(path);
    }
  }
}

- (void)addSearchHighlightForSelection:(id)selection animated:(BOOL)animated
{
  animatedCopy = animated;
  numberOfRectangles = [selection numberOfRectangles];
  if (numberOfRectangles)
  {
    v8 = numberOfRectangles;
    v34 = 0u;
    v35 = 0u;
    memset(&v33, 0, sizeof(v33));
    [selection getBounds:&v34 transform:&v33 index:0];
    if (v8 >= 3 && (v32 = v33, CGAffineTransformIsIdentity(&v32)))
    {
      self->_rectangles = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v8];
      [(UIPDFPageView *)self->_pageView convertRectFromPDFPageSpace:v34, v35];
      *&v34 = v9;
      *(&v34 + 1) = v10;
      *&v35 = v11;
      *(&v35 + 1) = v12;
      -[NSMutableArray addObject:](self->_rectangles, "addObject:", [MEMORY[0x1E696B098] valueWithCGRect:?]);
      self->_selection = selection;
      for (i = 1; i != v8; ++i)
      {
        [selection getBounds:&v34 transform:&v33 index:i];
        [(UIPDFPageView *)self->_pageView convertRectFromPDFPageSpace:v34, v35];
        *&v34 = v36.origin.x;
        *(&v34 + 1) = *&v36.origin.y;
        *&v35 = v36.size.width;
        *(&v35 + 1) = *&v36.size.height;
        v37 = CGRectInset(v36, -2.0, -2.0);
        *&v34 = v37.origin.x;
        *(&v34 + 1) = *&v37.origin.y;
        *&v35 = v37.size.width;
        *(&v35 + 1) = *&v37.size.height;
        -[NSMutableArray addObject:](self->_rectangles, "addObject:", [MEMORY[0x1E696B098] valueWithCGRect:?]);
      }

      [selection bounds];
      [(UIPDFPageView *)self->_pageView convertRectFromPDFPageSpace:?];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v22 = [(UIPDFSearchHighlightsController *)self indexOfColumnBreakStartingAt:0];
      Mutable = CGPathCreateMutable();
      v24 = CGPathCreateMutable();
      if (v22 == v8)
      {
        [(UIPDFSearchHighlightsController *)self makeType1Path:Mutable shadowPath:v24];
        [(UIPDFSearchHighlightsController *)self addLayer:Mutable path:v24 shadowPath:animatedCopy animated:v15, v17, v19, v21];
        CGPathRelease(Mutable);
        v25 = v24;
      }

      else
      {
        [(UIPDFSearchHighlightsController *)self makeType2Path:Mutable to:v22 - 1 shadowPath:v24];
        [(UIPDFSearchHighlightsController *)self addLayer:Mutable path:v24 shadowPath:animatedCopy animated:v15, v17, v19, v21];
        CGPathRelease(Mutable);
        CGPathRelease(v24);
        v26 = [(UIPDFSearchHighlightsController *)self indexOfColumnBreakStartingAt:v22];
        if (v26 >= v8)
        {
          v27 = v22;
        }

        else
        {
          do
          {
            v27 = v26;
            v28 = CGPathCreateMutable();
            v29 = CGPathCreateMutable();
            [(UIPDFSearchHighlightsController *)self makeType3Path:v28 from:v22 to:v27 - 1 shadowPath:v29];
            [(UIPDFSearchHighlightsController *)self addLayer:v28 path:v29 shadowPath:animatedCopy animated:v15, v17, v19, v21];
            CGPathRelease(v28);
            CGPathRelease(v29);
            v26 = [(UIPDFSearchHighlightsController *)self indexOfColumnBreakStartingAt:v27];
            v22 = v27;
          }

          while (v26 < v8);
        }

        v30 = CGPathCreateMutable();
        v31 = CGPathCreateMutable();
        [(UIPDFSearchHighlightsController *)self makeType4Path:v30 from:v27 to:v8 - 1 shadowPath:v31];
        [(UIPDFSearchHighlightsController *)self addLayer:v30 path:v31 shadowPath:animatedCopy animated:v15, v17, v19, v21];
        CGPathRelease(v30);
        v25 = v31;
      }

      CGPathRelease(v25);
      [(NSMutableArray *)self->_rectangles removeAllObjects];
    }

    else
    {
      [(UIPDFSearchHighlightsController *)self addSearchHighlightForRotatedSelection:selection animated:animatedCopy];
    }
  }
}

- (void)setNeedsDisplay
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  searchHighlightLayers = self->_searchHighlightLayers;
  v3 = [(NSMutableArray *)searchHighlightLayers countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(searchHighlightLayers);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        [v7 setNeedsLayout];
        [v7 setNeedsDisplay];
      }

      v4 = [(NSMutableArray *)searchHighlightLayers countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)layoutSublayersOfLayer:(id)layer
{
  superview = [(UIView *)self->_pageView superview];
  if (superview)
  {
    layer = [(UIView *)superview layer];
    if (layer)
    {
      [(CALayer *)layer transform];
      [objc_msgSend(objc_opt_self() "mainScreen")];
      [layer setContentsScale:v7 * v6];
    }
  }
}

- (void)drawLayer:(id)layer inContext:(CGContext *)context
{
  v6 = [layer valueForKey:@"selection"];
  if (v6)
  {
    v7 = v6;
    CGContextSetFillColorWithColor(context, self->_borderColor);
    if ([v7 CGSelection])
    {
      Length = CGPDFSelectionGetLength();
      if (Length >= 1)
      {
        v9 = Length;
        for (i = 0; i != v9; ++i)
        {
          memset(&glyphs[1], 0, 48);
          CGPDFSelectionGetTextMatrixAtIndex();
          CGFontAtIndex = CGPDFSelectionGetCGFontAtIndex();
          if (CGFontAtIndex)
          {
            CGContextSetFont(context, CGFontAtIndex);
            CGContextSetFontSize(context, 1.0);
            glyphs[0] = CGPDFSelectionGetGlyphAtIndex();
            [(UIPDFPageView *)self->_pageView convertRectFromPDFPageSpace:*&glyphs[17] + *&glyphs[1] * 0.0 + *&glyphs[9] * 0.0, *&glyphs[21] + *&glyphs[5] * 0.0 + *&glyphs[13] * 0.0, 1.0, 1.0];
            v13 = v12;
            v15 = v14;
            v18 = *&glyphs[1];
            CGAffineTransformScale(&v19, &v18, v17, -v16);
            *&glyphs[1] = v19;
            CGContextSetTextMatrix(context, &v19);
            if (glyphs[0])
            {
              CGContextShowGlyphsAtPoint(context, v13, v15, glyphs, 1uLL);
            }
          }
        }
      }
    }
  }
}

@end