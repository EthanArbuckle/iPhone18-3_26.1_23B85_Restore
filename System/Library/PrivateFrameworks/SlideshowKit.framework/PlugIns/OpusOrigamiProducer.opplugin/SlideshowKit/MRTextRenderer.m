@interface MRTextRenderer
- ($0AC6E346AE4835514AAA8AC86D8F4844)rangeOfGlyphsForWordsInRange:(id)a3;
- ($0AC6E346AE4835514AAA8AC86D8F4844)rangeOfGlyphsOnLine:(int64_t)a3;
- ($0AC6E346AE4835514AAA8AC86D8F4844)rangeOfStringForGlyphIndex:(int64_t)a3;
- ($0AC6E346AE4835514AAA8AC86D8F4844)rangeOfWordsOnLine:(int64_t)a3;
- (CGContext)_retainedContextFromAttributedString:(id)a3 withSize:(CGSize)a4;
- (CGContext)retainedContext;
- (CGContext)retainedContextOfGlyphAtIndex:(int64_t)a3;
- (CGContext)retainedContextOfWordsInRange:(id)a3;
- (CGPoint)originOfGlyphAtIndex:(int64_t)a3;
- (CGPoint)originOfWordAtIndex:(int64_t)a3;
- (CGRect)_textClipRectForString:(id)a3;
- (CGRect)_tightFrameOfLineAtIndex:(int64_t)a3 inString:(id)a4 withSize:(CGSize)a5;
- (CGRect)frameOfLineWithGlyphAtIndex:(int64_t)a3 range:(_NSRange *)a4;
- (CGRect)imageRect;
- (CGRect)tightFrameOfAllLines;
- (CGRect)tightFrameOfLineAtIndex:(int64_t)a3;
- (CGSize)_shadowSizeOffsetForString:(id)a3;
- (CGSize)_sizeOfString:(id)a3;
- (CGSize)_sizeToRendererAt;
- (CGSize)definedSize;
- (CGSize)inset;
- (CGSize)resolution;
- (CGSize)shadowOffset;
- (CGSize)sizeOfContext;
- (CGSize)sizeOfText;
- (MRTextRenderer)init;
- (MRTextRenderer)initWithText:(id)a3 resolution:(CGSize)a4;
- (NSAttributedString)text;
- (double)_strikethroughThinkness:(int64_t)a3 baselineOffset:(double)a4 lineRect:(CGRect)a5;
- (id)_invertRect:(CGRect)a3 inRect:(CGRect)a4;
- (id)_truncateTextToFitInSize:(CGSize)a3 fromCenter:(BOOL)a4 outSize:(CGSize *)a5;
- (id)truncatedText;
- (int64_t)_glyphIndexForStringIndex:(int64_t)a3 inString:(id)a4 forSize:(CGSize)a5;
- (int64_t)_numberOfLinesInString:(id)a3;
- (int64_t)countOfGlyphs;
- (int64_t)countOfWords;
- (int64_t)glyphIndexForStringIndex:(int64_t)a3;
- (int64_t)numberOfLines;
- (int64_t)numberOfLinesForTruncatedText;
- (void)_drawInContext:(CGContext *)a3 withAttributedString:(id)a4 withSize:(CGSize)a5 andScale:(double)a6;
- (void)cacheText;
- (void)cleanup;
- (void)clearCache;
- (void)dealloc;
- (void)setPlaceholderText:(id)a3;
- (void)setText:(id)a3;
- (void)squeezeWidthForLineCount:(int64_t)a3;
- (void)trimWhitespace;
- (void)updateLineSpacing;
@end

@implementation MRTextRenderer

- (MRTextRenderer)init
{
  v5.receiver = self;
  v5.super_class = MRTextRenderer;
  result = [(MRTextRenderer *)&v5 init];
  if (result)
  {
    v3 = CGSizeZero;
    result->_definedSize = CGSizeZero;
    result->_inset = v3;
    size = CGRectZero.size;
    result->_imageRect.origin = CGRectZero.origin;
    result->_text = 0;
    result->_truncate = 1;
    result->_maxNumberOfLines = 10000000;
    result->_lineSpacingFactor = 1.0;
    result->_scale = 1.0;
    result->_columnCount = 0;
    result->_imageRect.size = size;
    *&result->_columnMargin = xmmword_1640E0;
    result->_centerVertically = 0;
  }

  return result;
}

- (MRTextRenderer)initWithText:(id)a3 resolution:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = [(MRTextRenderer *)self init];
  if (v7)
  {
    if (a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }

    v7->_text = v8;
    v7->_resolution.width = width;
    v7->_resolution.height = height;
    v7->_placeholderText = 0;
  }

  return v7;
}

- (void)dealloc
{
  [(MRTextRenderer *)self cleanup];
  v3.receiver = self;
  v3.super_class = MRTextRenderer;
  [(MRTextRenderer *)&v3 dealloc];
}

- (void)cleanup
{
  text = self->_text;
  if (text)
  {

    self->_text = 0;
  }

  placeholderText = self->_placeholderText;
  if (placeholderText)
  {

    self->_placeholderText = 0;
  }
}

- (NSAttributedString)text
{
  p_text = &self->_text;
  text = self->_text;
  if (!text || ![(NSAttributedString *)text length])
  {
    p_text = &self->_placeholderText;
  }

  return *p_text;
}

- (void)setPlaceholderText:(id)a3
{
  placeholderText = self->_placeholderText;
  if (placeholderText)
  {

    self->_placeholderText = 0;
  }

  if (a3)
  {
    v6 = [[NSMutableAttributedString alloc] initWithAttributedString:a3];
    [(NSAttributedString *)v6 replaceCharactersInRange:0 withString:[(NSAttributedString *)v6 length], @"                                      "];
    self->_placeholderText = v6;
  }
}

- (void)setText:(id)a3
{
  text = self->_text;
  if (text != a3)
  {
    if (text)
    {
    }

    cachedText = self->_cachedText;
    if (cachedText)
    {

      self->_cachedText = 0;
    }

    if (a3)
    {
      v8 = a3;
      self->_text = v8;
      if (v8)
      {
        v9 = [(NSAttributedString *)v8 length];
        if (v9)
        {
          v9 = [(MRTextRenderer *)self glyphIndexForStringIndex:v9 - 1];
        }

        self->_lastGlyphIndex = v9;
      }
    }

    else
    {
      self->_text = 0;
    }

    [(MRTextRenderer *)self updateLineSpacing];
  }
}

- (void)cacheText
{
  self->_originalCacheSize = CGSizeZero;
  [(MRTextRenderer *)self _sizeToRendererAt];
  v4 = v3;
  v6 = v5;
  self->_cachedSize.width = v3;
  self->_cachedSize.height = v5;
  self->_cachedText = [(MRTextRenderer *)self _truncateTextToFitInSize:0 fromCenter:&self->_cachedSize outSize:?];
  self->_originalCacheSize.width = v4;
  self->_originalCacheSize.height = v6;
}

- (void)clearCache
{
  self->_cachedText = 0;
  v3 = CGSizeZero;
  self->_originalCacheSize = CGSizeZero;
  self->_cachedSize = v3;
}

- (CGContext)retainedContext
{
  result = [(MRTextRenderer *)self text];
  if (result)
  {
    [(MRTextRenderer *)self _sizeToRendererAt];
    v5 = v4;
    v7 = v6;
    v8 = [(MRTextRenderer *)self text];
    v13 = v5;
    v14 = v7;
    if (self->_truncate)
    {
      v9 = [(MRTextRenderer *)self _truncateTextToFitInSize:0 fromCenter:&v13 outSize:v5, v7];
      v10 = v13;
      v11 = v14;
    }

    else
    {
      v9 = v8;
      v11 = v7;
      v10 = v5;
    }

    if (self->_renderAtDefinedSize)
    {
      v10 = v5;
      v11 = v7;
    }

    extraFooter = self->_extraFooter;
    if (extraFooter > 0.0)
    {
      v11 = v11 + extraFooter;
    }

    return [(MRTextRenderer *)self _retainedContextFromAttributedString:v9 withSize:v10, v11, *&v13, *&v14];
  }

  return result;
}

- (CGSize)sizeOfText
{
  [(MRTextRenderer *)self _sizeOfString:[(MRTextRenderer *)self text]];
  v7 = v3;
  v8 = v4;
  if (self->_truncate)
  {
    [(MRTextRenderer *)self _truncateTextToFitInSize:0 fromCenter:&v7 outSize:?];
    v3 = v7;
    v4 = v8;
  }

  v5 = v3 + self->_inset.width * 2.0;
  v6 = v4 + self->_inset.height * 2.0;
  result.height = v6;
  result.width = v5;
  return result;
}

