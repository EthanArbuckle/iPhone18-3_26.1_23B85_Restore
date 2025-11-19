@interface UIKBRenderer
+ (CGContext)imageContextWithSize:(CGSize)a3 scale:(double)a4 colorFormat:(int64_t)a5 opaque:(BOOL)a6 invert:(BOOL)a7;
+ (id)rendererWithContext:(CGContext *)a3 withSize:(CGSize)a4 withScale:(double)a5 opaque:(BOOL)a6 renderFlags:(int64_t)a7 assetIdiom:(int64_t)a8;
+ (void)clearInternalCaches;
- (BOOL)_drawKeyString:(id)a3 inRect:(CGRect)a4 withStyle:(id)a5;
- (BOOL)_drawSingleSymbol:(id)a3 inRect:(CGRect)a4 withStyle:(id)a5;
- (BOOL)loadCachedImageForHashString:(id)a3;
- (BOOL)renderKeyPathContents:(id)a3 withTraits:(id)a4;
- (CGContext)context;
- (CGPath)_deleteGlyphPaths;
- (CGPath)_thickShiftGlyphPath;
- (CGPath)_thinShiftGlyphPath;
- (CGPoint)centroidOfGlyph:(CGPath *)a3;
- (CGRect)_layerPaddedFrame;
- (CGSize)size;
- (NSData)contextData;
- (UIColor)singleColor;
- (UIImage)renderedImage;
- (UIKBRenderer)initWithContext:(CGContext *)a3 withSize:(CGSize)a4 withScale:(double)a5 opaque:(BOOL)a6 renderFlags:(int64_t)a7 assetIdiom:(int64_t)a8;
- (id)defaultPathForRenderGeometry:(id)a3;
- (id)description;
- (id)pathForConcaveCornerWithGeometry:(id)a3;
- (id)pathForFlickGeometry:(id)a3;
- (id)pathForFlickPopupGeometries:(id)a3;
- (id)pathForFlickWidth:(double)a3 height:(double)a4 handleLength:(double)a5 keyMiddle:(CGPoint)a6 angle:(double)a7 radius:(double)a8;
- (id)pathForRenderGeometry:(id)a3;
- (id)pathForSplitGeometry:(id)a3;
- (id)symbolImageConfigForKey:(id)a3 traitCollection:(id)a4;
- (id)watchPathForRenderGeometry:(id)a3;
- (int64_t)contentColorFormat;
- (unint64_t)renderKeyImageContents:(id)a3 withTraits:(id)a4 status:(unint64_t)a5;
- (unint64_t)renderKeyStringContents:(id)a3 withTraits:(id)a4 status:(unint64_t)a5;
- (void)_addDetectedColor:(CGColor *)a3;
- (void)_completeCacheImageWithTraitsIfNecessary:(id)a3;
- (void)_drawKeyImage:(id)a3 inRect:(CGRect)a4 withStyle:(id)a5 force1xImages:(BOOL)a6 flipHorizontally:(BOOL)a7 isRGBImage:(BOOL)a8;
- (void)_drawLinearGradient:(id)a3 inRect:(CGRect)a4;
- (void)_renderVariantsFromKeyContents:(id)a3 withTraits:(id)a4;
- (void)addPathForFlickGeometry:(id)a3;
- (void)addPathForFlickPopupGeometries:(id)a3;
- (void)addPathForRenderGeometry:(id)a3;
- (void)addPathForSplitGeometry:(id)a3;
- (void)addPathForTraits:(id)a3 displayRect:(CGRect *)a4;
- (void)addRoundRect:(CGRect)a3 radius:(double)a4 corners:(unint64_t)a5;
- (void)dealloc;
- (void)detectColorsForEffect:(id)a3;
- (void)detectColorsForGradient:(id)a3;
- (void)detectColorsForNamedColor:(id)a3;
- (void)drawPath:(CGPath *)a3 weight:(double)a4 transform:(CGAffineTransform *)a5 color:(CGColor *)a6 fill:(BOOL)a7;
- (void)drawShiftPath:(BOOL)a3 weight:(double)a4 transform:(CGAffineTransform *)a5 color:(CGColor *)a6;
- (void)ensureContext;
- (void)renderBackgroundTraits:(id)a3;
- (void)renderBackgroundTraits:(id)a3 allowCaching:(BOOL)a4;
- (void)renderDivotEffect:(id)a3 withTraits:(id)a4;
- (void)renderEdgeEffect:(id)a3 withTraits:(id)a4;
- (void)renderKeyContents:(id)a3 withTraits:(id)a4;
- (void)renderShadowEffect:(id)a3 withTraits:(id)a4;
@end

@implementation UIKBRenderer

+ (void)clearInternalCaches
{
  v2 = _MergedGlobals_1178;
  _MergedGlobals_1178 = 0;
}

+ (id)rendererWithContext:(CGContext *)a3 withSize:(CGSize)a4 withScale:(double)a5 opaque:(BOOL)a6 renderFlags:(int64_t)a7 assetIdiom:(int64_t)a8
{
  v8 = [[a1 alloc] initWithContext:a3 withSize:a6 withScale:a7 opaque:a8 renderFlags:a4.width assetIdiom:{a4.height, a5}];

  return v8;
}

- (UIKBRenderer)initWithContext:(CGContext *)a3 withSize:(CGSize)a4 withScale:(double)a5 opaque:(BOOL)a6 renderFlags:(int64_t)a7 assetIdiom:(int64_t)a8
{
  height = a4.height;
  width = a4.width;
  v19.receiver = self;
  v19.super_class = UIKBRenderer;
  v15 = [(UIKBRenderer *)&v19 init];
  if (v15)
  {
    v15->_ctx = CGContextRetain(a3);
    v15->_size.width = width;
    v15->_size.height = height;
    v15->_scale = a5;
    v15->_opaque = a6;
    v15->_renderFlags = a7;
    v15->_forceColorFormat = 0;
    v15->_colorCount = 0;
    v16 = MEMORY[0x1E695F050];
    v15->_contentColorFormat = 1;
    v15->_assetIdiom = a8;
    v17 = v16[1];
    v15->__layerPaddedFrame.origin = *v16;
    v15->__layerPaddedFrame.size = v17;
    v15->__layerRoundRectRadius = 0.0;
  }

  return v15;
}

- (void)dealloc
{
  cachingContext = self->_cachingContext;
  if (cachingContext)
  {
    CGContextRelease(cachingContext);
  }

  ctx = self->_ctx;
  if (ctx)
  {
    CGContextRelease(ctx);
  }

  v5.receiver = self;
  v5.super_class = UIKBRenderer;
  [(UIKBRenderer *)&v5 dealloc];
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = UIKBRenderer;
  v3 = [(UIKBRenderer *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" renderFlags = %d, forceColors = %d", -[UIKBRenderer renderFlags](self, "renderFlags"), self->_forceColorFormat];;

  return v4;
}

- (UIColor)singleColor
{
  if (self->_colorCount == 1)
  {
    return self->_singleColor;
  }

  else
  {
    return 0;
  }
}

- (int64_t)contentColorFormat
{
  v3 = [(UIKBRenderer *)self singleColor];

  if (v3)
  {
    return 2;
  }

  else
  {
    return self->_contentColorFormat;
  }
}

- (void)_addDetectedColor:(CGColor *)a3
{
  if (!a3 || self->_colorCount > 1)
  {
    return;
  }

  CopyWithAlpha = CGColorCreateCopyWithAlpha(a3, 1.0);
  UISCreateCachedColorTransform();
  v5 = CGColorTransformConvertColor();
  CGColorTransformRelease();
  v9 = [UIColor colorWithCGColor:v5];
  CGColorRelease(CopyWithAlpha);
  CGColorRelease(v5);
  colorCount = self->_colorCount;
  if (colorCount == 1)
  {
    if (![(UIColor *)self->_singleColor isEqual:v9])
    {
      ++self->_colorCount;
      singleColor = self->_singleColor;
      self->_singleColor = 0;
      goto LABEL_9;
    }
  }

  else if (!colorCount)
  {
    self->_colorCount = 1;
    v7 = v9;
    singleColor = self->_singleColor;
    self->_singleColor = v7;
LABEL_9:
  }
}

- (void)detectColorsForNamedColor:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v8 = v4;
    v6 = UIKBGetNamedColor(v4);
    [(UIKBRenderer *)self _addDetectedColor:v6];
    v5 = v8;
    if (self->_contentColorFormat == 1)
    {
      v7 = UIKBColorUsesRGB(v6);
      v5 = v8;
      if (v7)
      {
        self->_contentColorFormat = 0;
      }
    }
  }
}

- (void)detectColorsForGradient:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    v5 = [v4 flatColorName];
    [(UIKBRenderer *)self detectColorsForNamedColor:v5];
    if (self->_contentColorFormat == 1 && [v7 usesRGBColors])
    {
      self->_contentColorFormat = 0;
    }

    if (!v5)
    {
      self->_colorCount = 2;
      singleColor = self->_singleColor;
      self->_singleColor = 0;
    }

    v4 = v7;
  }
}

- (void)detectColorsForEffect:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v9 = v4;
    v6 = [v4 gradient];
    [(UIKBRenderer *)self detectColorsForGradient:v6];

    v7 = [v9 CGColor];
    [(UIKBRenderer *)self _addDetectedColor:v7];
    CGColorRelease(v7);
    v5 = v9;
    if (self->_contentColorFormat == 1)
    {
      v8 = [v9 usesRGBColors];
      v5 = v9;
      if (v8)
      {
        self->_contentColorFormat = 0;
      }
    }
  }
}

- (void)ensureContext
{
  if (!self->_cachingContext && !self->_ctx && !self->_colorDetectMode)
  {
    [(UIKBRenderer *)self size];
    v4 = v3;
    v6 = v5;
    [(UIKBRenderer *)self scale];
    self->_ctx = [UIKBRenderer imageContextWithSize:self->_forceColorFormat scale:[(UIKBRenderer *)self opaque] colorFormat:1 opaque:v4 invert:v6, v7];
  }
}

- (CGContext)context
{
  [(UIKBRenderer *)self ensureContext];
  result = self->_cachingContext;
  if (!result)
  {
    return self->_ctx;
  }

  return result;
}

- (UIImage)renderedImage
{
  renderedImage = self->_renderedImage;
  if (!renderedImage)
  {
    ctx = self->_ctx;
    if (ctx)
    {
      Image = CGBitmapContextCreateImage(ctx);
      v6 = [UIKBCachedImage alloc];
      [(UIKBRenderer *)self scale];
      v7 = [(UIImage *)v6 initWithCGImage:Image scale:0 orientation:?];
      v8 = [(UIKBRenderer *)self singleColor];
      [(UIImage *)v7 setFormatColor:v8];

      v9 = self->_renderedImage;
      self->_renderedImage = v7;

      CGImageRelease(Image);
      renderedImage = self->_renderedImage;
    }

    else
    {
      renderedImage = 0;
    }
  }

  v10 = renderedImage;

  return v10;
}

- (NSData)contextData
{
  ctx = self->_ctx;
  if (ctx)
  {
    BytesPerRow = CGBitmapContextGetBytesPerRow(ctx);
    v5 = CGBitmapContextGetHeight(self->_ctx) * BytesPerRow;
    ctx = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:CGBitmapContextGetData(self->_ctx) length:v5 freeWhenDone:0];
  }

  return ctx;
}

+ (CGContext)imageContextWithSize:(CGSize)a3 scale:(double)a4 colorFormat:(int64_t)a5 opaque:(BOOL)a6 invert:(BOOL)a7
{
  LODWORD(v8) = vcvtpd_s64_f64(a3.width * a4);
  LODWORD(v7) = vcvtpd_s64_f64(a3.height * a4);
  if (v8 < 1 || v7 < 1)
  {
    return 0;
  }

  v11 = a7;
  if (a5 == 2)
  {
    DeviceGray = 0;
    v15 = 7;
  }

  else
  {
    v13 = a6;
    if (a5 == 1)
    {
      DeviceGray = UIKBColorSpaceDeviceGray_colorspace;
      if (!UIKBColorSpaceDeviceGray_colorspace)
      {
        DeviceGray = CGColorSpaceCreateDeviceGray();
        UIKBColorSpaceDeviceGray_colorspace = DeviceGray;
      }

      v15 = !v13;
    }

    else
    {
      DeviceGray = UIKBColorSpaceDeviceRGB_colorspace;
      if (!UIKBColorSpaceDeviceRGB_colorspace)
      {
        DeviceGray = CGColorSpaceCreateDeviceRGB();
        UIKBColorSpaceDeviceRGB_colorspace = DeviceGray;
      }

      if (v13)
      {
        v15 = 8198;
      }

      else
      {
        v15 = 8194;
      }
    }
  }

  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  v17 = CGBitmapContextCreate(0, v8, v7, 8uLL, AlignedBytesPerRow, DeviceGray, v15);
  v10 = v17;
  if (v17)
  {
    if (v11)
    {
      CGContextTranslateCTM(v17, 0.0, v7);
      CGContextScaleCTM(v10, a4, -a4);
      CGContextGetCTM(&v19, v10);
      CGContextSetBaseCTM();
    }

    else
    {
      CGContextScaleCTM(v17, a4, a4);
    }
  }

  return v10;
}

