@interface UIMorphingLabelGlyphSet
- (CGPoint)lineOrigin;
- (CGRect)boundingRectForGlyphsInRange:(_NSRange)range;
- (UIMorphingLabelGlyphSet)initWithLabel:(id)label attributedString:(id)string;
- (void)buildGlyphViews;
- (void)dealloc;
- (void)placeGlyphs;
- (void)removeGlyphs;
@end

@implementation UIMorphingLabelGlyphSet

- (void)buildGlyphViews
{
  v134 = *MEMORY[0x1E69E9840];
  GlyphCount = CTLineGetGlyphCount(self->_line);
  self->_glyphCount = GlyphCount;
  if (GlyphCount)
  {
    self->_glyphs = malloc_type_malloc(2 * GlyphCount, 0x1000040BDFB0063uLL);
    self->_glyphFrames = malloc_type_malloc(32 * self->_glyphCount, 0x1000040E0EAB150uLL);
    v4 = malloc_type_malloc(16 * self->_glyphCount, 0x1000040451B5BE8uLL);
    v121 = &v118;
    self->_glyphPositions = v4;
    MEMORY[0x1EEE9AC00](v4);
    v6 = (&v118 - 2 * v5);
    MEMORY[0x1EEE9AC00](v7);
    v9 = &v118 - v8;
    MEMORY[0x1EEE9AC00](v10);
    v126 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    WeakRetained = objc_loadWeakRetained(&self->_label);
    window = [WeakRetained window];
    screen = [window screen];
    v15 = screen;
    if (screen)
    {
      mainScreen = screen;
    }

    else
    {
      mainScreen = [objc_opt_self() mainScreen];
    }

    v21 = mainScreen;
    v120 = mainScreen;

    [v21 scale];
    v23 = v22;
    GlyphRuns = CTLineGetGlyphRuns(self->_line);
    if (!CFArrayGetCount(GlyphRuns))
    {
      goto LABEL_20;
    }

    v25 = 0;
    v125 = 0;
    v26 = 0;
    v122 = GlyphRuns;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(GlyphRuns, v26);
      v28 = CTRunGetGlyphCount(ValueAtIndex);
      Font = CTRunGetFont();
      SymbolicTraits = CTFontGetSymbolicTraits(Font);
      v135.location = 0;
      v135.length = v28;
      CTRunGetGlyphs(ValueAtIndex, v135, &self->_glyphs[v25]);
      CTFontGetBoundingRectsForGlyphs(Font, kCTFontOrientationDefault, &self->_glyphs[v25], &self->_glyphFrames[v25], v28);
      v136.location = 0;
      v136.length = v28;
      CTRunGetPositions(ValueAtIndex, v136, &self->_glyphPositions[v25]);
      if (v28)
      {
        v124 = *&v26;
        v31 = (SymbolicTraits >> 13) & 1;
        *&v123 = v28 + v25;
        glyphPositions = self->_glyphPositions;
        v33 = 32 * v25;
        v34 = v28;
        v35 = (16 * v25) | 8;
        do
        {
          v139 = CGRectOffset(self->_glyphFrames[v33 / 0x20], *(glyphPositions + v35 - 8), *(&glyphPositions->x + v35));
          v140.origin.x = UIRectIntegralWithScale(v139.origin.x, v139.origin.y, v139.size.width, v139.size.height, v23);
          self->_glyphFrames[v33 / 0x20] = CGRectInset(v140, -2.0 / v23, -1.0 / v23);
          if (v25)
          {
            CGRectGetMaxX(*&v6[v33 / 8 - 4]);
          }

          v36 = objc_loadWeakRetained(&self->_label);
          UICeilToViewScale(v36);
          v38 = v37;

          *&v6[v33 / 8] = CGRectOffset(self->_glyphFrames[v33 / 0x20], v38, 0.0);
          v39 = (v9 + v35);
          glyphPositions = self->_glyphPositions;
          v40 = *(&glyphPositions->x + v35);
          v41 = v38 + *(glyphPositions + v35 - 8);
          v126[v25] = v31;
          *(v39 - 1) = v41;
          *v39 = v40;
          ++v25;
          v33 += 32;
          v35 += 16;
          --v34;
        }

        while (v34);
        v125 += v28;
        v25 = v123;
        v26 = *&v124;
      }

      ++v26;
      GlyphRuns = v122;
    }

    while (v26 < CFArrayGetCount(v122));
    if (v125)
    {
      v43 = *v6;
      v42 = v6[1];
      v45 = v6[2];
      v44 = v6[3];
      if (self->_glyphCount >= 2)
      {
        v46 = (v6 + 7);
        v47 = 1;
        do
        {
          v48 = v43;
          v49 = v45;
          *(&v42 - 1) = CGRectUnion(*(&v42 - 1), *(v46 - 24));
          v43 = v50;
          v45 = v51;
          ++v47;
          v46 += 32;
        }

        while (v47 < self->_glyphCount);
      }
    }

    else
    {
LABEL_20:
      v125 = 0;
      v43 = *MEMORY[0x1E695F058];
      v42 = *(MEMORY[0x1E695F058] + 8);
      v45 = *(MEMORY[0x1E695F058] + 16);
      v44 = *(MEMORY[0x1E695F058] + 24);
    }

    v52 = 1.0 / v23 + v44;
    v53 = v42 - 1.0 / v23;
    CGAffineTransformMakeScale(&v133, 1.0, -1.0);
    v141.origin.x = v43;
    v141.origin.y = v53;
    v141.size.width = v45;
    v141.size.height = v52;
    v142 = CGRectApplyAffineTransform(v141, &v133);
    *&v142.size.height = *(MEMORY[0x1E695EFD0] + 16);
    *&v133.a = *MEMORY[0x1E695EFD0];
    *&v133.c = *&v142.size.height;
    *&v133.tx = *(MEMORY[0x1E695EFD0] + 32);
    v123 = *&v133.a;
    *&transform.a = *&v133.a;
    *&transform.c = *&v142.size.height;
    v119 = *&v142.size.height;
    v118 = *&v133.tx;
    *&transform.tx = *&v133.tx;
    CGAffineTransformTranslate(&v133, &transform, -v142.origin.x, -v142.origin.y);
    v131 = v133;
    CGAffineTransformScale(&transform, &v131, 1.0, -1.0);
    v133 = transform;
    _UIGraphicsBeginImageContextWithOptions(0, 0, v45, v52, v23);
    ContextStack = GetContextStack(0);
    if (*ContextStack < 1)
    {
      v55 = 0;
    }

    else
    {
      v55 = ContextStack[3 * (*ContextStack - 1) + 1];
    }

    CGContextSaveGState(v55);
    transform = v133;
    CGContextConcatCTM(v55, &transform);
    v56 = +[UIColor whiteColor];
    [v56 set];

    if (CFArrayGetCount(GlyphRuns))
    {
      v57 = 0;
      v58 = 0;
      do
      {
        v59 = CFArrayGetValueAtIndex(GlyphRuns, v58);
        v60 = CTRunGetFont();
        v61 = CTRunGetGlyphCount(v59);
        CTFontDrawGlyphs(v60, &self->_glyphs[v57], &v9[v57], v61, v55);
        v57 += v61;
        ++v58;
      }

      while (v58 < CFArrayGetCount(GlyphRuns));
    }

    CGContextRestoreGState(v55);
    v62 = _UIGraphicsGetImageFromCurrentImageContext(0);
    UIGraphicsEndImageContext();
    v63 = objc_alloc_init(MEMORY[0x1E695DF70]);
    glyphViews = self->_glyphViews;
    self->_glyphViews = v63;

    v65 = MEMORY[0x1E695F058];
    if (self->_glyphCount)
    {
      v66 = 0;
      v67 = *(MEMORY[0x1E695F058] + 8);
      v124 = *MEMORY[0x1E695F058];
      v68 = v6 + 2;
      v70 = *(MEMORY[0x1E695F058] + 16);
      v69 = *(MEMORY[0x1E695F058] + 24);
      do
      {
        height = v69;
        width = v70;
        y = v67;
        x = v124;
        v75 = v125;
        if (v125 > v66)
        {
          v143 = *(v68 - 1);
          transform = v133;
          v144 = CGRectApplyAffineTransform(v143, &transform);
          x = v144.origin.x;
          y = v144.origin.y;
          width = v144.size.width;
          height = v144.size.height;
        }

        CGAffineTransformMakeScale(&transform, v23, v23);
        v145.origin.x = x;
        v145.origin.y = y;
        v145.size.width = width;
        v145.size.height = height;
        v146 = CGRectApplyAffineTransform(v145, &transform);
        UIRectIntegralWithScale(v146.origin.x, v146.origin.y, v146.size.width, v146.size.height, 1.0);
        v76 = objc_alloc_init(UIMorphingLabelImage);
        [(UIMorphingLabelImage *)v76 setImage:v62];
        [(UIMorphingLabelImage *)v76 setContentsRect:x, y, width, height];
        if (v75 > v66)
        {
          v77 = objc_loadWeakRetained(&self->_label);
          v78 = [v77 glyphViewWithImage:v76 isColorGlyph:v126[v66]];

          if (v78)
          {
            [(NSMutableArray *)self->_glyphViews addObject:v78];
          }
        }

        ++v66;
        v68 += 2;
      }

      while (v66 < self->_glyphCount);
    }

    v79 = objc_loadWeakRetained(&self->_label);
    [v79 bounds];
    v81 = v80;
    v83 = v82;

    line = self->_line;
    v85 = objc_loadWeakRetained(&self->_label);
    [v85 flushAmount];
    self->_lineOrigin.x = CTLineGetPenOffsetForFlush(line, v86, v81);

    ascent = 0.0;
    descent = 0.0;
    leading = 0.0;
    self->_lineWidth = CTLineGetTypographicBounds(self->_line, &ascent, &descent, &leading);
    v87 = self->_lineWidth - CTLineGetTrailingWhitespaceWidth(self->_line);
    self->_lineOrigin.y = ascent + (v83 - (ascent + descent)) * 0.5;
    self->_lineWidth = v87;
    v88 = objc_loadWeakRetained(&self->_label);
    UIRoundToViewScale(v88);
    self->_lineOrigin.x = v89;

    v90 = objc_loadWeakRetained(&self->_label);
    UIRoundToViewScale(v90);
    self->_lineOrigin.y = v91;

    *&transform.a = v123;
    *&transform.c = v119;
    *&transform.tx = v118;
    v92 = self->_lineOrigin.x;
    v93 = self->_lineOrigin.y;
    *&v131.a = v123;
    *&v131.c = v119;
    *&v131.tx = v118;
    CGAffineTransformTranslate(&transform, &v131, v92, v93);
    v127 = transform;
    CGAffineTransformScale(&v131, &v127, 1.0, -1.0);
    transform = v131;
    v94 = v125;
    if (self->_glyphCount)
    {
      v95 = 0;
      v96 = 0;
      v97 = 8;
      do
      {
        p_height = &v65->size.height;
        p_width = &v65->size.width;
        p_y = &v65->origin.y;
        v101 = &self->_glyphFrames[v95];
        if (v94 > v96)
        {
          v102 = &self->_glyphFrames[v95];
        }

        else
        {
          v102 = v65;
        }

        if (v94 > v96)
        {
          p_y = &v101->origin.y;
          p_width = &v101->size.width;
          p_height = &v101->size.height;
        }

        v147.size.height = *p_height;
        v147.size.width = *p_width;
        v147.origin.y = *p_y;
        v147.origin.x = v102->origin.x;
        v131 = transform;
        v148 = CGRectApplyAffineTransform(v147, &v131);
        v103 = v148.origin.x;
        v104 = v148.origin.y;
        v105 = v148.size.width;
        v106 = v148.size.height;
        *v101 = v148;
        v107 = [(NSMutableArray *)self->_glyphViews objectAtIndexedSubscript:v96];
        v108 = &self->_glyphFrames[v95];
        v109 = v108->size.width;
        v110 = v108->size.height;
        layer = [v107 layer];
        [layer setBounds:{0.0, 0.0, v109, v110}];

        v112 = (&self->_glyphPositions->x + v97);
        v149.origin.x = v103;
        v149.origin.y = v104;
        v149.size.width = v105;
        v149.size.height = v106;
        MinX = CGRectGetMinX(v149);
        v150.origin.x = v103;
        v150.origin.y = v104;
        v150.size.width = v105;
        v150.size.height = v106;
        MaxX = CGRectGetMaxX(v150);
        v115 = self->_lineOrigin.y;
        *(v112 - 1) = MinX * 0.95 + MaxX * 0.05;
        *v112 = v115;
        v116 = self->_lineOrigin.y;
        MinY = CGRectGetMinY(self->_glyphFrames[v95]);
        [v107 setAnchorPoint:{0.05, (v116 - MinY) / (CGRectGetMaxY(self->_glyphFrames[v95]) - MinY)}];

        ++v96;
        ++v95;
        v97 += 16;
      }

      while (v96 < self->_glyphCount);
    }
  }

  else
  {
    v17 = objc_loadWeakRetained(&self->_label);
    [v17 bounds];
    MidX = CGRectGetMidX(v137);
    v19 = objc_loadWeakRetained(&self->_label);
    [v19 bounds];
    MidY = CGRectGetMidY(v138);
    self->_lineOrigin.x = MidX;
    self->_lineOrigin.y = MidY;

    self->_lineWidth = 0.0;
  }
}

