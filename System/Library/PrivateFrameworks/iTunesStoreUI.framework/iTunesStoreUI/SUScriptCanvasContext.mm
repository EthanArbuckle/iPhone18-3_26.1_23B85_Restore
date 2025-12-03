@interface SUScriptCanvasContext
+ (id)webScriptNameForKeyName:(id)name;
+ (id)webScriptNameForSelector:(SEL)selector;
+ (void)initialize;
- (BOOL)isPointInPathWithX:(double)x y:(double)y;
- (CGPath)copyCanvasPath;
- (NSString)globalCompositeOperation;
- (SUScriptCanvasContext)initWithWidth:(double)width height:(double)height;
- (double)globalAlpha;
- (double)height;
- (double)lineWidth;
- (double)miterLimit;
- (double)shadowBlur;
- (double)shadowOffsetX;
- (double)shadowOffsetY;
- (double)width;
- (id)copyCanvasImage;
- (id)fillStyle;
- (id)lineCap;
- (id)lineJoin;
- (id)makeLinearGradientWithX0:(double)x0 y0:(double)y0 x1:(double)x1 y1:(double)y1;
- (id)makeRadialGradientWithX0:(double)x0 y0:(double)y0 r0:(double)r0 x1:(double)x1 y1:(double)y1 r1:(double)r1;
- (id)scriptAttributeKeys;
- (id)shadowColor;
- (id)strokeStyle;
- (void)_ntsApplyShadow;
- (void)arcToX1:(double)x1 y1:(double)y1 x2:(double)x2 y2:(double)y2 radius:(double)radius;
- (void)arcWithX:(double)x y:(double)y radius:(double)radius startAngle:(double)angle endAngle:(double)endAngle antiClockwise:(BOOL)clockwise;
- (void)beginPath;
- (void)bezierCurveToCP1X:(double)x cp1y:(double)cp1y cp2x:(double)cp2x cp2y:(double)cp2y x:(double)a7 y:(double)y;
- (void)clearRectWithX:(double)x y:(double)y width:(double)width height:(double)height;
- (void)clip;
- (void)closePath;
- (void)dealloc;
- (void)fill;
- (void)fillRectWithX:(double)x y:(double)y width:(double)width height:(double)height;
- (void)lineToX:(double)x y:(double)y;
- (void)moveToX:(double)x y:(double)y;
- (void)quadraticCurveToCPX:(double)x cpy:(double)cpy x:(double)a5 y:(double)y;
- (void)restoreState;
- (void)rotateWithAngle:(double)angle;
- (void)saveState;
- (void)scaleWithX:(double)x y:(double)y;
- (void)setFillStyle:(id)style;
- (void)setGlobalAlpha:(double)alpha;
- (void)setGlobalCompositeOperation:(id)operation;
- (void)setLineCap:(id)cap;
- (void)setLineJoin:(id)join;
- (void)setLineWidth:(double)width;
- (void)setMiterLimit:(double)limit;
- (void)setShadowBlur:(double)blur;
- (void)setShadowColor:(id)color;
- (void)setShadowOffsetX:(double)x;
- (void)setShadowOffsetY:(double)y;
- (void)setStrokeStyle:(id)style;
- (void)setTransformWithM11:(double)m11 m12:(double)m12 m21:(double)m21 m22:(double)m22 dx:(double)dx dy:(double)dy;
- (void)stroke;
- (void)strokeRectWithX:(double)x y:(double)y width:(double)width height:(double)height;
- (void)transformWithM11:(double)m11 m12:(double)m12 m21:(double)m21 m22:(double)m22 dx:(double)dx dy:(double)dy;
- (void)translateWithX:(double)x y:(double)y;
@end

@implementation SUScriptCanvasContext