- (void)renderEdgeEffect:(id)a3 withTraits:(id)a4
{
  v109 = a3;
  v6 = a4;
  v7 = [v6 geometry];
  [v7 paddedFrame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if ([v109 isValid])
  {
    v111.origin.x = v9;
    v111.origin.y = v11;
    v111.size.width = v13;
    v111.size.height = v15;
    if (!CGRectIsEmpty(v111))
    {
      if (self->_colorDetectMode)
      {
        [(UIKBRenderer *)self detectColorsForEffect:v109];
        goto LABEL_54;
      }

      v16 = [(UIKBRenderer *)self context];
      v17 = [v7 roundRectCorners];
      [v7 roundRectRadius];
      v108 = v18;
      [v109 insets];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      [v7 displayFrame];
      v27 = fabs(v20);
      v106 = v24;
      v28 = fabs(v22);
      *v107 = v29 - v28;
      *&v107[8] = v30 - v27;
      *&v107[16] = v31 - (-v28 - fabs(v26));
      *&v107[24] = v32 - (-fabs(v24) - v27);
      if ([v109 edges] == 15)
      {
        if ((v17 + 1) < 2)
        {
          CGContextSaveGState(v16);
          v33 = [v109 CGColor];
          CGContextSetStrokeColorWithColor(v16, v33);
          v34 = [v6 variantGeometries];
          if (v34)
          {
            v35 = v34;
            if ([v7 detachedVariants])
            {

LABEL_45:
              if ([v7 flickDirection] != -3)
              {
                v102 = [(UIKBRenderer *)self context];
                v114.origin.x = v9 + -0.25;
                v114.origin.y = v11 + -0.25;
                v114.size.width = v13 + 0.5;
                v114.size.height = v15 + 0.5;
                CGContextAddRect(v102, v114);
              }

              [(UIKBRenderer *)self addPathForTraits:v6 displayRect:0];
              [v109 weight];
              CGContextSetLineWidth(v16, v103);
              CGContextStrokePath(v16);
              goto LABEL_51;
            }

            v97 = [v7 flickDirection];

            if (v97 != -3)
            {
              goto LABEL_45;
            }
          }

          if ([v7 flickDirection] == -3)
          {
            if (v108 == 0.0 && !v17)
            {
              v98 = v11 + v20;
              v99 = v13 - (v22 + v26);
              [(UIKBRenderer *)self addRoundRect:0 radius:v9 + v22 corners:v98, v99, v15 - (v20 + v106), 0.0];
              v100 = [v109 edges];
              [v109 weight];
              [(UIKBRenderer *)self addRoundRect:0 radius:UIRectInsetEdges(v100 corners:v9 + v22, v98, v99, v15 - (v20 + v106), v101)];
              CGContextEOClip(v16);
              CGContextSetFillColorWithColor(v16, v33);
              CGContextFillRect(v16, *v107);
LABEL_51:
              v96 = v33;
              goto LABEL_52;
            }

            v104 = [v7 copy];
            [v104 applyInsets:{v20, v22, v24, v26}];
            [(UIKBRenderer *)self addPathForRenderGeometry:v104];
          }

          else
          {
            v104 = [v7 copy];
            [v104 applyInsets:{v20, v22, v24, v26}];
            [(UIKBRenderer *)self addPathForFlickGeometry:v104];
          }

          [v109 weight];
          CGContextSetLineWidth(v16, v105);
          CGContextStrokePath(v16);

          goto LABEL_51;
        }

        v36 = 0;
        v37 = v108 == 0.0;
      }

      else
      {
        v36 = v17 == 0;
        v37 = v108 == 0.0;
        if (v108 == 0.0 && !v17)
        {
          CGContextSaveGState(v16);
          [(UIKBRenderer *)self addRoundRect:0 radius:v9 corners:v11, v13, v15, 0.0];
          [(UIKBRenderer *)self addRoundRect:0 radius:v9 + v22 corners:v11 + v20, v13 - (v22 + v26), v15 - (v20 + v24), 0.0];
          CGContextEOClip(v16);
          v38 = [v109 gradient];

          if (v38)
          {
            v39 = [v109 gradient];
            [v7 displayFrame];
            v44 = self;
            v45 = v39;
LABEL_38:
            [(UIKBRenderer *)v44 _drawLinearGradient:v45 inRect:v40, v41, v42, v43];

LABEL_53:
            CGContextRestoreGState(v16);
            goto LABEL_54;
          }

LABEL_39:
          v95 = [v109 CGColor];
          CGContextSetFillColorWithColor(v16, v95);
          CGContextFillRect(v16, *v107);
          v96 = v95;
LABEL_52:
          CGColorRelease(v96);
          goto LABEL_53;
        }
      }

      CGContextSaveGState(v16);
      [v109 insets];
      v50 = v46;
      v51 = v47;
      v52 = v48;
      v53 = v49;
      if (v37 || v36)
      {
        v81 = v9 + v47;
        v82 = v11 + v46;
        v83 = v13 - (v47 + v49);
        v84 = v15 - (v46 + v48);
        v85 = [v109 edges];
        [v109 weight];
        v87 = UIRectInsetEdges(v85, v81, v82, v83, v84, v86);
        v89 = v88;
        v91 = v90;
        v93 = v92;
        v112.origin.x = v81;
        v112.origin.y = v82;
        v112.size.width = v83;
        v112.size.height = v84;
        CGContextAddRect(v16, v112);
        v113.origin.x = v87;
        v113.origin.y = v89;
        v113.size.width = v91;
        v113.size.height = v93;
        CGContextAddRect(v16, v113);
      }

      else
      {
        v54 = 0.0;
        if ([v7 popupBias])
        {
          v55 = 0.0;
        }

        else
        {
          v55 = v50;
        }

        v56 = [v7 copy];
        [v56 paddedFrame];
        v59 = v51 + v53;
        [v56 setPaddedFrame:{v51 + v57, v55 + v58, v60 - v59, v61 - (v52 + v55)}];
        [v56 displayFrame];
        [v56 setDisplayFrame:{v51 + v62, v50 + v63, v64 - v59, v65 - (v50 + v52)}];
        [(UIKBRenderer *)self addPathForRenderGeometry:v56];
        v66 = [v109 edges];
        [v109 weight];
        if (v66)
        {
          v68 = v67;
        }

        else
        {
          v68 = 0.0;
        }

        if ((v66 & 2) != 0)
        {
          v69 = v67;
        }

        else
        {
          v69 = 0.0;
        }

        if ((v66 & 4) != 0)
        {
          v70 = v67;
        }

        else
        {
          v70 = 0.0;
        }

        if ((v66 & 8) != 0)
        {
          v71 = v67;
        }

        else
        {
          v71 = 0.0;
        }

        if (![v7 popupBias])
        {
          v54 = v68;
        }

        [v56 paddedFrame];
        v74 = v69 + v71;
        [v56 setPaddedFrame:{v69 + v72, v54 + v73, v75 - v74, v76 - (v70 + v54)}];
        [v56 displayFrame];
        [v56 setDisplayFrame:{v69 + v77, v68 + v78, v79 - v74, v80 - (v68 + v70)}];
        [(UIKBRenderer *)self addPathForRenderGeometry:v56];
      }

      CGContextEOClip(v16);
      v94 = [v109 gradient];

      if (v94)
      {
        v39 = [v109 gradient];
        v44 = self;
        v45 = v39;
        v40 = *v107;
        v41 = *&v107[8];
        v42 = *&v107[16];
        v43 = *&v107[24];
        goto LABEL_38;
      }

      goto LABEL_39;
    }
  }

LABEL_54:
}

- (void)renderShadowEffect:(id)a3 withTraits:(id)a4
{
  v54 = a3;
  v6 = a4;
  v7 = [v6 geometry];
  if ([v54 isValid])
  {
    [v7 displayFrame];
    if (!CGRectIsEmpty(v57))
    {
      if (self->_colorDetectMode)
      {
        [(UIKBRenderer *)self detectColorsForEffect:v54];
        goto LABEL_35;
      }

      v8 = [(UIKBRenderer *)self context];
      CGContextSaveGState(v8);
      v9 = [v54 CGColor];
      [v54 offset];
      v11 = v10;
      v13 = v12;
      [v54 weight];
      v15 = v14;
      v56.width = v11;
      v56.height = v13;
      CGContextSetShadowWithColor(v8, v56, v15, v9);
      CGColorRelease(v9);
      v16 = +[UIColor whiteColor];
      CGContextSetFillColorWithColor(v8, [v16 CGColor]);

      v17 = v6;
      [v54 insets];
      if (v21 == 0.0 && v18 == 0.0 && v20 == 0.0 && v19 == 0.0)
      {
        goto LABEL_34;
      }

      v22 = [v7 copy];
      v23 = [v17 variantGeometries];
      if (!v23 || [v7 popupBias])
      {
        [v54 insets];
        [v22 applyShadowInsets:?];
        v24 = v23;
LABEL_33:
        v51 = [UIKBRenderTraits traitsWithGeometry:v22];

        [v51 setVariantGeometries:v24];
        v17 = v51;
LABEL_34:
        [(UIKBRenderer *)self addPathForTraits:v17 displayRect:0];
        CGContextFillPath(v8);
        CGContextRestoreGState(v8);

        goto LABEL_35;
      }

      v52 = v17;
      v53 = v22;
      v24 = [MEMORY[0x1E695DF70] array];
      if (![v23 count])
      {
LABEL_32:

        v17 = v52;
        v22 = v53;
        goto LABEL_33;
      }

      v25 = 0;
      v26 = 0x1E695D000uLL;
      while (1)
      {
        v27 = [v23 objectAtIndex:v25];
        v28 = [*(v26 + 4016) null];

        if (v27 != v28)
        {
          break;
        }

        v38 = [*(v26 + 4016) null];
LABEL_31:
        [v24 addObject:v38];

        ++v25;
        v26 = 0x1E695D000;
        if (v25 >= [v23 count])
        {
          goto LABEL_32;
        }
      }

      if (!v25)
      {
        v38 = [v27 copy];
        [v54 concaveInsets];
        v43 = v38;
LABEL_30:
        [v43 applyInsets:{v39, v40, v41, v42}];
        goto LABEL_31;
      }

      [v54 insets];
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;
      if (v25 > 2)
      {
        if (v25 != 3)
        {
          if (v25 == 4)
          {
            [v54 concaveInsets];
            v36 = -v44;
            goto LABEL_25;
          }

LABEL_29:
          v43 = [v27 copy];
          v38 = v43;
          v39 = v30;
          v40 = v32;
          v41 = v34;
          v42 = v36;
          goto LABEL_30;
        }

        [v54 concaveInsets];
        v30 = -v48;
      }

      else
      {
        if (v25 != 1)
        {
          if (v25 == 2)
          {
            [v54 concaveInsets];
            v32 = -v37;
LABEL_25:
            [v54 concaveInsets];
            v30 = v45;
            [v54 concaveInsets];
            v34 = v46;
            goto LABEL_29;
          }

          goto LABEL_29;
        }

        [v54 concaveInsets];
        v34 = -v47;
      }

      [v54 concaveInsets];
      v32 = v49;
      [v54 concaveInsets];
      v36 = v50;
      goto LABEL_29;
    }
  }

LABEL_35:
}

- (void)renderDivotEffect:(id)a3 withTraits:(id)a4
{
  v5 = a4;
  v25 = _UIImageWithName(@"spacekey_grabber_handles.png");
  v6 = [v5 geometry];

  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [v25 size];
  v16 = v15;
  v18 = v17;
  v19 = v10 + (v14 - v17) * 0.5 + -1.0;
  v20 = [(UIKBRenderer *)self context];
  v21 = v25;
  v22 = [v25 CGImage];
  v27.origin.x = v8 + 8.0;
  v27.origin.y = v19;
  v27.size.width = v16;
  v27.size.height = v18;
  CGContextDrawImage(v20, v27, v22);
  v23 = v25;
  v24 = [v25 CGImage];
  v28.origin.x = v8 + v12 - v16 + -8.0;
  v28.origin.y = v19;
  v28.size.width = v16;
  v28.size.height = v18;
  CGContextDrawImage(v20, v28, v24);
}

- (void)_drawLinearGradient:(id)a3 inRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  if (v9)
  {
    v16 = v9;
    v10 = [v9 horizontal];
    v11 = y + height;
    if (v10)
    {
      v12 = x + width;
    }

    else
    {
      v12 = x;
    }

    if (v10)
    {
      v13 = y;
    }

    else
    {
      v13 = v11;
    }

    v14 = [v16 CGGradient];
    if (self->_colorDetectMode)
    {
      [(UIKBRenderer *)self detectColorsForGradient:v16];
    }

    else if ([(UIKBRenderer *)self context])
    {
      v15 = [(UIKBRenderer *)self context];
      v18.x = x;
      v18.y = y;
      v19.x = v12;
      v19.y = v13;
      CGContextDrawLinearGradient(v15, v14, v18, v19, 0);
    }

    CGGradientRelease(v14);
    v9 = v16;
  }
}

- (void)renderBackgroundTraits:(id)a3 allowCaching:(BOOL)a4
{
  v4 = a4;
  v81 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(UIKBRenderer *)self renderFlags];
  v8 = [(UIKBRenderer *)self renderFlags];
  v60 = [(UIKBRenderer *)self renderFlags];
  v61 = [v6 backgroundGradient];
  v63 = [v6 layeredBackgroundGradient];
  v64 = [v6 layeredForegroundGradient];
  v62 = [v6 renderEffects];
  v9 = (v8 >> 1) & 1;
  if ([v6 blendForm] != 3)
  {
    goto LABEL_9;
  }

  if ([(UIKBRenderer *)self renderFlags]== 2)
  {
    LODWORD(v9) = 0;
    v7 = 1;
    goto LABEL_9;
  }

  if ([(UIKBRenderer *)self renderFlags]== 1)
  {

    v10 = [v6 foregroundRenderEffects];
    v61 = v64;
  }

  else
  {
    if ([(UIKBRenderer *)self renderFlags]!= 4)
    {
      goto LABEL_9;
    }

    v10 = 0;
  }

  v64 = 0;
  v62 = v10;
LABEL_9:
  if (v63)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  v59 = v11;
  v12 = (v64 != 0) & (v60 >> 2);
  if ([v6 blendForm] == 1)
  {
    v12 &= [v6 controlOpacities] ^ 1;
  }

  if (((v7 | v9) & 1) == 0 && !v12)
  {
    goto LABEL_92;
  }

  v13 = [v6 geometry];
  [v13 displayFrame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v78.origin.x = v14;
  v78.origin.y = v16;
  v78.size.width = v18;
  v78.size.height = v20;

  v22 = [(UIKBRenderer *)self renderFlags];
  if (self->_colorDetectMode)
  {
    goto LABEL_17;
  }

  v24 = v22;
  v57 = 0;
  if (![(UIKBRenderer *)self disableInternalCaching])
  {
    v25 = v24 & 3;
    if ((v24 & 3) != 0 && v4)
    {
      v26 = [v6 hashString];
      if (!v26 || (cachingContext = self->_cachingContext, v26, cachingContext))
      {
LABEL_17:
        v57 = 0;
        goto LABEL_18;
      }

      if (qword_1ED49F170 != -1)
      {
        dispatch_once(&qword_1ED49F170, &__block_literal_global_360);
      }

      v28 = [v6 hashString];
      v57 = [v28 stringByAppendingFormat:@"%d", v25];

      v29 = [_MergedGlobals_1178 objectForKey:v57];
      if (v29)
      {
        BlendMode = CGContextGetBlendMode();
        CGContextSetBlendMode(self->_ctx, kCGBlendModeCopy);
        ctx = self->_ctx;
        v32 = [v29 CGImage];
        v82.origin.x = v15;
        v82.origin.y = v17;
        v82.size.width = v19;
        v82.size.height = v21;
        CGContextDrawImage(ctx, v82, v32);
        CGContextSetBlendMode(self->_ctx, BlendMode);
        [v29 CGImage];
        v33 = CGImageGetProperty();
        v34 = [v33 integerValue];
        if (v34 < self->_contentColorFormat)
        {
          self->_contentColorFormat = v34;
        }

        if ([v29 hasFormatColor])
        {
          v35 = [v29 formatColor];
          -[UIKBRenderer _addDetectedColor:](self, "_addDetectedColor:", [v35 CGColor]);
        }

        v36 = v57;
        goto LABEL_91;
      }

      v52 = objc_opt_class();
      [(UIKBRenderer *)self scale];
      v54 = [v52 imageContextWithSize:self->_forceColorFormat scale:0 colorFormat:0 opaque:v19 invert:v21, v53];
      self->_cachingContext = v54;
      CGAffineTransformMakeTranslation(&location, -v15, -v17);
      CGContextConcatCTM(v54, &location);
    }
  }

LABEL_18:
  if (v7)
  {
    v23 = ([v6 blurBlending] & 1) != 0 || objc_msgSend(v6, "blendForm") == 3;
    LODWORD(v58) = v23;
    if (!v9)
    {
      goto LABEL_39;
    }
  }

  else
  {
    LODWORD(v58) = 0;
    if (!v9)
    {
      goto LABEL_39;
    }
  }

  if (([v6 blurBlending] & 1) == 0)
  {
    LODWORD(v56) = [v6 blendForm] != 3;
    goto LABEL_41;
  }

LABEL_39:
  LODWORD(v56) = 0;
LABEL_41:
  if ([v6 renderFlagsForAboveEffects])
  {
    v58 = [v6 renderFlagsForAboveEffects];
    v55 = ([(UIKBRenderer *)self renderFlags]& v58) != 0;
    v56 = (v58 >> 1) & 1;
    if (!v9)
    {
      goto LABEL_63;
    }
  }

  else
  {
    v55 = 0;
    if (!v9)
    {
      goto LABEL_63;
    }
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v37 = v62;
  v38 = [v37 countByEnumeratingWithState:&v73 objects:v80 count:16];
  if (!v38)
  {

    goto LABEL_63;
  }

  v39 = 0;
  v40 = *v74;
  do
  {
    v41 = 0;
    do
    {
      if (*v74 != v40)
      {
        objc_enumerationMutation(v37);
      }

      v42 = *(*(&v73 + 1) + 8 * v41);
      if ([v42 renderUnder])
      {
        if (v39)
        {
          goto LABEL_54;
        }

        if ([(UIKBRenderer *)self context])
        {
          CGContextSaveGState([(UIKBRenderer *)self context]);
          v43 = [(UIKBRenderer *)self context];
          CGContextAddRect(v43, v78);
          [(UIKBRenderer *)self addPathForTraits:v6 displayRect:0];
          CGContextEOClip([(UIKBRenderer *)self context]);
LABEL_54:
          v39 = 1;
        }

        else
        {
          v39 = 0;
        }

        [v42 renderEffectWithRenderer:self traits:v6];
      }

      ++v41;
    }

    while (v38 != v41);
    v44 = [v37 countByEnumeratingWithState:&v73 objects:v80 count:16];
    v38 = v44;
  }

  while (v44);

  if (v39)
  {
    CGContextRestoreGState([(UIKBRenderer *)self context]);
  }

LABEL_63:
  if ((v7 | v59 | v12))
  {
    if ([(UIKBRenderer *)self context])
    {
      CGContextSaveGState([(UIKBRenderer *)self context]);
      [(UIKBRenderer *)self addPathForTraits:v6 displayRect:&v78];
      if (!CGContextIsPathEmpty([(UIKBRenderer *)self context]))
      {
        CGContextClip([(UIKBRenderer *)self context]);
      }
    }

    if (v59)
    {
      [(UIKBRenderer *)self _drawLinearGradient:v63 inRect:*&v78.origin, *&v78.size];
    }

    if (v7)
    {
      [(UIKBRenderer *)self _drawLinearGradient:v61 inRect:*&v78.origin, *&v78.size];
    }

    if (v12)
    {
      [(UIKBRenderer *)self _drawLinearGradient:v64 inRect:*&v78.origin, *&v78.size];
    }

    if ([(UIKBRenderer *)self context])
    {
      CGContextRestoreGState([(UIKBRenderer *)self context]);
    }
  }

  if ((v56 | v58 | v55))
  {
    v72 = 0u;
    v70 = 0u;
    v71 = 0u;
    v69 = 0u;
    v45 = v62;
    v46 = [v45 countByEnumeratingWithState:&v69 objects:v79 count:16];
    if (v46)
    {
      v47 = *v70;
      do
      {
        for (i = 0; i != v46; ++i)
        {
          if (*v70 != v47)
          {
            objc_enumerationMutation(v45);
          }

          v49 = *(*(&v69 + 1) + 8 * i);
          if (([v49 renderUnder] & 1) == 0)
          {
            [v49 renderEffectWithRenderer:self traits:v6];
          }
        }

        v46 = [v45 countByEnumeratingWithState:&v69 objects:v79 count:16];
      }

      while (v46);
    }
  }

  v36 = v57;
  if (v57 && !self->_cachingContextCompletion)
  {
    objc_initWeak(&location, self);
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __52__UIKBRenderer_renderBackgroundTraits_allowCaching___block_invoke_2;
    v65[3] = &unk_1E7114698;
    objc_copyWeak(&v67, &location);
    v65[4] = self;
    v36 = v57;
    v66 = v36;
    v68 = v78;
    v50 = [v65 copy];
    cachingContextCompletion = self->_cachingContextCompletion;
    self->_cachingContextCompletion = v50;

    if ((v60 >> 2))
    {
      [(UIKBRenderer *)self _completeCacheImageWithTraitsIfNecessary:v6];
    }

    objc_destroyWeak(&v67);
    objc_destroyWeak(&location);
  }

LABEL_91:

LABEL_92:
}

uint64_t __52__UIKBRenderer_renderBackgroundTraits_allowCaching___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = _MergedGlobals_1178;
  _MergedGlobals_1178 = v0;

  v2 = _MergedGlobals_1178;

  return [v2 setCountLimit:50];
}

