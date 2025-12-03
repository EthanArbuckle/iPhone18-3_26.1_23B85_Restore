@interface UIBezierPath
+ (UIBezierPath)bezierPath;
+ (UIBezierPath)bezierPathWithArcCenter:(CGPoint)center radius:(CGFloat)radius startAngle:(CGFloat)startAngle endAngle:(CGFloat)endAngle clockwise:(BOOL)clockwise;
+ (UIBezierPath)bezierPathWithCGPath:(CGPathRef)CGPath;
+ (UIBezierPath)bezierPathWithOvalInRect:(CGRect)rect;
+ (UIBezierPath)bezierPathWithRect:(CGRect)rect;
+ (id)_bezierPathWithPillRect:(CGRect)rect cornerRadius:(double)radius;
+ (id)_continuousRoundedCARectBezierPath:(CGRect)path withRoundedCorners:(unint64_t)corners cornerRadius:(CGSize)radius segments:(int)segments;
+ (id)_continuousRoundedRectBezierPath:(CGRect)path withRoundedCorners:(unint64_t)corners cornerRadii:(id)radii segments:(int)segments smoothPillShapes:(BOOL)shapes clampCornerRadii:(BOOL)cornerRadii;
+ (id)_continuousRoundedRectBezierPath:(CGRect)path withRoundedCorners:(unint64_t)corners cornerRadius:(CGSize)radius segments:(int)segments;
+ (id)_roundedRectBezierPath:(CGRect)path withRoundedCorners:(unint64_t)corners cornerRadius:(double)radius segments:(int)segments legacyCorners:(BOOL)legacyCorners;
+ (id)roundedRectBezierPath:(CGRect)path withRoundedEdges:(unint64_t)edges;
+ (id)roundedRectBezierPath:(CGRect)path withTopCornerRadius:(double)radius withBottomCornerRadius:(double)cornerRadius;
+ (id)shadowBezierPath:(CGRect)path withRoundedEdges:(unint64_t)edges;
- (BOOL)isEqual:(id)equal;
- (CGPath)_createMutablePathByDecodingData:(id)data;
- (CGPathRef)CGPath;
- (CGPoint)currentPoint;
- (UIBezierPath)bezierPathByReversingPath;
- (UIBezierPath)init;
- (UIBezierPath)initWithCoder:(NSCoder *)coder;
- (id)_bezierPathConvertedFromCoordinateSpace:(id)space toCoordinateSpace:(id)coordinateSpace;
- (id)_initWithCGMutablePath:(CGPath *)path;
- (id)_objcCodeDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_addRoundedCornerWithTrueCorner:(CGPoint)corner radius:(CGSize)radius corner:(unint64_t)a5 clockwise:(BOOL)clockwise leadInIsContinuous:(BOOL)continuous leadOutIsContinuous:(BOOL)isContinuous;
- (void)_invalidatePathMetadataIncludingCornerRadius:(BOOL)radius;
- (void)addClip;
- (void)appendBezierPath:(id)path;
- (void)appendBezierPathWithArcWithCenter:(CGPoint)center radius:(double)radius startAngle:(double)angle endAngle:(double)endAngle clockwise:(BOOL)clockwise;
- (void)appendBezierPathWithOvalInRect:(CGRect)rect;
- (void)appendBezierPathWithOvalInRect:(CGRect)rect transform:(CGAffineTransform *)transform;
- (void)appendBezierPathWithRect:(CGRect)rect;
- (void)appendPath:(UIBezierPath *)bezierPath;
- (void)applyTransform:(CGAffineTransform *)transform;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)fill;
- (void)fillWithBlendMode:(CGBlendMode)blendMode alpha:(CGFloat)alpha;
- (void)getLineDash:(CGFloat *)pattern count:(NSInteger *)count phase:(CGFloat *)phase;
- (void)removeAllPoints;
- (void)setCGPath:(CGPathRef)CGPath;
- (void)setLineDash:(const CGFloat *)pattern count:(NSInteger)count phase:(CGFloat)phase;
- (void)stroke;
- (void)strokeWithBlendMode:(CGBlendMode)blendMode alpha:(CGFloat)alpha;
@end

@implementation UIBezierPath

- (UIBezierPath)init
{
  v5.receiver = self;
  v5.super_class = UIBezierPath;
  v2 = [(UIBezierPath *)&v5 init];
  if (v2)
  {
    Mutable = CGPathCreateMutable();
    UIBezierPathCommonInit(v2, Mutable);
    CFRelease(Mutable);
  }

  return v2;
}

- (void)dealloc
{
  lineDashPattern = self->_lineDashPattern;
  if (lineDashPattern)
  {
    free(lineDashPattern);
  }

  path = self->_path;
  if (path)
  {
    CFRelease(path);
  }

  immutablePath = self->_immutablePath;
  if (immutablePath)
  {
    CGPathRelease(immutablePath);
  }

  v6.receiver = self;
  v6.super_class = UIBezierPath;
  [(UIBezierPath *)&v6 dealloc];
}

+ (UIBezierPath)bezierPath
{
  Mutable = CGPathCreateMutable();
  v4 = [[self alloc] _initWithCGMutablePath:Mutable];
  CFRelease(Mutable);

  return v4;
}

- (CGPathRef)CGPath
{
  immutablePathIsValid = self->_immutablePathIsValid;
  result = self->_immutablePath;
  if (!immutablePathIsValid)
  {
    CGPathRelease(result);
    result = CGPathCreateMutableCopy(self->_path);
    self->_immutablePath = result;
    self->_immutablePathIsValid = 1;
  }

  return result;
}

- (void)fill
{
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  CGContextSaveGState(v4);
  CGContextSetFlatness(v4, self->_flatness);
  CGContextAddPath(v4, self->_path);
  if (self->_usesEvenOddFillRule)
  {
    CGContextEOFillPath(v4);
  }

  else
  {
    CGContextFillPath(v4);
  }

  CGContextRestoreGState(v4);
}

- (void)addClip
{
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  CGContextAddPath(v4, self->_path);
  if (self->_usesEvenOddFillRule)
  {

    CGContextEOClip(v4);
  }

  else
  {

    CGContextClip(v4);
  }
}

- (UIBezierPath)bezierPathByReversingPath
{
  v18 = *MEMORY[0x1E69E9840];
  info = 0;
  CGPathApply(self->_path, &info, CountPathElements);
  if (info <= 1)
  {
    v3 = [(UIBezierPath *)self copy];
    goto LABEL_36;
  }

  v14 = 0;
  if (info < 0x41)
  {
    v4 = v17;
  }

  else
  {
    v4 = malloc_type_malloc(56 * info, 0x1000040577F94FBuLL);
  }

  v15 = v4;
  CGPathApply(self->_path, &v14, RecordPathElements);
  v3 = objc_alloc_init(objc_opt_class());
  v5 = v15;
  if (v14 >= 1)
  {
    v6 = &v15[56 * v14];
    v7 = v15 + 56;
    v8 = v15 - 56;
    do
    {
      v9 = v5;
      v5 = v7;
      if (v7 >= v6 || !*(v9 + 14))
      {
        v10 = *v9;
        if (*v9 == 4 || ([v3 moveToPoint:{v9[1], v9[2]}], (v10 = *v9) != 0))
        {
          v11 = 0;
          v12 = v8;
          do
          {
            if (v10 > 2)
            {
              if (v10 != 3)
              {
                if (v10 != 4)
                {
LABEL_28:
                  v10 = *v12;
                  goto LABEL_29;
                }

                [v3 moveToPoint:{v12[1], v12[2]}];
LABEL_27:
                v11 = 1;
                goto LABEL_28;
              }

              [v3 addCurveToPoint:v12[1] controlPoint1:v12[2] controlPoint2:{v12[12], v12[13], v12[10], v12[11]}];
              if ((v11 & 1) == 0)
              {
                goto LABEL_23;
              }
            }

            else if (v10 == 1)
            {
              [v3 addLineToPoint:{v12[1], v12[2]}];
              if ((v11 & 1) == 0)
              {
                goto LABEL_23;
              }
            }

            else
            {
              if (v10 != 2)
              {
                goto LABEL_28;
              }

              [v3 addQuadCurveToPoint:v12[1] controlPoint:{v12[2], v12[10], v12[11]}];
              if ((v11 & 1) == 0)
              {
LABEL_23:
                v11 = 0;
                goto LABEL_28;
              }
            }

            v10 = *v12;
            if (!*v12)
            {
              [v3 closePath];
              goto LABEL_27;
            }

            v11 = 1;
LABEL_29:
            v12 -= 7;
          }

          while (v10);
        }

        if (v5 < v6)
        {
          [v3 moveToPoint:{v9[8], v9[9]}];
        }
      }

      v7 = v5 + 56;
      v8 += 56;
    }

    while ((v5 + 56) <= v6);
    v5 = v15;
  }

  if (v5 != v17)
  {
    free(v5);
  }

LABEL_36:

  return v3;
}

