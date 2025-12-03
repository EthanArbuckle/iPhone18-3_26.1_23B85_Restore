@interface SLDHighlightPillRenderer
- (CGImage)_newAvatarImageFromImageData:(id)data;
- (SLDHighlightPillRenderer)initWithStyle:(id)style tag:(id)tag;
- (void)_drawAvatarImage:(CGImage *)image inContext:(CGContext *)context atRect:(CGRect)rect;
- (void)_drawKnockoutBorderWidth:(double)width atXPosition:(double)position aroundImageWithYPosition:(double)yPosition diameter:(double)diameter inContext:(CGContext *)context;
- (void)_renderAvatarsInContext:(CGContext *)context;
- (void)dealloc;
- (void)renderInContext:(CGContext *)context;
@end

@implementation SLDHighlightPillRenderer

- (SLDHighlightPillRenderer)initWithStyle:(id)style tag:(id)tag
{
  styleCopy = style;
  tagCopy = tag;
  v14.receiver = self;
  v14.super_class = SLDHighlightPillRenderer;
  v9 = [(SLDHighlightPillRenderer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_slotStyle, style);
    objc_storeStrong(&v10->_slotTag, tag);
    v11 = [[SLHighlightPillMetrics alloc] initWithSlotStyle:styleCopy tag:tagCopy];
    metricsProvider = v10->_metricsProvider;
    v10->_metricsProvider = v11;

    v10->_RTL = [styleCopy layoutDirection] == 1;
    v10->_font = CFRetain([(SLHighlightPillMetrics *)v10->_metricsProvider baseFont]);
  }

  return v10;
}

