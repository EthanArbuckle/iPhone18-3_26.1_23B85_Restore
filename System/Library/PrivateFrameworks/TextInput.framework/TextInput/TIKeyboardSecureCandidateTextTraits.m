@interface TIKeyboardSecureCandidateTextTraits
+ (id)traitsWithFontName:(id)a3 maxFontSize:(double)a4 minFontSize:(double)a5 textColor:(id)a6 yCoordinate:(double)a7 baselineOffset:(double)a8;
- (BOOL)isEqual:(id)a3;
- (TIKeyboardSecureCandidateTextTraits)initWithCoder:(id)a3;
- (TIKeyboardSecureCandidateTextTraits)initWithFontName:(id)a3 maxFontSize:(double)a4 minFontSize:(double)a5 textColor:(id)a6 yCoordinate:(double)a7 baselineOffset:(double)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TIKeyboardSecureCandidateTextTraits

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = MEMORY[0x1E696AEC0];
    v7 = [(TIKeyboardSecureCandidateTextTraits *)self fontName];
    v8 = [v5 fontName];
    LODWORD(v6) = [v6 _string:v7 matchesString:v8];

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

    v15 = [(TIKeyboardSecureCandidateTextTraits *)self textColor];
    v16 = [v5 textColor];
    v17 = v16;
    if (v15 == v16)
    {
    }

    else
    {
      v18 = [(TIKeyboardSecureCandidateTextTraits *)self textColor];
      v19 = [v5 textColor];
      v20 = [v18 isEqual:v19];

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
  v4 = [(TIKeyboardSecureCandidateTextTraits *)self fontName];
  [(TIKeyboardSecureCandidateTextTraits *)self maxFontSize];
  v6 = v5;
  [(TIKeyboardSecureCandidateTextTraits *)self minFontSize];
  v8 = v7;
  v9 = [(TIKeyboardSecureCandidateTextTraits *)self textColor];
  [(TIKeyboardSecureCandidateTextTraits *)self yCoordinate];
  v11 = v10;
  [(TIKeyboardSecureCandidateTextTraits *)self baselineOffset];
  [v3 appendFormat:@"; fontName = %@, maxFontSize = %f, minFontSize = %f, textColor = %@, yCoordinate = %f, baselineOffset = %f", v4, v6, v8, v9, v11, v12];

  [v3 appendString:@">"];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  fontName = self->_fontName;
  v9 = v4;
  if (fontName)
  {
    [v4 encodeObject:fontName forKey:@"fontName"];
    v4 = v9;
  }

  maxFontSize = self->_maxFontSize;
  if (maxFontSize != 0.0)
  {
    *&maxFontSize = maxFontSize;
    [v9 encodeFloat:@"maxFontSize" forKey:maxFontSize];
    v4 = v9;
  }

  minFontSize = self->_minFontSize;
  if (minFontSize != 0.0)
  {
    *&minFontSize = minFontSize;
    [v9 encodeFloat:@"minFontSize" forKey:minFontSize];
    v4 = v9;
  }

  textColor = self->_textColor;
  if (textColor)
  {
    [v9 encodeObject:textColor forKey:@"textColor"];
    v4 = v9;
  }

  [v4 encodeDouble:@"yCoordinate" forKey:self->_yCoordinate];
  [v9 encodeDouble:@"baselineOffset" forKey:self->_baselineOffset];
}

- (TIKeyboardSecureCandidateTextTraits)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TIKeyboardSecureCandidateTextTraits *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fontName"];
    v7 = [v6 copy];
    fontName = v5->_fontName;
    v5->_fontName = v7;

    [v4 decodeFloatForKey:@"maxFontSize"];
    v5->_maxFontSize = v9;
    [v4 decodeFloatForKey:@"minFontSize"];
    v5->_minFontSize = v10;
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"textColor"];
    textColor = v5->_textColor;
    v5->_textColor = v11;

    [v4 decodeDoubleForKey:@"yCoordinate"];
    v5->_yCoordinate = v13;
    [v4 decodeDoubleForKey:@"baselineOffset"];
    v5->_baselineOffset = v14;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
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

- (TIKeyboardSecureCandidateTextTraits)initWithFontName:(id)a3 maxFontSize:(double)a4 minFontSize:(double)a5 textColor:(id)a6 yCoordinate:(double)a7 baselineOffset:(double)a8
{
  v14 = a3;
  v15 = a6;
  v20.receiver = self;
  v20.super_class = TIKeyboardSecureCandidateTextTraits;
  v16 = [(TIKeyboardSecureCandidateTextTraits *)&v20 init];
  if (v16)
  {
    v17 = [v14 copy];
    fontName = v16->_fontName;
    v16->_fontName = v17;

    v16->_maxFontSize = a4;
    v16->_minFontSize = a5;
    objc_storeStrong(&v16->_textColor, a6);
    v16->_yCoordinate = a7;
    v16->_baselineOffset = a8;
  }

  return v16;
}

+ (id)traitsWithFontName:(id)a3 maxFontSize:(double)a4 minFontSize:(double)a5 textColor:(id)a6 yCoordinate:(double)a7 baselineOffset:(double)a8
{
  v13 = a6;
  v14 = a3;
  v15 = [[TIKeyboardSecureCandidateTextTraits alloc] initWithFontName:v14 maxFontSize:v13 minFontSize:a4 textColor:a5 yCoordinate:a7 baselineOffset:a8];

  return v15;
}

@end