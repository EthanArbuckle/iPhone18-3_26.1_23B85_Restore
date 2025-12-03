@interface _SFPBRFPrimaryHeaderStandardCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFPrimaryHeaderStandardCardSection)initWithDictionary:(id)dictionary;
- (_SFPBRFPrimaryHeaderStandardCardSection)initWithFacade:(id)facade;
- (_SFPBRFPrimaryHeaderStandardCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFPrimaryHeaderStandardCardSection

- (_SFPBRFPrimaryHeaderStandardCardSection)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRFPrimaryHeaderStandardCardSection *)self init];
  if (v5)
  {
    text = [facadeCopy text];

    if (text)
    {
      v7 = [_SFPBRFTextProperty alloc];
      text2 = [facadeCopy text];
      v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:text2];
      [(_SFPBRFPrimaryHeaderStandardCardSection *)v5 setText_1:v9];
    }

    text3 = [facadeCopy text];

    if (text3)
    {
      v11 = [_SFPBRFTextProperty alloc];
      text4 = [facadeCopy text];
      v13 = [(_SFPBRFTextProperty *)v11 initWithFacade:text4];
      [(_SFPBRFPrimaryHeaderStandardCardSection *)v5 setText_2:v13];
    }

    text5 = [facadeCopy text];

    if (text5)
    {
      v15 = [_SFPBRFTextProperty alloc];
      text6 = [facadeCopy text];
      v17 = [(_SFPBRFTextProperty *)v15 initWithFacade:text6];
      [(_SFPBRFPrimaryHeaderStandardCardSection *)v5 setText_3:v17];
    }

    if ([facadeCopy hasAddTint])
    {
      -[_SFPBRFPrimaryHeaderStandardCardSection setAddTint:](v5, "setAddTint:", [facadeCopy addTint]);
    }

    v18 = v5;
  }

  return v5;
}

- (_SFPBRFPrimaryHeaderStandardCardSection)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = _SFPBRFPrimaryHeaderStandardCardSection;
  v5 = [(_SFPBRFPrimaryHeaderStandardCardSection *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"text1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFTextProperty alloc] initWithDictionary:v6];
      [(_SFPBRFPrimaryHeaderStandardCardSection *)v5 setText_1:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"text2"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFTextProperty alloc] initWithDictionary:v8];
      [(_SFPBRFPrimaryHeaderStandardCardSection *)v5 setText_2:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"text3"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBRFTextProperty alloc] initWithDictionary:v10];
      [(_SFPBRFPrimaryHeaderStandardCardSection *)v5 setText_3:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"addTint"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFPrimaryHeaderStandardCardSection setAddTint:](v5, "setAddTint:", [v12 BOOLValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (_SFPBRFPrimaryHeaderStandardCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFPrimaryHeaderStandardCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFPrimaryHeaderStandardCardSection *)self dictionaryRepresentation];
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
  if (self->_addTint)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRFPrimaryHeaderStandardCardSection addTint](self, "addTint")}];
    [dictionary setObject:v4 forKeyedSubscript:@"addTint"];
  }

  if (self->_text_1)
  {
    text = [(_SFPBRFPrimaryHeaderStandardCardSection *)self text];
    dictionaryRepresentation = [text dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"text1"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"text1"];
    }
  }

  if (self->_text_2)
  {
    text2 = [(_SFPBRFPrimaryHeaderStandardCardSection *)self text];
    dictionaryRepresentation2 = [text2 dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"text2"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"text2"];
    }
  }

  if (self->_text_3)
  {
    text3 = [(_SFPBRFPrimaryHeaderStandardCardSection *)self text];
    dictionaryRepresentation3 = [text3 dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"text3"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"text3"];
    }
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBRFTextProperty *)self->_text_1 hash];
  v4 = [(_SFPBRFTextProperty *)self->_text_2 hash];
  v5 = [(_SFPBRFTextProperty *)self->_text_3 hash];
  v6 = 2654435761;
  if (!self->_addTint)
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  text = [(_SFPBRFPrimaryHeaderStandardCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_16;
  }

  text3 = [(_SFPBRFPrimaryHeaderStandardCardSection *)self text];
  if (text3)
  {
    v8 = text3;
    text4 = [(_SFPBRFPrimaryHeaderStandardCardSection *)self text];
    text5 = [equalCopy text];
    v11 = [text4 isEqual:text5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  text = [(_SFPBRFPrimaryHeaderStandardCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_16;
  }

  text6 = [(_SFPBRFPrimaryHeaderStandardCardSection *)self text];
  if (text6)
  {
    v13 = text6;
    text7 = [(_SFPBRFPrimaryHeaderStandardCardSection *)self text];
    text8 = [equalCopy text];
    v16 = [text7 isEqual:text8];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  text = [(_SFPBRFPrimaryHeaderStandardCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) != (text2 == 0))
  {
    text9 = [(_SFPBRFPrimaryHeaderStandardCardSection *)self text];
    if (!text9)
    {

LABEL_20:
      addTint = self->_addTint;
      v22 = addTint == [equalCopy addTint];
      goto LABEL_18;
    }

    v18 = text9;
    text10 = [(_SFPBRFPrimaryHeaderStandardCardSection *)self text];
    text11 = [equalCopy text];
    v21 = [text10 isEqual:text11];

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
  text = [(_SFPBRFPrimaryHeaderStandardCardSection *)self text];
  if (text)
  {
    PBDataWriterWriteSubmessage();
  }

  text2 = [(_SFPBRFPrimaryHeaderStandardCardSection *)self text];
  if (text2)
  {
    PBDataWriterWriteSubmessage();
  }

  text3 = [(_SFPBRFPrimaryHeaderStandardCardSection *)self text];
  if (text3)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBRFPrimaryHeaderStandardCardSection *)self addTint])
  {
    PBDataWriterWriteBOOLField();
  }
}

@end