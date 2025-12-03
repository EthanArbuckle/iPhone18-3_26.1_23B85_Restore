@interface _SFPBRFSummaryItemPairCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFSummaryItemPairCardSection)initWithDictionary:(id)dictionary;
- (_SFPBRFSummaryItemPairCardSection)initWithFacade:(id)facade;
- (_SFPBRFSummaryItemPairCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFSummaryItemPairCardSection

- (_SFPBRFSummaryItemPairCardSection)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRFSummaryItemPairCardSection *)self init];
  if (v5)
  {
    text = [facadeCopy text];

    if (text)
    {
      v7 = [_SFPBRFTextProperty alloc];
      text2 = [facadeCopy text];
      v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:text2];
      [(_SFPBRFSummaryItemPairCardSection *)v5 setText_1:v9];
    }

    text3 = [facadeCopy text];

    if (text3)
    {
      v11 = [_SFPBRFTextProperty alloc];
      text4 = [facadeCopy text];
      v13 = [(_SFPBRFTextProperty *)v11 initWithFacade:text4];
      [(_SFPBRFSummaryItemPairCardSection *)v5 setText_2:v13];
    }

    text5 = [facadeCopy text];

    if (text5)
    {
      v15 = [_SFPBRFTextProperty alloc];
      text6 = [facadeCopy text];
      v17 = [(_SFPBRFTextProperty *)v15 initWithFacade:text6];
      [(_SFPBRFSummaryItemPairCardSection *)v5 setText_3:v17];
    }

    thumbnail = [facadeCopy thumbnail];

    if (thumbnail)
    {
      v19 = [_SFPBRFVisualProperty alloc];
      thumbnail2 = [facadeCopy thumbnail];
      v21 = [(_SFPBRFVisualProperty *)v19 initWithFacade:thumbnail2];
      [(_SFPBRFSummaryItemPairCardSection *)v5 setThumbnail_1:v21];
    }

    thumbnail3 = [facadeCopy thumbnail];

    if (thumbnail3)
    {
      v23 = [_SFPBRFVisualProperty alloc];
      thumbnail4 = [facadeCopy thumbnail];
      v25 = [(_SFPBRFVisualProperty *)v23 initWithFacade:thumbnail4];
      [(_SFPBRFSummaryItemPairCardSection *)v5 setThumbnail_2:v25];
    }

    text7 = [facadeCopy text];

    if (text7)
    {
      v27 = [_SFPBRFTextProperty alloc];
      text8 = [facadeCopy text];
      v29 = [(_SFPBRFTextProperty *)v27 initWithFacade:text8];
      [(_SFPBRFSummaryItemPairCardSection *)v5 setText_4:v29];
    }

    text9 = [facadeCopy text];

    if (text9)
    {
      v31 = [_SFPBRFTextProperty alloc];
      text10 = [facadeCopy text];
      v33 = [(_SFPBRFTextProperty *)v31 initWithFacade:text10];
      [(_SFPBRFSummaryItemPairCardSection *)v5 setText_5:v33];
    }

    text11 = [facadeCopy text];

    if (text11)
    {
      v35 = [_SFPBRFTextProperty alloc];
      text12 = [facadeCopy text];
      v37 = [(_SFPBRFTextProperty *)v35 initWithFacade:text12];
      [(_SFPBRFSummaryItemPairCardSection *)v5 setText_6:v37];
    }

    text13 = [facadeCopy text];

    if (text13)
    {
      v39 = [_SFPBRFTextProperty alloc];
      text14 = [facadeCopy text];
      v41 = [(_SFPBRFTextProperty *)v39 initWithFacade:text14];
      [(_SFPBRFSummaryItemPairCardSection *)v5 setText_7:v41];
    }

    text15 = [facadeCopy text];

    if (text15)
    {
      v43 = [_SFPBRFTextProperty alloc];
      text16 = [facadeCopy text];
      v45 = [(_SFPBRFTextProperty *)v43 initWithFacade:text16];
      [(_SFPBRFSummaryItemPairCardSection *)v5 setText_8:v45];
    }

    v46 = v5;
  }

  return v5;
}

