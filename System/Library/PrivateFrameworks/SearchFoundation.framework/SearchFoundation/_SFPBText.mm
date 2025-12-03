@interface _SFPBText
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBText)initWithDictionary:(id)dictionary;
- (_SFPBText)initWithFacade:(id)facade;
- (_SFPBText)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)setText:(id)text;
- (void)writeTo:(id)to;
@end

@implementation _SFPBText

- (_SFPBText)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBText *)self init];
  if (v5)
  {
    text = [facadeCopy text];

    if (text)
    {
      text2 = [facadeCopy text];
      [(_SFPBText *)v5 setText:text2];
    }

    if ([facadeCopy hasMaxLines])
    {
      -[_SFPBText setMaxLines:](v5, "setMaxLines:", [facadeCopy maxLines]);
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBText)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = _SFPBText;
  v5 = [(_SFPBText *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"text"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBText *)v5 setText:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"maxLines"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBText setMaxLines:](v5, "setMaxLines:", [v8 unsignedIntValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (_SFPBText)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBText *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBText *)self dictionaryRepresentation];
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
  if (self->_maxLines)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBText maxLines](self, "maxLines")}];
    [dictionary setObject:v4 forKeyedSubscript:@"maxLines"];
  }

  if (self->_text)
  {
    text = [(_SFPBText *)self text];
    v6 = [text copy];
    [dictionary setObject:v6 forKeyedSubscript:@"text"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    text = [(_SFPBText *)self text];
    text2 = [equalCopy text];
    v7 = text2;
    if ((text != 0) != (text2 == 0))
    {
      text3 = [(_SFPBText *)self text];
      if (!text3)
      {

LABEL_10:
        maxLines = self->_maxLines;
        v13 = maxLines == [equalCopy maxLines];
        goto LABEL_8;
      }

      v9 = text3;
      text4 = [(_SFPBText *)self text];
      text5 = [equalCopy text];
      v12 = [text4 isEqual:text5];

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
  text = [(_SFPBText *)self text];
  if (text)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBText *)self maxLines])
  {
    PBDataWriterWriteUint32Field();
  }
}

- (void)setText:(id)text
{
  v4 = [text copy];
  text = self->_text;
  self->_text = v4;

  MEMORY[0x1EEE66BB8]();
}

@end