- (CGPoint)currentPoint
{
  CurrentPoint = CGPathGetCurrentPoint(self->_path);
  y = CurrentPoint.y;
  x = CurrentPoint.x;
  result.y = y;
  result.x = x;
  return result;
}

- (void)stroke
{
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  CGContextSaveGState(v4);
  CGContextSetLineWidth(v4, self->_lineWidth);
  CGContextSetLineJoin(v4, self->_lineJoinStyle);
  CGContextSetLineCap(v4, self->_lineCapStyle);
  CGContextSetMiterLimit(v4, self->_miterLimit);
  CGContextSetFlatness(v4, self->_flatness);
  lineDashPatternCount = self->_lineDashPatternCount;
  if (lineDashPatternCount)
  {
    CGContextSetLineDash(v4, self->_lineDashPhase, self->_lineDashPattern, lineDashPatternCount);
  }

  CGContextAddPath(v4, self->_path);
  CGContextStrokePath(v4);

  CGContextRestoreGState(v4);
}

- (void)removeAllPoints
{
  CFRelease(self->_path);
  self->_path = CGPathCreateMutable();

  [(UIBezierPath *)self _invalidatePathMetadata];
}

- (id)_initWithCGMutablePath:(CGPath *)path
{
  v4 = [(UIBezierPath *)self init];
  v5 = v4;
  if (v4)
  {
    if (path)
    {
      path = v4->_path;
      if (path)
      {
        CFRelease(path);
      }

      v5->_path = CFRetain(path);
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"CGPath must be non-nil"];

      return 0;
    }
  }

  return v5;
}

- (UIBezierPath)initWithCoder:(NSCoder *)coder
{
  v5 = coder;
  if ([(NSCoder *)v5 allowsKeyedCoding])
  {
    v6 = [(NSCoder *)v5 decodeObjectOfClass:objc_opt_class() forKey:@"UIBezierPathCGPathDataKey"];
    if ([v6 length])
    {
      Mutable = [(UIBezierPath *)self _createMutablePathByDecodingData:v6];
      if (!Mutable)
      {

        self = 0;
LABEL_13:

        selfCopy = self;
        goto LABEL_14;
      }
    }

    else
    {
      Mutable = CGPathCreateMutable();
    }

    v9 = Mutable;
    UIBezierPathCommonInit(self, Mutable);
    CFRelease(v9);
    v10 = [(NSCoder *)v5 decodeIntegerForKey:@"UIBezierPathLineDashPatternCountKey"];
    self->_lineDashPatternCount = v10;
    if (v10)
    {
      v23 = 0;
      v11 = [(NSCoder *)v5 decodeBytesForKey:@"UIBezierPathLineDashPatternKey" returnedLength:&v23];
      lineDashPatternCount = self->_lineDashPatternCount;
      if (v23 != 4 * lineDashPatternCount)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"UIBezierPath.m" lineNumber:151 description:@"decoded line dash pattern length mismatch"];

        lineDashPatternCount = self->_lineDashPatternCount;
      }

      v13 = malloc_type_malloc(8 * lineDashPatternCount, 0x100004000313F17uLL);
      self->_lineDashPattern = v13;
      for (i = self->_lineDashPatternCount; i; --i)
      {
        v15 = *v11++;
        *v13++ = v15;
      }
    }

    [(NSCoder *)v5 decodeFloatForKey:@"UIBezierPathLineWidthKey"];
    self->_lineWidth = v16;
    [(NSCoder *)v5 decodeFloatForKey:@"UIBezierPathMiterLimitKey"];
    self->_miterLimit = v17;
    [(NSCoder *)v5 decodeFloatForKey:@"UIBezierPathFlatnessKey"];
    self->_flatness = v18;
    [(NSCoder *)v5 decodeFloatForKey:@"UIBezierPathLineDashPhaseKey"];
    self->_lineDashPhase = v19;
    self->_lineCapStyle = [(NSCoder *)v5 decodeIntegerForKey:@"UIBezierPathLineCapStyleKey"];
    self->_lineJoinStyle = [(NSCoder *)v5 decodeIntegerForKey:@"UIBezierPathLineJoinStyleKey"];
    self->_usesEvenOddFillRule = [(NSCoder *)v5 decodeBoolForKey:@"UIBezierPathUsesEvenOddFillRuleKey"];
    self->_isRoundedRect = [(NSCoder *)v5 decodeBoolForKey:@"UIBezierPathIsRoundedRectKey"];
    [(NSCoder *)v5 decodeFloatForKey:@"UIBezierPathCornerRadiusKey"];
    self->_cornerRadius = v20;
    self->_cornerMask = [(NSCoder *)v5 decodeIntegerForKey:@"UIBezierPathCornerMaskKey"];
    self->_hasContinuousCorners = [(NSCoder *)v5 decodeBoolForKey:@"UIBezierPathHasContinuousCornersKey"];
    self = self;
    goto LABEL_13;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E696A4C8] format:@"UIBezierPath only supports keyed coding."];
  selfCopy = 0;
