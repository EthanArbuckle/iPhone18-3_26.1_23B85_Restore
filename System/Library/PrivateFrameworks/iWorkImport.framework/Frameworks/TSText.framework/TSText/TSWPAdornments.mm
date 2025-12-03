@interface TSWPAdornments
- ($82EDB067EE6F192B39F18594CC8676AD)attachmentPositions;
- (CGPoint)flippedPositions;
- (CGPoint)positions;
- (CGPoint)textPosition;
- (CGRect)rects;
- (TSWPAdornments)initWithType:(int)type color:(CGColor *)color font:(__CTFont *)font flippedFont:(__CTFont *)flippedFont;
- (id).cxx_construct;
- (unint64_t)charIndexes;
- (unsigned)flippedGlyphs;
- (unsigned)glyphs;
- (void)addAdornmentWithAttachmentPosition:(id)position;
- (void)addAdornmentWithCharIndex:(unint64_t)index point:(CGPoint)point glyph:(unsigned __int16)glyph rect:(CGRect)rect;
- (void)addAdornmentWithPoint:(CGPoint)point glyph:(unsigned __int16)glyph flipped:(BOOL)flipped;
- (void)incrementCharIndexes:(int64_t)indexes startingAt:(unint64_t)at;
- (void)removeAdornmentAt:(unint64_t)at;
- (void)setAscent:(double)ascent descent:(double)descent advance:(double)advance;
@end

@implementation TSWPAdornments

- (TSWPAdornments)initWithType:(int)type color:(CGColor *)color font:(__CTFont *)font flippedFont:(__CTFont *)flippedFont
{
  v16.receiver = self;
  v16.super_class = TSWPAdornments;
  v10 = [(TSWPAdornments *)&v16 init];
  v12 = v10;
  if (v10)
  {
    v10->_type = type;
    objc_msgSend_setColor_(v10, v11, color);
    objc_msgSend_setFont_(v12, v13, font);
    objc_msgSend_setFlippedFont_(v12, v14, flippedFont);
    v12->_location = 1;
    v12->_verticalAdjustment = 0.0;
    v12->_descent = 0.0;
    v12->_advance = 0.0;
    v12->_ascent = 0.0;
    v12->_textPosition = *MEMORY[0x277CBF348];
    v12->_shouldRotate = 0;
  }

  return v12;
}

- (unint64_t)charIndexes
{
  if (self->_charIndexes.__end_ == self->_charIndexes.__begin_)
  {
    return 0;
  }

  else
  {
    return self->_charIndexes.__begin_;
  }
}

- (unsigned)glyphs
{
  if (self->_glyphs.__end_ == self->_glyphs.__begin_)
  {
    return 0;
  }

  else
  {
    return self->_glyphs.__begin_;
  }
}

- (CGPoint)positions
{
  if (self->_positions.__end_ == self->_positions.__begin_)
  {
    return 0;
  }

  else
  {
    return self->_positions.__begin_;
  }
}

- (unsigned)flippedGlyphs
{
  if (self->_flippedGlyphs.__end_ == self->_flippedGlyphs.__begin_)
  {
    return 0;
  }

  else
  {
    return self->_flippedGlyphs.__begin_;
  }
}

- (CGPoint)flippedPositions
{
  if (self->_flippedPositions.__end_ == self->_flippedPositions.__begin_)
  {
    return 0;
  }

  else
  {
    return self->_flippedPositions.__begin_;
  }
}

- (CGRect)rects
{
  if (self->_rects.__end_ == self->_rects.__begin_)
  {
    return 0;
  }

  else
  {
    return self->_rects.__begin_;
  }
}

- ($82EDB067EE6F192B39F18594CC8676AD)attachmentPositions
{
  if (self->_attachmentPositions.__end_ == self->_attachmentPositions.__begin_)
  {
    return 0;
  }

  else
  {
    return self->_attachmentPositions.__begin_;
  }
}

- (void)setAscent:(double)ascent descent:(double)descent advance:(double)advance
{
  self->_ascent = ascent;
  self->_descent = descent;
  self->_advance = advance;
}