- (CGSize)sizeOfContext
{
  [(MRTextRenderer *)self _sizeToRendererAt];
  v5 = v3;
  v6 = v4;
  v9 = v3;
  v10 = v4;
  if (self->_truncate)
  {
    [(MRTextRenderer *)self _truncateTextToFitInSize:0 fromCenter:&v9 outSize:v3, v4];
    v3 = v9;
    v4 = v10;
  }

  if (self->_renderAtDefinedSize)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = v3 + self->_inset.width * 2.0;
  v8 = v4 + self->_inset.height * 2.0;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)_sizeToRendererAt
{
  width = self->_originalCacheSize.width;
  height = self->_originalCacheSize.height;
  if (width == CGSizeZero.width && height == CGSizeZero.height)
  {
    if (self->_renderAtDefinedSize)
    {
      width = self->_definedSize.width;
      height = self->_definedSize.height;
    }

    else
    {
      [(MRTextRenderer *)self _sizeOfString:[(MRTextRenderer *)self text]];
    }
  }

  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)tightFrameOfAllLines
{
  v3 = [(MRTextRenderer *)self numberOfLines];
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  if (v3 < 1)
  {
    v17 = CGRectZero.size.height;
    v15 = CGRectZero.size.width;
    v13 = CGRectZero.origin.y;
    v11 = CGRectZero.origin.x;
  }

  else
  {
    v8 = v3;
    v9 = 0;
    v24 = CGRectZero.origin.y;
    v25 = CGRectZero.origin.x;
    v22 = CGRectZero.size.height;
    v23 = CGRectZero.size.width;
    do
    {
      [(MRTextRenderer *)self tightFrameOfLineAtIndex:v9, *&v22, *&v23, *&v24, *&v25];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v26.origin.x = x;
      v26.origin.y = y;
      v26.size.width = width;
      v26.size.height = height;
      v30.origin.y = v24;
      v30.origin.x = v25;
      v30.size.height = v22;
      v30.size.width = v23;
      if (!CGRectEqualToRect(v26, v30))
      {
        v27.origin.x = v11;
        v27.origin.y = v13;
        v27.size.width = v15;
        v27.size.height = v17;
        v31.origin.x = x;
        v31.origin.y = y;
        v31.size.width = width;
        v31.size.height = height;
        v28 = CGRectUnion(v27, v31);
        v11 = v28.origin.x;
        v13 = v28.origin.y;
        v15 = v28.size.width;
        v17 = v28.size.height;
      }

      ++v9;
      x = v11;
      y = v13;
      width = v15;
      height = v17;
    }

    while (v8 != v9);
  }

  v18 = v11;
  v19 = v13;
  v20 = v15;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGRect)tightFrameOfLineAtIndex:(int64_t)a3
{
  [(MRTextRenderer *)self _sizeToRendererAt];
  v6 = v5;
  v8 = v7;
  v18 = v5;
  v19 = v7;
  v9 = [(MRTextRenderer *)self text];
  if (self->_truncate)
  {
    v9 = [(MRTextRenderer *)self _truncateTextToFitInSize:0 fromCenter:&v18 outSize:v6, v8];
  }

  v10 = v18;
  v11 = v19;
  if (self->_renderAtDefinedSize)
  {
    v11 = v8;
    v10 = v6;
  }

  v12 = v10;
  v13 = v11;
  [(MRTextRenderer *)self _tightFrameOfLineAtIndex:a3 inString:v9 withSize:ceilf(v12), ceilf(v13)];
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)_tightFrameOfLineAtIndex:(int64_t)a3 inString:(id)a4 withSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v11 = CGBitmapContextCreate(0, width, height, 8uLL, vcvtd_n_s64_f64(width, 2uLL), DeviceRGB, 0x2002u);
  CGColorSpaceRelease(DeviceRGB);
  [MRRenderer textScaleForResolution:self->_resolution.width, self->_resolution.height];
  v13 = v12;
  Mutable = CGPathCreateMutable();
  v15 = width / v13;
  v39.size.width = ceilf(v15);
  v39.size.height = 30000.0;
  v39.origin.x = 0.0;
  v39.origin.y = 0.0;
  CGPathAddRect(Mutable, 0, v39);
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  v18 = CGRectZero.size.width;
  v19 = CGRectZero.size.height;
  v20 = CTFramesetterCreateWithAttributedString(a4);
  if (v20)
  {
    v21 = v20;
    v37.location = 0;
    v37.length = 0;
    Frame = CTFramesetterCreateFrame(v20, v37, Mutable, 0);
    if (Frame)
    {
      v23 = Frame;
      Lines = CTFrameGetLines(Frame);
      if (CFArrayGetCount(Lines) > a3)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Lines, a3);
        v36.x = 0.0;
        v36.y = 0.0;
        v38.location = a3;
        v38.length = 1;
        CTFrameGetLineOrigins(v23, v38, &v36);
        ImageBounds = CTLineGetImageBounds(ValueAtIndex, v11);
        x = ImageBounds.origin.x;
        v18 = ImageBounds.size.width;
        v19 = ImageBounds.size.height;
        if (self->_renderAtDefinedSize)
        {
          v26 = height / v13;
          y = v36.y + -30000.0 + ceilf(v26);
        }

        else
        {
          v27 = height / v13;
          y = ImageBounds.origin.y + v36.y + -30000.0 + ceilf(v27);
        }
      }

      CFRelease(v23);
    }

    CFRelease(v21);
  }

  CFRelease(Mutable);
  if (v11)
  {
    CFRelease(v11);
  }

  v28 = v13 * x;
  v29 = ceilf(v28);
  v30 = v13 * y;
  v31 = ceilf(v30);
  v32 = v13 * v18;
  v33 = ceilf(v32);
  v34 = v13 * v19;
  v35 = ceilf(v34);
  result.size.height = v35;
  result.size.width = v33;
  result.origin.y = v31;
  result.origin.x = v29;
  return result;
}

- (CGContext)_retainedContextFromAttributedString:(id)a3 withSize:(CGSize)a4
{
  v6 = a4.width + self->_inset.width * 2.0;
  v7 = ceilf(v6);
  v8 = a4.height + self->_inset.height * 2.0;
  [(MRTextRenderer *)self _scale];
  v10 = v9;
  v11 = +[MRUtilities newColorSpaceForDevice];
  v12 = CGBitmapContextCreate(0, vcvtps_u32_f32(v6), vcvtps_u32_f32(v8), 8uLL, vcvtd_n_s64_f64(v7, 2uLL), v11, 0x2002u);
  CGContextSetShouldSmoothFonts(v12, 0);
  [(MRTextRenderer *)self _drawInContext:v12 withAttributedString:a3 withSize:v7 andScale:ceilf(v8), v10];
  CGColorSpaceRelease(v11);
  return v12;
}

- (double)_strikethroughThinkness:(int64_t)a3 baselineOffset:(double)a4 lineRect:(CGRect)a5
{
  if ((a3 & 7) == 0)
  {
    return 1.0;
  }

  height = a4 * 5.3636991;
  if (height > a5.size.height)
  {
    height = a5.size.height;
  }

  result = height * 0.0440277313 * (a3 & 7);
  v7 = ceil(result);
  if (result > 0.35)
  {
    return v7;
  }

  return result;
}

