@interface _SFPBFlightCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBFlightCardSection)initWithDictionary:(id)dictionary;
- (_SFPBFlightCardSection)initWithFacade:(id)facade;
- (_SFPBFlightCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPunchoutOptions:(id)options;
- (void)setPunchoutOptions:(id)options;
- (void)setPunchoutPickerDismissText:(id)text;
- (void)setPunchoutPickerTitle:(id)title;
- (void)setType:(id)type;
- (void)writeTo:(id)to;
@end

@implementation _SFPBFlightCardSection

- (_SFPBFlightCardSection)initWithFacade:(id)facade
{
  v36 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBFlightCardSection *)self init];
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

    [(_SFPBFlightCardSection *)v5 setPunchoutOptions:v7];
    punchoutPickerTitle = [facadeCopy punchoutPickerTitle];

    if (punchoutPickerTitle)
    {
      punchoutPickerTitle2 = [facadeCopy punchoutPickerTitle];
      [(_SFPBFlightCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle2];
    }

    punchoutPickerDismissText = [facadeCopy punchoutPickerDismissText];

    if (punchoutPickerDismissText)
    {
      punchoutPickerDismissText2 = [facadeCopy punchoutPickerDismissText];
      [(_SFPBFlightCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText2];
    }

    if ([facadeCopy hasCanBeHidden])
    {
      -[_SFPBFlightCardSection setCanBeHidden:](v5, "setCanBeHidden:", [facadeCopy canBeHidden]);
    }

    if ([facadeCopy hasHasTopPadding])
    {
      -[_SFPBFlightCardSection setHasTopPadding:](v5, "setHasTopPadding:", [facadeCopy hasTopPadding]);
    }

    if ([facadeCopy hasHasBottomPadding])
    {
      -[_SFPBFlightCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [facadeCopy hasBottomPadding]);
    }

    type = [facadeCopy type];

    if (type)
    {
      type2 = [facadeCopy type];
      [(_SFPBFlightCardSection *)v5 setType:type2];
    }

    if ([facadeCopy hasSeparatorStyle])
    {
      -[_SFPBFlightCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [facadeCopy separatorStyle]);
    }

    backgroundColor = [facadeCopy backgroundColor];

    if (backgroundColor)
    {
      v21 = [_SFPBColor alloc];
      backgroundColor2 = [facadeCopy backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:backgroundColor2];
      [(_SFPBFlightCardSection *)v5 setBackgroundColor:v23];
    }

    flight = [facadeCopy flight];

    if (flight)
    {
      v25 = [_SFPBFlight alloc];
      flight2 = [facadeCopy flight];
      v27 = [(_SFPBFlight *)v25 initWithFacade:flight2];
      [(_SFPBFlightCardSection *)v5 setFlight:v27];
    }

    if ([facadeCopy hasSelectedLegIndex])
    {
      -[_SFPBFlightCardSection setSelectedLegIndex:](v5, "setSelectedLegIndex:", [facadeCopy selectedLegIndex]);
    }

    v28 = v5;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBFlightCardSection)initWithDictionary:(id)dictionary
{
  v42 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v40.receiver = self;
  v40.super_class = _SFPBFlightCardSection;
  v5 = [(_SFPBFlightCardSection *)&v40 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"punchoutOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v37;
        do
        {
          v11 = 0;
          do
          {
            if (*v37 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v36 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [[_SFPBPunchout alloc] initWithDictionary:v12];
              [(_SFPBFlightCardSection *)v5 addPunchoutOptions:v13];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v36 objects:v41 count:16];
        }

        while (v9);
      }
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBFlightCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBFlightCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    v33 = v16;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBFlightCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v18 BOOLValue]);
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBFlightCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v19 BOOLValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBFlightCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v20 BOOLValue]);
    }

    v35 = v6;
    v21 = [dictionaryCopy objectForKeyedSubscript:{@"type", v18}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBFlightCardSection *)v5 setType:v22];
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBFlightCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v23 intValue]);
    }

    v34 = v14;
    v24 = [dictionaryCopy objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBColor alloc] initWithDictionary:v24];
      [(_SFPBFlightCardSection *)v5 setBackgroundColor:v25];
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"flight"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [[_SFPBFlight alloc] initWithDictionary:v26];
      [(_SFPBFlightCardSection *)v5 setFlight:v27];
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"selectedLegIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBFlightCardSection setSelectedLegIndex:](v5, "setSelectedLegIndex:", [v28 unsignedIntValue]);
    }

    v29 = v5;
  }

  v30 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBFlightCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBFlightCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBFlightCardSection *)self dictionaryRepresentation];
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
  v37 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_backgroundColor)
  {
    backgroundColor = [(_SFPBFlightCardSection *)self backgroundColor];
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
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBFlightCardSection canBeHidden](self, "canBeHidden")}];
    [dictionary setObject:v7 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_flight)
  {
    flight = [(_SFPBFlightCardSection *)self flight];
    dictionaryRepresentation2 = [flight dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"flight"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"flight"];
    }
  }

  if (self->_hasBottomPadding)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBFlightCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [dictionary setObject:v11 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBFlightCardSection hasTopPadding](self, "hasTopPadding")}];
    [dictionary setObject:v12 forKeyedSubscript:@"hasTopPadding"];
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v14 = self->_punchoutOptions;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v33;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v33 != v17)
          {
            objc_enumerationMutation(v14);
          }

          dictionaryRepresentation3 = [*(*(&v32 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation3)
          {
            [array addObject:dictionaryRepresentation3];
          }

          else
          {
            null3 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null3];
          }
        }

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v16);
    }

    [dictionary setObject:array forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    punchoutPickerDismissText = [(_SFPBFlightCardSection *)self punchoutPickerDismissText];
    v22 = [punchoutPickerDismissText copy];
    [dictionary setObject:v22 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    punchoutPickerTitle = [(_SFPBFlightCardSection *)self punchoutPickerTitle];
    v24 = [punchoutPickerTitle copy];
    [dictionary setObject:v24 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_selectedLegIndex)
  {
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBFlightCardSection selectedLegIndex](self, "selectedLegIndex")}];
    [dictionary setObject:v25 forKeyedSubscript:@"selectedLegIndex"];
  }

  if (self->_separatorStyle)
  {
    separatorStyle = [(_SFPBFlightCardSection *)self separatorStyle];
    if (separatorStyle >= 6)
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", separatorStyle];
    }

    else
    {
      v27 = off_1E7ACE580[separatorStyle];
    }

    [dictionary setObject:v27 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_type)
  {
    type = [(_SFPBFlightCardSection *)self type];
    v29 = [type copy];
    [dictionary setObject:v29 forKeyedSubscript:@"type"];
  }

  v30 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v12 = [(NSArray *)self->_punchoutOptions hash];
  v3 = [(NSString *)self->_punchoutPickerTitle hash];
  v4 = [(NSString *)self->_punchoutPickerDismissText hash];
  if (self->_canBeHidden)
  {
    v5 = 2654435761;
  }

  else
  {
    v5 = 0;
  }

  if (self->_hasTopPadding)
  {
    v6 = 2654435761;
  }

  else
  {
    v6 = 0;
  }

  if (self->_hasBottomPadding)
  {
    v7 = 2654435761;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(NSString *)self->_type hash];
  v9 = 2654435761 * self->_separatorStyle;
  v10 = [(_SFPBColor *)self->_backgroundColor hash];
  return v3 ^ v12 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ [(_SFPBFlight *)self->_flight hash]^ (2654435761 * self->_selectedLegIndex);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_36;
  }

  punchoutOptions = [(_SFPBFlightCardSection *)self punchoutOptions];
  punchoutOptions2 = [equalCopy punchoutOptions];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_35;
  }

  punchoutOptions3 = [(_SFPBFlightCardSection *)self punchoutOptions];
  if (punchoutOptions3)
  {
    v8 = punchoutOptions3;
    punchoutOptions4 = [(_SFPBFlightCardSection *)self punchoutOptions];
    punchoutOptions5 = [equalCopy punchoutOptions];
    v11 = [punchoutOptions4 isEqual:punchoutOptions5];

    if (!v11)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBFlightCardSection *)self punchoutPickerTitle];
  punchoutOptions2 = [equalCopy punchoutPickerTitle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_35;
  }

  punchoutPickerTitle = [(_SFPBFlightCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    v13 = punchoutPickerTitle;
    punchoutPickerTitle2 = [(_SFPBFlightCardSection *)self punchoutPickerTitle];
    punchoutPickerTitle3 = [equalCopy punchoutPickerTitle];
    v16 = [punchoutPickerTitle2 isEqual:punchoutPickerTitle3];

    if (!v16)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBFlightCardSection *)self punchoutPickerDismissText];
  punchoutOptions2 = [equalCopy punchoutPickerDismissText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_35;
  }

  punchoutPickerDismissText = [(_SFPBFlightCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    v18 = punchoutPickerDismissText;
    punchoutPickerDismissText2 = [(_SFPBFlightCardSection *)self punchoutPickerDismissText];
    punchoutPickerDismissText3 = [equalCopy punchoutPickerDismissText];
    v21 = [punchoutPickerDismissText2 isEqual:punchoutPickerDismissText3];

    if (!v21)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [equalCopy canBeHidden])
  {
    goto LABEL_36;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [equalCopy hasTopPadding])
  {
    goto LABEL_36;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [equalCopy hasBottomPadding])
  {
    goto LABEL_36;
  }

  punchoutOptions = [(_SFPBFlightCardSection *)self type];
  punchoutOptions2 = [equalCopy type];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_35;
  }

  type = [(_SFPBFlightCardSection *)self type];
  if (type)
  {
    v26 = type;
    type2 = [(_SFPBFlightCardSection *)self type];
    type3 = [equalCopy type];
    v29 = [type2 isEqual:type3];

    if (!v29)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [equalCopy separatorStyle])
  {
    goto LABEL_36;
  }

  punchoutOptions = [(_SFPBFlightCardSection *)self backgroundColor];
  punchoutOptions2 = [equalCopy backgroundColor];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_35;
  }

  backgroundColor = [(_SFPBFlightCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    v32 = backgroundColor;
    backgroundColor2 = [(_SFPBFlightCardSection *)self backgroundColor];
    backgroundColor3 = [equalCopy backgroundColor];
    v35 = [backgroundColor2 isEqual:backgroundColor3];

    if (!v35)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBFlightCardSection *)self flight];
  punchoutOptions2 = [equalCopy flight];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
