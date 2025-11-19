@interface SLDHighlightPillRenderer
- (CGImage)_newAvatarImageFromImageData:(id)a3;
- (SLDHighlightPillRenderer)initWithStyle:(id)a3 tag:(id)a4;
- (void)_drawAvatarImage:(CGImage *)a3 inContext:(CGContext *)a4 atRect:(CGRect)a5;
- (void)_drawKnockoutBorderWidth:(double)a3 atXPosition:(double)a4 aroundImageWithYPosition:(double)a5 diameter:(double)a6 inContext:(CGContext *)a7;
- (void)_renderAvatarsInContext:(CGContext *)a3;
- (void)dealloc;
- (void)renderInContext:(CGContext *)a3;
@end

@implementation SLDHighlightPillRenderer

- (SLDHighlightPillRenderer)initWithStyle:(id)a3 tag:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = SLDHighlightPillRenderer;
  v9 = [(SLDHighlightPillRenderer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_slotStyle, a3);
    objc_storeStrong(&v10->_slotTag, a4);
    v11 = [[SLHighlightPillMetrics alloc] initWithSlotStyle:v7 tag:v8];
    metricsProvider = v10->_metricsProvider;
    v10->_metricsProvider = v11;

    v10->_RTL = [v7 layoutDirection] == 1;
    v10->_font = CFRetain([(SLHighlightPillMetrics *)v10->_metricsProvider baseFont]);
  }

  return v10;
}

