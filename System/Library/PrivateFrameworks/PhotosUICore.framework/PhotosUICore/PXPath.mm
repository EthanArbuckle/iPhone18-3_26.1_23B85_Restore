@interface PXPath
+ (id)pathWithEllipseInRect:(CGRect)rect;
+ (id)pathWithRect:(CGRect)rect;
+ (id)pathWithRoundedRect:(CGRect)rect cornerRadius:(double)radius;
- (CGRect)boundingRect;
- (PXPath)initWithPoints:(CGPoint *)points count:(int64_t)count;
- (PXPath)initWithRect:(CGRect)rect withRoundedCorners:(int)corners cornerRadii:(id)radii smoothPillShapes:(BOOL)shapes;
- (void)addContinuousCornerToPath:(CGPath *)path trueCorner:(CGPoint)corner cornerRadius:(CGSize)radius corners:(unint64_t)corners portion:(unint64_t)portion clockwise:(BOOL)clockwise fullRadius:(BOOL)fullRadius;
- (void)addLineToPointX:(double)x y:(double)y;
@end

@implementation PXPath

- (void)addContinuousCornerToPath:(CGPath *)path trueCorner:(CGPoint)corner cornerRadius:(CGSize)radius corners:(unint64_t)corners portion:(unint64_t)portion clockwise:(BOOL)clockwise fullRadius:(BOOL)fullRadius
{
  clockwiseCopy = clockwise;
  portionCopy = portion;
  x = corner.x;
  if (radius.width < radius.height)
  {
    radius.height = radius.width;
  }

  v14 = 0.980263;
  if (fullRadius)
  {
    v14 = 1.0;
  }

  height = radius.height;
  if (fullRadius)
  {
    v15 = radius.height;
  }

  else
  {
    v15 = radius.height * 0.95;
  }

  v95 = v14;
  v16 = 0.0;
  if (corners - 1 <= 3)
  {
    v16 = dbl_1A53821E0[corners - 1];
  }

  v17 = v15 * (1.0 - v14);
  if (portion == 2)
  {
    v96 = v16;
    v18 = -v17;
    v94 = 70.0;
    v19 = *MEMORY[0x1E695EFF8];
  }

  else if (portion == 1)
  {
    v96 = v16 + 20.0;
    v19 = -v17;
    v94 = 70.0;
    v18 = *(MEMORY[0x1E695EFF8] + 8);
  }

  else if (portion)
  {
    v96 = v16 + 20.0;
    v94 = 50.0;
    v18 = *(MEMORY[0x1E695EFF8] + 8);
    v19 = *MEMORY[0x1E695EFF8];
    v15 = v15 / 1.528665;
  }

  else
  {
    v96 = v16;
    v18 = -v17;
    v94 = 90.0;
    v19 = -v17;
  }

  v20 = _interiorPointForCorner(corners, v19, v18, *MEMORY[0x1E695EFF8]);
  v91 = v21;
  v92 = v20;
  v22 = v15 * 0.33 * 0.666666667;
  v23 = v22 * 1.05304313;
  v24 = v22 * 0.33 / 1.05304313;
  v25 = (v15 / 1.05304313 + v24) * 0.67;
  v26 = v23 + v25;
  v27 = v23 + v23 + v25;
  v28 = v23 + v23 + v27;
  v29 = v25 + v24 * 0.33;
  v89 = _interiorPointForCorner(corners, v27, 0.0, x);
  v90 = v30;
  v87 = _interiorPointForCorner(corners, v26, 0.0, x);
  v88 = v31;
  v32 = _interiorPointForCorner(corners, v29, v24, x);
  v79 = v33;
  v80 = v32;
  v34 = _interiorPointForCorner(corners, v24, v29, x);
  v75 = v35;
  v76 = v34;
  v85 = _interiorPointForCorner(corners, 0.0, v26, x);
  v86 = v36;
  v83 = _interiorPointForCorner(corners, 0.0, v27, x);
  v84 = v37;
  v38 = _interiorPointForCorner(corners, 0.0, v28, x);
  v81 = v39;
  v82 = v38;
  v40 = _interiorPointForCorner(corners, v28, 0.0, x);
  v77 = v41;
  v78 = v40;
  v42 = _interiorPointForCorner(corners, v15, v15, x);
  v44 = v43;
  v45 = _interiorPointForCorner(corners, height, 0.0, x);
  v47 = v46;
  v48 = _interiorPointForCorner(corners, 0.0, height, x);
  v50 = v49;
  memset(&m, 0, sizeof(m));
  CGAffineTransformMakeTranslation(&m, v92, v91);
  if (clockwiseCopy)
  {
    if (portionCopy)
    {
      p_m = &m;
      pathCopy2 = path;
      v53 = v83;
      v54 = v84;
      v55 = v85;
      v56 = v86;
      v58 = v75;
      v57 = v76;
    }

    else
    {
      pathCopy2 = path;
      p_m = 0;
      v53 = v48;
      v54 = v50;
      v55 = v48;
      v56 = v50;
      v57 = v48;
      v58 = v50;
    }

    CGPathAddCurveToPoint(pathCopy2, p_m, v53, v54, v55, v56, v57, v58);
    CGPathAddArc(path, &m, v42, v44, v95 * v15, (v94 + v96) * 0.0174532925, v96 * 0.0174532925, 1);
    if ((portionCopy & 2) != 0)
    {
      v68 = &m;
      pathCopy8 = path;
      v69 = v87;
      v70 = v88;
      v71 = v89;
      v72 = v90;
      v74 = v77;
      v73 = v78;
    }

    else
    {
      pathCopy8 = path;
      v68 = 0;
      v69 = v45;
      v70 = v47;
      v71 = v45;
      v72 = v47;
      v73 = v45;
      v74 = v47;
    }
  }

  else
  {
    if (portionCopy)
    {
      v60 = &m;
      pathCopy6 = path;
      v61 = v89;
      v62 = v90;
      v63 = v87;
      v64 = v88;
      v66 = v79;
      v65 = v80;
    }

    else
    {
      pathCopy6 = path;
      v60 = 0;
      v61 = v45;
      v62 = v47;
      v63 = v45;
      v64 = v47;
      v65 = v45;
      v66 = v47;
    }

    CGPathAddCurveToPoint(pathCopy6, v60, v61, v62, v63, v64, v65, v66);
    CGPathAddArc(path, &m, v42, v44, v95 * v15, v96 * 0.0174532925, (v94 + v96) * 0.0174532925, 0);
    if ((portionCopy & 2) != 0)
    {
      v68 = &m;
      pathCopy8 = path;
      v69 = v85;
      v70 = v86;
      v71 = v83;
      v72 = v84;
      v74 = v81;
      v73 = v82;
    }

    else
    {
      pathCopy8 = path;
      v68 = 0;
      v69 = v48;
      v70 = v50;
      v71 = v48;
      v72 = v50;
      v73 = v48;
      v74 = v50;
    }
  }

  CGPathAddCurveToPoint(pathCopy8, v68, v69, v70, v71, v72, v73, v74);
}

