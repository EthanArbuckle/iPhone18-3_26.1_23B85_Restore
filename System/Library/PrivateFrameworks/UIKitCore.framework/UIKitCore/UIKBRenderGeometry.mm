@interface UIKBRenderGeometry
+ (id)geometryWithFrame:(CGRect)frame paddedFrame:(CGRect)paddedFrame;
+ (id)geometryWithShape:(id)shape;
+ (id)sortedGeometries:(id)geometries leftToRight:(BOOL)right;
- (BOOL)isEqual:(id)equal;
- (CGPoint)popupSource;
- (CGRect)displayFrame;
- (CGRect)frame;
- (CGRect)layeredBackgroundPaddedFrame;
- (CGRect)layeredForegroundPaddedFrame;
- (CGRect)paddedFrame;
- (CGRect)symbolFrame;
- (CGSize)concaveCornerOffset;
- (UIEdgeInsets)displayInsets;
- (UIEdgeInsets)layoutMargins;
- (UIEdgeInsets)paddedInsets;
- (UIKBRenderGeometry)initWithShape:(id)shape;
- (id)_copyForDirection:(int64_t)direction positionFactor:(double)factor inwardSizeFactor:(double)sizeFactor outwardSizeFactor:(double)outwardSizeFactor perpendicularSizeFactor:(double)perpendicularSizeFactor sizeAspectRatio:(double)ratio scale:(double)scale;
- (id)copyForFlickDirection:(int64_t)direction scale:(double)scale;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)iPadVariantGeometries:(unint64_t)geometries rowLimit:(int64_t)limit;
- (id)iPhoneVariantGeometries:(unint64_t)geometries annotationIndex:(unint64_t)index;
- (id)similarShape;
- (id)watchVariantGeometries:(unint64_t)geometries annotationIndex:(unint64_t)index;
- (unint64_t)adjustForTranslucentGapsInFrameWithSize_10Key:(CGSize)key centerX:(double)x bottomEdge:(BOOL)edge topEdge:(BOOL)topEdge;
- (unint64_t)adjustForTranslucentGapsWithSize:(CGSize)size inFrame:(CGRect)frame;
- (void)adjustForConsistentGapsWithSize:(CGSize)size inFrame:(CGRect)frame;
- (void)adjustToTopWithInsets:(UIEdgeInsets)insets;
- (void)applyInsets:(UIEdgeInsets)insets;
- (void)applyOffset:(CGPoint)offset;
- (void)applyShadowInsets:(UIEdgeInsets)insets;
- (void)makeIntegralWithScale:(double)scale;
- (void)overlayWithGeometry:(id)geometry;
- (void)setLayeredBackgroundPaddedFrame:(CGRect)frame;
- (void)setLayeredForegroundPaddedFrame:(CGRect)frame;
@end

@implementation UIKBRenderGeometry

- (CGRect)paddedFrame
{
  x = self->_paddedFrame.origin.x;
  y = self->_paddedFrame.origin.y;
  width = self->_paddedFrame.size.width;
  height = self->_paddedFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)symbolFrame
{
  x = self->_symbolFrame.origin.x;
  y = self->_symbolFrame.origin.y;
  width = self->_symbolFrame.size.width;
  height = self->_symbolFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)displayFrame
{
  x = self->_displayFrame.origin.x;
  y = self->_displayFrame.origin.y;
  width = self->_displayFrame.size.width;
  height = self->_displayFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIEdgeInsets)displayInsets
{
  [(UIKBRenderGeometry *)self displayFrame];
  v4 = v3;
  [(UIKBRenderGeometry *)self paddedFrame];
  v6 = v4 - v5;
  [(UIKBRenderGeometry *)self paddedFrame];
  v9 = v7 + v8;
  [(UIKBRenderGeometry *)self displayFrame];
  v12 = v9 - (v10 + v11);
  [(UIKBRenderGeometry *)self displayFrame];
  v14 = v13;
  [(UIKBRenderGeometry *)self paddedFrame];
  v16 = v14 - v15;
  [(UIKBRenderGeometry *)self paddedFrame];
  v19 = v17 + v18;
  [(UIKBRenderGeometry *)self displayFrame];
  v22 = v19 - (v20 + v21);
  v23 = v6;
  v24 = v16;
  v25 = v12;
  result.right = v22;
  result.bottom = v25;
  result.left = v24;
  result.top = v23;
  return result;
}

- (unint64_t)adjustForTranslucentGapsWithSize:(CGSize)size inFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = size.height;
  v9 = size.width;
  if (CGRectIsEmpty(frame))
  {
    return 0;
  }

  if (v9 == *MEMORY[0x1E695F060] && v8 == *(MEMORY[0x1E695F060] + 8))
  {
    return 0;
  }

  v26 = v8;
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  MidX = CGRectGetMidX(v29);
  [(UIKBRenderGeometry *)self paddedFrame];
  v13 = v30.origin.x;
  v14 = v30.size.width;
  v27 = v30.size.height;
  v28 = v30.origin.y;
  if (MidX <= CGRectGetMaxX(v30))
  {
    v31.origin.x = v13;
    v31.size.height = v27;
    v31.origin.y = v28;
    v31.size.width = v14;
    MinX = CGRectGetMinX(v31);
    if (MidX < MinX)
    {
      v19 = v9 + v13;
    }

    else
    {
      v19 = v13;
    }

    if (MidX < MinX)
    {
      v13 = v9 + v13;
    }

    rect = v28;
    if (MidX < MinX)
    {
      v15 = v14 - v9;
    }

    else
    {
      v15 = v14;
    }

    v17 = v19;
    if (MidX < MinX)
    {
      v16 = 2;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v15 = v14 - v9;
    v16 = 8;
    rect = v28;
    v17 = v13;
  }

  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  MinY = CGRectGetMinY(v32);
  v33.origin.x = v13;
  v33.origin.y = rect;
  v33.size.width = v15;
  v33.size.height = v27;
  v21 = CGRectGetMinY(v33);
  if (MinY == v21)
  {
    v22 = v27;
  }

  else
  {
    v22 = v27 - v26;
  }

  if (MinY == v21)
  {
    v23 = v28;
  }

  else
  {
    v23 = v26 + v28;
  }

  if (MinY != v21)
  {
    ++v16;
  }

  [(UIKBRenderGeometry *)self setPaddedFrame:v17, v23, v15, v22, *&rect];
  return v16;
}

