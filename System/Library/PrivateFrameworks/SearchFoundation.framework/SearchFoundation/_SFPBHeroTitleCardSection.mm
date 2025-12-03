@interface _SFPBHeroTitleCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBHeroTitleCardSection)initWithDictionary:(id)dictionary;
- (_SFPBHeroTitleCardSection)initWithFacade:(id)facade;
- (_SFPBHeroTitleCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addButtonItems:(id)items;
- (void)addPunchoutOptions:(id)options;
- (void)setButtonItems:(id)items;
- (void)setPunchoutOptions:(id)options;
- (void)setPunchoutPickerDismissText:(id)text;
- (void)setPunchoutPickerTitle:(id)title;
- (void)setType:(id)type;
- (void)writeTo:(id)to;
@end

@implementation _SFPBHeroTitleCardSection

- (_SFPBHeroTitleCardSection)initWithFacade:(id)facade
{
  v53 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBHeroTitleCardSection *)self init];
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

    [(_SFPBHeroTitleCardSection *)v5 setPunchoutOptions:v7];
    punchoutPickerTitle = [facadeCopy punchoutPickerTitle];

    if (punchoutPickerTitle)
    {
      punchoutPickerTitle2 = [facadeCopy punchoutPickerTitle];
      [(_SFPBHeroTitleCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle2];
    }

    punchoutPickerDismissText = [facadeCopy punchoutPickerDismissText];

    if (punchoutPickerDismissText)
    {
      punchoutPickerDismissText2 = [facadeCopy punchoutPickerDismissText];
      [(_SFPBHeroTitleCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText2];
    }

    if ([facadeCopy hasCanBeHidden])
    {
      -[_SFPBHeroTitleCardSection setCanBeHidden:](v5, "setCanBeHidden:", [facadeCopy canBeHidden]);
    }

    if ([facadeCopy hasHasTopPadding])
    {
      -[_SFPBHeroTitleCardSection setHasTopPadding:](v5, "setHasTopPadding:", [facadeCopy hasTopPadding]);
    }

    if ([facadeCopy hasHasBottomPadding])
    {
      -[_SFPBHeroTitleCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [facadeCopy hasBottomPadding]);
    }

    type = [facadeCopy type];

    if (type)
    {
      type2 = [facadeCopy type];
      [(_SFPBHeroTitleCardSection *)v5 setType:type2];
    }

    if ([facadeCopy hasSeparatorStyle])
    {
      -[_SFPBHeroTitleCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [facadeCopy separatorStyle]);
    }

    backgroundColor = [facadeCopy backgroundColor];

    if (backgroundColor)
    {
      v21 = [_SFPBColor alloc];
      backgroundColor2 = [facadeCopy backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:backgroundColor2];
      [(_SFPBHeroTitleCardSection *)v5 setBackgroundColor:v23];
    }

    title = [facadeCopy title];

    if (title)
    {
      v25 = [_SFPBRichText alloc];
      title2 = [facadeCopy title];
      v27 = [(_SFPBRichText *)v25 initWithFacade:title2];
      [(_SFPBHeroTitleCardSection *)v5 setTitle:v27];
    }

    subtitle = [facadeCopy subtitle];

    if (subtitle)
    {
      v29 = [_SFPBRichText alloc];
      subtitle2 = [facadeCopy subtitle];
      v31 = [(_SFPBRichText *)v29 initWithFacade:subtitle2];
      [(_SFPBHeroTitleCardSection *)v5 setSubtitle:v31];
    }

    buttonItems = [facadeCopy buttonItems];
    if (buttonItems)
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
    buttonItems2 = [facadeCopy buttonItems];
    v35 = [buttonItems2 countByEnumeratingWithState:&v43 objects:v51 count:16];
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
            objc_enumerationMutation(buttonItems2);
          }

          v39 = [[_SFPBButtonItem alloc] initWithFacade:*(*(&v43 + 1) + 8 * j)];
          if (v39)
          {
            [v33 addObject:v39];
          }
        }

        v36 = [buttonItems2 countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v36);
    }

    [(_SFPBHeroTitleCardSection *)v5 setButtonItems:v33];
    if ([facadeCopy hasMaxVisibleButtonItems])
    {
      -[_SFPBHeroTitleCardSection setMaxVisibleButtonItems:](v5, "setMaxVisibleButtonItems:", [facadeCopy maxVisibleButtonItems]);
    }

    v40 = v5;
  }

  v41 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBHeroTitleCardSection)initWithDictionary:(id)dictionary
{
  v67 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v64.receiver = self;
  v64.super_class = _SFPBHeroTitleCardSection;
  v5 = [(_SFPBHeroTitleCardSection *)&v64 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"punchoutOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v60 objects:v66 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v61;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v61 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v60 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [[_SFPBPunchout alloc] initWithDictionary:v12];
              [(_SFPBHeroTitleCardSection *)v5 addPunchoutOptions:v13];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v60 objects:v66 count:16];
        }

        while (v9);
      }
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBHeroTitleCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBHeroTitleCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBHeroTitleCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v18 BOOLValue]);
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    v55 = v19;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBHeroTitleCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v19 BOOLValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    v54 = v20;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBHeroTitleCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v20 BOOLValue]);
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    objc_opt_class();
    v53 = v21;
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBHeroTitleCardSection *)v5 setType:v22];
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBHeroTitleCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v23 intValue]);
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    v52 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBColor alloc] initWithDictionary:v24];
      [(_SFPBHeroTitleCardSection *)v5 setBackgroundColor:v25];
    }

    v50 = v18;
    v26 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [[_SFPBRichText alloc] initWithDictionary:v26];
      v28 = v26;
      v29 = v23;
      v30 = v16;
      v31 = v27;
      [(_SFPBHeroTitleCardSection *)v5 setTitle:v27];

      v16 = v30;
      v23 = v29;
      v26 = v28;
    }

    v32 = [dictionaryCopy objectForKeyedSubscript:@"subtitle"];
    objc_opt_class();
    v51 = v32;
    if (objc_opt_isKindOfClass())
    {
      v33 = [[_SFPBRichText alloc] initWithDictionary:v32];
      [(_SFPBHeroTitleCardSection *)v5 setSubtitle:v33];
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"buttonItems"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v46 = v23;
      v47 = v16;
      v48 = v14;
      v49 = v6;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v35 = v34;
      v36 = [v35 countByEnumeratingWithState:&v56 objects:v65 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = *v57;
        do
        {
          for (j = 0; j != v37; ++j)
          {
            if (*v57 != v38)
            {
              objc_enumerationMutation(v35);
            }

            v40 = *(*(&v56 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v41 = [[_SFPBButtonItem alloc] initWithDictionary:v40];
              [(_SFPBHeroTitleCardSection *)v5 addButtonItems:v41];
            }
          }

          v37 = [v35 countByEnumeratingWithState:&v56 objects:v65 count:16];
        }

        while (v37);
      }

      v14 = v48;
      v6 = v49;
      v23 = v46;
      v16 = v47;
    }

    v42 = [dictionaryCopy objectForKeyedSubscript:@"maxVisibleButtonItems"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBHeroTitleCardSection setMaxVisibleButtonItems:](v5, "setMaxVisibleButtonItems:", [v42 unsignedLongLongValue]);
    }

    v43 = v5;
  }

  v44 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBHeroTitleCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBHeroTitleCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBHeroTitleCardSection *)self dictionaryRepresentation];
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
  v53 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_backgroundColor)
  {
    backgroundColor = [(_SFPBHeroTitleCardSection *)self backgroundColor];
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

  if ([(NSArray *)self->_buttonItems count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v8 = self->_buttonItems;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v47 objects:v52 count:16];
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
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation2 = [*(*(&v47 + 1) + 8 * i) dictionaryRepresentation];
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

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v10);
    }

    [dictionary setObject:array forKeyedSubscript:@"buttonItems"];
  }

  if (self->_canBeHidden)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBHeroTitleCardSection canBeHidden](self, "canBeHidden")}];
    [dictionary setObject:v15 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_hasBottomPadding)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBHeroTitleCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [dictionary setObject:v16 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBHeroTitleCardSection hasTopPadding](self, "hasTopPadding")}];
    [dictionary setObject:v17 forKeyedSubscript:@"hasTopPadding"];
  }

  if (self->_maxVisibleButtonItems)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_SFPBHeroTitleCardSection maxVisibleButtonItems](self, "maxVisibleButtonItems")}];
    [dictionary setObject:v18 forKeyedSubscript:@"maxVisibleButtonItems"];
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v20 = self->_punchoutOptions;
    v21 = [(NSArray *)v20 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v44;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v44 != v23)
          {
            objc_enumerationMutation(v20);
          }

          dictionaryRepresentation3 = [*(*(&v43 + 1) + 8 * j) dictionaryRepresentation];
          if (dictionaryRepresentation3)
          {
            [array2 addObject:dictionaryRepresentation3];
          }

          else
          {
            null3 = [MEMORY[0x1E695DFB0] null];
            [array2 addObject:null3];
          }
        }

        v22 = [(NSArray *)v20 countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v22);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    punchoutPickerDismissText = [(_SFPBHeroTitleCardSection *)self punchoutPickerDismissText];
    v28 = [punchoutPickerDismissText copy];
    [dictionary setObject:v28 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    punchoutPickerTitle = [(_SFPBHeroTitleCardSection *)self punchoutPickerTitle];
    v30 = [punchoutPickerTitle copy];
    [dictionary setObject:v30 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    separatorStyle = [(_SFPBHeroTitleCardSection *)self separatorStyle];
    if (separatorStyle >= 6)
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", separatorStyle];
    }

    else
    {
      v32 = off_1E7ACE580[separatorStyle];
    }

    [dictionary setObject:v32 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_subtitle)
  {
    subtitle = [(_SFPBHeroTitleCardSection *)self subtitle];
    dictionaryRepresentation4 = [subtitle dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"subtitle"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"subtitle"];
    }
  }

  if (self->_title)
  {
    title = [(_SFPBHeroTitleCardSection *)self title];
    dictionaryRepresentation5 = [title dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"title"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"title"];
    }
  }

  if (self->_type)
  {
    type = [(_SFPBHeroTitleCardSection *)self type];
    v40 = [type copy];
    [dictionary setObject:v40 forKeyedSubscript:@"type"];
  }

  v41 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v14 = [(NSArray *)self->_punchoutOptions hash];
  v13 = [(NSString *)self->_punchoutPickerTitle hash];
  v12 = [(NSString *)self->_punchoutPickerDismissText hash];
  if (self->_canBeHidden)
  {
    v3 = 2654435761;
  }

  else
  {
    v3 = 0;
  }

  if (self->_hasTopPadding)
  {
    v4 = 2654435761;
  }

  else
  {
    v4 = 0;
  }

  if (self->_hasBottomPadding)
  {
    v5 = 2654435761;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NSString *)self->_type hash];
  v7 = 2654435761 * self->_separatorStyle;
  v8 = [(_SFPBColor *)self->_backgroundColor hash];
  v9 = [(_SFPBRichText *)self->_title hash];
  v10 = [(_SFPBRichText *)self->_subtitle hash];
  return v13 ^ v14 ^ v12 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ [(NSArray *)self->_buttonItems hash]^ (2654435761u * self->_maxVisibleButtonItems);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_46;
  }

  punchoutOptions = [(_SFPBHeroTitleCardSection *)self punchoutOptions];
  punchoutOptions2 = [equalCopy punchoutOptions];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_45;
  }

  punchoutOptions3 = [(_SFPBHeroTitleCardSection *)self punchoutOptions];
  if (punchoutOptions3)
  {
    v8 = punchoutOptions3;
    punchoutOptions4 = [(_SFPBHeroTitleCardSection *)self punchoutOptions];
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

  punchoutOptions = [(_SFPBHeroTitleCardSection *)self punchoutPickerTitle];
  punchoutOptions2 = [equalCopy punchoutPickerTitle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_45;
  }

  punchoutPickerTitle = [(_SFPBHeroTitleCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    v13 = punchoutPickerTitle;
    punchoutPickerTitle2 = [(_SFPBHeroTitleCardSection *)self punchoutPickerTitle];
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

  punchoutOptions = [(_SFPBHeroTitleCardSection *)self punchoutPickerDismissText];
  punchoutOptions2 = [equalCopy punchoutPickerDismissText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_45;
  }

  punchoutPickerDismissText = [(_SFPBHeroTitleCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    v18 = punchoutPickerDismissText;
    punchoutPickerDismissText2 = [(_SFPBHeroTitleCardSection *)self punchoutPickerDismissText];
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

  punchoutOptions = [(_SFPBHeroTitleCardSection *)self type];
  punchoutOptions2 = [equalCopy type];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_45;
  }

  type = [(_SFPBHeroTitleCardSection *)self type];
  if (type)
  {
    v26 = type;
    type2 = [(_SFPBHeroTitleCardSection *)self type];
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

  punchoutOptions = [(_SFPBHeroTitleCardSection *)self backgroundColor];
  punchoutOptions2 = [equalCopy backgroundColor];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_45;
  }

  backgroundColor = [(_SFPBHeroTitleCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    v32 = backgroundColor;
    backgroundColor2 = [(_SFPBHeroTitleCardSection *)self backgroundColor];
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

  punchoutOptions = [(_SFPBHeroTitleCardSection *)self title];
  punchoutOptions2 = [equalCopy title];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_45;
  }

  title = [(_SFPBHeroTitleCardSection *)self title];
  if (title)
  {
    v37 = title;
    title2 = [(_SFPBHeroTitleCardSection *)self title];
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

  punchoutOptions = [(_SFPBHeroTitleCardSection *)self subtitle];
  punchoutOptions2 = [equalCopy subtitle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_45;
  }

  subtitle = [(_SFPBHeroTitleCardSection *)self subtitle];
  if (subtitle)
  {
    v42 = subtitle;
    subtitle2 = [(_SFPBHeroTitleCardSection *)self subtitle];
    subtitle3 = [equalCopy subtitle];
    v45 = [subtitle2 isEqual:subtitle3];

    if (!v45)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBHeroTitleCardSection *)self buttonItems];
  punchoutOptions2 = [equalCopy buttonItems];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
LABEL_45:

    goto LABEL_46;
  }

  buttonItems = [(_SFPBHeroTitleCardSection *)self buttonItems];
  if (!buttonItems)
  {

LABEL_49:
    maxVisibleButtonItems = self->_maxVisibleButtonItems;
    v51 = maxVisibleButtonItems == [equalCopy maxVisibleButtonItems];
    goto LABEL_47;
  }

  v47 = buttonItems;
  buttonItems2 = [(_SFPBHeroTitleCardSection *)self buttonItems];
  buttonItems3 = [equalCopy buttonItems];
  v50 = [buttonItems2 isEqual:buttonItems3];

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
  punchoutOptions = [(_SFPBHeroTitleCardSection *)self punchoutOptions];
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

  punchoutPickerTitle = [(_SFPBHeroTitleCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    PBDataWriterWriteStringField();
  }

  punchoutPickerDismissText = [(_SFPBHeroTitleCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBHeroTitleCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBHeroTitleCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBHeroTitleCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  type = [(_SFPBHeroTitleCardSection *)self type];
  if (type)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBHeroTitleCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  backgroundColor = [(_SFPBHeroTitleCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    PBDataWriterWriteSubmessage();
  }

  title = [(_SFPBHeroTitleCardSection *)self title];
  if (title)
  {
    PBDataWriterWriteSubmessage();
  }

  subtitle = [(_SFPBHeroTitleCardSection *)self subtitle];
  if (subtitle)
  {
    PBDataWriterWriteSubmessage();
  }

  buttonItems = [(_SFPBHeroTitleCardSection *)self buttonItems];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = [buttonItems countByEnumeratingWithState:&v24 objects:v32 count:16];
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
          objc_enumerationMutation(buttonItems);
        }

        v22 = *(*(&v24 + 1) + 8 * v21);
        PBDataWriterWriteSubmessage();
        ++v21;
      }

      while (v19 != v21);
      v19 = [buttonItems countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v19);
  }

  if ([(_SFPBHeroTitleCardSection *)self maxVisibleButtonItems])
  {
    PBDataWriterWriteUint64Field();
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)addButtonItems:(id)items
{
  itemsCopy = items;
  buttonItems = self->_buttonItems;
  v8 = itemsCopy;
  if (!buttonItems)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_buttonItems;
    self->_buttonItems = array;

    itemsCopy = v8;
    buttonItems = self->_buttonItems;
  }

  [(NSArray *)buttonItems addObject:itemsCopy];
}

- (void)setButtonItems:(id)items
{
  v4 = [items copy];
  buttonItems = self->_buttonItems;
  self->_buttonItems = v4;

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