- (void)_drawInContext:(CGContext *)a3 withAttributedString:(id)a4 withSize:(CGSize)a5 andScale:(double)a6
{
  height = a5.height;
  width = a5.width;
  if (![a4 length])
  {
    return;
  }

  v10 = -2.0;
  columnCount = self->_columnCount;
  if (columnCount)
  {
    v12 = (height + self->_inset.height * -2.0) / a6;
    v13 = vcvtps_s32_f32(v12);
  }

  else
  {
    v13 = 30000.0;
  }

  rect = v13;
  v14 = self->_inset.width;
  if (columnCount <= 1)
  {
    columnCount = 1;
  }

  v108 = columnCount;
  Attribute = CFAttributedStringGetAttribute(a4, 0, @"shadow", 0);
  v16 = Attribute;
  v18 = CGSizeZero.width;
  v17 = CGSizeZero.height;
  v19 = 0.0;
  if (!self->_columnCount)
  {
    v117 = v14;
    v21 = self->_inset.width;
    v20 = self->_inset.height;
    if (v21 == 0.0 && v20 == 0.0)
    {
      v22 = 0.0;
      v23 = height;
      v24 = width;
      v25 = 0.0;
      if (!Attribute)
      {
LABEL_11:
        v116 = CGSizeZero.width;
LABEL_26:
        v132.origin.x = CGRectZero.origin.x;
        v132.origin.y = CGRectZero.origin.y;
        v132.size.width = CGRectZero.size.width;
        v132.size.height = CGRectZero.size.height;
        v32 = v25;
        v33 = v22;
        v34 = v24;
        v35 = v23;
        if (!CGRectEqualToRect(*(&v24 - 2), v132))
        {
          v130.origin.x = v25;
          v130.origin.y = v22;
          v130.size.width = v34;
          v130.size.height = v23;
          CGContextClipToRect(a3, v130);
        }

        v18 = v116;
        v14 = v117;
        v10 = -2.0;
        goto LABEL_29;
      }
    }

    else
    {
      if (v21 >= 0.0)
      {
        v25 = self->_inset.width;
      }

      else
      {
        v25 = 0.0;
      }

      if (v20 >= 0.0)
      {
        v22 = self->_inset.height;
      }

      else
      {
        v22 = 0.0;
      }

      v26 = width - v21 * 2.0;
      if (width >= v26)
      {
        v24 = v26;
      }

      else
      {
        v24 = width;
      }

      v27 = height - v20 * 2.0;
      if (height >= v27)
      {
        v23 = v27;
      }

      else
      {
        v23 = height;
      }

      if (!Attribute)
      {
        goto LABEL_11;
      }
    }

    v28 = v24;
    [objc_msgSend(Attribute objectForKey:{@"offset", "CGSizeValue"}];
    v116 = v29;
    v17 = v30;
    [objc_msgSend(v16 objectForKey:{@"blurRadius", "floatValue"}];
    v24 = v28;
    v19 = v31;
    goto LABEL_26;
  }

LABEL_29:
  framesetter = CTFramesetterCreateWithAttributedString(a4);
  if (framesetter)
  {
    if (v108 >= 1)
    {
      v36 = 0;
      v37 = 0;
      v38 = (width + v14 * v10) / a6;
      v103 = vcvtps_s32_f32(v38);
      y = CGRectZero.origin.y;
      v97 = CGRectZero.size.height;
      v98 = CGRectZero.size.width;
      v94 = v17 * a6;
      v95 = v18 * a6;
      v92 = height / a6 * 0.5;
      blur = v19 * a6;
      v39 = v18;
      v40 = ceilf(-v39) + 0.0;
      if (v17 <= 0.0)
      {
        v41 = 0.0;
      }

      else
      {
        v41 = -1.0;
      }

      v42 = v17 * v41;
      v102 = ceilf(v42) + 0.0;
      v96 = height / a6;
      v43 = height / a6;
      v101 = 30000.0 - ceilf(v43) + -1.0;
      if (v18 >= 0.0)
      {
        v40 = 0.0;
      }

      v100 = v40;
      v104 = v16;
      do
      {
        v44 = self->_columnCount;
        v45 = v103;
        v46 = 0.0;
        if (v44)
        {
          v47 = (v103 / v44);
          v46 = v37 * v47;
          if (v37)
          {
            columnMargin = self->_columnMargin;
            if (v37 == v44 - 1)
            {
              v45 = v47 - columnMargin * 0.5;
              v46 = v46 + columnMargin * 0.5;
            }

            else
            {
              v45 = v47 - columnMargin;
              v46 = v46 + columnMargin * 0.5 * v37;
            }
          }

          else
          {
            v45 = v47 + self->_columnMargin * -0.5;
          }
        }

        Mutable = CGPathCreateMutable();
        if (self->_centerVertically)
        {
          [(MRTextRenderer *)self _sizeOfString:a4];
          v51 = v50 / a6;
          v52 = 0.0;
          if (v51 < v96)
          {
            v52 = -(v92 + v51 * -0.5);
          }
        }

        else
        {
          v133.origin.y = y;
          v133.origin.x = CGRectZero.origin.x;
          v133.size.height = v97;
          v133.size.width = v98;
          v53 = CGRectEqualToRect(self->_imageRect, v133);
          v52 = 0.0;
          if (!v53)
          {
            v87 = [(MRTextRenderer *)self _invertRect:self->_imageRect.origin.x inRect:self->_imageRect.origin.y, self->_imageRect.size.width, self->_imageRect.size.height, v46, 0.0, v45, rect];
            v120 = 0u;
            v121 = 0u;
            v122 = 0u;
            v123 = 0u;
            v88 = [v87 countByEnumeratingWithState:&v120 objects:v124 count:16];
            if (v88)
            {
              v89 = v88;
              v90 = *v121;
              do
              {
                for (i = 0; i != v89; i = i + 1)
                {
                  if (*v121 != v90)
                  {
                    objc_enumerationMutation(v87);
                  }

                  [*(*(&v120 + 1) + 8 * i) CGRectValue];
                  CGPathAddRect(Mutable, 0, v131);
                }

                v89 = [v87 countByEnumeratingWithState:&v120 objects:v124 count:16];
              }

              while (v89);
            }

            goto LABEL_48;
          }
        }

        v54 = v46;
        v55 = v45;
        v56 = rect;
        CGPathAddRect(Mutable, 0, *(&v52 - 1));
LABEL_48:
        v125.location = v36;
        v125.length = 0;
        v57 = CTFramesetterCreateFrame(framesetter, v125, Mutable, 0);
        if (v57)
        {
          v58 = v57;
          v110 = Mutable;
          v111 = v37;
          CGContextScaleCTM(a3, a6, a6);
          if (v16)
          {
            v59 = [v16 objectForKey:@"color"];
            v129.height = v94;
            v129.width = v95;
            CGContextSetShadowWithColor(a3, v129, blur, v59);
          }

          v60 = v102 - self->_inset.height;
          v61 = self;
          if (!self->_columnCount)
          {
            v60 = v60 - v101;
          }

          CGContextTranslateCTM(a3, v100 + self->_inset.width, v60);
          CTFrameDraw(v58, a3);
          CGContextSetTextPosition(a3, 0.0, 0.0);
          Lines = CTFrameGetLines(v58);
          Count = CFArrayGetCount(Lines);
          v64 = malloc_type_calloc(Count, 0x10uLL, 0x1000040451B5BE8uLL);
          frame = v58;
          v112 = v36;
          v126.location = v36;
          v126.length = 0;
          v114 = v64;
          CTFrameGetLineOrigins(v58, v126, v64);
          if (CFArrayGetCount(Lines) >= 1)
          {
            v65 = 0;
            theArray = Lines;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(Lines, v65);
              GlyphRuns = CTLineGetGlyphRuns(ValueAtIndex);
              if (CFArrayGetCount(GlyphRuns) >= 1)
              {
                v68 = 0;
                p_x = &v114[v65].x;
                do
                {
                  v70 = CFArrayGetValueAtIndex(GlyphRuns, v68);
                  Attributes = CTRunGetAttributes(v70);
                  v72 = [-[__CFDictionary objectForKey:](Attributes objectForKey:{@"strikethrough", "integerValue"}];
                  if (v72)
                  {
                    v73 = v72;
                    v128.location = 0;
                    v128.length = 0;
                    v74 = COERCE_DOUBLE(CTRunGetImageBounds(v70, a3, v128));
                    location = CTRunGetStringRange(v70).location;
                    v76 = v74 + CTLineGetOffsetForStringIndex(ValueAtIndex, location, 0) + v46 + *p_x;
                    descent = 0.0;
                    ascent = 0.0;
                    v127.location = 0;
                    v127.length = 0;
                    TypographicBounds = CTRunGetTypographicBounds(v70, v127, &ascent, &descent, 0);
                    v78 = [(__CFDictionary *)Attributes objectForKey:kCTFontAttributeName];
                    [(MRTextRenderer *)v61 _strikethroughThinkness:v73 baselineOffset:descent lineRect:0.0, 0.0, TypographicBounds, descent + ascent];
                    v80 = v79;
                    v81 = p_x[1];
                    v82 = v81 + CTFontGetXHeight(v78) * 0.5;
                    v83 = v82 - v80;
                    if ((v73 & 8) != 0)
                    {
                      v84 = v82 - v80;
                    }

                    else
                    {
                      v84 = v82;
                    }

                    CGContextSetStrokeColorWithColor(a3, [(__CFDictionary *)Attributes objectForKey:kCTForegroundColorAttributeName, *&v92]);
                    CGContextSetLineWidth(a3, v80);
                    v85 = v76 - v74;
                    CGContextMoveToPoint(a3, v85, v84);
                    v86 = v85 + TypographicBounds;
                    CGContextAddLineToPoint(a3, v86, v84);
                    if ((v73 & 8) != 0)
                    {
                      CGContextMoveToPoint(a3, v85, v83 + v80 * 2.0);
                      CGContextAddLineToPoint(a3, v86, v83 + v80 * 2.0);
                    }

                    CGContextStrokePath(a3);
                  }

                  ++v68;
                }

                while (v68 < CFArrayGetCount(GlyphRuns));
              }

              ++v65;
              Lines = theArray;
            }

            while (v65 < CFArrayGetCount(theArray));
          }

          free(v114);
          v36 = CTFrameGetVisibleStringRange(frame).length + v112;
          CFRelease(frame);
          self = v61;
          v16 = v104;
          Mutable = v110;
          v37 = v111;
        }

        CFRelease(Mutable);
        ++v37;
      }

      while (v37 != v108);
    }

    CFRelease(framesetter);
  }
}

- (CGRect)_textClipRectForString:(id)a3
{
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  [(MRTextRenderer *)self _sizeOfString:?];
  v30 = v10;
  v31 = v9;
  v11 = [(MRTextRenderer *)self _numberOfLinesInString:a3];
  if (v11 >= 1)
  {
    v12 = v11;
    v13 = 0;
    v28 = y;
    v29 = CGRectZero.origin.x;
    v26 = height;
    v27 = width;
    while (1)
    {
      [(MRTextRenderer *)self _tightFrameOfLineAtIndex:v13 inString:a3 withSize:v31, v30, *&v26, *&v27, *&v28, *&v29];
      if (v15 < 0.0)
      {
        break;
      }

      v18 = v14;
      v19 = v15;
      v20 = v16;
      v21 = v17;
      v32.origin.x = x;
      v32.origin.y = y;
      v32.size.width = width;
      v32.size.height = height;
      v36.origin.y = v28;
      v36.origin.x = v29;
      v36.size.height = v26;
      v36.size.width = v27;
      if (!CGRectEqualToRect(v32, v36))
      {
        v33.origin.x = x;
        v33.origin.y = y;
        v33.size.width = width;
        v33.size.height = height;
        v37.origin.x = v18;
        v37.origin.y = v19;
        v37.size.width = v20;
        v37.size.height = v21;
        v34 = CGRectUnion(v33, v37);
        v18 = v34.origin.x;
        v19 = v34.origin.y;
        v20 = v34.size.width;
        v21 = v34.size.height;
      }

      ++v13;
      x = v18;
      y = v19;
      width = v20;
      height = v21;
      if (v12 == v13)
      {
        goto LABEL_9;
      }
    }
  }

  v21 = height;
  v20 = width;
  v19 = y;
  v18 = x;
LABEL_9:
  v22 = v18;
  v23 = v19;
  v24 = v20;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (int64_t)countOfWords
{
  v15[0] = 0;
  v15[1] = 0;
  [(MRTextRenderer *)self _sizeToRendererAt];
  v3 = [objc_msgSend(-[MRTextRenderer _truncateTextToFitInSize:fromCenter:outSize:](self _truncateTextToFitInSize:0 fromCenter:v15) outSize:{"string"), "componentsSeparatedByCharactersInSet:", +[NSCharacterSet whitespaceAndNewlineCharacterSet](NSCharacterSet, "whitespaceAndNewlineCharacterSet")}];
  v4 = +[NSMutableArray array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v3 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 length])
        {
          [v4 addObject:v9];
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v6);
  }

  return [v4 count];
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)rangeOfWordsOnLine:(int64_t)a3
{
  if ([(MRTextRenderer *)self text])
  {
    [(MRTextRenderer *)self _scale];
    v6 = v5;
    Mutable = CGPathCreateMutable();
    v8 = Mutable;
    width = self->_definedSize.width;
    if (width <= 0.0)
    {
      width = self->_resolution.width;
    }

    v47.size.width = width / v6;
    v47.size.height = self->_resolution.height / v6;
    v47.origin.x = 0.0;
    v47.origin.y = 0.0;
    CGPathAddRect(Mutable, 0, v47);
    v42[0] = 0;
    v42[1] = 0;
    aStr = [(MRTextRenderer *)self _truncateTextToFitInSize:0 fromCenter:v42 outSize:self->_definedSize.width, self->_definedSize.height];
    v10 = CTFramesetterCreateWithAttributedString(aStr);
    if (v10)
    {
      v11 = v10;
      v45.location = 0;
      v45.length = 0;
      Frame = CTFramesetterCreateFrame(v10, v45, v8, 0);
      Lines = CTFrameGetLines(Frame);
      cf = v11;
      v34 = v8;
      v32 = Frame;
      if (Lines)
      {
        v14 = Lines;
        if (CFArrayGetCount(Lines) <= a3)
        {
          v16 = 0;
          v15 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_28;
        }

        if ((a3 & 0x8000000000000000) == 0)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v35 = v14;
          v36 = a3;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v14, v17);
            StringRange = CTLineGetStringRange(ValueAtIndex);
            v19 = CFAttributedStringCreateWithSubstring(kCFAllocatorDefault, aStr, StringRange);
            v20 = [-[__CFAttributedString string](v19 "string")];
            v21 = +[NSMutableArray array];
            v38 = 0u;
            v39 = 0u;
            v40 = 0u;
            v41 = 0u;
            v22 = [v20 countByEnumeratingWithState:&v38 objects:v43 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = *v39;
              do
              {
                for (i = 0; i != v23; i = i + 1)
                {
                  if (*v39 != v24)
                  {
                    objc_enumerationMutation(v20);
                  }

                  v26 = *(*(&v38 + 1) + 8 * i);
                  if ([v26 length])
                  {
                    [v21 addObject:v26];
                  }
                }

                v23 = [v20 countByEnumeratingWithState:&v38 objects:v43 count:16];
              }

              while (v23);
            }

            v27 = [v21 count];

            v14 = v35;
            v28 = v17 == v36;
            if (v17 == v36)
            {
              v16 = v27;
              v29 = 0;
            }

            else
            {
              v29 = v27;
            }

            v15 += v29;
            ++v17;
          }

          while (!v28);
          goto LABEL_28;
        }
      }

      v16 = 0;
      v15 = 0;
LABEL_28:
      CFRelease(cf);
      CFRelease(v32);
      CFRelease(v34);
      goto LABEL_29;
    }

    CGPathRelease(v8);
  }

  v15 = 0;
  v16 = 0;