- (void)renderInContext:(CGContext *)context
{
  metricsProvider = [(SLDHighlightPillRenderer *)self metricsProvider];
  hasValidMetricsForDrawing = [metricsProvider hasValidMetricsForDrawing];

  if (hasValidMetricsForDrawing)
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

    slotStyle = [(SLDHighlightPillRenderer *)self slotStyle];
    displayScale = [slotStyle displayScale];

    metricsProvider2 = [(SLDHighlightPillRenderer *)self metricsProvider];
    [metricsProvider2 pillSize];
    v15 = SLRoundToScale(v14 * 0.5, displayScale);

    isRTL = [(SLDHighlightPillRenderer *)self isRTL];
    [(SLDHighlightPillRenderer *)self _renderAvatarsInContext:context];
    metricsProvider3 = [(SLDHighlightPillRenderer *)self metricsProvider];
    if ([metricsProvider3 useDoubleLinedLabel])
    {
      metricsProvider4 = [(SLDHighlightPillRenderer *)self metricsProvider];
      firstLine = [metricsProvider4 firstLine];

      if (firstLine)
      {
        metricsProvider5 = [(SLDHighlightPillRenderer *)self metricsProvider];
        firstLine2 = [metricsProvider5 firstLine];

        metricsProvider6 = [(SLDHighlightPillRenderer *)self metricsProvider];
        secondLine = [metricsProvider6 secondLine];

        BoundsWithOptions = CTLineGetBoundsWithOptions(firstLine2, 0);
        height = BoundsWithOptions.size.height;
        CGContextSaveGState(context);
        v25 = CTFontGetAscent([(SLDHighlightPillRenderer *)self font]);
        CGContextSetFontRenderingStyle();
        if (secondLine)
        {
          metricsProvider7 = [(SLDHighlightPillRenderer *)self metricsProvider];
          [metricsProvider7 margins];
          v28 = v25 + v27;
        }

        else
        {
          v55 = SLRoundToScale(height, displayScale);
          v28 = SLRoundToScale(v25 + v15 + v55 * -0.5, displayScale);
        }

        metricsProvider8 = [(SLDHighlightPillRenderer *)self metricsProvider];
        [metricsProvider8 pillSize];
        if (isRTL)
        {
          PenOffsetForFlush = CTLineGetPenOffsetForFlush(firstLine2, 1.0, v57);
          v59 = SLRoundToScale(PenOffsetForFlush, displayScale);

          metricsProvider9 = [(SLDHighlightPillRenderer *)self metricsProvider];
          [metricsProvider9 margins];
          v62 = v59 - v61;
          metricsProvider10 = [(SLDHighlightPillRenderer *)self metricsProvider];
          [metricsProvider10 avatarContainerWidth];
          v65 = v62 - v64;
          metricsProvider11 = [(SLDHighlightPillRenderer *)self metricsProvider];
          [metricsProvider11 labelHorizontalMargins];
          v68 = v65 - v67;
        }

        else
        {
          v69 = CTLineGetPenOffsetForFlush(firstLine2, 0.0, v57);
          v70 = SLRoundToScale(v69, displayScale);

          metricsProvider9 = [(SLDHighlightPillRenderer *)self metricsProvider];
          [metricsProvider9 margins];
          v72 = v70 + v71;
          metricsProvider10 = [(SLDHighlightPillRenderer *)self metricsProvider];
          [metricsProvider10 avatarContainerWidth];
          v74 = v72 + v73;
          metricsProvider11 = [(SLDHighlightPillRenderer *)self metricsProvider];
          [metricsProvider11 labelHorizontalMargins];
          v68 = v74 + v75;
        }

        buf.a = 1.0;
        buf.b = 0.0;
        buf.c = 0.0;
        buf.d = -1.0;
        buf.tx = v68;
        buf.ty = v28;
        CGContextSetTextMatrix(context, &buf);
        CTLineDraw(firstLine2, context);
        if (!secondLine)
        {
          goto LABEL_27;
        }

        metricsProvider12 = [(SLDHighlightPillRenderer *)self metricsProvider];
        [metricsProvider12 pillSize];
        if (isRTL)
        {
          v78 = CTLineGetPenOffsetForFlush(secondLine, 1.0, v77);
          v79 = SLRoundToScale(v78, displayScale);

          metricsProvider13 = [(SLDHighlightPillRenderer *)self metricsProvider];
          [metricsProvider13 margins];
          v82 = v79 - v81;
          metricsProvider14 = [(SLDHighlightPillRenderer *)self metricsProvider];
          [metricsProvider14 avatarContainerWidth];
          v85 = v82 - v84;
          metricsProvider15 = [(SLDHighlightPillRenderer *)self metricsProvider];
          [metricsProvider15 labelHorizontalMargins];
          v88 = v85 - v87;
        }

        else
        {
          v89 = CTLineGetPenOffsetForFlush(secondLine, 0.0, v77);
          v90 = SLRoundToScale(v89, displayScale);

          metricsProvider13 = [(SLDHighlightPillRenderer *)self metricsProvider];
          [metricsProvider13 margins];
          v92 = v90 + v91;
          metricsProvider14 = [(SLDHighlightPillRenderer *)self metricsProvider];
          [metricsProvider14 avatarContainerWidth];
          v94 = v92 + v93;
          metricsProvider15 = [(SLDHighlightPillRenderer *)self metricsProvider];
          [metricsProvider15 labelHorizontalMargins];
          v88 = v94 + v95;
        }

        v96 = SLRoundToScale(height, displayScale);
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

    metricsProvider16 = [(SLDHighlightPillRenderer *)self metricsProvider];
    firstLine3 = [metricsProvider16 firstLine];

    if (!firstLine3)
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

    metricsProvider17 = [(SLDHighlightPillRenderer *)self metricsProvider];
    secondLine = [metricsProvider17 firstLine];

    CGContextSaveGState(context);
    v101 = CTLineGetBoundsWithOptions(secondLine, 0);
    v33 = v101.size.height;
    ascent = 0.0;
    CTLineGetTypographicBounds(secondLine, &ascent, 0, 0);
    ascent = SLRoundToScale(ascent, displayScale);
    v34 = SLRoundToScale(v33, displayScale);
    metricsProvider18 = [(SLDHighlightPillRenderer *)self metricsProvider];
    [metricsProvider18 pillSize];
    v37 = CTLineGetPenOffsetForFlush(secondLine, 0.0, v36);
    v38 = SLRoundToScale(v37, displayScale);

    metricsProvider19 = [(SLDHighlightPillRenderer *)self metricsProvider];
    [metricsProvider19 margins];
    v41 = v40;
    v43 = v42;
    metricsProvider20 = [(SLDHighlightPillRenderer *)self metricsProvider];
    v45 = metricsProvider20;
    if (isRTL)
    {
      [metricsProvider20 chevronSize];
      v47 = v43 + v46;
      metricsProvider21 = [(SLDHighlightPillRenderer *)self metricsProvider];
      [metricsProvider21 labelHorizontalMargins];
      v50 = v47 + v49;
    }

    else
    {
      [metricsProvider20 avatarContainerWidth];
      v52 = v41 + v51;
      metricsProvider21 = [(SLDHighlightPillRenderer *)self metricsProvider];
      [metricsProvider21 labelHorizontalMargins];
      v50 = v52 + v53;
    }

    v54 = SLRoundToScale(v15 + v34 * -0.5 + ascent, displayScale);
    CGContextSetFontRenderingStyle();
    buf.a = 1.0;
    buf.b = 0.0;
    buf.c = 0.0;
    buf.d = -1.0;
    buf.tx = v38 + v50;
    buf.ty = v54;
LABEL_26:
    CGContextSetTextMatrix(context, &buf);
    CTLineDraw(secondLine, context);
    CGContextRestoreGState(context);
    goto LABEL_27;
  }

  v29 = SLDaemonLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    [(SLDHighlightPillRenderer *)self renderInContext:v29];
  }

LABEL_30:
}