- (SUScriptCanvasContext)initWithWidth:(double)width height:(double)height
{
  v6 = [(SUScriptObject *)self init];
  if (!v6)
  {
    return v6;
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  if (DeviceRGB)
  {
    [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
    v6->_scale = v8;
    v9 = v8 * height;
    height = ceilf(v9);
    *&v8 = v8 * width;
    width = ceilf(*&v8);
    context = CGBitmapContextCreate(0, vcvtps_u32_f32(*&v8), vcvtps_u32_f32(v9), 8uLL, (vcvtd_n_u64_f64(width, 3uLL) + 31) & 0xFFFFFFFFFFFFFFE0, DeviceRGB, 0x2002u);
    v6->_context = context;
    if (context)
    {
      goto LABEL_4;
    }

LABEL_8:

    v6 = 0;
    if (!DeviceRGB)
    {
      return v6;
    }

    goto LABEL_5;
  }

  context = v6->_context;
  if (!context)
  {
    goto LABEL_8;
  }

LABEL_4:
  CGContextSetShouldAntialias(context, 1);
  CGContextSetFillColorSpace(v6->_context, DeviceRGB);
  CGContextTranslateCTM(v6->_context, 0.0, height);
  CGContextScaleCTM(v6->_context, v6->_scale, -v6->_scale);
  CGContextGetCTM(&v12, v6->_context);
  CGContextSetBaseCTM();
  v6->_contextPath = CGPathCreateMutable();
  v6->_height = height;
  v6->_width = width;
  if (DeviceRGB)
  {
LABEL_5:
    CGColorSpaceRelease(DeviceRGB);
  }

  return v6;
}

- (void)dealloc
{
  context = self->_context;
  if (context)
  {
    CGContextRelease(context);
  }

  contextPath = self->_contextPath;
  if (contextPath)
  {
    CGPathRelease(contextPath);
  }

  v5.receiver = self;
  v5.super_class = SUScriptCanvasContext;
  [(SUScriptObject *)&v5 dealloc];
}

- (void)arcToX1:(double)x1 y1:(double)y1 x2:(double)x2 y2:(double)y2 radius:(double)radius
{
  [(SUScriptObject *)self lock];
  memset(&v13, 0, sizeof(v13));
  CGContextGetCTM(&v13, self->_context);
  CGPathAddArcToPoint(self->_contextPath, &v13, x1, y1, x2, y2, radius);
  CGContextAddArcToPoint(self->_context, x1, y1, x2, y2, radius);
  [(SUScriptObject *)self unlock];
}

- (void)arcWithX:(double)x y:(double)y radius:(double)radius startAngle:(double)angle endAngle:(double)endAngle antiClockwise:(BOOL)clockwise
{
  clockwiseCopy = clockwise;
  [(SUScriptObject *)self lock];
  memset(&v15, 0, sizeof(v15));
  CGContextGetCTM(&v15, self->_context);
  CGPathAddArc(self->_contextPath, &v15, x, y, radius, angle, endAngle, !clockwiseCopy);
  CGContextAddArc(self->_context, x, y, radius, angle, endAngle, !clockwiseCopy);
  [(SUScriptObject *)self unlock];
}

- (void)beginPath
{
  [(SUScriptObject *)self lock];
  CGContextBeginPath(self->_context);
  contextPath = self->_contextPath;
  if (contextPath)
  {
    CGPathRelease(contextPath);
    self->_contextPath = CGPathCreateMutable();
  }

  [(SUScriptObject *)self unlock];
}

- (void)bezierCurveToCP1X:(double)x cp1y:(double)cp1y cp2x:(double)cp2x cp2y:(double)cp2y x:(double)a7 y:(double)y
{
  [(SUScriptObject *)self lock];
  memset(&v15, 0, sizeof(v15));
  CGContextGetCTM(&v15, self->_context);
  CGPathAddCurveToPoint(self->_contextPath, &v15, x, cp1y, cp2x, cp2y, a7, y);
  CGContextAddCurveToPoint(self->_context, x, cp1y, cp2x, cp2y, a7, y);
  [(SUScriptObject *)self unlock];
}

- (id)copyCanvasImage
{
  [(SUScriptObject *)self lock];
  context = self->_context;
  if (context && (Image = CGBitmapContextCreateImage(context)) != 0)
  {
    v5 = Image;
    v6 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:Image scale:0 orientation:self->_scale];
    CGImageRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  [(SUScriptObject *)self unlock];
  return v6;
}

- (CGPath)copyCanvasPath
{
  [(SUScriptObject *)self lock];
  contextPath = self->_contextPath;
  if (contextPath)
  {
    memset(&v5, 0, sizeof(v5));
    CGAffineTransformMakeScale(&v5, 1.0 / self->_scale, 1.0 / self->_scale);
    contextPath = MEMORY[0x1C6915E60](contextPath, &v5);
  }

  [(SUScriptObject *)self unlock];
  return contextPath;
}

- (void)clearRectWithX:(double)x y:(double)y width:(double)width height:(double)height
{
  [(SUScriptObject *)self lock];
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  CGContextClearRect(self->_context, v12);

  [(SUScriptObject *)self unlock];
}

- (void)clip
{
  [(SUScriptObject *)self lock];
  CGContextClip(self->_context);

  [(SUScriptObject *)self unlock];
}

- (void)closePath
{
  [(SUScriptObject *)self lock];
  CGPathCloseSubpath(self->_contextPath);
  CGContextClosePath(self->_context);

  [(SUScriptObject *)self unlock];
}

- (void)fill
{
  [(SUScriptObject *)self lock];
  fillStyleType = self->_fillStyleType;
  if (fillStyleType == 1)
  {
    copyNativeGradient = [self->_fillStyle copyNativeGradient];
    copyShading = [copyNativeGradient copyShading];
    if (copyShading)
    {
      v6 = copyShading;
      CGContextSaveGState(self->_context);
      CGContextClip(self->_context);
      CGContextDrawShading(self->_context, v6);
      CGContextRestoreGState(self->_context);
      CGShadingRelease(v6);
    }
  }

  else if (!fillStyleType)
  {
    CGContextFillPath(self->_context);
  }

  [(SUScriptObject *)self unlock];
}

- (void)fillRectWithX:(double)x y:(double)y width:(double)width height:(double)height
{
  [(SUScriptObject *)self lock];
  fillStyleType = self->_fillStyleType;
  if (fillStyleType == 1)
  {
    copyNativeGradient = [self->_fillStyle copyNativeGradient];
    copyShading = [copyNativeGradient copyShading];
    if (copyShading)
    {
      v14 = copyShading;
      CGContextSaveGState(self->_context);
      v17.origin.x = x;
      v17.origin.y = y;
      v17.size.width = width;
      v17.size.height = height;
      CGContextClipToRect(self->_context, v17);
      CGContextDrawShading(self->_context, v14);
      CGContextRestoreGState(self->_context);
      CGShadingRelease(v14);
    }
  }

  else if (!fillStyleType)
  {
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    CGContextFillRect(self->_context, v16);
  }

  [(SUScriptObject *)self unlock];
}

- (BOOL)isPointInPathWithX:(double)x y:(double)y
{
  [(SUScriptObject *)self lock];
  v9.x = x;
  v9.y = y;
  v7 = CGContextPathContainsPoint(self->_context, v9, kCGPathStroke);
  [(SUScriptObject *)self unlock];
  return v7;
}

- (void)lineToX:(double)x y:(double)y
{
  [(SUScriptObject *)self lock];
  memset(&v7, 0, sizeof(v7));
  CGContextGetCTM(&v7, self->_context);
  CGPathAddLineToPoint(self->_contextPath, &v7, x, y);
  CGContextAddLineToPoint(self->_context, x, y);
  [(SUScriptObject *)self unlock];
}

- (id)makeLinearGradientWithX0:(double)x0 y0:(double)y0 x1:(double)x1 y1:(double)y1
{
  v6 = [[SUScriptGradient alloc] initLinearGradientWithX0:x0 y0:y0 x1:x1 y1:y1];

  return v6;
}

- (id)makeRadialGradientWithX0:(double)x0 y0:(double)y0 r0:(double)r0 x1:(double)x1 y1:(double)y1 r1:(double)r1
{
  v8 = [[SUScriptGradient alloc] initRadialGraidentWithX0:x0 y0:y0 r0:r0 x1:x1 y1:y1 r1:r1];

  return v8;
}

- (void)moveToX:(double)x y:(double)y
{
  [(SUScriptObject *)self lock];
  memset(&v7, 0, sizeof(v7));
  CGContextGetCTM(&v7, self->_context);
  CGPathMoveToPoint(self->_contextPath, &v7, x, y);
  CGContextMoveToPoint(self->_context, x, y);
  [(SUScriptObject *)self unlock];
}

- (void)quadraticCurveToCPX:(double)x cpy:(double)cpy x:(double)a5 y:(double)y
{
  [(SUScriptObject *)self lock];
  memset(&v11, 0, sizeof(v11));
  CGContextGetCTM(&v11, self->_context);
  CGPathAddQuadCurveToPoint(self->_contextPath, &v11, x, cpy, a5, y);
  CGContextAddQuadCurveToPoint(self->_context, x, cpy, a5, y);
  [(SUScriptObject *)self unlock];
}

- (void)restoreState
{
  [(SUScriptObject *)self lock];
  CGContextRestoreGState(self->_context);

  [(SUScriptObject *)self unlock];
}

- (void)rotateWithAngle:(double)angle
{
  [(SUScriptObject *)self lock];
  CGContextRotateCTM(self->_context, angle);

  [(SUScriptObject *)self unlock];
}

- (void)saveState
{
  [(SUScriptObject *)self lock];
  CGContextSaveGState(self->_context);

  [(SUScriptObject *)self unlock];
}

- (void)scaleWithX:(double)x y:(double)y
{
  [(SUScriptObject *)self lock];
  CGContextScaleCTM(self->_context, x, y);

  [(SUScriptObject *)self unlock];
}

- (void)setTransformWithM11:(double)m11 m12:(double)m12 m21:(double)m21 m22:(double)m22 dx:(double)dx dy:(double)dy
{
  [(SUScriptObject *)self lock];
  CGContextSetCTM();
  [(SUScriptObject *)self unlock:*&m11];
}

- (void)transformWithM11:(double)m11 m12:(double)m12 m21:(double)m21 m22:(double)m22 dx:(double)dx dy:(double)dy
{
  [(SUScriptObject *)self lock];
  context = self->_context;
  v16.a = m11;
  v16.b = m12;
  v16.c = m21;
  v16.d = m22;
  v16.tx = dx;
  v16.ty = dy;
  CGContextConcatCTM(context, &v16);
  [(SUScriptObject *)self unlock];
}

- (void)translateWithX:(double)x y:(double)y
{
  [(SUScriptObject *)self lock];
  CGContextTranslateCTM(self->_context, x, y);

  [(SUScriptObject *)self unlock];
}

- (void)stroke
{
  [(SUScriptObject *)self lock];
  strokeStyleType = self->_strokeStyleType;
  if (strokeStyleType == 1)
  {
    copyNativeGradient = [self->_strokeStyle copyNativeGradient];
    copyShading = [copyNativeGradient copyShading];
    if (copyShading)
    {
      v6 = copyShading;
      CGContextSaveGState(self->_context);
      CGContextReplacePathWithStrokedPath(self->_context);
      CGContextClip(self->_context);
      CGContextDrawShading(self->_context, v6);
      CGContextRestoreGState(self->_context);
      CGShadingRelease(v6);
    }
  }

  else if (!strokeStyleType)
  {
    CGContextStrokePath(self->_context);
  }

  [(SUScriptObject *)self unlock];
}

- (void)strokeRectWithX:(double)x y:(double)y width:(double)width height:(double)height
{
  [(SUScriptObject *)self lock];
  strokeStyleType = self->_strokeStyleType;
  if (strokeStyleType == 1)
  {
    copyNativeGradient = [self->_strokeStyle copyNativeGradient];
    copyShading = [copyNativeGradient copyShading];
    if (copyShading)
    {
      v14 = copyShading;
      CGContextSaveGState(self->_context);
      v17.origin.x = x;
      v17.origin.y = y;
      v17.size.width = width;
      v17.size.height = height;
      CGContextAddRect(self->_context, v17);
      CGContextReplacePathWithStrokedPath(self->_context);
      CGContextClip(self->_context);
      CGContextDrawShading(self->_context, v14);
      CGContextRestoreGState(self->_context);
      CGShadingRelease(v14);
    }
  }

  else if (!strokeStyleType)
  {
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    CGContextStrokeRect(self->_context, v16);
  }

  [(SUScriptObject *)self unlock];
}

- (id)fillStyle
{
  [(SUScriptObject *)self lock];
  v3 = self->_fillStyle;
  [(SUScriptObject *)self unlock];
  if (v3)
  {
    return v3;
  }

  v5 = MEMORY[0x1E695DFB0];

  return [v5 null];
}

- (double)globalAlpha
{
  [(SUScriptObject *)self lock];
  CGContextGetAlpha();
  v4 = v3;
  [(SUScriptObject *)self unlock];
  return v4;
}

- (NSString)globalCompositeOperation
{
  [(SUScriptObject *)self lock];
  CompositeOperation = CGContextGetCompositeOperation();
  [(SUScriptObject *)self unlock];
  if ((CompositeOperation - 1) > 0x10)
  {
    return @"source-over";
  }

  else
  {
    return &off_1E8165A88[CompositeOperation - 1]->isa;
  }
}

- (double)height
{
  [(SUScriptObject *)self lock];
  height = self->_height;
  [(SUScriptObject *)self unlock];
  return height;
}

- (id)lineCap
{
  [(SUScriptObject *)self lock];
  LineCap = CGContextGetLineCap();
  [(SUScriptObject *)self unlock];
  v4 = @"butt";
  if (LineCap == 2)
  {
    v4 = @"square";
  }

  if (LineCap == 1)
  {
    return @"round";
  }

  else
  {
    return v4;
  }
}

- (id)lineJoin
{
  [(SUScriptObject *)self lock];
  LineJoin = CGContextGetLineJoin();
  [(SUScriptObject *)self unlock];
  v4 = @"miter";
  if (LineJoin == 1)
  {
    v4 = @"round";
  }

  if (LineJoin == 2)
  {
    return @"bevel";
  }

  else
  {
    return v4;
  }
}

- (double)lineWidth
{
  [(SUScriptObject *)self lock];
  CGContextGetLineWidth();
  v4 = v3;
  [(SUScriptObject *)self unlock];
  return v4;
}

- (double)miterLimit
{
  [(SUScriptObject *)self lock];
  CGContextGetMiterLimit();
  v4 = v3;
  [(SUScriptObject *)self unlock];
  return v4;
}

- (void)setFillStyle:(id)style
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    styleCopy2 = [[SUScriptColor alloc] initWithStyleString:style];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        styleCopy2 = style;
        v7 = 0;
        v6 = 1;
        if (styleCopy2)
        {
          goto LABEL_6;
        }
      }

LABEL_13:
      [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
      v11 = 0;
      goto LABEL_14;
    }

    styleCopy2 = style;
  }

  v6 = 0;
  v7 = 1;
  if (!styleCopy2)
  {
    goto LABEL_13;
  }