LABEL_29:
  v30 = v15;
  v31 = v16;
  result.var1 = v31;
  result.var0 = v30;
  return result;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)rangeOfGlyphsOnLine:(int64_t)a3
{
  if (![(MRTextRenderer *)self text])
  {
    goto LABEL_13;
  }

  [(MRTextRenderer *)self _scale];
  v6 = v5;
  Mutable = CGPathCreateMutable();
  [(MRTextRenderer *)self _sizeToRendererAt];
  width = v8;
  v23[0] = 0;
  v23[1] = 0;
  v10 = [(MRTextRenderer *)self _truncateTextToFitInSize:0 fromCenter:v23 outSize:?];
  if (width <= 0.0)
  {
    width = self->_resolution.width;
  }

  v26.size.width = width / v6;
  v26.size.height = self->_resolution.height / v6;
  v26.origin.x = 0.0;
  v26.origin.y = 0.0;
  CGPathAddRect(Mutable, 0, v26);
  v11 = CTFramesetterCreateWithAttributedString(v10);
  if (!v11)
  {
    CGPathRelease(Mutable);
    goto LABEL_13;
  }

  v12 = v11;
  v25.location = 0;
  v25.length = 0;
  Frame = CTFramesetterCreateFrame(v11, v25, Mutable, 0);
  CFRelease(v12);
  CGPathRelease(Mutable);
  if (!Frame)
  {
LABEL_13:
    GlyphCount = 0;
    v16 = 0;
    goto LABEL_16;
  }

  Lines = CTFrameGetLines(Frame);
  if (Lines && (v15 = Lines, CFArrayGetCount(Lines) > a3))
  {
    v16 = 0;
    if (a3)
    {
      v17 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v15, v17);
        v16 += CTLineGetGlyphCount(ValueAtIndex);
        ++v17;
      }

      while (a3 != v17);
    }

    v19 = CFArrayGetValueAtIndex(v15, a3);
    GlyphCount = CTLineGetGlyphCount(v19);
  }

  else
  {
    GlyphCount = 0;
    v16 = 0;
  }

  CFRelease(Frame);
LABEL_16:
  v21 = v16;
  v22 = GlyphCount;
  result.var1 = v22;
  result.var0 = v21;
  return result;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)rangeOfGlyphsForWordsInRange:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v4 = self;
  if ([(MRTextRenderer *)self text])
  {
    v33 = 0.0;
    v34 = 0.0;
    [(MRTextRenderer *)v4 _sizeToRendererAt];
    v5 = [(MRTextRenderer *)v4 _truncateTextToFitInSize:0 fromCenter:&v33 outSize:?];
    v6 = [v5 string];
    v27 = [v6 length];
    v7 = [v6 componentsSeparatedByCharactersInSet:{+[NSCharacterSet whitespaceAndNewlineCharacterSet](NSCharacterSet, "whitespaceAndNewlineCharacterSet")}];
    v8 = [v6 length];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v7;
    v9 = [v7 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v9)
    {
      v10 = v9;
      v24 = v5;
      v25 = v4;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = *v30;
      v15 = var0 + var1;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v29 + 1) + 8 * i);
          if ([v17 length])
          {
            v18 = [v6 rangeOfString:v17 options:2 range:{v12, v8}];
            v12 = &v18[v19];
            if (v11 == var0)
            {
              v13 = v18;
            }

            if (++v11 == v15)
            {
              v20 = v12 - v13;
              goto LABEL_17;
            }

            v8 = (v27 - v12);
          }
        }

        v10 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }

      v20 = 0;
LABEL_17:
      v5 = v24;
      v4 = v25;
    }

    else
    {
      v20 = 0;
      v13 = 0;
    }

    v21 = [(MRTextRenderer *)v4 _glyphIndexForStringIndex:v13 inString:v5 forSize:v33, v34];
    v22 = ([(MRTextRenderer *)v4 _glyphIndexForStringIndex:&v13[v20] inString:v5 forSize:v33, v34]- v21);
  }

  else
  {
    v21 = 0;
    v22 = 0;
  }

  v23 = v21;
  result.var1 = v22;
  result.var0 = v23;
  return result;
}

- (CGContext)retainedContextOfWordsInRange:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v4 = self;
  if (![(MRTextRenderer *)self text])
  {
    return 0;
  }

  v33[0] = 0;
  v33[1] = 0;
  [(MRTextRenderer *)v4 _sizeToRendererAt];
  v5 = [(MRTextRenderer *)v4 _truncateTextToFitInSize:0 fromCenter:v33 outSize:?];
  v6 = [v5 string];
  v27 = [v6 length];
  v7 = [v6 componentsSeparatedByCharactersInSet:{+[NSCharacterSet whitespaceAndNewlineCharacterSet](NSCharacterSet, "whitespaceAndNewlineCharacterSet")}];
  v8 = [v6 length];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v7;
  v9 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v24 = v5;
    v25 = v4;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = *v30;
    v15 = var0 + var1;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v29 + 1) + 8 * i);
        if ([v17 length])
        {
          v18 = [v6 rangeOfString:v17 options:2 range:{v11, v8}];
          v11 = &v18[v19];
          if (v12 == var0)
          {
            v13 = v18;
          }

          if (++v12 == v15)
          {
            v20.length = &v11[-v13];
            goto LABEL_17;
          }

          v8 = (v27 - v11);
        }
      }

      v10 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

    v20.length = 0;
LABEL_17:
    v5 = v24;
    v4 = v25;
  }

  else
  {
    v20.length = 0;
    v13 = 0;
  }

  v20.location = v13;
  v22 = CFAttributedStringCreateWithSubstring(kCFAllocatorDefault, v5, v20);
  [(MRTextRenderer *)v4 _sizeOfString:v22];
  v21 = [(MRTextRenderer *)v4 _retainedContextFromAttributedString:v22 withSize:?];

  return v21;
}

- (CGPoint)originOfWordAtIndex:(int64_t)a3
{
  if ([(MRTextRenderer *)self text])
  {
    v27 = 0.0;
    v28 = 0.0;
    [(MRTextRenderer *)self _sizeToRendererAt];
    v20 = self;
    v19 = [(MRTextRenderer *)self _truncateTextToFitInSize:0 fromCenter:&v27 outSize:?];
    v4 = [v19 string];
    v21 = [v4 length];
    v5 = [v4 componentsSeparatedByCharactersInSet:{+[NSCharacterSet whitespaceAndNewlineCharacterSet](NSCharacterSet, "whitespaceAndNewlineCharacterSet")}];
    v6 = [v4 length];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = *v24;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v5);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          if ([v14 length])
          {
            v15 = [v4 rangeOfString:v14 options:2 range:{v10, v6}];
            v9 = v15;
            if (v11 == a3)
            {
              goto LABEL_15;
            }

            v10 = &v15[v16];
            v6 = (v21 - &v15[v16]);
            ++v11;
          }
        }

        v8 = [v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

LABEL_15:
    [(MRTextRenderer *)v20 originOfGlyphAtIndex:[(MRTextRenderer *)v20 _glyphIndexForStringIndex:v9 inString:v19 forSize:v27, v28]];
  }

  else
  {
    x = CGPointZero.x;
    y = CGPointZero.y;
  }

  result.y = y;
  result.x = x;
  return result;
}