LABEL_14:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  v18[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  if ([coderCopy allowsKeyedCoding])
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF88]);
    CGPathApply(self->_path, v5, __encodePathElementIntoData);
    [coderCopy encodeObject:v5 forKey:@"UIBezierPathCGPathDataKey"];
    [coderCopy encodeInteger:self->_lineDashPatternCount forKey:@"UIBezierPathLineDashPatternCountKey"];
    lineDashPatternCount = self->_lineDashPatternCount;
    if (lineDashPatternCount)
    {
      v7 = (v18 - ((4 * lineDashPatternCount + 15) & 0xFFFFFFFFFFFFFFF0));
      v8 = self->_lineDashPatternCount;
      if (v8)
      {
        lineDashPattern = self->_lineDashPattern;
        v10 = v7;
        do
        {
          v11 = *lineDashPattern++;
          v12 = v11;
          *v10++ = v12;
          --v8;
        }

        while (v8);
      }

      [coderCopy encodeBytes:? length:? forKey:?];
    }

    lineWidth = self->_lineWidth;
    *&lineWidth = lineWidth;
    [coderCopy encodeFloat:@"UIBezierPathLineWidthKey" forKey:lineWidth];
    miterLimit = self->_miterLimit;
    *&miterLimit = miterLimit;
    [coderCopy encodeFloat:@"UIBezierPathMiterLimitKey" forKey:miterLimit];
    flatness = self->_flatness;
    *&flatness = flatness;
    [coderCopy encodeFloat:@"UIBezierPathFlatnessKey" forKey:flatness];
    lineDashPhase = self->_lineDashPhase;
    *&lineDashPhase = lineDashPhase;
    [coderCopy encodeFloat:@"UIBezierPathLineDashPhaseKey" forKey:lineDashPhase];
    [coderCopy encodeInteger:self->_lineCapStyle forKey:@"UIBezierPathLineCapStyleKey"];
    [coderCopy encodeInteger:self->_lineJoinStyle forKey:@"UIBezierPathLineJoinStyleKey"];
    [coderCopy encodeBool:self->_usesEvenOddFillRule forKey:@"UIBezierPathUsesEvenOddFillRuleKey"];
    [coderCopy encodeBool:self->_isRoundedRect forKey:@"UIBezierPathIsRoundedRectKey"];
    cornerRadius = self->_cornerRadius;
    *&cornerRadius = cornerRadius;
    [coderCopy encodeFloat:@"UIBezierPathCornerRadiusKey" forKey:cornerRadius];
    [coderCopy encodeInteger:self->_cornerMask forKey:@"UIBezierPathCornerMaskKey"];
    [coderCopy encodeBool:self->_hasContinuousCorners forKey:@"UIBezierPathHasContinuousCornersKey"];
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E696A4B8] format:@"UIBezierPath only supports keyed coding."];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  MutableCopy = CGPathCreateMutableCopy(self->_path);
  v6 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "_initWithCGMutablePath:", MutableCopy}];
  CGPathRelease(MutableCopy);
  *(v6 + 32) = self->_lineWidth;
  *(v6 + 40) = self->_miterLimit;
  *(v6 + 48) = self->_flatness;
  *(v6 + 56) = self->_lineDashPhase;
  *(v6 + 24) = self->_lineDashPatternCount;
  *(v6 + 64) = self->_lineCapStyle;
  *(v6 + 68) = self->_lineJoinStyle;
  *(v6 + 72) = self->_usesEvenOddFillRule;
  *(v6 + 89) = self->_isRoundedRect;
  *(v6 + 96) = self->_cornerRadius;
  *(v6 + 104) = self->_hasContinuousCorners;
  *(v6 + 112) = self->_cornerMask;
  lineDashPatternCount = self->_lineDashPatternCount;
  if (lineDashPatternCount)
  {
    v8 = malloc_type_malloc(8 * lineDashPatternCount, 0x100004000313F17uLL);
    *(v6 + 16) = v8;
    memcpy(v8, self->_lineDashPattern, 8 * self->_lineDashPatternCount);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = CGPathEqualToPath([(UIBezierPath *)self CGPath], [(float64x2_t *)equalCopy CGPath]);
      lineDashPattern = self->_lineDashPattern;
      v7 = *&equalCopy[1].f64[0];
      if (lineDashPattern == v7)
      {
        LOBYTE(lineDashPatternCount) = 0;
      }

      else
      {
        lineDashPatternCount = self->_lineDashPatternCount;
        if (lineDashPatternCount == *&equalCopy[1].f64[1])
        {
          if (lineDashPatternCount)
          {
            v9 = lineDashPatternCount - 1;
            do
            {
              v10 = *lineDashPattern++;
              v11 = v10;
              v12 = *v7++;
              v13 = vabdd_f64(v11, v12);
              LOBYTE(lineDashPatternCount) = v13 > 0.00000011920929;
            }

            while (v13 <= 0.00000011920929 && v9-- != 0);
          }
        }

        else
        {
          LOBYTE(lineDashPatternCount) = 1;
        }
      }

      v15 = 0;
      v16 = vdupq_n_s64(0x3E80000000000000uLL);
      if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vcgtq_f64(v16, vabsq_f64(vsubq_f64(*&self->_lineWidth, equalCopy[2]))), vcgtq_f64(v16, vabsq_f64(vsubq_f64(*&self->_flatness, equalCopy[3]))))))) & 1) == 0 && self->_lineCapStyle == LODWORD(equalCopy[4].f64[0]) && (lineDashPatternCount & 1) == 0 && v5)
      {
        v15 = self->_usesEvenOddFillRule == LOBYTE(equalCopy[4].f64[1]) && self->_lineJoinStyle == HIDWORD(equalCopy[4].f64[0]);
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

+ (UIBezierPath)bezierPathWithRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  bezierPath = [self bezierPath];
  _mutablePath = [bezierPath _mutablePath];
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  CGPathAddRect(_mutablePath, 0, v11);
  *(bezierPath + 89) = 1;
  *(bezierPath + 112) = 15;

  return bezierPath;
}

+ (UIBezierPath)bezierPathWithOvalInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  bezierPath = [self bezierPath];
  _mutablePath = [bezierPath _mutablePath];
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  CGPathAddEllipseInRect(_mutablePath, 0, v12);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  v9 = CGRectGetWidth(v13);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  if (vabdd_f64(v9, CGRectGetHeight(v14)) <= 2.22044605e-16)
  {
    *(bezierPath + 89) = 1;
    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = width;
    v15.size.height = height;
    *(bezierPath + 96) = CGRectGetHeight(v15) * 0.5;
    *(bezierPath + 104) = 0;
    *(bezierPath + 112) = 15;
  }

  return bezierPath;
}

+ (UIBezierPath)bezierPathWithArcCenter:(CGPoint)center radius:(CGFloat)radius startAngle:(CGFloat)startAngle endAngle:(CGFloat)endAngle clockwise:(BOOL)clockwise
{
  y = center.y;
  x = center.x;
  Mutable = CGPathCreateMutable();
  CGPathAddArc(Mutable, 0, x, y, radius, startAngle, endAngle, !clockwise);
  v15 = [[self alloc] _initWithCGMutablePath:Mutable];
  CFRelease(Mutable);

  return v15;
}

+ (UIBezierPath)bezierPathWithCGPath:(CGPathRef)CGPath
{
  if (CGPath)
  {
    MutableCopy = CGPathCreateMutableCopy(CGPath);
    v5 = [[self alloc] _initWithCGMutablePath:MutableCopy];
    CFRelease(MutableCopy);
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"CGPath must be non-nil"];
    v5 = 0;
  }

  return v5;
}

- (void)appendPath:(UIBezierPath *)bezierPath
{
  CGPathAddPath(self->_path, 0, [(UIBezierPath *)bezierPath _mutablePath]);

  [(UIBezierPath *)self _invalidatePathMetadata];
}

- (void)applyTransform:(CGAffineTransform *)transform
{
  Mutable = CGPathCreateMutable();
  CGPathAddPath(Mutable, transform, self->_path);
  CFRelease(self->_path);
  self->_path = Mutable;
  v6 = *&transform->c;
  *&v11.a = *&transform->a;
  *&v11.c = v6;
  *&v11.tx = *&transform->tx;
  memset(&v12, 0, sizeof(v12));
  CGAffineTransformDecompose(&v12, &v11);
  rotation = v12.rotation;
  v9 = 1;
  if (v12.rotation == 0.0)
  {
    width = v12.scale.width;
    rotation = 1.0;
    if (v12.horizontalShear == 0.0 && v12.scale.width == 1.0)
    {
      width = v12.scale.height;
      v9 = v12.scale.height != 1.0;
    }
  }

  [(UIBezierPath *)self _invalidatePathMetadataIncludingCornerRadius:v9, rotation, width];
}

- (void)_invalidatePathMetadataIncludingCornerRadius:(BOOL)radius
{
  self->_immutablePathIsValid = 0;
  if (radius)
  {
    self->_isRoundedRect = 0;
    self->_cornerRadius = 0.0;
    self->_hasContinuousCorners = 0;
    self->_cornerMask = 0;
  }
}

- (void)setCGPath:(CGPathRef)CGPath
{
  if (CGPath)
  {
    CFRelease(self->_path);
    self->_path = CGPathCreateMutableCopy(CGPath);

    [(UIBezierPath *)self _invalidatePathMetadata];
  }

  else
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];

    [v6 raise:v7 format:@"CGPath must be non-nil"];
  }
}

- (void)setLineDash:(const CGFloat *)pattern count:(NSInteger)count phase:(CGFloat)phase
{
  lineDashPattern = self->_lineDashPattern;
  if (lineDashPattern)
  {
    free(lineDashPattern);
  }

  if (pattern && count > 0)
  {
    v10 = malloc_type_malloc(8 * count, 0x100004000313F17uLL);
    self->_lineDashPattern = v10;
    memcpy(v10, pattern, 8 * count);
  }

  else
  {
    count = 0;
    self->_lineDashPattern = 0;
    phase = 0.0;
  }

  self->_lineDashPatternCount = count;
  self->_lineDashPhase = phase;
}

