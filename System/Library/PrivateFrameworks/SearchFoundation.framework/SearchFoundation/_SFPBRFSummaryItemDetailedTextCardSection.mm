@interface _SFPBRFSummaryItemDetailedTextCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFSummaryItemDetailedTextCardSection)initWithDictionary:(id)dictionary;
- (_SFPBRFSummaryItemDetailedTextCardSection)initWithFacade:(id)facade;
- (_SFPBRFSummaryItemDetailedTextCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFSummaryItemDetailedTextCardSection

- (_SFPBRFSummaryItemDetailedTextCardSection)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRFSummaryItemDetailedTextCardSection *)self init];
  if (v5)
  {
    text = [facadeCopy text];

    if (text)
    {
      v7 = [_SFPBRFTextProperty alloc];
      text2 = [facadeCopy text];
      v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:text2];
      [(_SFPBRFSummaryItemDetailedTextCardSection *)v5 setText_1:v9];
    }

    text3 = [facadeCopy text];

    if (text3)
    {
      v11 = [_SFPBRFTextProperty alloc];
      text4 = [facadeCopy text];
      v13 = [(_SFPBRFTextProperty *)v11 initWithFacade:text4];
      [(_SFPBRFSummaryItemDetailedTextCardSection *)v5 setText_2:v13];
    }

    text5 = [facadeCopy text];

    if (text5)
    {
      v15 = [_SFPBRFTextProperty alloc];
      text6 = [facadeCopy text];
      v17 = [(_SFPBRFTextProperty *)v15 initWithFacade:text6];
      [(_SFPBRFSummaryItemDetailedTextCardSection *)v5 setText_3:v17];
    }

    text7 = [facadeCopy text];

    if (text7)
    {
      v19 = [_SFPBRFTextProperty alloc];
      text8 = [facadeCopy text];
      v21 = [(_SFPBRFTextProperty *)v19 initWithFacade:text8];
      [(_SFPBRFSummaryItemDetailedTextCardSection *)v5 setText_4:v21];
    }

    text9 = [facadeCopy text];

    if (text9)
    {
      v23 = [_SFPBRFTextProperty alloc];
      text10 = [facadeCopy text];
      v25 = [(_SFPBRFTextProperty *)v23 initWithFacade:text10];
      [(_SFPBRFSummaryItemDetailedTextCardSection *)v5 setText_5:v25];
    }

    text11 = [facadeCopy text];

    if (text11)
    {
      v27 = [_SFPBRFTextProperty alloc];
      text12 = [facadeCopy text];
      v29 = [(_SFPBRFTextProperty *)v27 initWithFacade:text12];
      [(_SFPBRFSummaryItemDetailedTextCardSection *)v5 setText_6:v29];
    }

    thumbnail = [facadeCopy thumbnail];

    if (thumbnail)
    {
      v31 = [_SFPBRFVisualProperty alloc];
      thumbnail2 = [facadeCopy thumbnail];
      v33 = [(_SFPBRFVisualProperty *)v31 initWithFacade:thumbnail2];
      [(_SFPBRFSummaryItemDetailedTextCardSection *)v5 setThumbnail:v33];
    }

    v34 = v5;
  }

  return v5;
}

- (_SFPBRFSummaryItemDetailedTextCardSection)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = _SFPBRFSummaryItemDetailedTextCardSection;
  v5 = [(_SFPBRFSummaryItemDetailedTextCardSection *)&v22 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"text1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFTextProperty alloc] initWithDictionary:v6];
      [(_SFPBRFSummaryItemDetailedTextCardSection *)v5 setText_1:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"text2"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFTextProperty alloc] initWithDictionary:v8];
      [(_SFPBRFSummaryItemDetailedTextCardSection *)v5 setText_2:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"text3"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBRFTextProperty alloc] initWithDictionary:v10];
      [(_SFPBRFSummaryItemDetailedTextCardSection *)v5 setText_3:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"text4"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[_SFPBRFTextProperty alloc] initWithDictionary:v12];
      [(_SFPBRFSummaryItemDetailedTextCardSection *)v5 setText_4:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"text5"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[_SFPBRFTextProperty alloc] initWithDictionary:v14];
      [(_SFPBRFSummaryItemDetailedTextCardSection *)v5 setText_5:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"text6"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[_SFPBRFTextProperty alloc] initWithDictionary:v16];
      [(_SFPBRFSummaryItemDetailedTextCardSection *)v5 setText_6:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"thumbnail"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[_SFPBRFVisualProperty alloc] initWithDictionary:v18];
      [(_SFPBRFSummaryItemDetailedTextCardSection *)v5 setThumbnail:v19];
    }

    v20 = v5;
  }

  return v5;
}