- (PXPath)initWithRect:(CGRect)rect withRoundedCorners:(int)corners cornerRadii:(id)radii smoothPillShapes:(BOOL)shapes
{
  shapesCopy = shapes;
  height = rect.size.height;
  width = rect.size.width;
  v9 = rect.origin.y;
  v10 = rect.origin.x;
  radiiCopy = radii;
  Mutable = CGPathCreateMutable();
  v14 = [radiiCopy objectAtIndex:0];
  [v14 sizeValue];
  v16 = v15 * 1.528665;
  v17 = [radiiCopy objectAtIndex:0];
  [v17 sizeValue];
  v73 = v18 * 1.528665;

  v19 = [radiiCopy objectAtIndex:1];
  [v19 sizeValue];
  v75 = v20 * 1.528665;
  v21 = [radiiCopy objectAtIndex:1];
  [v21 sizeValue];
  y = v22;

  v23 = 3;
  v24 = [radiiCopy objectAtIndex:3];
  [v24 sizeValue];
  v26 = v25 * 1.528665;
  v27 = [radiiCopy objectAtIndex:3];
  [v27 sizeValue];
  v68 = v28;

  v29 = [radiiCopy objectAtIndex:2];
  [v29 sizeValue];
  v31 = v30 * 1.528665;
  v32 = [radiiCopy objectAtIndex:2];

  [v32 sizeValue];
  v74 = v33 * 1.528665;

  v34 = v75;
  v72 = v16;
  v35 = v16 + v75 >= width;
  v36 = 3;
  if (v16 + v75 >= width)
  {
    v34 = width * 0.5;
    v36 = 2;
    v23 = 1;
    v72 = width * 0.5;
  }

  v76 = v34;
  v37 = y * 1.528665;
  v38 = v68 * 1.528665;
  v39 = width * 0.5;
  if (v26 + v31 >= width)
  {
    v40 = width * 0.5;
  }

  else
  {
    v40 = v31;
  }

  if (v26 + v31 >= width)
  {
    v41 = 1;
  }

  else
  {
    v41 = 3;
  }

  if (v26 + v31 >= width)
  {
    v42 = 2;
  }

  else
  {
    v42 = 3;
  }

  if (v26 + v31 < width)
  {
    v39 = v26;
  }

  else
  {
    v35 = 1;
  }

  v67 = v39;
  v69 = v40;
  v43 = v73 + v74 >= height;
  if (v73 + v74 >= height)
  {
    v23 &= 2u;
    v42 &= 1u;
    v73 = height * 0.5;
    v74 = height * 0.5;
  }

  if (v37 + v38 >= height)
  {
    v44 = v36 & 1;
  }

  else
  {
    v44 = v36;
  }

  if (v37 + v38 >= height)
  {
    v45 = v41 & 2;
  }

  else
  {
    v45 = v41;
  }

  v46 = v37 + v38 >= height || v43;
  if (v37 + v38 >= height)
  {
    v38 = height * 0.5;
    v37 = height * 0.5;
  }

  v63 = v37;
  v64 = v38;
  v47 = v42 | v23 | v44 | v45;
  if (!v47)
  {
    shapesCopy = 0;
  }

  v48 = v35 && shapesCopy;
  v77.origin.x = v10;
  v77.origin.y = v9;
  v77.size.width = width;
  v77.size.height = height;
  MinX = CGRectGetMinX(v77);
  v78.origin.x = v10;
  v78.origin.y = v9;
  v78.size.width = width;
  v78.size.height = height;
  ya = CGRectGetMinY(v78);
  v79.origin.x = v10;
  v79.origin.y = v9;
  v79.size.width = width;
  v79.size.height = height;
  MaxX = CGRectGetMaxX(v79);
  v80.origin.x = v10;
  v80.origin.y = v9;
  v80.size.width = width;
  v80.size.height = height;
  MinY = CGRectGetMinY(v80);
  v81.origin.x = v10;
  v81.origin.y = v9;
  v81.size.width = width;
  v81.size.height = height;
  v51 = CGRectGetMinX(v81);
  v82.origin.x = v10;
  v82.origin.y = v9;
  v82.size.width = width;
  v82.size.height = height;
  MaxY = CGRectGetMaxY(v82);
  v83.origin.x = v10;
  v83.origin.y = v9;
  v83.size.width = width;
  v83.size.height = height;
  v52 = CGRectGetMaxX(v83);
  v84.origin.x = v10;
  v84.origin.y = v9;
  v84.size.width = width;
  v84.size.height = height;
  v53 = CGRectGetMaxY(v84);
  if (v48 == 1)
  {
    v54 = v72;
    MinX = MinX + v72 * 0.05;
    v55 = v76;
    MaxX = MaxX - v76 * 0.05;
    v62 = v51 + v69 * 0.05;
    v52 = v52 - v67 * 0.05;
LABEL_35:
    v56 = v63;
    goto LABEL_36;
  }

  v62 = v51;
  v54 = v72;
  if ((v46 & shapesCopy) != 1)
  {
    v55 = v76;
    goto LABEL_35;
  }

  ya = ya + v73 * 0.05;
  v56 = v63;
  v55 = v76;
  MinY = MinY + v63 * 0.05;
  MaxY = MaxY - v74 * 0.05;
  v53 = v53 - v64 * 0.05;
LABEL_36:
  x = v54 + MinX;
  CGPathMoveToPoint(Mutable, 0, v54 + MinX, ya);
  CGPathAddLineToPoint(Mutable, 0, MaxX - v55, MinY);
  v58 = *MEMORY[0x1E695F060];
  v57 = *(MEMORY[0x1E695F060] + 8);
  if (v55 != *MEMORY[0x1E695F060] || v56 != v57)
  {
    [(PXPath *)self addContinuousCornerToPath:Mutable trueCorner:2 cornerRadius:v44 corners:0 portion:v47 == 0 clockwise:MaxX fullRadius:MinY, v55, v56, *&x];
  }

  CGPathAddLineToPoint(Mutable, 0, v52, v53 - v64);
  if (v67 != v58 || v64 != v57)
  {
    [(PXPath *)self addContinuousCornerToPath:Mutable trueCorner:8 cornerRadius:v45 corners:0 portion:v47 == 0 clockwise:v52 fullRadius:v53, v67, v64];
  }

  CGPathAddLineToPoint(Mutable, 0, v69 + v62, MaxY);
  if (v69 != v58 || v74 != v57)
  {
    [(PXPath *)self addContinuousCornerToPath:Mutable trueCorner:4 cornerRadius:v42 corners:0 portion:v47 == 0 clockwise:v62 fullRadius:MaxY, v69, v74];
  }

  CGPathAddLineToPoint(Mutable, 0, MinX, v73 + ya);
  if (v72 != v58 || v73 != v57)
  {
    [(PXPath *)self addContinuousCornerToPath:Mutable trueCorner:1 cornerRadius:v23 corners:0 portion:v47 == 0 clockwise:MinX fullRadius:ya, v72, v73];
  }

  CGPathAddLineToPoint(Mutable, 0, x, ya);
  v59 = objc_alloc_init(PXPath);
  [(PXPath *)v59 setCGPath:Mutable];
  CGPathRelease(Mutable);

  return v59;
}