- (unint64_t)adjustForTranslucentGapsInFrameWithSize_10Key:(CGSize)key centerX:(double)x bottomEdge:(BOOL)edge topEdge:(BOOL)topEdge
{
  topEdgeCopy = topEdge;
  edgeCopy = edge;
  height = key.height;
  width = key.width;
  [(UIKBRenderGeometry *)self paddedFrame];
  x = v22.origin.x;
  y = v22.origin.y;
  v14 = v22.size.width;
  v15 = v22.size.height;
  if (CGRectGetMaxX(v22) >= x)
  {
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = v14;
    v23.size.height = v15;
    MinX = CGRectGetMinX(v23);
    if (MinX <= x)
    {
      v16 = v14;
    }

    else
    {
      x = width + x;
      v16 = v14 - width;
    }

    if (MinX > x)
    {
      v17 = 2;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v16 = v14 - width;
    v17 = 8;
  }

  v19 = 4;
  if (!edgeCopy)
  {
    v19 = 0;
  }

  v20 = v19 | topEdgeCopy;
  [(UIKBRenderGeometry *)self setPaddedFrame:UIRectInsetEdges(v20, x, y, v16, v15, height)];
  return v17 | v20;
}

- (void)adjustForConsistentGapsWithSize:(CGSize)size inFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = size.height;
  v9 = size.width;
  if (!CGRectIsEmpty(frame))
  {
    v11 = v9 == *MEMORY[0x1E695F060] && v8 == *(MEMORY[0x1E695F060] + 8);
    if (!v11)
    {
      v31 = v8;
      v37.origin.x = x;
      v37.origin.y = y;
      v37.size.width = width;
      v37.size.height = height;
      MidX = CGRectGetMidX(v37);
      [(UIKBRenderGeometry *)self paddedFrame];
      v13 = v38.origin.y;
      v14 = v38.size.width;
      v33 = v38.origin.x;
      rect = v38.size.height;
      v32 = MidX;
      if (MidX <= CGRectGetMaxX(v38))
      {
        v17 = v33;
        v39.size.height = rect;
        v39.origin.x = v33;
        v39.origin.y = v13;
        v39.size.width = v14;
        if (v32 >= CGRectGetMinX(v39))
        {
          v15 = v9;
        }

        else
        {
          v15 = 1.0;
        }

        v16 = v15;
      }

      else
      {
        v15 = 1.0;
        v16 = v9;
        v17 = v33;
      }

      v18 = v13;
      v19 = v14 - (v9 + v15);
      v20 = v18 + 0.0;
      v30 = v9;
      v21 = v17 + v16;
      v40.origin.x = x;
      v40.origin.y = y;
      v40.size.width = width;
      v40.size.height = height;
      MinY = CGRectGetMinY(v40);
      v41.origin.x = v21;
      v34 = v19;
      v41.origin.y = v20;
      v41.size.width = v19;
      v41.size.height = rect;
      if (MinY == CGRectGetMinY(v41))
      {
        v23 = v21;
        v24 = v31;
        v25 = v31 + v30 * 0.5 + -1.0;
        v26 = v34;
        v27 = rect;
      }

      else
      {
        v42.origin.x = x;
        v42.origin.y = y;
        v42.size.width = width;
        v42.size.height = height;
        MaxY = CGRectGetMaxY(v42);
        v23 = v21;
        v43.origin.x = v21;
        v43.origin.y = v20;
        v43.size.width = v34;
        v27 = rect;
        v43.size.height = rect;
        v29 = CGRectGetMaxY(v43);
        v24 = v31 * 0.5 + 2.0;
        v11 = MaxY == v29;
        v25 = v24 + v30 * 0.5 + -1.0;
        if (v11)
        {
          v25 = v30 * 0.5 + v24;
        }

        v26 = v34;
      }

      [(UIKBRenderGeometry *)self setPaddedFrame:v23 + 0.0, v20 + v24, v26, v27 - v25];
    }
  }
}

- (void)adjustToTopWithInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  [(UIKBRenderGeometry *)self frame];
  if (v8 != 0.0)
  {
    [(UIKBRenderGeometry *)self frame];
    v11 = left + right;
    v13 = top + bottom;
    [(UIKBRenderGeometry *)self setFrame:left + v9, top + v10, v12 - v11, v14 - v13];
    [(UIKBRenderGeometry *)self paddedFrame];
    [(UIKBRenderGeometry *)self setPaddedFrame:left + v15, top + v16, v17 - v11, v18 - v13];
    [(UIKBRenderGeometry *)self displayFrame];
    v20 = left + v19;
    v22 = top + v21;
    v24 = v23 - v11;
    v26 = v25 - v13;

    [(UIKBRenderGeometry *)self setDisplayFrame:v20, v22, v24, v26];
  }
}

- (void)makeIntegralWithScale:(double)scale
{
  [(UIKBRenderGeometry *)self frame];
  [(UIKBRenderGeometry *)self setFrame:UIRectIntegralWithScale(v5, v6, v7, v8, scale)];
  [(UIKBRenderGeometry *)self paddedFrame];
  [(UIKBRenderGeometry *)self setPaddedFrame:UIRectIntegralWithScale(v9, v10, v11, v12, scale)];
  [(UIKBRenderGeometry *)self displayFrame];
  [(UIKBRenderGeometry *)self setDisplayFrame:UIRectIntegralWithScale(v13, v14, v15, v16, scale)];
  [(UIKBRenderGeometry *)self symbolFrame];
  v21 = UIRectIntegralWithScale(v17, v18, v19, v20, scale);

  [(UIKBRenderGeometry *)self setSymbolFrame:v21];
}

- (void)applyOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  [(UIKBRenderGeometry *)self frame];
  [(UIKBRenderGeometry *)self setFrame:x + v6, y + v8, v7 - (x - x), v9 - (y - y)];
  [(UIKBRenderGeometry *)self paddedFrame];
  [(UIKBRenderGeometry *)self setPaddedFrame:x + v10, y + v12, v11 - (x - x), v13 - (y - y)];
  [(UIKBRenderGeometry *)self displayFrame];
  [(UIKBRenderGeometry *)self setDisplayFrame:x + v14, y + v16, v15 - (x - x), v17 - (y - y)];
  [(UIKBRenderGeometry *)self symbolFrame];
  v19 = x + v18;
  v21 = v20 - (x - x);
  v23 = y + v22;
  v25 = v24 - (y - y);

  [(UIKBRenderGeometry *)self setSymbolFrame:v19, v23, v21, v25];
}

- (id)copyForFlickDirection:(int64_t)direction scale:(double)scale
{
  v5 = [(UIKBRenderGeometry *)self _copyForDirection:direction positionFactor:1.0 inwardSizeFactor:0.12 outwardSizeFactor:-0.12 perpendicularSizeFactor:-0.125 sizeAspectRatio:0.8 scale:scale];
  [v5 displayFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(UIKBRenderGeometry *)self displayFrame];
  v21.origin.x = v14;
  v21.origin.y = v15;
  v21.size.width = v16;
  v21.size.height = v17;
  v19.origin.x = v7;
  v19.origin.y = v9;
  v19.size.width = v11;
  v19.size.height = v13;
  v20 = CGRectUnion(v19, v21);
  [v5 setDisplayFrame:{v20.origin.x, v20.origin.y, v20.size.width, v20.size.height}];
  return v5;
}