- (void)renderInContext:(CGContext *)a3
{
  v5 = [(SLDHighlightPillRenderer *)self metricsProvider];
  v6 = [v5 hasValidMetricsForDrawing];

  if (v6)
  {
    v7 = SLGeneralTelemetryLogHandle();
    v8 = os_signpost_id_generate(v7);

    v9 = SLGeneralTelemetryLogHandle();
    v10 = v9;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      LOWORD(buf.a) = 0;
      _os_signpost_emit_with_name_impl(&dword_231772000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "DaemonHighlightPillRenderInContext", "", &buf, 2u);
    }

    v11 = [(SLDHighlightPillRenderer *)self slotStyle];
    v12 = [v11 displayScale];

    v13 = [(SLDHighlightPillRenderer *)self metricsProvider];
    [v13 pillSize];
    v15 = SLRoundToScale(v14 * 0.5, v12);

    v16 = [(SLDHighlightPillRenderer *)self isRTL];
    [(SLDHighlightPillRenderer *)self _renderAvatarsInContext:a3];
    v17 = [(SLDHighlightPillRenderer *)self metricsProvider];
    if ([v17 useDoubleLinedLabel])
    {
      v18 = [(SLDHighlightPillRenderer *)self metricsProvider];
      v19 = [v18 firstLine];

      if (v19)
      {
        v20 = [(SLDHighlightPillRenderer *)self metricsProvider];
        v21 = [v20 firstLine];

        v22 = [(SLDHighlightPillRenderer *)self metricsProvider];
        v23 = [v22 secondLine];

        BoundsWithOptions = CTLineGetBoundsWithOptions(v21, 0);
        height = BoundsWithOptions.size.height;
        CGContextSaveGState(a3);
        v25 = CTFontGetAscent([(SLDHighlightPillRenderer *)self font]);
        CGContextSetFontRenderingStyle();
        if (v23)
        {
          v26 = [(SLDHighlightPillRenderer *)self metricsProvider];
          [v26 margins];
          v28 = v25 + v27;
        }

        else
        {
          v55 = SLRoundToScale(height, v12);
          v28 = SLRoundToScale(v25 + v15 + v55 * -0.5, v12);
        }

        v56 = [(SLDHighlightPillRenderer *)self metricsProvider];
        [v56 pillSize];
        if (v16)
        {
          PenOffsetForFlush = CTLineGetPenOffsetForFlush(v21, 1.0, v57);
          v59 = SLRoundToScale(PenOffsetForFlush, v12);

          v60 = [(SLDHighlightPillRenderer *)self metricsProvider];
          [v60 margins];
          v62 = v59 - v61;
          v63 = [(SLDHighlightPillRenderer *)self metricsProvider];
          [v63 avatarContainerWidth];
          v65 = v62 - v64;
          v66 = [(SLDHighlightPillRenderer *)self metricsProvider];
          [v66 labelHorizontalMargins];
          v68 = v65 - v67;
        }

        else
        {
          v69 = CTLineGetPenOffsetForFlush(v21, 0.0, v57);
          v70 = SLRoundToScale(v69, v12);

          v60 = [(SLDHighlightPillRenderer *)self metricsProvider];
          [v60 margins];
          v72 = v70 + v71;
          v63 = [(SLDHighlightPillRenderer *)self metricsProvider];
          [v63 avatarContainerWidth];
          v74 = v72 + v73;
          v66 = [(SLDHighlightPillRenderer *)self metricsProvider];
          [v66 labelHorizontalMargins];
          v68 = v74 + v75;
        }

        buf.a = 1.0;
        buf.b = 0.0;
        buf.c = 0.0;
        buf.d = -1.0;
        buf.tx = v68;
        buf.ty = v28;
        CGContextSetTextMatrix(a3, &buf);
        CTLineDraw(v21, a3);
        if (!v23)
        {
          goto LABEL_27;
        }

        v76 = [(SLDHighlightPillRenderer *)self metricsProvider];
        [v76 pillSize];
        if (v16)
        {
          v78 = CTLineGetPenOffsetForFlush(v23, 1.0, v77);
          v79 = SLRoundToScale(v78, v12);

          v80 = [(SLDHighlightPillRenderer *)self metricsProvider];
          [v80 margins];
          v82 = v79 - v81;
          v83 = [(SLDHighlightPillRenderer *)self metricsProvider];
          [v83 avatarContainerWidth];
          v85 = v82 - v84;
          v86 = [(SLDHighlightPillRenderer *)self metricsProvider];
          [v86 labelHorizontalMargins];
          v88 = v85 - v87;
        }

        else
        {
          v89 = CTLineGetPenOffsetForFlush(v23, 0.0, v77);
          v90 = SLRoundToScale(v89, v12);

          v80 = [(SLDHighlightPillRenderer *)self metricsProvider];
          [v80 margins];
          v92 = v90 + v91;
          v83 = [(SLDHighlightPillRenderer *)self metricsProvider];
          [v83 avatarContainerWidth];
          v94 = v92 + v93;
          v86 = [(SLDHighlightPillRenderer *)self metricsProvider];
          [v86 labelHorizontalMargins];
          v88 = v94 + v95;
        }

        v96 = SLRoundToScale(height, v12);
        buf.a = 1.0;
        buf.b = 0.0;
        buf.c = 0.0;
        buf.d = -1.0;
        buf.tx = v88;
        buf.ty = v28 + v96;
        goto LABEL_26;
      }
    }

    else
    {
    }

    v30 = [(SLDHighlightPillRenderer *)self metricsProvider];
    v31 = [v30 firstLine];

    if (!v31)
    {
LABEL_27:
      v97 = SLGeneralTelemetryLogHandle();
      v29 = v97;
      if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v97))
      {
        LOWORD(buf.a) = 0;
        _os_signpost_emit_with_name_impl(&dword_231772000, v29, OS_SIGNPOST_INTERVAL_END, v8, "DaemonHighlightPillRenderInContext", "", &buf, 2u);
      }

      goto LABEL_30;
    }

    v32 = [(SLDHighlightPillRenderer *)self metricsProvider];
    v23 = [v32 firstLine];

    CGContextSaveGState(a3);
    v101 = CTLineGetBoundsWithOptions(v23, 0);
    v33 = v101.size.height;
    ascent = 0.0;
    CTLineGetTypographicBounds(v23, &ascent, 0, 0);
    ascent = SLRoundToScale(ascent, v12);
    v34 = SLRoundToScale(v33, v12);
    v35 = [(SLDHighlightPillRenderer *)self metricsProvider];
    [v35 pillSize];
    v37 = CTLineGetPenOffsetForFlush(v23, 0.0, v36);
    v38 = SLRoundToScale(v37, v12);

    v39 = [(SLDHighlightPillRenderer *)self metricsProvider];
    [v39 margins];
    v41 = v40;
    v43 = v42;
    v44 = [(SLDHighlightPillRenderer *)self metricsProvider];
    v45 = v44;
    if (v16)
    {
      [v44 chevronSize];
      v47 = v43 + v46;
      v48 = [(SLDHighlightPillRenderer *)self metricsProvider];
      [v48 labelHorizontalMargins];
      v50 = v47 + v49;
    }

    else
    {
      [v44 avatarContainerWidth];
      v52 = v41 + v51;
      v48 = [(SLDHighlightPillRenderer *)self metricsProvider];
      [v48 labelHorizontalMargins];
      v50 = v52 + v53;
    }

    v54 = SLRoundToScale(v15 + v34 * -0.5 + ascent, v12);
    CGContextSetFontRenderingStyle();
    buf.a = 1.0;
    buf.b = 0.0;
    buf.c = 0.0;
    buf.d = -1.0;
    buf.tx = v38 + v50;
    buf.ty = v54;