- (void)getLineDash:(CGFloat *)pattern count:(NSInteger *)count phase:(CGFloat *)phase
{
  if (count)
  {
    *count = self->_lineDashPatternCount;
  }

  if (phase)
  {
    *phase = self->_lineDashPhase;
  }

  if (pattern)
  {
    lineDashPattern = self->_lineDashPattern;
    if (lineDashPattern)
    {
      for (i = self->_lineDashPatternCount; i; --i)
      {
        v7 = *lineDashPattern++;
        *pattern++ = v7;
      }
    }
  }
}

- (void)fillWithBlendMode:(CGBlendMode)blendMode alpha:(CGFloat)alpha
{
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  CGContextSaveGState(v8);
  CGContextSetBlendMode(v8, blendMode);
  CGContextSetAlpha(v8, alpha);
  CGContextSetFlatness(v8, self->_flatness);
  CGContextAddPath(v8, self->_path);
  if (self->_usesEvenOddFillRule)
  {
    CGContextEOFillPath(v8);
  }

  else
  {
    CGContextFillPath(v8);
  }

  CGContextRestoreGState(v8);
}

- (void)strokeWithBlendMode:(CGBlendMode)blendMode alpha:(CGFloat)alpha
{
  ContextStack = GetContextStack(0);
  if (*ContextStack < 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = ContextStack[3 * (*ContextStack - 1) + 1];
  }

  CGContextSaveGState(v8);
  CGContextSetBlendMode(v8, blendMode);
  CGContextSetAlpha(v8, alpha);
  CGContextSetLineWidth(v8, self->_lineWidth);
  CGContextSetLineJoin(v8, self->_lineJoinStyle);
  CGContextSetLineCap(v8, self->_lineCapStyle);
  CGContextSetMiterLimit(v8, self->_miterLimit);
  CGContextSetFlatness(v8, self->_flatness);
  lineDashPatternCount = self->_lineDashPatternCount;
  if (lineDashPatternCount)
  {
    CGContextSetLineDash(v8, self->_lineDashPhase, self->_lineDashPattern, lineDashPatternCount);
  }

  CGContextAddPath(v8, self->_path);
  CGContextStrokePath(v8);

  CGContextRestoreGState(v8);
}

+ (id)roundedRectBezierPath:(CGRect)path withTopCornerRadius:(double)radius withBottomCornerRadius:(double)cornerRadius
{
  height = path.size.height;
  width = path.size.width;
  y = path.origin.y;
  x = path.origin.x;
  v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:4];
  for (i = 0; i != 4; ++i)
  {
    if (i >= 2)
    {
      radiusCopy = cornerRadius;
    }

    else
    {
      radiusCopy = radius;
    }

    v15 = [MEMORY[0x1E696B098] valueWithCGSize:{radiusCopy, radiusCopy}];
    [v12 addObject:v15];
  }

  v16 = [self roundedRectBezierPath:-1 withRoundedCorners:v12 withCornerRadii:{x, y, width, height}];

  return v16;
}

- (CGPath)_createMutablePathByDecodingData:(id)data
{
  v28 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v6 = [dataCopy length];
  if (v6)
  {
    v7 = v6;
    Mutable = CGPathCreateMutable();
    bytes = [dataCopy bytes];
    v10 = 0;
    v24 = *MEMORY[0x1E695EFF8];
    do
    {
      v12 = *(bytes + v10);
      v11 = *(bytes + v10 + 4);
      v25 = v24;
      v26 = v24;
      v27 = v24;
      if (v12 > 3)
      {
        v13 = 0;
      }

      else
      {
        v13 = dword_18A67BDD0[v12];
      }

      v14 = v10 + 8;
      if (v11)
      {
        v15 = v11 == v13;
      }

      else
      {
        v15 = 0;
      }

      if (v15)
      {
        v16 = &v25;
        v17 = v11;
        do
        {
          v10 = v14 + 8;
          *v16++ = vcvtq_f64_f32(*(bytes + v14));
          v14 += 8;
          --v17;
        }

        while (v17);
      }

      else
      {
        v10 += 8;
      }

      if (v12 <= 1)
      {
        if (v12)
        {
          if (v12 == 1)
          {
            if (v11 != v13)
            {
              currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
              [currentHandler handleFailureInMethod:a2 object:self file:@"UIBezierPath.m" lineNumber:857 description:@"incorrect number of points for path element type kCGPathElementAddLineToPoint"];
            }

            CGPathAddLineToPoint(Mutable, 0, *&v25, *(&v25 + 1));
          }
        }

        else
        {
          if (v11 != v13)
          {
            currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIBezierPath.m" lineNumber:853 description:@"incorrect number of points for path element type kCGPathElementMoveToPoint"];
          }

          CGPathMoveToPoint(Mutable, 0, *&v25, *(&v25 + 1));
        }
      }

      else
      {
        switch(v12)
        {
          case 2:
            if (v11 != v13)
            {
              currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
              [currentHandler3 handleFailureInMethod:a2 object:self file:@"UIBezierPath.m" lineNumber:861 description:@"incorrect number of points for path element type kCGPathElementAddQuadCurveToPoint"];
            }

            CGPathAddQuadCurveToPoint(Mutable, 0, *&v25, *(&v25 + 1), *&v26, *(&v26 + 1));
            break;
          case 3:
            if (v11 != v13)
            {
              currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
              [currentHandler4 handleFailureInMethod:a2 object:self file:@"UIBezierPath.m" lineNumber:865 description:@"incorrect number of points for path element type kCGPathElementAddCurveToPoint"];
            }

            CGPathAddCurveToPoint(Mutable, 0, *&v25, *(&v25 + 1), *&v26, *(&v26 + 1), *&v27, *(&v27 + 1));
            break;
          case 4:
            if (v11 != v13)
            {
              currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
              [currentHandler5 handleFailureInMethod:a2 object:self file:@"UIBezierPath.m" lineNumber:869 description:@"incorrect number of points for path element type kCGPathElementCloseSubpath"];
            }

            CGPathCloseSubpath(Mutable);
            break;
        }
      }
    }

    while (v10 < v7);
  }

  else
  {
    Mutable = 0;
  }

  return Mutable;
}

- (void)_addRoundedCornerWithTrueCorner:(CGPoint)corner radius:(CGSize)radius corner:(unint64_t)a5 clockwise:(BOOL)clockwise leadInIsContinuous:(BOOL)continuous leadOutIsContinuous:(BOOL)isContinuous
{
  isContinuousCopy = continuous;
  if (!clockwise)
  {
    if (a5 != 1 && a5 != 8)
    {
      goto LABEL_8;
    }

LABEL_7:
    isContinuousCopy2 = continuous;
    isContinuousCopy = isContinuous;
    goto LABEL_9;
  }

  if (a5 == 2 || a5 == 4)
  {
    goto LABEL_7;
  }

LABEL_8:
  isContinuousCopy2 = isContinuous;
LABEL_9:
  if (isContinuousCopy2)
  {
    radius.width = radius.width * 1.528665;
  }

  if (isContinuousCopy)
  {
    radius.height = radius.height * 1.528665;
  }

  if (isContinuous)
  {
    continuousCopy3 = continuous | 2;
  }

  else
  {
    continuousCopy3 = continuous;
  }

  _addContinuousCornerToPath(self->_path, a5, continuousCopy3, clockwise, 0, corner.x, corner.y, radius.width, radius.height);
  self->_immutablePathIsValid = 0;
}

