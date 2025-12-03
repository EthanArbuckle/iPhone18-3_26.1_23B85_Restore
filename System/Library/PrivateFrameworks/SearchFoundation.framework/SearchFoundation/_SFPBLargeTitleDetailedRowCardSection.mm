@interface _SFPBLargeTitleDetailedRowCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBLargeTitleDetailedRowCardSection)initWithDictionary:(id)dictionary;
- (_SFPBLargeTitleDetailedRowCardSection)initWithFacade:(id)facade;
- (_SFPBLargeTitleDetailedRowCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPunchoutOptions:(id)options;
- (void)addTrailingButtonItems:(id)items;
- (void)setPunchoutOptions:(id)options;
- (void)setPunchoutPickerDismissText:(id)text;
- (void)setPunchoutPickerTitle:(id)title;
- (void)setTrailingButtonItems:(id)items;
- (void)setType:(id)type;
- (void)writeTo:(id)to;
@end

@implementation _SFPBLargeTitleDetailedRowCardSection

- (_SFPBLargeTitleDetailedRowCardSection)initWithFacade:(id)facade
{
  v53 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBLargeTitleDetailedRowCardSection *)self init];
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
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v47 objects:v52 count:16];
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

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v10);
    }

    [(_SFPBLargeTitleDetailedRowCardSection *)v5 setPunchoutOptions:v7];
    punchoutPickerTitle = [facadeCopy punchoutPickerTitle];

    if (punchoutPickerTitle)
    {
      punchoutPickerTitle2 = [facadeCopy punchoutPickerTitle];
      [(_SFPBLargeTitleDetailedRowCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle2];
    }

    punchoutPickerDismissText = [facadeCopy punchoutPickerDismissText];

    if (punchoutPickerDismissText)
    {
      punchoutPickerDismissText2 = [facadeCopy punchoutPickerDismissText];
      [(_SFPBLargeTitleDetailedRowCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText2];
    }

    if ([facadeCopy hasCanBeHidden])
    {
      -[_SFPBLargeTitleDetailedRowCardSection setCanBeHidden:](v5, "setCanBeHidden:", [facadeCopy canBeHidden]);
    }

    if ([facadeCopy hasHasTopPadding])
    {
      -[_SFPBLargeTitleDetailedRowCardSection setHasTopPadding:](v5, "setHasTopPadding:", [facadeCopy hasTopPadding]);
    }

    if ([facadeCopy hasHasBottomPadding])
    {
      -[_SFPBLargeTitleDetailedRowCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [facadeCopy hasBottomPadding]);
    }

    type = [facadeCopy type];

    if (type)
    {
      type2 = [facadeCopy type];
      [(_SFPBLargeTitleDetailedRowCardSection *)v5 setType:type2];
    }

    if ([facadeCopy hasSeparatorStyle])
    {
      -[_SFPBLargeTitleDetailedRowCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [facadeCopy separatorStyle]);
    }

    backgroundColor = [facadeCopy backgroundColor];

    if (backgroundColor)
    {
      v21 = [_SFPBColor alloc];
      backgroundColor2 = [facadeCopy backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:backgroundColor2];
      [(_SFPBLargeTitleDetailedRowCardSection *)v5 setBackgroundColor:v23];
    }

    title = [facadeCopy title];

    if (title)
    {
      v25 = [_SFPBRichText alloc];
      title2 = [facadeCopy title];
      v27 = [(_SFPBRichText *)v25 initWithFacade:title2];
      [(_SFPBLargeTitleDetailedRowCardSection *)v5 setTitle:v27];
    }

    subtitleButtonItem = [facadeCopy subtitleButtonItem];

    if (subtitleButtonItem)
    {
      v29 = [_SFPBButtonItem alloc];
      subtitleButtonItem2 = [facadeCopy subtitleButtonItem];
      v31 = [(_SFPBButtonItem *)v29 initWithFacade:subtitleButtonItem2];
      [(_SFPBLargeTitleDetailedRowCardSection *)v5 setSubtitleButtonItem:v31];
    }

    trailingButtonItems = [facadeCopy trailingButtonItems];
    if (trailingButtonItems)
    {
      v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v33 = 0;
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    trailingButtonItems2 = [facadeCopy trailingButtonItems];
    v35 = [trailingButtonItems2 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v44;
      do
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v44 != v37)
          {
            objc_enumerationMutation(trailingButtonItems2);
          }

          v39 = [[_SFPBButtonItem alloc] initWithFacade:*(*(&v43 + 1) + 8 * j)];
          if (v39)
          {
            [v33 addObject:v39];
          }
        }

        v36 = [trailingButtonItems2 countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v36);
    }

    [(_SFPBLargeTitleDetailedRowCardSection *)v5 setTrailingButtonItems:v33];
    v40 = v5;
  }

  v41 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBLargeTitleDetailedRowCardSection)initWithDictionary:(id)dictionary
{
  v68 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v65.receiver = self;
  v65.super_class = _SFPBLargeTitleDetailedRowCardSection;
  v5 = [(_SFPBLargeTitleDetailedRowCardSection *)&v65 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"punchoutOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v7 = v6;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v61 objects:v67 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v62;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v62 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v61 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [[_SFPBPunchout alloc] initWithDictionary:v13];
              [(_SFPBLargeTitleDetailedRowCardSection *)v5 addPunchoutOptions:v14];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v61 objects:v67 count:16];
        }

        while (v10);
      }

      v6 = v7;
    }

    v56 = v6;
    v15 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 copy];
      [(_SFPBLargeTitleDetailedRowCardSection *)v5 setPunchoutPickerTitle:v16];
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v17 copy];
      [(_SFPBLargeTitleDetailedRowCardSection *)v5 setPunchoutPickerDismissText:v18];
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBLargeTitleDetailedRowCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v19 BOOLValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    v55 = v20;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBLargeTitleDetailedRowCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v20 BOOLValue]);
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBLargeTitleDetailedRowCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v21 BOOLValue]);
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    objc_opt_class();
    v54 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = v19;
      v24 = [v22 copy];
      [(_SFPBLargeTitleDetailedRowCardSection *)v5 setType:v24];

      v19 = v23;
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    v26 = v15;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBLargeTitleDetailedRowCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v25 intValue]);
    }

    v51 = v25;
    v27 = [dictionaryCopy objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [[_SFPBColor alloc] initWithDictionary:v27];
      [(_SFPBLargeTitleDetailedRowCardSection *)v5 setBackgroundColor:v28];
    }

    v52 = v17;
    v29 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    objc_opt_class();
    v30 = v56;
    if (objc_opt_isKindOfClass())
    {
      v31 = v29;
      v32 = [[_SFPBRichText alloc] initWithDictionary:v29];
      [(_SFPBLargeTitleDetailedRowCardSection *)v5 setTitle:v32];

      v29 = v31;
    }

    v33 = [dictionaryCopy objectForKeyedSubscript:@"subtitleButtonItem"];
    objc_opt_class();
    v53 = v33;
    if (objc_opt_isKindOfClass())
    {
      v34 = [[_SFPBButtonItem alloc] initWithDictionary:v33];
      [(_SFPBLargeTitleDetailedRowCardSection *)v5 setSubtitleButtonItem:v34];
    }

    v35 = [dictionaryCopy objectForKeyedSubscript:@"trailingButtonItems"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v46 = v29;
      v47 = v27;
      v48 = v21;
      v49 = v19;
      v50 = v26;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v36 = v35;
      v37 = [v36 countByEnumeratingWithState:&v57 objects:v66 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v58;
        do
        {
          for (j = 0; j != v38; ++j)
          {
            if (*v58 != v39)
            {
              objc_enumerationMutation(v36);
            }

            v41 = *(*(&v57 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v42 = [[_SFPBButtonItem alloc] initWithDictionary:v41];
              [(_SFPBLargeTitleDetailedRowCardSection *)v5 addTrailingButtonItems:v42];
            }
          }

          v38 = [v36 countByEnumeratingWithState:&v57 objects:v66 count:16];
        }

        while (v38);
      }

      v30 = v56;
      v19 = v49;
      v26 = v50;
      v27 = v47;
      v21 = v48;
      v29 = v46;
    }

    v43 = v5;
  }

  v44 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBLargeTitleDetailedRowCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBLargeTitleDetailedRowCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBLargeTitleDetailedRowCardSection *)self dictionaryRepresentation];
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
  v52 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_backgroundColor)
  {
    backgroundColor = [(_SFPBLargeTitleDetailedRowCardSection *)self backgroundColor];
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
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBLargeTitleDetailedRowCardSection canBeHidden](self, "canBeHidden")}];
    [dictionary setObject:v7 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_hasBottomPadding)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBLargeTitleDetailedRowCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [dictionary setObject:v8 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBLargeTitleDetailedRowCardSection hasTopPadding](self, "hasTopPadding")}];
    [dictionary setObject:v9 forKeyedSubscript:@"hasTopPadding"];
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v11 = self->_punchoutOptions;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v47;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v47 != v14)
          {
            objc_enumerationMutation(v11);
          }

          dictionaryRepresentation2 = [*(*(&v46 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation2)
          {
            [array addObject:dictionaryRepresentation2];
          }

          else
          {
            null2 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null2];
          }
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v13);
    }

    [dictionary setObject:array forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    punchoutPickerDismissText = [(_SFPBLargeTitleDetailedRowCardSection *)self punchoutPickerDismissText];
    v19 = [punchoutPickerDismissText copy];
    [dictionary setObject:v19 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    punchoutPickerTitle = [(_SFPBLargeTitleDetailedRowCardSection *)self punchoutPickerTitle];
    v21 = [punchoutPickerTitle copy];
    [dictionary setObject:v21 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    separatorStyle = [(_SFPBLargeTitleDetailedRowCardSection *)self separatorStyle];
    if (separatorStyle >= 6)
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", separatorStyle];
    }

    else
    {
      v23 = off_1E7ACE580[separatorStyle];
    }

    [dictionary setObject:v23 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_subtitleButtonItem)
  {
    subtitleButtonItem = [(_SFPBLargeTitleDetailedRowCardSection *)self subtitleButtonItem];
    dictionaryRepresentation3 = [subtitleButtonItem dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"subtitleButtonItem"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"subtitleButtonItem"];
    }
  }

  if (self->_title)
  {
    title = [(_SFPBLargeTitleDetailedRowCardSection *)self title];
    dictionaryRepresentation4 = [title dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"title"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"title"];
    }
  }

  if ([(NSArray *)self->_trailingButtonItems count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v31 = self->_trailingButtonItems;
    v32 = [(NSArray *)v31 countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v43;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v43 != v34)
          {
            objc_enumerationMutation(v31);
          }

          dictionaryRepresentation5 = [*(*(&v42 + 1) + 8 * j) dictionaryRepresentation];
          if (dictionaryRepresentation5)
          {
            [array2 addObject:dictionaryRepresentation5];
          }

          else
          {
            null5 = [MEMORY[0x1E695DFB0] null];
            [array2 addObject:null5];
          }
        }

        v33 = [(NSArray *)v31 countByEnumeratingWithState:&v42 objects:v50 count:16];
      }

      while (v33);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"trailingButtonItems"];
  }

  if (self->_type)
  {
    type = [(_SFPBLargeTitleDetailedRowCardSection *)self type];
    v39 = [type copy];
    [dictionary setObject:v39 forKeyedSubscript:@"type"];
  }

  v40 = *MEMORY[0x1E69E9840];

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
  v11 = v10 ^ [(_SFPBRichText *)self->_title hash];
  v12 = v11 ^ [(_SFPBButtonItem *)self->_subtitleButtonItem hash];
  return v9 ^ v12 ^ [(NSArray *)self->_trailingButtonItems hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_46;
  }

  punchoutOptions = [(_SFPBLargeTitleDetailedRowCardSection *)self punchoutOptions];
  punchoutOptions2 = [equalCopy punchoutOptions];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_45;
  }

  punchoutOptions3 = [(_SFPBLargeTitleDetailedRowCardSection *)self punchoutOptions];
  if (punchoutOptions3)
  {
    v8 = punchoutOptions3;
    punchoutOptions4 = [(_SFPBLargeTitleDetailedRowCardSection *)self punchoutOptions];
    punchoutOptions5 = [equalCopy punchoutOptions];
    v11 = [punchoutOptions4 isEqual:punchoutOptions5];

    if (!v11)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBLargeTitleDetailedRowCardSection *)self punchoutPickerTitle];
  punchoutOptions2 = [equalCopy punchoutPickerTitle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_45;
  }

  punchoutPickerTitle = [(_SFPBLargeTitleDetailedRowCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    v13 = punchoutPickerTitle;
    punchoutPickerTitle2 = [(_SFPBLargeTitleDetailedRowCardSection *)self punchoutPickerTitle];
    punchoutPickerTitle3 = [equalCopy punchoutPickerTitle];
    v16 = [punchoutPickerTitle2 isEqual:punchoutPickerTitle3];

    if (!v16)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBLargeTitleDetailedRowCardSection *)self punchoutPickerDismissText];
  punchoutOptions2 = [equalCopy punchoutPickerDismissText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_45;
  }

  punchoutPickerDismissText = [(_SFPBLargeTitleDetailedRowCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    v18 = punchoutPickerDismissText;
    punchoutPickerDismissText2 = [(_SFPBLargeTitleDetailedRowCardSection *)self punchoutPickerDismissText];
    punchoutPickerDismissText3 = [equalCopy punchoutPickerDismissText];
    v21 = [punchoutPickerDismissText2 isEqual:punchoutPickerDismissText3];

    if (!v21)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [equalCopy canBeHidden])
  {
    goto LABEL_46;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [equalCopy hasTopPadding])
  {
    goto LABEL_46;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [equalCopy hasBottomPadding])
  {
    goto LABEL_46;
  }

  punchoutOptions = [(_SFPBLargeTitleDetailedRowCardSection *)self type];
  punchoutOptions2 = [equalCopy type];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_45;
  }

  type = [(_SFPBLargeTitleDetailedRowCardSection *)self type];
  if (type)
  {
    v26 = type;
    type2 = [(_SFPBLargeTitleDetailedRowCardSection *)self type];
    type3 = [equalCopy type];
    v29 = [type2 isEqual:type3];

    if (!v29)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [equalCopy separatorStyle])
  {
    goto LABEL_46;
  }

  punchoutOptions = [(_SFPBLargeTitleDetailedRowCardSection *)self backgroundColor];
  punchoutOptions2 = [equalCopy backgroundColor];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_45;
  }

  backgroundColor = [(_SFPBLargeTitleDetailedRowCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    v32 = backgroundColor;
    backgroundColor2 = [(_SFPBLargeTitleDetailedRowCardSection *)self backgroundColor];
    backgroundColor3 = [equalCopy backgroundColor];
    v35 = [backgroundColor2 isEqual:backgroundColor3];

    if (!v35)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBLargeTitleDetailedRowCardSection *)self title];
  punchoutOptions2 = [equalCopy title];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_45;
  }

  title = [(_SFPBLargeTitleDetailedRowCardSection *)self title];
  if (title)
  {
    v37 = title;
    title2 = [(_SFPBLargeTitleDetailedRowCardSection *)self title];
    title3 = [equalCopy title];
    v40 = [title2 isEqual:title3];

    if (!v40)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBLargeTitleDetailedRowCardSection *)self subtitleButtonItem];
  punchoutOptions2 = [equalCopy subtitleButtonItem];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_45;
  }

  subtitleButtonItem = [(_SFPBLargeTitleDetailedRowCardSection *)self subtitleButtonItem];
  if (subtitleButtonItem)
  {
    v42 = subtitleButtonItem;
    subtitleButtonItem2 = [(_SFPBLargeTitleDetailedRowCardSection *)self subtitleButtonItem];
    subtitleButtonItem3 = [equalCopy subtitleButtonItem];
    v45 = [subtitleButtonItem2 isEqual:subtitleButtonItem3];

    if (!v45)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBLargeTitleDetailedRowCardSection *)self trailingButtonItems];
  punchoutOptions2 = [equalCopy trailingButtonItems];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