void __52__UIKBRenderer_renderBackgroundTraits_allowCaching___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    Image = CGBitmapContextCreateImage(WeakRetained[1]);
    CGContextRelease(v7[1]);
    v7[1] = 0;
    if (Image)
    {
      [MEMORY[0x1E696AD98] numberWithInteger:v7[11]];
      CGImageSetProperty();
      v4 = [(UIImage *)[UIKBCachedImage alloc] initWithCGImage:Image];
      if ([*(a1 + 32) contentColorFormat] == 2)
      {
        v5 = [(CGContextRef *)v7 singleColor];
        [(UIKBCachedImage *)v4 setFormatColor:v5];
      }

      [_MergedGlobals_1178 setObject:v4 forKey:*(a1 + 40)];
      BlendMode = CGContextGetBlendMode();
      CGContextSetBlendMode(v7[6], kCGBlendModeCopy);
      CGContextDrawImage(v7[6], *(a1 + 56), Image);
      CGContextSetBlendMode(v7[6], BlendMode);
    }

    CGImageRelease(Image);
    WeakRetained = v7;
  }
}

- (BOOL)loadCachedImageForHashString:(id)a3
{
  v4 = a3;
  v5 = 0;
  if (v4 && _MergedGlobals_1178)
  {
    v6 = [(UIKBRenderer *)self cacheKey];

    if (v6)
    {
      v5 = 0;
    }

    else
    {
      v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[UIKBRenderer renderFlags](self, "renderFlags")}];
      v8 = [v7 stringValue];
      v9 = [v4 stringByAppendingString:v8];

      v10 = [_MergedGlobals_1178 objectForKey:v9];
      if (v10)
      {
        v11 = [UIKBCachedImage alloc];
        v12 = [v10 CGImage];
        [(UIKBRenderer *)self scale];
        v13 = [(UIImage *)v11 initWithCGImage:v12 scale:1 orientation:?];
        renderedImage = self->_renderedImage;
        self->_renderedImage = v13;
      }

      v5 = self->_renderedImage != 0;
    }
  }

  return v5;
}

- (void)_completeCacheImageWithTraitsIfNecessary:(id)a3
{
  v4 = [a3 hashString];
  if (v4)
  {
    cachingContextCompletion = self->_cachingContextCompletion;

    if (cachingContextCompletion)
    {
      (*(self->_cachingContextCompletion + 2))();
      v6 = self->_cachingContextCompletion;
      self->_cachingContextCompletion = 0;
    }
  }
}

- (void)renderBackgroundTraits:(id)a3
{
  v4 = a3;
  [(UIKBRenderer *)self ensureContext];
  [(UIKBRenderer *)self renderBackgroundTraits:v4 allowCaching:0];
}

- (void)renderKeyContents:(id)a3 withTraits:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(UIKBRenderer *)self ensureContext];
  ctx = self->_ctx;
  if (ctx)
  {
    CGContextSaveGState(ctx);
  }

  [(UIKBRenderer *)self renderBackgroundTraits:v7 allowCaching:1];
  if ([v6 stringKeycapOverImage])
  {
    v9 = [(UIKBRenderer *)self renderKeyStringContents:v6 withTraits:v7 status:0];
    if (v9 != 3 && ![(UIKBRenderer *)self renderKeyImageContents:v6 withTraits:v7 status:v9])
    {
LABEL_9:
      [(UIKBRenderer *)self renderKeyPathContents:v6 withTraits:v7];
    }
  }

  else
  {
    v10 = [(UIKBRenderer *)self renderKeyImageContents:v6 withTraits:v7 status:0];
    if (v10 != 3 && ![(UIKBRenderer *)self renderKeyStringContents:v6 withTraits:v7 status:v10])
    {
      goto LABEL_9;
    }
  }

  v11 = self->_ctx;
  if (v11)
  {
    CGContextRestoreGState(v11);
  }

  v12 = [v7 geometry];
  if (!v12 || (v13 = v12, [v7 geometry], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "flickDirection"), v14, v13, v15 == -3))
  {
    v16 = [v6 variantDisplayContents];

    [(UIKBRenderer *)self _completeCacheImageWithTraitsIfNecessary:v7];
    if (!v16)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v17 = [v7 variantGeometries];
  if (v17)
  {
    v18 = v17;
    v19 = [v6 variantDisplayContents];

    if (v19)
    {
      [(UIKBRenderer *)self _completeCacheImageWithTraitsIfNecessary:v7];
LABEL_19:
      [(UIKBRenderer *)self _renderVariantsFromKeyContents:v6 withTraits:v7];
      goto LABEL_20;
    }
  }

  v20 = [v7 variantTraits];
  v21 = [v20 geometry];

  if (v21)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v22 = [v6 highlightedVariantsList];
    v23 = [v22 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v32;
      do
      {
        v26 = 0;
        do
        {
          if (*v32 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v31 + 1) + 8 * v26);
          v28 = [v6 variantDisplayContents];
          v29 = [v28 objectAtIndex:{objc_msgSend(v27, "unsignedIntegerValue")}];

          v30 = [v7 variantTraits];
          [(UIKBRenderer *)self renderKeyContents:v29 withTraits:v30];

          ++v26;
        }

        while (v24 != v26);
        v24 = [v22 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v24);
    }

    [(UIKBRenderer *)self _completeCacheImageWithTraitsIfNecessary:v7];
  }

LABEL_20:
}

- (void)_renderVariantsFromKeyContents:(id)a3 withTraits:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 variantDisplayContents];
  v8 = [v7 count];
  v9 = [v6 variantGeometries];
  v10 = [v9 count];

  if (v8 != v10)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v26 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v29 = v5;
        _os_log_fault_impl(&dword_188A29000, v26, OS_LOG_TYPE_FAULT, "keyboard: number of popups didn't match number of geometries: %@", buf, 0xCu);
      }
    }

    else
    {
      v25 = *(__UILogGetCategoryCachedImpl("Assert", &_renderVariantsFromKeyContents_withTraits____s_category) + 8);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v29 = v5;
        _os_log_impl(&dword_188A29000, v25, OS_LOG_TYPE_ERROR, "keyboard: number of popups didn't match number of geometries: %@", buf, 0xCu);
      }
    }
  }

  v11 = [v5 variantDisplayContents];
  v12 = [v11 count];

  v13 = [v6 variantGeometries];
  v14 = [v13 count];

  if (v12 >= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    for (i = 0; i != v15; ++i)
    {
      v17 = [v5 variantDisplayContents];
      v18 = [v17 objectAtIndex:i];

      v19 = [MEMORY[0x1E695DFB0] null];

      if (v18 != v19)
      {
        v20 = [v5 highlightedVariantsList];
        v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
        if ([v20 containsObject:v21])
        {
          [v6 highlightedVariantTraits];
        }

        else
        {
          [v6 variantTraits];
        }
        v22 = ;

        v23 = [v6 variantGeometries];
        v24 = [v23 objectAtIndex:i];
        [v22 setGeometry:v24];

        [(UIKBRenderer *)self renderKeyContents:v18 withTraits:v22];
      }
    }
  }
}

- (void)_drawKeyImage:(id)a3 inRect:(CGRect)a4 withStyle:(id)a5 force1xImages:(BOOL)a6 flipHorizontally:(BOOL)a7 isRGBImage:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v10 = a6;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v59 = a3;
  v17 = a5;
  colorDetectMode = self->_colorDetectMode;
  v19 = [v17 textColor];
  v20 = v19;
  if (!colorDetectMode)
  {
    v21 = UIKBGetNamedColor(v19);

    v20 = [UIColor colorWithCGColor:v21];
    [v17 textOpacity];
    if (v22 != 1.0)
    {
      [v17 textOpacity];
      v23 = [v20 colorWithAlphaComponent:?];

      v20 = v23;
    }

    if (v8)
    {
      v24 = v59;
    }

    else
    {
      v24 = [v59 _flatImageWithColor:v20];
    }

    v25 = v24;
    [v59 scale];
    v27 = v26;
    [v25 size];
    v29 = v28;
    v31 = v30;
    if ([v59 isSymbolImage])
    {
      [v59 contentInsets];
      v33 = v32;
      [v59 contentInsets];
      v31 = v31 - (v33 + v34);
      [v59 contentInsets];
      v36 = v35;
      [v59 contentInsets];
      v29 = v29 - (v36 + v37);
    }

    if (v10)
    {
      v31 = v27 * v31;
      v29 = v27 * v29;
    }

    if (v29 > width || v31 > height)
    {
      v39 = width / v29;
      if (width / v29 >= height / v31)
      {
        v39 = height / v31;
      }

      v29 = v29 * v39;
      v31 = v31 * v39;
    }

    [v17 imageScale];
    if (v40 != 1.0)
    {
      [v17 imageScale];
      v29 = v29 * v41;
      [v17 imageScale];
      v31 = v31 * v42;
    }

    if (![v17 anchorCorner])
    {
      v46 = v27 * (width - v29) * 0.5;
      v47 = x + fabsf(roundf(v46)) / v27;
      [v17 textOffset];
      v44 = v47 + v48;
      *&v48 = v27 * (height - v31) * 0.5;
      v45 = fabsf(roundf(*&v48)) / v27 - y;
      goto LABEL_26;
    }

    if ([v17 anchorCorner] == 1)
    {
      [v17 textOffset];
      v44 = x + v43;
LABEL_24:
      v45 = height - y - v31;
LABEL_26:
      [v17 textOffset];
      v50 = v45 - v49;
LABEL_30:
      if (v9)
      {
        v53 = -v44 - v29;
      }

      else
      {
        v53 = v44;
      }

      if (v9)
      {
        v54 = -1.0;
      }

      else
      {
        v54 = 1.0;
      }

      CGContextSaveGState(self->_ctx);
      CGContextTranslateCTM(self->_ctx, 0.0, height);
      CGContextScaleCTM(self->_ctx, v54, -1.0);
      ctx = self->_ctx;
      v56 = [v25 CGImage];
      v61.origin.x = v53;
      v61.origin.y = v50;
      v61.size.width = v29;
      v61.size.height = v31;
      CGContextDrawImage(ctx, v61, v56);
      CGContextRestoreGState(self->_ctx);

      goto LABEL_37;
    }

    if ([v17 anchorCorner] == 4)
    {
      [v17 textOffset];
      v44 = x + v51;
    }

    else
    {
      if ([v17 anchorCorner] == 2)
      {
        [v17 textOffset];
        v44 = x + width - v29 - v57;
        goto LABEL_24;
      }

      v50 = 0.0;
      v44 = 0.0;
      if ([v17 anchorCorner] != 8)
      {
        goto LABEL_30;
      }

      [v17 textOffset];
      v44 = x + width - v29 - v58;
    }

    [v17 textOffset];
    v50 = v52 - y;
    goto LABEL_30;
  }

  [(UIKBRenderer *)self detectColorsForNamedColor:v19];
LABEL_37:
}

- (unint64_t)renderKeyImageContents:(id)a3 withTraits:(id)a4 status:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  v64 = a5;
  if (([(UIKBRenderer *)self renderFlags]& 0x34) != 0)
  {
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __57__UIKBRenderer_renderKeyImageContents_withTraits_status___block_invoke;
    v59[3] = &unk_1E710C078;
    v59[4] = self;
    v10 = v9;
    v60 = v10;
    v51 = [UITraitCollection traitCollectionWithTraits:v59];
    if ((a5 & 2) == 0)
    {
      v11 = [v8 secondaryDisplayStringImages];
      if ([v11 count])
      {
        v12 = [v10 secondarySymbolStyles];
        v13 = [v12 count];

        if (v13)
        {
          v14 = [v8 secondaryDisplayStringImages];
          v15 = [v14 count];

          v16 = [v10 secondarySymbolStyles];
          v17 = [v16 count];

          if ([v10 renderSecondarySymbolsSeparately])
          {
            if (([(UIKBRenderer *)self renderFlags]& 0x20) != 0)
            {
              v18 = 1;
              goto LABEL_32;
            }

            if (([(UIKBRenderer *)self renderFlags]& 0x10) != 0)
            {
              v18 = 0;
LABEL_32:
              if (v18 >= v15)
              {
                v41 = 0;
                v40 = 0;
              }

              else
              {
                v39 = [v8 secondaryDisplayStringImages];
                v40 = [v39 objectAtIndex:v18];

                if (v40)
                {
                  v41 = _UIImageWithNameAndTraitCollection(v40, v51);
                }

                else
                {
                  v41 = 0;
                }
              }

              if (v18 >= v17 || ([v10 secondarySymbolStyles], v42 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v42, "objectAtIndex:", v18), v43 = objc_claimAutoreleasedReturnValue(), v42, !v43))
              {
                v44 = [v10 secondarySymbolStyles];
                v43 = [v44 lastObject];
              }

              if (v41)
              {
                v45 = [v10 geometry];
                [v45 symbolFrame];
                -[UIKBRenderer _drawKeyImage:inRect:withStyle:force1xImages:flipHorizontally:isRGBImage:](self, "_drawKeyImage:inRect:withStyle:force1xImages:flipHorizontally:isRGBImage:", v41, v43, [v8 force1xImages], objc_msgSend(v8, "flipImageHorizontally"), 0, v46, v47, v48, v49);

                v62[3] = 3;
              }
            }
          }

          else
          {
            v33 = [v8 secondaryDisplayStringImages];
            v52[0] = MEMORY[0x1E69E9820];
            v52[1] = 3221225472;
            v52[2] = __57__UIKBRenderer_renderKeyImageContents_withTraits_status___block_invoke_2;
            v52[3] = &unk_1E71146C0;
            v52[4] = self;
            v57 = 52;
            v58 = v17;
            v53 = v10;
            v54 = v51;
            v55 = v8;
            v56 = &v61;
            [v33 enumerateObjectsUsingBlock:v52];
          }

LABEL_43:
          v19 = v62[3];
          goto LABEL_44;
        }
      }

      else
      {
      }
    }

    if (a5)
    {
      goto LABEL_43;
    }

    v20 = [v8 displayStringImage];
    v21 = [v10 symbolStyle];
    if ([v21 usesSymbolImage])
    {
      v22 = [(UIKBRenderer *)self symbolImageConfigForKey:v10 traitCollection:v51];
      v23 = [v8 bundlePathOverride];

      if (v23)
      {
        v24 = MEMORY[0x1E696AAE8];
        v25 = [v8 bundlePathOverride];
        v26 = [v24 bundleWithPath:v25];

        v27 = [UIImage imageNamed:v20 inBundle:v26 withConfiguration:v22];
        v28 = [v27 imageWithRenderingMode:{-[UIKBRenderer symbolImageRenderingModeForIdiom:](self, "symbolImageRenderingModeForIdiom:", -[UIKBRenderer assetIdiom](self, "assetIdiom"))}];
      }

      else
      {
        v26 = [UIImage _systemImageNamed:v20 withConfiguration:v22];
        v28 = [v26 imageWithRenderingMode:{-[UIKBRenderer symbolImageRenderingModeForIdiom:](self, "symbolImageRenderingModeForIdiom:", -[UIKBRenderer assetIdiom](self, "assetIdiom"))}];
      }
    }

    else
    {
      v29 = [v8 displayImage];

      if (v29)
      {
        v28 = [v8 displayImage];
        v30 = 1;
        if (v28)
        {
          goto LABEL_24;
        }

        goto LABEL_17;
      }

      v28 = _UIImageWithNameAndTraitCollection(v20, v51);
    }

    v30 = 0;
    if (v28)
    {
LABEL_24:
      v32 = v20;
      if (!v28)
      {
        goto LABEL_30;
      }

      goto LABEL_28;
    }

