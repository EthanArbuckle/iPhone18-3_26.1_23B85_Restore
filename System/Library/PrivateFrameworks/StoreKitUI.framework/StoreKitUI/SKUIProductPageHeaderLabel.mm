@interface SKUIProductPageHeaderLabel
- (CGSize)sizeThatFits:(CGSize)fits;
- (__CTFramesetter)_newTextFramesetter;
- (double)secondaryImageWidth;
- (id)_textAttributes;
- (void)drawRect:(CGRect)rect;
- (void)layoutSubviews;
- (void)setContentRating:(id)rating;
- (void)setRatingColor:(id)color;
- (void)setSecondaryContentRatingImages:(id)images;
- (void)setText:(id)text;
- (void)setTextColor:(id)color;
@end

@implementation SKUIProductPageHeaderLabel

- (void)setText:(id)text
{
  textCopy = text;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v6)
      {
        [(SKUIProductPageHeaderLabel *)v6 setText:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  if (self->_text != textCopy)
  {
    objc_storeStrong(&self->_text, text);
    [(SKUIProductPageHeaderLabel *)self setNeedsDisplay];
  }
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v6)
      {
        [(SKUIProductPageHeaderLabel *)v6 setTextColor:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  if (self->_textColor != colorCopy)
  {
    objc_storeStrong(&self->_textColor, color);
    [(SKUIProductPageHeaderLabel *)self setNeedsDisplay];
  }
}

- (void)setContentRating:(id)rating
{
  ratingCopy = rating;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v6)
      {
        [(SKUIProductPageHeaderLabel *)v6 setContentRating:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  if (self->_contentRating != ratingCopy)
  {
    objc_storeStrong(&self->_contentRating, rating);
    v14 = [(SKUIProductPageHeaderLabel *)self _imageForContentRating:self->_contentRating];
    contentRatingImage = self->_contentRatingImage;
    self->_contentRatingImage = v14;

    [(SKUIProductPageHeaderLabel *)self setNeedsDisplay];
  }
}

- (void)setSecondaryContentRatingImages:(id)images
{
  imagesCopy = images;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v6)
      {
        [(SKUIProductPageHeaderLabel *)v6 setSecondaryContentRatingImages:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  if (self->_secondaryContentRatingImages != imagesCopy)
  {
    objc_storeStrong(&self->_secondaryContentRatingImages, images);
    [(SKUIProductPageHeaderLabel *)self setNeedsDisplay];
  }
}

- (void)setRatingColor:(id)color
{
  colorCopy = color;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v6)
      {
        [(SKUIProductPageHeaderLabel *)v6 setRatingColor:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  if (self->_ratingColor != colorCopy)
  {
    objc_storeStrong(&self->_ratingColor, color);
    v14 = [(SKUIProductPageHeaderLabel *)self _imageForContentRating:self->_contentRating];
    contentRatingImage = self->_contentRatingImage;
    self->_contentRatingImage = v14;

    [(SKUIProductPageHeaderLabel *)self setNeedsDisplay];
  }
}

- (double)secondaryImageWidth
{
  v24 = *MEMORY[0x277D85DE8];
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIProductPageHeaderLabel *)v3 secondaryImageWidth:v4];
      }
    }
  }

  if (![(NSArray *)self->_secondaryContentRatingImages count])
  {
    return 0.0;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = self->_secondaryContentRatingImages;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    v15 = 0.0;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v19 + 1) + 8 * i) size];
        v15 = v15 + v17 + 5.0;
      }

      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  else
  {
    v15 = 0.0;
  }

  return v15;
}

