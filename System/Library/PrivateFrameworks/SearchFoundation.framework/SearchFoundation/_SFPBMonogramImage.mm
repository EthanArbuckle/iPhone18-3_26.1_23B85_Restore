@interface _SFPBMonogramImage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBMonogramImage)initWithDictionary:(id)dictionary;
- (_SFPBMonogramImage)initWithFacade:(id)facade;
- (_SFPBMonogramImage)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)setMonogramLetters:(id)letters;
- (void)writeTo:(id)to;
@end

@implementation _SFPBMonogramImage

- (_SFPBMonogramImage)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBMonogramImage *)self init];
  if (v5)
  {
    monogramLetters = [facadeCopy monogramLetters];

    if (monogramLetters)
    {
      monogramLetters2 = [facadeCopy monogramLetters];
      [(_SFPBMonogramImage *)v5 setMonogramLetters:monogramLetters2];
    }

    if ([facadeCopy hasMonogramStyle])
    {
      -[_SFPBMonogramImage setMonogramStyle:](v5, "setMonogramStyle:", [facadeCopy monogramStyle]);
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBMonogramImage)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = _SFPBMonogramImage;
  v5 = [(_SFPBMonogramImage *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"monogramLetters"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBMonogramImage *)v5 setMonogramLetters:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"monogramStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMonogramImage setMonogramStyle:](v5, "setMonogramStyle:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (_SFPBMonogramImage)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBMonogramImage *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBMonogramImage *)self dictionaryRepresentation];
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
  if (self->_monogramLetters)
  {
    monogramLetters = [(_SFPBMonogramImage *)self monogramLetters];
    v5 = [monogramLetters copy];
    [dictionary setObject:v5 forKeyedSubscript:@"monogramLetters"];
  }

  if (self->_monogramStyle)
  {
    monogramStyle = [(_SFPBMonogramImage *)self monogramStyle];
    if (monogramStyle)
    {
      if (monogramStyle == 1)
      {
        v7 = @"1";
      }

      else
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", monogramStyle];
      }
    }

    else
    {
      v7 = @"0";
    }

    [dictionary setObject:v7 forKeyedSubscript:@"monogramStyle"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    monogramLetters = [(_SFPBMonogramImage *)self monogramLetters];
    monogramLetters2 = [equalCopy monogramLetters];
    v7 = monogramLetters2;
    if ((monogramLetters != 0) != (monogramLetters2 == 0))
    {
      monogramLetters3 = [(_SFPBMonogramImage *)self monogramLetters];
      if (!monogramLetters3)
      {

LABEL_10:
        monogramStyle = self->_monogramStyle;
        v13 = monogramStyle == [equalCopy monogramStyle];
        goto LABEL_8;
      }

      v9 = monogramLetters3;
      monogramLetters4 = [(_SFPBMonogramImage *)self monogramLetters];
      monogramLetters5 = [equalCopy monogramLetters];
      v12 = [monogramLetters4 isEqual:monogramLetters5];

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
  monogramLetters = [(_SFPBMonogramImage *)self monogramLetters];
  if (monogramLetters)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBMonogramImage *)self monogramStyle])
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setMonogramLetters:(id)letters
{
  v4 = [letters copy];
  monogramLetters = self->_monogramLetters;
  self->_monogramLetters = v4;

  MEMORY[0x1EEE66BB8]();
}

@end