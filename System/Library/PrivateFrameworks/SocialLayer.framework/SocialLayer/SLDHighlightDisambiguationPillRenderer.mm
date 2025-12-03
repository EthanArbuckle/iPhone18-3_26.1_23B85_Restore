@interface SLDHighlightDisambiguationPillRenderer
- (SLDHighlightDisambiguationPillRenderer)initWithStyle:(id)style tag:(id)tag;
- (void)_renderAvatarInContext:(CGContext *)context;
- (void)renderInContext:(CGContext *)context;
@end

@implementation SLDHighlightDisambiguationPillRenderer

- (SLDHighlightDisambiguationPillRenderer)initWithStyle:(id)style tag:(id)tag
{
  styleCopy = style;
  tagCopy = tag;
  v14.receiver = self;
  v14.super_class = SLDHighlightDisambiguationPillRenderer;
  v9 = [(SLDHighlightDisambiguationPillRenderer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_slotStyle, style);
    objc_storeStrong(&v10->_slotTag, tag);
    v11 = [[SLHighlightDisambiguationPillMetrics alloc] initWithSlotStyle:styleCopy tag:tagCopy];
    metricsProvider = v10->_metricsProvider;
    v10->_metricsProvider = v11;

    v10->_RTL = [styleCopy layoutDirection] == 1;
  }

  return v10;
}

- (void)renderInContext:(CGContext *)context
{
  v5 = SLGeneralTelemetryLogHandle();
  v6 = os_signpost_id_generate(v5);

  v7 = SLGeneralTelemetryLogHandle();
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(buf.a) = 0;
    _os_signpost_emit_with_name_impl(&dword_231772000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "DaemonHighlightDisambiguationPillRenderInContext", "", &buf, 2u);
  }

  slotStyle = [(SLDHighlightDisambiguationPillRenderer *)self slotStyle];
  displayScale = [slotStyle displayScale];

  metricsProvider = [(SLDHighlightDisambiguationPillRenderer *)self metricsProvider];
  [metricsProvider pillSize];
  v13 = SLRoundToScale(v12 * 0.5, displayScale);
  isRTL = [(SLDHighlightDisambiguationPillRenderer *)self isRTL];
  [(SLDHighlightDisambiguationPillRenderer *)self _renderAvatarInContext:context];
  useSingleLineLayout = [metricsProvider useSingleLineLayout];
  firstLineAttributedString = [metricsProvider firstLineAttributedString];
  if (useSingleLineLayout)
  {
    [metricsProvider firstLineSize];
    v17 = [metricsProvider lineFrom:firstLineAttributedString maxWidth:?];

    CGContextSaveGState(context);
    BoundsWithOptions = CTLineGetBoundsWithOptions(v17, 0);
    height = BoundsWithOptions.size.height;
    ascent = 0.0;
    [metricsProvider pillSize];
    if (isRTL)
    {
      PenOffsetForFlush = CTLineGetPenOffsetForFlush(v17, 1.0, v19);
      v21 = SLRoundToScale(PenOffsetForFlush, displayScale);
      [metricsProvider margins];
      v23 = v21 - v22;
      [metricsProvider avatarDiameter];
      v25 = v23 - v24;
      [metricsProvider labelHorizontalMargins];
      v27 = v25 - v26;
    }

    else
    {
      v51 = CTLineGetPenOffsetForFlush(v17, 0.0, v19);
      v52 = SLRoundToScale(v51, displayScale);
      [metricsProvider margins];
      v54 = v53;
      [metricsProvider avatarDiameter];
      v56 = v54 + v55;
      [metricsProvider labelHorizontalMargins];
      v27 = v52 + v56 + v57;
    }

    v58 = v13 + height * -0.5 + ascent;
    CGContextSetFontRenderingStyle();
    buf.a = 1.0;
    buf.b = 0.0;
    buf.c = 0.0;
    buf.d = -1.0;
    buf.tx = v27;
    buf.ty = v58;
    CGContextSetTextMatrix(context, &buf);
    CTLineDraw(v17, context);
    CGContextRestoreGState(context);
  }

  else
  {
    secondLineAttributedString = [metricsProvider secondLineAttributedString];
    [metricsProvider firstLineSize];
    v29 = [metricsProvider lineFrom:firstLineAttributedString maxWidth:?];
    [metricsProvider secondLineSize];
    v30 = [metricsProvider lineFrom:secondLineAttributedString maxWidth:?];
    v98 = CTLineGetBoundsWithOptions(v29, 0);
    v31 = v98.size.height;
    CGContextSaveGState(context);
    v32 = CTFontGetAscent([metricsProvider firstLineFont]);
    if (isRTL)
    {
      [metricsProvider pillSize];
      v34 = CTLineGetPenOffsetForFlush(v29, 1.0, v33);
      v35 = SLRoundToScale(v34, displayScale);
      [metricsProvider pillSize];
      v37 = CTLineGetPenOffsetForFlush(v30, 1.0, v36);
      v38 = SLRoundToScale(v37, displayScale);
      [metricsProvider margins];
      v40 = v35 - v39;
      [metricsProvider avatarDiameter];
      v42 = v40 - v41;
      [metricsProvider labelHorizontalMargins];
      v44 = v42 - v43;
      [metricsProvider margins];
      v46 = v38 - v45;
      [metricsProvider avatarDiameter];
      v48 = v46 - v47;
      [metricsProvider labelHorizontalMargins];
      v50 = v48 - v49;
    }

    else
    {
      [metricsProvider margins];
      v60 = v59;
      [metricsProvider avatarDiameter];
      v62 = v60 + v61;
      [metricsProvider labelHorizontalMargins];
      v64 = v62 + v63;
      [metricsProvider pillSize];
      v44 = v64 + CTLineGetPenOffsetForFlush(v29, 0.0, v65);
      [metricsProvider margins];
      v67 = v66;
      [metricsProvider avatarDiameter];
      v69 = v67 + v68;
      [metricsProvider labelHorizontalMargins];
      v71 = v69 + v70;
      [metricsProvider pillSize];
      v50 = v71 + CTLineGetPenOffsetForFlush(v30, 0.0, v72);
    }

    [metricsProvider margins];
    v74 = v32 + v73;
    v75 = v31 + v74;
    CGContextSetFontRenderingStyle();
    buf.a = 1.0;
    buf.b = 0.0;
    buf.c = 0.0;
    buf.d = -1.0;
    buf.tx = v44;
    buf.ty = v74;
    CGContextSetTextMatrix(context, &buf);
    CTLineDraw(v29, context);
    buf.a = 1.0;
    buf.b = 0.0;
    buf.c = 0.0;
    buf.d = -1.0;
    buf.tx = v50;
    buf.ty = v31 + v74;
    CGContextSetTextMatrix(context, &buf);
    CTLineDraw(v30, context);
    CGContextRestoreGState(context);
    if ([metricsProvider useChevron])
    {
      chevronImage = [metricsProvider chevronImage];
      if (chevronImage)
      {
        v77 = chevronImage;
        CGContextSaveGState(context);
        [metricsProvider chevronSize];
        v79 = v78;
        v81 = v80;
        [metricsProvider margins];
        v83 = v82;
        [metricsProvider avatarDiameter];
        v85 = v83 + v84;
        [metricsProvider labelHorizontalMargins];
        v87 = v85 + v86;
        [metricsProvider secondLineSize];
        v89 = v87 + v88;
        [metricsProvider chevronLeadingMargin];
        v91 = v90 + v89;
        if (isRTL)
        {
          [metricsProvider pillSize];
          v91 = v92 - v91 - v79;
        }

        buf.a = 1.0;
        buf.b = 0.0;
        buf.c = 0.0;
        buf.d = -1.0;
        buf.tx = v91;
        buf.ty = v75;
        CGContextConcatCTM(context, &buf);
        SLDRenderTintedImageInContext(context, v77, [metricsProvider secondLineColor], 0.0, 0.0, v79, v81);
        CGContextRestoreGState(context);
      }
    }
  }

  v93 = SLGeneralTelemetryLogHandle();
  v94 = v93;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v93))
  {
    LOWORD(buf.a) = 0;
    _os_signpost_emit_with_name_impl(&dword_231772000, v94, OS_SIGNPOST_INTERVAL_END, v6, "DaemonHighlightDisambiguationPillRenderInContext", "", &buf, 2u);
  }
}

