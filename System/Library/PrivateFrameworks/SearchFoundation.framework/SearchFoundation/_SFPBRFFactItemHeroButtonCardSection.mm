@interface _SFPBRFFactItemHeroButtonCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFFactItemHeroButtonCardSection)initWithDictionary:(id)dictionary;
- (_SFPBRFFactItemHeroButtonCardSection)initWithFacade:(id)facade;
- (_SFPBRFFactItemHeroButtonCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFFactItemHeroButtonCardSection

- (_SFPBRFFactItemHeroButtonCardSection)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRFFactItemHeroButtonCardSection *)self init];
  if (v5)
  {
    number = [facadeCopy number];

    if (number)
    {
      v7 = [_SFPBRFTextProperty alloc];
      number2 = [facadeCopy number];
      v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:number2];
      [(_SFPBRFFactItemHeroButtonCardSection *)v5 setNumber:v9];
    }

    text = [facadeCopy text];

    if (text)
    {
      v11 = [_SFPBRFTextProperty alloc];
      text2 = [facadeCopy text];
      v13 = [(_SFPBRFTextProperty *)v11 initWithFacade:text2];
      [(_SFPBRFFactItemHeroButtonCardSection *)v5 setText_1:v13];
    }

    button = [facadeCopy button];

    if (button)
    {
      v15 = [_SFPBButtonItem alloc];
      button2 = [facadeCopy button];
      v17 = [(_SFPBButtonItem *)v15 initWithFacade:button2];
      [(_SFPBRFFactItemHeroButtonCardSection *)v5 setButton:v17];
    }

    v18 = v5;
  }

  return v5;
}

- (_SFPBRFFactItemHeroButtonCardSection)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = _SFPBRFFactItemHeroButtonCardSection;
  v5 = [(_SFPBRFFactItemHeroButtonCardSection *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"number"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFTextProperty alloc] initWithDictionary:v6];
      [(_SFPBRFFactItemHeroButtonCardSection *)v5 setNumber:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"text1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFTextProperty alloc] initWithDictionary:v8];
      [(_SFPBRFFactItemHeroButtonCardSection *)v5 setText_1:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"button"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBButtonItem alloc] initWithDictionary:v10];
      [(_SFPBRFFactItemHeroButtonCardSection *)v5 setButton:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBRFFactItemHeroButtonCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFFactItemHeroButtonCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFFactItemHeroButtonCardSection *)self dictionaryRepresentation];
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
  if (self->_button)
  {
    button = [(_SFPBRFFactItemHeroButtonCardSection *)self button];
    dictionaryRepresentation = [button dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"button"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"button"];
    }
  }

  if (self->_number)
  {
    number = [(_SFPBRFFactItemHeroButtonCardSection *)self number];
    dictionaryRepresentation2 = [number dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"number"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"number"];
    }
  }

  if (self->_text_1)
  {
    text = [(_SFPBRFFactItemHeroButtonCardSection *)self text];
    dictionaryRepresentation3 = [text dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"text1"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"text1"];
    }
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBRFTextProperty *)self->_number hash];
  v4 = [(_SFPBRFTextProperty *)self->_text_1 hash]^ v3;
  return v4 ^ [(_SFPBButtonItem *)self->_button hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  number = [(_SFPBRFFactItemHeroButtonCardSection *)self number];
  number2 = [equalCopy number];
  if ((number != 0) == (number2 == 0))
  {
    goto LABEL_16;
  }

  number3 = [(_SFPBRFFactItemHeroButtonCardSection *)self number];
  if (number3)
  {
    v8 = number3;
    number4 = [(_SFPBRFFactItemHeroButtonCardSection *)self number];
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

  number = [(_SFPBRFFactItemHeroButtonCardSection *)self text];
  number2 = [equalCopy text];
  if ((number != 0) == (number2 == 0))
  {
    goto LABEL_16;
  }

  text = [(_SFPBRFFactItemHeroButtonCardSection *)self text];
  if (text)
  {
    v13 = text;
    text2 = [(_SFPBRFFactItemHeroButtonCardSection *)self text];
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

  number = [(_SFPBRFFactItemHeroButtonCardSection *)self button];
  number2 = [equalCopy button];
  if ((number != 0) != (number2 == 0))
  {
    button = [(_SFPBRFFactItemHeroButtonCardSection *)self button];
    if (!button)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = button;
    button2 = [(_SFPBRFFactItemHeroButtonCardSection *)self button];
    button3 = [equalCopy button];
    v21 = [button2 isEqual:button3];

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
  number = [(_SFPBRFFactItemHeroButtonCardSection *)self number];
  if (number)
  {
    PBDataWriterWriteSubmessage();
  }

  text = [(_SFPBRFFactItemHeroButtonCardSection *)self text];
  if (text)
  {
    PBDataWriterWriteSubmessage();
  }

  button = [(_SFPBRFFactItemHeroButtonCardSection *)self button];
  if (button)
  {
    PBDataWriterWriteSubmessage();
  }
}

@end