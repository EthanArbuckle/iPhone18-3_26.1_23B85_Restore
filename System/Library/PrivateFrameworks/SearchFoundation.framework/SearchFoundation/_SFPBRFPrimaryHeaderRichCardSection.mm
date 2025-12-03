@interface _SFPBRFPrimaryHeaderRichCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFPrimaryHeaderRichCardSection)initWithDictionary:(id)dictionary;
- (_SFPBRFPrimaryHeaderRichCardSection)initWithFacade:(id)facade;
- (_SFPBRFPrimaryHeaderRichCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFPrimaryHeaderRichCardSection

- (_SFPBRFPrimaryHeaderRichCardSection)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRFPrimaryHeaderRichCardSection *)self init];
  if (v5)
  {
    text = [facadeCopy text];

    if (text)
    {
      v7 = [_SFPBRFTextProperty alloc];
      text2 = [facadeCopy text];
      v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:text2];
      [(_SFPBRFPrimaryHeaderRichCardSection *)v5 setText_1:v9];
    }

    text3 = [facadeCopy text];

    if (text3)
    {
      v11 = [_SFPBRFTextProperty alloc];
      text4 = [facadeCopy text];
      v13 = [(_SFPBRFTextProperty *)v11 initWithFacade:text4];
      [(_SFPBRFPrimaryHeaderRichCardSection *)v5 setText_2:v13];
    }

    text5 = [facadeCopy text];

    if (text5)
    {
      v15 = [_SFPBRFTextProperty alloc];
      text6 = [facadeCopy text];
      v17 = [(_SFPBRFTextProperty *)v15 initWithFacade:text6];
      [(_SFPBRFPrimaryHeaderRichCardSection *)v5 setText_3:v17];
    }

    text7 = [facadeCopy text];

    if (text7)
    {
      v19 = [_SFPBRFTextProperty alloc];
      text8 = [facadeCopy text];
      v21 = [(_SFPBRFTextProperty *)v19 initWithFacade:text8];
      [(_SFPBRFPrimaryHeaderRichCardSection *)v5 setText_4:v21];
    }

    thumbnail = [facadeCopy thumbnail];

    if (thumbnail)
    {
      v23 = [_SFPBRFVisualProperty alloc];
      thumbnail2 = [facadeCopy thumbnail];
      v25 = [(_SFPBRFVisualProperty *)v23 initWithFacade:thumbnail2];
      [(_SFPBRFPrimaryHeaderRichCardSection *)v5 setThumbnail:v25];
    }

    if ([facadeCopy hasAddTint])
    {
      -[_SFPBRFPrimaryHeaderRichCardSection setAddTint:](v5, "setAddTint:", [facadeCopy addTint]);
    }

    v26 = v5;
  }

  return v5;
}

- (_SFPBRFPrimaryHeaderRichCardSection)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = _SFPBRFPrimaryHeaderRichCardSection;
  v5 = [(_SFPBRFPrimaryHeaderRichCardSection *)&v19 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"text1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFTextProperty alloc] initWithDictionary:v6];
      [(_SFPBRFPrimaryHeaderRichCardSection *)v5 setText_1:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"text2"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFTextProperty alloc] initWithDictionary:v8];
      [(_SFPBRFPrimaryHeaderRichCardSection *)v5 setText_2:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"text3"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBRFTextProperty alloc] initWithDictionary:v10];
      [(_SFPBRFPrimaryHeaderRichCardSection *)v5 setText_3:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"text4"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[_SFPBRFTextProperty alloc] initWithDictionary:v12];
      [(_SFPBRFPrimaryHeaderRichCardSection *)v5 setText_4:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"thumbnail"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[_SFPBRFVisualProperty alloc] initWithDictionary:v14];
      [(_SFPBRFPrimaryHeaderRichCardSection *)v5 setThumbnail:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"addTint"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFPrimaryHeaderRichCardSection setAddTint:](v5, "setAddTint:", [v16 BOOLValue]);
    }

    v17 = v5;
  }

  return v5;
}

- (_SFPBRFPrimaryHeaderRichCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFPrimaryHeaderRichCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFPrimaryHeaderRichCardSection *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRFPrimaryHeaderRichCardSection addTint](self, "addTint")}];
    [dictionary setObject:v4 forKeyedSubscript:@"addTint"];
  }

  if (self->_text_1)
  {
    text = [(_SFPBRFPrimaryHeaderRichCardSection *)self text];
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
    text2 = [(_SFPBRFPrimaryHeaderRichCardSection *)self text];
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
    text3 = [(_SFPBRFPrimaryHeaderRichCardSection *)self text];
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
    text4 = [(_SFPBRFPrimaryHeaderRichCardSection *)self text];
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

  if (self->_thumbnail)
  {
    thumbnail = [(_SFPBRFPrimaryHeaderRichCardSection *)self thumbnail];
    dictionaryRepresentation5 = [thumbnail dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"thumbnail"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"thumbnail"];
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
  v7 = [(_SFPBRFVisualProperty *)self->_thumbnail hash];
  v8 = 2654435761;
  if (!self->_addTint)
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  text = [(_SFPBRFPrimaryHeaderRichCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_26;
  }

  text3 = [(_SFPBRFPrimaryHeaderRichCardSection *)self text];
  if (text3)
  {
    v8 = text3;
    text4 = [(_SFPBRFPrimaryHeaderRichCardSection *)self text];
    text5 = [equalCopy text];
    v11 = [text4 isEqual:text5];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  text = [(_SFPBRFPrimaryHeaderRichCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_26;
  }

  text6 = [(_SFPBRFPrimaryHeaderRichCardSection *)self text];
  if (text6)
  {
    v13 = text6;
    text7 = [(_SFPBRFPrimaryHeaderRichCardSection *)self text];
    text8 = [equalCopy text];
    v16 = [text7 isEqual:text8];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  text = [(_SFPBRFPrimaryHeaderRichCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_26;
  }

  text9 = [(_SFPBRFPrimaryHeaderRichCardSection *)self text];
  if (text9)
  {
    v18 = text9;
    text10 = [(_SFPBRFPrimaryHeaderRichCardSection *)self text];
    text11 = [equalCopy text];
    v21 = [text10 isEqual:text11];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  text = [(_SFPBRFPrimaryHeaderRichCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_26;
  }

  text12 = [(_SFPBRFPrimaryHeaderRichCardSection *)self text];
  if (text12)
  {
    v23 = text12;
    text13 = [(_SFPBRFPrimaryHeaderRichCardSection *)self text];
    text14 = [equalCopy text];
    v26 = [text13 isEqual:text14];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  text = [(_SFPBRFPrimaryHeaderRichCardSection *)self thumbnail];
  text2 = [equalCopy thumbnail];
  if ((text != 0) != (text2 == 0))
  {
    thumbnail = [(_SFPBRFPrimaryHeaderRichCardSection *)self thumbnail];
    if (!thumbnail)
    {

LABEL_30:
      addTint = self->_addTint;
      v32 = addTint == [equalCopy addTint];
      goto LABEL_28;
    }

    v28 = thumbnail;
    thumbnail2 = [(_SFPBRFPrimaryHeaderRichCardSection *)self thumbnail];
    thumbnail3 = [equalCopy thumbnail];
    v31 = [thumbnail2 isEqual:thumbnail3];

    if (v31)
    {
      goto LABEL_30;
    }
  }

  else
  {
LABEL_26:
  }

LABEL_27:
  v32 = 0;
LABEL_28:

  return v32;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  text = [(_SFPBRFPrimaryHeaderRichCardSection *)self text];
  if (text)
  {
    PBDataWriterWriteSubmessage();
  }

  text2 = [(_SFPBRFPrimaryHeaderRichCardSection *)self text];
  if (text2)
  {
    PBDataWriterWriteSubmessage();
  }

  text3 = [(_SFPBRFPrimaryHeaderRichCardSection *)self text];
  if (text3)
  {
    PBDataWriterWriteSubmessage();
  }

  text4 = [(_SFPBRFPrimaryHeaderRichCardSection *)self text];
  if (text4)
  {
    PBDataWriterWriteSubmessage();
  }

  thumbnail = [(_SFPBRFPrimaryHeaderRichCardSection *)self thumbnail];
  if (thumbnail)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBRFPrimaryHeaderRichCardSection *)self addTint])
  {
    PBDataWriterWriteBOOLField();
  }
}

@end