- (id)description
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p", objc_opt_class(), self];;
  info = 0;
  CGPathApply([(UIBezierPath *)self CGPath], &info, CountPathElements);
  v19 = 0;
  if (info < 65)
  {
    v4 = &v22;
  }

  else
  {
    v4 = malloc_type_malloc(56 * info, 0x1000040577F94FBuLL);
  }

  v20 = v4;
  CGPathApply([(UIBezierPath *)self CGPath], &v19, RecordPathElements);
  if (v19 >= 1)
  {
    v5 = 0;
    v6 = 48;
    while (1)
    {
      [v3 appendString:@" <"];
      v7 = *&v20[v6 - 48];
      if (v7 <= 1)
      {
        break;
      }

      if (v7 == 2)
      {
        v10 = NSStringFromCGPoint(*&v20[v6 - 40]);
        v11 = NSStringFromCGPoint(*&v20[v6 - 24]);
        [v3 appendFormat:@"QuadCurveTo %@ - %@", v10, v11];

LABEL_17:
        goto LABEL_20;
      }

      if (v7 != 3)
      {
        if (v7 == 4)
        {
          v8 = v3;
          v9 = @"Close";
        }

        else
        {
LABEL_18:
          v18 = *&v20[v6 - 48];
          v8 = v3;
          v9 = @"Unknown %d";
        }

        [v8 appendFormat:v9, v18];
        goto LABEL_20;
      }

      v12 = NSStringFromCGPoint(*&v20[v6 - 40]);
      v13 = NSStringFromCGPoint(*&v20[v6 - 24]);
      v14 = NSStringFromCGPoint(*&v20[v6 - 8]);
      [v3 appendFormat:@"CurveTo %@ %@ %@", v12, v13, v14];

LABEL_20:
      ++v5;
      v15 = v19;
      if (v19 > v5)
      {
        [v3 appendString:{@">, \n"}];
        v15 = v19;
      }

      v6 += 56;
      if (v15 <= v5)
      {
        goto LABEL_23;
      }
    }

    if (v7)
    {
      if (v7 != 1)
      {
        goto LABEL_18;
      }

      v10 = NSStringFromCGPoint(*&v20[v6 - 40]);
      [v3 appendFormat:@"LineTo %@", v10];
    }

    else
    {
      v10 = NSStringFromCGPoint(*&v20[v6 - 40]);
      [v3 appendFormat:@"MoveTo %@", v10];
    }

    goto LABEL_17;
  }

LABEL_23:
  [v3 appendString:@">"];
  v16 = [v3 copy];

  return v16;
}

- (id)_objcCodeDescription
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] stringWithString:@"UIBezierPath *path = [UIBezierPath new]\n"];;
  info = 0;
  CGPathApply([(UIBezierPath *)self CGPath], &info, CountPathElements);
  v17 = 0;
  if (info < 65)
  {
    v4 = &v20;
  }

  else
  {
    v4 = malloc_type_malloc(56 * info, 0x1000040577F94FBuLL);
  }

  v18 = v4;
  CGPathApply([(UIBezierPath *)self CGPath], &v17, RecordPathElements);
  if (v17 >= 1)
  {
    v5 = 0;
    v6 = 48;
    do
    {
      [v3 appendString:@"["];
      v7 = *&v18[v6 - 48];
      if (v7 <= 1)
      {
        if (v7)
        {
          if (v7 != 1)
          {
            goto LABEL_19;
          }

          v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CGPointMake(%f, %f)", *&v18[v6 - 40], *&v18[v6 - 32]];
          [v3 appendFormat:@"path addLineToPoint:%@", v10];
        }

        else
        {
          v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CGPointMake(%f, %f)", *&v18[v6 - 40], *&v18[v6 - 32]];
          [v3 appendFormat:@"path moveToPoint:%@", v10];
        }
      }

      else
      {
        if (v7 == 2)
        {
          v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CGPointMake(%f, %f)", *&v18[v6 - 40], *&v18[v6 - 32]];
          v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CGPointMake(%f, %f)", *&v18[v6 - 24], *&v18[v6 - 16]];
          [v3 appendFormat:@"path addQuadCurveToPoint:%@ controlPoint:%@", v10, v11];
        }

        else
        {
          if (v7 != 3)
          {
            if (v7 == 4)
            {
              v8 = v3;
              v9 = @"path closePath];";
            }

            else
            {
LABEL_19:
              v16 = *&v18[v6 - 48];
              v8 = v3;
              v9 = @"Unknown %d";
            }

            [v8 appendFormat:v9, v16];
            goto LABEL_21;
          }

          v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CGPointMake(%f, %f)", *&v18[v6 - 40], *&v18[v6 - 32]];
          v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CGPointMake(%f, %f)", *&v18[v6 - 24], *&v18[v6 - 16]];
          v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CGPointMake(%f, %f)", *&v18[v6 - 8], *&v18[v6]];
          [v3 appendFormat:@"path addCurveToPoint:%@ controlPoint1:%@ controlPoint2:%@", v10, v11, v12];
        }
      }

LABEL_21:
      ++v5;
      v13 = v17;
      if (v17 > v5)
      {
        [v3 appendString:@"];\n"];
        v13 = v17;
      }

      v6 += 56;
    }

    while (v13 > v5);
  }

  v14 = [v3 copy];

  return v14;
}

- (void)appendBezierPath:(id)path
{
  CGPathAddPath(self->_path, 0, [path _mutablePath]);

  [(UIBezierPath *)self _invalidatePathMetadata];
}

- (void)appendBezierPathWithRect:(CGRect)rect
{
  CGPathAddRect(self->_path, 0, rect);

  [(UIBezierPath *)self _invalidatePathMetadata];
}

- (void)appendBezierPathWithOvalInRect:(CGRect)rect
{
  CGPathAddEllipseInRect(self->_path, 0, rect);

  [(UIBezierPath *)self _invalidatePathMetadata];
}

- (void)appendBezierPathWithOvalInRect:(CGRect)rect transform:(CGAffineTransform *)transform
{
  CGPathAddEllipseInRect(self->_path, transform, rect);

  [(UIBezierPath *)self _invalidatePathMetadata];
}

- (void)appendBezierPathWithArcWithCenter:(CGPoint)center radius:(double)radius startAngle:(double)angle endAngle:(double)endAngle clockwise:(BOOL)clockwise
{
  CGPathAddArc(self->_path, 0, center.x, center.y, radius, angle, endAngle, !clockwise);

  [(UIBezierPath *)self _invalidatePathMetadata];
}

+ (id)roundedRectBezierPath:(CGRect)path withRoundedEdges:(unint64_t)edges
{
  v4 = ((edges << 62) >> 63) & 5;
  if ((edges & 8) != 0)
  {
    v4 |= 0xAuLL;
  }

  if (edges)
  {
    v4 |= 3uLL;
  }

  if ((edges & 4) != 0)
  {
    v5 = v4 | 0xC;
  }

  else
  {
    v5 = v4;
  }

  return [UIBezierPath _continuousRoundedRectBezierPath:v5 withRoundedCorners:16 cornerRadius:path.origin.x segments:path.origin.y, path.size.width, path.size.height, path.size.height * 0.5, path.size.width * 0.5];
}