- (void)drawRect:(CGRect)rect
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIProductPageHeaderLabel *)v4 drawRect:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  [(SKUIProductPageHeaderLabel *)self bounds];
  v13 = v12;
  v15 = v14;
  v16 = MEMORY[0x277CBF348];
  _newTextFramesetter = [(SKUIProductPageHeaderLabel *)self _newTextFramesetter];
  Mutable = CGPathCreateMutable();
  v103.origin.x = 0.0;
  v103.origin.y = 0.0;
  v90 = v13;
  v103.size.width = v13;
  v103.size.height = v15;
  CGPathAddRect(Mutable, 0, v103);
  v99.location = 0;
  v99.length = 0;
  Frame = CTFramesetterCreateFrame(_newTextFramesetter, v99, Mutable, 0);
  CFRelease(Mutable);
  Lines = CTFrameGetLines(Frame);
  Count = CFArrayGetCount(Lines);
  v22 = malloc_type_malloc(16 * Count, 0x1000040451B5BE8uLL);
  cf = Frame;
  v100.location = 0;
  v100.length = 0;
  CTFrameGetLineOrigins(Frame, v100, v22);
  [(SKUIProductPageHeaderLabel *)self secondaryImageWidth];
  v24 = v23;
  [(UIImage *)self->_contentRatingImage size];
  theArray = Lines;
  if (Count == 1)
  {
    if (self->_contentRatingImage && (v26 = v24 + v25 + 5.0, ValueAtIndex = CFArrayGetValueAtIndex(Lines, 0), BoundsWithOptions = CTLineGetBoundsWithOptions(ValueAtIndex, 0), v28 = v13 - v26, BoundsWithOptions.size.width > v28))
    {
      CFRelease(Frame);
      free(v22);
      v29 = CGPathCreateMutable();
      v105.origin.x = 0.0;
      v105.origin.y = 0.0;
      v105.size.width = v28;
      v105.size.height = v15;
      CGPathAddRect(v29, 0, v105);
      v101.location = 0;
      v101.length = 0;
      v30 = CTFramesetterCreateFrame(_newTextFramesetter, v101, v29, 0);
      CFRelease(v29);
      theArray = CTFrameGetLines(v30);
      Count = CFArrayGetCount(theArray);
      v22 = malloc_type_malloc(16 * Count, 0x1000040451B5BE8uLL);
      cf = v30;
      v102.location = 0;
      v102.length = 0;
      CTFrameGetLineOrigins(v30, v102, v22);
    }

    else
    {
      Count = 1;
    }
  }

  v83 = _newTextFramesetter;
  v85 = v16[1];
  v86 = *v16;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  CGContextTranslateCTM(CurrentContext, 0.0, v15);
  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  v32 = *(MEMORY[0x277CBF2C0] + 16);
  *&v98.a = *MEMORY[0x277CBF2C0];
  *&v98.c = v32;
  *&v98.tx = *(MEMORY[0x277CBF2C0] + 32);
  CGContextSetTextMatrix(CurrentContext, &v98);
  v33 = Count - 1;
  if (Count < 1)
  {
    v93 = 0;
  }

  else
  {
    v93 = 0;
    v34 = 0;
    p_x = &v22[v33].x;
    v36 = 0x277CCA000uLL;
    v84 = v22;
    v88 = CurrentContext;
    v89 = Count;
    v87 = Count - 1;
    do
    {
      v37 = CFArrayGetValueAtIndex(theArray, v34);
      v38 = v37;
      if (v34 == v33)
      {
        v39 = v36;
        v97 = v37;
        location = CTLineGetStringRange(v37).location;
        VisibleStringRange = CTFrameGetVisibleStringRange(cf);
        if (VisibleStringRange.location + VisibleStringRange.length >= [(NSString *)self->_text length])
        {
          v46 = 0;
        }

        else
        {
          v42 = [(NSString *)self->_text substringFromIndex:location];
          v43 = objc_alloc(MEMORY[0x277CCA898]);
          _textAttributes = [(SKUIProductPageHeaderLabel *)self _textAttributes];
          v45 = [v43 initWithString:v42 attributes:_textAttributes];

          v46 = CTLineCreateWithAttributedString(v45);
          CFRelease(v45);
        }

        v48 = objc_alloc(MEMORY[0x277CCA898]);
        _textAttributes2 = [(SKUIProductPageHeaderLabel *)self _textAttributes];
        v50 = [v48 initWithString:@"…" attributes:_textAttributes2];

        v95 = v50;
        v51 = CTLineCreateWithAttributedString(v50);
        contentRatingImage = self->_contentRatingImage;
        if (contentRatingImage)
        {
          [(UIImage *)contentRatingImage size];
          v54 = v53 + 5.0;
        }

        else
        {
          v54 = 0.0;
        }

        v55 = v90 - v54 - v24;
        if (v46)
        {
          v56 = v46;
        }

        else
        {
          v56 = v97;
        }

        v94 = v51;
        TruncatedLine = CTLineCreateTruncatedLine(v56, v55, kCTLineTruncationEnd, v51);
        v47 = TruncatedLine;
        if (self->_contentRatingImage)
        {
          v106 = CTLineGetBoundsWithOptions(TruncatedLine, 0);
          *&v106.origin.x = *p_x + v106.size.width + 5.0;
          v86 = roundf(*&v106.origin.x);
          v58 = v15 - p_x[1];
          [(UIImage *)self->_contentRatingImage size];
          v60 = v58 - v59 + 0.0;
          v85 = roundf(v60);
        }

        if ([(NSArray *)self->_secondaryContentRatingImages count])
        {
          v61 = self->_contentRatingImage;
          v92 = v46;
          if (v61)
          {
            [(UIImage *)v61 size];
            v63 = v62 + 5.0 + 5.0;
          }

          else
          {
            v63 = 5.0;
          }

          v107 = CTLineGetBoundsWithOptions(v47, 0);
          width = v107.size.width;
          v65 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSArray count](self->_secondaryContentRatingImages, "count")}];
          v66 = v39;
          if ([(NSArray *)self->_secondaryContentRatingImages count])
          {
            v67 = 0;
            do
            {
              v68 = [(NSArray *)self->_secondaryContentRatingImages objectAtIndex:v67];
              v69 = v63 + width + *p_x;
              v70 = roundf(v69);
              v71 = v15 - p_x[1];
              [v68 size];
              v73 = v71 - v72 + -1.0;
              v74 = [*(v66 + 3680) valueWithCGPoint:{v70, roundf(v73)}];
              [v65 addObject:v74];
              [v68 size];
              v63 = v63 + v75 + 5.0;

              ++v67;
            }

            while ([(NSArray *)self->_secondaryContentRatingImages count]> v67);
          }

          v76 = [MEMORY[0x277CBEA60] arrayWithArray:v65];

          v93 = v76;
          v22 = v84;
          v36 = v66;
          v46 = v92;
        }

        CFRelease(v94);
        CFRelease(v95);
        v33 = v87;
        CurrentContext = v88;
        v38 = v97;
        if (v46)
        {
          CFRelease(v46);
        }

        Count = v89;
      }

      else
      {
        v47 = 0;
      }

      CGContextSetTextPosition(CurrentContext, v22[v34].x, v22[v34].y);
      if (v47)
      {
        v77 = v47;
      }

      else
      {
        v77 = v38;
      }

      CTLineDraw(v77, CurrentContext);
      if (v47)
      {
        CFRelease(v47);
      }

      ++v34;
    }

    while (v34 != Count);
  }

  CGContextRestoreGState(CurrentContext);
  v78 = self->_contentRatingImage;
  v79 = v83;
  if (v78)
  {
    [(UIImage *)v78 drawAtPoint:v86, v85];
  }

  if ([(NSArray *)self->_secondaryContentRatingImages count]&& [(NSArray *)self->_secondaryContentRatingImages count])
  {
    v80 = 0;
    do
    {
      v81 = [(NSArray *)self->_secondaryContentRatingImages objectAtIndex:v80];
      v82 = [v93 objectAtIndex:v80];
      [v82 CGPointValue];
      [v81 drawAtPoint:?];

      ++v80;
    }

    while ([(NSArray *)self->_secondaryContentRatingImages count]> v80);
  }

  free(v22);
  CFRelease(cf);
  CFRelease(v79);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  _newTextFramesetter = [(SKUIProductPageHeaderLabel *)self _newTextFramesetter];
  v28.location = 0;
  v28.length = 0;
  v33.width = width;
  v33.height = height;
  v7 = CTFramesetterSuggestFrameSizeWithConstraints(_newTextFramesetter, v28, 0, v33, 0);
  v8 = v7.height;
  Mutable = CGPathCreateMutable();
  v36.origin.x = 0.0;
  v36.origin.y = 0.0;
  v36.size.width = v7.width;
  v36.size.height = v7.height;
  CGPathAddRect(Mutable, 0, v36);
  v29.location = 0;
  v29.length = 0;
  Frame = CTFramesetterCreateFrame(_newTextFramesetter, v29, Mutable, 0);
  CFRelease(Mutable);
  Lines = CTFrameGetLines(Frame);
  Count = CFArrayGetCount(Lines);
  [(SKUIProductPageHeaderLabel *)self secondaryImageWidth];
  v14 = v13;
  [(UIImage *)self->_contentRatingImage size];
  if (Count == 1)
  {
    v16 = v14 + v15 + 5.0;
    if (v16 > 0.0)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Lines, 0);
      BoundsWithOptions = CTLineGetBoundsWithOptions(ValueAtIndex, 0);
      v18 = width - v16;
      if (BoundsWithOptions.size.width <= v18)
      {
        goto LABEL_7;
      }

      CFRelease(Frame);
      v30.location = 0;
      v30.length = 0;
      v34.width = v18;
      v34.height = height;
      v8 = CTFramesetterSuggestFrameSizeWithConstraints(_newTextFramesetter, v30, 0, v34, 0).height;
      v19 = CGPathCreateMutable();
      v38.origin.x = 0.0;
      v38.origin.y = 0.0;
      v38.size.width = v18;
      v38.size.height = height;
      CGPathAddRect(v19, 0, v38);
      v31.location = 0;
      v31.length = 0;
      Frame = CTFramesetterCreateFrame(_newTextFramesetter, v31, v19, 0);
      CFRelease(v19);
      Lines = CTFrameGetLines(Frame);
      Count = CFArrayGetCount(Lines);
    }
  }

  if (Count >= 3)
  {
    v27.x = 0.0;
    v27.y = 0.0;
    v32.location = 1;
    v32.length = 1;
    CTFrameGetLineOrigins(Frame, v32, &v27);
    v20 = CFArrayGetValueAtIndex(Lines, 1);
    v39 = CTLineGetBoundsWithOptions(v20, 0);
    v8 = v8 - v27.y - v39.origin.y;
  }