LABEL_35:

    goto LABEL_36;
  }

  flight = [(_SFPBFlightCardSection *)self flight];
  if (!flight)
  {

LABEL_39:
    selectedLegIndex = self->_selectedLegIndex;
    v41 = selectedLegIndex == [equalCopy selectedLegIndex];
    goto LABEL_37;
  }

  v37 = flight;
  flight2 = [(_SFPBFlightCardSection *)self flight];
  flight3 = [equalCopy flight];
  v40 = [flight2 isEqual:flight3];

  if (v40)
  {
    goto LABEL_39;
  }

LABEL_36:
  v41 = 0;
LABEL_37:

  return v41;
}

- (void)writeTo:(id)to
{
  v22 = *MEMORY[0x1E69E9840];
  toCopy = to;
  punchoutOptions = [(_SFPBFlightCardSection *)self punchoutOptions];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [punchoutOptions countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(punchoutOptions);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [punchoutOptions countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  punchoutPickerTitle = [(_SFPBFlightCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    PBDataWriterWriteStringField();
  }

  punchoutPickerDismissText = [(_SFPBFlightCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBFlightCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBFlightCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBFlightCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  type = [(_SFPBFlightCardSection *)self type];
  if (type)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBFlightCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  backgroundColor = [(_SFPBFlightCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    PBDataWriterWriteSubmessage();
  }

  flight = [(_SFPBFlightCardSection *)self flight];
  if (flight)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBFlightCardSection *)self selectedLegIndex])
  {
    PBDataWriterWriteUint32Field();
  }

  v16 = *MEMORY[0x1E69E9840];
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