- (int64_t)countOfGlyphs
{
  v18[0] = 0.0;
  v18[1] = 0.0;
  [(MRTextRenderer *)self _sizeToRendererAt];
  v3 = CTFramesetterCreateWithAttributedString([(MRTextRenderer *)self _truncateTextToFitInSize:0 fromCenter:v18 outSize:?]);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  [(MRTextRenderer *)self _scale];
  v6 = v5;
  Mutable = CGPathCreateMutable();
  v20.size.width = v18[0] / v6;
  v20.size.height = 30000.0;
  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  CGPathAddRect(Mutable, 0, v20);
  v19.location = 0;
  v19.length = 0;
  Frame = CTFramesetterCreateFrame(v4, v19, Mutable, 0);
  if (Frame)
  {
    v9 = Frame;
    Lines = CTFrameGetLines(Frame);
    if (Lines && (v11 = Lines, Count = CFArrayGetCount(Lines), Count >= 1))
    {
      v13 = Count;
      v14 = 0;
      for (i = 0; i != v13; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v11, i);
        v14 += CTLineGetGlyphCount(ValueAtIndex);
      }
    }

    else
    {
      v14 = 0;
    }

    CFRelease(v9);
  }

  else
  {
    v14 = 0;
  }

  CFRelease(Mutable);
  CFRelease(v4);
  return v14;
}

- (CGContext)retainedContextOfGlyphAtIndex:(int64_t)a3
{
  v4 = [(MRTextRenderer *)self rangeOfStringForGlyphIndex:a3];
  v6 = v5;
  [(MRTextRenderer *)self _sizeToRendererAt];
  v13[0] = v7;
  v13[1] = v8;
  v9 = [(MRTextRenderer *)self _truncateTextToFitInSize:0 fromCenter:v13 outSize:?];
  if (v4 <= [(__CFAttributedString *)v9 length]&& &v4[v6] <= [(__CFAttributedString *)v9 length])
  {
    v14.location = v4;
    v14.length = v6;
    v10 = CFAttributedStringCreateWithSubstring(kCFAllocatorDefault, v9, v14);
  }

  else
  {
    v10 = 0;
  }

  if ([(__CFAttributedString *)v10 length])
  {
    [(MRTextRenderer *)self _sizeOfString:v10];
    v11 = [(MRTextRenderer *)self _retainedContextFromAttributedString:v10 withSize:?];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)rangeOfStringForGlyphIndex:(int64_t)a3
{
  v47[0] = 0.0;
  v47[1] = 0.0;
  [(MRTextRenderer *)self _sizeToRendererAt];
  v5 = CTFramesetterCreateWithAttributedString([(MRTextRenderer *)self _truncateTextToFitInSize:0 fromCenter:v47 outSize:?]);
  if (v5)
  {
    v6 = v5;
    [(MRTextRenderer *)self _scale];
    v8 = v7;
    Mutable = CGPathCreateMutable();
    v51.size.width = v47[0] / v8;
    v51.size.height = 30000.0;
    v51.origin.x = 0.0;
    v51.origin.y = 0.0;
    CGPathAddRect(Mutable, 0, v51);
    v49.location = 0;
    v49.length = 0;
    Frame = CTFramesetterCreateFrame(v6, v49, Mutable, 0);
    if (Frame)
    {
      cf = Frame;
      Lines = CTFrameGetLines(Frame);
      v36 = Mutable;
      v37 = v6;
      if (Lines && (v12 = Lines, v39 = CFArrayGetCount(Lines), v39 >= 1))
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v42 = a3;
        v43 = 1;
        v38 = v12;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v12, v15);
          v17 = CTLineGetGlyphCount(ValueAtIndex) + v14;
          v45 = v13;
          v40 = v17;
          v41 = v15;
          if (v14 <= a3 && v17 > a3)
          {
            GlyphRuns = CTLineGetGlyphRuns(ValueAtIndex);
            if (GlyphRuns)
            {
              v19 = GlyphRuns;
              Count = CFArrayGetCount(GlyphRuns);
              if (Count >= 1)
              {
                v20 = 0;
                v44 = v19;
                do
                {
                  v21 = v14;
                  v22 = CFArrayGetValueAtIndex(v19, v20);
                  GlyphCount = CTRunGetGlyphCount(v22);
                  StringRange = CTRunGetStringRange(v22);
                  v14 += GlyphCount;
                  v25 = a3 - v21;
                  if (a3 >= v21 && v14 > a3)
                  {
                    Status = CTRunGetStatus(v22);
                    StringIndicesPtr = CTRunGetStringIndicesPtr(v22);
                    v28 = StringIndicesPtr;
                    if (!StringIndicesPtr)
                    {
                      v28 = malloc_type_malloc(8 * GlyphCount, 0x100004000313F17uLL);
                      v50.location = 0;
                      v50.length = GlyphCount;
                      CTRunGetStringIndices(v22, v50, v28);
                    }

                    if (Status)
                    {
                      v29 = GlyphCount + ~v25;
                    }

                    else
                    {
                      v29 = v25;
                    }

                    if (v25 >= GlyphCount - 1)
                    {
                      v31 = StringRange.location + StringRange.length;
                    }

                    else
                    {
                      v30 = GlyphCount + ~v25 - 1;
                      if ((Status & 1) == 0)
                      {
                        v30 = v25 + 1;
                      }

                      v31 = v28[v30];
                    }

                    v45 = v28[v29];
                    v43 = v31 - v45;
                    if (!StringIndicesPtr)
                    {
                      free(v28);
                    }

                    a3 = v42;
                    v19 = v44;
                  }

                  ++v20;
                }

                while (Count != v20);
              }
            }
          }

          v14 = v40;
          v15 = v41 + 1;
          v12 = v38;
          v13 = v45;
        }

        while (v41 + 1 != v39);
      }

      else
      {
        v13 = 0;
        v43 = 1;
      }

      CFRelease(cf);
      Mutable = v36;
      v6 = v37;
      v32 = v43;
    }

    else
    {
      v13 = 0;
      v32 = 1;
    }

    CFRelease(Mutable);
    CFRelease(v6);
  }

  else
  {
    v13 = 0;
    v32 = 1;
  }

  v33 = v13;
  v34 = v32;
  result.var1 = v34;
  result.var0 = v33;
  return result;
}

- (int64_t)glyphIndexForStringIndex:(int64_t)a3
{
  v7 = 0.0;
  v8 = 0.0;
  [(MRTextRenderer *)self _sizeToRendererAt];
  v5 = [(MRTextRenderer *)self _truncateTextToFitInSize:0 fromCenter:&v7 outSize:?];
  if ([v5 length] <= a3)
  {
    a3 = [v5 length] - 1;
  }

  return [(MRTextRenderer *)self _glyphIndexForStringIndex:a3 inString:v5 forSize:v7, v8];
}

- (int64_t)_glyphIndexForStringIndex:(int64_t)a3 inString:(id)a4 forSize:(CGSize)a5
{
  width = a5.width;
  v8 = CTFramesetterCreateWithAttributedString(a4);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  [(MRTextRenderer *)self _scale];
  v11 = v10;
  Mutable = CGPathCreateMutable();
  v49.size.width = width / v11;
  v49.size.height = 30000.0;
  v49.origin.x = 0.0;
  v49.origin.y = 0.0;
  CGPathAddRect(Mutable, 0, v49);
  v47.location = 0;
  v47.length = 0;
  Frame = CTFramesetterCreateFrame(v9, v47, Mutable, 0);
  if (Frame)
  {
    cf = Frame;
    Lines = CTFrameGetLines(Frame);
    v40 = Mutable;
    v41 = v9;
    if (Lines)
    {
      v15 = Lines;
      Count = CFArrayGetCount(Lines);
      if (Count >= 1)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v42 = v15;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v15, v18);
          GlyphCount = CTLineGetGlyphCount(ValueAtIndex);
          StringRange = CTLineGetStringRange(ValueAtIndex);
          v45 = v18;
          v46 = v17;
          v44 = GlyphCount;
          if (StringRange.location <= a3 && StringRange.location + StringRange.length > a3)
          {
            GlyphRuns = CTLineGetGlyphRuns(ValueAtIndex);
            if (GlyphRuns)
            {
              v23 = GlyphRuns;
              v24 = CFArrayGetCount(GlyphRuns);
              if (v24 >= 1)
              {
                break;
              }
            }
          }

LABEL_29:
          v17 = v44 + v46;
          v18 = v45 + 1;
          v15 = v42;
          if (v45 + 1 == Count)
          {
            goto LABEL_33;
          }
        }

        v25 = v24;
        v26 = 0;
        while (1)
        {
          v27 = CFArrayGetValueAtIndex(v23, v26);
          v28 = CTRunGetGlyphCount(v27);
          v29 = CTRunGetStringRange(v27);
          if (v29.location <= a3 && v29.location + v29.length > a3)
          {
            break;
          }

LABEL_28:
          v17 += v28;
          if (++v26 == v25)
          {
            goto LABEL_29;
          }
        }

        StringIndicesPtr = CTRunGetStringIndicesPtr(v27);
        v31 = StringIndicesPtr;
        if (!StringIndicesPtr)
        {
          v31 = malloc_type_malloc(8 * v28, 0x100004000313F17uLL);
          v48.location = 0;
          v48.length = v28;
          CTRunGetStringIndices(v27, v48, v31);
        }

        v32 = v28 - 2;
        if (v28 >= 2)
        {
          if (v31[1] > a3)
          {
            v33 = 1;
            v34 = 1;
LABEL_22:
            v16 = v17 + v34 - 1;
            if (StringIndicesPtr)
            {
              goto LABEL_26;
            }

LABEL_25:
            free(v31);
LABEL_26:
            if (!v33)
            {
              v16 = v17 + v28 - 1;
            }

            goto LABEL_28;
          }

          v35 = v31 + 2;
          v36 = -1;
          while (v32)
          {
            v37 = *v35++;
            --v36;
            --v32;
            if (v37 > a3)
            {
              v34 = -v36;
              v33 = -v36 < v28;
              goto LABEL_22;
            }
          }
        }

        v33 = 0;
        if (StringIndicesPtr)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }
    }

    v16 = 0;