LABEL_17:
    v31 = [v8 fallbackContents];
    v32 = [v31 displayStringImage];

    if ([v21 usesSymbolImage])
    {
      [UIImage systemImageNamed:v32 compatibleWithTraitCollection:v51];
    }

    else
    {
      _UIImageWithNameAndTraitCollection(v32, v51);
    }
    v28 = ;
    if (!v28)
    {
      goto LABEL_30;
    }

LABEL_28:
    if (v21)
    {
      v34 = [v10 geometry];
      [v34 symbolFrame];
      -[UIKBRenderer _drawKeyImage:inRect:withStyle:force1xImages:flipHorizontally:isRGBImage:](self, "_drawKeyImage:inRect:withStyle:force1xImages:flipHorizontally:isRGBImage:", v28, v21, [v8 force1xImages], objc_msgSend(v8, "flipImageHorizontally"), v30, v35, v36, v37, v38);

      v62[3] = 3;
      goto LABEL_43;
    }

LABEL_30:
    v19 = v62[3];

LABEL_44:
    goto LABEL_45;
  }

  v19 = v62[3];
LABEL_45:
  _Block_object_dispose(&v61, 8);

  return v19;
}

void __57__UIKBRenderer_renderKeyImageContents_withTraits_status___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v5 setUserInterfaceIdiom:{objc_msgSend(v3, "assetIdiom")}];
  [*(a1 + 32) scale];
  [v5 setDisplayScale:?];
  if ([*(a1 + 40) usesDarkAppearance])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  [v5 setUserInterfaceStyle:v4];
  [v5 setLayoutDirection:0];
}

void __57__UIKBRenderer_renderKeyImageContents_withTraits_status___block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v15 = a2;
  if ([v15 length] && (*(a1 + 72) & objc_msgSend(*(a1 + 32), "renderFlags")) != 0)
  {
    if (*(a1 + 80) <= a3 || ([*(a1 + 40) secondarySymbolStyles], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "objectAtIndex:", a3), v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
    {
      v7 = [*(a1 + 40) secondarySymbolStyles];
      v6 = [v7 lastObject];
    }

    v8 = _UIImageWithNameAndTraitCollection(v15, *(a1 + 48));
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = [*(a1 + 40) geometry];
      [v10 symbolFrame];
      [v9 _drawKeyImage:v8 inRect:v6 withStyle:objc_msgSend(*(a1 + 56) force1xImages:"force1xImages") flipHorizontally:objc_msgSend(*(a1 + 56) isRGBImage:{"flipImageHorizontally"), 0, v11, v12, v13, v14}];

      *(*(*(a1 + 64) + 8) + 24) |= 2uLL;
    }
  }
}

- (id)symbolImageConfigForKey:(id)a3 traitCollection:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 symbolStyle];
  [v7 fontWeightForSymbolImage];
  v8 = UISIndexForFontWeight();

  if (!v8)
  {
    v9 = [v5 symbolStyle];
    [v9 fontWeight];
    v10 = UISIndexForFontWeight();

    if (v10)
    {
      v8 = v10;
    }

    else
    {
      v8 = 4;
    }
  }

  v11 = [v5 symbolStyle];
  [v11 fontSizeForSymbolImage];
  v13 = v12;

  if (v13 == 0.0)
  {
    v14 = [v5 symbolStyle];
    [v14 fontSize];
    v13 = v15;
  }

  v16 = [v5 symbolStyle];
  v17 = +[UIImageSymbolConfiguration configurationWithPointSize:weight:scale:](UIImageSymbolConfiguration, "configurationWithPointSize:weight:scale:", v8, [v16 symbolScale], v13);

  v18 = [v17 configurationWithTraitCollection:v6];

  return v18;
}

- (CGPoint)centroidOfGlyph:(CGPath *)a3
{
  v34 = *MEMORY[0x1E69E9840];
  CopyByFlattening = CGPathCreateCopyByFlattening(a3, 1.0);
  CopyByNormalizing = CGPathCreateCopyByNormalizing(CopyByFlattening, 0);
  v5 = [MEMORY[0x1E695DF70] array];
  CGPathApply(CopyByNormalizing, v5, centroidCGPathApplierFunction);
  CGPathRelease(CopyByNormalizing);
  CGPathRelease(CopyByFlattening);
  v7 = *MEMORY[0x1E695EFF8];
  v6 = *(MEMORY[0x1E695EFF8] + 8);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    v12 = 0.0;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v29 + 1) + 8 * i);
        if ([v14 count] >= 3 && objc_msgSend(v14, "count"))
        {
          v15 = 0;
          do
          {
            v16 = [v14 objectAtIndexedSubscript:v15];
            [v16 CGPointValue];
            v18 = v17;
            v20 = v19;

            v21 = [v14 objectAtIndexedSubscript:{++v15 % objc_msgSend(v14, "count")}];
            [v21 CGPointValue];
            v23 = v22;
            v25 = v24;

            v26 = (v18 * v25 - v20 * v23) * 0.5;
            v7 = v7 + (v18 + v23) / 3.0 * v26;
            v6 = v6 + (v20 + v25) / 3.0 * v26;
            v12 = v12 + v26;
          }

          while (v15 < [v14 count]);
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v10);
  }

  else
  {
    v12 = 0.0;
  }

  v27 = v7 / v12;
  v28 = v6 / v12;
  result.y = v28;
  result.x = v27;
  return result;
}

- (BOOL)_drawSingleSymbol:(id)a3 inRect:(CGRect)a4 withStyle:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3;
  v12 = a5;
  if ([v11 length] == 1)
  {
    v13 = [v11 characterAtIndex:0];
    v14 = [v12 fontName];
    [v12 fontSize];
    v16 = v15;
    [v12 fontWeight];
    [v12 fontWidth];
    v17 = UIKBGlyphForCharacterWithSymbolStyle(v13, v12);
    glyphs = v17;
    if (!v17)
    {
      goto LABEL_15;
    }

    do
    {
      v18 = UIKBCreateCTFontWithSymbolStyle(v12);
      OpticalBoundsForGlyphs = CTFontGetOpticalBoundsForGlyphs(v18, &glyphs, 0, 1, 0);
      v19 = OpticalBoundsForGlyphs.size.width;
      v20 = OpticalBoundsForGlyphs.size.width > width + -4.0;
      if (OpticalBoundsForGlyphs.size.height > height)
      {
        v20 = 1;
      }

      if (v20)
      {
        v16 = v16 + -1.0;
      }
    }

    while (v20 && v16 > 0.0);
    [v12 minFontSize];
    if (v16 >= v21)
    {
      XHeight = UIKBGetXHeight(v14, v16);
      if (XHeight == 0.0)
      {
        XHeight = CTFontGetXHeight(v18);
      }

      v23 = y + height * 0.5 + XHeight * 0.5;
      v24 = [v12 textColor];
      CopyWithAlpha = UIKBGetNamedColor(v24);

      [v12 textOpacity];
      if (v26 == 1.0)
      {
        CGColorRetain(CopyWithAlpha);
      }

      else
      {
        [v12 textOpacity];
        CopyWithAlpha = CGColorCreateCopyWithAlpha(CopyWithAlpha, v27);
      }

      v29 = floor(x + (width - ceil(v19)) * 0.5 + 0.5);
      CGContextSaveGState(self->_ctx);
      ctx = self->_ctx;
      CGAffineTransformMakeScale(&v44, 1.0, -1.0);
      CGContextSetTextMatrix(ctx, &v44);
      [v12 textOffset];
      v32 = v31;
      [v12 etchOffset];
      v44.a = v29 + v32 + v33;
      [v12 textOffset];
      v35 = v34;
      [v12 etchOffset];
      v44.b = -ceil(v23) - (v35 + v36);
      v37 = [v12 etchColor];

      if (v37)
      {
        v38 = self->_ctx;
        v39 = [v12 etchColor];
        v40 = UIKBGetNamedColor(v39);
        CGContextSetFillColorWithColor(v38, v40);

        CTFontDrawGlyphs(v18, &glyphs, &v44, 1uLL, self->_ctx);
      }

      [v12 etchOffset];
      v44.a = v44.a - v41;
      [v12 etchOffset];
      v44.b = v44.b + v42;
      CGContextSetFillColorWithColor(self->_ctx, CopyWithAlpha);
      v28 = 1;
      CTFontDrawGlyphs(v18, &glyphs, &v44, 1uLL, self->_ctx);
      CGContextRestoreGState(self->_ctx);
      CGColorRelease(CopyWithAlpha);
    }

    else
    {
LABEL_15:
      v28 = 0;
    }
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (BOOL)_drawKeyString:(id)a3 inRect:(CGRect)a4 withStyle:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  x = a4.origin.x;
  y = a4.origin.y;
  v9 = a3;
  v10 = a5;
  if (![(UIKBRenderer *)v9 length])
  {
    goto LABEL_9;
  }

  v11 = [v10 fontName];

  if (v11)
  {
    v142.origin.x = x;
    v142.origin.y = y;
    v142.size.width = width;
    v142.size.height = height;
    if (!CGRectIsEmpty(v142))
    {
      if (self->_colorDetectMode)
      {
        v13 = [v10 textColor];
        [(UIKBRenderer *)self detectColorsForNamedColor:v13];

        v14 = [v10 etchColor];
        [(UIKBRenderer *)self detectColorsForNamedColor:v14];

        if (self->_contentColorFormat)
        {
          v15 = [v10 fontName];
          v16 = [v15 isEqualToString:@"AppleColorEmoji"];

          if (v16)
          {
            self->_contentColorFormat = 0;
            self->_colorCount = 2;
            singleColor = self->_singleColor;
            self->_singleColor = 0;
          }
        }

        goto LABEL_9;
      }

      if ([v10 anchorCorner] != 1 && objc_msgSend(v10, "anchorCorner") != 4)
      {
        if ([v10 anchorCorner] != 2 && objc_msgSend(v10, "anchorCorner") != 8)
        {
          goto LABEL_17;
        }

        [v10 textOffset];
        x = x + v19;
      }

      [v10 textOffset];
      width = width - v20;
LABEL_17:
      if (!qword_1ED49F178)
      {
        v21 = [MEMORY[0x1E695DFD8] setWithObjects:{@".PhoneKeyCaps", @".Keycaps-Keys", @".KeycapsA-Keys", @".KeycapsB-Keys", @".Keycaps-Popups", @".KeycapsPad-Keys", @".KeycapsPadA-Keys", 0}];
        v22 = qword_1ED49F178;
        qword_1ED49F178 = v21;
      }

      if ([v10 selector])
      {
        goto LABEL_24;
      }

      v23 = qword_1ED49F178;
      v24 = [v10 fontName];
      if (![v23 containsObject:v24])
      {
LABEL_23:

        goto LABEL_24;
      }

      v25 = UIKeyboardGetCurrentInputMode();
      if (UIKeyboardRequiresFontFallbacksForInputMode())
      {

        goto LABEL_23;
      }

      v118 = [(UIKBRenderer *)self _drawSingleSymbol:v9 inRect:v10 withStyle:x, y, width, height];

      if (!v118)
      {
LABEL_24:
        v141[0] = 0.0;
        v128 = self;
        v134 = height;
        v135 = width;
        if ([(UIKBRenderer *)v9 rangeOfString:@"\n" options:2]== 0x7FFFFFFFFFFFFFFFLL)
        {
          [v10 fontSize];
          v27 = v26;
          v28 = 0;
          v29 = 1;
        }

        else
        {
          v28 = [(UIKBRenderer *)v9 componentsSeparatedByString:@"\n"];
          v30 = [v28 count];
          v31 = v30;
          if (v30 >= 3)
          {
            v29 = 3;
          }

          else
          {
            v29 = v30;
          }

          [v10 fontSize];
          v27 = v32;
          if (!v31)
          {
            v47 = 0;
            v35 = 0;
            v43 = 0;
            v138 = INFINITY;
            v44 = v32;
LABEL_50:
            v141[0] = v44;
            [v10 minFontSize];
            v12 = v27 >= v48;
            if (v27 < v48)
            {
              if (v43)
              {
                CFRelease(v43);
              }

              goto LABEL_120;
            }

            v127 = v9;
            v49 = [v10 textColor];
            CopyWithAlpha = UIKBGetNamedColor(v49);

            [v10 textOpacity];
            v51 = v128;
            v119 = v12;
            if (v52 == 1.0)
            {
              CGColorRetain(CopyWithAlpha);
              if (!v47)
              {
LABEL_119:
                CGColorRelease(CopyWithAlpha);
                v9 = v127;
                v12 = v119;
LABEL_120:

                goto LABEL_10;
              }
            }

            else
            {
              [v10 textOpacity];
              CopyWithAlpha = CGColorCreateCopyWithAlpha(CopyWithAlpha, v53);
              if (!v47)
              {
                goto LABEL_119;
              }
            }

            v54 = 0;
            v55 = v35 - 1;
            v123 = v44 + v44;
            v124 = y + (1.5 - v35) * v44;
            v130 = height / v35;
            v131 = v35;
            v129 = width / v35;
            v125 = floor(x + 0.5);
            v120 = width * 0.5;
            v121 = height * 0.5;
            v122 = x + (width - v138 * (v35 - 1)) * 0.5;
            v56 = -v35;
            v133 = CopyWithAlpha;
            while (1)
            {
              if ([v10 isVertical])
              {
                v57 = v55;
              }

              else
              {
                v57 = v54;
              }

              v58 = [v10 isVertical];
              v59 = v57;
              if (v58)
              {
                v60 = x + width * v57 / v131;
              }

              else
              {
                v60 = x;
              }

              if (v58)
              {
                v61 = y;
              }

              else
              {
                v61 = y + height * v57 / v131;
              }

              if (v58)
              {
                v62 = v129;
              }

              else
              {
                v62 = width;
              }

              if (v58)
              {
                v63 = height;
              }

              else
              {
                v63 = v130;
              }

              if (v35 != 1)
              {
                v64 = v127;
                if (v28)
                {
                  v64 = [v28 objectAtIndex:{v54, v130}];
                  v126 = v64;
                }

                v43 = UIKBCreateFitCTLineWithSymbolStyle(v64, v10, v141, v60, v61, v62, v63);
                if (v28)
                {
                }
              }

              TypographicBounds = CTLineGetTypographicBounds(v43, 0, 0, 0);
              if ([v10 isVertical])
              {
                if ([v10 anchorCorner] || objc_msgSend(v10, "alignment") != 1)
                {
                  if (os_variant_has_internal_diagnostics())
                  {
                    v117 = __UIFaultDebugAssertLog();
                    if (os_log_type_enabled(v117, OS_LOG_TYPE_FAULT))
                    {
                      *v140 = 0;
                      _os_log_fault_impl(&dword_188A29000, v117, OS_LOG_TYPE_FAULT, "only alignment center is supported in vertical orientation", v140, 2u);
                    }

                    v51 = v128;
                    height = v134;
                  }

                  else
                  {
                    v116 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49F180) + 8);
                    if (os_log_type_enabled(v116, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_188A29000, v116, OS_LOG_TYPE_ERROR, "only alignment center is supported in vertical orientation", buf, 2u);
                    }
                  }
                }

                v66 = ceil(v122 + v138 * v59);
                PenOffsetForFlush = CTLineGetPenOffsetForFlush(v43, 0.5, height);
                [v10 textOffset];
                v69 = PenOffsetForFlush + v68;
                [v10 etchOffset];
                v71 = y + v69 + v70;
                [v10 textOffset];
                v73 = v72;
                [v10 etchOffset];
                v75 = v66 + v73 + v74;
                goto LABEL_103;
              }

              v71 = ceil(v124 + v123 * v59);
              if (![v10 anchorCorner])
              {
                break;
              }

              if ([v10 anchorCorner] == 1)
              {
                [v10 textOffset];
                v77 = v76;
                [v10 etchOffset];
                v79 = v77 + v78;
                goto LABEL_86;
              }

              if ([v10 anchorCorner] == 4)
              {
                [v10 textOffset];
                v85 = v84;
                [v10 etchOffset];
                v87 = v85 + v86;
              }

              else
              {
                if ([v10 anchorCorner] == 2)
                {
                  [v10 textOffset];
                  v94 = width - v93 - TypographicBounds;
                  [v10 etchOffset];
                  v79 = v95 + v94;
LABEL_86:
                  v75 = v125 + v79;
                  v80 = v141[0];
                  [v10 textOffset];
                  v82 = v80 + v81;
LABEL_101:
                  [v10 etchOffset];
                  v92 = v82 + v100;
                  goto LABEL_102;
                }

                if ([v10 anchorCorner] != 8)
                {
                  v75 = v125;
                  goto LABEL_103;
                }

                [v10 textOffset];
                v114 = width - v113 - TypographicBounds;
                [v10 etchOffset];
                v87 = v115 + v114;
              }

              v75 = v125 + v87;
              v88 = height - v141[0];
              [v10 textOffset];
              v90 = v88 - v89;
              [v10 etchOffset];
              v92 = v90 - v91;
LABEL_102:
              v71 = v71 + v92;
LABEL_103:
              v101 = [v10 etchColor];

              if (v101)
              {
                ctx = v51->_ctx;
                v103 = [v10 etchColor];
                v104 = UIKBGetNamedColor(v103);
                UIKBDrawCTLineAtPoint(ctx, v43, v104, [v10 isVertical], v75, v71);

                v51 = v128;
              }

              [v10 etchOffset];
              v106 = v75 - v105;
              [v10 etchOffset];
              v108 = v71 - v107;
              v109 = v51->_ctx;
              v110 = [v10 isVertical];
              v111 = v109;
              CopyWithAlpha = v133;
              UIKBDrawCTLineAtPoint(v111, v43, v133, v110, v106, v108);
              if (v43)
              {
                CFRelease(v43);
              }

              ++v54;
              --v55;
              v112 = __CFADD__(v56++, 1);
              width = v135;
              if (v112)
              {
                goto LABEL_119;
              }
            }

            if ([v10 alignment] == 1)
            {
              if (width - TypographicBounds >= 0.0)
              {
                v83 = CTLineGetPenOffsetForFlush(v43, 0.5, width);
              }

              else
              {
                v83 = (width - TypographicBounds) * 0.5;
              }
            }

            else
            {
              v83 = v120;
              if ([v10 alignment])
              {
                v75 = v125;
                if ([v10 alignment] != 2)
                {
LABEL_100:
                  [v10 textOffset];
                  v82 = v121 + v99;
                  goto LABEL_101;
                }

                v83 = v120 - TypographicBounds;
              }
            }

            [v10 textOffset];
            v97 = v83 + v96;
            [v10 etchOffset];
            v75 = v125 + v97 + v98;
            goto LABEL_100;
          }
        }

        v33 = 0;
        v34 = v29;
        v35 = v29;
        v132 = height / v29;
        v138 = INFINITY;
        v36 = width / v29;
        do
        {
          v37 = v27;
          v38 = [v10 isVertical];
          if (v38)
          {
            v39 = x + width * v33 / v34;
          }

          else
          {
            v39 = x;
          }

          if (v38)
          {
            v40 = y;
          }

          else
          {
            v40 = y + v134 * v33 / v34;
          }

          if (v38)
          {
            width = v36;
            v41 = v134;
          }

          else
          {
            v41 = v132;
          }

          v42 = v9;
          if (v28)
          {
            v42 = [v28 objectAtIndex:v33];
            self = v42;
          }

          v43 = UIKBCreateFitCTLineWithSymbolStyle(v42, v10, v141, v39, v40, width, v41);
          if (v28)
          {
          }

          v27 = v37;
          v44 = v141[0];
          v45 = CTLineGetTypographicBounds(v43, 0, 0, 0);
          v46 = v138;
          if (v45 < v138)
          {
            v46 = v45;
          }

          v138 = v46;
          width = v135;
          if (v29 != 1)
          {
            CFRelease(v43);
            v43 = 0;
          }

          ++v33;
        }

        while (v29 != v33);
        v47 = 1;
        height = v134;
        goto LABEL_50;
      }

LABEL_9:
      v12 = 1;
      goto LABEL_10;
    }
  }

  v12 = 0;
