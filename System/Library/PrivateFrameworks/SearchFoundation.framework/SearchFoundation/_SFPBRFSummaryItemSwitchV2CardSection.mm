@interface _SFPBRFSummaryItemSwitchV2CardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFSummaryItemSwitchV2CardSection)initWithDictionary:(id)dictionary;
- (_SFPBRFSummaryItemSwitchV2CardSection)initWithFacade:(id)facade;
- (_SFPBRFSummaryItemSwitchV2CardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFSummaryItemSwitchV2CardSection

- (_SFPBRFSummaryItemSwitchV2CardSection)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRFSummaryItemSwitchV2CardSection *)self init];
  if (v5)
  {
    if ([facadeCopy hasIs_on])
    {
      -[_SFPBRFSummaryItemSwitchV2CardSection setIs_on:](v5, "setIs_on:", [facadeCopy is_on]);
    }

    text = [facadeCopy text];

    if (text)
    {
      v7 = [_SFPBRFTextProperty alloc];
      text2 = [facadeCopy text];
      v9 = [(_SFPBRFTextProperty *)v7 initWithFacade:text2];
      [(_SFPBRFSummaryItemSwitchV2CardSection *)v5 setText_1:v9];
    }

    text3 = [facadeCopy text];

    if (text3)
    {
      v11 = [_SFPBRFTextProperty alloc];
      text4 = [facadeCopy text];
      v13 = [(_SFPBRFTextProperty *)v11 initWithFacade:text4];
      [(_SFPBRFSummaryItemSwitchV2CardSection *)v5 setText_2:v13];
    }

    text5 = [facadeCopy text];

    if (text5)
    {
      v15 = [_SFPBRFTextProperty alloc];
      text6 = [facadeCopy text];
      v17 = [(_SFPBRFTextProperty *)v15 initWithFacade:text6];
      [(_SFPBRFSummaryItemSwitchV2CardSection *)v5 setText_3:v17];
    }

    text7 = [facadeCopy text];

    if (text7)
    {
      v19 = [_SFPBRFTextProperty alloc];
      text8 = [facadeCopy text];
      v21 = [(_SFPBRFTextProperty *)v19 initWithFacade:text8];
      [(_SFPBRFSummaryItemSwitchV2CardSection *)v5 setText_4:v21];
    }

    thumbnail = [facadeCopy thumbnail];

    if (thumbnail)
    {
      v23 = [_SFPBRFVisualProperty alloc];
      thumbnail2 = [facadeCopy thumbnail];
      v25 = [(_SFPBRFVisualProperty *)v23 initWithFacade:thumbnail2];
      [(_SFPBRFSummaryItemSwitchV2CardSection *)v5 setThumbnail:v25];
    }

    v26 = v5;
  }

  return v5;
}

- (_SFPBRFSummaryItemSwitchV2CardSection)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = _SFPBRFSummaryItemSwitchV2CardSection;
  v5 = [(_SFPBRFSummaryItemSwitchV2CardSection *)&v19 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"isOn"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFSummaryItemSwitchV2CardSection setIs_on:](v5, "setIs_on:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"text1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[_SFPBRFTextProperty alloc] initWithDictionary:v7];
      [(_SFPBRFSummaryItemSwitchV2CardSection *)v5 setText_1:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"text2"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[_SFPBRFTextProperty alloc] initWithDictionary:v9];
      [(_SFPBRFSummaryItemSwitchV2CardSection *)v5 setText_2:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"text3"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[_SFPBRFTextProperty alloc] initWithDictionary:v11];
      [(_SFPBRFSummaryItemSwitchV2CardSection *)v5 setText_3:v12];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"text4"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[_SFPBRFTextProperty alloc] initWithDictionary:v13];
      [(_SFPBRFSummaryItemSwitchV2CardSection *)v5 setText_4:v14];
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"thumbnail"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[_SFPBRFVisualProperty alloc] initWithDictionary:v15];
      [(_SFPBRFSummaryItemSwitchV2CardSection *)v5 setThumbnail:v16];
    }

    v17 = v5;
  }

  return v5;
}

