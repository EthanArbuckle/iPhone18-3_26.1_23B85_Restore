@interface _SFPBAttributionFooterCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBAttributionFooterCardSection)initWithDictionary:(id)dictionary;
- (_SFPBAttributionFooterCardSection)initWithFacade:(id)facade;
- (_SFPBAttributionFooterCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPunchoutOptions:(id)options;
- (void)setPunchoutOptions:(id)options;
- (void)setPunchoutPickerDismissText:(id)text;
- (void)setPunchoutPickerTitle:(id)title;
- (void)setType:(id)type;
- (void)writeTo:(id)to;
@end

@implementation _SFPBAttributionFooterCardSection

- (_SFPBAttributionFooterCardSection)initWithFacade:(id)facade
{
  v52 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBAttributionFooterCardSection *)self init];
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

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    punchoutOptions2 = [facadeCopy punchoutOptions];
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v48;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v48 != v11)
          {
            objc_enumerationMutation(punchoutOptions2);
          }

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v47 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v47 objects:v51 count:16];
      }

      while (v10);
    }

    [(_SFPBAttributionFooterCardSection *)v5 setPunchoutOptions:v7];
    punchoutPickerTitle = [facadeCopy punchoutPickerTitle];

    if (punchoutPickerTitle)
    {
      punchoutPickerTitle2 = [facadeCopy punchoutPickerTitle];
      [(_SFPBAttributionFooterCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle2];
    }

    punchoutPickerDismissText = [facadeCopy punchoutPickerDismissText];

    if (punchoutPickerDismissText)
    {
      punchoutPickerDismissText2 = [facadeCopy punchoutPickerDismissText];
      [(_SFPBAttributionFooterCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText2];
    }

    if ([facadeCopy hasCanBeHidden])
    {
      -[_SFPBAttributionFooterCardSection setCanBeHidden:](v5, "setCanBeHidden:", [facadeCopy canBeHidden]);
    }

    if ([facadeCopy hasHasTopPadding])
    {
      -[_SFPBAttributionFooterCardSection setHasTopPadding:](v5, "setHasTopPadding:", [facadeCopy hasTopPadding]);
    }

    if ([facadeCopy hasHasBottomPadding])
    {
      -[_SFPBAttributionFooterCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [facadeCopy hasBottomPadding]);
    }

    type = [facadeCopy type];

    if (type)
    {
      type2 = [facadeCopy type];
      [(_SFPBAttributionFooterCardSection *)v5 setType:type2];
    }

    if ([facadeCopy hasSeparatorStyle])
    {
      -[_SFPBAttributionFooterCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [facadeCopy separatorStyle]);
    }

    backgroundColor = [facadeCopy backgroundColor];

    if (backgroundColor)
    {
      v21 = [_SFPBColor alloc];
      backgroundColor2 = [facadeCopy backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:backgroundColor2];
      [(_SFPBAttributionFooterCardSection *)v5 setBackgroundColor:v23];
    }

    leadingAttribution = [facadeCopy leadingAttribution];

    if (leadingAttribution)
    {
      v25 = [_SFPBRichText alloc];
      leadingAttribution2 = [facadeCopy leadingAttribution];
      v27 = [(_SFPBRichText *)v25 initWithFacade:leadingAttribution2];
      [(_SFPBAttributionFooterCardSection *)v5 setLeadingAttribution:v27];
    }

    leadingAttributionPunchout = [facadeCopy leadingAttributionPunchout];

    if (leadingAttributionPunchout)
    {
      v29 = [_SFPBPunchout alloc];
      leadingAttributionPunchout2 = [facadeCopy leadingAttributionPunchout];
      v31 = [(_SFPBPunchout *)v29 initWithFacade:leadingAttributionPunchout2];
      [(_SFPBAttributionFooterCardSection *)v5 setLeadingAttributionPunchout:v31];
    }

    trailingAttribution = [facadeCopy trailingAttribution];

    if (trailingAttribution)
    {
      v33 = [_SFPBRichText alloc];
      trailingAttribution2 = [facadeCopy trailingAttribution];
      v35 = [(_SFPBRichText *)v33 initWithFacade:trailingAttribution2];
      [(_SFPBAttributionFooterCardSection *)v5 setTrailingAttribution:v35];
    }

    trailingAttributionPunchout = [facadeCopy trailingAttributionPunchout];

    if (trailingAttributionPunchout)
    {
      v37 = [_SFPBPunchout alloc];
      trailingAttributionPunchout2 = [facadeCopy trailingAttributionPunchout];
      v39 = [(_SFPBPunchout *)v37 initWithFacade:trailingAttributionPunchout2];
      [(_SFPBAttributionFooterCardSection *)v5 setTrailingAttributionPunchout:v39];
    }

    trailingAttributionCommand = [facadeCopy trailingAttributionCommand];

    if (trailingAttributionCommand)
    {
      v41 = [_SFPBCommand alloc];
      trailingAttributionCommand2 = [facadeCopy trailingAttributionCommand];
      v43 = [(_SFPBCommand *)v41 initWithFacade:trailingAttributionCommand2];
      [(_SFPBAttributionFooterCardSection *)v5 setTrailingAttributionCommand:v43];
    }

    v44 = v5;
  }

  v45 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBAttributionFooterCardSection)initWithDictionary:(id)dictionary
{
  v52 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v50.receiver = self;
  v50.super_class = _SFPBAttributionFooterCardSection;
  v5 = [(_SFPBAttributionFooterCardSection *)&v50 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"punchoutOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v46 objects:v51 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v47;
        do
        {
          v11 = 0;
          do
          {
            if (*v47 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v46 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [[_SFPBPunchout alloc] initWithDictionary:v12];
              [(_SFPBAttributionFooterCardSection *)v5 addPunchoutOptions:v13];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v46 objects:v51 count:16];
        }

        while (v9);
      }
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBAttributionFooterCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v44 = v14;
    v16 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBAttributionFooterCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    v43 = v16;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBAttributionFooterCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v18 BOOLValue]);
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBAttributionFooterCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v19 BOOLValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBAttributionFooterCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v20 BOOLValue]);
    }

    v42 = v18;
    v45 = v6;
    v21 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBAttributionFooterCardSection *)v5 setType:v22];
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBAttributionFooterCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v23 intValue]);
    }

    v39 = v23;
    v24 = [dictionaryCopy objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBColor alloc] initWithDictionary:v24];
      [(_SFPBAttributionFooterCardSection *)v5 setBackgroundColor:v25];
    }

    v41 = v19;
    v26 = [dictionaryCopy objectForKeyedSubscript:@"leadingAttribution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [[_SFPBRichText alloc] initWithDictionary:v26];
      [(_SFPBAttributionFooterCardSection *)v5 setLeadingAttribution:v27];
    }

    v40 = v20;
    v28 = [dictionaryCopy objectForKeyedSubscript:@"leadingAttributionPunchout"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [[_SFPBPunchout alloc] initWithDictionary:v28];
      [(_SFPBAttributionFooterCardSection *)v5 setLeadingAttributionPunchout:v29];
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"trailingAttribution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [[_SFPBRichText alloc] initWithDictionary:v30];
      [(_SFPBAttributionFooterCardSection *)v5 setTrailingAttribution:v31];
    }

    v32 = [dictionaryCopy objectForKeyedSubscript:@"trailingAttributionPunchout"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [[_SFPBPunchout alloc] initWithDictionary:v32];
      [(_SFPBAttributionFooterCardSection *)v5 setTrailingAttributionPunchout:v33];
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"trailingAttributionCommand"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [[_SFPBCommand alloc] initWithDictionary:v34];
      [(_SFPBAttributionFooterCardSection *)v5 setTrailingAttributionCommand:v35];
    }

    v36 = v5;
  }

  v37 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBAttributionFooterCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBAttributionFooterCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBAttributionFooterCardSection *)self dictionaryRepresentation];
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
  v48 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_backgroundColor)
  {
    backgroundColor = [(_SFPBAttributionFooterCardSection *)self backgroundColor];
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
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBAttributionFooterCardSection canBeHidden](self, "canBeHidden")}];
    [dictionary setObject:v7 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_hasBottomPadding)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBAttributionFooterCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [dictionary setObject:v8 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBAttributionFooterCardSection hasTopPadding](self, "hasTopPadding")}];
    [dictionary setObject:v9 forKeyedSubscript:@"hasTopPadding"];
  }

  if (self->_leadingAttribution)
  {
    leadingAttribution = [(_SFPBAttributionFooterCardSection *)self leadingAttribution];
    dictionaryRepresentation2 = [leadingAttribution dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"leadingAttribution"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"leadingAttribution"];
    }
  }

  if (self->_leadingAttributionPunchout)
  {
    leadingAttributionPunchout = [(_SFPBAttributionFooterCardSection *)self leadingAttributionPunchout];
    dictionaryRepresentation3 = [leadingAttributionPunchout dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"leadingAttributionPunchout"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"leadingAttributionPunchout"];
    }
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v17 = self->_punchoutOptions;
    v18 = [(NSArray *)v17 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v44;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v44 != v20)
          {
            objc_enumerationMutation(v17);
          }

          dictionaryRepresentation4 = [*(*(&v43 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation4)
          {
            [array addObject:dictionaryRepresentation4];
          }

          else
          {
            null4 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null4];
          }
        }

        v19 = [(NSArray *)v17 countByEnumeratingWithState:&v43 objects:v47 count:16];
      }

      while (v19);
    }

    [dictionary setObject:array forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    punchoutPickerDismissText = [(_SFPBAttributionFooterCardSection *)self punchoutPickerDismissText];
    v25 = [punchoutPickerDismissText copy];
    [dictionary setObject:v25 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    punchoutPickerTitle = [(_SFPBAttributionFooterCardSection *)self punchoutPickerTitle];
    v27 = [punchoutPickerTitle copy];
    [dictionary setObject:v27 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    separatorStyle = [(_SFPBAttributionFooterCardSection *)self separatorStyle];
    if (separatorStyle >= 6)
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", separatorStyle];
    }

    else
    {
      v29 = off_1E7ACE580[separatorStyle];
    }

    [dictionary setObject:v29 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_trailingAttribution)
  {
    trailingAttribution = [(_SFPBAttributionFooterCardSection *)self trailingAttribution];
    dictionaryRepresentation5 = [trailingAttribution dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"trailingAttribution"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"trailingAttribution"];
    }
  }

  if (self->_trailingAttributionCommand)
  {
    trailingAttributionCommand = [(_SFPBAttributionFooterCardSection *)self trailingAttributionCommand];
    dictionaryRepresentation6 = [trailingAttributionCommand dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"trailingAttributionCommand"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"trailingAttributionCommand"];
    }
  }

  if (self->_trailingAttributionPunchout)
  {
    trailingAttributionPunchout = [(_SFPBAttributionFooterCardSection *)self trailingAttributionPunchout];
    dictionaryRepresentation7 = [trailingAttributionPunchout dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"trailingAttributionPunchout"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"trailingAttributionPunchout"];
    }
  }

  if (self->_type)
  {
    type = [(_SFPBAttributionFooterCardSection *)self type];
    v40 = [type copy];
    [dictionary setObject:v40 forKeyedSubscript:@"type"];
  }

  v41 = *MEMORY[0x1E69E9840];

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
  v11 = v10 ^ [(_SFPBRichText *)self->_leadingAttribution hash];
  v12 = v11 ^ [(_SFPBPunchout *)self->_leadingAttributionPunchout hash];
  v13 = v12 ^ [(_SFPBRichText *)self->_trailingAttribution hash];
  v14 = v13 ^ [(_SFPBPunchout *)self->_trailingAttributionPunchout hash];
  return v9 ^ v14 ^ [(_SFPBCommand *)self->_trailingAttributionCommand hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_56;
  }

  punchoutOptions = [(_SFPBAttributionFooterCardSection *)self punchoutOptions];
  punchoutOptions2 = [equalCopy punchoutOptions];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_55;
  }

  punchoutOptions3 = [(_SFPBAttributionFooterCardSection *)self punchoutOptions];
  if (punchoutOptions3)
  {
    v8 = punchoutOptions3;
    punchoutOptions4 = [(_SFPBAttributionFooterCardSection *)self punchoutOptions];
    punchoutOptions5 = [equalCopy punchoutOptions];
    v11 = [punchoutOptions4 isEqual:punchoutOptions5];

    if (!v11)
    {
      goto LABEL_56;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBAttributionFooterCardSection *)self punchoutPickerTitle];
  punchoutOptions2 = [equalCopy punchoutPickerTitle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_55;
  }

  punchoutPickerTitle = [(_SFPBAttributionFooterCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    v13 = punchoutPickerTitle;
    punchoutPickerTitle2 = [(_SFPBAttributionFooterCardSection *)self punchoutPickerTitle];
    punchoutPickerTitle3 = [equalCopy punchoutPickerTitle];
    v16 = [punchoutPickerTitle2 isEqual:punchoutPickerTitle3];

    if (!v16)
    {
      goto LABEL_56;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBAttributionFooterCardSection *)self punchoutPickerDismissText];
  punchoutOptions2 = [equalCopy punchoutPickerDismissText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_55;
  }

  punchoutPickerDismissText = [(_SFPBAttributionFooterCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    v18 = punchoutPickerDismissText;
    punchoutPickerDismissText2 = [(_SFPBAttributionFooterCardSection *)self punchoutPickerDismissText];
    punchoutPickerDismissText3 = [equalCopy punchoutPickerDismissText];
    v21 = [punchoutPickerDismissText2 isEqual:punchoutPickerDismissText3];

    if (!v21)
    {
      goto LABEL_56;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [equalCopy canBeHidden])
  {
    goto LABEL_56;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [equalCopy hasTopPadding])
  {
    goto LABEL_56;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [equalCopy hasBottomPadding])
  {
    goto LABEL_56;
  }

  punchoutOptions = [(_SFPBAttributionFooterCardSection *)self type];
  punchoutOptions2 = [equalCopy type];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_55;
  }

  type = [(_SFPBAttributionFooterCardSection *)self type];
  if (type)
  {
    v26 = type;
    type2 = [(_SFPBAttributionFooterCardSection *)self type];
    type3 = [equalCopy type];
    v29 = [type2 isEqual:type3];

    if (!v29)
    {
      goto LABEL_56;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [equalCopy separatorStyle])
  {
    goto LABEL_56;
  }

  punchoutOptions = [(_SFPBAttributionFooterCardSection *)self backgroundColor];
  punchoutOptions2 = [equalCopy backgroundColor];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_55;
  }

  backgroundColor = [(_SFPBAttributionFooterCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    v32 = backgroundColor;
    backgroundColor2 = [(_SFPBAttributionFooterCardSection *)self backgroundColor];
    backgroundColor3 = [equalCopy backgroundColor];
    v35 = [backgroundColor2 isEqual:backgroundColor3];

    if (!v35)
    {
      goto LABEL_56;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBAttributionFooterCardSection *)self leadingAttribution];
  punchoutOptions2 = [equalCopy leadingAttribution];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_55;
  }

  leadingAttribution = [(_SFPBAttributionFooterCardSection *)self leadingAttribution];
  if (leadingAttribution)
  {
    v37 = leadingAttribution;
    leadingAttribution2 = [(_SFPBAttributionFooterCardSection *)self leadingAttribution];
    leadingAttribution3 = [equalCopy leadingAttribution];
    v40 = [leadingAttribution2 isEqual:leadingAttribution3];

    if (!v40)
    {
      goto LABEL_56;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBAttributionFooterCardSection *)self leadingAttributionPunchout];
  punchoutOptions2 = [equalCopy leadingAttributionPunchout];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_55;
  }

  leadingAttributionPunchout = [(_SFPBAttributionFooterCardSection *)self leadingAttributionPunchout];
  if (leadingAttributionPunchout)
  {
    v42 = leadingAttributionPunchout;
    leadingAttributionPunchout2 = [(_SFPBAttributionFooterCardSection *)self leadingAttributionPunchout];
    leadingAttributionPunchout3 = [equalCopy leadingAttributionPunchout];
    v45 = [leadingAttributionPunchout2 isEqual:leadingAttributionPunchout3];

    if (!v45)
    {
      goto LABEL_56;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBAttributionFooterCardSection *)self trailingAttribution];
  punchoutOptions2 = [equalCopy trailingAttribution];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_55;
  }

  trailingAttribution = [(_SFPBAttributionFooterCardSection *)self trailingAttribution];
  if (trailingAttribution)
  {
    v47 = trailingAttribution;
    trailingAttribution2 = [(_SFPBAttributionFooterCardSection *)self trailingAttribution];
    trailingAttribution3 = [equalCopy trailingAttribution];
    v50 = [trailingAttribution2 isEqual:trailingAttribution3];

    if (!v50)
    {
      goto LABEL_56;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBAttributionFooterCardSection *)self trailingAttributionPunchout];
  punchoutOptions2 = [equalCopy trailingAttributionPunchout];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_55;
  }

  trailingAttributionPunchout = [(_SFPBAttributionFooterCardSection *)self trailingAttributionPunchout];
  if (trailingAttributionPunchout)
  {
    v52 = trailingAttributionPunchout;
    trailingAttributionPunchout2 = [(_SFPBAttributionFooterCardSection *)self trailingAttributionPunchout];
    trailingAttributionPunchout3 = [equalCopy trailingAttributionPunchout];
    v55 = [trailingAttributionPunchout2 isEqual:trailingAttributionPunchout3];

    if (!v55)
    {
      goto LABEL_56;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBAttributionFooterCardSection *)self trailingAttributionCommand];
  punchoutOptions2 = [equalCopy trailingAttributionCommand];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