- (void)placeGlyphs
{
  if (self->_glyphCount)
  {
    v3 = 0;
    v4 = 0;
    v19 = *(MEMORY[0x1E69792E8] + 80);
    v20 = *(MEMORY[0x1E69792E8] + 64);
    v17 = *(MEMORY[0x1E69792E8] + 112);
    v18 = *(MEMORY[0x1E69792E8] + 96);
    v15 = *(MEMORY[0x1E69792E8] + 16);
    v16 = *MEMORY[0x1E69792E8];
    v13 = *(MEMORY[0x1E69792E8] + 48);
    v14 = *(MEMORY[0x1E69792E8] + 32);
    do
    {
      v5 = [(NSMutableArray *)self->_glyphViews objectAtIndex:v4, v13, v14, v15, v16, v17, v18, v19, v20];
      v6 = &self->_glyphPositions[v3];
      x = v6->x;
      y = v6->y;
      layer = [v5 layer];
      [layer setPosition:{x, y}];

      layer2 = [v5 layer];
      v21[4] = v20;
      v21[5] = v19;
      v21[6] = v18;
      v21[7] = v17;
      v21[0] = v16;
      v21[1] = v15;
      v21[2] = v14;
      v21[3] = v13;
      [layer2 setTransform:v21];

      layer3 = [v5 layer];
      LODWORD(v12) = 1.0;
      [layer3 setOpacity:v12];

      [v5 setHidden:0];
      ++v4;
      ++v3;
    }

    while (v4 < self->_glyphCount);
  }
}