LABEL_6:
  v12 = styleCopy2;
  [(SUScriptObject *)self lock];
  fillStyle = self->_fillStyle;
  if (fillStyle != v12)
  {

    self->_fillStyle = v12;
    self->_fillStyleType = v6;
    if (v7)
    {
      copyCGColor = [self->_fillStyle copyCGColor];
      if (copyCGColor)
      {
        v10 = copyCGColor;
        CGContextSetFillColorWithColor(self->_context, copyCGColor);
        CGColorRelease(v10);
      }
    }
  }

  [(SUScriptObject *)self unlock];
  v11 = v12;
LABEL_14:
}

- (void)setGlobalAlpha:(double)alpha
{
  [(SUScriptObject *)self lock];
  CGContextSetAlpha(self->_context, alpha);

  [(SUScriptObject *)self unlock];
}

- (void)setGlobalCompositeOperation:(id)operation
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (([operation isEqualToString:@"copy"] & 1) == 0 && (objc_msgSend(operation, "isEqualToString:", @"destination-atop") & 1) == 0 && (objc_msgSend(operation, "isEqualToString:", @"destination-in") & 1) == 0 && (objc_msgSend(operation, "isEqualToString:", @"destination-out") & 1) == 0 && (objc_msgSend(operation, "isEqualToString:", @"destination-over") & 1) == 0 && (objc_msgSend(operation, "isEqualToString:", @"lighter") & 1) == 0 && (objc_msgSend(operation, "isEqualToString:", @"source-in") & 1) == 0 && (objc_msgSend(operation, "isEqualToString:", @"source-out") & 1) == 0)
    {
      [operation isEqualToString:@"xor"];
    }

    [(SUScriptObject *)self lock];
    CGContextSetCompositeOperation();

    [(SUScriptObject *)self unlock];
  }

  else
  {
    v5 = MEMORY[0x1E69E2F88];

    [v5 throwException:@"Invalid argument"];
  }
}