LABEL_55:

    goto LABEL_56;
  }

  trailingAttributionCommand = [(_SFPBAttributionFooterCardSection *)self trailingAttributionCommand];
  if (!trailingAttributionCommand)
  {

LABEL_59:
    v61 = 1;
    goto LABEL_57;
  }

  v57 = trailingAttributionCommand;
  trailingAttributionCommand2 = [(_SFPBAttributionFooterCardSection *)self trailingAttributionCommand];
  trailingAttributionCommand3 = [equalCopy trailingAttributionCommand];
  v60 = [trailingAttributionCommand2 isEqual:trailingAttributionCommand3];

  if (v60)
  {
    goto LABEL_59;
  }

LABEL_56:
  v61 = 0;
LABEL_57:

  return v61;
}

- (void)writeTo:(id)to
{
  v26 = *MEMORY[0x1E69E9840];
  toCopy = to;
  punchoutOptions = [(_SFPBAttributionFooterCardSection *)self punchoutOptions];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [punchoutOptions countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(punchoutOptions);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [punchoutOptions countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  punchoutPickerTitle = [(_SFPBAttributionFooterCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    PBDataWriterWriteStringField();
  }

  punchoutPickerDismissText = [(_SFPBAttributionFooterCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBAttributionFooterCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBAttributionFooterCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBAttributionFooterCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  type = [(_SFPBAttributionFooterCardSection *)self type];
  if (type)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBAttributionFooterCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  backgroundColor = [(_SFPBAttributionFooterCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    PBDataWriterWriteSubmessage();
  }

  leadingAttribution = [(_SFPBAttributionFooterCardSection *)self leadingAttribution];
  if (leadingAttribution)
  {
    PBDataWriterWriteSubmessage();
  }

  leadingAttributionPunchout = [(_SFPBAttributionFooterCardSection *)self leadingAttributionPunchout];
  if (leadingAttributionPunchout)
  {
    PBDataWriterWriteSubmessage();
  }

  trailingAttribution = [(_SFPBAttributionFooterCardSection *)self trailingAttribution];
  if (trailingAttribution)
  {
    PBDataWriterWriteSubmessage();
  }

  trailingAttributionPunchout = [(_SFPBAttributionFooterCardSection *)self trailingAttributionPunchout];
  if (trailingAttributionPunchout)
  {
    PBDataWriterWriteSubmessage();
  }

  trailingAttributionCommand = [(_SFPBAttributionFooterCardSection *)self trailingAttributionCommand];
  if (trailingAttributionCommand)
  {
    PBDataWriterWriteSubmessage();
  }

  v20 = *MEMORY[0x1E69E9840];
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