- (_SFPBRFSummaryItemPairCardSection)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v31.receiver = self;
  v31.super_class = _SFPBRFSummaryItemPairCardSection;
  v5 = [(_SFPBRFSummaryItemPairCardSection *)&v31 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"text1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFTextProperty alloc] initWithDictionary:v6];
      [(_SFPBRFSummaryItemPairCardSection *)v5 setText_1:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"text2"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFTextProperty alloc] initWithDictionary:v8];
      [(_SFPBRFSummaryItemPairCardSection *)v5 setText_2:v9];
    }

    v29 = v8;
    v30 = v6;
    v10 = [dictionaryCopy objectForKeyedSubscript:@"text3"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBRFTextProperty alloc] initWithDictionary:v10];
      [(_SFPBRFSummaryItemPairCardSection *)v5 setText_3:v11];
    }

    v28 = v10;
    v12 = [dictionaryCopy objectForKeyedSubscript:@"thumbnail1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[_SFPBRFVisualProperty alloc] initWithDictionary:v12];
      [(_SFPBRFSummaryItemPairCardSection *)v5 setThumbnail_1:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"thumbnail2"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[_SFPBRFVisualProperty alloc] initWithDictionary:v14];
      [(_SFPBRFSummaryItemPairCardSection *)v5 setThumbnail_2:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"text4"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[_SFPBRFTextProperty alloc] initWithDictionary:v16];
      [(_SFPBRFSummaryItemPairCardSection *)v5 setText_4:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"text5"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[_SFPBRFTextProperty alloc] initWithDictionary:v18];
      [(_SFPBRFSummaryItemPairCardSection *)v5 setText_5:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"text6"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[_SFPBRFTextProperty alloc] initWithDictionary:v20];
      [(_SFPBRFSummaryItemPairCardSection *)v5 setText_6:v21];
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"text7"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[_SFPBRFTextProperty alloc] initWithDictionary:v22];
      [(_SFPBRFSummaryItemPairCardSection *)v5 setText_7:v23];
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"text8"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBRFTextProperty alloc] initWithDictionary:v24];
      [(_SFPBRFSummaryItemPairCardSection *)v5 setText_8:v25];
    }

    v26 = v5;
  }

  return v5;
}

- (_SFPBRFSummaryItemPairCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFSummaryItemPairCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFSummaryItemPairCardSection *)self dictionaryRepresentation];
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
    text = [(_SFPBRFSummaryItemPairCardSection *)self text];
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
    text2 = [(_SFPBRFSummaryItemPairCardSection *)self text];
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
    text3 = [(_SFPBRFSummaryItemPairCardSection *)self text];
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
    text4 = [(_SFPBRFSummaryItemPairCardSection *)self text];
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
    text5 = [(_SFPBRFSummaryItemPairCardSection *)self text];
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
    text6 = [(_SFPBRFSummaryItemPairCardSection *)self text];
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

  if (self->_text_7)
  {
    text7 = [(_SFPBRFSummaryItemPairCardSection *)self text];
    dictionaryRepresentation7 = [text7 dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"text7"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"text7"];
    }
  }

  if (self->_text_8)
  {
    text8 = [(_SFPBRFSummaryItemPairCardSection *)self text];
    dictionaryRepresentation8 = [text8 dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"text8"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"text8"];
    }
  }

  if (self->_thumbnail_1)
  {
    thumbnail = [(_SFPBRFSummaryItemPairCardSection *)self thumbnail];
    dictionaryRepresentation9 = [thumbnail dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"thumbnail1"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"thumbnail1"];
    }
  }

  if (self->_thumbnail_2)
  {
    thumbnail2 = [(_SFPBRFSummaryItemPairCardSection *)self thumbnail];
    dictionaryRepresentation10 = [thumbnail2 dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"thumbnail2"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"thumbnail2"];
    }
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_SFPBRFTextProperty *)self->_text_1 hash];
  v4 = [(_SFPBRFTextProperty *)self->_text_2 hash]^ v3;
  v5 = [(_SFPBRFTextProperty *)self->_text_3 hash];
  v6 = v4 ^ v5 ^ [(_SFPBRFVisualProperty *)self->_thumbnail_1 hash];
  v7 = [(_SFPBRFVisualProperty *)self->_thumbnail_2 hash];
  v8 = v7 ^ [(_SFPBRFTextProperty *)self->_text_4 hash];
  v9 = v6 ^ v8 ^ [(_SFPBRFTextProperty *)self->_text_5 hash];
  v10 = [(_SFPBRFTextProperty *)self->_text_6 hash];
  v11 = v10 ^ [(_SFPBRFTextProperty *)self->_text_7 hash];
  return v9 ^ v11 ^ [(_SFPBRFTextProperty *)self->_text_8 hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_52;
  }

  text = [(_SFPBRFSummaryItemPairCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_51;
  }

  text3 = [(_SFPBRFSummaryItemPairCardSection *)self text];
  if (text3)
  {
    v8 = text3;
    text4 = [(_SFPBRFSummaryItemPairCardSection *)self text];
    text5 = [equalCopy text];
    v11 = [text4 isEqual:text5];

    if (!v11)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemPairCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_51;
  }

  text6 = [(_SFPBRFSummaryItemPairCardSection *)self text];
  if (text6)
  {
    v13 = text6;
    text7 = [(_SFPBRFSummaryItemPairCardSection *)self text];
    text8 = [equalCopy text];
    v16 = [text7 isEqual:text8];

    if (!v16)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemPairCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_51;
  }

  text9 = [(_SFPBRFSummaryItemPairCardSection *)self text];
  if (text9)
  {
    v18 = text9;
    text10 = [(_SFPBRFSummaryItemPairCardSection *)self text];
    text11 = [equalCopy text];
    v21 = [text10 isEqual:text11];

    if (!v21)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemPairCardSection *)self thumbnail];
  text2 = [equalCopy thumbnail];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_51;
  }

  thumbnail = [(_SFPBRFSummaryItemPairCardSection *)self thumbnail];
  if (thumbnail)
  {
    v23 = thumbnail;
    thumbnail2 = [(_SFPBRFSummaryItemPairCardSection *)self thumbnail];
    thumbnail3 = [equalCopy thumbnail];
    v26 = [thumbnail2 isEqual:thumbnail3];

    if (!v26)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemPairCardSection *)self thumbnail];
  text2 = [equalCopy thumbnail];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_51;
  }

  thumbnail4 = [(_SFPBRFSummaryItemPairCardSection *)self thumbnail];
  if (thumbnail4)
  {
    v28 = thumbnail4;
    thumbnail5 = [(_SFPBRFSummaryItemPairCardSection *)self thumbnail];
    thumbnail6 = [equalCopy thumbnail];
    v31 = [thumbnail5 isEqual:thumbnail6];

    if (!v31)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemPairCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_51;
  }

  text12 = [(_SFPBRFSummaryItemPairCardSection *)self text];
  if (text12)
  {
    v33 = text12;
    text13 = [(_SFPBRFSummaryItemPairCardSection *)self text];
    text14 = [equalCopy text];
    v36 = [text13 isEqual:text14];

    if (!v36)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemPairCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_51;
  }

  text15 = [(_SFPBRFSummaryItemPairCardSection *)self text];
  if (text15)
  {
    v38 = text15;
    text16 = [(_SFPBRFSummaryItemPairCardSection *)self text];
    text17 = [equalCopy text];
    v41 = [text16 isEqual:text17];

    if (!v41)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemPairCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_51;
  }

  text18 = [(_SFPBRFSummaryItemPairCardSection *)self text];
  if (text18)
  {
    v43 = text18;
    text19 = [(_SFPBRFSummaryItemPairCardSection *)self text];
    text20 = [equalCopy text];
    v46 = [text19 isEqual:text20];

    if (!v46)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemPairCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_51;
  }

  text21 = [(_SFPBRFSummaryItemPairCardSection *)self text];
  if (text21)
  {
    v48 = text21;
    text22 = [(_SFPBRFSummaryItemPairCardSection *)self text];
    text23 = [equalCopy text];
    v51 = [text22 isEqual:text23];

    if (!v51)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemPairCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) != (text2 == 0))
  {
    text24 = [(_SFPBRFSummaryItemPairCardSection *)self text];
    if (!text24)
    {

LABEL_55:
      v57 = 1;
      goto LABEL_53;
    }

    v53 = text24;
    text25 = [(_SFPBRFSummaryItemPairCardSection *)self text];
    text26 = [equalCopy text];
    v56 = [text25 isEqual:text26];

    if (v56)
    {
      goto LABEL_55;
    }
  }

  else
  {
LABEL_51:
  }