- (void)addAdornmentWithPoint:(CGPoint)point glyph:(unsigned __int16)glyph flipped:(BOOL)flipped
{
  flippedCopy = flipped;
  y = point.y;
  x = point.x;
  pointCopy = point;
  glyphs = glyph;
  if ((self->_type - 1) >= 2)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPAdornments addAdornmentWithPoint:glyph:flipped:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAdornments.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 119, 0, "bad adornments type (expected kAdornmentsTypeInvisibles or kAdornmentsTypeInvisiblesBreak");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  if (flippedCopy)
  {
    CTFontGetAdvancesForGlyphs(self->_flippedFont, kCTFontOrientationDefault, &glyphs, &advances, 1);
    *&v17 = x - advances.width;
    *(&v17 + 1) = y;
    sub_276D20ABC(&self->_flippedPositions, &v17);
    p_flippedGlyphs = &self->_flippedGlyphs;
  }

  else
  {
    sub_276D20ABC(&self->_positions, &pointCopy);
    p_flippedGlyphs = &self->_glyphs;
  }

  sub_276DF6CA4(&p_flippedGlyphs->__begin_, &glyphs);
}

- (void)addAdornmentWithCharIndex:(unint64_t)index point:(CGPoint)point glyph:(unsigned __int16)glyph rect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  pointCopy = point;
  glyphCopy = glyph;
  if ((self->_type | 2) != 6)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPAdornments addAdornmentWithCharIndex:point:glyph:rect:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAdornments.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 138, 0, "bad adornments type (expected kAdornmentsTypeEmphasisMarks or kAdornmentTypeHiddenDeletions");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  end = self->_charIndexes.__end_;
  cap = self->_charIndexes.__cap_;
  if (end >= cap)
  {
    begin = self->_charIndexes.__begin_;
    v23 = end - begin;
    v24 = end - begin;
    v25 = v24 + 1;
    if ((v24 + 1) >> 61)
    {
      sub_276D34ED8();
    }

    v26 = cap - begin;
    if (v26 >> 2 > v25)
    {
      v25 = v26 >> 2;
    }

    v27 = v26 >= 0x7FFFFFFFFFFFFFF8;
    v28 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v27)
    {
      v28 = v25;
    }

    if (v28)
    {
      sub_276D34EF0(&self->_charIndexes, v28);
    }

    v29 = end - begin;
    v30 = (8 * v24);
    v31 = (8 * v24 - 8 * v29);
    *v30 = index;
    v21 = v30 + 1;
    memcpy(v31, begin, v23);
    v32 = self->_charIndexes.__begin_;
    self->_charIndexes.__begin_ = v31;
    self->_charIndexes.__end_ = v21;
    self->_charIndexes.__cap_ = 0;
    if (v32)
    {
      operator delete(v32);
    }
  }

  else
  {
    *end = index;
    v21 = end + 1;
  }

  self->_charIndexes.__end_ = v21;
  sub_276D20ABC(&self->_positions, &pointCopy);
  sub_276DF6CA4(&self->_glyphs.__begin_, &glyphCopy);
  v33 = self->_rects.__end_;
  v34 = self->_rects.__cap_;
  if (v33 >= v34)
  {
    v36 = self->_rects.__begin_;
    v37 = v33 - v36;
    v38 = v33 - v36;
    v39 = v38 + 1;
    if ((v38 + 1) >> 59)
    {
      sub_276D34ED8();
    }

    v40 = v34 - v36;
    if (v40 >> 4 > v39)
    {
      v39 = v40 >> 4;
    }

    if (v40 >= 0x7FFFFFFFFFFFFFE0)
    {
      v39 = 0x7FFFFFFFFFFFFFFLL;
    }

    if (v39)
    {
      sub_276D5F3FC(&self->_rects, v39);
    }

    v41 = (32 * v38);
    *v41 = x;
    v41[1] = y;
    v41[2] = width;
    v41[3] = height;
    v35 = (32 * v38 + 32);
    memcpy(0, v36, v37);
    v42 = self->_rects.__begin_;
    self->_rects.__begin_ = 0;
    self->_rects.__end_ = v35;
    self->_rects.__cap_ = 0;
    if (v42)
    {
      operator delete(v42);
    }
  }

  else
  {
    v33->origin.x = x;
    v33->origin.y = y;
    v35 = v33 + 1;
    v33->size.width = width;
    v33->size.height = height;
  }

  self->_rects.__end_ = v35;
}