- (void)setLineCap:(id)cap
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([cap isEqualToString:@"round"])
    {
      v5 = kCGLineCapRound;
    }

    else if ([cap isEqualToString:@"square"])
    {
      v5 = kCGLineCapSquare;
    }

    else
    {
      v5 = kCGLineCapButt;
    }

    [(SUScriptObject *)self lock];
    CGContextSetLineCap(self->_context, v5);

    [(SUScriptObject *)self unlock];
  }

  else
  {
    v6 = MEMORY[0x1E69E2F88];

    [v6 throwException:@"Invalid argument"];
  }
}

- (void)setLineJoin:(id)join
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([join isEqualToString:@"bevel"])
    {
      v5 = kCGLineJoinBevel;
    }

    else
    {
      v5 = [join isEqualToString:@"round"];
    }

    [(SUScriptObject *)self lock];
    CGContextSetLineJoin(self->_context, v5);

    [(SUScriptObject *)self unlock];
  }

  else
  {
    v6 = MEMORY[0x1E69E2F88];

    [v6 throwException:@"Invalid argument"];
  }
}

- (void)setLineWidth:(double)width
{
  [(SUScriptObject *)self lock];
  CGContextSetLineWidth(self->_context, width);

  [(SUScriptObject *)self unlock];
}

- (void)setMiterLimit:(double)limit
{
  [(SUScriptObject *)self lock];
  CGContextSetMiterLimit(self->_context, limit);

  [(SUScriptObject *)self unlock];
}

