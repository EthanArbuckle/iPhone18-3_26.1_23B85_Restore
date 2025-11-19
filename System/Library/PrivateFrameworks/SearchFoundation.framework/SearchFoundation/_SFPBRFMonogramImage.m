@interface _SFPBRFMonogramImage
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBRFMonogramImage)initWithDictionary:(id)a3;
- (_SFPBRFMonogramImage)initWithFacade:(id)a3;
- (_SFPBRFMonogramImage)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)setLetters:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBRFMonogramImage

- (_SFPBRFMonogramImage)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBRFMonogramImage *)self init];
  if (v5)
  {
    v6 = [v4 letters];

    if (v6)
    {
      v7 = [v4 letters];
      [(_SFPBRFMonogramImage *)v5 setLetters:v7];
    }

    if ([v4 hasImage_style])
    {
      -[_SFPBRFMonogramImage setImage_style:](v5, "setImage_style:", [v4 image_style]);
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBRFMonogramImage)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _SFPBRFMonogramImage;
  v5 = [(_SFPBRFMonogramImage *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"letters"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBRFMonogramImage *)v5 setLetters:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"imageStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFMonogramImage setImage_style:](v5, "setImage_style:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (_SFPBRFMonogramImage)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBRFMonogramImage *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBRFMonogramImage *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_image_style)
  {
    v4 = [(_SFPBRFMonogramImage *)self image_style];
    if (v4 < 0x2A && ((0x3FFDFFFFFFFuLL >> v4) & 1) != 0)
    {
      v5 = off_1E7ACE270[v4];
    }

    else
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"imageStyle"];
  }

  if (self->_letters)
  {
    v6 = [(_SFPBRFMonogramImage *)self letters];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"letters"];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_SFPBRFMonogramImage *)self letters];
    v6 = [v4 letters];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(_SFPBRFMonogramImage *)self letters];
      if (!v8)
      {

LABEL_10:
        image_style = self->_image_style;
        v13 = image_style == [v4 image_style];
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(_SFPBRFMonogramImage *)self letters];
      v11 = [v4 letters];
      v12 = [v10 isEqual:v11];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  v4 = [(_SFPBRFMonogramImage *)self letters];
  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBRFMonogramImage *)self image_style])
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setLetters:(id)a3
{
  v4 = [a3 copy];
  letters = self->_letters;
  self->_letters = v4;

  MEMORY[0x1EEE66BB8]();
}

@end