- (id)_copyForDirection:(int64_t)direction positionFactor:(double)factor inwardSizeFactor:(double)sizeFactor outwardSizeFactor:(double)outwardSizeFactor perpendicularSizeFactor:(double)perpendicularSizeFactor sizeAspectRatio:(double)ratio scale:(double)scale
{
  v16 = [(UIKBRenderGeometry *)self copy];
  [v16 paddedFrame];
  v19 = v17;
  v20 = v18;
  if (direction > 1)
  {
    if (direction == 2)
    {
      [v16 applyOffset:{0.0, v18 * factor}];
      [v16 paddedFrame];
      v21 = v20 * sizeFactor;
      v23 = v19 * perpendicularSizeFactor * ratio;
      v44 = v20 * outwardSizeFactor;
      v25 = v23 + v45;
      v26 = v23 + v23;
      v28 = v46 - (v23 + v23);
      v30 = v20 * sizeFactor + v47;
      v31 = v20 * sizeFactor + v44;
      v33 = v48 - v31;
      v34 = 12;
      goto LABEL_10;
    }

    if (direction == 3)
    {
      [v16 applyOffset:{-(v17 * factor), 0.0}];
      [v16 paddedFrame];
      v21 = v20 * perpendicularSizeFactor;
      v35 = v19 * sizeFactor * ratio;
      v23 = v19 * outwardSizeFactor * ratio;
      v25 = v23 + v36;
      v26 = v35 + v23;
      v28 = v37 - (v35 + v23);
      v30 = v20 * perpendicularSizeFactor + v38;
      v31 = v21 + v21;
      v33 = v39 - (v21 + v21);
      v34 = 5;
      goto LABEL_10;
    }
  }

  else
  {
    if (!direction)
    {
      [v16 applyOffset:{0.0, -(v18 * factor)}];
      [v16 paddedFrame];
      v21 = v20 * outwardSizeFactor;
      v23 = v19 * perpendicularSizeFactor * ratio;
      v25 = v23 + v40;
      v26 = v23 + v23;
      v28 = v41 - (v23 + v23);
      v30 = v21 + v42;
      v31 = v21 + v20 * sizeFactor;
      v33 = v43 - v31;
      v34 = 3;
      goto LABEL_10;
    }

    if (direction == 1)
    {
      [v16 applyOffset:{v17 * factor, 0.0}];
      [v16 paddedFrame];
      v21 = v20 * perpendicularSizeFactor;
      v22 = v19 * outwardSizeFactor * ratio;
      v23 = v19 * sizeFactor * ratio;
      v25 = v23 + v24;
      v26 = v22 + v23;
      v28 = v27 - (v22 + v23);
      v30 = v20 * perpendicularSizeFactor + v29;
      v31 = v21 + v21;
      v33 = v32 - (v21 + v21);
      v34 = 10;
LABEL_10:
      [v16 setPaddedFrame:{v25, v30, v28, v33}];
      [v16 displayFrame];
      [v16 setDisplayFrame:{v23 + v49, v21 + v51, v50 - v26, v52 - v31}];
      [v16 setRoundRectCorners:v34];
    }
  }

  [v16 setRoundRectRadius:8.0];
  [v16 makeIntegralWithScale:scale];
  return v16;
}

+ (id)geometryWithShape:(id)shape
{
  shapeCopy = shape;
  v5 = [[self alloc] initWithShape:shapeCopy];

  return v5;
}