- (void)setShadowBlur:(double)blur
{
  [(SUScriptObject *)self lock];
  self->_shadowBlur = blur;
  [(SUScriptCanvasContext *)self _ntsApplyShadow];

  [(SUScriptObject *)self unlock];
}

- (void)setShadowColor:(id)color
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    colorCopy = [[SUScriptColor alloc] initWithStyleString:color];
  }

  else
  {
    colorCopy = color;
  }

  v7 = colorCopy;
  if (colorCopy)
  {
    [(SUScriptObject *)self lock];
    shadowColor = self->_shadowColor;
    if (shadowColor != v7)
    {

      self->_shadowColor = v7;
    }

    [(SUScriptCanvasContext *)self _ntsApplyShadow];
    [(SUScriptObject *)self unlock];
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
  }
}

- (void)setShadowOffsetX:(double)x
{
  [(SUScriptObject *)self lock];
  self->_shadowOffsetX = x;
  [(SUScriptCanvasContext *)self _ntsApplyShadow];

  [(SUScriptObject *)self unlock];
}

- (void)setShadowOffsetY:(double)y
{
  [(SUScriptObject *)self lock];
  self->_shadowOffsetY = y;
  [(SUScriptCanvasContext *)self _ntsApplyShadow];

  [(SUScriptObject *)self unlock];
}

