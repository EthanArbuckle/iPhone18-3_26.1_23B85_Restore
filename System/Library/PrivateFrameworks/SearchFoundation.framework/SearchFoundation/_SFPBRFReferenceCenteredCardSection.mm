@interface _SFPBRFReferenceCenteredCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFReferenceCenteredCardSection)initWithDictionary:(id)dictionary;
- (_SFPBRFReferenceCenteredCardSection)initWithFacade:(id)facade;
- (_SFPBRFReferenceCenteredCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFReferenceCenteredCardSection

- (_SFPBRFReferenceCenteredCardSection)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRFReferenceCenteredCardSection *)self init];
  if (v5)
  {
    text = [facadeCopy text];

    if (text)
    {
      v7 = [_SFPBRFTextProperty alloc];
      text2 = [facadeCopy text];
      v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:text2];
      [(_SFPBRFReferenceCenteredCardSection *)v5 setText_1:v9];
    }

    text3 = [facadeCopy text];

    if (text3)
    {
      v11 = [_SFPBRFTextProperty alloc];
      text4 = [facadeCopy text];
      v13 = [(_SFPBRFTextProperty *)v11 initWithFacade:text4];
      [(_SFPBRFReferenceCenteredCardSection *)v5 setText_2:v13];
    }

    text5 = [facadeCopy text];

    if (text5)
    {
      v15 = [_SFPBRFTextProperty alloc];
      text6 = [facadeCopy text];
      v17 = [(_SFPBRFTextProperty *)v15 initWithFacade:text6];
      [(_SFPBRFReferenceCenteredCardSection *)v5 setText_3:v17];
    }

    text7 = [facadeCopy text];

    if (text7)
    {
      v19 = [_SFPBRFTextProperty alloc];
      text8 = [facadeCopy text];
      v21 = [(_SFPBRFTextProperty *)v19 initWithFacade:text8];
      [(_SFPBRFReferenceCenteredCardSection *)v5 setText_4:v21];
    }

    if ([facadeCopy hasAdd_tint])
    {
      -[_SFPBRFReferenceCenteredCardSection setAdd_tint:](v5, "setAdd_tint:", [facadeCopy add_tint]);
    }

    v22 = v5;
  }

  return v5;
}

- (_SFPBRFReferenceCenteredCardSection)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = _SFPBRFReferenceCenteredCardSection;
  v5 = [(_SFPBRFReferenceCenteredCardSection *)&v17 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"text1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFTextProperty alloc] initWithDictionary:v6];
      [(_SFPBRFReferenceCenteredCardSection *)v5 setText_1:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"text2"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFTextProperty alloc] initWithDictionary:v8];
      [(_SFPBRFReferenceCenteredCardSection *)v5 setText_2:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"text3"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBRFTextProperty alloc] initWithDictionary:v10];
      [(_SFPBRFReferenceCenteredCardSection *)v5 setText_3:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"text4"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[_SFPBRFTextProperty alloc] initWithDictionary:v12];
      [(_SFPBRFReferenceCenteredCardSection *)v5 setText_4:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"addTint"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFReferenceCenteredCardSection setAdd_tint:](v5, "setAdd_tint:", [v14 BOOLValue]);
    }

    v15 = v5;
  }

  return v5;
}

- (_SFPBRFReferenceCenteredCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFReferenceCenteredCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFReferenceCenteredCardSection *)self dictionaryRepresentation];
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
  if (self->_add_tint)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRFReferenceCenteredCardSection add_tint](self, "add_tint")}];
    [dictionary setObject:v4 forKeyedSubscript:@"addTint"];
  }

  if (self->_text_1)
  {
    text = [(_SFPBRFReferenceCenteredCardSection *)self text];
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
    text2 = [(_SFPBRFReferenceCenteredCardSection *)self text];
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
    text3 = [(_SFPBRFReferenceCenteredCardSection *)self text];
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

  if (self->_text_4)
  {
    text4 = [(_SFPBRFReferenceCenteredCardSection *)self text];
    dictionaryRepresentation4 = [text4 dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"text4"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"text4"];
    }
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBRFTextProperty *)self->_text_1 hash];
  v4 = [(_SFPBRFTextProperty *)self->_text_2 hash];
  v5 = [(_SFPBRFTextProperty *)self->_text_3 hash];
  v6 = [(_SFPBRFTextProperty *)self->_text_4 hash];
  v7 = 2654435761;
  if (!self->_add_tint)
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  text = [(_SFPBRFReferenceCenteredCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_21;
  }

  text3 = [(_SFPBRFReferenceCenteredCardSection *)self text];
  if (text3)
  {
    v8 = text3;
    text4 = [(_SFPBRFReferenceCenteredCardSection *)self text];
    text5 = [equalCopy text];
    v11 = [text4 isEqual:text5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  text = [(_SFPBRFReferenceCenteredCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_21;
  }

  text6 = [(_SFPBRFReferenceCenteredCardSection *)self text];
  if (text6)
  {
    v13 = text6;
    text7 = [(_SFPBRFReferenceCenteredCardSection *)self text];
    text8 = [equalCopy text];
    v16 = [text7 isEqual:text8];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  text = [(_SFPBRFReferenceCenteredCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_21;
  }

  text9 = [(_SFPBRFReferenceCenteredCardSection *)self text];
  if (text9)
  {
    v18 = text9;
    text10 = [(_SFPBRFReferenceCenteredCardSection *)self text];
    text11 = [equalCopy text];
    v21 = [text10 isEqual:text11];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  text = [(_SFPBRFReferenceCenteredCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) != (text2 == 0))
  {
    text12 = [(_SFPBRFReferenceCenteredCardSection *)self text];
    if (!text12)
    {

LABEL_25:
      add_tint = self->_add_tint;
      v27 = add_tint == [equalCopy add_tint];
      goto LABEL_23;
    }

    v23 = text12;
    text13 = [(_SFPBRFReferenceCenteredCardSection *)self text];
    text14 = [equalCopy text];
    v26 = [text13 isEqual:text14];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  text = [(_SFPBRFReferenceCenteredCardSection *)self text];
  if (text)
  {
    PBDataWriterWriteSubmessage();
  }

  text2 = [(_SFPBRFReferenceCenteredCardSection *)self text];
  if (text2)
  {
    PBDataWriterWriteSubmessage();
  }

  text3 = [(_SFPBRFReferenceCenteredCardSection *)self text];
  if (text3)
  {
    PBDataWriterWriteSubmessage();
  }

  text4 = [(_SFPBRFReferenceCenteredCardSection *)self text];
  if (text4)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBRFReferenceCenteredCardSection *)self add_tint])
  {
    PBDataWriterWriteBOOLField();
  }
}

@end