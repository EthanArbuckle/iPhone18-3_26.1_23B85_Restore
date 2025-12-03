@interface _SFPBCollectionCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBCollectionCardSection)initWithDictionary:(id)dictionary;
- (_SFPBCollectionCardSection)initWithFacade:(id)facade;
- (_SFPBCollectionCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCardSections:(id)sections;
- (void)addPunchoutOptions:(id)options;
- (void)setCardSections:(id)sections;
- (void)setPunchoutOptions:(id)options;
- (void)setPunchoutPickerDismissText:(id)text;
- (void)setPunchoutPickerTitle:(id)title;
- (void)setType:(id)type;
- (void)writeTo:(id)to;
@end

@implementation _SFPBCollectionCardSection

- (_SFPBCollectionCardSection)initWithFacade:(id)facade
{
  v61 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBCollectionCardSection *)self init];
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

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    punchoutOptions2 = [facadeCopy punchoutOptions];
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v55 objects:v60 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v56;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v56 != v11)
          {
            objc_enumerationMutation(punchoutOptions2);
          }

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v55 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v55 objects:v60 count:16];
      }

      while (v10);
    }

    [(_SFPBCollectionCardSection *)v5 setPunchoutOptions:v7];
    punchoutPickerTitle = [facadeCopy punchoutPickerTitle];

    if (punchoutPickerTitle)
    {
      punchoutPickerTitle2 = [facadeCopy punchoutPickerTitle];
      [(_SFPBCollectionCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle2];
    }

    punchoutPickerDismissText = [facadeCopy punchoutPickerDismissText];

    if (punchoutPickerDismissText)
    {
      punchoutPickerDismissText2 = [facadeCopy punchoutPickerDismissText];
      [(_SFPBCollectionCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText2];
    }

    if ([facadeCopy hasCanBeHidden])
    {
      -[_SFPBCollectionCardSection setCanBeHidden:](v5, "setCanBeHidden:", [facadeCopy canBeHidden]);
    }

    if ([facadeCopy hasHasTopPadding])
    {
      -[_SFPBCollectionCardSection setHasTopPadding:](v5, "setHasTopPadding:", [facadeCopy hasTopPadding]);
    }

    if ([facadeCopy hasHasBottomPadding])
    {
      -[_SFPBCollectionCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [facadeCopy hasBottomPadding]);
    }

    type = [facadeCopy type];

    if (type)
    {
      type2 = [facadeCopy type];
      [(_SFPBCollectionCardSection *)v5 setType:type2];
    }

    if ([facadeCopy hasSeparatorStyle])
    {
      -[_SFPBCollectionCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [facadeCopy separatorStyle]);
    }

    backgroundColor = [facadeCopy backgroundColor];

    if (backgroundColor)
    {
      v21 = [_SFPBColor alloc];
      backgroundColor2 = [facadeCopy backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:backgroundColor2];
      [(_SFPBCollectionCardSection *)v5 setBackgroundColor:v23];
    }

    cardSections = [facadeCopy cardSections];
    if (cardSections)
    {
      v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v25 = 0;
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    cardSections2 = [facadeCopy cardSections];
    v27 = [cardSections2 countByEnumeratingWithState:&v51 objects:v59 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v52;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v52 != v29)
          {
            objc_enumerationMutation(cardSections2);
          }

          v31 = [[_SFPBCardSection alloc] initWithFacade:*(*(&v51 + 1) + 8 * j)];
          if (v31)
          {
            [v25 addObject:v31];
          }
        }

        v28 = [cardSections2 countByEnumeratingWithState:&v51 objects:v59 count:16];
      }

      while (v28);
    }

    [(_SFPBCollectionCardSection *)v5 setCardSections:v25];
    title = [facadeCopy title];

    if (title)
    {
      v33 = [_SFPBRichText alloc];
      title2 = [facadeCopy title];
      v35 = [(_SFPBRichText *)v33 initWithFacade:title2];
      [(_SFPBCollectionCardSection *)v5 setTitle:v35];
    }

    buttonItem = [facadeCopy buttonItem];

    if (buttonItem)
    {
      v37 = [_SFPBCommandButtonItem alloc];
      buttonItem2 = [facadeCopy buttonItem];
      v39 = [(_SFPBCommandButtonItem *)v37 initWithFacade:buttonItem2];
      [(_SFPBCollectionCardSection *)v5 setButtonItem:v39];
    }

    collectionStyle = [facadeCopy collectionStyle];

    if (collectionStyle)
    {
      v41 = [_SFPBCollectionStyle alloc];
      collectionStyle2 = [facadeCopy collectionStyle];
      v43 = [(_SFPBCollectionStyle *)v41 initWithFacade:collectionStyle2];
      [(_SFPBCollectionCardSection *)v5 setCollectionStyle:v43];
    }

    titleButtonItem = [facadeCopy titleButtonItem];

    if (titleButtonItem)
    {
      v45 = [_SFPBCommandButtonItem alloc];
      titleButtonItem2 = [facadeCopy titleButtonItem];
      v47 = [(_SFPBCommandButtonItem *)v45 initWithFacade:titleButtonItem2];
      [(_SFPBCollectionCardSection *)v5 setTitleButtonItem:v47];
    }

    v48 = v5;
  }

  v49 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBCollectionCardSection)initWithDictionary:(id)dictionary
{
  v66 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v63.receiver = self;
  v63.super_class = _SFPBCollectionCardSection;
  v5 = [(_SFPBCollectionCardSection *)&v63 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"punchoutOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v7 = v6;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v59 objects:v65 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v60;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v60 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v59 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [[_SFPBPunchout alloc] initWithDictionary:v13];
              [(_SFPBCollectionCardSection *)v5 addPunchoutOptions:v14];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v59 objects:v65 count:16];
        }

        while (v10);
      }

      v6 = v7;
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 copy];
      [(_SFPBCollectionCardSection *)v5 setPunchoutPickerTitle:v16];
    }

    v53 = v15;
    v17 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v17 copy];
      [(_SFPBCollectionCardSection *)v5 setPunchoutPickerDismissText:v18];
    }

    v52 = v17;
    v19 = [dictionaryCopy objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCollectionCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v19 BOOLValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCollectionCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v20 BOOLValue]);
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCollectionCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v21 BOOLValue]);
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    objc_opt_class();
    v54 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = v19;
      v24 = [v22 copy];
      [(_SFPBCollectionCardSection *)v5 setType:v24];

      v19 = v23;
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCollectionCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v25 intValue]);
    }

    v49 = v25;
    v51 = v20;
    v26 = [dictionaryCopy objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [[_SFPBColor alloc] initWithDictionary:v26];
      [(_SFPBCollectionCardSection *)v5 setBackgroundColor:v27];
    }

    v48 = v26;
    v50 = v21;
    v28 = [dictionaryCopy objectForKeyedSubscript:@"cardSections"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = v19;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v29 = v28;
      v30 = [v29 countByEnumeratingWithState:&v55 objects:v64 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v56;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v56 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v55 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v35 = [[_SFPBCardSection alloc] initWithDictionary:v34];
              [(_SFPBCollectionCardSection *)v5 addCardSections:v35];
            }
          }

          v31 = [v29 countByEnumeratingWithState:&v55 objects:v64 count:16];
        }

        while (v31);
      }

      v19 = v47;
    }

    v36 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = [[_SFPBRichText alloc] initWithDictionary:v36];
      [(_SFPBCollectionCardSection *)v5 setTitle:v37];
    }

    v38 = [dictionaryCopy objectForKeyedSubscript:@"buttonItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = [[_SFPBCommandButtonItem alloc] initWithDictionary:v38];
      [(_SFPBCollectionCardSection *)v5 setButtonItem:v39];
    }

    v40 = [dictionaryCopy objectForKeyedSubscript:@"collectionStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = [[_SFPBCollectionStyle alloc] initWithDictionary:v40];
      [(_SFPBCollectionCardSection *)v5 setCollectionStyle:v41];
    }

    v42 = [dictionaryCopy objectForKeyedSubscript:@"titleButtonItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = [[_SFPBCommandButtonItem alloc] initWithDictionary:v42];
      [(_SFPBCollectionCardSection *)v5 setTitleButtonItem:v43];
    }

    v44 = v5;
  }

  v45 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBCollectionCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBCollectionCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBCollectionCardSection *)self dictionaryRepresentation];
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
  v58 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_backgroundColor)
  {
    backgroundColor = [(_SFPBCollectionCardSection *)self backgroundColor];
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

  if (self->_buttonItem)
  {
    buttonItem = [(_SFPBCollectionCardSection *)self buttonItem];
    dictionaryRepresentation2 = [buttonItem dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"buttonItem"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"buttonItem"];
    }
  }

  if (self->_canBeHidden)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCollectionCardSection canBeHidden](self, "canBeHidden")}];
    [dictionary setObject:v10 forKeyedSubscript:@"canBeHidden"];
  }

  if ([(NSArray *)self->_cardSections count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v12 = self->_cardSections;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v53;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v53 != v15)
          {
            objc_enumerationMutation(v12);
          }

          dictionaryRepresentation3 = [*(*(&v52 + 1) + 8 * i) dictionaryRepresentation];
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

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v14);
    }

    [dictionary setObject:array forKeyedSubscript:@"cardSections"];
  }

  if (self->_collectionStyle)
  {
    collectionStyle = [(_SFPBCollectionCardSection *)self collectionStyle];
    dictionaryRepresentation4 = [collectionStyle dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"collectionStyle"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"collectionStyle"];
    }
  }

  if (self->_hasBottomPadding)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCollectionCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [dictionary setObject:v22 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCollectionCardSection hasTopPadding](self, "hasTopPadding")}];
    [dictionary setObject:v23 forKeyedSubscript:@"hasTopPadding"];
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v25 = self->_punchoutOptions;
    v26 = [(NSArray *)v25 countByEnumeratingWithState:&v48 objects:v56 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v49;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v49 != v28)
          {
            objc_enumerationMutation(v25);
          }

          dictionaryRepresentation5 = [*(*(&v48 + 1) + 8 * j) dictionaryRepresentation];
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

        v27 = [(NSArray *)v25 countByEnumeratingWithState:&v48 objects:v56 count:16];
      }

      while (v27);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    punchoutPickerDismissText = [(_SFPBCollectionCardSection *)self punchoutPickerDismissText];
    v33 = [punchoutPickerDismissText copy];
    [dictionary setObject:v33 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    punchoutPickerTitle = [(_SFPBCollectionCardSection *)self punchoutPickerTitle];
    v35 = [punchoutPickerTitle copy];
    [dictionary setObject:v35 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    separatorStyle = [(_SFPBCollectionCardSection *)self separatorStyle];
    if (separatorStyle >= 6)
    {
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", separatorStyle];
    }

    else
    {
      v37 = off_1E7ACE580[separatorStyle];
    }

    [dictionary setObject:v37 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_title)
  {
    title = [(_SFPBCollectionCardSection *)self title];
    dictionaryRepresentation6 = [title dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"title"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"title"];
    }
  }

  if (self->_titleButtonItem)
  {
    titleButtonItem = [(_SFPBCollectionCardSection *)self titleButtonItem];
    dictionaryRepresentation7 = [titleButtonItem dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"titleButtonItem"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"titleButtonItem"];
    }
  }

  if (self->_type)
  {
    type = [(_SFPBCollectionCardSection *)self type];
    v45 = [type copy];
    [dictionary setObject:v45 forKeyedSubscript:@"type"];
  }

  v46 = *MEMORY[0x1E69E9840];

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
  v11 = v10 ^ [(NSArray *)self->_cardSections hash];
  v12 = v11 ^ [(_SFPBRichText *)self->_title hash];
  v13 = v12 ^ [(_SFPBCommandButtonItem *)self->_buttonItem hash];
  v14 = v13 ^ [(_SFPBCollectionStyle *)self->_collectionStyle hash];
  return v9 ^ v14 ^ [(_SFPBCommandButtonItem *)self->_titleButtonItem hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_56;
  }

  punchoutOptions = [(_SFPBCollectionCardSection *)self punchoutOptions];
  punchoutOptions2 = [equalCopy punchoutOptions];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_55;
  }

  punchoutOptions3 = [(_SFPBCollectionCardSection *)self punchoutOptions];
  if (punchoutOptions3)
  {
    v8 = punchoutOptions3;
    punchoutOptions4 = [(_SFPBCollectionCardSection *)self punchoutOptions];
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

  punchoutOptions = [(_SFPBCollectionCardSection *)self punchoutPickerTitle];
  punchoutOptions2 = [equalCopy punchoutPickerTitle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_55;
  }

  punchoutPickerTitle = [(_SFPBCollectionCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    v13 = punchoutPickerTitle;
    punchoutPickerTitle2 = [(_SFPBCollectionCardSection *)self punchoutPickerTitle];
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

  punchoutOptions = [(_SFPBCollectionCardSection *)self punchoutPickerDismissText];
  punchoutOptions2 = [equalCopy punchoutPickerDismissText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_55;
  }

  punchoutPickerDismissText = [(_SFPBCollectionCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    v18 = punchoutPickerDismissText;
    punchoutPickerDismissText2 = [(_SFPBCollectionCardSection *)self punchoutPickerDismissText];
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

  punchoutOptions = [(_SFPBCollectionCardSection *)self type];
  punchoutOptions2 = [equalCopy type];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_55;
  }

  type = [(_SFPBCollectionCardSection *)self type];
  if (type)
  {
    v26 = type;
    type2 = [(_SFPBCollectionCardSection *)self type];
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

  punchoutOptions = [(_SFPBCollectionCardSection *)self backgroundColor];
  punchoutOptions2 = [equalCopy backgroundColor];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_55;
  }

  backgroundColor = [(_SFPBCollectionCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    v32 = backgroundColor;
    backgroundColor2 = [(_SFPBCollectionCardSection *)self backgroundColor];
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

  punchoutOptions = [(_SFPBCollectionCardSection *)self cardSections];
  punchoutOptions2 = [equalCopy cardSections];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_55;
  }

  cardSections = [(_SFPBCollectionCardSection *)self cardSections];
  if (cardSections)
  {
    v37 = cardSections;
    cardSections2 = [(_SFPBCollectionCardSection *)self cardSections];
    cardSections3 = [equalCopy cardSections];
    v40 = [cardSections2 isEqual:cardSections3];

    if (!v40)
    {
      goto LABEL_56;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBCollectionCardSection *)self title];
  punchoutOptions2 = [equalCopy title];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_55;
  }

  title = [(_SFPBCollectionCardSection *)self title];
  if (title)
  {
    v42 = title;
    title2 = [(_SFPBCollectionCardSection *)self title];
    title3 = [equalCopy title];
    v45 = [title2 isEqual:title3];

    if (!v45)
    {
      goto LABEL_56;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBCollectionCardSection *)self buttonItem];
  punchoutOptions2 = [equalCopy buttonItem];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_55;
  }

  buttonItem = [(_SFPBCollectionCardSection *)self buttonItem];
  if (buttonItem)
  {
    v47 = buttonItem;
    buttonItem2 = [(_SFPBCollectionCardSection *)self buttonItem];
    buttonItem3 = [equalCopy buttonItem];
    v50 = [buttonItem2 isEqual:buttonItem3];

    if (!v50)
    {
      goto LABEL_56;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBCollectionCardSection *)self collectionStyle];
  punchoutOptions2 = [equalCopy collectionStyle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_55;
  }

  collectionStyle = [(_SFPBCollectionCardSection *)self collectionStyle];
  if (collectionStyle)
  {
    v52 = collectionStyle;
    collectionStyle2 = [(_SFPBCollectionCardSection *)self collectionStyle];
    collectionStyle3 = [equalCopy collectionStyle];
    v55 = [collectionStyle2 isEqual:collectionStyle3];

    if (!v55)
    {
      goto LABEL_56;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBCollectionCardSection *)self titleButtonItem];
  punchoutOptions2 = [equalCopy titleButtonItem];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
LABEL_55:

    goto LABEL_56;
  }

  titleButtonItem = [(_SFPBCollectionCardSection *)self titleButtonItem];
  if (!titleButtonItem)
  {

LABEL_59:
    v61 = 1;
    goto LABEL_57;
  }

  v57 = titleButtonItem;
  titleButtonItem2 = [(_SFPBCollectionCardSection *)self titleButtonItem];
  titleButtonItem3 = [equalCopy titleButtonItem];
  v60 = [titleButtonItem2 isEqual:titleButtonItem3];

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
  v36 = *MEMORY[0x1E69E9840];
  toCopy = to;
  punchoutOptions = [(_SFPBCollectionCardSection *)self punchoutOptions];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = [punchoutOptions countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    do
    {
      v9 = 0;
      do
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(punchoutOptions);
        }

        v10 = *(*(&v30 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [punchoutOptions countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v7);
  }

  punchoutPickerTitle = [(_SFPBCollectionCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    PBDataWriterWriteStringField();
  }

  punchoutPickerDismissText = [(_SFPBCollectionCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBCollectionCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBCollectionCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBCollectionCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  type = [(_SFPBCollectionCardSection *)self type];
  if (type)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBCollectionCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  backgroundColor = [(_SFPBCollectionCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    PBDataWriterWriteSubmessage();
  }

  cardSections = [(_SFPBCollectionCardSection *)self cardSections];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v16 = [cardSections countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v27;
    do
    {
      v19 = 0;
      do
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(cardSections);
        }

        v20 = *(*(&v26 + 1) + 8 * v19);
        PBDataWriterWriteSubmessage();
        ++v19;
      }

      while (v17 != v19);
      v17 = [cardSections countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v17);
  }

  title = [(_SFPBCollectionCardSection *)self title];
  if (title)
  {
    PBDataWriterWriteSubmessage();
  }

  buttonItem = [(_SFPBCollectionCardSection *)self buttonItem];
  if (buttonItem)
  {
    PBDataWriterWriteSubmessage();
  }

  collectionStyle = [(_SFPBCollectionCardSection *)self collectionStyle];
  if (collectionStyle)
  {
    PBDataWriterWriteSubmessage();
  }

  titleButtonItem = [(_SFPBCollectionCardSection *)self titleButtonItem];
  if (titleButtonItem)
  {
    PBDataWriterWriteSubmessage();
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)addCardSections:(id)sections
{
  sectionsCopy = sections;
  cardSections = self->_cardSections;
  v8 = sectionsCopy;
  if (!cardSections)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_cardSections;
    self->_cardSections = array;

    sectionsCopy = v8;
    cardSections = self->_cardSections;
  }

  [(NSArray *)cardSections addObject:sectionsCopy];
}

- (void)setCardSections:(id)sections
{
  v4 = [sections copy];
  cardSections = self->_cardSections;
  self->_cardSections = v4;

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