- (void)addAdornmentWithAttachmentPosition:(id)position
{
  var1 = position.var1;
  var0 = position.var0;
  if (self->_type != 3)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPAdornments addAdornmentWithAttachmentPosition:]");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPAdornments.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 150, 0, "bad adornments type (expected kAdornmentsTypeAttachments");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  end = self->_attachmentPositions.__end_;
  cap = self->_attachmentPositions.__cap_;
  if (end >= cap)
  {
    begin = self->_attachmentPositions.__begin_;
    v17 = end - begin;
    v18 = (end - begin) >> 4;
    v19 = v18 + 1;
    if ((v18 + 1) >> 60)
    {
      sub_276D34ED8();
    }

    v20 = cap - begin;
    if (v20 >> 3 > v19)
    {
      v19 = v20 >> 3;
    }

    v21 = v20 >= 0x7FFFFFFFFFFFFFF0;
    v22 = 0xFFFFFFFFFFFFFFFLL;
    if (!v21)
    {
      v22 = v19;
    }

    if (v22)
    {
      sub_276D34F6C(&self->_attachmentPositions, v22);
    }

    v23 = (16 * v18);
    *v23 = var0;
    v23[1] = var1;
    v15 = (16 * v18 + 16);
    memcpy(0, begin, v17);
    v24 = self->_attachmentPositions.__begin_;
    self->_attachmentPositions.__begin_ = 0;
    self->_attachmentPositions.__end_ = v15;
    self->_attachmentPositions.__cap_ = 0;
    if (v24)
    {
      operator delete(v24);
    }
  }

  else
  {
    *end = var0;
    *(end + 1) = var1;
    v15 = (end + 16);
  }

  self->_attachmentPositions.__end_ = v15;
}

- (void)removeAdornmentAt:(unint64_t)at
{
  begin = self->_charIndexes.__begin_;
  end = self->_charIndexes.__end_;
  if (at < end - begin)
  {
    v7 = &begin[at];
    v8 = (end - (v7 + 1));
    if (end != v7 + 1)
    {
      memmove(&begin[at], v7 + 1, end - (v7 + 1));
    }

    self->_charIndexes.__end_ = &v8[v7];
  }

  v10 = self->_glyphs.__begin_;
  v9 = self->_glyphs.__end_;
  if (at < v9 - v10)
  {
    v11 = &v10[at];
    v12 = (v9 - (v11 + 1));
    if (v9 != v11 + 1)
    {
      memmove(&v10[at], v11 + 1, v9 - (v11 + 1));
    }

    self->_glyphs.__end_ = &v12[v11];
  }

  v14 = self->_rects.__begin_;
  v13 = self->_rects.__end_;
  if (at < v13 - v14)
  {
    v15 = &v14[at];
    v16 = (v13 - &v15[1]);
    if (v13 != &v15[1])
    {
      memmove(&v14[at], &v15[1], v13 - &v15[1]);
    }

    self->_rects.__end_ = &v16[v15];
  }

  v18 = self->_positions.__begin_;
  v17 = self->_positions.__end_;
  if (at < v17 - v18)
  {
    v19 = &v18[at];
    v20 = (v17 - &v19[1]);
    if (v17 != &v19[1])
    {
      memmove(v19, &v19[1], v17 - &v19[1]);
    }

    self->_positions.__end_ = &v20[v19];
  }
}

- (void)incrementCharIndexes:(int64_t)indexes startingAt:(unint64_t)at
{
  begin = self->_charIndexes.__begin_;
  end = self->_charIndexes.__end_;
  while (begin != end)
  {
    if (*begin >= at)
    {
      *begin += indexes;
    }

    ++begin;
  }

  v6 = self->_attachmentPositions.__begin_;
  v7 = self->_attachmentPositions.__end_;
  while (v6 != v7)
  {
    if (*v6 >= at)
    {
      *v6 += indexes;
    }

    v6 = (v6 + 16);
  }
}

- (CGPoint)textPosition
{
  x = self->_textPosition.x;
  y = self->_textPosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (id).cxx_construct
{
  *(self + 21) = 0;
  *(self + 152) = 0u;
  *(self + 136) = 0u;
  *(self + 120) = 0u;
  *(self + 104) = 0u;
  *(self + 88) = 0u;
  *(self + 72) = 0u;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end