- (void)setStrokeStyle:(id)style
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    styleCopy2 = [[SUScriptColor alloc] initWithStyleString:style];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        styleCopy2 = style;
        v7 = 0;
        v6 = 1;
        if (styleCopy2)
        {
          goto LABEL_6;
        }
      }

LABEL_13:
      [MEMORY[0x1E69E2F88] throwException:@"Invalid argument"];
      v11 = 0;
      goto LABEL_14;
    }

    styleCopy2 = style;
  }

  v6 = 0;
  v7 = 1;
  if (!styleCopy2)
  {
    goto LABEL_13;
  }

LABEL_6:
  v12 = styleCopy2;
  [(SUScriptObject *)self lock];
  strokeStyle = self->_strokeStyle;
  if (strokeStyle != v12)
  {

    self->_strokeStyle = v12;
    self->_strokeStyleType = v6;
    if (v7)
    {
      copyCGColor = [self->_strokeStyle copyCGColor];
      if (copyCGColor)
      {
        v10 = copyCGColor;
        CGContextSetStrokeColorWithColor(self->_context, copyCGColor);
        CGColorRelease(v10);
      }
    }
  }

  [(SUScriptObject *)self unlock];
  v11 = v12;
LABEL_14:
}

- (double)shadowBlur
{
  [(SUScriptObject *)self lock];
  shadowBlur = self->_shadowBlur;
  [(SUScriptObject *)self unlock];
  return shadowBlur;
}

