@interface EQKitStringBox
- (BOOL)appendOpticalAlignToSpec:(void *)spec offset:(CGPoint)offset;
- (BOOL)isEqual:(id)equal;
- (CGRect)erasableBounds;
- (EQKitStringBox)initWithAttributedString:(id)string cgColor:(CGColor *)color;
- (__CTLine)line;
- (double)depth;
- (double)height;
- (double)positionOfCharacterAtIndex:(unint64_t)index;
- (double)width;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)p_cacheDimensions;
- (void)renderIntoContext:(CGContext *)context offset:(CGPoint)offset;
@end

@implementation EQKitStringBox

- (EQKitStringBox)initWithAttributedString:(id)string cgColor:(CGColor *)color
{
  v12.receiver = self;
  v12.super_class = EQKitStringBox;
  v9 = [(EQKitStringBox *)&v12 init];
  if (v9)
  {
    v9->mAttributedString = objc_msgSend_copy(string, v6, v7, v8);
    if (color)
    {
      v10 = CFRetain(color);
    }

    else
    {
      v10 = 0;
    }

    v9->mCGColor = v10;
  }

  return v9;
}

- (void)dealloc
{
  mLine = self->mLine;
  if (mLine)
  {
    CFRelease(mLine);
  }

  CGColorRelease(self->mCGColor);
  v4.receiver = self;
  v4.super_class = EQKitStringBox;
  [(EQKitStringBox *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  v13 = objc_msgSend_attributedString(self, v9, v10, v11);
  mCGColor = self->mCGColor;

  return objc_msgSend_initWithAttributedString_cgColor_(v8, v12, v13, mCGColor);
}

- (BOOL)isEqual:(id)equal
{
  selfCopy = self;
  v4 = self == equal;
  LOBYTE(self) = self == equal;
  if (equal)
  {
    if (!v4)
    {
      v6 = objc_opt_class();
      LODWORD(self) = objc_msgSend_isMemberOfClass_(equal, v7, v6, v8);
      if (self)
      {
        v12 = objc_msgSend_attributedString(selfCopy, v9, v10, v11);
        self = objc_msgSend_attributedString(equal, v13, v14, v15);
        if (v12 == self || (v19 = self, LOBYTE(self) = 0, v12) && v19 && (LODWORD(self) = objc_msgSend_isEqualToAttributedString_(v12, v16, v19, v18), self))
        {
          v20 = objc_msgSend_color(selfCopy, v16, v17, v18);
          v24 = objc_msgSend_color(equal, v21, v22, v23);

          LOBYTE(self) = CGColorEqualToColor(v20, v24);
        }
      }
    }
  }

  return self;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = EQKitStringBox;
  return [(EQKitBox *)&v3 hash];
}

- (double)height
{
  if (!self->mDimensionsValid)
  {
    objc_msgSend_p_cacheDimensions(self, a2, v2, v3);
    self->mDimensionsValid = 1;
  }

  return self->mHeight;
}

- (double)depth
{
  if (!self->mDimensionsValid)
  {
    objc_msgSend_p_cacheDimensions(self, a2, v2, v3);
    self->mDimensionsValid = 1;
  }

  return self->mDepth;
}

- (double)width
{
  if (!self->mDimensionsValid)
  {
    objc_msgSend_p_cacheDimensions(self, a2, v2, v3);
    self->mDimensionsValid = 1;
  }

  return self->mWidth;
}

- (CGRect)erasableBounds
{
  if (!self->mDimensionsValid)
  {
    objc_msgSend_p_cacheDimensions(self, a2, v2, v3);
    self->mDimensionsValid = 1;
  }

  x = self->mErasableBounds.origin.x;
  y = self->mErasableBounds.origin.y;
  width = self->mErasableBounds.size.width;
  height = self->mErasableBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (__CTLine)line
{
  result = self->mLine;
  if (!result)
  {
    result = objc_msgSend_attributedString(self, a2, v2, v3);
    if (result)
    {
      result = CTLineCreateWithAttributedString(result);
    }

    self->mLine = result;
  }

  return result;
}

- (void)renderIntoContext:(CGContext *)context offset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  v17.receiver = self;
  v17.super_class = EQKitStringBox;
  [EQKitBox renderIntoContext:sel_renderIntoContext_offset_ offset:?];
  if (context)
  {
    v11 = objc_msgSend_line(self, v8, v9, v10);
    if (v11)
    {
      v12 = v11;
      if (self->mCGColor)
      {
        CGContextSaveGState(context);
        CGContextSetFillColorWithColor(context, self->mCGColor);
      }

      memset(&v16, 0, sizeof(v16));
      CGContextGetTextMatrix(&v16, context);
      memset(&v15, 0, sizeof(v15));
      v13 = *(MEMORY[0x277CBF2C0] + 16);
      *&v14.a = *MEMORY[0x277CBF2C0];
      *&v14.c = v13;
      *&v14.tx = *(MEMORY[0x277CBF2C0] + 32);
      CGAffineTransformScale(&v15, &v14, 1.0, -1.0);
      v14 = v15;
      CGContextSetTextMatrix(context, &v14);
      CGContextSetTextPosition(context, x, y);
      CTLineDraw(v12, context);
      v14 = v16;
      CGContextSetTextMatrix(context, &v14);
      if (self->mCGColor)
      {
        CGContextRestoreGState(context);
      }
    }
  }
}

- (double)positionOfCharacterAtIndex:(unint64_t)index
{
  v6 = objc_msgSend_line(self, a2, index, v3);
  if (!v6)
  {
    return 0.0;
  }

  v10 = v6;
  v11 = objc_msgSend_attributedString(self, v7, v8, v9);
  if (objc_msgSend_length(v11, v12, v13, v14) < index)
  {
    return 0.0;
  }

  return CTLineGetOffsetForStringIndex(v10, index, 0);
}

- (BOOL)appendOpticalAlignToSpec:(void *)spec offset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  GlyphRuns = objc_msgSend_line(self, a2, spec, v4);
  if (GlyphRuns)
  {
    GlyphRuns = CTLineGetGlyphRuns(GlyphRuns);
    v9 = GlyphRuns;
    if (GlyphRuns)
    {
      GlyphRuns = CFArrayGetCount(GlyphRuns);
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = *(spec + 6);
  if (v10 != 2)
  {
    if (!v10 && GlyphRuns >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v9, 0);
      if (ValueAtIndex)
      {
        v12 = ValueAtIndex;
        if (CTRunGetGlyphCount(ValueAtIndex) >= 1)
        {
          buffer = 0;
          v30.location = 0;
          v30.length = 1;
          CTRunGetGlyphs(v12, v30, &buffer);
          Attributes = CTRunGetAttributes(v12);
          v14 = Attributes != 0;
          if (Attributes)
          {
            Value = CFDictionaryGetValue(Attributes, *MEMORY[0x277CC4838]);
            v31.location = 0;
            v31.length = 1;
            CTRunGetPositions(v12, v31, &v28);
            v16 = x + v28.x;
            v17 = y + v28.y;
            v18 = buffer;
            specCopy2 = spec;
            v20 = Value;
LABEL_17:
            sub_275CD8418(specCopy2, v20, v18, v16, v17);
            return v14;
          }

          return v14;
        }
      }
    }

    return 0;
  }

  if (GlyphRuns < 1)
  {
    return 0;
  }

  v21 = CFArrayGetValueAtIndex(v9, GlyphRuns - 1);
  if (!v21)
  {
    return 0;
  }

  v22 = v21;
  GlyphCount = CTRunGetGlyphCount(v21);
  v24 = GlyphCount - 1;
  if (GlyphCount < 1)
  {
    return 0;
  }

  buffer = 0;
  v32.location = GlyphCount - 1;
  v32.length = 1;
  CTRunGetGlyphs(v22, v32, &buffer);
  v25 = CTRunGetAttributes(v22);
  v14 = v25 != 0;
  if (v25)
  {
    v26 = CFDictionaryGetValue(v25, *MEMORY[0x277CC4838]);
    v33.location = v24;
    v33.length = 1;
    CTRunGetPositions(v22, v33, &v28);
    v16 = x + v28.x;
    v17 = y + v28.y;
    v18 = buffer;
    specCopy2 = spec;
    v20 = v26;
    goto LABEL_17;
  }

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  objc_msgSend_height(self, v5, v6, v7);
  v9 = v8;
  objc_msgSend_depth(self, v10, v11, v12);
  v14 = v13;
  objc_msgSend_width(self, v15, v16, v17);
  v19 = v18;
  v23 = objc_msgSend_attributedString(self, v20, v21, v22);
  return objc_msgSend_stringWithFormat_(v3, v24, @"<%@ %p>: height=%f depth=%f width=%f attributedString=%@", v25, v4, self, v9, v14, v19, v23);
}

- (void)p_cacheDimensions
{
  self->mHeight = 0.0;
  self->mDepth = 0.0;
  self->mWidth = 0.0;
  p_mErasableBounds = &self->mErasableBounds;
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  self->mErasableBounds.origin = *MEMORY[0x277CBF3A0];
  self->mErasableBounds.size = v6;
  v7 = objc_msgSend_line(self, a2, v2, v3);
  if (v7)
  {
    v8 = v7;
    v9 = sub_275C95064();
    ImageBounds = CTLineGetImageBounds(v8, v9);
    x = ImageBounds.origin.x;
    y = ImageBounds.origin.y;
    width = ImageBounds.size.width;
    height = ImageBounds.size.height;
    MaxY = CGRectGetMaxY(ImageBounds);
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    MinY = CGRectGetMinY(v22);
    TypographicBounds = CTLineGetTypographicBounds(v8, 0, 0, 0);
    if (TypographicBounds > 0.0)
    {
      self->mHeight = MaxY;
      self->mDepth = -MinY;
      self->mWidth = TypographicBounds;
      v23.origin.x = x;
      v23.origin.y = y;
      v23.size.width = width;
      v23.size.height = height;
      MinX = CGRectGetMinX(v23);
      v24.origin.x = x;
      v24.origin.y = y;
      v24.size.width = width;
      v24.size.height = height;
      v18 = -CGRectGetMaxY(v24);
      v25.origin.x = x;
      v25.origin.y = y;
      v25.size.width = width;
      v25.size.height = height;
      v19 = CGRectGetWidth(v25);
      v26.origin.x = x;
      v26.origin.y = y;
      v26.size.width = width;
      v26.size.height = height;
      v20 = CGRectGetHeight(v26);
      p_mErasableBounds->origin.x = MinX;
      p_mErasableBounds->origin.y = v18;
      p_mErasableBounds->size.width = v19;
      p_mErasableBounds->size.height = v20;
    }
  }
}

@end