+ (id)geometryWithFrame:(CGRect)frame paddedFrame:(CGRect)paddedFrame
{
  height = paddedFrame.size.height;
  width = paddedFrame.size.width;
  y = paddedFrame.origin.y;
  x = paddedFrame.origin.x;
  v8 = frame.size.height;
  v9 = frame.size.width;
  v10 = frame.origin.y;
  v11 = frame.origin.x;
  v12 = objc_alloc_init(UIKBRenderGeometry);
  [(UIKBRenderGeometry *)v12 setFrame:v11, v10, v9, v8];
  [(UIKBRenderGeometry *)v12 setPaddedFrame:x, y, width, height];
  [(UIKBRenderGeometry *)v12 setSymbolFrame:x, y, width, height];
  [(UIKBRenderGeometry *)v12 setDisplayFrame:x, y, width, height];
  [(UIKBRenderGeometry *)v12 setConcaveCorner:0];
  [(UIKBRenderGeometry *)v12 setConcaveCornerOffset:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  [(UIKBRenderGeometry *)v12 setFlickDirection:-3];
  v13 = *MEMORY[0x1E695F050];
  v14 = *(MEMORY[0x1E695F050] + 8);
  v15 = *(MEMORY[0x1E695F050] + 16);
  v16 = *(MEMORY[0x1E695F050] + 24);
  [(UIKBRenderGeometry *)v12 setLayeredBackgroundPaddedFrame:*MEMORY[0x1E695F050], v14, v15, v16];
  [(UIKBRenderGeometry *)v12 setLayeredForegroundPaddedFrame:v13, v14, v15, v16];

  return v12;
}

- (UIKBRenderGeometry)initWithShape:(id)shape
{
  shapeCopy = shape;
  v27.receiver = self;
  v27.super_class = UIKBRenderGeometry;
  v5 = [(UIKBRenderGeometry *)&v27 init];
  if (v5)
  {
    [shapeCopy frame];
    *(v5 + 15) = v6;
    *(v5 + 16) = v7;
    *(v5 + 17) = v8;
    *(v5 + 18) = v9;
    [shapeCopy paddedFrame];
    *(v5 + 19) = v10;
    *(v5 + 20) = v11;
    *(v5 + 21) = v12;
    *(v5 + 22) = v13;
    [shapeCopy paddedFrame];
    *(v5 + 23) = v14;
    *(v5 + 24) = v15;
    *(v5 + 25) = v16;
    *(v5 + 26) = v17;
    [shapeCopy paddedFrame];
    *(v5 + 27) = v18;
    *(v5 + 28) = v19;
    *(v5 + 29) = v20;
    *(v5 + 30) = v21;
    *(v5 + 2) = [shapeCopy concaveCorner];
    [shapeCopy concaveCornerOffset];
    *(v5 + 13) = v22;
    *(v5 + 14) = v23;
    *(v5 + 5) = -3;
    v24 = *MEMORY[0x1E695F050];
    v25 = *(MEMORY[0x1E695F050] + 16);
    *(v5 + 280) = *MEMORY[0x1E695F050];
    *(v5 + 296) = v25;
    *(v5 + 312) = v24;
    *(v5 + 328) = v25;
  }

  return v5;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  [(UIKBRenderGeometry *)self frame];
  v4 = NSStringFromCGRect(v24);
  [v3 appendFormat:@"; frame = %@", v4];

  [(UIKBRenderGeometry *)self paddedFrame];
  v5 = NSStringFromCGRect(v25);
  [v3 appendFormat:@"; paddedFrame = %@", v5];

  [(UIKBRenderGeometry *)self displayFrame];
  v6 = NSStringFromCGRect(v26);
  [v3 appendFormat:@"; displayFrame = %@", v6];

  [(UIKBRenderGeometry *)self symbolFrame];
  v7 = NSStringFromCGRect(v27);
  [v3 appendFormat:@"; symbolFrame = %@", v7];

  if ([(UIKBRenderGeometry *)self concaveCorner])
  {
    [v3 appendFormat:@"; concaveCorner = %lux", -[UIKBRenderGeometry concaveCorner](self, "concaveCorner")];
  }

  [(UIKBRenderGeometry *)self concaveCornerOffset];
  if (v9 != *MEMORY[0x1E695F060] || v8 != *(MEMORY[0x1E695F060] + 8))
  {
    [(UIKBRenderGeometry *)self concaveCornerOffset];
    v10 = NSStringFromCGSize(v22);
    [v3 appendFormat:@"; concaveCornerOffset = %@", v10];
  }

  [(UIKBRenderGeometry *)self popupSource];
  if (v12 != *MEMORY[0x1E695EFF8] || v11 != *(MEMORY[0x1E695EFF8] + 8))
  {
    [(UIKBRenderGeometry *)self popupSource];
    v13 = NSStringFromCGPoint(v23);
    [v3 appendFormat:@"; popupSource = %@", v13];
  }

  if ([(UIKBRenderGeometry *)self roundRectCorners])
  {
    [v3 appendFormat:@"; roundRectCorners = %lux", -[UIKBRenderGeometry roundRectCorners](self, "roundRectCorners")];
  }

  v14 = enumStringForAttributeValue([(UIKBRenderGeometry *)self popupBias]);

  if (v14)
  {
    v15 = enumStringForAttributeValue([(UIKBRenderGeometry *)self popupBias]);
    [v3 appendFormat:@"; popupBias = %@", v15];
  }

  if ([(UIKBRenderGeometry *)self flickDirection]!= -3)
  {
    [v3 appendFormat:@"; flickDirection = %d", -[UIKBRenderGeometry flickDirection](self, "flickDirection")];
  }

  if ([(UIKBRenderGeometry *)self detachedVariants])
  {
    [v3 appendFormat:@"; detachedVariants = YES"];
  }

  if ([(UIKBRenderGeometry *)self tallPopup])
  {
    [v3 appendFormat:@"; tallPopup = %d", -[UIKBRenderGeometry tallPopup](self, "tallPopup")];
  }

  if ([(UIKBRenderGeometry *)self popupDirection])
  {
    [v3 appendFormat:@"; popupDirection = %ld", -[UIKBRenderGeometry popupDirection](self, "popupDirection")];
  }

  splitLeftRect = [(UIKBRenderGeometry *)self splitLeftRect];

  if (splitLeftRect)
  {
    splitLeftRect2 = [(UIKBRenderGeometry *)self splitLeftRect];
    [v3 appendFormat:@"; splitLeftRect = %@", splitLeftRect2];
  }

  splitRightRect = [(UIKBRenderGeometry *)self splitRightRect];

  if (splitRightRect)
  {
    splitRightRect2 = [(UIKBRenderGeometry *)self splitRightRect];
    [v3 appendFormat:@"; splitRightRect = %@", splitRightRect2];
  }

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
    goto LABEL_28;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || !CGRectEqualToRect(self->_frame, equalCopy->_frame) || !CGRectEqualToRect(self->_paddedFrame, equalCopy->_paddedFrame) || !CGRectEqualToRect(self->_displayFrame, equalCopy->_displayFrame) || !CGRectEqualToRect(self->_symbolFrame, equalCopy->_symbolFrame) || self->_concaveCorner != equalCopy->_concaveCorner)
  {
    goto LABEL_26;
  }

  v5 = 0;
  if (self->_concaveCornerOffset.width != equalCopy->_concaveCornerOffset.width)
  {
    goto LABEL_28;
  }

  if (self->_concaveCornerOffset.height != equalCopy->_concaveCornerOffset.height)
  {
    goto LABEL_28;
  }

  v5 = 0;
  if (self->_popupSource.x != equalCopy->_popupSource.x || self->_popupSource.y != equalCopy->_popupSource.y)
  {
    goto LABEL_28;
  }

  if (self->_roundRectCorners != equalCopy->_roundRectCorners || self->_roundRectRadius != equalCopy->_roundRectRadius || self->_popupBias != equalCopy->_popupBias || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_layoutMargins.top, *&equalCopy->_layoutMargins.top), vceqq_f64(*&self->_layoutMargins.bottom, *&equalCopy->_layoutMargins.bottom)))) & 1) == 0 || self->_flickDirection != equalCopy->_flickDirection || self->_detachedVariants != equalCopy->_detachedVariants || self->_tallPopup != equalCopy->_tallPopup || self->_popupDirection != equalCopy->_popupDirection || (splitLeftRect = self->_splitLeftRect, (splitLeftRect == 0) == (equalCopy->_splitLeftRect != 0)) || splitLeftRect && ![(NSValue *)splitLeftRect isEqualToValue:?])
  {
LABEL_26:
    v5 = 0;
    goto LABEL_28;
  }

  splitRightRect = self->_splitRightRect;
  v8 = equalCopy->_splitRightRect;
  v5 = (splitRightRect == 0) == (v8 == 0);
  if (splitRightRect && v8)
  {
    v5 = [(NSValue *)splitRightRect isEqualToValue:?];
  }