LABEL_33:
    CFRelease(cf);
    Mutable = v40;
    v9 = v41;
  }

  else
  {
    v16 = 0;
  }

  CFRelease(Mutable);
  CFRelease(v9);
  return v16;
}

- (CGPoint)originOfGlyphAtIndex:(int64_t)a3
{
  if (self->_lastGlyphIndex >= a3)
  {
    [(MRTextRenderer *)self _scale];
    v8 = v7;
    Mutable = CGPathCreateMutable();
    [(MRTextRenderer *)self _sizeToRendererAt];
    v31[0] = v10;
    v31[1] = v11;
    v12 = [(MRTextRenderer *)self _truncateTextToFitInSize:0 fromCenter:v31 outSize:?];
    width = v31[0];
    if (v31[0] <= 0.0)
    {
      width = self->_resolution.width;
    }

    v36.size.width = width / v8;
    v36.size.height = self->_resolution.height / v8;
    v36.origin.x = 0.0;
    v36.origin.y = 0.0;
    CGPathAddRect(Mutable, 0, v36);
    v14 = CTFramesetterCreateWithAttributedString(v12);
    v32.location = 0;
    v32.length = 0;
    Frame = CTFramesetterCreateFrame(v14, v32, Mutable, 0);
    Lines = CTFrameGetLines(Frame);
    x = CGPointZero.x;
    y = CGPointZero.y;
    Count = CFArrayGetCount(Lines);
    v30.x = 0.0;
    v30.y = 0.0;
    if (Count)
    {
      v18 = Count;
      v33.location = Count - 1;
      v33.length = 1;
      CTFrameGetLineOrigins(Frame, v33, &v30);
      if (v18 >= 1)
      {
        v19 = 0;
        v20 = 0;
        v21 = v30.y;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(Lines, v20);
          GlyphCount = CTLineGetGlyphCount(ValueAtIndex);
          if (v19 <= a3 && GlyphCount + v19 > a3)
          {
            break;
          }

          ++v20;
          v19 += GlyphCount;
          if (v18 == v20)
          {
            goto LABEL_16;
          }
        }

        v34.location = v20;
        v34.length = 1;
        CTFrameGetLineOrigins(Frame, v34, &v30);
        v24 = [(MRTextRenderer *)self rangeOfStringForGlyphIndex:a3];
        v25 = v30.x;
        x = v25 + CTLineGetOffsetForStringIndex(ValueAtIndex, v24, 0);
        y = v30.y - v21;
      }

LABEL_16:
      CFRelease(Frame);
      CFRelease(Mutable);
      CFRelease(v14);
      v26 = v8 * x;
      x = roundf(v26);
      v27 = v8 * y;
      y = ceilf(v27);
    }

    else
    {
      if (Frame)
      {
        CFRelease(Frame);
      }

      CFRelease(Mutable);
      CFRelease(v14);
    }
  }

  else
  {
    x = 10000000.0;
    y = 10000000.0;
  }

  v28 = x;
  v29 = y;
  result.y = v29;
  result.x = v28;
  return result;
}

- (CGRect)frameOfLineWithGlyphAtIndex:(int64_t)a3 range:(_NSRange *)a4
{
  lastGlyphIndex = self->_lastGlyphIndex;
  if (lastGlyphIndex >= a3)
  {
    v12 = CTFramesetterCreateWithAttributedString([(MRTextRenderer *)self text]);
    [(MRTextRenderer *)self _scale];
    v14 = v13;
    Mutable = CGPathCreateMutable();
    [(MRTextRenderer *)self _sizeToRendererAt];
    if (width <= 0.0)
    {
      width = self->_resolution.width;
    }

    v57.size.width = width / v14;
    v57.size.height = self->_resolution.height / v14;
    v17 = 0.0;
    v57.origin.x = 0.0;
    v57.origin.y = 0.0;
    CGPathAddRect(Mutable, 0, v57);
    v54.location = 0;
    v54.length = 0;
    Frame = CTFramesetterCreateFrame(v12, v54, Mutable, 0);
    Lines = CTFrameGetLines(Frame);
    Count = CFArrayGetCount(Lines);
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    v23 = CGRectZero.size.width;
    height = CGRectZero.size.height;
    if (Lines)
    {
      v25 = Count;
      origins.x = 0.0;
      origins.y = 0.0;
      v55.location = Count - 1;
      v55.length = 1;
      CTFrameGetLineOrigins(Frame, v55, &origins);
      if (v25 >= 1)
      {
        v48 = v12;
        v26 = 0;
        v27 = 0;
        v28 = origins.y;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(Lines, v27);
          GlyphCount = CTLineGetGlyphCount(ValueAtIndex);
          if (v26 <= a3 && GlyphCount + v26 > a3)
          {
            break;
          }

          ++v27;
          v26 += GlyphCount;
          if (v25 == v27)
          {
            v12 = v48;
            goto LABEL_20;
          }
        }

        a4->location = v26;
        a4->length = GlyphCount;
        v56.location = v27;
        v56.length = 1;
        CTFrameGetLineOrigins(Frame, v56, &origins);
        x = origins.x;
        v31 = origins.y;
        descent = 0.0;
        ascent = 0.0;
        leading = 0.0;
        StringRange = CTLineGetStringRange(ValueAtIndex);
        v33 = [(NSAttributedString *)[(MRTextRenderer *)self text] string];
        v34 = [(NSAttributedString *)[(MRTextRenderer *)self text] length];
        if (StringRange.length + StringRange.location - 1 >= v34 - 1)
        {
          v35 = v34 - 1;
        }

        else
        {
          v35 = StringRange.length + StringRange.location - 1;
        }

        TrailingWhitespaceWidth = 0.0;
        if ([(NSString *)v33 characterAtIndex:v35, v48]== 10)
        {
          TrailingWhitespaceWidth = CTLineGetTrailingWhitespaceWidth(ValueAtIndex);
        }

        y = v31 - v28;
        TypographicBounds = CTLineGetTypographicBounds(ValueAtIndex, &ascent, &descent, &leading);
        v38 = ascent + descent;
        v39 = leading;
        if ([(NSString *)[(NSAttributedString *)[(MRTextRenderer *)self text] string] characterAtIndex:[(NSAttributedString *)[(MRTextRenderer *)self text] length]- 1]== 10)
        {
          y = y + ascent + descent + leading;
        }

        v12 = v49;
        v23 = TypographicBounds - TrailingWhitespaceWidth;
        height = v38 + v39;
      }
    }

LABEL_20:
    CFRelease(Frame);
    CFRelease(Mutable);
    CFRelease(v12);
    Attribute = CFAttributedStringGetAttribute([(MRTextRenderer *)self text], 0, @"shadow", 0);
    if (Attribute)
    {
      v41 = Attribute;
      v42 = CGSizeFromString([Attribute objectForKey:@"offset"]);
      v43 = v42.width;
      v44 = v42.height;
      [objc_msgSend(v41 objectForKey:{@"blurRadius", "floatValue"}];
      v17 = v45;
    }

    else
    {
      v43 = CGSizeZero.width;
      v44 = CGSizeZero.height;
    }

    v46 = v17 - v43;
    if (v43 >= 0.0)
    {
      v46 = v17;
    }

    v47 = v17 - v44;
    if (v44 >= 0.0)
    {
      v47 = v17;
    }

    v7 = v14 * (y + v47);
    v6 = v14 * (x + v46);
    v8 = v14 * v23;
    v9 = v14 * height;
  }

  else
  {
    a4->location = lastGlyphIndex + 1;
    a4->length = 0;
    v6 = CGRectZero.origin.x;
    v7 = CGRectZero.origin.y;
    v8 = CGRectZero.size.width;
    v9 = CGRectZero.size.height;
  }

  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGSize)_sizeOfString:(id)a3
{
  if (!a3 || ![a3 length])
  {
    goto LABEL_37;
  }

  v5 = CTFramesetterCreateWithAttributedString(a3);
  Mutable = CGPathCreateMutable();
  [(MRTextRenderer *)self _scale];
  v8 = v7;
  width = self->_definedSize.width;
  if (width <= 0.0)
  {
    width = self->_resolution.width;
  }

  v59.size.width = width / v8;
  v59.size.height = 30000.0;
  v10 = 0.0;
  v59.origin.x = 0.0;
  v59.origin.y = 0.0;
  CGPathAddRect(Mutable, 0, v59);
  v56.location = 0;
  v56.length = 0;
  Frame = CTFramesetterCreateFrame(v5, v56, Mutable, 0);
  if (!Frame)
  {
    CFRelease(Mutable);
    CFRelease(v5);
LABEL_37:
    v40 = CGSizeZero.width;
    height = CGSizeZero.height;
    goto LABEL_43;
  }

  v12 = Frame;
  cf = Mutable;
  v47 = v5;
  v48 = self;
  Path = CTFrameGetPath(Frame);
  BoundingBox = CGPathGetBoundingBox(Path);
  x = BoundingBox.origin.x;
  y = BoundingBox.origin.y;
  v16 = BoundingBox.size.width;
  v17 = BoundingBox.size.height;
  Lines = CTFrameGetLines(v12);
  Count = CFArrayGetCount(Lines);
  v20 = 0.0;
  range = Count - 1;
  range_8 = Count;
  if (Count >= 1)
  {
    v21 = 0;
    v22 = Count;
    do
    {
      descent = 0.0;
      ascent[0] = 0.0;
      leading = 0.0;
      ValueAtIndex = CFArrayGetValueAtIndex(Lines, v21);
      StringRange = CTLineGetStringRange(ValueAtIndex);
      location = StringRange.location;
      length = StringRange.length;
      TrailingWhitespaceWidth = 0.0;
      if (([objc_msgSend(a3 string] & 1) == 0)
      {
        v51 = [a3 string];
        v28 = [a3 length];
        v29 = StringRange.length + StringRange.location - 1 >= (v28 - 1) ? (v28 - 1) : StringRange.length + StringRange.location - 1;
        location = StringRange.location;
        length = StringRange.length;
        if ([v51 characterAtIndex:v29] == 10)
        {
          TrailingWhitespaceWidth = CTLineGetTrailingWhitespaceWidth(ValueAtIndex);
        }
      }

      v30 = CTLineGetTypographicBounds(ValueAtIndex, ascent, &descent, &leading) - TrailingWhitespaceWidth;
      v31 = 0;
      if (([objc_msgSend(a3 "string")] & 1) == 0 && v30 > v16)
      {
        v32 = [a3 string];
        v33 = length + location - 1;
        v34 = [a3 length];
        if (v33 >= (v34 - 1))
        {
          v35 = v34 - 1;
        }

        else
        {
          v35 = v33;
        }

        if ([v32 characterAtIndex:v35] == 32)
        {
          v30 = v30 - CTLineGetTrailingWhitespaceWidth(ValueAtIndex);
          v31 = 1;
        }

        else
        {
          v31 = 0;
        }
      }

      if (v30 > v20)
      {
        v20 = v30;
      }

      if (v22 == 1)
      {
        origins.x = 0.0;
        origins.y = 0.0;
        v57.location = range;
        v57.length = 1;
        CTFrameGetLineOrigins(v12, v57, &origins);
        v61.origin.x = x;
        v61.origin.y = y;
        v61.size.width = v16;
        v61.size.height = v17;
        v36 = CGRectGetMaxY(v61) - origins.y + descent;
        v10 = range_8 == 1 ? v36 : v36 + leading;
        if ((([objc_msgSend(a3 "string")] != 10) & ~v31) == 0)
        {
          v10 = v10 + ascent[0] + descent + leading;
        }
      }

      ++v21;
      --v22;
    }

    while (v22);
  }

  CFRelease(cf);
  CFRelease(v12);
  CFRelease(v47);
  Attribute = CFAttributedStringGetAttribute(a3, 0, kCTParagraphStyleAttributeName, 0);
  if (Attribute)
  {
    origins.x = 0.0;
    if (CTParagraphStyleGetValueForSpecifier(Attribute, kCTParagraphStyleSpecifierFirstLineHeadIndent, 8uLL, &origins))
    {
      v20 = v20 + origins.x;
    }
  }

  if ([a3 length])
  {
    [(MRTextRenderer *)v48 _shadowSizeOffsetForString:a3];
  }

  else
  {
    v38 = CGSizeZero.width;
    v39 = CGSizeZero.height;
  }

  v42 = v8 * (v20 + v38);
  v43 = ceilf(v42);
  v44 = v8 * (v10 + v39);
  height = ceilf(v44);
  v45 = v48->_definedSize.height;
  if (v45 <= 0.0)
  {
    v45 = v48->_resolution.height;
  }

  v40 = v43;
  if (v45 < height)
  {
    height = v45;
  }

LABEL_43:
  result.height = height;
  result.width = v40;
  return result;
}

- (int64_t)numberOfLines
{
  v3 = [(MRTextRenderer *)self text];

  return [(MRTextRenderer *)self _numberOfLinesInString:v3];
}

- (int64_t)numberOfLinesForTruncatedText
{
  v3[0] = 0;
  v3[1] = 0;
  return [(MRTextRenderer *)self _numberOfLinesInString:[(MRTextRenderer *)self _truncateTextToFitInSize:0 fromCenter:v3 outSize:self->_definedSize.width, self->_definedSize.height]];
}

- (id)truncatedText
{
  v3[0] = 0;
  v3[1] = 0;
  return [(MRTextRenderer *)self _truncateTextToFitInSize:0 fromCenter:v3 outSize:self->_definedSize.width, self->_definedSize.height];
}

- (int64_t)_numberOfLinesInString:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  Mutable = CGPathCreateMutable();
  v6 = CTFramesetterCreateWithAttributedString(a3);
  [(MRTextRenderer *)self _scale];
  width = self->_definedSize.width;
  if (width <= 0.0)
  {
    width = self->_resolution.width;
  }

  v21.size.width = width / v7;
  v21.size.height = self->_resolution.height / v7;
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  CGPathAddRect(Mutable, 0, v21);
  v20.location = 0;
  v20.length = 0;
  Frame = CTFramesetterCreateFrame(v6, v20, Mutable, 0);
  if (Frame)
  {
    v10 = Frame;
    Lines = CTFrameGetLines(Frame);
    if (Lines)
    {
      v12 = Lines;
      Count = CFArrayGetCount(Lines);
      if (Count >= 1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v12, Count - 1);
        StringRange = CTLineGetStringRange(ValueAtIndex);
        if (StringRange.location + StringRange.length < [a3 length] || ((v16 = objc_msgSend(a3, "string"), v17 = objc_msgSend(a3, "length"), StringRange.location + StringRange.length - 1 >= (v17 - 1)) ? (v18 = (v17 - 1)) : (v18 = StringRange.location + StringRange.length - 1), objc_msgSend(v16, "characterAtIndex:", v18) == 10))
        {
          ++Count;
        }
      }
    }

    else
    {
      Count = 0;
    }

    CFRelease(v10);
  }

  else
  {
    Count = 0;
  }

  CFRelease(v6);
  CFRelease(Mutable);
  return Count;
}

