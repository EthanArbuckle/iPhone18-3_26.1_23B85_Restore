@interface _SFPBRFFactItemImageRightCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFFactItemImageRightCardSection)initWithDictionary:(id)dictionary;
- (_SFPBRFFactItemImageRightCardSection)initWithFacade:(id)facade;
- (_SFPBRFFactItemImageRightCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFFactItemImageRightCardSection

- (_SFPBRFFactItemImageRightCardSection)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRFFactItemImageRightCardSection *)self init];
  if (v5)
  {
    number = [facadeCopy number];

    if (number)
    {
      v7 = [_SFPBRFTextProperty alloc];
      number2 = [facadeCopy number];
      v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:number2];
      [(_SFPBRFFactItemImageRightCardSection *)v5 setNumber:v9];
    }

    text = [facadeCopy text];

    if (text)
    {
      v11 = [_SFPBRFTextProperty alloc];
      text2 = [facadeCopy text];
      v13 = [(_SFPBRFTextProperty *)v11 initWithFacade:text2];
      [(_SFPBRFFactItemImageRightCardSection *)v5 setText_1:v13];
    }

    thumbnail = [facadeCopy thumbnail];

    if (thumbnail)
    {
      v15 = [_SFPBRFVisualProperty alloc];
      thumbnail2 = [facadeCopy thumbnail];
      v17 = [(_SFPBRFVisualProperty *)v15 initWithFacade:thumbnail2];
      [(_SFPBRFFactItemImageRightCardSection *)v5 setThumbnail:v17];
    }

    v18 = v5;
  }

  return v5;
}

- (_SFPBRFFactItemImageRightCardSection)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = _SFPBRFFactItemImageRightCardSection;
  v5 = [(_SFPBRFFactItemImageRightCardSection *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"number"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFTextProperty alloc] initWithDictionary:v6];
      [(_SFPBRFFactItemImageRightCardSection *)v5 setNumber:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"text1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFTextProperty alloc] initWithDictionary:v8];
      [(_SFPBRFFactItemImageRightCardSection *)v5 setText_1:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"thumbnail"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBRFVisualProperty alloc] initWithDictionary:v10];
      [(_SFPBRFFactItemImageRightCardSection *)v5 setThumbnail:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBRFFactItemImageRightCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFFactItemImageRightCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFFactItemImageRightCardSection *)self dictionaryRepresentation];
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
  if (self->_number)
  {
    number = [(_SFPBRFFactItemImageRightCardSection *)self number];
    dictionaryRepresentation = [number dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"number"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"number"];
    }
  }

  if (self->_text_1)
  {
    text = [(_SFPBRFFactItemImageRightCardSection *)self text];
    dictionaryRepresentation2 = [text dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"text1"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"text1"];
    }
  }

  if (self->_thumbnail)
  {
    thumbnail = [(_SFPBRFFactItemImageRightCardSection *)self thumbnail];
    dictionaryRepresentation3 = [thumbnail dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"thumbnail"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"thumbnail"];
    }
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBRFTextProperty *)self->_number hash];
  v4 = [(_SFPBRFTextProperty *)self->_text_1 hash]^ v3;
  return v4 ^ [(_SFPBRFVisualProperty *)self->_thumbnail hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  number = [(_SFPBRFFactItemImageRightCardSection *)self number];
  number2 = [equalCopy number];
  if ((number != 0) == (number2 == 0))
  {
    goto LABEL_16;
  }

  number3 = [(_SFPBRFFactItemImageRightCardSection *)self number];
  if (number3)
  {
    v8 = number3;
    number4 = [(_SFPBRFFactItemImageRightCardSection *)self number];
    number5 = [equalCopy number];
    v11 = [number4 isEqual:number5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  number = [(_SFPBRFFactItemImageRightCardSection *)self text];
  number2 = [equalCopy text];
  if ((number != 0) == (number2 == 0))
  {
    goto LABEL_16;
  }

  text = [(_SFPBRFFactItemImageRightCardSection *)self text];
  if (text)
  {
    v13 = text;
    text2 = [(_SFPBRFFactItemImageRightCardSection *)self text];
    text3 = [equalCopy text];
    v16 = [text2 isEqual:text3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  number = [(_SFPBRFFactItemImageRightCardSection *)self thumbnail];
  number2 = [equalCopy thumbnail];
  if ((number != 0) != (number2 == 0))
  {
    thumbnail = [(_SFPBRFFactItemImageRightCardSection *)self thumbnail];
    if (!thumbnail)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = thumbnail;
    thumbnail2 = [(_SFPBRFFactItemImageRightCardSection *)self thumbnail];
    thumbnail3 = [equalCopy thumbnail];
    v21 = [thumbnail2 isEqual:thumbnail3];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  number = [(_SFPBRFFactItemImageRightCardSection *)self number];
  if (number)
  {
    PBDataWriterWriteSubmessage();
  }

  text = [(_SFPBRFFactItemImageRightCardSection *)self text];
  if (text)
  {
    PBDataWriterWriteSubmessage();
  }

  thumbnail = [(_SFPBRFFactItemImageRightCardSection *)self thumbnail];
  if (thumbnail)
  {
    PBDataWriterWriteSubmessage();
  }
}

@end