LABEL_10:

  return v12;
}

- (unint64_t)renderKeyStringContents:(id)a3 withTraits:(id)a4 status:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v81 = 0;
  v82 = &v81;
  v83 = 0x2020000000;
  v84 = a5;
  v10 = [v8 displayString];
  v11 = [(UIKBRenderer *)self renderFlags];
  if (!v9 || (v11 & 0x34) == 0 || !v10)
  {
    goto LABEL_43;
  }

  if ([v9 renderSecondarySymbolsSeparately])
  {
    v12 = 4;
  }

  else
  {
    v12 = 52;
  }

  if ((a5 & 2) == 0)
  {
    v13 = [v8 secondaryDisplayStrings];
    if ([v13 count])
    {
      v14 = [v9 secondarySymbolStyles];
      v15 = [v14 count];

      if (v15)
      {
        v16 = [v8 displayString];
        v17 = [v16 length];
        v73 = v17 != 0;

        v18 = [v8 fallbackContents];
        v19 = [v18 displayString];

        if (v17)
        {
          v20 = [v8 displayStringImage];
          if ([v20 length])
          {
          }

          else
          {
            v47 = [(UIKBRenderer *)self renderFlags]& v12;

            if (v47)
            {
              v48 = [v8 displayString];
              v49 = [v9 geometry];
              [v49 symbolFrame];
              v51 = v50;
              v53 = v52;
              v55 = v54;
              v57 = v56;
              v58 = [v9 symbolStyle];
              [(UIKBRenderer *)self _drawKeyString:v48 inRect:v58 withStyle:v51, v53, v55, v57];

              v82[3] |= 1uLL;
            }
          }
        }

        v59 = [v8 secondaryDisplayStrings];
        v60 = [v59 count];

        v61 = [v9 secondarySymbolStyles];
        v62 = [v61 count];

        if (![v9 renderSecondarySymbolsSeparately])
        {
          v64 = [v8 secondaryDisplayStrings];
          v74[0] = MEMORY[0x1E69E9820];
          v74[1] = 3221225472;
          v74[2] = __58__UIKBRenderer_renderKeyStringContents_withTraits_status___block_invoke;
          v74[3] = &unk_1E71146E8;
          v74[4] = self;
          v77 = 52;
          v78 = v62;
          v79 = v73;
          v80 = v19 == @"␣";
          v75 = v9;
          v76 = &v81;
          [v64 enumerateObjectsUsingBlock:v74];

          goto LABEL_43;
        }

        if (([(UIKBRenderer *)self renderFlags]& 0x20) != 0)
        {
          v63 = 1;
        }

        else
        {
          if (([(UIKBRenderer *)self renderFlags]& 0x10) == 0)
          {
            goto LABEL_43;
          }

          v63 = 0;
        }

        if (v63 >= v60)
        {
          v66 = 0;
        }

        else
        {
          v65 = [v8 secondaryDisplayStrings];
          v66 = [v65 objectAtIndex:v63];
        }

        if (v63 >= v62 || ([v9 secondarySymbolStyles], v67 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v67, "objectAtIndex:", v63), v68 = objc_claimAutoreleasedReturnValue(), v67, !v68))
        {
          v69 = [v9 secondarySymbolStyles];
          v68 = [v69 lastObject];
        }

        if ([v66 length])
        {
          if (!v17 && v19 != @"␣")
          {
            [v68 setTextOffset:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
          }

          v70 = [v9 geometry];
          [v70 symbolFrame];
          [(UIKBRenderer *)self _drawKeyString:v66 inRect:v68 withStyle:?];

          v82[3] = 3;
        }

        goto LABEL_43;
      }
    }

    else
    {
    }
  }

  if ((a5 & 1) == 0)
  {
    v21 = [v9 geometry];
    [v21 symbolFrame];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v30 = [v9 symbolStyle];
    v31 = [(UIKBRenderer *)self _drawKeyString:v10 inRect:v30 withStyle:v23, v25, v27, v29];

    if ([v8 stringKeycapOverImage])
    {
      v32 = 0;
    }

    else
    {
      v33 = [v8 displayStringImage];
      v32 = v33 != 0;
    }

    if (v31 || v32)
    {
      if (!v31)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v34 = [v8 fallbackContents];
      v35 = [v34 displayString];
      v36 = [v9 geometry];
      [v36 symbolFrame];
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v45 = [v9 fallbackSymbolStyle];
      v46 = [(UIKBRenderer *)self _drawKeyString:v35 inRect:v45 withStyle:v38, v40, v42, v44];

      if (!v46)
      {
        goto LABEL_43;
      }
    }

    v82[3] = 3;
  }

LABEL_43:
  v71 = v82[3];

  _Block_object_dispose(&v81, 8);
  return v71;
}

void __58__UIKBRenderer_renderKeyStringContents_withTraits_status___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v10 = a2;
  if ([v10 length] && (*(a1 + 56) & objc_msgSend(*(a1 + 32), "renderFlags")) != 0)
  {
    if (*(a1 + 64) <= a3 || ([*(a1 + 40) secondarySymbolStyles], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "objectAtIndex:", a3), v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
    {
      v7 = [*(a1 + 40) secondarySymbolStyles];
      v6 = [v7 lastObject];
    }

    if ((*(a1 + 72) & 1) == 0 && (*(a1 + 73) & 1) == 0)
    {
      [v6 setTextOffset:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
    }

    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) geometry];
    [v9 symbolFrame];
    [v8 _drawKeyString:v10 inRect:v6 withStyle:?];

    *(*(*(a1 + 48) + 8) + 24) |= 2uLL;
  }
}

- (CGPath)_thinShiftGlyphPath
{
  if (qword_1ED49F190 != -1)
  {
    dispatch_once(&qword_1ED49F190, &__block_literal_global_63_1);
  }

  return qword_1ED49F188;
}

CGMutablePathRef __35__UIKBRenderer__thinShiftGlyphPath__block_invoke()
{
  result = createMutablePathWithPoints(dbl_18A67F210, 10, 1);
  qword_1ED49F188 = result;
  return result;
}

- (CGPath)_thickShiftGlyphPath
{
  if (qword_1ED49F1A0 != -1)
  {
    dispatch_once(&qword_1ED49F1A0, &__block_literal_global_65_4);
  }

  return qword_1ED49F198;
}

CGMutablePathRef __36__UIKBRenderer__thickShiftGlyphPath__block_invoke()
{
  result = createMutablePathWithPoints(dbl_18A67F2B0, 10, 1);
  qword_1ED49F198 = result;
  return result;
}

- (CGPath)_deleteGlyphPaths
{
  if (qword_1ED49F1B0 != -1)
  {
    dispatch_once(&qword_1ED49F1B0, &__block_literal_global_68);
  }

  return qword_1ED49F1A8;
}

CGMutablePathRef __33__UIKBRenderer__deleteGlyphPaths__block_invoke()
{
  result = createMutablePathWithPoints(dbl_18A67F350, 13, 1);
  qword_1ED49F1A8 = result;
  return result;
}

- (void)drawPath:(CGPath *)a3 weight:(double)a4 transform:(CGAffineTransform *)a5 color:(CGColor *)a6 fill:(BOOL)a7
{
  if (a3 && a6)
  {
    v8 = a7;
    MutableCopyByTransformingPath = CGPathCreateMutableCopyByTransformingPath(a3, a5);
    CGContextSaveGState(self->_ctx);
    CGContextSetLineWidth(self->_ctx, a4);
    CGContextSetLineJoin(self->_ctx, kCGLineJoinMiter);
    CGContextSetLineCap(self->_ctx, kCGLineCapSquare);
    if (v8)
    {
      CGContextAddPath(self->_ctx, MutableCopyByTransformingPath);
      CGContextSetFillColorWithColor(self->_ctx, a6);
      CGContextFillPath(self->_ctx);
    }

    CGContextAddPath(self->_ctx, MutableCopyByTransformingPath);
    CGContextSetStrokeColorWithColor(self->_ctx, a6);
    CGContextStrokePath(self->_ctx);
    CGPathRelease(MutableCopyByTransformingPath);
    ctx = self->_ctx;

    CGContextRestoreGState(ctx);
  }
}

- (void)drawShiftPath:(BOOL)a3 weight:(double)a4 transform:(CGAffineTransform *)a5 color:(CGColor *)a6
{
  v23 = *MEMORY[0x1E69E9840];
  if (a6)
  {
    if (a3)
    {
      v10 = 0.0;
    }

    else
    {
      v10 = 0.12;
    }

    MutablePathWithPoints = createMutablePathWithPoints(dbl_18A67F420, 7, 0);
    MutableCopyByTransformingPath = CGPathCreateMutableCopyByTransformingPath(MutablePathWithPoints, a5);
    v15 = xmmword_18A67F1F0;
    v16 = 0x3FE0000000000000;
    v17 = 6.0 - v10;
    v18 = 0x4023000000000000;
    v19 = 15.0 - v10;
    v20 = 0x4032800000000000;
    v21 = 6.0 - v10;
    v22 = xmmword_18A67F200;
    v13 = createMutablePathWithPoints(&v15, 5, 0);
    v14 = CGPathCreateMutableCopyByTransformingPath(v13, a5);
    CGContextSaveGState(self->_ctx);
    CGContextSetLineJoin(self->_ctx, kCGLineJoinMiter);
    CGContextSetLineCap(self->_ctx, kCGLineCapButt);
    CGContextSetLineWidth(self->_ctx, a4);
    CGContextAddPath(self->_ctx, MutableCopyByTransformingPath);
    CGContextSetStrokeColorWithColor(self->_ctx, a6);
    CGContextStrokePath(self->_ctx);
    CGContextSetLineWidth(self->_ctx, a4 - v10);
    CGContextAddPath(self->_ctx, v14);
    CGContextSetStrokeColorWithColor(self->_ctx, a6);
    CGContextStrokePath(self->_ctx);
    CGContextRestoreGState(self->_ctx);
    CGPathRelease(MutableCopyByTransformingPath);
    CGPathRelease(v14);
    CGPathRelease(MutablePathWithPoints);
    CGPathRelease(v13);
  }
}