LABEL_52:
  v57 = 0;
LABEL_53:

  return v57;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  text = [(_SFPBRFSummaryItemPairCardSection *)self text];
  if (text)
  {
    PBDataWriterWriteSubmessage();
  }

  text2 = [(_SFPBRFSummaryItemPairCardSection *)self text];
  if (text2)
  {
    PBDataWriterWriteSubmessage();
  }

  text3 = [(_SFPBRFSummaryItemPairCardSection *)self text];
  if (text3)
  {
    PBDataWriterWriteSubmessage();
  }

  thumbnail = [(_SFPBRFSummaryItemPairCardSection *)self thumbnail];
  if (thumbnail)
  {
    PBDataWriterWriteSubmessage();
  }

  thumbnail2 = [(_SFPBRFSummaryItemPairCardSection *)self thumbnail];
  if (thumbnail2)
  {
    PBDataWriterWriteSubmessage();
  }

  text4 = [(_SFPBRFSummaryItemPairCardSection *)self text];
  if (text4)
  {
    PBDataWriterWriteSubmessage();
  }

  text5 = [(_SFPBRFSummaryItemPairCardSection *)self text];
  if (text5)
  {
    PBDataWriterWriteSubmessage();
  }

  text6 = [(_SFPBRFSummaryItemPairCardSection *)self text];
  if (text6)
  {
    PBDataWriterWriteSubmessage();
  }

  text7 = [(_SFPBRFSummaryItemPairCardSection *)self text];
  if (text7)
  {
    PBDataWriterWriteSubmessage();
  }

  text8 = [(_SFPBRFSummaryItemPairCardSection *)self text];
  if (text8)
  {
    PBDataWriterWriteSubmessage();
  }
}

@end