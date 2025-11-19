@interface SLDHighlightDisambiguationPillRenderer
- (SLDHighlightDisambiguationPillRenderer)initWithStyle:(id)a3 tag:(id)a4;
- (void)_renderAvatarInContext:(CGContext *)a3;
- (void)renderInContext:(CGContext *)a3;
@end

@implementation SLDHighlightDisambiguationPillRenderer

- (SLDHighlightDisambiguationPillRenderer)initWithStyle:(id)a3 tag:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = SLDHighlightDisambiguationPillRenderer;
  v9 = [(SLDHighlightDisambiguationPillRenderer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_slotStyle, a3);
    objc_storeStrong(&v10->_slotTag, a4);
    v11 = [[SLHighlightDisambiguationPillMetrics alloc] initWithSlotStyle:v7 tag:v8];
    metricsProvider = v10->_metricsProvider;
    v10->_metricsProvider = v11;

    v10->_RTL = [v7 layoutDirection] == 1;
  }

  return v10;
}

- (void)renderInContext:(CGContext *)a3
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

  v9 = [(SLDHighlightDisambiguationPillRenderer *)self slotStyle];
  v10 = [v9 displayScale];

  v11 = [(SLDHighlightDisambiguationPillRenderer *)self metricsProvider];
  [v11 pillSize];
  v13 = SLRoundToScale(v12 * 0.5, v10);
  v14 = [(SLDHighlightDisambiguationPillRenderer *)self isRTL];
  [(SLDHighlightDisambiguationPillRenderer *)self _renderAvatarInContext:a3];
  v15 = [v11 useSingleLineLayout];
  v16 = [v11 firstLineAttributedString];
  if (v15)
  {
    [v11 firstLineSize];
    v17 = [v11 lineFrom:v16 maxWidth:?];

    CGContextSaveGState(a3);
    BoundsWithOptions = CTLineGetBoundsWithOptions(v17, 0);
    height = BoundsWithOptions.size.height;
    ascent = 0.0;
    [v11 pillSize];
    if (v14)
    {
      PenOffsetForFlush = CTLineGetPenOffsetForFlush(v17, 1.0, v19);
      v21 = SLRoundToScale(PenOffsetForFlush, v10);
      [v11 margins];
      v23 = v21 - v22;
      [v11 avatarDiameter];
      v25 = v23 - v24;
      [v11 labelHorizontalMargins];
      v27 = v25 - v26;
    }

    else
    {
      v51 = CTLineGetPenOffsetForFlush(v17, 0.0, v19);
      v52 = SLRoundToScale(v51, v10);
      [v11 margins];
      v54 = v53;
      [v11 avatarDiameter];
      v56 = v54 + v55;
      [v11 labelHorizontalMargins];
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
    CGContextSetTextMatrix(a3, &buf);
    CTLineDraw(v17, a3);
    CGContextRestoreGState(a3);
  }

  else
  {
    v28 = [v11 secondLineAttributedString];
    [v11 firstLineSize];
    v29 = [v11 lineFrom:v16 maxWidth:?];
    [v11 secondLineSize];
    v30 = [v11 lineFrom:v28 maxWidth:?];
    v98 = CTLineGetBoundsWithOptions(v29, 0);
    v31 = v98.size.height;
    CGContextSaveGState(a3);
    v32 = CTFontGetAscent([v11 firstLineFont]);
    if (v14)
    {
      [v11 pillSize];
      v34 = CTLineGetPenOffsetForFlush(v29, 1.0, v33);
      v35 = SLRoundToScale(v34, v10);
      [v11 pillSize];
      v37 = CTLineGetPenOffsetForFlush(v30, 1.0, v36);
      v38 = SLRoundToScale(v37, v10);
      [v11 margins];
      v40 = v35 - v39;
      [v11 avatarDiameter];
      v42 = v40 - v41;
      [v11 labelHorizontalMargins];
      v44 = v42 - v43;
      [v11 margins];
      v46 = v38 - v45;
      [v11 avatarDiameter];
      v48 = v46 - v47;
      [v11 labelHorizontalMargins];
      v50 = v48 - v49;
    }

    else
    {
      [v11 margins];
      v60 = v59;
      [v11 avatarDiameter];
      v62 = v60 + v61;
      [v11 labelHorizontalMargins];
      v64 = v62 + v63;
      [v11 pillSize];
      v44 = v64 + CTLineGetPenOffsetForFlush(v29, 0.0, v65);
      [v11 margins];
      v67 = v66;
      [v11 avatarDiameter];
      v69 = v67 + v68;
      [v11 labelHorizontalMargins];
      v71 = v69 + v70;
      [v11 pillSize];
      v50 = v71 + CTLineGetPenOffsetForFlush(v30, 0.0, v72);
    }

    [v11 margins];
    v74 = v32 + v73;
    v75 = v31 + v74;
    CGContextSetFontRenderingStyle();
    buf.a = 1.0;
    buf.b = 0.0;
    buf.c = 0.0;
    buf.d = -1.0;
    buf.tx = v44;
    buf.ty = v74;
    CGContextSetTextMatrix(a3, &buf);
    CTLineDraw(v29, a3);
    buf.a = 1.0;
    buf.b = 0.0;
    buf.c = 0.0;
    buf.d = -1.0;
    buf.tx = v50;
    buf.ty = v31 + v74;
    CGContextSetTextMatrix(a3, &buf);
    CTLineDraw(v30, a3);
    CGContextRestoreGState(a3);
    if ([v11 useChevron])
    {
      v76 = [v11 chevronImage];
      if (v76)
      {
        v77 = v76;
        CGContextSaveGState(a3);
        [v11 chevronSize];
        v79 = v78;
        v81 = v80;
        [v11 margins];
        v83 = v82;
        [v11 avatarDiameter];
        v85 = v83 + v84;
        [v11 labelHorizontalMargins];
        v87 = v85 + v86;
        [v11 secondLineSize];
        v89 = v87 + v88;
        [v11 chevronLeadingMargin];
        v91 = v90 + v89;
        if (v14)
        {
          [v11 pillSize];
          v91 = v92 - v91 - v79;
        }

        buf.a = 1.0;
        buf.b = 0.0;
        buf.c = 0.0;
        buf.d = -1.0;
        buf.tx = v91;
        buf.ty = v75;
        CGContextConcatCTM(a3, &buf);
        SLDRenderTintedImageInContext(a3, v77, [v11 secondLineColor], 0.0, 0.0, v79, v81);
        CGContextRestoreGState(a3);
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

- (void)_renderAvatarInContext:(CGContext *)a3
{
  CGContextSaveGState(a3);
  v31 = [(SLDHighlightDisambiguationPillRenderer *)self metricsProvider];
  [v31 avatarDiameter];
  v6 = v5;
  [v31 margins];
  v8 = v7;
  [v31 pillSize];
  v10 = v9 * 0.5;
  [v31 avatarDiameter];
  v12 = v10 - v11 * 0.5;
  v13 = [(SLDHighlightDisambiguationPillRenderer *)self slotStyle];
  v14 = SLRoundToScale(v12, [v13 displayScale]);

  if ([(SLDHighlightDisambiguationPillRenderer *)self isRTL])
  {
    [v31 pillSize];
    v16 = v15 - v8;
    [v31 avatarDiameter];
    v8 = v16 - v17;
  }

  v18 = [(SLDHighlightDisambiguationPillRenderer *)self slotTag];
  v19 = [v18 sender];
  v20 = [v19 thumbnailImageData];

  if (v20 && (v21 = CGDataProviderCreateWithCFData(v20)) != 0 && (v22 = v21, v23 = CGImageSourceCreateWithDataProvider(v21, 0), CFRelease(v22), v23) && (ImageAtIndex = CGImageSourceCreateImageAtIndex(v23, 0, 0), CFRelease(v23), ImageAtIndex))
  {
    [v31 pillSize];
    CGContextTranslateCTM(a3, 0.0, v25);
    CGContextScaleCTM(a3, 1.0, -1.0);
    CGContextBeginPath(a3);
    v33.origin.x = v8;
    v33.origin.y = v14;
    v33.size.width = v6;
    v33.size.height = v6;
    CGContextAddEllipseInRect(a3, v33);
    CGContextClip(a3);
    CGContextClosePath(a3);
    v34.origin.x = v8;
    v34.origin.y = v14;
    v34.size.width = v6;
    v34.size.height = v6;
    CGContextDrawImage(a3, v34, ImageAtIndex);
    CGImageRelease(ImageAtIndex);
  }

  else
  {
    v26 = [(SLDHighlightDisambiguationPillRenderer *)self slotTag];
    v27 = [v26 sender];
    v28 = [v27 contact];

    v29 = [(SLDHighlightDisambiguationPillRenderer *)self slotStyle];
    [v31 pillSize];
    SLDRenderContactMonogramInContextAtRect(v29, v28, a3, 1, v30, v8, v14, v6, v6);
  }

  CGContextRestoreGState(a3);
}

@end