- (_SFPBRFSummaryItemSwitchV2CardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFSummaryItemSwitchV2CardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFSummaryItemSwitchV2CardSection *)self dictionaryRepresentation];
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
  if (self->_is_on)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRFSummaryItemSwitchV2CardSection is_on](self, "is_on")}];
    [dictionary setObject:v4 forKeyedSubscript:@"isOn"];
  }

  if (self->_text_1)
  {
    text = [(_SFPBRFSummaryItemSwitchV2CardSection *)self text];
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
    text2 = [(_SFPBRFSummaryItemSwitchV2CardSection *)self text];
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
    text3 = [(_SFPBRFSummaryItemSwitchV2CardSection *)self text];
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
    text4 = [(_SFPBRFSummaryItemSwitchV2CardSection *)self text];
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
    thumbnail = [(_SFPBRFSummaryItemSwitchV2CardSection *)self thumbnail];
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
  if (self->_is_on)
  {
    v3 = 2654435761;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(_SFPBRFTextProperty *)self->_text_1 hash];
  v5 = v4 ^ [(_SFPBRFTextProperty *)self->_text_2 hash]^ v3;
  v6 = [(_SFPBRFTextProperty *)self->_text_3 hash];
  v7 = v6 ^ [(_SFPBRFTextProperty *)self->_text_4 hash];
  return v5 ^ v7 ^ [(_SFPBRFVisualProperty *)self->_thumbnail hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  is_on = self->_is_on;
  if (is_on != [equalCopy is_on])
  {
    goto LABEL_28;
  }

  text = [(_SFPBRFSummaryItemSwitchV2CardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_27;
  }

  text3 = [(_SFPBRFSummaryItemSwitchV2CardSection *)self text];
  if (text3)
  {
    v9 = text3;
    text4 = [(_SFPBRFSummaryItemSwitchV2CardSection *)self text];
    text5 = [equalCopy text];
    v12 = [text4 isEqual:text5];

    if (!v12)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemSwitchV2CardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_27;
  }

  text6 = [(_SFPBRFSummaryItemSwitchV2CardSection *)self text];
  if (text6)
  {
    v14 = text6;
    text7 = [(_SFPBRFSummaryItemSwitchV2CardSection *)self text];
    text8 = [equalCopy text];
    v17 = [text7 isEqual:text8];

    if (!v17)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemSwitchV2CardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_27;
  }

  text9 = [(_SFPBRFSummaryItemSwitchV2CardSection *)self text];
  if (text9)
  {
    v19 = text9;
    text10 = [(_SFPBRFSummaryItemSwitchV2CardSection *)self text];
    text11 = [equalCopy text];
    v22 = [text10 isEqual:text11];

    if (!v22)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemSwitchV2CardSection *)self text];
  text2 = [equalCopy text];
  if ((text != 0) == (text2 == 0))
  {
    goto LABEL_27;
  }

  text12 = [(_SFPBRFSummaryItemSwitchV2CardSection *)self text];
  if (text12)
  {
    v24 = text12;
    text13 = [(_SFPBRFSummaryItemSwitchV2CardSection *)self text];
    text14 = [equalCopy text];
    v27 = [text13 isEqual:text14];

    if (!v27)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  text = [(_SFPBRFSummaryItemSwitchV2CardSection *)self thumbnail];
  text2 = [equalCopy thumbnail];
  if ((text != 0) != (text2 == 0))
  {
    thumbnail = [(_SFPBRFSummaryItemSwitchV2CardSection *)self thumbnail];
    if (!thumbnail)
    {

LABEL_31:
      v33 = 1;
      goto LABEL_29;
    }

    v29 = thumbnail;
    thumbnail2 = [(_SFPBRFSummaryItemSwitchV2CardSection *)self thumbnail];
    thumbnail3 = [equalCopy thumbnail];
    v32 = [thumbnail2 isEqual:thumbnail3];

    if (v32)
    {
      goto LABEL_31;
    }
  }

  else
  {
LABEL_27:
  }

LABEL_28:
  v33 = 0;
LABEL_29:

  return v33;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_SFPBRFSummaryItemSwitchV2CardSection *)self is_on])
  {
    PBDataWriterWriteBOOLField();
  }

  text = [(_SFPBRFSummaryItemSwitchV2CardSection *)self text];
  if (text)
  {
    PBDataWriterWriteSubmessage();
  }

  text2 = [(_SFPBRFSummaryItemSwitchV2CardSection *)self text];
  if (text2)
  {
    PBDataWriterWriteSubmessage();
  }

  text3 = [(_SFPBRFSummaryItemSwitchV2CardSection *)self text];
  if (text3)
  {
    PBDataWriterWriteSubmessage();
  }

  text4 = [(_SFPBRFSummaryItemSwitchV2CardSection *)self text];
  if (text4)
  {
    PBDataWriterWriteSubmessage();
  }

  thumbnail = [(_SFPBRFSummaryItemSwitchV2CardSection *)self thumbnail];
  if (thumbnail)
  {
    PBDataWriterWriteSubmessage();
  }
}

@end