- (void)_renderAvatarInContext:(CGContext *)context
{
  CGContextSaveGState(context);
  metricsProvider = [(SLDHighlightDisambiguationPillRenderer *)self metricsProvider];
  [metricsProvider avatarDiameter];
  v6 = v5;
  [metricsProvider margins];
  v8 = v7;
  [metricsProvider pillSize];
  v10 = v9 * 0.5;
  [metricsProvider avatarDiameter];
  v12 = v10 - v11 * 0.5;
  slotStyle = [(SLDHighlightDisambiguationPillRenderer *)self slotStyle];
  v14 = SLRoundToScale(v12, [slotStyle displayScale]);

  if ([(SLDHighlightDisambiguationPillRenderer *)self isRTL])
  {
    [metricsProvider pillSize];
    v16 = v15 - v8;
    [metricsProvider avatarDiameter];
    v8 = v16 - v17;
  }

  slotTag = [(SLDHighlightDisambiguationPillRenderer *)self slotTag];
  sender = [slotTag sender];
  thumbnailImageData = [sender thumbnailImageData];

  if (thumbnailImageData && (v21 = CGDataProviderCreateWithCFData(thumbnailImageData)) != 0 && (v22 = v21, v23 = CGImageSourceCreateWithDataProvider(v21, 0), CFRelease(v22), v23) && (ImageAtIndex = CGImageSourceCreateImageAtIndex(v23, 0, 0), CFRelease(v23), ImageAtIndex))
  {
    [metricsProvider pillSize];
    CGContextTranslateCTM(context, 0.0, v25);
    CGContextScaleCTM(context, 1.0, -1.0);
    CGContextBeginPath(context);
    v33.origin.x = v8;
    v33.origin.y = v14;
    v33.size.width = v6;
    v33.size.height = v6;
    CGContextAddEllipseInRect(context, v33);
    CGContextClip(context);
    CGContextClosePath(context);
    v34.origin.x = v8;
    v34.origin.y = v14;
    v34.size.width = v6;
    v34.size.height = v6;
    CGContextDrawImage(context, v34, ImageAtIndex);
    CGImageRelease(ImageAtIndex);
  }

  else
  {
    slotTag2 = [(SLDHighlightDisambiguationPillRenderer *)self slotTag];
    sender2 = [slotTag2 sender];
    contact = [sender2 contact];

    slotStyle2 = [(SLDHighlightDisambiguationPillRenderer *)self slotStyle];
    [metricsProvider pillSize];
    SLDRenderContactMonogramInContextAtRect(slotStyle2, contact, context, 1, v30, v8, v14, v6, v6);
  }

  CGContextRestoreGState(context);
}

@end