+ (id)_roundedRectBezierPath:(CGRect)path withRoundedCorners:(unint64_t)corners cornerRadius:(double)radius segments:(int)segments legacyCorners:(BOOL)legacyCorners
{
  radiusCopy = radius;
  cornersCopy = corners;
  height = path.size.height;
  width = path.size.width;
  v12 = path.origin.y;
  x = path.origin.x;
  if (legacyCorners)
  {
    if ((~corners & 5) == 0 || (corners & 0xA) == 0xA)
    {
      v15 = CGRectGetHeight(path) * 0.5;
      if (v15 <= radiusCopy)
      {
        radiusCopy = v15;
      }
    }

    if ((~cornersCopy & 3) == 0 || (cornersCopy & 0xC) == 0xCLL)
    {
      v44.origin.x = x;
      v44.origin.y = v12;
      v44.size.width = width;
      v44.size.height = height;
      v16 = CGRectGetWidth(v44) * 0.5;
      if (radiusCopy >= v16)
      {
        radiusCopy = v16;
      }
    }

    v45.origin.x = x;
    v45.origin.y = v12;
    v45.size.width = width;
    v45.size.height = height;
    v17 = CGRectGetWidth(v45);
    v46.origin.x = x;
    v46.origin.y = v12;
    v46.size.width = width;
    v46.size.height = height;
    v18 = CGRectGetHeight(v46);
    if (v17 < v18)
    {
      v18 = v17;
    }

    if (radiusCopy >= v18)
    {
      radiusCopy = v18;
    }

    Mutable = CGPathCreateMutable();
    v20 = Mutable;
    if ((segments & 0x10) != 0)
    {
      v21 = 1;
    }

    else if ((~segments & 0xD) != 0)
    {
      v21 = 0;
    }

    else
    {
      v21 = (segments >> 1) & 1;
    }

    if ((segments & 4) != 0)
    {
      v23 = 0;
    }

    else
    {
      v23 = v21 ^ 1;
    }

    v24 = 0.0;
    if (cornersCopy)
    {
      v25 = radiusCopy;
    }

    else
    {
      v25 = 0.0;
    }

    if (segments)
    {
      v26 = 0;
    }

    else
    {
      v26 = v21 ^ 1;
    }

    v38 = v25;
    if ((((segments & 1) == 0) & v23) != 0)
    {
      v25 = 0.0;
    }

    v42 = v25;
    if ((cornersCopy & 2) != 0)
    {
      v27 = radiusCopy;
    }

    else
    {
      v27 = 0.0;
    }

    if ((segments & 8) != 0)
    {
      v28 = 0;
    }

    else
    {
      v28 = v21 ^ 1;
    }

    if ((((segments & 8) == 0) & v26) != 0)
    {
      v29 = 0.0;
    }

    else
    {
      v29 = v27;
    }

    if ((cornersCopy & 8) != 0)
    {
      v30 = radiusCopy;
    }

    else
    {
      v30 = 0.0;
    }

    if ((segments & 2) != 0)
    {
      v31 = 0;
    }

    else
    {
      v31 = v21 ^ 1;
    }

    if ((((segments & 2) == 0) & v28) != 0)
    {
      v32 = 0.0;
    }

    else
    {
      v32 = v30;
    }

    if ((cornersCopy & 4) != 0)
    {
      v33 = radiusCopy;
    }

    else
    {
      v33 = 0.0;
    }

    v37 = v33;
    if ((((segments & 4) == 0) & v31) == 0)
    {
      v24 = v33;
    }

    v39 = v24;
    v40 = v32;
    if ((v26 & 1) == 0)
    {
      CGPathMoveToPoint(Mutable, 0, x + v42, v12);
      CGPathAddLineToPoint(v20, 0, x + width - v27, v12);
    }

    y = v12 + radiusCopy;
    if (v29 > 0.0)
    {
      if ((v21 & 1) == 0)
      {
        CGPathMoveToPoint(v20, 0, x + width - radiusCopy, v12);
      }

      CGPathAddArc(v20, 0, x + width - radiusCopy, y, radiusCopy, 4.71238898, 6.28318531, 0);
    }

    if ((v28 & 1) == 0)
    {
      if ((v21 & 1) == 0)
      {
        CGPathMoveToPoint(v20, 0, x + width, v12 + v29);
      }

      CGPathAddLineToPoint(v20, 0, x + width, v12 + height - v30);
    }

    if (v40 > 0.0)
    {
      if ((v21 & 1) == 0)
      {
        CGPathMoveToPoint(v20, 0, x + width - radiusCopy, v12 + height);
      }

      CGPathAddArc(v20, 0, x + width - radiusCopy, v12 + height - radiusCopy, radiusCopy, 0.0, 1.57079633, 0);
    }

    if ((v31 & 1) == 0)
    {
      if (v21)
      {
        v34 = v12 + height;
      }

      else
      {
        v35 = x + width - v40;
        v34 = v12 + height;
        CGPathMoveToPoint(v20, 0, v35, v12 + height);
      }

      CGPathAddLineToPoint(v20, 0, x + v37, v34);
    }

    if (v39 > 0.0)
    {
      if ((v21 & 1) == 0)
      {
        CGPathMoveToPoint(v20, 0, x + radiusCopy, v12 + height);
      }

      CGPathAddArc(v20, 0, x + radiusCopy, v12 + height - radiusCopy, radiusCopy, 1.57079633, 3.14159265, 0);
    }

    if ((v23 & 1) == 0)
    {
      if ((v21 & 1) == 0)
      {
        CGPathMoveToPoint(v20, 0, x, v12 + height - v39);
      }

      CGPathAddLineToPoint(v20, 0, x, v12 + v38);
    }

    if (v42 > 0.0)
    {
      if ((v21 & 1) == 0)
      {
        CGPathMoveToPoint(v20, 0, x, y);
      }

      CGPathAddArc(v20, 0, x + radiusCopy, y, radiusCopy, 3.14159265, 4.71238898, 0);
    }

    v22 = [[self alloc] _initWithCGMutablePath:v20];
    CFRelease(v20);
    *(v22 + 89) = 1;
    *(v22 + 96) = radiusCopy;
    *(v22 + 104) = 0;
    *(v22 + 112) = cornersCopy & 0xF;
  }

  else
  {
    v22 = [self _continuousRoundedRectBezierPath:corners withRoundedCorners:*&segments cornerRadius:path.origin.x segments:{path.origin.y, path.size.width, path.size.height, radius, radius}];
  }

  return v22;
}

+ (id)_bezierPathWithPillRect:(CGRect)rect cornerRadius:(double)radius
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v13[4] = *MEMORY[0x1E69E9840];
  v9 = [MEMORY[0x1E696B098] valueWithCGSize:{radius, radius}];
  v13[0] = v9;
  v13[1] = v9;
  v13[2] = v9;
  v13[3] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:4];
  v11 = [self _continuousRoundedRectBezierPath:-1 withRoundedCorners:v10 cornerRadii:16 segments:1 smoothPillShapes:1 clampCornerRadii:{x, y, width, height}];

  return v11;
}

+ (id)_continuousRoundedRectBezierPath:(CGRect)path withRoundedCorners:(unint64_t)corners cornerRadius:(CGSize)radius segments:(int)segments
{
  v6 = *&segments;
  height = path.size.height;
  width = path.size.width;
  y = path.origin.y;
  x = path.origin.x;
  v17[4] = *MEMORY[0x1E69E9840];
  v13 = [MEMORY[0x1E696B098] valueWithCGSize:{radius.width, radius.height}];
  v17[0] = v13;
  v17[1] = v13;
  v17[2] = v13;
  v17[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:4];
  v15 = [self _continuousRoundedRectBezierPath:corners withRoundedCorners:v14 cornerRadii:v6 segments:0 smoothPillShapes:1 clampCornerRadii:{x, y, width, height}];

  return v15;
}

+ (id)_continuousRoundedCARectBezierPath:(CGRect)path withRoundedCorners:(unint64_t)corners cornerRadius:(CGSize)radius segments:(int)segments
{
  v6 = *&segments;
  height = path.size.height;
  width = path.size.width;
  y = path.origin.y;
  x = path.origin.x;
  v17[4] = *MEMORY[0x1E69E9840];
  v13 = [MEMORY[0x1E696B098] valueWithCGSize:{radius.width, radius.height}];
  v17[0] = v13;
  v17[1] = v13;
  v17[2] = v13;
  v17[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:4];
  v15 = [self _continuousRoundedRectBezierPath:corners withRoundedCorners:v14 cornerRadii:v6 segments:0 smoothPillShapes:0 clampCornerRadii:{x, y, width, height}];

  return v15;
}