LABEL_28:

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(UIKBRenderGeometry);
  [(UIKBRenderGeometry *)self frame];
  [(UIKBRenderGeometry *)v4 setFrame:?];
  [(UIKBRenderGeometry *)self paddedFrame];
  [(UIKBRenderGeometry *)v4 setPaddedFrame:?];
  [(UIKBRenderGeometry *)self displayFrame];
  [(UIKBRenderGeometry *)v4 setDisplayFrame:?];
  [(UIKBRenderGeometry *)self symbolFrame];
  [(UIKBRenderGeometry *)v4 setSymbolFrame:?];
  [(UIKBRenderGeometry *)v4 setConcaveCorner:[(UIKBRenderGeometry *)self concaveCorner]];
  [(UIKBRenderGeometry *)self concaveCornerOffset];
  [(UIKBRenderGeometry *)v4 setConcaveCornerOffset:?];
  [(UIKBRenderGeometry *)self popupSource];
  [(UIKBRenderGeometry *)v4 setPopupSource:?];
  [(UIKBRenderGeometry *)v4 setRoundRectCorners:[(UIKBRenderGeometry *)self roundRectCorners]];
  [(UIKBRenderGeometry *)self roundRectRadius];
  [(UIKBRenderGeometry *)v4 setRoundRectRadius:?];
  [(UIKBRenderGeometry *)v4 setPopupBias:[(UIKBRenderGeometry *)self popupBias]];
  [(UIKBRenderGeometry *)self layoutMargins];
  [(UIKBRenderGeometry *)v4 setLayoutMargins:?];
  [(UIKBRenderGeometry *)v4 setFlickDirection:[(UIKBRenderGeometry *)self flickDirection]];
  [(UIKBRenderGeometry *)v4 setDetachedVariants:[(UIKBRenderGeometry *)self detachedVariants]];
  [(UIKBRenderGeometry *)v4 setTallPopup:[(UIKBRenderGeometry *)self tallPopup]];
  [(UIKBRenderGeometry *)v4 setPopupDirection:[(UIKBRenderGeometry *)self popupDirection]];
  splitLeftRect = [(UIKBRenderGeometry *)self splitLeftRect];
  v6 = [splitLeftRect copy];
  [(UIKBRenderGeometry *)v4 setSplitLeftRect:v6];

  splitRightRect = [(UIKBRenderGeometry *)self splitRightRect];
  v8 = [splitRightRect copy];
  [(UIKBRenderGeometry *)v4 setSplitRightRect:v8];

  return v4;
}

- (void)overlayWithGeometry:(id)geometry
{
  geometryCopy = geometry;
  [geometryCopy roundRectRadius];
  if (v4 > 0.0)
  {
    [geometryCopy roundRectRadius];
    [(UIKBRenderGeometry *)self setRoundRectRadius:?];
  }

  if ([geometryCopy roundRectCorners])
  {
    -[UIKBRenderGeometry setRoundRectCorners:](self, "setRoundRectCorners:", [geometryCopy roundRectCorners]);
  }

  if ([geometryCopy popupBias])
  {
    -[UIKBRenderGeometry setPopupBias:](self, "setPopupBias:", [geometryCopy popupBias]);
  }

  if ([geometryCopy flickDirection] != -3)
  {
    -[UIKBRenderGeometry setFlickDirection:](self, "setFlickDirection:", [geometryCopy flickDirection]);
  }

  if ([geometryCopy detachedVariants])
  {
    -[UIKBRenderGeometry setDetachedVariants:](self, "setDetachedVariants:", [geometryCopy detachedVariants]);
  }

  if ([geometryCopy tallPopup])
  {
    -[UIKBRenderGeometry setTallPopup:](self, "setTallPopup:", [geometryCopy tallPopup]);
  }

  if ([geometryCopy popupDirection])
  {
    -[UIKBRenderGeometry setPopupDirection:](self, "setPopupDirection:", [geometryCopy popupDirection]);
  }
}

- (void)applyInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  if (insets.left != 0.0 || insets.top != 0.0 || insets.right != 0.0 || insets.bottom != 0.0)
  {
    [(UIKBRenderGeometry *)self frame];
    [(UIKBRenderGeometry *)self setFrame:left + v8, top + v9, v10 - (left + right), v11 - (top + bottom)];
    [(UIKBRenderGeometry *)self paddedFrame];
    [(UIKBRenderGeometry *)self setPaddedFrame:left + v12, top + v13, v14 - (left + right), v15 - (top + bottom)];
    [(UIKBRenderGeometry *)self displayFrame];
    [(UIKBRenderGeometry *)self setDisplayFrame:left + v16, top + v17, v18 - (left + right), v19 - (top + bottom)];
    [(UIKBRenderGeometry *)self symbolFrame];
    [(UIKBRenderGeometry *)self setSymbolFrame:left + v20, top + v21, v22 - (left + right), v23 - (top + bottom)];
    [(UIKBRenderGeometry *)self popupSource];
    v25 = v24;
    v27 = v26;
    if ([(UIKBRenderGeometry *)self flickDirection])
    {
      if ([(UIKBRenderGeometry *)self flickDirection]== 2)
      {
        v27 = top + v27;
      }

      else if ([(UIKBRenderGeometry *)self flickDirection]== 3)
      {
        v25 = v25 - right;
      }

      else if ([(UIKBRenderGeometry *)self flickDirection]== 1)
      {
        v25 = left + v25;
      }
    }

    else
    {
      v27 = v27 - bottom;
    }

    [(UIKBRenderGeometry *)self setPopupSource:v25, v27];
  }
}

- (void)applyShadowInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  if (insets.left == 0.0 && insets.top == 0.0 && insets.right == 0.0 && insets.bottom == 0.0)
  {
    return;
  }

  if ([(UIKBRenderGeometry *)self detachedVariants]|| ![(UIKBRenderGeometry *)self popupBias]|| [(UIKBRenderGeometry *)self popupDirection]== 3)
  {
    if (([(UIKBRenderGeometry *)self flickDirection]& 0x8000000000000000) == 0)
    {
      if (![(UIKBRenderGeometry *)self flickDirection])
      {
        [(UIKBRenderGeometry *)self popupSource];
        v9 = v12;
        [(UIKBRenderGeometry *)self popupSource];
        v11 = v13 - bottom;
        bottom = 0.0;
        goto LABEL_22;
      }

      if ([(UIKBRenderGeometry *)self flickDirection]== 2)
      {
        [(UIKBRenderGeometry *)self popupSource];
        v9 = v8;
        [(UIKBRenderGeometry *)self popupSource];
        v11 = top + v10;
        top = 0.0;
LABEL_22:
        [(UIKBRenderGeometry *)self setPopupSource:v9, v11];
        goto LABEL_23;
      }

      if ([(UIKBRenderGeometry *)self flickDirection]== 3)
      {
        [(UIKBRenderGeometry *)self popupSource];
        v9 = v14 - right;
        [(UIKBRenderGeometry *)self popupSource];
        right = 0.0;
        goto LABEL_22;
      }

      if ([(UIKBRenderGeometry *)self flickDirection]== 1)
      {
        [(UIKBRenderGeometry *)self popupSource];
        v9 = left + v30;
        [(UIKBRenderGeometry *)self popupSource];
        left = 0.0;
        goto LABEL_22;
      }
    }

LABEL_23:

    [(UIKBRenderGeometry *)self applyInsets:top, left, bottom, right];
    return;
  }

  [(UIKBRenderGeometry *)self displayFrame];
  v17 = left + right;
  [(UIKBRenderGeometry *)self setDisplayFrame:left + v15, top + v16, v18 - (left + right), v19 - (top + bottom)];
  [(UIKBRenderGeometry *)self paddedFrame];
  v21 = v20;
  v23 = left + v22;
  v25 = v24 - v17;
  [(UIKBRenderGeometry *)self paddedFrame];
  v27 = v25 / v26;
  if (v25 / v26 < 0.785)
  {
    v27 = v25 / v26 * 0.5;
  }

  v28 = ceil(v21 * v27);
  [(UIKBRenderGeometry *)self paddedFrame];
  v29 = CGRectGetMaxY(v32) - bottom - v28;

  [(UIKBRenderGeometry *)self setPaddedFrame:v23, v29, v25, v28];
}