- (id)shadowColor
{
  [(SUScriptObject *)self lock];
  v3 = self->_shadowColor;
  [(SUScriptObject *)self unlock];
  return v3;
}

- (double)shadowOffsetX
{
  [(SUScriptObject *)self lock];
  shadowOffsetX = self->_shadowOffsetX;
  [(SUScriptObject *)self unlock];
  return shadowOffsetX;
}

- (double)shadowOffsetY
{
  [(SUScriptObject *)self lock];
  shadowOffsetY = self->_shadowOffsetY;
  [(SUScriptObject *)self unlock];
  return shadowOffsetY;
}

- (id)strokeStyle
{
  [(SUScriptObject *)self lock];
  v3 = self->_strokeStyle;
  [(SUScriptObject *)self unlock];
  if (v3)
  {
    return v3;
  }

  v5 = MEMORY[0x1E695DFB0];

  return [v5 null];
}

- (double)width
{
  [(SUScriptObject *)self lock];
  width = self->_width;
  [(SUScriptObject *)self unlock];
  return width;
}

- (void)_ntsApplyShadow
{
  shadowColor = self->_shadowColor;
  if (shadowColor && (v4 = [(SUScriptColor *)shadowColor copyCGColor]) != 0)
  {
    v5 = v4;
    CGContextSetShadowWithColor(self->_context, *&self->_shadowOffsetX, self->_shadowBlur, v4);

    CGColorRelease(v5);
  }

  else
  {
    context = self->_context;
    shadowOffsetX = self->_shadowOffsetX;
    shadowOffsetY = self->_shadowOffsetY;
    shadowBlur = self->_shadowBlur;

    CGContextSetShadow(context, *&shadowOffsetX, shadowBlur);
  }
}