+ (id)_continuousRoundedRectBezierPath:(CGRect)path withRoundedCorners:(unint64_t)corners cornerRadii:(id)radii segments:(int)segments smoothPillShapes:(BOOL)shapes clampCornerRadii:(BOOL)cornerRadii
{
  cornerRadiiCopy = cornerRadii;
  x = shapes;
  height = path.size.height;
  width = path.size.width;
  y = path.origin.y;
  v13 = path.origin.x;
  radiiCopy = radii;
  Mutable = CGPathCreateMutable();
  v16 = (segments >> 1) & 1;
  if ((~segments & 0xD) != 0)
  {
    v16 = 0;
  }

  if ((segments & 0x10) != 0)
  {
    v17 = 1;
  }

  else
  {
    v17 = v16;
  }

  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v18 = _UIInternalPreferencesRevisionVar;
  v96 = v17;
  if (_UIInternalPreferencesRevisionVar < 1)
  {
    goto LABEL_9;
  }

  v67 = _UIInternalPreference_EnableCGPathContinuousRoundedRect;
  if (_UIInternalPreferencesRevisionVar == _UIInternalPreference_EnableCGPathContinuousRoundedRect)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v68 = v13;
    if (v18 < v67)
    {
      break;
    }

    _UIInternalPreferenceSync(v18, &_UIInternalPreference_EnableCGPathContinuousRoundedRect, @"EnableCGPathContinuousRoundedRect", _UIInternalPreferenceUpdateBool);
    v67 = _UIInternalPreference_EnableCGPathContinuousRoundedRect;
    v17 = v96;
    if (v18 == _UIInternalPreference_EnableCGPathContinuousRoundedRect)
    {
      goto LABEL_9;
    }
  }

  v17 = v96;
  if (!byte_1ED48B1B4)
  {
    goto LABEL_9;
  }

  v69 = [radiiCopy objectAtIndex:0];
  [v69 CGSizeValue];
  v71 = v70;

  v72 = [radiiCopy objectAtIndex:0];
  [v72 CGSizeValue];
  v74 = v73;

  v75 = v96 ^ 1;
  if (corners != -1)
  {
    v75 = 1;
  }

  if ((v75 & 1) != 0 || v71 != v74)
  {
LABEL_9:
    v19 = v17 ^ 1;
    if ((segments & 4) != 0)
    {
      v20 = 0;
    }

    else
    {
      v20 = v17 ^ 1;
    }

    v94 = v20;
    if (segments)
    {
      v20 = 0;
    }

    v21 = MEMORY[0x1E695F060];
    if ((corners & 1) == 0 || v20)
    {
      v24 = *MEMORY[0x1E695F060];
      v27 = *(MEMORY[0x1E695F060] + 8);
    }

    else
    {
      v22 = [radiiCopy objectAtIndex:0];
      [v22 CGSizeValue];
      v24 = v23 * 1.528665;
      v25 = [radiiCopy objectAtIndex:0];
      [v25 CGSizeValue];
      v27 = v26 * 1.528665;
    }

    if (segments)
    {
      v28 = 0;
    }

    else
    {
      v28 = v17 ^ 1;
    }

    if ((segments & 8) != 0)
    {
      v29 = 0;
    }

    else
    {
      v29 = v28;
    }

    if ((corners & 2) == 0 || v29)
    {
      v106 = *v21;
      v102 = v21[1];
    }

    else
    {
      v30 = [radiiCopy objectAtIndex:1];
      [v30 CGSizeValue];
      v106 = v31 * 1.528665;
      v32 = [radiiCopy objectAtIndex:1];
      [v32 CGSizeValue];
      v102 = v33 * 1.528665;
    }

    if ((segments & 8) != 0)
    {
      v34 = 0;
    }

    else
    {
      v34 = v19;
    }

    if ((segments & 2) != 0)
    {
      v35 = 0;
    }

    else
    {
      v35 = v34;
    }

    if ((corners & 8) == 0 || v35)
    {
      v104 = v21[1];
      v105 = *v21;
    }

    else
    {
      v36 = [radiiCopy objectAtIndex:3];
      [v36 CGSizeValue];
      v105 = v37 * 1.528665;
      v38 = [radiiCopy objectAtIndex:3];
      [v38 CGSizeValue];
      v104 = v39 * 1.528665;
    }

    if ((segments & 2) != 0)
    {
      v19 = 0;
    }

    if ((segments & 4) != 0)
    {
      v40 = 0;
    }

    else
    {
      v40 = v19;
    }

    if ((corners & 4) == 0 || v40)
    {
      v107 = *v21;
      v103 = v21[1];
      if (!cornerRadiiCopy)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v41 = [radiiCopy objectAtIndex:2];
      [v41 CGSizeValue];
      v107 = v42 * 1.528665;
      v43 = [radiiCopy objectAtIndex:2];
      [v43 CGSizeValue];
      v103 = v44 * 1.528665;

      if (!cornerRadiiCopy)
      {
LABEL_46:
        v97 = v27;
        v45 = 0;
        v46 = 0;
        v47 = 3;
        v48 = 3;
        v49 = 3;
        v50 = 3;
        goto LABEL_58;
      }
    }

    v45 = v24 + v106 >= width;
    if (v24 + v106 < width)
    {
      v47 = 3;
      v48 = 3;
    }

    else
    {
      v24 = width * 0.5;
      v48 = 2;
      v47 = 1;
      v106 = width * 0.5;
    }

    if (v105 + v107 >= width)
    {
      v49 = 1;
      v50 = 2;
      v105 = width * 0.5;
      v107 = width * 0.5;
      v45 = 1;
    }

    else
    {
      v49 = 3;
      v50 = 3;
    }

    v46 = v27 + v103 >= height;
    if (v27 + v103 >= height)
    {
      v27 = height * 0.5;
      v47 &= 2u;
      v50 &= 1u;
      v103 = height * 0.5;
    }

    v97 = v27;
    if (v102 + v104 >= height)
    {
      v48 &= 1u;
      v49 &= 2u;
      v46 = 1;
      v102 = height * 0.5;
      v104 = height * 0.5;
    }

LABEL_58:
    v93 = v47;
    v51 = v48 | v47 | v49 | v50;
    v52 = x;
    if (!v51)
    {
      v52 = 0;
    }

    v53 = v13 + width;
    v54 = y + height;
    v100 = v24;
    if (v45 && v52)
    {
      xa = v13 + v107 * 0.05;
      v55 = v13 + v24 * 0.05;
      v56 = v53 - v105 * 0.05;
      v53 = v53 - v106 * 0.05;
      v101 = v55;
      v57 = y;
      v58 = y;
    }

    else
    {
      v101 = v13;
      if (v46 && v52)
      {
        v58 = y + v102 * 0.05;
        v57 = y + v97 * 0.05;
        v59 = v54 - v104 * 0.05;
        v54 = v54 - v103 * 0.05;
        xa = v13;
        v56 = v53;
        if (v28)
        {
LABEL_69:
          v60 = *v21;
          v61 = v21[1];
          if (v106 != *v21 || v102 != v61)
          {
            if ((v96 & 1) == 0)
            {
              CGPathMoveToPoint(Mutable, 0, v53 - v106, v58);
            }

            _addContinuousCornerToPath(Mutable, 2, v48, 0, v51 == 0, v53, v58, v106, v102);
          }

          if ((v34 & 1) == 0)
          {
            if ((v96 & 1) == 0)
            {
              CGPathMoveToPoint(Mutable, 0, v53, v102 + v58);
            }

            CGPathAddLineToPoint(Mutable, 0, v56, v59 - v104);
          }

          if (v105 != v60 || v104 != v61)
          {
            if ((v96 & 1) == 0)
            {
              CGPathMoveToPoint(Mutable, 0, v56 - v105, v59);
            }

            _addContinuousCornerToPath(Mutable, 8, v49, 0, v51 == 0, v56, v59, v105, v104);
          }

          if ((v19 & 1) == 0)
          {
            if ((v96 & 1) == 0)
            {
              CGPathMoveToPoint(Mutable, 0, v56 - v105, v59);
            }

            CGPathAddLineToPoint(Mutable, 0, v107 + xa, v54);
          }

          if (v107 != v60 || v103 != v61)
          {
            if ((v96 & 1) == 0)
            {
              CGPathMoveToPoint(Mutable, 0, v107 + xa, v54);
            }

            _addContinuousCornerToPath(Mutable, 4, v50, 0, v51 == 0, xa, v54, v107, v103);
          }

          if ((v94 & 1) == 0)
          {
            if ((v96 & 1) == 0)
            {
              CGPathMoveToPoint(Mutable, 0, xa, v54 - v103);
            }

            CGPathAddLineToPoint(Mutable, 0, v101, v97 + v57);
          }

          if (v100 != v60 || v97 != v61)
          {
            if ((v96 & 1) == 0)
            {
              CGPathMoveToPoint(Mutable, 0, v101, v97 + v57);
            }

            _addContinuousCornerToPath(Mutable, 1, v93, 0, v51 == 0, v101, v57, v100, v97);
          }

          CGPathAddLineToPoint(Mutable, 0, v100 + v101, v57);
          v62 = [[self alloc] _initWithCGMutablePath:Mutable];
          CFRelease(Mutable);
          *(v62 + 89) = 1;
          v63 = [radiiCopy objectAtIndex:0];
          [v63 CGSizeValue];
          *(v62 + 96) = v64;

          *(v62 + 104) = v51 != 0;
          v65 = corners & 0xF;
          goto LABEL_102;
        }

LABEL_68:
        CGPathMoveToPoint(Mutable, 0, v100 + v101, v57);
        CGPathAddLineToPoint(Mutable, 0, v53 - v106, v58);
        goto LABEL_69;
      }

      v57 = y;
      v58 = y;
      xa = v13;
      v56 = v53;
    }

    v59 = y + height;
    if (v28)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

  v76 = [radiiCopy objectAtIndex:1];
  [v76 CGSizeValue];
  if (v71 != v77)
  {
LABEL_128:

    v17 = v96;
    goto LABEL_9;
  }

  v78 = [radiiCopy objectAtIndex:1];
  [v78 CGSizeValue];
  if (v74 != v79)
  {
LABEL_127:

    goto LABEL_128;
  }

  v80 = [radiiCopy objectAtIndex:2];
  [v80 CGSizeValue];
  if (v71 != v81)
  {
LABEL_126:

    goto LABEL_127;
  }

  v82 = [radiiCopy objectAtIndex:2];
  [v82 CGSizeValue];
  if (v74 != v83)
  {
LABEL_125:

    goto LABEL_126;
  }

  v84 = [radiiCopy objectAtIndex:3];
  [v84 CGSizeValue];
  if (v71 != v85)
  {

    goto LABEL_125;
  }

  v86 = [radiiCopy objectAtIndex:3];
  [v86 CGSizeValue];
  v88 = v87;

  v89 = v74 == v88;
  v13 = v68;
  v17 = v96;
  if (!v89)
  {
    goto LABEL_9;
  }

  v90 = width * 0.5;
  v91 = fmin(v71, fmin(width * 0.5, height * 0.5));
  CGPathAddContinuousRoundedRect();
  v62 = [[self alloc] _initWithCGMutablePath:Mutable];
  CFRelease(Mutable);
  *(v62 + 89) = 1;
  *(v62 + 96) = v71;
  v92 = v91 > v90;
  if (v91 > height * 0.5)
  {
    v92 = 1;
  }

  *(v62 + 104) = v92;
  v65 = 15;
LABEL_102:
  *(v62 + 112) = v65;

  return v62;
}