- (_SFPBRFSummaryItemDetailedTextCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFSummaryItemDetailedTextCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFSummaryItemDetailedTextCardSection *)self dictionaryRepresentation];
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
  if (self->_text_1)
  {
    text = [(_SFPBRFSummaryItemDetailedTextCardSection *)self text];
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
    text2 = [(_SFPBRFSummaryItemDetailedTextCardSection *)self text];
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
    text3 = [(_SFPBRFSummaryItemDetailedTextCardSection *)self text];
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
    text4 = [(_SFPBRFSummaryItemDetailedTextCardSection *)self text];
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

  if (self->_text_5)
  {
    text5 = [(_SFPBRFSummaryItemDetailedTextCardSection *)self text];
    dictionaryRepresentation5 = [text5 dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"text5"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"text5"];
    }
  }

  if (self->_text_6)
  {
    text6 = [(_SFPBRFSummaryItemDetailedTextCardSection *)self text];
    dictionaryRepresentation6 = [text6 dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"text6"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"text6"];
    }
  }

  if (self->_thumbnail)
  {
    thumbnail = [(_SFPBRFSummaryItemDetailedTextCardSection *)self thumbnail];
    dictionaryRepresentation7 = [thumbnail dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"thumbnail"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"thumbnail"];
    }
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBRFTextProperty *)self->_text_1 hash];
  v4 = [(_SFPBRFTextProperty *)self->_text_2 hash]^ v3;
  v5 = [(_SFPBRFTextProperty *)self->_text_3 hash];
  v6 = v4 ^ v5 ^ [(_SFPBRFTextProperty *)self->_text_4 hash];
  v7 = [(_SFPBRFTextProperty *)self->_text_5 hash];
  v8 = v7 ^ [(_SFPBRFTextProperty *)self->_text_6 hash];
  return v6 ^ v8 ^ [(_SFPBRFVisualProperty *)self->_thumbnail hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  text = [(_SFPBRFSummaryItemDetailedTextCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_36;
  }

  text3 = [(_SFPBRFSummaryItemDetailedTextCardSection *)self text];
  if (text3)
  {
    v8 = text3;
    text4 = [(_SFPBRFSummaryItemDetailedTextCardSection *)self text];
    text5 = [equalCopy text];
    v11 = [text4 isEqual:text5];

    if (!v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemDetailedTextCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_36;
  }

  text6 = [(_SFPBRFSummaryItemDetailedTextCardSection *)self text];
  if (text6)
  {
    v13 = text6;
    text7 = [(_SFPBRFSummaryItemDetailedTextCardSection *)self text];
    text8 = [equalCopy text];
    v16 = [text7 isEqual:text8];

    if (!v16)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemDetailedTextCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_36;
  }

  text9 = [(_SFPBRFSummaryItemDetailedTextCardSection *)self text];
  if (text9)
  {
    v18 = text9;
    text10 = [(_SFPBRFSummaryItemDetailedTextCardSection *)self text];
    text11 = [equalCopy text];
    v21 = [text10 isEqual:text11];

    if (!v21)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemDetailedTextCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_36;
  }

  text12 = [(_SFPBRFSummaryItemDetailedTextCardSection *)self text];
  if (text12)
  {
    v23 = text12;
    text13 = [(_SFPBRFSummaryItemDetailedTextCardSection *)self text];
    text14 = [equalCopy text];
    v26 = [text13 isEqual:text14];

    if (!v26)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemDetailedTextCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_36;
  }

  text15 = [(_SFPBRFSummaryItemDetailedTextCardSection *)self text];
  if (text15)
  {
    v28 = text15;
    text16 = [(_SFPBRFSummaryItemDetailedTextCardSection *)self text];
    text17 = [equalCopy text];
    v31 = [text16 isEqual:text17];

    if (!v31)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemDetailedTextCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_36;
  }

  text18 = [(_SFPBRFSummaryItemDetailedTextCardSection *)self text];
  if (text18)
  {
    v33 = text18;
    text19 = [(_SFPBRFSummaryItemDetailedTextCardSection *)self text];
    text20 = [equalCopy text];
    v36 = [text19 isEqual:text20];

    if (!v36)
    {
      goto LABEL_37;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemDetailedTextCardSection *)self thumbnail];
  text2 = [equalCopy thumbnail];
  if ((text != 0) != (text2 == 0))
  {
    thumbnail = [(_SFPBRFSummaryItemDetailedTextCardSection *)self thumbnail];
    if (!thumbnail)
    {

LABEL_40:
      v42 = 1;
      goto LABEL_38;
    }

    v38 = thumbnail;
    thumbnail2 = [(_SFPBRFSummaryItemDetailedTextCardSection *)self thumbnail];
    thumbnail3 = [equalCopy thumbnail];
    v41 = [thumbnail2 isEqual:thumbnail3];

    if (v41)
    {
      goto LABEL_40;
    }
  }

  else
  {
LABEL_36:
  }

LABEL_37:
  v42 = 0;
LABEL_38:

  return v42;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  text = [(_SFPBRFSummaryItemDetailedTextCardSection *)self text];
  if (text)
  {
    PBDataWriterWriteSubmessage();
  }

  text2 = [(_SFPBRFSummaryItemDetailedTextCardSection *)self text];
  if (text2)
  {
    PBDataWriterWriteSubmessage();
  }

  text3 = [(_SFPBRFSummaryItemDetailedTextCardSection *)self text];
  if (text3)
  {
    PBDataWriterWriteSubmessage();
  }

  text4 = [(_SFPBRFSummaryItemDetailedTextCardSection *)self text];
  if (text4)
  {
    PBDataWriterWriteSubmessage();
  }

  text5 = [(_SFPBRFSummaryItemDetailedTextCardSection *)self text];
  if (text5)
  {
    PBDataWriterWriteSubmessage();
  }

  text6 = [(_SFPBRFSummaryItemDetailedTextCardSection *)self text];
  if (text6)
  {
    PBDataWriterWriteSubmessage();
  }

  thumbnail = [(_SFPBRFSummaryItemDetailedTextCardSection *)self thumbnail];
  if (thumbnail)
  {
    PBDataWriterWriteSubmessage();
  }
}

@end