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
- (void)dealloc;
- (void)p_cacheDimensions;
- (void)renderIntoContext:(CGContext *)context offset:(CGPoint)offset;
@end

@implementation EQKitStringBox

- (EQKitStringBox)initWithAttributedString:(id)string cgColor:(CGColor *)color
{
  v9.receiver = self;
  v9.super_class = EQKitStringBox;
  v6 = [(EQKitStringBox *)&v9 init];
  if (v6)
  {
    v6->mAttributedString = [string copy];
    if (color)
    {
      v7 = CFRetain(color);
    }

    else
    {
      v7 = 0;
    }

    v6->mCGColor = v7;
  }

  return v6;
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
  v4 = [objc_opt_class() allocWithZone:zone];
  attributedString = [(EQKitStringBox *)self attributedString];
  mCGColor = self->mCGColor;

  return [v4 initWithAttributedString:attributedString cgColor:mCGColor];
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
      LODWORD(self) = [equal isMemberOfClass:objc_opt_class()];
      if (self)
      {
        attributedString = [(EQKitStringBox *)selfCopy attributedString];
        self = [equal attributedString];
        if (attributedString == self || (v7 = self, LOBYTE(self) = 0, attributedString) && v7 && (LODWORD(self) = [(EQKitStringBox *)attributedString isEqualToAttributedString:?], self))
        {
          color = [(EQKitStringBox *)selfCopy color];
          color2 = [equal color];

          LOBYTE(self) = CGColorEqualToColor(color, color2);
        }
      }
    }
  }

  return self;
}

- (double)height
{
  if (!self->mDimensionsValid)
  {
    [(EQKitStringBox *)self p_cacheDimensions];
    self->mDimensionsValid = 1;
  }

  return self->mHeight;
}

- (double)depth
{
  if (!self->mDimensionsValid)
  {
    [(EQKitStringBox *)self p_cacheDimensions];
    self->mDimensionsValid = 1;
  }

  return self->mDepth;
}

- (double)width
{
  if (!self->mDimensionsValid)
  {
    [(EQKitStringBox *)self p_cacheDimensions];
    self->mDimensionsValid = 1;
  }

  return self->mWidth;
}