- (UIMorphingLabelGlyphSet)initWithLabel:(id)label attributedString:(id)string
{
  labelCopy = label;
  stringCopy = string;
  v22.receiver = self;
  v22.super_class = UIMorphingLabelGlyphSet;
  v8 = [(UIMorphingLabelGlyphSet *)&v22 init];
  v9 = v8;
  if (v8)
  {
    v10 = objc_storeWeak(&v8->_label, labelCopy);
    [labelCopy bounds];
    v12 = v11;

    v13 = [(_NSAttributedStringIntentResolver *)_UIAttributedStringIntentResolver attributedStringByResolvingString:stringCopy];
    v14 = [v13 copy];
    attributedString = v9->_attributedString;
    v9->_attributedString = v14;

    v9->_line = CTLineCreateWithAttributedString(stringCopy);
    if ([(__CFAttributedString *)stringCopy length])
    {
      v16 = objc_alloc(MEMORY[0x1E696AAB0]);
      v17 = [(__CFAttributedString *)stringCopy attributesAtIndex:[(__CFAttributedString *)stringCopy length]- 1 effectiveRange:0];
      v18 = [v16 initWithString:@"…" attributes:v17];

      v19 = CTLineCreateWithAttributedString(v18);
      TruncatedLine = CTLineCreateTruncatedLine(v9->_line, v12, kCTLineTruncationEnd, v19);
      CFRelease(v19);
      if (TruncatedLine)
      {
        CFRelease(v9->_line);
        v9->_line = TruncatedLine;
      }
    }

    [(UIMorphingLabelGlyphSet *)v9 buildGlyphViews];
  }

  return v9;
}