- (id)_bezierPathConvertedFromCoordinateSpace:(id)space toCoordinateSpace:(id)coordinateSpace
{
  spaceCopy = space;
  coordinateSpaceCopy = coordinateSpace;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__UIBezierPath__bezierPathConvertedFromCoordinateSpace_toCoordinateSpace___block_invoke;
  aBlock[3] = &unk_1E710BC50;
  v23 = spaceCopy;
  v24 = coordinateSpaceCopy;
  v8 = coordinateSpaceCopy;
  v9 = spaceCopy;
  v10 = _Block_copy(aBlock);
  path = self->_path;
  Mutable = CGPathCreateMutable();
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __74__UIBezierPath__bezierPathConvertedFromCoordinateSpace_toCoordinateSpace___block_invoke_2;
  v19 = &unk_1E710BC78;
  v20 = v10;
  v21 = Mutable;
  v13 = v10;
  CGPathApplyWithBlock(path, &v16);
  v14 = [UIBezierPath bezierPathWithCGPath:Mutable, v16, v17, v18, v19];
  CFRelease(Mutable);

  return v14;
}

void __74__UIBezierPath__bezierPathConvertedFromCoordinateSpace_toCoordinateSpace___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a2;
  if (*a2 <= 1)
  {
    if (v4)
    {
      if (v4 == 1)
      {
        (*(*(a1 + 32) + 16))(*v3, v3[1]);
        v8 = *(a1 + 40);

        CGPathAddLineToPoint(v8, 0, v6, v7);
      }
    }

    else
    {
      (*(*(a1 + 32) + 16))(*v3, v3[1]);
      v26 = *(a1 + 40);

      CGPathMoveToPoint(v26, 0, v24, v25);
    }
  }

  else
  {
    switch(v4)
    {
      case 2:
        v9 = (*(*(a1 + 32) + 16))(*v3, v3[1]);
        v11 = v10;
        v13 = (*(*(a1 + 32) + 16))(v3[2], v3[3]);
        v14 = *(a1 + 40);

        CGPathAddQuadCurveToPoint(v14, 0, v9, v11, v13, v12);
        break;
      case 3:
        v15 = (*(*(a1 + 32) + 16))(*v3, v3[1]);
        v17 = v16;
        v18 = (*(*(a1 + 32) + 16))(v3[2], v3[3]);
        v20 = v19;
        v22 = (*(*(a1 + 32) + 16))(v3[4], v3[5]);
        v23 = *(a1 + 40);

        CGPathAddCurveToPoint(v23, 0, v15, v17, v18, v20, v22, v21);
        break;
      case 4:
        v5 = *(a1 + 40);

        CGPathCloseSubpath(v5);
        break;
    }
  }
}

+ (id)shadowBezierPath:(CGRect)path withRoundedEdges:(unint64_t)edges
{
  edgesCopy = edges;
  height = path.size.height;
  width = path.size.width;
  y = path.origin.y;
  x = path.origin.x;
  v9 = path.size.height * 0.5;
  if ((edges & 2) != 0)
  {
    v10 = path.size.height * 0.5;
  }

  else
  {
    v10 = 0.0;
  }

  if ((edges & 8) != 0)
  {
    v11 = path.size.height * 0.5;
  }

  else
  {
    v11 = 0.0;
  }

  v12 = +[UIBezierPath bezierPath];
  _pathRef = [v12 _pathRef];
  v14 = x + v10;
  CGPathMoveToPoint(_pathRef, 0, v14, y);
  if ((edgesCopy & 2) != 0)
  {
    CGPathAddArc(_pathRef, 0, x + v9, y + v9, v9, 4.71238898, 1.57079633, 1);
    v15 = y + height;
  }

  else
  {
    v15 = y + height;
    CGPathAddLineToPoint(_pathRef, 0, x, v15 + -4.0);
    [v12 appendBezierPathWithArcWithCenter:0 radius:x + 4.0 startAngle:v15 + -4.0 endAngle:4.0 clockwise:{3.14159265, 1.57079633}];
  }

  v16 = x + width;
  CGPathAddLineToPoint(_pathRef, 0, v16 - v11, v15);
  if ((edgesCopy & 8) != 0)
  {
    [v12 appendBezierPathWithArcWithCenter:0 radius:v16 - v9 startAngle:y + v9 endAngle:v9 clockwise:{1.57079633, 4.71238898}];
  }

  else
  {
    [v12 appendBezierPathWithArcWithCenter:0 radius:v16 + -4.0 startAngle:v15 + -4.0 endAngle:4.0 clockwise:{1.57079633, 0.0}];
    CGPathAddLineToPoint(_pathRef, 0, v16, y);
  }

  CGPathAddLineToPoint(_pathRef, 0, v14, y);
  CGPathCloseSubpath(_pathRef);

  return v12;
}

@end