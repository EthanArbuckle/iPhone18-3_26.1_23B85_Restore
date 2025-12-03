@interface TIKeyboardSecureCandidateTextTraits
+ (id)traitsWithFontName:(id)name maxFontSize:(double)size minFontSize:(double)fontSize textColor:(id)color yCoordinate:(double)coordinate baselineOffset:(double)offset;
- (BOOL)isEqual:(id)equal;
- (TIKeyboardSecureCandidateTextTraits)initWithCoder:(id)coder;
- (TIKeyboardSecureCandidateTextTraits)initWithFontName:(id)name maxFontSize:(double)size minFontSize:(double)fontSize textColor:(id)color yCoordinate:(double)coordinate baselineOffset:(double)offset;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TIKeyboardSecureCandidateTextTraits

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    v6 = MEMORY[0x1E696AEC0];
    fontName = [(TIKeyboardSecureCandidateTextTraits *)self fontName];
    fontName2 = [v5 fontName];
    LODWORD(v6) = [v6 _string:fontName matchesString:fontName2];

    if (!v6)
    {
      goto LABEL_12;
    }

    [(TIKeyboardSecureCandidateTextTraits *)self maxFontSize];
    v10 = v9;
    [v5 maxFontSize];
    if (v10 != v11)
    {
      goto LABEL_12;
    }

    [(TIKeyboardSecureCandidateTextTraits *)self minFontSize];
    v13 = v12;
    [v5 minFontSize];
    if (v13 != v14)
    {
      goto LABEL_12;
    }

    textColor = [(TIKeyboardSecureCandidateTextTraits *)self textColor];
    textColor2 = [v5 textColor];
    v17 = textColor2;
    if (textColor == textColor2)
    {
    }

    else
    {
      textColor3 = [(TIKeyboardSecureCandidateTextTraits *)self textColor];
      textColor4 = [v5 textColor];
      v20 = [textColor3 isEqual:textColor4];

      if (!v20)
      {
        goto LABEL_12;
      }
    }

    [(TIKeyboardSecureCandidateTextTraits *)self yCoordinate];
    v23 = v22;
    [v5 yCoordinate];
    if (v23 == v24)
    {
      [(TIKeyboardSecureCandidateTextTraits *)self baselineOffset];
      v26 = v25;
      [v5 baselineOffset];
      v21 = v26 == v27;
LABEL_13:

      goto LABEL_14;
    }

LABEL_12:
    v21 = 0;
    goto LABEL_13;
  }

  v21 = 0;
LABEL_14:

  return v21;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@: %p", objc_opt_class(), self];
  fontName = [(TIKeyboardSecureCandidateTextTraits *)self fontName];
  [(TIKeyboardSecureCandidateTextTraits *)self maxFontSize];
  v6 = v5;
  [(TIKeyboardSecureCandidateTextTraits *)self minFontSize];
  v8 = v7;
  textColor = [(TIKeyboardSecureCandidateTextTraits *)self textColor];
  [(TIKeyboardSecureCandidateTextTraits *)self yCoordinate];
  v11 = v10;
  [(TIKeyboardSecureCandidateTextTraits *)self baselineOffset];
  [v3 appendFormat:@"; fontName = %@, maxFontSize = %f, minFontSize = %f, textColor = %@, yCoordinate = %f, baselineOffset = %f", fontName, v6, v8, textColor, v11, v12];

  [v3 appendString:@">"];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  fontName = self->_fontName;
  v9 = coderCopy;
  if (fontName)
  {
    [coderCopy encodeObject:fontName forKey:@"fontName"];
    coderCopy = v9;
  }

  maxFontSize = self->_maxFontSize;
  if (maxFontSize != 0.0)
  {
    *&maxFontSize = maxFontSize;
    [v9 encodeFloat:@"maxFontSize" forKey:maxFontSize];
    coderCopy = v9;
  }

  minFontSize = self->_minFontSize;
  if (minFontSize != 0.0)
  {
    *&minFontSize = minFontSize;
    [v9 encodeFloat:@"minFontSize" forKey:minFontSize];
    coderCopy = v9;
  }

  textColor = self->_textColor;
  if (textColor)
  {
    [v9 encodeObject:textColor forKey:@"textColor"];
    coderCopy = v9;
  }

  [coderCopy encodeDouble:@"yCoordinate" forKey:self->_yCoordinate];
  [v9 encodeDouble:@"baselineOffset" forKey:self->_baselineOffset];
}

- (TIKeyboardSecureCandidateTextTraits)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(TIKeyboardSecureCandidateTextTraits *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fontName"];
    v7 = [v6 copy];
    fontName = v5->_fontName;
    v5->_fontName = v7;

    [coderCopy decodeFloatForKey:@"maxFontSize"];
    v5->_maxFontSize = v9;
    [coderCopy decodeFloatForKey:@"minFontSize"];
    v5->_minFontSize = v10;
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"textColor"];
    textColor = v5->_textColor;
    v5->_textColor = v11;

    [coderCopy decodeDoubleForKey:@"yCoordinate"];
    v5->_yCoordinate = v13;
    [coderCopy decodeDoubleForKey:@"baselineOffset"];
    v5->_baselineOffset = v14;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(TIKeyboardSecureCandidateTextTraits);
  if (v4)
  {
    v5 = [(NSString *)self->_fontName copy];
    fontName = v4->_fontName;
    v4->_fontName = v5;

    v4->_maxFontSize = self->_maxFontSize;
    v4->_minFontSize = self->_minFontSize;
    objc_storeStrong(&v4->_textColor, self->_textColor);
    v4->_yCoordinate = self->_yCoordinate;
    v4->_baselineOffset = self->_baselineOffset;
  }

  return v4;
}

- (TIKeyboardSecureCandidateTextTraits)initWithFontName:(id)name maxFontSize:(double)size minFontSize:(double)fontSize textColor:(id)color yCoordinate:(double)coordinate baselineOffset:(double)offset
{
  nameCopy = name;
  colorCopy = color;
  v20.receiver = self;
  v20.super_class = TIKeyboardSecureCandidateTextTraits;
  v16 = [(TIKeyboardSecureCandidateTextTraits *)&v20 init];
  if (v16)
  {
    v17 = [nameCopy copy];
    fontName = v16->_fontName;
    v16->_fontName = v17;

    v16->_maxFontSize = size;
    v16->_minFontSize = fontSize;
    objc_storeStrong(&v16->_textColor, color);
    v16->_yCoordinate = coordinate;
    v16->_baselineOffset = offset;
  }

  return v16;
}

+ (id)traitsWithFontName:(id)name maxFontSize:(double)size minFontSize:(double)fontSize textColor:(id)color yCoordinate:(double)coordinate baselineOffset:(double)offset
{
  colorCopy = color;
  nameCopy = name;
  v15 = [[TIKeyboardSecureCandidateTextTraits alloc] initWithFontName:nameCopy maxFontSize:colorCopy minFontSize:size textColor:fontSize yCoordinate:coordinate baselineOffset:offset];

  return v15;
}

@end