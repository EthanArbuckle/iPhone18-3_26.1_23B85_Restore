@interface _SFPBMapsDetailedRowCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBMapsDetailedRowCardSection)initWithDictionary:(id)dictionary;
- (_SFPBMapsDetailedRowCardSection)initWithFacade:(id)facade;
- (_SFPBMapsDetailedRowCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPunchoutOptions:(id)options;
- (void)setMapsData:(id)data;
- (void)setPinText:(id)text;
- (void)setPunchoutOptions:(id)options;
- (void)setPunchoutPickerDismissText:(id)text;
- (void)setPunchoutPickerTitle:(id)title;
- (void)setType:(id)type;
- (void)writeTo:(id)to;
@end

@implementation _SFPBMapsDetailedRowCardSection

- (_SFPBMapsDetailedRowCardSection)initWithFacade:(id)facade
{
  v36 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBMapsDetailedRowCardSection *)self init];
  if (v5)
  {
    punchoutOptions = [facadeCopy punchoutOptions];
    if (punchoutOptions)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    punchoutOptions2 = [facadeCopy punchoutOptions];
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v32;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(punchoutOptions2);
          }

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v31 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v10);
    }

    [(_SFPBMapsDetailedRowCardSection *)v5 setPunchoutOptions:v7];
    punchoutPickerTitle = [facadeCopy punchoutPickerTitle];

    if (punchoutPickerTitle)
    {
      punchoutPickerTitle2 = [facadeCopy punchoutPickerTitle];
      [(_SFPBMapsDetailedRowCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle2];
    }

    punchoutPickerDismissText = [facadeCopy punchoutPickerDismissText];

    if (punchoutPickerDismissText)
    {
      punchoutPickerDismissText2 = [facadeCopy punchoutPickerDismissText];
      [(_SFPBMapsDetailedRowCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText2];
    }

    if ([facadeCopy hasCanBeHidden])
    {
      -[_SFPBMapsDetailedRowCardSection setCanBeHidden:](v5, "setCanBeHidden:", [facadeCopy canBeHidden]);
    }

    if ([facadeCopy hasHasTopPadding])
    {
      -[_SFPBMapsDetailedRowCardSection setHasTopPadding:](v5, "setHasTopPadding:", [facadeCopy hasTopPadding]);
    }

    if ([facadeCopy hasHasBottomPadding])
    {
      -[_SFPBMapsDetailedRowCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [facadeCopy hasBottomPadding]);
    }

    type = [facadeCopy type];

    if (type)
    {
      type2 = [facadeCopy type];
      [(_SFPBMapsDetailedRowCardSection *)v5 setType:type2];
    }

    if ([facadeCopy hasSeparatorStyle])
    {
      -[_SFPBMapsDetailedRowCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [facadeCopy separatorStyle]);
    }

    backgroundColor = [facadeCopy backgroundColor];

    if (backgroundColor)
    {
      v21 = [_SFPBColor alloc];
      backgroundColor2 = [facadeCopy backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:backgroundColor2];
      [(_SFPBMapsDetailedRowCardSection *)v5 setBackgroundColor:v23];
    }

    mapsData = [facadeCopy mapsData];

    if (mapsData)
    {
      mapsData2 = [facadeCopy mapsData];
      [(_SFPBMapsDetailedRowCardSection *)v5 setMapsData:mapsData2];
    }

    pinText = [facadeCopy pinText];

    if (pinText)
    {
      pinText2 = [facadeCopy pinText];
      [(_SFPBMapsDetailedRowCardSection *)v5 setPinText:pinText2];
    }

    v28 = v5;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBMapsDetailedRowCardSection)initWithDictionary:(id)dictionary
{
  v43 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v41.receiver = self;
  v41.super_class = _SFPBMapsDetailedRowCardSection;
  v5 = [(_SFPBMapsDetailedRowCardSection *)&v41 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"punchoutOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v38;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v38 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v37 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [[_SFPBPunchout alloc] initWithDictionary:v12];
              [(_SFPBMapsDetailedRowCardSection *)v5 addPunchoutOptions:v13];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v37 objects:v42 count:16];
        }

        while (v9);
      }
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBMapsDetailedRowCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v35 = v14;
    v16 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBMapsDetailedRowCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    v34 = v16;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMapsDetailedRowCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v18 BOOLValue]);
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMapsDetailedRowCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v19 BOOLValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMapsDetailedRowCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v20 BOOLValue]);
    }

    v36 = v6;
    v21 = [dictionaryCopy objectForKeyedSubscript:{@"type", v18}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBMapsDetailedRowCardSection *)v5 setType:v22];
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMapsDetailedRowCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v23 intValue]);
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBColor alloc] initWithDictionary:v24];
      [(_SFPBMapsDetailedRowCardSection *)v5 setBackgroundColor:v25];
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"mapsData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v26 options:0];
      [(_SFPBMapsDetailedRowCardSection *)v5 setMapsData:v27];
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"pinText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [v28 copy];
      [(_SFPBMapsDetailedRowCardSection *)v5 setPinText:v29];
    }

    v30 = v5;
  }

  v31 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBMapsDetailedRowCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBMapsDetailedRowCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBMapsDetailedRowCardSection *)self dictionaryRepresentation];
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
  v38 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_backgroundColor)
  {
    backgroundColor = [(_SFPBMapsDetailedRowCardSection *)self backgroundColor];
    dictionaryRepresentation = [backgroundColor dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"backgroundColor"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"backgroundColor"];
    }
  }

  if (self->_canBeHidden)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMapsDetailedRowCardSection canBeHidden](self, "canBeHidden")}];
    [dictionary setObject:v7 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_hasBottomPadding)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMapsDetailedRowCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [dictionary setObject:v8 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMapsDetailedRowCardSection hasTopPadding](self, "hasTopPadding")}];
    [dictionary setObject:v9 forKeyedSubscript:@"hasTopPadding"];
  }

  if (self->_mapsData)
  {
    mapsData = [(_SFPBMapsDetailedRowCardSection *)self mapsData];
    v11 = [mapsData base64EncodedStringWithOptions:0];
    if (v11)
    {
      [dictionary setObject:v11 forKeyedSubscript:@"mapsData"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"mapsData"];
    }
  }

  if (self->_pinText)
  {
    pinText = [(_SFPBMapsDetailedRowCardSection *)self pinText];
    v14 = [pinText copy];
    [dictionary setObject:v14 forKeyedSubscript:@"pinText"];
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v16 = self->_punchoutOptions;
    v17 = [(NSArray *)v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v34;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v34 != v19)
          {
            objc_enumerationMutation(v16);
          }

          dictionaryRepresentation2 = [*(*(&v33 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation2)
          {
            [array addObject:dictionaryRepresentation2];
          }

          else
          {
            null3 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null3];
          }
        }

        v18 = [(NSArray *)v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v18);
    }

    [dictionary setObject:array forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    punchoutPickerDismissText = [(_SFPBMapsDetailedRowCardSection *)self punchoutPickerDismissText];
    v24 = [punchoutPickerDismissText copy];
    [dictionary setObject:v24 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    punchoutPickerTitle = [(_SFPBMapsDetailedRowCardSection *)self punchoutPickerTitle];
    v26 = [punchoutPickerTitle copy];
    [dictionary setObject:v26 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    separatorStyle = [(_SFPBMapsDetailedRowCardSection *)self separatorStyle];
    if (separatorStyle >= 6)
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", separatorStyle];
    }

    else
    {
      v28 = off_1E7ACE580[separatorStyle];
    }

    [dictionary setObject:v28 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_type)
  {
    type = [(_SFPBMapsDetailedRowCardSection *)self type];
    v30 = [type copy];
    [dictionary setObject:v30 forKeyedSubscript:@"type"];
  }

  v31 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_punchoutOptions hash];
  v4 = [(NSString *)self->_punchoutPickerTitle hash];
  v5 = [(NSString *)self->_punchoutPickerDismissText hash];
  if (self->_canBeHidden)
  {
    v6 = 2654435761;
  }

  else
  {
    v6 = 0;
  }

  if (self->_hasTopPadding)
  {
    v7 = 2654435761;
  }

  else
  {
    v7 = 0;
  }

  if (self->_hasBottomPadding)
  {
    v8 = 2654435761;
  }

  else
  {
    v8 = 0;
  }

  v9 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ [(NSString *)self->_type hash]^ (2654435761 * self->_separatorStyle);
  v10 = [(_SFPBColor *)self->_backgroundColor hash];
  v11 = v10 ^ [(NSData *)self->_mapsData hash];
  return v9 ^ v11 ^ [(NSString *)self->_pinText hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_41;
  }

  punchoutOptions = [(_SFPBMapsDetailedRowCardSection *)self punchoutOptions];
  punchoutOptions2 = [equalCopy punchoutOptions];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_40;
  }

  punchoutOptions3 = [(_SFPBMapsDetailedRowCardSection *)self punchoutOptions];
  if (punchoutOptions3)
  {
    v8 = punchoutOptions3;
    punchoutOptions4 = [(_SFPBMapsDetailedRowCardSection *)self punchoutOptions];
    punchoutOptions5 = [equalCopy punchoutOptions];
    v11 = [punchoutOptions4 isEqual:punchoutOptions5];

    if (!v11)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBMapsDetailedRowCardSection *)self punchoutPickerTitle];
  punchoutOptions2 = [equalCopy punchoutPickerTitle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_40;
  }

  punchoutPickerTitle = [(_SFPBMapsDetailedRowCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    v13 = punchoutPickerTitle;
    punchoutPickerTitle2 = [(_SFPBMapsDetailedRowCardSection *)self punchoutPickerTitle];
    punchoutPickerTitle3 = [equalCopy punchoutPickerTitle];
    v16 = [punchoutPickerTitle2 isEqual:punchoutPickerTitle3];

    if (!v16)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBMapsDetailedRowCardSection *)self punchoutPickerDismissText];
  punchoutOptions2 = [equalCopy punchoutPickerDismissText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_40;
  }

  punchoutPickerDismissText = [(_SFPBMapsDetailedRowCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    v18 = punchoutPickerDismissText;
    punchoutPickerDismissText2 = [(_SFPBMapsDetailedRowCardSection *)self punchoutPickerDismissText];
    punchoutPickerDismissText3 = [equalCopy punchoutPickerDismissText];
    v21 = [punchoutPickerDismissText2 isEqual:punchoutPickerDismissText3];

    if (!v21)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [equalCopy canBeHidden])
  {
    goto LABEL_41;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [equalCopy hasTopPadding])
  {
    goto LABEL_41;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [equalCopy hasBottomPadding])
  {
    goto LABEL_41;
  }

  punchoutOptions = [(_SFPBMapsDetailedRowCardSection *)self type];
  punchoutOptions2 = [equalCopy type];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_40;
  }

  type = [(_SFPBMapsDetailedRowCardSection *)self type];
  if (type)
  {
    v26 = type;
    type2 = [(_SFPBMapsDetailedRowCardSection *)self type];
    type3 = [equalCopy type];
    v29 = [type2 isEqual:type3];

    if (!v29)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [equalCopy separatorStyle])
  {
    goto LABEL_41;
  }

  punchoutOptions = [(_SFPBMapsDetailedRowCardSection *)self backgroundColor];
  punchoutOptions2 = [equalCopy backgroundColor];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_40;
  }

  backgroundColor = [(_SFPBMapsDetailedRowCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    v32 = backgroundColor;
    backgroundColor2 = [(_SFPBMapsDetailedRowCardSection *)self backgroundColor];
    backgroundColor3 = [equalCopy backgroundColor];
    v35 = [backgroundColor2 isEqual:backgroundColor3];

    if (!v35)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBMapsDetailedRowCardSection *)self mapsData];
  punchoutOptions2 = [equalCopy mapsData];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_40;
  }

  mapsData = [(_SFPBMapsDetailedRowCardSection *)self mapsData];
  if (mapsData)
  {
    v37 = mapsData;
    mapsData2 = [(_SFPBMapsDetailedRowCardSection *)self mapsData];
    mapsData3 = [equalCopy mapsData];
    v40 = [mapsData2 isEqual:mapsData3];

    if (!v40)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBMapsDetailedRowCardSection *)self pinText];
  punchoutOptions2 = [equalCopy pinText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
LABEL_40:

    goto LABEL_41;
  }

  pinText = [(_SFPBMapsDetailedRowCardSection *)self pinText];
  if (!pinText)
  {

LABEL_44:
    v46 = 1;
    goto LABEL_42;
  }

  v42 = pinText;
  pinText2 = [(_SFPBMapsDetailedRowCardSection *)self pinText];
  pinText3 = [equalCopy pinText];
  v45 = [pinText2 isEqual:pinText3];

  if (v45)
  {
    goto LABEL_44;
  }