LABEL_45:

    goto LABEL_46;
  }

  trailingButtonItems = [(_SFPBLargeTitleDetailedRowCardSection *)self trailingButtonItems];
  if (!trailingButtonItems)
  {

LABEL_49:
    v51 = 1;
    goto LABEL_47;
  }

  v47 = trailingButtonItems;
  trailingButtonItems2 = [(_SFPBLargeTitleDetailedRowCardSection *)self trailingButtonItems];
  trailingButtonItems3 = [equalCopy trailingButtonItems];
  v50 = [trailingButtonItems2 isEqual:trailingButtonItems3];

  if (v50)
  {
    goto LABEL_49;
  }

LABEL_46:
  v51 = 0;
LABEL_47:

  return v51;
}

- (void)writeTo:(id)to
{
  v34 = *MEMORY[0x1E69E9840];
  toCopy = to;
  punchoutOptions = [(_SFPBLargeTitleDetailedRowCardSection *)self punchoutOptions];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = [punchoutOptions countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      v9 = 0;
      do
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(punchoutOptions);
        }

        v10 = *(*(&v28 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [punchoutOptions countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

  punchoutPickerTitle = [(_SFPBLargeTitleDetailedRowCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    PBDataWriterWriteStringField();
  }

  punchoutPickerDismissText = [(_SFPBLargeTitleDetailedRowCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBLargeTitleDetailedRowCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBLargeTitleDetailedRowCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBLargeTitleDetailedRowCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  type = [(_SFPBLargeTitleDetailedRowCardSection *)self type];
  if (type)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBLargeTitleDetailedRowCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  backgroundColor = [(_SFPBLargeTitleDetailedRowCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    PBDataWriterWriteSubmessage();
  }

  title = [(_SFPBLargeTitleDetailedRowCardSection *)self title];
  if (title)
  {
    PBDataWriterWriteSubmessage();
  }

  subtitleButtonItem = [(_SFPBLargeTitleDetailedRowCardSection *)self subtitleButtonItem];
  if (subtitleButtonItem)
  {
    PBDataWriterWriteSubmessage();
  }

  trailingButtonItems = [(_SFPBLargeTitleDetailedRowCardSection *)self trailingButtonItems];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = [trailingButtonItems countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v25;
    do
    {
      v21 = 0;
      do
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(trailingButtonItems);
        }

        v22 = *(*(&v24 + 1) + 8 * v21);
        PBDataWriterWriteSubmessage();
        ++v21;
      }

      while (v19 != v21);
      v19 = [trailingButtonItems countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v19);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)addTrailingButtonItems:(id)items
{
  itemsCopy = items;
  trailingButtonItems = self->_trailingButtonItems;
  v8 = itemsCopy;
  if (!trailingButtonItems)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_trailingButtonItems;
    self->_trailingButtonItems = array;

    itemsCopy = v8;
    trailingButtonItems = self->_trailingButtonItems;
  }

  [(NSArray *)trailingButtonItems addObject:itemsCopy];
}

- (void)setTrailingButtonItems:(id)items
{
  v4 = [items copy];
  trailingButtonItems = self->_trailingButtonItems;
  self->_trailingButtonItems = v4;

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