LABEL_26:
    CGContextSetTextMatrix(a3, &buf);
    CTLineDraw(v23, a3);
    CGContextRestoreGState(a3);
    goto LABEL_27;
  }

  v29 = SLDaemonLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    [(SLDHighlightPillRenderer *)self renderInContext:v29];
  }

LABEL_30:
}

- (void)_renderAvatarsInContext:(CGContext *)a3
{
  v97 = *MEMORY[0x277D85DE8];
  v4 = [(SLDHighlightPillRenderer *)self metricsProvider];
  v5 = [(SLDHighlightPillRenderer *)self slotStyle];
  v6 = [v5 displayScale];

  [v4 avatarDiameter];
  v8 = v7;
  [v4 overlappedAvatarKnockoutBorderWidth];
  v10 = v9;
  [v4 pillSize];
  v12 = v11 * 0.5;
  [v4 avatarDiameter];
  v14 = SLRoundToScale(v12 - v13 * 0.5, v6);
  [v4 overlappedAvatarVisibleWidth];
  v16 = v15;
  v87 = self;
  v17 = [(SLDHighlightPillRenderer *)self slotStyle];
  v18 = [v17 layoutDirection];

  [v4 margins];
  v20 = v19;
  [v4 avatarContainerWidth];
  v22 = v20 + v21;
  if (v18 == 1)
  {
    v23 = 1.0;
  }

  else
  {
    v23 = -1.0;
  }

  if (v18 == 1)
  {
    [v4 pillSize];
    v25 = v24 - v22;
  }

  else
  {
    v25 = v22 - v8;
  }

  v26 = [v4 imageCount];
  v27 = [(SLDHighlightPillRenderer *)self slotTag];
  v28 = [v27 pinnedSender];
  if (v28)
  {
    v29 = v26 > 1;
  }

  else
  {
    v29 = 0;
  }

  v30 = v29;
  v31 = v26 - v30;

  v32 = self;
  v33 = [(SLDHighlightPillRenderer *)self slotTag];
  v34 = [v33 sendersToDisplay];

  if ([v34 count] > v31)
  {
    v35 = [v34 subarrayWithRange:{0, v31}];

    v34 = v35;
  }

  v36 = [(SLDHighlightPillRenderer *)v87 slotTag];
  v37 = [v36 groupPhotoPath];
  v85 = v26;
  v86 = v34;
  if (v37)
  {
    v38 = v37;
    v39 = [(SLDHighlightPillRenderer *)v87 slotTag];
    v40 = [v39 groupID];

    if (v40)
    {
      v41 = [(SLDHighlightPillRenderer *)v87 slotTag];
      v42 = [v41 groupID];
      v43 = SLDCreateGroupPhotoImageWithGroupID(v42);

      if (v43)
      {
        goto LABEL_21;
      }

      v44 = SLDaemonLogHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v96 = v87;
        _os_log_impl(&dword_231772000, v44, OS_LOG_TYPE_INFO, "[%@] SLDHighlightPillRenderer Failed to get avatar image from IMSPI. Trying with groupPhotoFileURL.", buf, 0xCu);
      }

      v45 = MEMORY[0x277CBEA90];
      v46 = [(SLDHighlightPillRenderer *)v87 slotTag];
      v47 = [v46 groupPhotoPath];
      v48 = [v45 dataWithContentsOfURL:v47 options:1 error:0];

      v43 = [(SLDHighlightPillRenderer *)v87 _newAvatarImageFromImageData:v48];
      if (v43)
      {
LABEL_21:
        [(SLDHighlightPillRenderer *)v87 _drawAvatarImage:v43 inContext:a3 atRect:v25, v14, v8, v8];
        CGImageRelease(v43);
      }

      else
      {
        v80 = [(SLDHighlightPillRenderer *)v87 slotStyle];
        v81 = [(SLDHighlightPillRenderer *)v87 metricsProvider];
        [v81 pillSize];
        SLDRenderContactSilhouetteInContextAtRect(v80, a3, 1, v82, v25, v14, v8, v8);
      }

      v25 = v25 + v16 * v23;
      v49 = 1;
      v50 = 1;
      goto LABEL_42;
    }
  }

  else
  {
  }

  v84 = v4;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  obj = [v34 reverseObjectEnumerator];
  v51 = [obj countByEnumeratingWithState:&v90 objects:v94 count:16];
  if (v51)
  {
    v52 = v51;
    v83 = v31;
    v49 = 0;
    v50 = 0;
    v53 = *v91;
LABEL_26:
    v54 = 0;
    if (v83 >= v49)
    {
      v55 = v83 - v49;
    }

    else
    {
      v55 = 0;
    }

    while (1)
    {
      if (*v91 != v53)
      {
        objc_enumerationMutation(obj);
      }

      if (v55 == v54)
      {
        break;
      }

      v56 = *(*(&v90 + 1) + 8 * v54);
      v57 = [v56 thumbnailImageData];
      v58 = [(SLDHighlightPillRenderer *)v32 _newAvatarImageFromImageData:v57];
      if (v50)
      {
        [(SLDHighlightPillRenderer *)v32 _drawKnockoutBorderWidth:a3 atXPosition:v10 aroundImageWithYPosition:v25 - v10 diameter:v14 inContext:v8];
      }

      if (v58)
      {
        [(SLDHighlightPillRenderer *)v32 _drawAvatarImage:v58 inContext:a3 atRect:v25, v14, v8, v8];
        CGImageRelease(v58);
      }

      else
      {
        v59 = [v56 contact];
        v60 = [(SLDHighlightPillRenderer *)v32 slotStyle];
        v61 = [(SLDHighlightPillRenderer *)v32 metricsProvider];
        [v61 pillSize];
        SLDRenderContactMonogramInContextAtRect(v60, v59, a3, 1, v62, v25, v14, v8, v8);

        v32 = v87;
      }

      ++v49;
      v25 = v25 + v16 * v23;

      ++v54;
      v50 = 1;
      if (v52 == v54)
      {
        v52 = [obj countByEnumeratingWithState:&v90 objects:v94 count:16];
        if (v52)
        {
          goto LABEL_26;
        }

        break;
      }
    }
  }

  else
  {
    v49 = 0;
    v50 = 0;
  }

  v4 = v84;