- (void)dealloc
{
  line = self->_line;
  if (line)
  {
    CFRelease(line);
  }

  glyphs = self->_glyphs;
  if (glyphs)
  {
    free(glyphs);
  }

  glyphFrames = self->_glyphFrames;
  if (glyphFrames)
  {
    free(glyphFrames);
  }

  glyphPositions = self->_glyphPositions;
  if (glyphPositions)
  {
    free(glyphPositions);
  }

  v7.receiver = self;
  v7.super_class = UIMorphingLabelGlyphSet;
  [(UIMorphingLabelGlyphSet *)&v7 dealloc];
}

- (void)removeGlyphs
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_glyphViews;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        WeakRetained = objc_loadWeakRetained(&self->_label);
        [WeakRetained hideGlyph:{v8, v10}];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (CGRect)boundingRectForGlyphsInRange:(_NSRange)range
{
  if (range.length)
  {
    v4 = &self->_glyphFrames[range.location];
    x = v4->origin.x;
    y = v4->origin.y;
    width = v4->size.width;
    height = v4->size.height;
    if (range.location + 1 < range.location + range.length)
    {
      v9 = range.length - 1;
      location = range.location;
      do
      {
        *&x = CGRectUnion(*&x, self->_glyphFrames[++location]);
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)lineOrigin
{
  x = self->_lineOrigin.x;
  y = self->_lineOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

@end