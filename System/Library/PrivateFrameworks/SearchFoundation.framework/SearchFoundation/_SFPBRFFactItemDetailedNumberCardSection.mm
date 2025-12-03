@interface _SFPBRFFactItemDetailedNumberCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFFactItemDetailedNumberCardSection)initWithDictionary:(id)dictionary;
- (_SFPBRFFactItemDetailedNumberCardSection)initWithFacade:(id)facade;
- (_SFPBRFFactItemDetailedNumberCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFFactItemDetailedNumberCardSection

- (_SFPBRFFactItemDetailedNumberCardSection)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRFFactItemDetailedNumberCardSection *)self init];
  if (v5)
  {
    number = [facadeCopy number];

    if (number)
    {
      v7 = [_SFPBRFTextProperty alloc];
      number2 = [facadeCopy number];
      v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:number2];
      [(_SFPBRFFactItemDetailedNumberCardSection *)v5 setNumber:v9];
    }

    text = [facadeCopy text];

    if (text)
    {
      v11 = [_SFPBRFTextProperty alloc];
      text2 = [facadeCopy text];
      v13 = [(_SFPBRFTextProperty *)v11 initWithFacade:text2];
      [(_SFPBRFFactItemDetailedNumberCardSection *)v5 setText_1:v13];
    }

    text3 = [facadeCopy text];

    if (text3)
    {
      v15 = [_SFPBRFTextProperty alloc];
      text4 = [facadeCopy text];
      v17 = [(_SFPBRFTextProperty *)v15 initWithFacade:text4];
      [(_SFPBRFFactItemDetailedNumberCardSection *)v5 setText_2:v17];
    }

    text5 = [facadeCopy text];

    if (text5)
    {
      v19 = [_SFPBRFTextProperty alloc];
      text6 = [facadeCopy text];
      v21 = [(_SFPBRFTextProperty *)v19 initWithFacade:text6];
      [(_SFPBRFFactItemDetailedNumberCardSection *)v5 setText_3:v21];
    }

    thumbnail = [facadeCopy thumbnail];

    if (thumbnail)
    {
      v23 = [_SFPBRFVisualProperty alloc];
      thumbnail2 = [facadeCopy thumbnail];
      v25 = [(_SFPBRFVisualProperty *)v23 initWithFacade:thumbnail2];
      [(_SFPBRFFactItemDetailedNumberCardSection *)v5 setThumbnail:v25];
    }

    text7 = [facadeCopy text];

    if (text7)
    {
      v27 = [_SFPBRFTextProperty alloc];
      text8 = [facadeCopy text];
      v29 = [(_SFPBRFTextProperty *)v27 initWithFacade:text8];
      [(_SFPBRFFactItemDetailedNumberCardSection *)v5 setText_4:v29];
    }

    v30 = v5;
  }

  return v5;
}

- (_SFPBRFFactItemDetailedNumberCardSection)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = _SFPBRFFactItemDetailedNumberCardSection;
  v5 = [(_SFPBRFFactItemDetailedNumberCardSection *)&v20 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"number"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFTextProperty alloc] initWithDictionary:v6];
      [(_SFPBRFFactItemDetailedNumberCardSection *)v5 setNumber:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"text1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFTextProperty alloc] initWithDictionary:v8];
      [(_SFPBRFFactItemDetailedNumberCardSection *)v5 setText_1:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"text2"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBRFTextProperty alloc] initWithDictionary:v10];
      [(_SFPBRFFactItemDetailedNumberCardSection *)v5 setText_2:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"text3"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[_SFPBRFTextProperty alloc] initWithDictionary:v12];
      [(_SFPBRFFactItemDetailedNumberCardSection *)v5 setText_3:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"thumbnail"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[_SFPBRFVisualProperty alloc] initWithDictionary:v14];
      [(_SFPBRFFactItemDetailedNumberCardSection *)v5 setThumbnail:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"text4"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[_SFPBRFTextProperty alloc] initWithDictionary:v16];
      [(_SFPBRFFactItemDetailedNumberCardSection *)v5 setText_4:v17];
    }

    v18 = v5;
  }

  return v5;
}

- (_SFPBRFFactItemDetailedNumberCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFFactItemDetailedNumberCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFFactItemDetailedNumberCardSection *)self dictionaryRepresentation];
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
    number = [(_SFPBRFFactItemDetailedNumberCardSection *)self number];
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
    text = [(_SFPBRFFactItemDetailedNumberCardSection *)self text];
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

  if (self->_text_2)
  {
    text2 = [(_SFPBRFFactItemDetailedNumberCardSection *)self text];
    dictionaryRepresentation3 = [text2 dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"text2"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"text2"];
    }
  }

  if (self->_text_3)
  {
    text3 = [(_SFPBRFFactItemDetailedNumberCardSection *)self text];
    dictionaryRepresentation4 = [text3 dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"text3"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"text3"];
    }
  }

  if (self->_text_4)
  {
    text4 = [(_SFPBRFFactItemDetailedNumberCardSection *)self text];
    dictionaryRepresentation5 = [text4 dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"text4"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"text4"];
    }
  }

  if (self->_thumbnail)
  {
    thumbnail = [(_SFPBRFFactItemDetailedNumberCardSection *)self thumbnail];
    dictionaryRepresentation6 = [thumbnail dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"thumbnail"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"thumbnail"];
    }
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBRFTextProperty *)self->_number hash];
  v4 = [(_SFPBRFTextProperty *)self->_text_1 hash]^ v3;
  v5 = [(_SFPBRFTextProperty *)self->_text_2 hash];
  v6 = v4 ^ v5 ^ [(_SFPBRFTextProperty *)self->_text_3 hash];
  v7 = [(_SFPBRFVisualProperty *)self->_thumbnail hash];
  return v6 ^ v7 ^ [(_SFPBRFTextProperty *)self->_text_4 hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  number = [(_SFPBRFFactItemDetailedNumberCardSection *)self number];
  number2 = [equalCopy number];
  if ((number != 0) == (number2 == 0))
  {
    goto LABEL_31;
  }

  number3 = [(_SFPBRFFactItemDetailedNumberCardSection *)self number];
  if (number3)
  {
    v8 = number3;
    number4 = [(_SFPBRFFactItemDetailedNumberCardSection *)self number];
    number5 = [equalCopy number];
    v11 = [number4 isEqual:number5];

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  number = [(_SFPBRFFactItemDetailedNumberCardSection *)self text];
  number2 = [equalCopy text];
  if ((number != 0) == (number2 == 0))
  {
    goto LABEL_31;
  }

  text = [(_SFPBRFFactItemDetailedNumberCardSection *)self text];
  if (text)
  {
    v13 = text;
    text2 = [(_SFPBRFFactItemDetailedNumberCardSection *)self text];
    text3 = [equalCopy text];
    v16 = [text2 isEqual:text3];

    if (!v16)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  number = [(_SFPBRFFactItemDetailedNumberCardSection *)self text];
  number2 = [equalCopy text];
  if ((number != 0) == (number2 == 0))
  {
    goto LABEL_31;
  }

  text4 = [(_SFPBRFFactItemDetailedNumberCardSection *)self text];
  if (text4)
  {
    v18 = text4;
    text5 = [(_SFPBRFFactItemDetailedNumberCardSection *)self text];
    text6 = [equalCopy text];
    v21 = [text5 isEqual:text6];

    if (!v21)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  number = [(_SFPBRFFactItemDetailedNumberCardSection *)self text];
  number2 = [equalCopy text];
  if ((number != 0) == (number2 == 0))
  {
    goto LABEL_31;
  }

  text7 = [(_SFPBRFFactItemDetailedNumberCardSection *)self text];
  if (text7)
  {
    v23 = text7;
    text8 = [(_SFPBRFFactItemDetailedNumberCardSection *)self text];
    text9 = [equalCopy text];
    v26 = [text8 isEqual:text9];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  number = [(_SFPBRFFactItemDetailedNumberCardSection *)self thumbnail];
  number2 = [equalCopy thumbnail];
  if ((number != 0) == (number2 == 0))
  {
    goto LABEL_31;
  }

  thumbnail = [(_SFPBRFFactItemDetailedNumberCardSection *)self thumbnail];
  if (thumbnail)
  {
    v28 = thumbnail;
    thumbnail2 = [(_SFPBRFFactItemDetailedNumberCardSection *)self thumbnail];
    thumbnail3 = [equalCopy thumbnail];
    v31 = [thumbnail2 isEqual:thumbnail3];

    if (!v31)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  number = [(_SFPBRFFactItemDetailedNumberCardSection *)self text];
  number2 = [equalCopy text];
  if ((number != 0) != (number2 == 0))
  {
    text10 = [(_SFPBRFFactItemDetailedNumberCardSection *)self text];
    if (!text10)
    {

LABEL_35:
      v37 = 1;
      goto LABEL_33;
    }

    v33 = text10;
    text11 = [(_SFPBRFFactItemDetailedNumberCardSection *)self text];
    text12 = [equalCopy text];
    v36 = [text11 isEqual:text12];

    if (v36)
    {
      goto LABEL_35;
    }
  }

  else
  {
LABEL_31:
  }

LABEL_32:
  v37 = 0;
LABEL_33:

  return v37;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  number = [(_SFPBRFFactItemDetailedNumberCardSection *)self number];
  if (number)
  {
    PBDataWriterWriteSubmessage();
  }

  text = [(_SFPBRFFactItemDetailedNumberCardSection *)self text];
  if (text)
  {
    PBDataWriterWriteSubmessage();
  }

  text2 = [(_SFPBRFFactItemDetailedNumberCardSection *)self text];
  if (text2)
  {
    PBDataWriterWriteSubmessage();
  }

  text3 = [(_SFPBRFFactItemDetailedNumberCardSection *)self text];
  if (text3)
  {
    PBDataWriterWriteSubmessage();
  }

  thumbnail = [(_SFPBRFFactItemDetailedNumberCardSection *)self thumbnail];
  if (thumbnail)
  {
    PBDataWriterWriteSubmessage();
  }

  text4 = [(_SFPBRFFactItemDetailedNumberCardSection *)self text];
  if (text4)
  {
    PBDataWriterWriteSubmessage();
  }
}

@end