- (id)iPhoneVariantGeometries:(unint64_t)geometries annotationIndex:(unint64_t)index
{
  array = [MEMORY[0x1E695DF70] array];
  [(UIKBRenderGeometry *)self displayFrame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(UIKBRenderGeometry *)self symbolFrame];
  v17 = v16;
  v19 = v18;
  v89 = v20;
  v22 = v21;
  v104.origin.x = v9;
  v104.origin.y = v11;
  v104.size.width = v13;
  v104.size.height = v15;
  v105 = CGRectInset(v104, 8.0, -8.0);
  x = v105.origin.x;
  y = v105.origin.y;
  height = v105.size.height;
  width = v105.size.width;
  v25 = +[UIKBGeometry geometry];
  [(UIKBRenderGeometry *)self frame];
  v27 = v26;
  [(UIKBRenderGeometry *)self paddedFrame];
  [v25 setPaddingTop:{fabs(v27 - v28), 3}];
  [(UIKBRenderGeometry *)self frame];
  v31 = v29 + v30;
  [(UIKBRenderGeometry *)self paddedFrame];
  [v25 setPaddingBottom:{fabs(v31 - (v32 + v33)), 3}];
  [(UIKBRenderGeometry *)self frame];
  v35 = v34;
  [(UIKBRenderGeometry *)self paddedFrame];
  [v25 setPaddingLeft:{fabs(v35 - v36), 3}];
  [(UIKBRenderGeometry *)self frame];
  v39 = v37 + v38;
  [(UIKBRenderGeometry *)self paddedFrame];
  [v25 setPaddingRight:{fabs(v39 - (v40 + v41)), 3}];
  [v25 setExplicitlySpecified:1];
  v106.origin.x = v17;
  v106.origin.y = v19;
  v106.size.width = v89;
  v106.size.height = v22;
  rect2 = CGRectGetMinX(v106);
  v107.origin.x = x;
  v107.origin.y = y;
  v107.size.width = width;
  v107.size.height = height;
  MinX = CGRectGetMinX(v107);
  v92 = x;
  v108.origin.x = x;
  v87 = y;
  v108.origin.y = y;
  v108.size.width = width;
  v108.size.height = height;
  MaxX = CGRectGetMaxX(v108);
  v88 = v17;
  v109.origin.x = v17;
  v43 = v19;
  v109.origin.y = v19;
  v109.size.width = v89;
  v44 = v22;
  v109.size.height = v22;
  v45 = CGRectGetMaxX(v109);
  if (geometries)
  {
    v46 = v45;
    v47 = fmod(rect2 - MinX, v89);
    v48 = fmod(MaxX - v46, v89);
    v49 = 0;
    v85 = *(MEMORY[0x1E695F058] + 8);
    v86 = *MEMORY[0x1E695F058];
    v83 = *(MEMORY[0x1E695F058] + 24);
    v84 = *(MEMORY[0x1E695F058] + 16);
    v50 = v47 < v48 || index >= geometries;
    v90 = v22 + 10.0;
    v51 = v50;
    v52 = v88 + v89;
    v53 = v88 + v89;
    v95 = v44;
    do
    {
      v54 = v88;
      if (v89 >= v44 || v49 != 1 || index >= geometries)
      {
        v57 = v89;
      }

      else
      {
        v57 = v44;
      }

      if (v49 == 1)
      {
        v58 = v51;
      }

      else
      {
        v58 = v49;
      }

      if ((v58 & 1) == 0)
      {
        v54 = v88 + v89;
      }

      v91 = v54;
      v98 = v85;
      v99 = v86;
      v59 = v83;
      v97 = v84;
      for (rect2a = v57; ; v57 = rect2a)
      {
        v96 = v59;
        v60 = v52 - v57;
        v61 = v92;
        v62 = v87;
        v63 = width;
        v64 = height;
        if (v58)
        {
          v65 = v53;
          v66 = v43;
          v59 = v95;
          v67 = v95;
          if (CGRectContainsRect(*&v61, *(&v57 - 2)))
          {
            v68 = rect2a;
            v60 = v53;
            v53 = rect2a + v53;
            v69 = v43;
          }

          else
          {
            v110.origin.x = v92;
            v110.origin.y = v87;
            v110.size.width = width;
            v110.size.height = height;
            v113.origin.x = v60;
            v113.origin.y = v43;
            v113.size.width = rect2a;
            v113.size.height = v95;
            v73 = CGRectContainsRect(v110, v113);
            if (v73)
            {
              v52 = v60;
            }

            else
            {
              v60 = v99;
            }

            v68 = v97;
            v69 = v98;
            if (v73)
            {
              v69 = v43;
              v68 = rect2a;
            }

            else
            {
              v59 = v96;
            }
          }
        }

        else
        {
          v70 = v52 - v57;
          v71 = v43;
          v59 = v95;
          v72 = v95;
          if (CGRectContainsRect(*&v61, *(&v57 - 2)))
          {
            v52 = v60;
            v69 = v43;
            v68 = rect2a;
          }

          else
          {
            v111.origin.x = v92;
            v111.origin.y = v87;
            v111.size.width = width;
            v111.size.height = height;
            v114.origin.x = v53;
            v114.origin.y = v43;
            v114.size.width = rect2a;
            v114.size.height = v95;
            v74 = CGRectContainsRect(v111, v114);
            v75 = rect2a + v53;
            if (!v74)
            {
              v75 = v53;
            }

            v69 = v98;
            v60 = v99;
            if (v74)
            {
              v60 = v53;
            }

            v53 = v75;
            if (v74)
            {
              v69 = v43;
            }

            v68 = v97;
            if (v74)
            {
              v68 = rect2a;
            }

            else
            {
              v59 = v96;
            }
          }
        }

        v112.origin.x = v60;
        v112.origin.y = v69;
        v112.size.width = v68;
        v112.size.height = v59;
        if (!CGRectIsEmpty(v112) || v43 < v87)
        {
          break;
        }

        v97 = v68;
        v98 = v69;
        v99 = v60;
        v52 = v91;
        v43 = v43 - v90;
        v53 = v91;
      }

      [v25 paddedFrameWithResolvedFrame:{v60, v69, v68, v59}];
      v81 = [UIKBRenderGeometry geometryWithFrame:v60 paddedFrame:v69, v68, v59, v77, v78, v79, v80];
      [v81 setRoundRectCorners:{-[UIKBRenderGeometry roundRectCorners](self, "roundRectCorners")}];
      [(UIKBRenderGeometry *)self roundRectRadius];
      [v81 setRoundRectRadius:?];
      [array addObject:v81];

      ++v49;
      v44 = v95;
    }

    while (v49 != geometries);
  }

  if (index < geometries && [array count] >= 2)
  {
    [array exchangeObjectAtIndex:1 withObjectAtIndex:index];
  }

  return array;
}