LABEL_41:
  v46 = 0;
LABEL_42:

  return v46;
}

- (void)writeTo:(id)to
{
  v23 = *MEMORY[0x1E69E9840];
  toCopy = to;
  punchoutOptions = [(_SFPBMapsDetailedRowCardSection *)self punchoutOptions];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [punchoutOptions countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(punchoutOptions);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [punchoutOptions countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  punchoutPickerTitle = [(_SFPBMapsDetailedRowCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    PBDataWriterWriteStringField();
  }

  punchoutPickerDismissText = [(_SFPBMapsDetailedRowCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBMapsDetailedRowCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBMapsDetailedRowCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBMapsDetailedRowCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  type = [(_SFPBMapsDetailedRowCardSection *)self type];
  if (type)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBMapsDetailedRowCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  backgroundColor = [(_SFPBMapsDetailedRowCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    PBDataWriterWriteSubmessage();
  }

  mapsData = [(_SFPBMapsDetailedRowCardSection *)self mapsData];
  if (mapsData)
  {
    PBDataWriterWriteDataField();
  }

  pinText = [(_SFPBMapsDetailedRowCardSection *)self pinText];
  if (pinText)
  {
    PBDataWriterWriteStringField();
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)setPinText:(id)text
{
  v4 = [text copy];
  pinText = self->_pinText;
  self->_pinText = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setMapsData:(id)data
{
  v4 = [data copy];
  mapsData = self->_mapsData;
  self->_mapsData = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setType:(id)type
{
  v4 = [type copy];
  type = self->_type;
  self->_type = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPunchoutPickerDismissText:(id)text
{
  v4 = [text copy];
  punchoutPickerDismissText = self->_punchoutPickerDismissText;
  self->_punchoutPickerDismissText = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPunchoutPickerTitle:(id)title
{
  v4 = [title copy];
  punchoutPickerTitle = self->_punchoutPickerTitle;
  self->_punchoutPickerTitle = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addPunchoutOptions:(id)options
{
  optionsCopy = options;
  punchoutOptions = self->_punchoutOptions;
  v8 = optionsCopy;
  if (!punchoutOptions)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_punchoutOptions;
    self->_punchoutOptions = array;

    optionsCopy = v8;
    punchoutOptions = self->_punchoutOptions;
  }

  [(NSArray *)punchoutOptions addObject:optionsCopy];
}

- (void)setPunchoutOptions:(id)options
{
  v4 = [options copy];
  punchoutOptions = self->_punchoutOptions;
  self->_punchoutOptions = v4;

  MEMORY[0x1EEE66BB8]();
}

@end