- (void)_renderAvatarsInContext:(CGContext *)context
{
  v97 = *MEMORY[0x277D85DE8];
  metricsProvider = [(SLDHighlightPillRenderer *)self metricsProvider];
  slotStyle = [(SLDHighlightPillRenderer *)self slotStyle];
  displayScale = [slotStyle displayScale];

  [metricsProvider avatarDiameter];
  v8 = v7;
  [metricsProvider overlappedAvatarKnockoutBorderWidth];
  v10 = v9;
  [metricsProvider pillSize];
  v12 = v11 * 0.5;
  [metricsProvider avatarDiameter];
  v14 = SLRoundToScale(v12 - v13 * 0.5, displayScale);
  [metricsProvider overlappedAvatarVisibleWidth];
  v16 = v15;
  selfCopy = self;
  slotStyle2 = [(SLDHighlightPillRenderer *)self slotStyle];
  layoutDirection = [slotStyle2 layoutDirection];

  [metricsProvider margins];
  v20 = v19;
  [metricsProvider avatarContainerWidth];
  v22 = v20 + v21;
  if (layoutDirection == 1)
  {
    v23 = 1.0;
  }

  else
  {
    v23 = -1.0;
  }

  if (layoutDirection == 1)
  {
    [metricsProvider pillSize];
    v25 = v24 - v22;
  }

  else
  {
    v25 = v22 - v8;
  }

  imageCount = [metricsProvider imageCount];
  slotTag = [(SLDHighlightPillRenderer *)self slotTag];
  pinnedSender = [slotTag pinnedSender];
  if (pinnedSender)
  {
    v29 = imageCount > 1;
  }

  else
  {
    v29 = 0;
  }

  v30 = v29;
  v31 = imageCount - v30;

  selfCopy2 = self;
  slotTag2 = [(SLDHighlightPillRenderer *)self slotTag];
  sendersToDisplay = [slotTag2 sendersToDisplay];

  if ([sendersToDisplay count] > v31)
  {
    v35 = [sendersToDisplay subarrayWithRange:{0, v31}];

    sendersToDisplay = v35;
  }

  slotTag3 = [(SLDHighlightPillRenderer *)selfCopy slotTag];
  groupPhotoPath = [slotTag3 groupPhotoPath];
  v85 = imageCount;
  v86 = sendersToDisplay;
  if (groupPhotoPath)
  {
    v38 = groupPhotoPath;
    slotTag4 = [(SLDHighlightPillRenderer *)selfCopy slotTag];
    groupID = [slotTag4 groupID];

    if (groupID)
    {
      slotTag5 = [(SLDHighlightPillRenderer *)selfCopy slotTag];
      groupID2 = [slotTag5 groupID];
      v43 = SLDCreateGroupPhotoImageWithGroupID(groupID2);

      if (v43)
      {
        goto LABEL_21;
      }

      v44 = SLDaemonLogHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v96 = selfCopy;
        _os_log_impl(&dword_231772000, v44, OS_LOG_TYPE_INFO, "[%@] SLDHighlightPillRenderer Failed to get avatar image from IMSPI. Trying with groupPhotoFileURL.", buf, 0xCu);
      }

      v45 = MEMORY[0x277CBEA90];
      slotTag6 = [(SLDHighlightPillRenderer *)selfCopy slotTag];
      groupPhotoPath2 = [slotTag6 groupPhotoPath];
      v48 = [v45 dataWithContentsOfURL:groupPhotoPath2 options:1 error:0];

      v43 = [(SLDHighlightPillRenderer *)selfCopy _newAvatarImageFromImageData:v48];
      if (v43)
      {
LABEL_21:
        [(SLDHighlightPillRenderer *)selfCopy _drawAvatarImage:v43 inContext:context atRect:v25, v14, v8, v8];
        CGImageRelease(v43);
      }

      else
      {
        slotStyle3 = [(SLDHighlightPillRenderer *)selfCopy slotStyle];
        metricsProvider2 = [(SLDHighlightPillRenderer *)selfCopy metricsProvider];
        [metricsProvider2 pillSize];
        SLDRenderContactSilhouetteInContextAtRect(slotStyle3, context, 1, v82, v25, v14, v8, v8);
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

  v84 = metricsProvider;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  obj = [sendersToDisplay reverseObjectEnumerator];
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
      thumbnailImageData = [v56 thumbnailImageData];
      v58 = [(SLDHighlightPillRenderer *)selfCopy2 _newAvatarImageFromImageData:thumbnailImageData];
      if (v50)
      {
        [(SLDHighlightPillRenderer *)selfCopy2 _drawKnockoutBorderWidth:context atXPosition:v10 aroundImageWithYPosition:v25 - v10 diameter:v14 inContext:v8];
      }

      if (v58)
      {
        [(SLDHighlightPillRenderer *)selfCopy2 _drawAvatarImage:v58 inContext:context atRect:v25, v14, v8, v8];
        CGImageRelease(v58);
      }

      else
      {
        contact = [v56 contact];
        slotStyle4 = [(SLDHighlightPillRenderer *)selfCopy2 slotStyle];
        metricsProvider3 = [(SLDHighlightPillRenderer *)selfCopy2 metricsProvider];
        [metricsProvider3 pillSize];
        SLDRenderContactMonogramInContextAtRect(slotStyle4, contact, context, 1, v62, v25, v14, v8, v8);

        selfCopy2 = selfCopy;
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

  metricsProvider = v84;
LABEL_42:
  metricsProvider4 = [(SLDHighlightPillRenderer *)selfCopy2 metricsProvider];
  if (![metricsProvider4 shouldDisplayPin])
  {
LABEL_48:

    goto LABEL_49;
  }

  slotTag7 = [(SLDHighlightPillRenderer *)selfCopy2 slotTag];
  pinnedSender2 = [slotTag7 pinnedSender];

  if (pinnedSender2 && v49 < v85)
  {
    v66 = metricsProvider;
    if (v50)
    {
      [(SLDHighlightPillRenderer *)selfCopy _drawKnockoutBorderWidth:context atXPosition:v10 aroundImageWithYPosition:v25 - v10 diameter:v14 inContext:v8];
    }

    slotStyle5 = [(SLDHighlightPillRenderer *)selfCopy slotStyle];
    v68 = SLDCreateColorNamed(slotStyle5, @"HighlightStarColor");

    CGContextSetFillColorWithColor(context, v68);
    CGColorRelease(v68);
    v98.origin.x = v25;
    v98.origin.y = v14;
    v98.size.width = v8;
    v98.size.height = v8;
    CGContextFillEllipseInRect(context, v98);
    v69 = SLRoundToScale(v8 * 0.68, displayScale);
    slotStyle6 = [(SLDHighlightPillRenderer *)selfCopy slotStyle];
    metricsProvider4 = SLDSystemVectorGlyphWithSlotStyle(slotStyle6, @"pin.fill", 1, 4, v69);

    [metricsProvider4 contentBounds];
    v72 = v71;
    [metricsProvider4 contentBounds];
    v74 = SLRectCenteredInRectToScale(v25, v14, v72, v73, v25, v14, v8, v8, displayScale);
    v76 = v75;
    v77 = objc_alloc(MEMORY[0x277D77800]);
    v78 = [v77 initWithVectorGlyph:metricsProvider4 tintColor:CGColorGetConstantColor(*MEMORY[0x277CBF4D8])];
    CGContextSaveGState(context);
    [v78 drawInContext:context atPoint:{v74, v76}];
    CGContextRestoreGState(context);

    metricsProvider = v66;
    goto LABEL_48;
  }

LABEL_49:

  v79 = *MEMORY[0x277D85DE8];
}

- (CGImage)_newAvatarImageFromImageData:(id)data
{
  dataCopy = data;
  v4 = dataCopy;
  if (!dataCopy)
  {
    goto LABEL_5;
  }

  v5 = CGDataProviderCreateWithCFData(dataCopy);
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

- (void)_drawAvatarImage:(CGImage *)image inContext:(CGContext *)context atRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  CGImageRetain(image);
  CGContextSaveGState(context);
  metricsProvider = [(SLDHighlightPillRenderer *)self metricsProvider];
  [metricsProvider pillSize];
  CGContextTranslateCTM(context, 0.0, v13);

  CGContextScaleCTM(context, 1.0, -1.0);
  CGContextBeginPath(context);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  CGContextAddEllipseInRect(context, v15);
  CGContextClip(context);
  CGContextClosePath(context);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  CGContextDrawImage(context, v16, image);
  CGContextRestoreGState(context);

  CGImageRelease(image);
}

- (void)_drawKnockoutBorderWidth:(double)width atXPosition:(double)position aroundImageWithYPosition:(double)yPosition diameter:(double)diameter inContext:(CGContext *)context
{
  CGContextSaveGState(context);
  ConstantColor = CGColorGetConstantColor(*MEMORY[0x277CBF3C0]);
  CGContextSetFillColorWithColor(context, ConstantColor);
  CGContextSetBlendMode(context, kCGBlendModeClear);
  CGContextBeginPath(context);
  v14.origin.x = position;
  v14.origin.y = yPosition - width;
  v14.size.width = diameter + width * 2.0;
  v14.size.height = v14.size.width;
  CGContextAddEllipseInRect(context, v14);
  CGContextDrawPath(context, kCGPathFill);

  CGContextRestoreGState(context);
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