- (id)watchVariantGeometries:(unint64_t)geometries annotationIndex:(unint64_t)index
{
  array = [MEMORY[0x1E695DF70] array];
  [(UIKBRenderGeometry *)self displayFrame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(UIKBRenderGeometry *)self symbolFrame];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v88 = v22;
  v97.origin.x = v9;
  v97.origin.y = v11;
  v97.size.width = v13;
  v97.size.height = v15;
  v98 = CGRectInset(v97, 0.0, -0.0);
  x = v98.origin.x;
  y = v98.origin.y;
  width = v98.size.width;
  height = v98.size.height;
  v27 = +[UIKBGeometry geometry];
  [v27 setPaddingTop:{0x4000000000000000, 3}];
  [v27 setPaddingBottom:{0x4000000000000000, 3}];
  [(UIKBRenderGeometry *)self frame];
  v29 = v28;
  [(UIKBRenderGeometry *)self paddedFrame];
  [v27 setPaddingLeft:{fabs(v29 - v30), 3}];
  [(UIKBRenderGeometry *)self frame];
  v33 = v31 + v32;
  [(UIKBRenderGeometry *)self paddedFrame];
  [v27 setPaddingRight:{fabs(v33 - (v34 + v35)), 3}];
  [v27 setExplicitlySpecified:1];
  v99.origin.x = v17;
  v99.origin.y = v19;
  v99.size.width = v21;
  v99.size.height = v88;
  rect2 = CGRectGetMinX(v99);
  v100.origin.x = x;
  v100.origin.y = y;
  v100.size.width = width;
  v100.size.height = height;
  MinX = CGRectGetMinX(v100);
  v86 = width;
  v87 = x;
  v101.origin.x = x;
  v82 = y;
  v101.origin.y = y;
  v101.size.width = width;
  v85 = height;
  v101.size.height = height;
  MaxX = CGRectGetMaxX(v101);
  v83 = v17;
  v102.origin.x = v17;
  v37 = v19;
  v102.origin.y = v19;
  v102.size.width = v21;
  v38 = v88;
  v102.size.height = v88;
  v39 = CGRectGetMaxX(v102);
  if (geometries)
  {
    v40 = v39;
    v41 = fmod(rect2 - MinX, v21);
    v42 = fmod(MaxX - v40, v21);
    v43 = 0;
    v79 = *(MEMORY[0x1E695F058] + 8);
    v80 = *MEMORY[0x1E695F058];
    v77 = *(MEMORY[0x1E695F058] + 24);
    v78 = *(MEMORY[0x1E695F058] + 16);
    v45 = v41 < v42 || index >= geometries;
    v46 = v17 + v21;
    v81 = v17 + v21;
    v47 = v17 + v21;
    do
    {
      v48 = v83;
      if (v21 >= v38 || v43 != 1 || index >= geometries)
      {
        v51 = v21;
      }

      else
      {
        v51 = v38;
      }

      if (v43 == 1)
      {
        v52 = v45;
      }

      else
      {
        v52 = v43;
      }

      if (!v52)
      {
        v48 = v81;
      }

      v84 = v48;
      v91 = v79;
      v92 = v80;
      v53 = v77;
      v90 = v78;
      for (rect2a = v51; ; v51 = rect2a)
      {
        v89 = v53;
        v54 = v46 - v51;
        v55 = v87;
        v56 = v82;
        v57 = v86;
        v58 = v85;
        if (v52)
        {
          v59 = v47;
          v60 = v37;
          v53 = v88;
          v61 = v88;
          if (CGRectContainsRect(*&v55, *(&v51 - 2)))
          {
            v62 = rect2a;
            v54 = v47;
            v47 = rect2a + v47;
            v63 = v37;
          }

          else
          {
            v103.origin.x = v87;
            v103.origin.y = v82;
            v103.size.width = v86;
            v103.size.height = v85;
            v106.origin.x = v54;
            v106.origin.y = v37;
            v106.size.width = rect2a;
            v106.size.height = v88;
            v67 = CGRectContainsRect(v103, v106);
            if (v67)
            {
              v46 = v54;
            }

            else
            {
              v54 = v92;
            }

            v62 = v90;
            v63 = v91;
            if (v67)
            {
              v63 = v37;
              v62 = rect2a;
            }

            else
            {
              v53 = v89;
            }
          }
        }

        else
        {
          v64 = v46 - v51;
          v65 = v37;
          v53 = v88;
          v66 = v88;
          if (CGRectContainsRect(*&v55, *(&v51 - 2)))
          {
            v46 = v54;
            v63 = v37;
            v62 = rect2a;
          }

          else
          {
            v104.origin.x = v87;
            v104.origin.y = v82;
            v104.size.width = v86;
            v104.size.height = v85;
            v107.origin.x = v47;
            v107.origin.y = v37;
            v107.size.width = rect2a;
            v107.size.height = v88;
            v68 = CGRectContainsRect(v104, v107);
            v69 = rect2a + v47;
            if (!v68)
            {
              v69 = v47;
            }

            v63 = v91;
            v54 = v92;
            if (v68)
            {
              v54 = v47;
            }

            v47 = v69;
            if (v68)
            {
              v63 = v37;
            }

            v62 = v90;
            if (v68)
            {
              v62 = rect2a;
            }

            else
            {
              v53 = v89;
            }
          }
        }

        v105.origin.x = v54;
        v105.origin.y = v63;
        v105.size.width = v62;
        v105.size.height = v53;
        if (!CGRectIsEmpty(v105) || v37 < v82)
        {
          break;
        }

        v90 = v62;
        v91 = v63;
        v92 = v54;
        v46 = v84;
        v37 = v37 - (v88 + 16.0);
        v47 = v84;
      }

      [v27 paddedFrameWithResolvedFrame:{v54, v63, v62, v53}];
      v75 = [UIKBRenderGeometry geometryWithFrame:v54 paddedFrame:v63, v62, v53, v71, v72, v73, v74];
      [v75 setRoundRectCorners:-1];
      [v75 setRoundRectRadius:2.0];
      [array addObject:v75];

      ++v43;
      v38 = v88;
    }

    while (v43 != geometries);
  }

  if (index < geometries && [array count] >= 2)
  {
    [array exchangeObjectAtIndex:1 withObjectAtIndex:index];
  }

  return array;
}