LABEL_42:
  v63 = [(SLDHighlightPillRenderer *)v32 metricsProvider];
  if (![v63 shouldDisplayPin])
  {
LABEL_48:

    goto LABEL_49;
  }

  v64 = [(SLDHighlightPillRenderer *)v32 slotTag];
  v65 = [v64 pinnedSender];

  if (v65 && v49 < v85)
  {
    v66 = v4;
    if (v50)
    {
      [(SLDHighlightPillRenderer *)v87 _drawKnockoutBorderWidth:a3 atXPosition:v10 aroundImageWithYPosition:v25 - v10 diameter:v14 inContext:v8];
    }

    v67 = [(SLDHighlightPillRenderer *)v87 slotStyle];
    v68 = SLDCreateColorNamed(v67, @"HighlightStarColor");

    CGContextSetFillColorWithColor(a3, v68);
    CGColorRelease(v68);
    v98.origin.x = v25;
    v98.origin.y = v14;
    v98.size.width = v8;
    v98.size.height = v8;
    CGContextFillEllipseInRect(a3, v98);
    v69 = SLRoundToScale(v8 * 0.68, v6);
    v70 = [(SLDHighlightPillRenderer *)v87 slotStyle];
    v63 = SLDSystemVectorGlyphWithSlotStyle(v70, @"pin.fill", 1, 4, v69);

    [v63 contentBounds];
    v72 = v71;
    [v63 contentBounds];
    v74 = SLRectCenteredInRectToScale(v25, v14, v72, v73, v25, v14, v8, v8, v6);
    v76 = v75;
    v77 = objc_alloc(MEMORY[0x277D77800]);
    v78 = [v77 initWithVectorGlyph:v63 tintColor:CGColorGetConstantColor(*MEMORY[0x277CBF4D8])];
    CGContextSaveGState(a3);
    [v78 drawInContext:a3 atPoint:{v74, v76}];
    CGContextRestoreGState(a3);

    v4 = v66;
    goto LABEL_48;
  }