- (CGRect)boundingRect
{
  v29 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  points = [(PXPath *)self points];
  v3 = [points countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v25;
    v6 = 0.0;
    v7 = 1.79769313e308;
    v8 = 0.0;
    v9 = 1.79769313e308;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v25 != v5)
        {
          objc_enumerationMutation(points);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        [v11 x];
        if (v12 < v9)
        {
          [v11 x];
          v9 = v13;
        }

        [v11 x];
        if (v14 > v6)
        {
          [v11 x];
          v6 = v15;
        }

        [v11 y];
        if (v16 < v7)
        {
          [v11 y];
          v7 = v17;
        }

        [v11 y];
        if (v18 > v8)
        {
          [v11 y];
          v8 = v19;
        }
      }

      v4 = [points countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
    v7 = 1.79769313e308;
    v8 = 0.0;
    v9 = 1.79769313e308;
  }

  v20 = v6 - v9;
  v21 = v8 - v7;
  v22 = v9;
  v23 = v7;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (void)addLineToPointX:(double)x y:(double)y
{
  v6 = [SPCCurvePoint pointWithX:x y:y];
  points = [(PXPath *)self points];
  [points addObject:v6];
}

- (PXPath)initWithPoints:(CGPoint *)points count:(int64_t)count
{
  v11.receiver = self;
  v11.super_class = PXPath;
  v6 = [(PXPath *)&v11 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    points = v6->_points;
    v6->_points = v7;

    if (count >= 1)
    {
      p_y = &points->y;
      do
      {
        [(PXPath *)v6 addLineToPointX:*(p_y - 1) y:*p_y];
        p_y += 2;
        --count;
      }

      while (count);
    }
  }

  return v6;
}

+ (id)pathWithRoundedRect:(CGRect)rect cornerRadius:(double)radius
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v14[4] = *MEMORY[0x1E69E9840];
  v9 = [MEMORY[0x1E696B098] valueWithSize:{radius, radius}];
  v10 = [self alloc];
  v14[0] = v9;
  v14[1] = v9;
  v14[2] = v9;
  v14[3] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:4];
  v12 = [v10 initWithRect:255 withRoundedCorners:v11 cornerRadii:1 smoothPillShapes:{x, y, width, height}];

  return v12;
}

+ (id)pathWithEllipseInRect:(CGRect)rect
{
  v3 = objc_alloc_init(self);

  return v3;
}

+ (id)pathWithRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v19 = *MEMORY[0x1E69E9840];
  MinX = CGRectGetMinX(rect);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  MinY = CGRectGetMinY(v21);
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  MaxX = CGRectGetMaxX(v22);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  *v13 = MinX;
  *&v13[1] = MinY;
  *&v13[2] = MinX;
  MaxY = CGRectGetMaxY(v23);
  v15 = MaxX;
  v16 = MaxY;
  v17 = MaxX;
  v18 = MinY;
  v11 = [[self alloc] initWithPoints:v13 count:4];
  [v11 closeSubpath];

  return v11;
}

@end