- (BOOL)renderKeyPathContents:(id)a3 withTraits:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 displayPathType];
  v9 = [(UIKBRenderer *)self renderFlags];
  v10 = 0;
  if (v7 && (v9 & 4) != 0 && v8)
  {
    if (self->_colorDetectMode)
    {
      v11 = [v7 symbolStyle];
      v12 = [v11 textColor];
      [(UIKBRenderer *)self detectColorsForNamedColor:v12];

      v10 = 1;
      goto LABEL_30;
    }

    v13 = [v7 symbolStyle];
    v14 = [v13 textColor];
    v15 = [v14 isEqualToString:@"UIKBColorWhite"];

    switch(v8)
    {
      case 1:
        if (v15)
        {
          v16 = [(UIKBRenderer *)self _thickShiftGlyphPath];
          v17 = 0.0;
        }

        else
        {
          v16 = [(UIKBRenderer *)self _thinShiftGlyphPath];
          v17 = 0.12;
        }

        BoundingBox = CGPathGetBoundingBox(v16);
        x = BoundingBox.origin.x;
        y = BoundingBox.origin.y;
        width = BoundingBox.size.width;
        height = v17 + BoundingBox.size.height;
        break;
      case 4:
        v63 = +[UIBezierPath bezierPath];
        height = 10.0;
        [v63 moveToPoint:{1.0, 10.0}];
        y = 0.0;
        [v63 addLineToPoint:{1.0, 0.0}];
        [v63 closePath];
        v16 = [v63 CGPath];

        width = 2.0;
        x = 0.0;
        break;
      case 3:
        v62 = [UIBezierPath bezierPathWithOvalInRect:0.0, 0.0, 15.0, 15.0];
        [v62 moveToPoint:{4.25, 10.75}];
        [v62 addLineToPoint:{10.75, 4.25}];
        [v62 moveToPoint:{4.25, 4.25}];
        [v62 addLineToPoint:{10.75, 10.75}];
        [v62 closePath];
        v16 = [v62 CGPath];
        v72 = CGPathGetBoundingBox(v16);
        x = v72.origin.x;
        y = v72.origin.y;
        width = v72.size.width;
        height = v72.size.height;

        break;
      case 2:
        v16 = [(UIKBRenderer *)self _deleteGlyphPaths];
        v70 = CGPathGetBoundingBox(v16);
        x = v70.origin.x;
        y = v70.origin.y;
        width = v70.size.width;
        height = v70.size.height;
        break;
      default:
        v16 = 0;
        x = *MEMORY[0x1E695F058];
        y = *(MEMORY[0x1E695F058] + 8);
        width = *(MEMORY[0x1E695F058] + 16);
        height = *(MEMORY[0x1E695F058] + 24);
        break;
    }

    v20 = [v7 geometry];
    [v20 symbolFrame];
    v22 = v21;

    if (width <= v22)
    {
      v26 = floor(height);
      v27 = [v7 symbolStyle];
      [v27 fontSize];
      v29 = v28;

      v25 = 1.0;
      if (v26 >= v29)
      {
        goto LABEL_20;
      }

      v23 = [v7 symbolStyle];
      [v23 fontSize];
      v25 = v30 / v26;
    }

    else
    {
      v23 = [v7 geometry];
      [v23 symbolFrame];
      v25 = v24 / width;
    }

LABEL_20:
    memset(&v69, 0, sizeof(v69));
    CGAffineTransformMakeScale(&v69, v25, v25);
    v31 = [v7 symbolStyle];
    [v31 textOffset];
    v33 = v32;
    v64 = v34;

    v35 = [v7 geometry];
    [v35 symbolFrame];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    [(UIKBRenderer *)self scale];
    v45 = UIRectCenteredIntegralRectScale(x, y, width * v25, height * v25, v37, v39, v41, v43, v44);
    v47 = v46;

    v67 = v69;
    CGAffineTransformTranslate(&v68, &v67, (v33 + v45) / v25, (v64 + v47 + -1.0) / v25);
    v69 = v68;
    v48 = [v7 symbolStyle];
    v49 = [v48 textColor];
    CopyWithAlpha = UIKBGetNamedColor(v49);

    v51 = [v7 symbolStyle];
    [v51 textOpacity];
    v53 = v52;

    if (v53 == 1.0)
    {
      CGColorRetain(CopyWithAlpha);
    }

    else
    {
      v54 = [v7 symbolStyle];
      [v54 textOpacity];
      CopyWithAlpha = CGColorCreateCopyWithAlpha(CopyWithAlpha, v55);
    }

    if ([v6 fillPath])
    {
      v56 = [v7 symbolStyle];
      [v56 pathWeight];
      v68 = v69;
      v57 = self;
      v58 = v16;
      v59 = CopyWithAlpha;
      v60 = 1;
    }

    else
    {
      if ([v6 fillPath])
      {
        v10 = 0;
        goto LABEL_29;
      }

      v56 = [v7 symbolStyle];
      [v56 pathWeight];
      if (v8 == 1)
      {
        v68 = v69;
        [(UIKBRenderer *)self drawShiftPath:v15 weight:&v68 transform:CopyWithAlpha color:?];
        goto LABEL_26;
      }

      v68 = v69;
      v57 = self;
      v58 = v16;
      v59 = CopyWithAlpha;
      v60 = 0;
    }

    [(UIKBRenderer *)v57 drawPath:v58 weight:&v68 transform:v59 color:v60 fill:?];
LABEL_26:

    v10 = 1;
LABEL_29:
    CGColorRelease(CopyWithAlpha);
  }

LABEL_30:

  return v10;
}

- (void)addRoundRect:(CGRect)a3 radius:(double)a4 corners:(unint64_t)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (a4 <= 0.0 || a5 == 0)
  {
    v11 = [(UIKBRenderer *)self context];
    v12 = x;
    v13 = y;
    v14 = width;
    v15 = height;

    CGContextAddRect(v11, *&v12);
  }

  else
  {
    v18 = [UIBezierPath bezierPathWithRoundedRect:a5 byRoundingCorners:a3.origin.x cornerRadii:a3.origin.y, a3.size.width, a3.size.height, a4, a4];
    v16 = [(UIKBRenderer *)self context];
    v17 = v18;
    CGContextAddPath(v16, [v18 CGPath]);
  }
}

- (void)addPathForTraits:(id)a3 displayRect:(CGRect *)a4
{
  v63 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (!self->_colorDetectMode)
  {
    v8 = [v6 geometry];
    v9 = [v8 flickDirection];

    if (v9 == -3)
    {
      v10 = [v7 geometry];
      v11 = [v10 splitLeftRect];
      if (v11)
      {
        v12 = v11;
        v13 = [v7 geometry];
        v14 = [v13 splitRightRect];

        if (v14)
        {
          v15 = [v7 geometry];
          [(UIKBRenderer *)self addPathForSplitGeometry:v15];
LABEL_32:

          goto LABEL_33;
        }
      }

      else
      {
      }

      v17 = [v7 geometry];
      if ([v17 detachedVariants])
      {
        v18 = [v7 variantGeometries];

        if (v18)
        {
          v19 = [v7 geometry];
          v15 = [v19 copy];

          [v15 setPopupBias:0];
          [(UIKBRenderer *)self addPathForRenderGeometry:v15];
          x = *MEMORY[0x1E695F050];
          y = *(MEMORY[0x1E695F050] + 8);
          width = *(MEMORY[0x1E695F050] + 16);
          height = *(MEMORY[0x1E695F050] + 24);
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v24 = [v7 variantGeometries];
          v25 = [v24 countByEnumeratingWithState:&v58 objects:v62 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v59;
            do
            {
              for (i = 0; i != v26; ++i)
              {
                if (*v59 != v27)
                {
                  objc_enumerationMutation(v24);
                }

                v29 = *(*(&v58 + 1) + 8 * i);
                v64.origin.x = x;
                v64.origin.y = y;
                v64.size.width = width;
                v64.size.height = height;
                IsNull = CGRectIsNull(v64);
                [v29 frame];
                v35 = v31;
                v36 = v32;
                v37 = v33;
                v38 = v34;
                if (!IsNull)
                {
                  v65.origin.x = x;
                  v65.origin.y = y;
                  v65.size.width = width;
                  v65.size.height = height;
                  *&v31 = CGRectUnion(v65, *&v35);
                }

                x = v31;
                y = v32;
                width = v33;
                height = v34;
              }

              v26 = [v24 countByEnumeratingWithState:&v58 objects:v62 count:16];
            }

            while (v26);
          }

          v39 = [v7 geometry];
          if ([v39 roundRectCorners])
          {
          }

          else
          {
            v50 = [v7 geometry];
            [v50 roundRectRadius];
            v52 = v51;

            if (v52 != 0.0)
            {
LABEL_30:
              [v15 setFrame:{x, y, width, height}];
              [v15 setPaddedFrame:{x, y, width, height}];
              [v15 setDisplayFrame:{x, y, width, height}];
              [v15 setRoundRectCorners:-1];
              v57 = [v7 geometry];
              [v57 roundRectRadius];
              [v15 setRoundRectRadius:?];

              goto LABEL_31;
            }
          }

          [v15 roundRectRadius];
          v54 = -v53;
          [v15 roundRectRadius];
          v56 = -v55;
          v66.origin.x = x;
          v66.origin.y = y;
          v66.size.width = width;
          v66.size.height = height;
          v67 = CGRectInset(v66, v54, v56);
          x = v67.origin.x;
          y = v67.origin.y;
          width = v67.size.width;
          height = v67.size.height;
          goto LABEL_30;
        }
      }

      else
      {
      }

      v15 = [v7 geometry];
LABEL_31:
      [(UIKBRenderer *)self addPathForRenderGeometry:v15];
      goto LABEL_32;
    }

    v16 = [v7 variantGeometries];

    if (v16)
    {
      v15 = [v7 variantGeometries];
      [(UIKBRenderer *)self addPathForFlickPopupGeometries:v15];
      goto LABEL_32;
    }

    v40 = [v7 variantTraits];
    v41 = [v40 geometry];

    v42 = [v7 geometry];
    if (v41)
    {
      [(UIKBRenderer *)self addPathForRenderGeometry:v42];
    }

    else
    {
      [(UIKBRenderer *)self addPathForFlickGeometry:v42];

      if (a4)
      {
        v43 = [v7 geometry];
        [v43 popupSource];
        v45 = v44;
        v47 = v46;
        v48 = *MEMORY[0x1E695F060];
        v49 = *(MEMORY[0x1E695F060] + 8);

        v68.origin.x = v45;
        v68.origin.y = v47;
        v68.size.width = v48;
        v68.size.height = v49;
        *a4 = CGRectUnion(*a4, v68);
      }
    }
  }

LABEL_33:
}

- (void)addPathForRenderGeometry:(id)a3
{
  v4 = [(UIKBRenderer *)self pathForRenderGeometry:a3];
  if (v4)
  {
    v7 = v4;
    v5 = [(UIKBRenderer *)self context];
    v6 = v7;
    CGContextAddPath(v5, [v7 CGPath]);
    v4 = v7;
  }
}

- (void)addPathForFlickGeometry:(id)a3
{
  v4 = [(UIKBRenderer *)self pathForFlickGeometry:a3];
  if (v4)
  {
    v7 = v4;
    v5 = [(UIKBRenderer *)self context];
    v6 = v7;
    CGContextAddPath(v5, [v7 CGPath]);
    v4 = v7;
  }
}

- (void)addPathForFlickPopupGeometries:(id)a3
{
  v4 = [(UIKBRenderer *)self pathForFlickPopupGeometries:a3];
  if (v4)
  {
    v7 = v4;
    v5 = [(UIKBRenderer *)self context];
    v6 = v7;
    CGContextAddPath(v5, [v7 CGPath]);
    v4 = v7;
  }
}

- (void)addPathForSplitGeometry:(id)a3
{
  v4 = [(UIKBRenderer *)self pathForSplitGeometry:a3];
  if (v4)
  {
    v7 = v4;
    v5 = [(UIKBRenderer *)self context];
    v6 = v7;
    CGContextAddPath(v5, [v7 CGPath]);
    v4 = v7;
  }
}