- (CGRect)erasableBounds
{
  if (!self->mDimensionsValid)
  {
    [(EQKitStringBox *)self p_cacheDimensions];
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
    result = [(EQKitStringBox *)self attributedString];
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
  v13.receiver = self;
  v13.super_class = EQKitStringBox;
  [EQKitBox renderIntoContext:sel_renderIntoContext_offset_ offset:?];
  if (context)
  {
    line = [(EQKitStringBox *)self line];
    if (line)
    {
      v9 = line;
      if (self->mCGColor)
      {
        CGContextSaveGState(context);
        CGContextSetFillColorWithColor(context, self->mCGColor);
      }

      memset(&v12, 0, sizeof(v12));
      v10 = *(MEMORY[0x277CBF2C0] + 16);
      *&v11.a = *MEMORY[0x277CBF2C0];
      *&v11.c = v10;
      *&v11.tx = *(MEMORY[0x277CBF2C0] + 32);
      CGAffineTransformScale(&v12, &v11, 1.0, -1.0);
      v11 = v12;
      CGContextSetTextMatrix(context, &v11);
      CGContextSetTextPosition(context, x, y);
      CTLineDraw(v9, context);
      if (self->mCGColor)
      {
        CGContextRestoreGState(context);
      }
    }
  }
}

- (double)positionOfCharacterAtIndex:(unint64_t)index
{
  line = [(EQKitStringBox *)self line];
  if (!line)
  {
    return 0.0;
  }

  v6 = line;
  if ([(NSAttributedString *)[(EQKitStringBox *)self attributedString] length]< index)
  {
    return 0.0;
  }

  return CTLineGetOffsetForStringIndex(v6, index, 0);
}

- (BOOL)appendOpticalAlignToSpec:(void *)spec offset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  GlyphRuns = [(EQKitStringBox *)self line];
  if (GlyphRuns)
  {
    GlyphRuns = CTLineGetGlyphRuns(GlyphRuns);
    v8 = GlyphRuns;
    if (GlyphRuns)
    {
      GlyphRuns = CFArrayGetCount(GlyphRuns);
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *(spec + 6);
  if (v9 != 2)
  {
    if (!v9 && GlyphRuns >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v8, 0);
      if (ValueAtIndex)
      {
        v11 = ValueAtIndex;
        if (CTRunGetGlyphCount(ValueAtIndex) >= 1)
        {
          buffer = 0;
          v29.location = 0;
          v29.length = 1;
          CTRunGetGlyphs(v11, v29, &buffer);
          Attributes = CTRunGetAttributes(v11);
          v13 = Attributes != 0;
          if (Attributes)
          {
            Value = CFDictionaryGetValue(Attributes, *MEMORY[0x277CC4838]);
            v30.location = 0;
            v30.length = 1;
            CTRunGetPositions(v11, v30, &v27);
            v15 = x + v27.x;
            v16 = y + v27.y;
            v17 = buffer;
            specCopy2 = spec;
            v19 = Value;
LABEL_17:
            EQKit::OpticalKern::Spec::appendEntry(specCopy2, *&v15, v19, v17);
            return v13;
          }

          return v13;
        }
      }
    }

    return 0;
  }

  if (GlyphRuns < 1)
  {
    return 0;
  }

  v20 = CFArrayGetValueAtIndex(v8, GlyphRuns - 1);
  if (!v20)
  {
    return 0;
  }

  v21 = v20;
  GlyphCount = CTRunGetGlyphCount(v20);
  v23 = GlyphCount - 1;
  if (GlyphCount < 1)
  {
    return 0;
  }

  buffer = 0;
  v31.location = GlyphCount - 1;
  v31.length = 1;
  CTRunGetGlyphs(v21, v31, &buffer);
  v24 = CTRunGetAttributes(v21);
  v13 = v24 != 0;
  if (v24)
  {
    v25 = CFDictionaryGetValue(v24, *MEMORY[0x277CC4838]);
    v32.location = v23;
    v32.length = 1;
    CTRunGetPositions(v21, v32, &v27);
    v15 = x + v27.x;
    v16 = y + v27.y;
    v17 = buffer;
    specCopy2 = spec;
    v19 = v25;
    goto LABEL_17;
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  [(EQKitStringBox *)self height];
  v6 = v5;
  [(EQKitStringBox *)self depth];
  v8 = v7;
  [(EQKitStringBox *)self width];
  return [v3 stringWithFormat:@"<%@ %p>: height=%f depth=%f width=%f attributedString=%@", v4, self, v6, v8, v9, -[EQKitStringBox attributedString](self, "attributedString")];
}

- (void)p_cacheDimensions
{
  self->mHeight = 0.0;
  self->mDepth = 0.0;
  self->mWidth = 0.0;
  p_mErasableBounds = &self->mErasableBounds;
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  self->mErasableBounds.origin = *MEMORY[0x277CBF3A0];
  self->mErasableBounds.size = v4;
  line = [(EQKitStringBox *)self line];
  if (line)
  {
    v6 = line;
    FakeContext = EQKitUtilGetFakeContext();
    ImageBounds = CTLineGetImageBounds(v6, FakeContext);
    x = ImageBounds.origin.x;
    y = ImageBounds.origin.y;
    width = ImageBounds.size.width;
    height = ImageBounds.size.height;
    MaxY = CGRectGetMaxY(ImageBounds);
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    MinY = CGRectGetMinY(v20);
    TypographicBounds = CTLineGetTypographicBounds(v6, 0, 0, 0);
    if (TypographicBounds > 0.0)
    {
      self->mHeight = MaxY;
      self->mDepth = -MinY;
      self->mWidth = TypographicBounds;
      v21.origin.x = x;
      v21.origin.y = y;
      v21.size.width = width;
      v21.size.height = height;
      MinX = CGRectGetMinX(v21);
      v22.origin.x = x;
      v22.origin.y = y;
      v22.size.width = width;
      v22.size.height = height;
      v16 = -CGRectGetMaxY(v22);
      v23.origin.x = x;
      v23.origin.y = y;
      v23.size.width = width;
      v23.size.height = height;
      v17 = CGRectGetWidth(v23);
      v24.origin.x = x;
      v24.origin.y = y;
      v24.size.width = width;
      v24.size.height = height;
      v18 = CGRectGetHeight(v24);
      p_mErasableBounds->origin.x = MinX;
      p_mErasableBounds->origin.y = v16;
      p_mErasableBounds->size.width = v17;
      p_mErasableBounds->size.height = v18;
    }
  }
}

@end