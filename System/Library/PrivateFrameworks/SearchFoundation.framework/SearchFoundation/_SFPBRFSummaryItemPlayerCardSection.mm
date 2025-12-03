@interface _SFPBRFSummaryItemPlayerCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFSummaryItemPlayerCardSection)initWithDictionary:(id)dictionary;
- (_SFPBRFSummaryItemPlayerCardSection)initWithFacade:(id)facade;
- (_SFPBRFSummaryItemPlayerCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFSummaryItemPlayerCardSection

- (_SFPBRFSummaryItemPlayerCardSection)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRFSummaryItemPlayerCardSection *)self init];
  if (v5)
  {
    text = [facadeCopy text];

    if (text)
    {
      v7 = [_SFPBRFTextProperty alloc];
      text2 = [facadeCopy text];
      v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:text2];
      [(_SFPBRFSummaryItemPlayerCardSection *)v5 setText_1:v9];
    }

    text3 = [facadeCopy text];

    if (text3)
    {
      v11 = [_SFPBRFTextProperty alloc];
      text4 = [facadeCopy text];
      v13 = [(_SFPBRFTextProperty *)v11 initWithFacade:text4];
      [(_SFPBRFSummaryItemPlayerCardSection *)v5 setText_2:v13];
    }

    text5 = [facadeCopy text];

    if (text5)
    {
      v15 = [_SFPBRFTextProperty alloc];
      text6 = [facadeCopy text];
      v17 = [(_SFPBRFTextProperty *)v15 initWithFacade:text6];
      [(_SFPBRFSummaryItemPlayerCardSection *)v5 setText_3:v17];
    }

    text7 = [facadeCopy text];

    if (text7)
    {
      v19 = [_SFPBRFTextProperty alloc];
      text8 = [facadeCopy text];
      v21 = [(_SFPBRFTextProperty *)v19 initWithFacade:text8];
      [(_SFPBRFSummaryItemPlayerCardSection *)v5 setText_4:v21];
    }

    thumbnail = [facadeCopy thumbnail];

    if (thumbnail)
    {
      v23 = [_SFPBRFVisualProperty alloc];
      thumbnail2 = [facadeCopy thumbnail];
      v25 = [(_SFPBRFVisualProperty *)v23 initWithFacade:thumbnail2];
      [(_SFPBRFSummaryItemPlayerCardSection *)v5 setThumbnail:v25];
    }

    player = [facadeCopy player];

    if (player)
    {
      v27 = [_SFPBButtonItem alloc];
      player2 = [facadeCopy player];
      v29 = [(_SFPBButtonItem *)v27 initWithFacade:player2];
      [(_SFPBRFSummaryItemPlayerCardSection *)v5 setPlayer:v29];
    }

    v30 = v5;
  }

  return v5;
}

- (_SFPBRFSummaryItemPlayerCardSection)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = _SFPBRFSummaryItemPlayerCardSection;
  v5 = [(_SFPBRFSummaryItemPlayerCardSection *)&v20 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"text1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFTextProperty alloc] initWithDictionary:v6];
      [(_SFPBRFSummaryItemPlayerCardSection *)v5 setText_1:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"text2"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFTextProperty alloc] initWithDictionary:v8];
      [(_SFPBRFSummaryItemPlayerCardSection *)v5 setText_2:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"text3"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[_SFPBRFTextProperty alloc] initWithDictionary:v10];
      [(_SFPBRFSummaryItemPlayerCardSection *)v5 setText_3:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"text4"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[_SFPBRFTextProperty alloc] initWithDictionary:v12];
      [(_SFPBRFSummaryItemPlayerCardSection *)v5 setText_4:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"thumbnail"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[_SFPBRFVisualProperty alloc] initWithDictionary:v14];
      [(_SFPBRFSummaryItemPlayerCardSection *)v5 setThumbnail:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"player"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[_SFPBButtonItem alloc] initWithDictionary:v16];
      [(_SFPBRFSummaryItemPlayerCardSection *)v5 setPlayer:v17];
    }

    v18 = v5;
  }

  return v5;
}

- (_SFPBRFSummaryItemPlayerCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFSummaryItemPlayerCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFSummaryItemPlayerCardSection *)self dictionaryRepresentation];
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
  if (self->_player)
  {
    player = [(_SFPBRFSummaryItemPlayerCardSection *)self player];
    dictionaryRepresentation = [player dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"player"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"player"];
    }
  }

  if (self->_text_1)
  {
    text = [(_SFPBRFSummaryItemPlayerCardSection *)self text];
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
    text2 = [(_SFPBRFSummaryItemPlayerCardSection *)self text];
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
    text3 = [(_SFPBRFSummaryItemPlayerCardSection *)self text];
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
    text4 = [(_SFPBRFSummaryItemPlayerCardSection *)self text];
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
    thumbnail = [(_SFPBRFSummaryItemPlayerCardSection *)self thumbnail];
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
  v3 = [(_SFPBRFTextProperty *)self->_text_1 hash];
  v4 = [(_SFPBRFTextProperty *)self->_text_2 hash]^ v3;
  v5 = [(_SFPBRFTextProperty *)self->_text_3 hash];
  v6 = v4 ^ v5 ^ [(_SFPBRFTextProperty *)self->_text_4 hash];
  v7 = [(_SFPBRFVisualProperty *)self->_thumbnail hash];
  return v6 ^ v7 ^ [(_SFPBButtonItem *)self->_player hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  text = [(_SFPBRFSummaryItemPlayerCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_31;
  }

  text3 = [(_SFPBRFSummaryItemPlayerCardSection *)self text];
  if (text3)
  {
    v8 = text3;
    text4 = [(_SFPBRFSummaryItemPlayerCardSection *)self text];
    text5 = [equalCopy text];
    v11 = [text4 isEqual:text5];

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemPlayerCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_31;
  }

  text6 = [(_SFPBRFSummaryItemPlayerCardSection *)self text];
  if (text6)
  {
    v13 = text6;
    text7 = [(_SFPBRFSummaryItemPlayerCardSection *)self text];
    text8 = [equalCopy text];
    v16 = [text7 isEqual:text8];

    if (!v16)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemPlayerCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_31;
  }

  text9 = [(_SFPBRFSummaryItemPlayerCardSection *)self text];
  if (text9)
  {
    v18 = text9;
    text10 = [(_SFPBRFSummaryItemPlayerCardSection *)self text];
    text11 = [equalCopy text];
    v21 = [text10 isEqual:text11];

    if (!v21)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemPlayerCardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_31;
  }

  text12 = [(_SFPBRFSummaryItemPlayerCardSection *)self text];
  if (text12)
  {
    v23 = text12;
    text13 = [(_SFPBRFSummaryItemPlayerCardSection *)self text];
    text14 = [equalCopy text];
    v26 = [text13 isEqual:text14];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemPlayerCardSection *)self thumbnail];
  text2 = [equalCopy thumbnail];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_31;
  }

  thumbnail = [(_SFPBRFSummaryItemPlayerCardSection *)self thumbnail];
  if (thumbnail)
  {
    v28 = thumbnail;
    thumbnail2 = [(_SFPBRFSummaryItemPlayerCardSection *)self thumbnail];
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

  text = [(_SFPBRFSummaryItemPlayerCardSection *)self player];
  text2 = [equalCopy player];
  if ((text != 0) != (text2 == 0))
  {
    player = [(_SFPBRFSummaryItemPlayerCardSection *)self player];
    if (!player)
    {

LABEL_35:
      v37 = 1;
      goto LABEL_33;
    }

    v33 = player;
    player2 = [(_SFPBRFSummaryItemPlayerCardSection *)self player];
    player3 = [equalCopy player];
    v36 = [player2 isEqual:player3];

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
  text = [(_SFPBRFSummaryItemPlayerCardSection *)self text];
  if (text)
  {
    PBDataWriterWriteSubmessage();
  }

  text2 = [(_SFPBRFSummaryItemPlayerCardSection *)self text];
  if (text2)
  {
    PBDataWriterWriteSubmessage();
  }

  text3 = [(_SFPBRFSummaryItemPlayerCardSection *)self text];
  if (text3)
  {
    PBDataWriterWriteSubmessage();
  }

  text4 = [(_SFPBRFSummaryItemPlayerCardSection *)self text];
  if (text4)
  {
    PBDataWriterWriteSubmessage();
  }

  thumbnail = [(_SFPBRFSummaryItemPlayerCardSection *)self thumbnail];
  if (thumbnail)
  {
    PBDataWriterWriteSubmessage();
  }

  player = [(_SFPBRFSummaryItemPlayerCardSection *)self player];
  if (player)
  {
    PBDataWriterWriteSubmessage();
  }
}

@end