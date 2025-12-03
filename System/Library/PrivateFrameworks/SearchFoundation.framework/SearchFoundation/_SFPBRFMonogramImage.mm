@interface _SFPBRFMonogramImage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFMonogramImage)initWithDictionary:(id)dictionary;
- (_SFPBRFMonogramImage)initWithFacade:(id)facade;
- (_SFPBRFMonogramImage)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)setLetters:(id)letters;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFMonogramImage

- (_SFPBRFMonogramImage)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRFMonogramImage *)self init];
  if (v5)
  {
    letters = [facadeCopy letters];

    if (letters)
    {
      letters2 = [facadeCopy letters];
      [(_SFPBRFMonogramImage *)v5 setLetters:letters2];
    }

    if ([facadeCopy hasImage_style])
    {
      -[_SFPBRFMonogramImage setImage_style:](v5, "setImage_style:", [facadeCopy image_style]);
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBRFMonogramImage)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = _SFPBRFMonogramImage;
  v5 = [(_SFPBRFMonogramImage *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"letters"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBRFMonogramImage *)v5 setLetters:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"imageStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFMonogramImage setImage_style:](v5, "setImage_style:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (_SFPBRFMonogramImage)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFMonogramImage *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFMonogramImage *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_image_style)
  {
    image_style = [(_SFPBRFMonogramImage *)self image_style];
    if (image_style < 0x2A && ((0x3FFDFFFFFFFuLL >> image_style) & 1) != 0)
    {
      v5 = off_1E7ACE270[image_style];
    }

    else
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", image_style];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"imageStyle"];
  }

  if (self->_letters)
  {
    letters = [(_SFPBRFMonogramImage *)self letters];
    v7 = [letters copy];
    [dictionary setObject:v7 forKeyedSubscript:@"letters"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    letters = [(_SFPBRFMonogramImage *)self letters];
    letters2 = [equalCopy letters];
    v7 = letters2;
    if ((letters != 0) != (letters2 == 0))
    {
      letters3 = [(_SFPBRFMonogramImage *)self letters];
      if (!letters3)
      {

LABEL_10:
        image_style = self->_image_style;
        v13 = image_style == [equalCopy image_style];
        goto LABEL_8;
      }

      v9 = letters3;
      letters4 = [(_SFPBRFMonogramImage *)self letters];
      letters5 = [equalCopy letters];
      v12 = [letters4 isEqual:letters5];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  letters = [(_SFPBRFMonogramImage *)self letters];
  if (letters)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBRFMonogramImage *)self image_style])
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setLetters:(id)letters
{
  v4 = [letters copy];
  letters = self->_letters;
  self->_letters = v4;

  MEMORY[0x1EEE66BB8]();
}

@end