LABEL_49:

  v79 = *MEMORY[0x277D85DE8];
}

- (CGImage)_newAvatarImageFromImageData:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_5;
  }

  v5 = CGDataProviderCreateWithCFData(v3);
  ImageAtIndex = v5;
  if (v5)
  {
    v7 = CGImageSourceCreateWithDataProvider(v5, 0);
    CFRelease(ImageAtIndex);
    if (v7)
    {
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v7, 0, 0);
      CFRelease(v7);
      goto LABEL_6;
    }

LABEL_5:
    ImageAtIndex = 0;
  }

LABEL_6:

  return ImageAtIndex;
}

- (void)_drawAvatarImage:(CGImage *)a3 inContext:(CGContext *)a4 atRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  CGImageRetain(a3);
  CGContextSaveGState(a4);
  v12 = [(SLDHighlightPillRenderer *)self metricsProvider];
  [v12 pillSize];
  CGContextTranslateCTM(a4, 0.0, v13);

  CGContextScaleCTM(a4, 1.0, -1.0);
  CGContextBeginPath(a4);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  CGContextAddEllipseInRect(a4, v15);
  CGContextClip(a4);
  CGContextClosePath(a4);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  CGContextDrawImage(a4, v16, a3);
  CGContextRestoreGState(a4);

  CGImageRelease(a3);
}

- (void)_drawKnockoutBorderWidth:(double)a3 atXPosition:(double)a4 aroundImageWithYPosition:(double)a5 diameter:(double)a6 inContext:(CGContext *)a7
{
  CGContextSaveGState(a7);
  ConstantColor = CGColorGetConstantColor(*MEMORY[0x277CBF3C0]);
  CGContextSetFillColorWithColor(a7, ConstantColor);
  CGContextSetBlendMode(a7, kCGBlendModeClear);
  CGContextBeginPath(a7);
  v14.origin.x = a4;
  v14.origin.y = a5 - a3;
  v14.size.width = a6 + a3 * 2.0;
  v14.size.height = v14.size.width;
  CGContextAddEllipseInRect(a7, v14);
  CGContextDrawPath(a7, kCGPathFill);

  CGContextRestoreGState(a7);
}

- (void)dealloc
{
  CFRelease(self->_font);
  v3.receiver = self;
  v3.super_class = SLDHighlightPillRenderer;
  [(SLDHighlightPillRenderer *)&v3 dealloc];
}

- (void)renderInContext:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_231772000, a2, OS_LOG_TYPE_ERROR, "[SLDHighlightPillRenderer: %p] Invalid drawing metrics. This could mean the client has provided an invalid size to render in. No contents will be drawn.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end