- (id)iPadVariantGeometries:(unint64_t)geometries rowLimit:(int64_t)limit
{
  [(UIKBRenderGeometry *)self roundRectRadius];
  v8 = v7;
  if ((limit - 1) >= 0x7FFFFFFFFFFFFFFELL)
  {
    limitCopy = 5;
  }

  else
  {
    limitCopy = limit;
  }

  [(UIKBRenderGeometry *)self paddedFrame];
  v11 = v10;
  [(UIKBRenderGeometry *)self paddedFrame];
  v13 = v12;
  [(UIKBRenderGeometry *)self displayFrame];
  v52 = CGRectInset(v51, 40.0, -40.0);
  x = v52.origin.x;
  width = v52.size.width;
  [(UIKBRenderGeometry *)self paddedFrame];
  v16 = v15;
  [(UIKBRenderGeometry *)self frame];
  v48 = v17;
  [(UIKBRenderGeometry *)self frame];
  v46 = v19;
  v47 = v18;
  [(UIKBRenderGeometry *)self paddedFrame];
  v21 = v20;
  v23 = v22;
  [(UIKBRenderGeometry *)self paddedFrame];
  v45 = v24;
  [(UIKBRenderGeometry *)self paddedFrame];
  v26 = v25;
  array = [MEMORY[0x1E695DF70] array];
  if (geometries)
  {
    v28 = 0;
    v29 = 0;
    v30 = v16;
    v31 = v8 * 0.5;
    v32 = v11 - (v8 + v8);
    v33 = v13 - (v8 + v8);
    v34 = v45 - (v8 + (v30 - v48 + 0.0 + v47 + v46 - (v21 + v23) + 0.0) * 0.5 + 1.0) - v33;
    v35 = v8 + v26;
    v36 = x + width;
    v37 = 0.0;
    v38 = v35;
    do
    {
      v39 = v28 % limitCopy;
      if (v29)
      {
        v40 = v35;
      }

      else
      {
        v40 = v38;
      }

      if (v29)
      {
        v37 = 0.0;
      }

      if (v37 == 0.0)
      {
        if (v39)
        {
          v41 = 1;
        }

        else
        {
          v41 = -1;
        }

        v42 = v40 + v32 * v39 * v41;
        if ((v39 & 1) != 0 && v32 + v42 > v36)
        {
          v37 = -1.0;
        }

        else if ((v39 & 1) == 0 && v42 < x)
        {
          v37 = 1.0;
        }

        else
        {
          v40 = v40 + v32 * v39 * v41;
        }
      }

      if (v37 == 0.0)
      {
        v38 = v40;
      }

      else
      {
        v38 = v40 + v32 * v37;
      }

      v29 = limitCopy - 1 == v39;
      v43 = [UIKBRenderGeometry geometryWithFrame:v38 paddedFrame:v34 - v33 * (v28 / limitCopy), v32, v33, v38, v34 - v33 * (v28 / limitCopy), v32, v33];
      [v43 setRoundRectCorners:{-[UIKBRenderGeometry roundRectCorners](self, "roundRectCorners")}];
      [v43 setRoundRectRadius:v31];
      [array addObject:v43];

      ++v28;
    }

    while (geometries != v28);
  }

  return array;
}

+ (id)sortedGeometries:(id)geometries leftToRight:(BOOL)right
{
  rightCopy = right;
  v5 = MEMORY[0x1E696AD98];
  geometriesCopy = geometries;
  v7 = [geometriesCopy sortedArrayUsingFunction:geometryPositionSort context:{objc_msgSend(v5, "numberWithBool:", rightCopy)}];

  return v7;
}

- (id)similarShape
{
  v3 = +[UIKBShape shape];
  [(UIKBRenderGeometry *)self frame];
  [v3 setFrame:?];
  [(UIKBRenderGeometry *)self paddedFrame];
  [v3 setPaddedFrame:?];

  return v3;
}

- (UIEdgeInsets)paddedInsets
{
  [(UIKBRenderGeometry *)self paddedFrame];
  v4 = v3;
  [(UIKBRenderGeometry *)self frame];
  v6 = v4 - v5;
  [(UIKBRenderGeometry *)self frame];
  v9 = v7 + v8;
  [(UIKBRenderGeometry *)self paddedFrame];
  v12 = v9 - (v10 + v11);
  [(UIKBRenderGeometry *)self paddedFrame];
  v14 = v13;
  [(UIKBRenderGeometry *)self frame];
  v16 = v14 - v15;
  [(UIKBRenderGeometry *)self frame];
  v19 = v17 + v18;
  [(UIKBRenderGeometry *)self paddedFrame];
  v22 = v19 - (v20 + v21);
  v23 = v6;
  v24 = v16;
  v25 = v12;
  result.right = v22;
  result.bottom = v25;
  result.left = v24;
  result.top = v23;
  return result;
}

- (void)setLayeredBackgroundPaddedFrame:(CGRect)frame
{
  v3 = *(MEMORY[0x1E695F050] + 16);
  self->_layeredBackgroundPaddedFrame.origin = *MEMORY[0x1E695F050];
  self->_layeredBackgroundPaddedFrame.size = v3;
}

- (void)setLayeredForegroundPaddedFrame:(CGRect)frame
{
  v3 = *(MEMORY[0x1E695F050] + 16);
  self->_layeredForegroundPaddedFrame.origin = *MEMORY[0x1E695F050];
  self->_layeredForegroundPaddedFrame.size = v3;
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)popupSource
{
  x = self->_popupSource.x;
  y = self->_popupSource.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGSize)concaveCornerOffset
{
  width = self->_concaveCornerOffset.width;
  height = self->_concaveCornerOffset.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)layoutMargins
{
  top = self->_layoutMargins.top;
  left = self->_layoutMargins.left;
  bottom = self->_layoutMargins.bottom;
  right = self->_layoutMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGRect)layeredBackgroundPaddedFrame
{
  x = self->_layeredBackgroundPaddedFrame.origin.x;
  y = self->_layeredBackgroundPaddedFrame.origin.y;
  width = self->_layeredBackgroundPaddedFrame.size.width;
  height = self->_layeredBackgroundPaddedFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)layeredForegroundPaddedFrame
{
  x = self->_layeredForegroundPaddedFrame.origin.x;
  y = self->_layeredForegroundPaddedFrame.origin.y;
  width = self->_layeredForegroundPaddedFrame.size.width;
  height = self->_layeredForegroundPaddedFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end