+ (id)webScriptNameForKeyName:(id)name
{
  result = [__KeyMapping_30 objectForKey:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptCanvasContext;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, name);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)selector
{
  result = SUWebScriptNameForSelector2(selector, &__SelectorMapping_24, 24);
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptCanvasContext;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, selector);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptCanvasContext;
  scriptAttributeKeys = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](scriptAttributeKeys, "addObjectsFromArray:", [__KeyMapping_30 allKeys]);
  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __SelectorMapping_24 = sel_arcToX1_y1_x2_y2_radius_;
    *algn_1EBF3AD48 = @"arcTo";
    qword_1EBF3AD50 = sel_arcWithX_y_radius_startAngle_endAngle_antiClockwise_;
    unk_1EBF3AD58 = @"arc";
    qword_1EBF3AD60 = sel_beginPath;
    unk_1EBF3AD68 = @"beginPath";
    qword_1EBF3AD70 = sel_bezierCurveToCP1X_cp1y_cp2x_cp2y_x_y_;
    unk_1EBF3AD78 = @"bezierCurveTo";
    qword_1EBF3AD80 = sel_clearRectWithX_y_width_height_;
    unk_1EBF3AD88 = @"clearRect";
    qword_1EBF3AD90 = sel_clip;
    unk_1EBF3AD98 = @"clip";
    qword_1EBF3ADA0 = sel_closePath;
    unk_1EBF3ADA8 = @"closePath";
    qword_1EBF3ADB0 = sel_fill;
    unk_1EBF3ADB8 = @"fill";
    qword_1EBF3ADC0 = sel_fillRectWithX_y_width_height_;
    unk_1EBF3ADC8 = @"fillRect";
    qword_1EBF3ADD0 = sel_isPointInPathWithX_y_;
    unk_1EBF3ADD8 = @"isPointInPath";
    qword_1EBF3ADE0 = sel_lineToX_y_;
    unk_1EBF3ADE8 = @"lineTo";
    qword_1EBF3ADF0 = sel_makeLinearGradientWithX0_y0_x1_y1_;
    unk_1EBF3ADF8 = @"createLinearGradient";
    qword_1EBF3AE00 = sel_makeRadialGradientWithX0_y0_r0_x1_y1_r1_;
    unk_1EBF3AE08 = @"createRadialGradient";
    qword_1EBF3AE10 = sel_moveToX_y_;
    unk_1EBF3AE18 = @"moveTo";
    qword_1EBF3AE20 = sel_quadraticCurveToCPX_cpy_x_y_;
    unk_1EBF3AE28 = @"quadraticCurveTo";
    qword_1EBF3AE30 = sel_restoreState;
    unk_1EBF3AE38 = @"restore";
    qword_1EBF3AE40 = sel_rotateWithAngle_;
    unk_1EBF3AE48 = @"rotate";
    qword_1EBF3AE50 = sel_saveState;
    unk_1EBF3AE58 = @"save";
    qword_1EBF3AE60 = sel_scaleWithX_y_;
    unk_1EBF3AE68 = @"scale";
    qword_1EBF3AE70 = sel_setTransformWithM11_m12_m21_m22_dx_dy_;
    unk_1EBF3AE78 = @"setTransform";
    qword_1EBF3AE80 = sel_stroke;
    unk_1EBF3AE88 = @"stroke";
    qword_1EBF3AE90 = sel_strokeRectWithX_y_width_height_;
    unk_1EBF3AE98 = @"strokeRect";
    qword_1EBF3AEA0 = sel_transformWithM11_m12_m21_m22_dx_dy_;
    unk_1EBF3AEA8 = @"transform";
    qword_1EBF3AEB0 = sel_translateWithX_y_;
    unk_1EBF3AEB8 = @"translate";
    __KeyMapping_30 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"fillStyle", @"globalAlpha", @"globalAlpha", @"globalCompositeOperation", @"globalCompositeOperation", @"height", @"height", @"lineCap", @"lineCap", @"lineJoin", @"lineJoin", @"lineWidth", @"lineWidth", @"miterLimit", @"miterLimit", @"shadowBlur", @"shadowBlur", @"shadowColor", @"shadowColor", @"shadowOffsetX", @"shadowOffsetX", @"shadowOffsetY", @"shadowOffsetY", @"strokeStyle", @"strokeStyle", @"width", @"width", 0}];
  }
}

@end