- (CGSize)shadowOffset
{
  if ([(NSAttributedString *)[(MRTextRenderer *)self text] length])
  {
    [(MRTextRenderer *)self _scale];
    v4 = v3;
    Attribute = CFAttributedStringGetAttribute([(MRTextRenderer *)self text], 0, @"shadow", 0);
    if (Attribute)
    {
      v6 = Attribute;
      [objc_msgSend(Attribute objectForKey:{@"offset", "CGSizeValue"}];
      width = v4 * v7;
      height = v4 * v9;
      [objc_msgSend(v6 objectForKey:{@"blurRadius", "floatValue"}];
      v12 = v11 * 0.5;
    }

    else
    {
      width = CGSizeZero.width;
      height = CGSizeZero.height;
      v12 = 0.0;
    }

    v13 = -v12;
    if (width >= 0.0)
    {
      v14 = -v12;
    }

    else
    {
      v14 = v12;
    }

    v15 = v14 - width;
    if (width < 0.0)
    {
      v13 = v15;
    }

    if (height > 0.0)
    {
      v12 = height + v12;
    }
  }

  else
  {
    v13 = CGSizeZero.width;
    v12 = CGSizeZero.height;
  }

  result.height = v12;
  result.width = v13;
  return result;
}

- (CGSize)_shadowSizeOffsetForString:(id)a3
{
  v4 = [a3 length];
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  if (v4)
  {
    Attribute = CFAttributedStringGetAttribute(a3, 0, @"shadow", 0);
    if (Attribute)
    {
      v8 = Attribute;
      [objc_msgSend(Attribute objectForKey:{@"blurRadius", "floatValue"}];
      v10 = v9 * 0.5;
      [objc_msgSend(v8 objectForKey:{@"offset", "CGSizeValue"}];
      width = CGSizeZero.width + v10 + fabs(v11 + v11);
      height = height + v10 + fabs(v12 + v12);
    }
  }

  v13 = width;
  v14 = height;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)squeezeWidthForLineCount:(int64_t)a3
{
  if ([(MRTextRenderer *)self numberOfLines]<= a3)
  {
    do
    {
      width = self->_definedSize.width;
      self->_definedSize.width = width + -5.0;
    }

    while ([(MRTextRenderer *)self numberOfLines]<= a3);
    self->_definedSize.width = width;

    [(MRTextRenderer *)self updateLineSpacing];
  }
}

- (void)updateLineSpacing
{
  if (self->_lineSpacingFactor != 1.0)
  {
    v3 = [(NSAttributedString *)self->_text mutableCopy];
    v19 = 0;
    v20 = 0;
    v4 = [(MRTextRenderer *)self numberOfLines];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v15 = v22;
      do
      {
        v7 = [(NSAttributedString *)v3 attribute:kCTParagraphStyleAttributeName atIndex:[(MRTextRenderer *)self rangeOfGlyphsOnLine:v6 effectiveRange:v15], &v19];
        if (v7)
        {
          v8 = v7;
          valueBuffer = 0;
          if (CTParagraphStyleGetValueForSpecifier(v7, kCTParagraphStyleSpecifierAlignment, 1uLL, &valueBuffer))
          {
            v9 = v15;
            v10 = 1;
            *&settings[0].spec = 0;
            settings[0].valueSize = 1;
            settings[0].value = &valueBuffer;
          }

          else
          {
            v10 = 0;
            v9 = settings;
          }

          v17 = 0.0;
          if (CTParagraphStyleGetValueForSpecifier(v8, kCTParagraphStyleSpecifierFirstLineHeadIndent, 8uLL, &v17))
          {
            ++v10;
            *&v9->spec = 1;
            v9->valueSize = 8;
            v9->value = &v17;
          }

          v16 = 0;
          if (CTParagraphStyleGetValueForSpecifier(v8, kCTParagraphStyleSpecifierHeadIndent, 8uLL, &v16))
          {
            v11 = &settings[v10];
            *&v11->spec = 2;
            ++v10;
            v11->valueSize = 8;
            v11->value = &v16;
          }
        }

        else
        {
          v10 = 0;
        }

        if (v6)
        {
          lineSpacingFactor = self->_lineSpacingFactor;
        }

        else
        {
          lineSpacingFactor = 1.0;
        }

        v17 = lineSpacingFactor;
        v13 = &settings[v10];
        *&v13->spec = 7;
        v13->valueSize = 8;
        v13->value = &v17;
        v14 = CTParagraphStyleCreate(settings, v10 + 1);
        [(NSAttributedString *)v3 addAttribute:kCTParagraphStyleAttributeName value:v14 range:v19, v20];
        CFRelease(v14);
        ++v6;
      }

      while (v5 != v6);
    }

    self->_text = v3;
  }
}

- (id)_truncateTextToFitInSize:(CGSize)a3 fromCenter:(BOOL)a4 outSize:(CGSize *)a5
{
  height = a3.height;
  width = a3.width;
  if (self->_originalCacheSize.width == a3.width && self->_originalCacheSize.height == a3.height)
  {
    *a5 = self->_cachedSize;
    return self->_cachedText;
  }

  v10 = a4;
  if (a5)
  {
    *a5 = a3;
  }

  v11 = [(MRTextRenderer *)self text];
  v12 = [(NSAttributedString *)v11 length];
  if (v12)
  {
    v12 = [(MRTextRenderer *)self _glyphIndexForStringIndex:v12 - 1 inString:v11 forSize:width, height];
  }

  self->_lastGlyphIndex = v12;
  if (!self->_truncate)
  {
    goto LABEL_12;
  }

  v13 = [(MRTextRenderer *)self numberOfLines];
  v14 = [(MRTextRenderer *)self maxNumberOfLines];
  v15 = [(MRTextRenderer *)self text];
  if (v13 <= v14)
  {
    return v15;
  }

  if (![(NSString *)[(NSAttributedString *)v15 string] isEqualToString:@"                                      "])
  {
    v17 = [(NSAttributedString *)v11 mutableCopy];
    v18 = [(NSAttributedString *)v11 mutableCopy];
    v19 = [[NSAttributedString alloc] initWithString:@"..." attributes:{-[NSAttributedString attributesAtIndex:effectiveRange:](v11, "attributesAtIndex:effectiveRange:", 0, 0)}];
    v20 = [(NSAttributedString *)v11 length];
    if ([v17 length] && (v20 & 0x8000000000000000) == 0)
    {
      v21 = 0;
      do
      {
        v22 = [v17 length];
        if (v10)
        {
          v23 = (v22 >> 1);
        }

        else
        {
          v23 = (v22 - 1);
        }

        v24 = [objc_msgSend(v17 "string")];
        [v17 deleteCharactersInRange:{v24, v25}];
        [(NSAttributedString *)v18 setAttributedString:v17];
        [(NSAttributedString *)v18 insertAttributedString:v19 atIndex:v24];
        v26 = [(MRTextRenderer *)self _numberOfLinesInString:v18];
        if (v26 <= [(MRTextRenderer *)self maxNumberOfLines])
        {
          break;
        }

        if (![v17 length])
        {
          break;
        }
      }

      while (v21++ < v20);
      v11 = v18;
    }

    if ([(NSString *)[(NSAttributedString *)v11 string] hasSuffix:@"..."])
    {
      v11 = [(NSAttributedString *)v11 mutableCopy];
    }

    [(MRTextRenderer *)self _sizeOfString:v11];
    v30 = v28;
    v31 = v29;
    if (a5)
    {
      a5->width = v28;
      a5->height = v29;
    }

    v32 = [(NSAttributedString *)v11 length];
    if (v32)
    {
      v32 = [(MRTextRenderer *)self _glyphIndexForStringIndex:v32 - 1 inString:v11 forSize:v30, v31];
    }

    self->_lastGlyphIndex = v32;

    return v11;
  }

LABEL_12:

  return [(MRTextRenderer *)self text];
}

- (void)trimWhitespace
{
  v3 = [(NSString *)[(NSAttributedString *)self->_text string] stringByTrimmingCharactersInSet:+[NSCharacterSet whitespaceAndNewlineCharacterSet]];
  v4 = [[NSMutableAttributedString alloc] initWithAttributedString:self->_text];
  [v4 replaceCharactersInRange:0 withString:{-[NSAttributedString length](self->_text, "length"), v3}];
  [(MRTextRenderer *)self setText:v4];
}

- (CGSize)resolution
{
  width = self->_resolution.width;
  height = self->_resolution.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)definedSize
{
  width = self->_definedSize.width;
  height = self->_definedSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)inset
{
  width = self->_inset.width;
  height = self->_inset.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)imageRect
{
  x = self->_imageRect.origin.x;
  y = self->_imageRect.origin.y;
  width = self->_imageRect.size.width;
  height = self->_imageRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)_invertRect:(CGRect)a3 inRect:(CGRect)a4
{
  width = a4.size.width;
  height = a3.size.height;
  v6 = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a3.size.width <= a3.size.height;
  v10 = a3.origin.y + a3.size.height;
  v11 = a4.size.height - (a3.origin.y + a3.size.height);
  if (a3.size.width > a3.size.height)
  {
    v12 = x;
  }

  else
  {
    v12 = a4.origin.x;
  }

  if (v9)
  {
    v13 = a4.origin.y;
  }

  else
  {
    v13 = a3.origin.y + a3.size.height;
  }

  if (v9)
  {
    v14 = a4.size.width;
  }

  else
  {
    v14 = v6;
  }

  if (v9)
  {
    v15 = y;
  }

  else
  {
    v15 = v11;
  }

  if (v9)
  {
    v16 = v10;
  }

  else
  {
    v16 = a4.origin.y;
  }

  if (v9)
  {
    v17 = v11;
  }

  else
  {
    v17 = y;
  }

  if (v6 < height)
  {
    v18 = a4.origin.x;
  }

  else
  {
    v18 = v12;
  }

  if (v6 < height)
  {
    v19 = a4.origin.y;
  }

  else
  {
    v19 = v13;
  }

  v46 = a4.origin.x;
  v47 = v19;
  if (v6 < height)
  {
    v20 = width;
  }

  else
  {
    v20 = v14;
  }

  if (v6 < height)
  {
    v21 = y;
  }

  else
  {
    v21 = v15;
  }

  if (v6 < height)
  {
    v22 = v10;
  }

  else
  {
    v22 = v16;
  }

  if (v6 < height)
  {
    v23 = v11;
  }

  else
  {
    v23 = v17;
  }

  if (v6 < height)
  {
    v24 = y;
  }

  else
  {
    v24 = a4.origin.y;
  }

  if (v6 < height)
  {
    v25 = height;
  }

  else
  {
    v25 = a4.size.height;
  }

  if (v6 < height)
  {
    v26 = y;
  }

  else
  {
    v26 = a4.origin.y;
  }

  rect1 = v26;
  v45 = v24;
  v27 = v18;
  v41 = v22;
  v42 = v21;
  v28 = v20;
  v43 = v23;
  v53.origin.x = x;
  v53.origin.y = y;
  v53.size.width = v6;
  v53.size.height = height;
  v49 = v20;
  v48 = v18;
  if (CGRectIntersectsRect(*(&v22 - 1), v53))
  {
    v18 = CGRectZero.origin.x;
    v41 = CGRectZero.origin.y;
    v20 = CGRectZero.size.width;
    v43 = CGRectZero.size.height;
  }

  v37 = v18;
  v40 = v20;
  v29 = x + v6;
  v50.origin.x = v46;
  v50.origin.y = rect1;
  v50.size.width = x;
  v50.size.height = v25;
  v54.origin.x = x;
  v54.origin.y = y;
  v54.size.width = v6;
  v54.size.height = height;
  v30 = CGRectIntersectsRect(v50, v54);
  v31 = v25;
  v32 = x;
  if (v30)
  {
    v46 = CGRectZero.origin.x;
    rect1 = CGRectZero.origin.y;
    v32 = CGRectZero.size.width;
    v31 = CGRectZero.size.height;
  }

  v38 = v32;
  v39 = v31;
  v33 = width - v29;
  v51.origin.y = v47;
  v51.origin.x = v48;
  v51.size.width = v49;
  v34 = v42;
  v51.size.height = v42;
  v55.origin.x = x;
  v55.origin.y = y;
  v55.size.width = v6;
  v55.size.height = height;
  if (CGRectIntersectsRect(v51, v55))
  {
    v47 = CGRectZero.origin.y;
    v48 = CGRectZero.origin.x;
    v34 = CGRectZero.size.height;
    v49 = CGRectZero.size.width;
  }

  v52.origin.x = x + v6;
  v52.origin.y = v45;
  v52.size.width = v33;
  v52.size.height = v25;
  v56.origin.x = x;
  v56.origin.y = y;
  v56.size.width = v6;
  v56.size.height = height;
  if (CGRectIntersectsRect(v52, v56))
  {
    v29 = CGRectZero.origin.x;
    v45 = CGRectZero.origin.y;
    v33 = CGRectZero.size.width;
    v25 = CGRectZero.size.height;
  }

  v35 = +[NSMutableArray array];
  if (v38 > 0.0 && v39 > 0.0)
  {
    [v35 addObject:{+[NSValue valueWithCGRect:](NSValue, "valueWithCGRect:", v46, rect1, v38, v39)}];
  }

  if (v33 > 0.0 && v25 > 0.0)
  {
    [v35 addObject:{+[NSValue valueWithCGRect:](NSValue, "valueWithCGRect:", v29, v45, v33, v25)}];
  }

  if (v40 > 0.0 && v43 > 0.0)
  {
    [v35 addObject:{+[NSValue valueWithCGRect:](NSValue, "valueWithCGRect:", v37, v41, v40, v43)}];
  }

  if (v49 > 0.0 && v34 > 0.0)
  {
    [v35 addObject:{+[NSValue valueWithCGRect:](NSValue, "valueWithCGRect:", v48, v47, v49, v34)}];
  }

  return v35;
}

@end