- (id)pathForConcaveCornerWithGeometry:(id)a3
{
  v3 = a3;
  v4 = +[UIBezierPath bezierPath];
  [v3 paddedFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v3 roundRectRadius];
  v14 = v13;
  [v3 roundRectRadius];
  v16 = v15;
  v17 = [v3 concaveCorner];
  [v3 concaveCornerOffset];
  v19 = v18;
  v21 = v20;

  v22 = 0;
  if (v17 <= 3)
  {
    if (v17 == 1)
    {
      v118.origin.x = v6;
      v118.origin.y = v8;
      v118.size.width = v10;
      v118.size.height = v12;
      MidX = CGRectGetMidX(v118);
      v119.origin.x = v6;
      v119.origin.y = v8;
      v119.size.width = v10;
      v119.size.height = v12;
      MaxY = CGRectGetMaxY(v119);
      v120.origin.x = v6;
      v120.origin.y = v8;
      v120.size.width = v10;
      v120.size.height = v12;
      MinX = CGRectGetMinX(v120);
      v121.origin.x = v6;
      v121.origin.y = v8;
      v121.size.width = v10;
      v121.size.height = v12;
      v71 = CGRectGetMaxY(v121);
      v122.origin.x = v6;
      v122.origin.y = v8;
      v122.size.width = v10;
      v122.size.height = v12;
      v75 = CGRectGetMinX(v122);
      v123.origin.x = v6;
      v123.origin.y = v8;
      v123.size.width = v10;
      v123.size.height = v12;
      v63 = v21 + CGRectGetMinY(v123);
      v124.origin.x = v6;
      v124.origin.y = v8;
      v124.size.width = v10;
      v124.size.height = v12;
      v67 = v19 + CGRectGetMinX(v124);
      v125.origin.x = v6;
      v125.origin.y = v8;
      v125.size.width = v10;
      v125.size.height = v12;
      v59 = v21 + CGRectGetMinY(v125);
      v126.origin.x = v6;
      v126.origin.y = v8;
      v126.size.width = v10;
      v126.size.height = v12;
      v55 = v19 + CGRectGetMinX(v126);
      v127.origin.x = v6;
      v127.origin.y = v8;
      v127.size.width = v10;
      v127.size.height = v12;
      MinY = CGRectGetMinY(v127);
      v128.origin.x = v6;
      v128.origin.y = v8;
      v128.size.width = v10;
      v128.size.height = v12;
      MaxX = CGRectGetMaxX(v128);
      v129.origin.x = v6;
      v129.origin.y = v8;
      v129.size.width = v10;
      v129.size.height = v12;
      v23 = CGRectGetMinY(v129);
      v130.origin.x = v6;
      v130.origin.y = v8;
      v130.size.width = v10;
      v130.size.height = v12;
      v24 = CGRectGetMaxX(v130);
      v131.origin.x = v6;
      v131.origin.y = v8;
      v131.size.width = v10;
      v131.size.height = v12;
      v25 = CGRectGetMaxY(v131);
      [v4 moveToPoint:{MidX, MaxY}];
      [v4 _addRoundedCornerWithTrueCorner:4 radius:0 corner:MinX clockwise:{v71, v14, v16}];
      [v4 _addRoundedCornerWithTrueCorner:1 radius:0 corner:v75 clockwise:{v63, v14, v16}];
      [v4 _addRoundedCornerWithTrueCorner:8 radius:1 corner:v67 clockwise:{v59, v14, v16}];
      v26 = v4;
      v27 = v55;
      v28 = MinY;
      v29 = v14;
      v30 = v16;
      v32 = 0;
      v31 = 1;
    }

    else
    {
      if (v17 != 2)
      {
        goto LABEL_12;
      }

      v90.origin.x = v6;
      v90.origin.y = v8;
      v90.size.width = v10;
      v90.size.height = v12;
      v85 = CGRectGetMidX(v90);
      v91.origin.x = v6;
      v91.origin.y = v8;
      v91.size.width = v10;
      v91.size.height = v12;
      v81 = CGRectGetMaxY(v91);
      v92.origin.x = v6;
      v92.origin.y = v8;
      v92.size.width = v10;
      v92.size.height = v12;
      v77 = CGRectGetMinX(v92);
      v93.origin.x = v6;
      v93.origin.y = v8;
      v93.size.width = v10;
      v93.size.height = v12;
      v69 = CGRectGetMaxY(v93);
      v94.origin.x = v6;
      v94.origin.y = v8;
      v94.size.width = v10;
      v94.size.height = v12;
      v73 = CGRectGetMinX(v94);
      v95.origin.x = v6;
      v95.origin.y = v8;
      v95.size.width = v10;
      v95.size.height = v12;
      v61 = CGRectGetMinY(v95);
      v96.origin.x = v6;
      v96.origin.y = v8;
      v96.size.width = v10;
      v96.size.height = v12;
      v65 = CGRectGetMaxX(v96) - v19;
      v97.origin.x = v6;
      v97.origin.y = v8;
      v97.size.width = v10;
      v97.size.height = v12;
      v53 = CGRectGetMinY(v97);
      v98.origin.x = v6;
      v98.origin.y = v8;
      v98.size.width = v10;
      v98.size.height = v12;
      v57 = CGRectGetMaxX(v98) - v19;
      v99.origin.x = v6;
      v99.origin.y = v8;
      v99.size.width = v10;
      v99.size.height = v12;
      v46 = v21 + CGRectGetMinY(v99);
      v100.origin.x = v6;
      v100.origin.y = v8;
      v100.size.width = v10;
      v100.size.height = v12;
      MaxX = CGRectGetMaxX(v100);
      v101.origin.x = v6;
      v101.origin.y = v8;
      v101.size.width = v10;
      v101.size.height = v12;
      v23 = v21 + CGRectGetMinY(v101);
      v102.origin.x = v6;
      v102.origin.y = v8;
      v102.size.width = v10;
      v102.size.height = v12;
      v24 = CGRectGetMaxX(v102);
      v103.origin.x = v6;
      v103.origin.y = v8;
      v103.size.width = v10;
      v103.size.height = v12;
      v25 = CGRectGetMaxY(v103);
      [v4 moveToPoint:{v85, v81}];
      [v4 _addRoundedCornerWithTrueCorner:4 radius:0 corner:v77 clockwise:{v69, v14, v16}];
      [v4 _addRoundedCornerWithTrueCorner:1 radius:0 corner:v73 clockwise:{v61, v14, v16}];
      [v4 _addRoundedCornerWithTrueCorner:2 radius:0 corner:v65 clockwise:{v53, v14, v16}];
      v26 = v4;
      v27 = v57;
      v28 = v46;
      v29 = v14;
      v30 = v16;
      v31 = 4;
      v32 = 1;
    }

    [v26 _addRoundedCornerWithTrueCorner:v31 radius:v32 corner:v27 clockwise:{v28, v29, v30}];
    [v4 _addRoundedCornerWithTrueCorner:2 radius:0 corner:MaxX clockwise:{v23, v14, v16}];
    v36 = v4;
    v37 = v24;
    v38 = v25;
    v39 = v14;
    v40 = v16;
    v41 = 8;
LABEL_10:
    [v36 _addRoundedCornerWithTrueCorner:v41 radius:0 corner:v37 clockwise:{v38, v39, v40}];
    [v4 closePath];
    v22 = v4;
    goto LABEL_12;
  }

  if (v17 != 8)
  {
    if (v17 != 4)
    {
      goto LABEL_12;
    }

    v104.origin.x = v6;
    v104.origin.y = v8;
    v104.size.width = v10;
    v104.size.height = v12;
    v86 = CGRectGetMidX(v104);
    v105.origin.x = v6;
    v105.origin.y = v8;
    v105.size.width = v10;
    v105.size.height = v12;
    v82 = CGRectGetMinY(v105);
    v106.origin.x = v6;
    v106.origin.y = v8;
    v106.size.width = v10;
    v106.size.height = v12;
    v78 = CGRectGetMaxX(v106);
    v107.origin.x = v6;
    v107.origin.y = v8;
    v107.size.width = v10;
    v107.size.height = v12;
    v70 = CGRectGetMinY(v107);
    v108.origin.x = v6;
    v108.origin.y = v8;
    v108.size.width = v10;
    v108.size.height = v12;
    v74 = CGRectGetMaxX(v108);
    v109.origin.x = v6;
    v109.origin.y = v8;
    v109.size.width = v10;
    v109.size.height = v12;
    v62 = CGRectGetMaxY(v109);
    v110.origin.x = v6;
    v110.origin.y = v8;
    v110.size.width = v10;
    v110.size.height = v12;
    v66 = v19 + CGRectGetMinX(v110);
    v111.origin.x = v6;
    v111.origin.y = v8;
    v111.size.width = v10;
    v111.size.height = v12;
    v54 = CGRectGetMaxY(v111);
    v112.origin.x = v6;
    v112.origin.y = v8;
    v112.size.width = v10;
    v112.size.height = v12;
    v58 = v19 + CGRectGetMinX(v112);
    v113.origin.x = v6;
    v113.origin.y = v8;
    v113.size.width = v10;
    v113.size.height = v12;
    v47 = CGRectGetMaxY(v113) - v21;
    v114.origin.x = v6;
    v114.origin.y = v8;
    v114.size.width = v10;
    v114.size.height = v12;
    v51 = CGRectGetMinX(v114);
    v115.origin.x = v6;
    v115.origin.y = v8;
    v115.size.width = v10;
    v115.size.height = v12;
    v33 = CGRectGetMaxY(v115) - v21;
    v116.origin.x = v6;
    v116.origin.y = v8;
    v116.size.width = v10;
    v116.size.height = v12;
    v34 = CGRectGetMinX(v116);
    v117.origin.x = v6;
    v117.origin.y = v8;
    v117.size.width = v10;
    v117.size.height = v12;
    v35 = CGRectGetMinY(v117);
    [v4 moveToPoint:{v86, v82}];
    [v4 _addRoundedCornerWithTrueCorner:2 radius:0 corner:v78 clockwise:{v70, v14, v16}];
    [v4 _addRoundedCornerWithTrueCorner:8 radius:0 corner:v74 clockwise:{v62, v14, v16}];
    [v4 _addRoundedCornerWithTrueCorner:4 radius:0 corner:v66 clockwise:{v54, v14, v16}];
    [v4 _addRoundedCornerWithTrueCorner:2 radius:1 corner:v58 clockwise:{v47, v14, v16}];
    [v4 _addRoundedCornerWithTrueCorner:4 radius:0 corner:v51 clockwise:{v33, v14, v16}];
    v36 = v4;
    v37 = v34;
    v38 = v35;
    v39 = v14;
    v40 = v16;
    v41 = 1;
    goto LABEL_10;
  }

  v132.origin.x = v6;
  v132.origin.y = v8;
  v132.size.width = v10;
  v132.size.height = v12;
  v88 = CGRectGetMidX(v132);
  v133.origin.x = v6;
  v133.origin.y = v8;
  v133.size.width = v10;
  v133.size.height = v12;
  v84 = CGRectGetMinY(v133);
  v134.origin.x = v6;
  v134.origin.y = v8;
  v134.size.width = v10;
  v134.size.height = v12;
  v80 = CGRectGetMaxX(v134);
  v135.origin.x = v6;
  v135.origin.y = v8;
  v135.size.width = v10;
  v135.size.height = v12;
  v72 = CGRectGetMinY(v135);
  v136.origin.x = v6;
  v136.origin.y = v8;
  v136.size.width = v10;
  v136.size.height = v12;
  v76 = CGRectGetMaxX(v136);
  v137.origin.x = v6;
  v137.origin.y = v8;
  v137.size.width = v10;
  v137.size.height = v12;
  v64 = CGRectGetMaxY(v137) - v21;
  v138.origin.x = v6;
  v138.origin.y = v8;
  v138.size.width = v10;
  v138.size.height = v12;
  v68 = CGRectGetMaxX(v138) - v19;
  v139.origin.x = v6;
  v139.origin.y = v8;
  v139.size.width = v10;
  v139.size.height = v12;
  v60 = CGRectGetMaxY(v139) - v21;
  v140.origin.x = v6;
  v140.origin.y = v8;
  v140.size.width = v10;
  v140.size.height = v12;
  v56 = CGRectGetMaxX(v140) - v19;
  v141.origin.x = v6;
  v141.origin.y = v8;
  v141.size.width = v10;
  v141.size.height = v12;
  v49 = CGRectGetMaxY(v141);
  v142.origin.x = v6;
  v142.origin.y = v8;
  v142.size.width = v10;
  v142.size.height = v12;
  v52 = CGRectGetMinX(v142);
  v143.origin.x = v6;
  v143.origin.y = v8;
  v143.size.width = v10;
  v143.size.height = v12;
  v42 = CGRectGetMaxY(v143);
  v144.origin.x = v6;
  v144.origin.y = v8;
  v144.size.width = v10;
  v144.size.height = v12;
  v43 = CGRectGetMinX(v144);
  v145.origin.x = v6;
  v145.origin.y = v8;
  v145.size.width = v10;
  v145.size.height = v12;
  v44 = CGRectGetMinY(v145);
  [v4 moveToPoint:{v88, v84}];
  [v4 _addRoundedCornerWithTrueCorner:2 radius:0 corner:v80 clockwise:{v72, v14, v16}];
  [v4 _addRoundedCornerWithTrueCorner:8 radius:0 corner:v76 clockwise:{v64, v14, v16}];
  [v4 _addRoundedCornerWithTrueCorner:1 radius:1 corner:v68 clockwise:{v60, v14, v16}];
  [v4 _addRoundedCornerWithTrueCorner:8 radius:0 corner:v56 clockwise:{v49, v14, v16}];
  [v4 _addRoundedCornerWithTrueCorner:4 radius:0 corner:v52 clockwise:{v42, v14, v16}];
  [v4 _addRoundedCornerWithTrueCorner:1 radius:0 corner:v43 clockwise:{v44, v14, v16}];
  [v4 closePath];
  v22 = 0;
LABEL_12:

  return v22;
}

- (id)pathForRenderGeometry:(id)a3
{
  v4 = a3;
  v5 = +[UIDevice currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 4)
  {
    [(UIKBRenderer *)self watchPathForRenderGeometry:v4];
  }

  else
  {
    [(UIKBRenderer *)self defaultPathForRenderGeometry:v4];
  }
  v7 = ;

  return v7;
}