LABEL_7:
  v21 = v8;
  v22 = roundf(v21);
  v23 = width;
  v24 = roundf(v23);
  CFRelease(Frame);
  CFRelease(_newTextFramesetter);
  v25 = v24;
  v26 = v22;
  result.height = v26;
  result.width = v25;
  return result;
}

- (void)layoutSubviews
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIProductPageHeaderLabel *)v3 layoutSubviews:v4];
      }
    }
  }

  v11.receiver = self;
  v11.super_class = SKUIProductPageHeaderLabel;
  [(SKUIProductPageHeaderLabel *)&v11 layoutSubviews];
  [(SKUIProductPageHeaderLabel *)self setNeedsDisplay];
}

- (__CTFramesetter)_newTextFramesetter
{
  v3 = objc_alloc(MEMORY[0x277CCA898]);
  text = self->_text;
  _textAttributes = [(SKUIProductPageHeaderLabel *)self _textAttributes];
  v6 = [v3 initWithString:text attributes:_textAttributes];

  v7 = CTFramesetterCreateWithAttributedString(v6);
  CFRelease(v6);
  return v7;
}

- (id)_textAttributes
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = *MEMORY[0x277D740A8];
  v3 = 17.0;
  if (self->_isPad)
  {
    v3 = 22.0;
  }

  v4 = [MEMORY[0x277D74300] systemFontOfSize:v3];
  v10[0] = v4;
  v9[1] = *MEMORY[0x277D740C0];
  textColor = self->_textColor;
  blackColor = textColor;
  if (!textColor)
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
  }

  v10[1] = blackColor;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  if (!textColor)
  {
  }

  return v7;
}

@end