- (id)defaultPathForRenderGeometry:(id)a3
{
  v4 = a3;
  [v4 paddedFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v96 = v11;
  [v4 displayFrame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [v4 roundRectCorners];
  [v4 roundRectRadius];
  v22 = v21;
  [(UIKBRenderer *)self _layerPaddedFrame];
  if (!CGRectIsNull(v103))
  {
    [(UIKBRenderer *)self _layerPaddedFrame];
    v6 = v23;
    v8 = v24;
    v10 = v25;
    v96 = v26;
    [(UIKBRenderer *)self _layerRoundRectRadius];
    v22 = v27;
  }

  v95 = v22;
  recta = v6;
  if ([v4 popupDirection] == 2)
  {
    v104.origin.x = v6;
    v104.origin.y = v8;
    v104.size.width = v10;
    v104.size.height = v96;
    MinY = CGRectGetMinY(v104);
    v105.origin.x = v13;
    v105.origin.y = v15;
    v105.size.width = v17;
    v105.size.height = v19;
    v92 = MinY - CGRectGetMinY(v105);
    v106.origin.x = v13;
    v106.origin.y = v15;
    v106.size.width = v17;
    v106.size.height = v19;
    MaxY = CGRectGetMaxY(v106);
    v107.origin.x = v6;
    v107.origin.y = v8;
    v107.size.width = v10;
    v107.size.height = v96;
    v8 = MaxY - CGRectGetHeight(v107) - v92;
  }

  [v4 symbolFrame];
  v31 = v30;
  v33 = v32;
  v34 = [v4 popupBias];
  v35 = [v4 tallPopup];
  v36 = 7.0;
  if (v35)
  {
    v36 = 1.0;
  }

  v93 = v36;
  v37 = v13 + v17 - (v31 + v33) > v33 + 8.0 || v34 == 40;
  v38 = v31 - v13 > v33 + 8.0 || v34 == 40;
  if (v34)
  {
    v39 = recta;
    if (v38)
    {
      if (v34 == 40)
      {
        [v4 layoutMargins];
        if (v13 + v40 <= -8.0)
        {
          v13 = v13 + -20.0;
          v17 = v17 + 20.0;
        }
      }

      v108.origin.x = v13;
      v108.origin.y = v15;
      v108.size.width = v17;
      v108.size.height = v19;
      v39 = COERCE_DOUBLE(CGRectInset(v108, 24.0, 0.0)) + 2.0 + -1.0;
      v34 = 2;
    }
  }

  else
  {
    v39 = recta;
  }

  v89 = v39;
  if (v34)
  {
    v41 = v37;
  }

  else
  {
    v41 = 0;
  }

  if (v41)
  {
    v109.origin.x = v13;
    v109.origin.y = v15;
    v109.size.width = v17;
    v109.size.height = v19;
    v110 = CGRectInset(v109, 24.0, 0.0);
    x = v110.origin.x;
    width = v110.size.width;
    if (![v4 concaveCorner])
    {
      v44 = width + -2.0;
      v45 = x + 0.0;
      v46 = v44 + 1.0;
      v34 = 2;
      goto LABEL_33;
    }

LABEL_27:
    v47 = [(UIKBRenderer *)self pathForConcaveCornerWithGeometry:v4];
LABEL_28:
    v48 = v47;
    goto LABEL_29;
  }

  if ([v4 concaveCorner])
  {
    goto LABEL_27;
  }

  v46 = v10;
  v45 = recta;
  if (!v34)
  {
LABEL_34:
    if (v20)
    {
      v47 = +[UIBezierPath bezierPathWithRoundedRect:byRoundingCorners:cornerRadii:](UIBezierPath, "bezierPathWithRoundedRect:byRoundingCorners:cornerRadii:", [v4 roundRectCorners], recta, v8, v10, v96, v95, v95);
      goto LABEL_28;
    }

    v58 = v96;
    v57 = recta;
    v59 = v8;
    v60 = v10;
LABEL_47:
    v47 = [UIBezierPath bezierPathWithRect:v57, v59, v60, v58];
    goto LABEL_28;
  }

LABEL_33:
  if ([v4 popupDirection] == 3)
  {
    goto LABEL_34;
  }

  v86 = v15;
  v97 = recta + v10 * 0.5;
  v50 = v15 + v19 + -6.0;
  if (v34 > 28)
  {
    if (v34 == 29)
    {
      v48 = +[UIBezierPath bezierPath];
      v76 = recta + v10;
      v91 = v8 + 15.0;
      v77 = v46 + v45;
      v78 = v8 + -19.0;
      [v48 moveToPoint:{v97, v50}];
      [v48 _addRoundedCornerWithTrueCorner:4 radius:0 corner:recta clockwise:{v50, v95, v95}];
      [v48 addLineToPoint:{recta, v86 + v93 + 10.0}];
      [v48 _addRoundedCornerWithTrueCorner:1 radius:0 corner:recta clockwise:{v86 + v93, 10.0, 10.0}];
      [v48 addLineToPoint:{v77 + 26.0 + -10.0, v86 + v93}];
      [v48 _addRoundedCornerWithTrueCorner:2 radius:0 corner:v77 + 26.0 clockwise:{v86 + v93, 10.0, 10.0}];
      [v48 addLineToPoint:{v77 + 26.0, v8 + -19.0}];
      if (v37)
      {
        v79 = (v91 + v78) * 0.5 + -1.5;
        [v48 _addRoundedCornerWithTrueCorner:8 radius:0 corner:v77 + 26.0 clockwise:{v79, 10.0, 10.0}];
        [v48 addLineToPoint:{v76 + 10.0, v79}];
        [v48 _addRoundedCornerWithTrueCorner:1 radius:1 corner:v76 clockwise:{v79, 10.0, 10.0}];
      }

      else
      {
        [v48 addQuadCurveToPoint:v77 + 23.75 controlPoint:{v8 + -12.5, v77 + 26.0 + -0.5, v78 + 5.0}];
        [v48 addLineToPoint:{v76 + 2.75, v8 + 7.5}];
        [v48 addQuadCurveToPoint:v76 controlPoint:{v91, v76 + 0.5, v91 + -5.0}];
      }

      [v48 addLineToPoint:{v76, v50 - v95}];
      [v48 _addRoundedCornerWithTrueCorner:8 radius:0 corner:v76 clockwise:{v50, v95, v95}];
      v80 = v48;
      v81 = v97;
      v82 = v50;
      goto LABEL_60;
    }

    if (v34 != 30)
    {
LABEL_46:
      v57 = v13;
      v59 = v86;
      v60 = v17;
      v58 = v19;
      goto LABEL_47;
    }
  }

  else if (v34 != 2)
  {
    if (v34 == 21)
    {
      v48 = +[UIBezierPath bezierPath];
      v51 = v10;
      v52 = v8 + 15.0;
      v53 = v89 + -26.0;
      v54 = v8 + -19.0;
      v55 = v86 + v93;
      v87 = recta + v51;
      [v48 moveToPoint:{v97, v50}];
      [v48 _addRoundedCornerWithTrueCorner:4 radius:0 corner:recta clockwise:{v50, v95, v95}];
      [v48 addLineToPoint:{recta, v8 + 15.0}];
      if (v38)
      {
        v56 = (v52 + v54) * 0.5 + -1.5;
        [v48 _addRoundedCornerWithTrueCorner:2 radius:1 corner:recta clockwise:{v56, 10.0, 10.0}];
        [v48 addLineToPoint:{v53 + 10.0, v56}];
        [v48 _addRoundedCornerWithTrueCorner:4 radius:0 corner:v53 clockwise:{v56, 10.0, 10.0}];
      }

      else
      {
        [v48 addQuadCurveToPoint:recta + -2.75 controlPoint:{v8 + 7.5, recta + -0.5, v52 + -5.0}];
        [v48 addLineToPoint:{v89 + -23.75, v8 + -12.5}];
        [v48 addQuadCurveToPoint:v53 controlPoint:{v8 + -19.0, v53 + 0.5, v54 + 5.0}];
      }

      [v48 addLineToPoint:{v53, v55 + 10.0}];
      [v48 _addRoundedCornerWithTrueCorner:1 radius:0 corner:v53 clockwise:{v55, 10.0, 10.0}];
      [v48 addLineToPoint:{v87 + -10.0, v55}];
      [v48 _addRoundedCornerWithTrueCorner:2 radius:0 corner:v87 clockwise:{v55, 10.0, 10.0}];
      [v48 addLineToPoint:{v87, v50 - v95}];
      [v48 _addRoundedCornerWithTrueCorner:8 radius:0 corner:v87 clockwise:{v50, v95, v95}];
      v80 = v48;
      v81 = v97;
      v82 = v50;
LABEL_60:
      [v80 addLineToPoint:{v81, v82}];
      [v48 closePath];
      goto LABEL_29;
    }

    goto LABEL_46;
  }

  v85 = v10;
  v48 = +[UIBezierPath bezierPath];
  v61 = v8 + 1.5;
  v62 = v8 + -9.0;
  v63 = v89 + -13.0;
  v84 = v8 + -8.0;
  v64 = v50;
  v65 = v86 + v93;
  v90 = v8 + -20.0;
  v66 = (v8 + 1.5 + v8 + -20.0) * 0.5 + -1.5;
  v67 = v46 + v45;
  v68 = v64;
  v69 = v67 + 13.0;
  [v48 moveToPoint:{v97, v64}];
  v94 = v68;
  [v48 _addRoundedCornerWithTrueCorner:4 radius:0 corner:recta clockwise:{v68, v95, v95}];
  v88 = v61;
  [v48 addLineToPoint:{recta, v61}];
  v83 = v62;
  if (v38)
  {
    [v48 _addRoundedCornerWithTrueCorner:2 radius:1 corner:recta clockwise:{v66, 10.0, 10.0}];
    [v48 addLineToPoint:{v63 + 10.0, v66}];
    [v48 _addRoundedCornerWithTrueCorner:4 radius:0 corner:v63 clockwise:{v66, 10.0, 10.0}];
    v70 = v66;
    v71 = v84;
  }

  else
  {
    v72 = v62;
    v71 = v84;
    [v48 addCurveToPoint:v63 controlPoint1:v90 controlPoint2:{recta, v72, v63, v84}];
    v70 = v66;
  }

  v73 = recta + v85;
  [v48 addLineToPoint:{v63, v65 + 10.0}];
  [v48 _addRoundedCornerWithTrueCorner:1 radius:0 corner:v63 clockwise:{v65, 10.0, 10.0}];
  [v48 addLineToPoint:{v69 + -10.0, v65}];
  [v48 _addRoundedCornerWithTrueCorner:2 radius:0 corner:v69 clockwise:{v65, 10.0, 10.0}];
  [v48 addLineToPoint:{v69, v90}];
  if (v37)
  {
    [v48 _addRoundedCornerWithTrueCorner:8 radius:0 corner:v69 clockwise:{v70, 10.0, 10.0}];
    [v48 addLineToPoint:{v73 + 10.0, v70}];
    [v48 _addRoundedCornerWithTrueCorner:1 radius:1 corner:v73 clockwise:{v70, 10.0, 10.0}];
  }

  else
  {
    [v48 addCurveToPoint:v73 controlPoint1:v88 controlPoint2:{v69, v71, v73, v83}];
  }

  [v48 addLineToPoint:{v73, v94 - v95}];
  [v48 _addRoundedCornerWithTrueCorner:8 radius:0 corner:v73 clockwise:{v94, v95, v95}];
  [v48 addLineToPoint:{v97, v94}];
  [v48 closePath];
  if ([v4 popupDirection] == 2)
  {
    memset(&v101, 0, sizeof(v101));
    CGAffineTransformMakeScale(&v101, 1.0, -1.0);
    memset(&v100, 0, sizeof(v100));
    [v48 bounds];
    v74 = CGRectGetMinY(v111);
    [v48 bounds];
    v75 = CGRectGetMaxY(v112);
    CGAffineTransformMakeTranslation(&v100, 0.0, v74 + v75);
    rect_8 = v101;
    [v48 applyTransform:&rect_8];
    rect_8 = v100;
    [v48 applyTransform:&rect_8];
  }

LABEL_29:

  return v48;
}

- (id)watchPathForRenderGeometry:(id)a3
{
  v3 = a3;
  v4 = +[UIBezierPath bezierPath];
  [v3 paddedFrame];
  v6 = v5;
  v41 = v8;
  v43 = v7;
  v10 = v9;
  [v3 displayFrame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [v3 roundRectRadius];
  v20 = v19;
  [v3 roundRectRadius];
  v22 = v21;
  v23 = [v3 popupBias];
  if (v23 > 28)
  {
    if (v23 == 29)
    {
      v36 = v6 + v10 * 0.5;
      v24 = v14 + v18;
      v37 = v12 + v16;
      v38 = v6 + v10;
      v39 = v36;
      [v4 moveToPoint:?];
      [v4 _addRoundedCornerWithTrueCorner:4 radius:0 corner:v12 clockwise:{v24, v20, v22}];
      [v4 _addRoundedCornerWithTrueCorner:1 radius:0 corner:v12 clockwise:{v14, v20, v22}];
      [v4 _addRoundedCornerWithTrueCorner:2 radius:0 corner:v37 clockwise:{v14, v20, v22}];
      [v4 _addRoundedCornerWithTrueCorner:8 radius:0 corner:v37 clockwise:{v43, v20, v22}];
      [v4 _addRoundedCornerWithTrueCorner:1 radius:1 corner:v38 clockwise:{v43, v20, v22}];
      [v4 _addRoundedCornerWithTrueCorner:8 radius:0 corner:v38 clockwise:{v24, v20, v22}];
      v33 = v4;
      v34 = v39;
      goto LABEL_11;
    }

    if (v23 != 30)
    {
LABEL_9:
      v35 = +[UIBezierPath bezierPathWithRoundedRect:byRoundingCorners:cornerRadii:](UIBezierPath, "bezierPathWithRoundedRect:byRoundingCorners:cornerRadii:", [v3 roundRectCorners], v6, v43, v10, v41, v20, v22);

      v4 = v35;
      goto LABEL_12;
    }

LABEL_7:
    v24 = v14 + v18;
    v42 = v6 + v10 * 0.5;
    v25 = v6 + v10;
    [v4 moveToPoint:?];
    [v4 _addRoundedCornerWithTrueCorner:4 radius:0 corner:v6 clockwise:{v24, v20, v22}];
    [v4 _addRoundedCornerWithTrueCorner:2 radius:1 corner:v6 clockwise:{v43, v20, v22}];
    [v4 _addRoundedCornerWithTrueCorner:4 radius:0 corner:v12 clockwise:{v43, v20, v22}];
    [v4 _addRoundedCornerWithTrueCorner:1 radius:0 corner:v12 clockwise:{v14, v20, v22}];
    [v4 _addRoundedCornerWithTrueCorner:2 radius:0 corner:v12 + v16 clockwise:{v14, v20, v22}];
    [v4 _addRoundedCornerWithTrueCorner:8 radius:0 corner:v12 + v16 clockwise:{v43, v20, v22}];
    v26 = v4;
    v27 = v25;
    v28 = v43;
    v29 = v20;
    v30 = v22;
    v32 = 1;
    v31 = 1;
    goto LABEL_8;
  }

  if (v23 == 2)
  {
    goto LABEL_7;
  }

  if (v23 != 21)
  {
    goto LABEL_9;
  }

  v42 = v6 + v10 * 0.5;
  v24 = v14 + v18;
  v25 = v6 + v10;
  [v4 moveToPoint:?];
  [v4 _addRoundedCornerWithTrueCorner:4 radius:0 corner:v6 clockwise:{v24, v20, v22}];
  [v4 _addRoundedCornerWithTrueCorner:2 radius:1 corner:v6 clockwise:{v43, v20, v22}];
  [v4 _addRoundedCornerWithTrueCorner:4 radius:0 corner:v12 clockwise:{v43, v20, v22}];
  [v4 _addRoundedCornerWithTrueCorner:1 radius:0 corner:v12 clockwise:{v14, v20, v22}];
  v26 = v4;
  v27 = v12 + v16;
  v28 = v14;
  v29 = v20;
  v30 = v22;
  v31 = 0;
  v32 = 2;
LABEL_8:
  [v26 _addRoundedCornerWithTrueCorner:v32 radius:v31 corner:v27 clockwise:{v28, v29, v30}];
  [v4 _addRoundedCornerWithTrueCorner:8 radius:0 corner:v25 clockwise:{v24, v20, v22}];
  v33 = v4;
  v34 = v42;
LABEL_11:
  [v33 addLineToPoint:{v34, v24}];
LABEL_12:
  [v4 closePath];

  return v4;
}

- (id)pathForFlickWidth:(double)a3 height:(double)a4 handleLength:(double)a5 keyMiddle:(CGPoint)a6 angle:(double)a7 radius:(double)a8
{
  y = a6.y;
  x = a6.x;
  v15 = +[UIBezierPath bezierPath];
  [(UIKBRenderer *)self scale];
  v17 = v16;
  UIRoundToScale(a3 * 0.5 + -8.0, v16);
  v19 = v18 + v18;
  v37 = a4;
  UIRoundToScale(a4 + -16.0, v17);
  v21 = v20;
  UIRoundToScale(a5 * 0.6, v17);
  v23 = 0;
  if (v19 > 0.0 && v21 > 0.0)
  {
    v24 = v22;
    if (v22 > 0.0 && v22 > 8.0)
    {
      v36 = y;
      v26 = atan((v22 + -8.0 + v22 + -8.0) / v19);
      v27 = __sincos_stret(v26);
      v35 = -v37 - v24;
      [v15 moveToPoint:{v27.__sinval * a8, v27.__cosval * a8 - a8}];
      v28 = 1.57079633 - v26;
      v29 = v26 + 1.57079633;
      [v15 addArcWithCenter:1 radius:0.0 startAngle:-a8 endAngle:a8 clockwise:{v28, v29}];
      [v15 addLineToPoint:{v19 * -0.5 + v27.__sinval * -8.0, v27.__cosval * 8.0 - v24}];
      [v15 addArcWithCenter:1 radius:v19 * -0.5 startAngle:-v24 endAngle:8.0 clockwise:{v29, 3.14159265}];
      [v15 _addRoundedCornerWithTrueCorner:1 radius:0 corner:v19 * -0.5 + -8.0 clockwise:{v35, 8.0, 8.0}];
      [v15 _addRoundedCornerWithTrueCorner:2 radius:0 corner:v19 * 0.5 + 8.0 clockwise:{v35, 8.0, 8.0}];
      [v15 addLineToPoint:{v19 * 0.5 + 8.0, -v24}];
      [v15 addArcWithCenter:1 radius:v19 * 0.5 startAngle:-v24 endAngle:8.0 clockwise:{0.0, v28}];
      [v15 closePath];
      memset(&v41, 0, sizeof(v41));
      UIRoundToScale(x, v17);
      v31 = v30;
      UIRoundToScale(v36, v17);
      CGAffineTransformMakeTranslation(&v41, v31, v32);
      v39 = v41;
      CGAffineTransformRotate(&v40, &v39, a7);
      v41 = v40;
      UIRoundToScale(v24 * -0.6, v17);
      v39 = v41;
      CGAffineTransformTranslate(&v40, &v39, 0.0, v33);
      v41 = v40;
      [v15 applyTransform:&v40];
      v23 = v15;
    }
  }

  return v23;
}

- (id)pathForFlickGeometry:(id)a3
{
  v4 = a3;
  [v4 paddedFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v4 popupSource];
  v14 = v13;
  v16 = v15;
  if (![v4 flickDirection])
  {
    v17 = v16 - (v8 + v12);
    v18 = 0.0;
LABEL_8:
    v19 = 8.0;
    v20 = self;
    v21 = v10;
    v22 = v12;
    goto LABEL_9;
  }

  if ([v4 flickDirection] == 1)
  {
    v17 = v6 - v14;
    v18 = 1.57079633;
LABEL_4:
    v19 = 8.0;
    v20 = self;
    v21 = v12;
    v22 = v10;
LABEL_9:
    v23 = [(UIKBRenderer *)v20 pathForFlickWidth:v21 height:v22 handleLength:v17 keyMiddle:v14 angle:v16 radius:v18, v19];
    goto LABEL_10;
  }

  if ([v4 flickDirection] == 2)
  {
    v17 = v8 - v16;
    v18 = 3.14159265;
    goto LABEL_8;
  }

  if ([v4 flickDirection] == 3)
  {
    v17 = v14 - (v6 + v10);
    v18 = -1.57079633;
    goto LABEL_4;
  }

  v23 = 0;
LABEL_10:

  return v23;
}

- (id)pathForFlickPopupGeometries:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 count] >= 2)
  {
    v6 = [v4 objectAtIndex:0];
    v7 = [v4 objectAtIndex:4];
    v8 = [MEMORY[0x1E695DFB0] null];
    if (v7 == v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = v7;
    }

    v10 = v9;

    v11 = [v4 objectAtIndex:2];
    v12 = [MEMORY[0x1E695DFB0] null];
    if (v11 == v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = v11;
    }

    v14 = v13;

    v15 = [v4 objectAtIndex:1];
    v16 = [MEMORY[0x1E695DFB0] null];
    if (v15 == v16)
    {
      v17 = 0;
    }

    else
    {
      v17 = v15;
    }

    v18 = v17;

    v19 = [v4 objectAtIndex:3];
    v20 = [MEMORY[0x1E695DFB0] null];
    if (v19 == v20)
    {
      v21 = 0;
    }

    else
    {
      v21 = v19;
    }

    v22 = v21;

    v5 = +[UIBezierPath bezierPath];
    [v6 paddedFrame];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v23 + v29;
    [v5 moveToPoint:?];
    if (v18)
    {
      [v18 paddedFrame];
      v32 = v31;
      v35 = v33 + v34;
      [v5 _addRoundedCornerWithTrueCorner:1 radius:0 corner:? clockwise:?];
      [v5 _addRoundedCornerWithTrueCorner:2 radius:0 corner:v35 clockwise:{v32, 8.0, 8.0}];
    }

    v36 = v26 + v28;
    [v5 addLineToPoint:{v30, v26}];
    if (v14)
    {
      [v14 paddedFrame];
      v39 = v37 + v38;
      v42 = v40 + v41;
      [v5 _addRoundedCornerWithTrueCorner:2 radius:0 corner:v37 + v38 clockwise:?];
      [v5 _addRoundedCornerWithTrueCorner:8 radius:0 corner:v39 clockwise:{v42, 8.0, 8.0}];
    }

    [v5 addLineToPoint:{v30, v36}];
    if (v22)
    {
      [v22 paddedFrame];
      v44 = v43;
      v48 = v46 + v47;
      [v5 _addRoundedCornerWithTrueCorner:8 radius:0 corner:v43 + v45 clockwise:{v46 + v47, 8.0, 8.0}];
      [v5 _addRoundedCornerWithTrueCorner:4 radius:0 corner:v44 clockwise:{v48, 8.0, 8.0}];
    }

    [v5 addLineToPoint:{v24, v36}];
    if (v10)
    {
      [v10 paddedFrame];
      v50 = v49;
      v52 = v51;
      [v5 _addRoundedCornerWithTrueCorner:4 radius:0 corner:? clockwise:?];
      [v5 _addRoundedCornerWithTrueCorner:1 radius:0 corner:v50 clockwise:{v52, 8.0, 8.0}];
    }

    [v5 addLineToPoint:{v24, v26}];
    [v5 closePath];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)pathForSplitGeometry:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 splitLeftRect], (v6 = objc_claimAutoreleasedReturnValue()) != 0) && (v7 = v6, objc_msgSend(v5, "splitRightRect"), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
  {
    v9 = [v5 splitLeftRect];
    [v9 CGRectValue];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v18 = [v5 splitRightRect];
    [v18 CGRectValue];
    v34 = v20;
    v35 = v19;
    v22 = v21;

    [(UIKBRenderer *)self size];
    v24 = v23 - v22;
    LOBYTE(v18) = [v5 roundRectCorners];
    v25 = [v5 roundRectCorners];
    [v5 roundRectRadius];
    v27 = v26;
    [v5 roundRectRadius];
    v29 = v28;
    v30 = +[UIBezierPath bezierPath];
    v31 = [UIBezierPath bezierPathWithRoundedRect:v18 & 0xA byRoundingCorners:v11 cornerRadii:v13, v15, v17, v27, v29];
    [v30 appendPath:v31];

    v32 = [UIBezierPath bezierPathWithRoundedRect:v25 & 5 byRoundingCorners:v24 cornerRadii:v35, v22, v34, v27, v29];
    [v30 appendPath:v32];
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)_layerPaddedFrame
{
  x = self->__layerPaddedFrame.origin.x;
  y = self->__layerPaddedFrame.origin.y;
  width = self->__layerPaddedFrame.size.width;
  height = self->__layerPaddedFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end