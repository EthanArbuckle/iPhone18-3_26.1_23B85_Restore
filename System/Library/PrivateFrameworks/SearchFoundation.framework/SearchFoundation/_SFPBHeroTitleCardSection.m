@interface _SFPBHeroTitleCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBHeroTitleCardSection)initWithDictionary:(id)a3;
- (_SFPBHeroTitleCardSection)initWithFacade:(id)a3;
- (_SFPBHeroTitleCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addButtonItems:(id)a3;
- (void)addPunchoutOptions:(id)a3;
- (void)setButtonItems:(id)a3;
- (void)setPunchoutOptions:(id)a3;
- (void)setPunchoutPickerDismissText:(id)a3;
- (void)setPunchoutPickerTitle:(id)a3;
- (void)setType:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBHeroTitleCardSection

- (_SFPBHeroTitleCardSection)initWithFacade:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBHeroTitleCardSection *)self init];
  if (v5)
  {
    v6 = [v4 punchoutOptions];
    if (v6)
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
    v8 = [v4 punchoutOptions];
    v9 = [v8 countByEnumeratingWithState:&v47 objects:v52 count:16];
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

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v47 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v10);
    }

    [(_SFPBHeroTitleCardSection *)v5 setPunchoutOptions:v7];
    v14 = [v4 punchoutPickerTitle];

    if (v14)
    {
      v15 = [v4 punchoutPickerTitle];
      [(_SFPBHeroTitleCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [v4 punchoutPickerDismissText];

    if (v16)
    {
      v17 = [v4 punchoutPickerDismissText];
      [(_SFPBHeroTitleCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    if ([v4 hasCanBeHidden])
    {
      -[_SFPBHeroTitleCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v4 canBeHidden]);
    }

    if ([v4 hasHasTopPadding])
    {
      -[_SFPBHeroTitleCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v4 hasTopPadding]);
    }

    if ([v4 hasHasBottomPadding])
    {
      -[_SFPBHeroTitleCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v4 hasBottomPadding]);
    }

    v18 = [v4 type];

    if (v18)
    {
      v19 = [v4 type];
      [(_SFPBHeroTitleCardSection *)v5 setType:v19];
    }

    if ([v4 hasSeparatorStyle])
    {
      -[_SFPBHeroTitleCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v4 separatorStyle]);
    }

    v20 = [v4 backgroundColor];

    if (v20)
    {
      v21 = [_SFPBColor alloc];
      v22 = [v4 backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:v22];
      [(_SFPBHeroTitleCardSection *)v5 setBackgroundColor:v23];
    }

    v24 = [v4 title];

    if (v24)
    {
      v25 = [_SFPBRichText alloc];
      v26 = [v4 title];
      v27 = [(_SFPBRichText *)v25 initWithFacade:v26];
      [(_SFPBHeroTitleCardSection *)v5 setTitle:v27];
    }

    v28 = [v4 subtitle];

    if (v28)
    {
      v29 = [_SFPBRichText alloc];
      v30 = [v4 subtitle];
      v31 = [(_SFPBRichText *)v29 initWithFacade:v30];
      [(_SFPBHeroTitleCardSection *)v5 setSubtitle:v31];
    }

    v32 = [v4 buttonItems];
    if (v32)
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
    v34 = [v4 buttonItems];
    v35 = [v34 countByEnumeratingWithState:&v43 objects:v51 count:16];
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
            objc_enumerationMutation(v34);
          }

          v39 = [[_SFPBButtonItem alloc] initWithFacade:*(*(&v43 + 1) + 8 * j)];
          if (v39)
          {
            [v33 addObject:v39];
          }
        }

        v36 = [v34 countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v36);
    }

    [(_SFPBHeroTitleCardSection *)v5 setButtonItems:v33];
    if ([v4 hasMaxVisibleButtonItems])
    {
      -[_SFPBHeroTitleCardSection setMaxVisibleButtonItems:](v5, "setMaxVisibleButtonItems:", [v4 maxVisibleButtonItems]);
    }

    v40 = v5;
  }

  v41 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBHeroTitleCardSection)initWithDictionary:(id)a3
{
  v67 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v64.receiver = self;
  v64.super_class = _SFPBHeroTitleCardSection;
  v5 = [(_SFPBHeroTitleCardSection *)&v64 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"punchoutOptions"];
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

    v14 = [v4 objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBHeroTitleCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBHeroTitleCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBHeroTitleCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v18 BOOLValue]);
    }

    v19 = [v4 objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    v55 = v19;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBHeroTitleCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v19 BOOLValue]);
    }

    v20 = [v4 objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    v54 = v20;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBHeroTitleCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v20 BOOLValue]);
    }

    v21 = [v4 objectForKeyedSubscript:@"type"];
    objc_opt_class();
    v53 = v21;
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBHeroTitleCardSection *)v5 setType:v22];
    }

    v23 = [v4 objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBHeroTitleCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v23 intValue]);
    }

    v24 = [v4 objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    v52 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBColor alloc] initWithDictionary:v24];
      [(_SFPBHeroTitleCardSection *)v5 setBackgroundColor:v25];
    }

    v50 = v18;
    v26 = [v4 objectForKeyedSubscript:@"title"];
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

    v32 = [v4 objectForKeyedSubscript:@"subtitle"];
    objc_opt_class();
    v51 = v32;
    if (objc_opt_isKindOfClass())
    {
      v33 = [[_SFPBRichText alloc] initWithDictionary:v32];
      [(_SFPBHeroTitleCardSection *)v5 setSubtitle:v33];
    }

    v34 = [v4 objectForKeyedSubscript:@"buttonItems"];
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

    v42 = [v4 objectForKeyedSubscript:@"maxVisibleButtonItems"];
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

- (_SFPBHeroTitleCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBHeroTitleCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBHeroTitleCardSection *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_backgroundColor)
  {
    v4 = [(_SFPBHeroTitleCardSection *)self backgroundColor];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"backgroundColor"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"backgroundColor"];
    }
  }

  if ([(NSArray *)self->_buttonItems count])
  {
    v7 = [MEMORY[0x1E695DF70] array];
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

          v13 = [*(*(&v47 + 1) + 8 * i) dictionaryRepresentation];
          if (v13)
          {
            [v7 addObject:v13];
          }

          else
          {
            v14 = [MEMORY[0x1E695DFB0] null];
            [v7 addObject:v14];
          }
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKeyedSubscript:@"buttonItems"];
  }

  if (self->_canBeHidden)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBHeroTitleCardSection canBeHidden](self, "canBeHidden")}];
    [v3 setObject:v15 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_hasBottomPadding)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBHeroTitleCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [v3 setObject:v16 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBHeroTitleCardSection hasTopPadding](self, "hasTopPadding")}];
    [v3 setObject:v17 forKeyedSubscript:@"hasTopPadding"];
  }

  if (self->_maxVisibleButtonItems)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_SFPBHeroTitleCardSection maxVisibleButtonItems](self, "maxVisibleButtonItems")}];
    [v3 setObject:v18 forKeyedSubscript:@"maxVisibleButtonItems"];
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    v19 = [MEMORY[0x1E695DF70] array];
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

          v25 = [*(*(&v43 + 1) + 8 * j) dictionaryRepresentation];
          if (v25)
          {
            [v19 addObject:v25];
          }

          else
          {
            v26 = [MEMORY[0x1E695DFB0] null];
            [v19 addObject:v26];
          }
        }

        v22 = [(NSArray *)v20 countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v22);
    }

    [v3 setObject:v19 forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    v27 = [(_SFPBHeroTitleCardSection *)self punchoutPickerDismissText];
    v28 = [v27 copy];
    [v3 setObject:v28 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    v29 = [(_SFPBHeroTitleCardSection *)self punchoutPickerTitle];
    v30 = [v29 copy];
    [v3 setObject:v30 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    v31 = [(_SFPBHeroTitleCardSection *)self separatorStyle];
    if (v31 >= 6)
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v31];
    }

    else
    {
      v32 = off_1E7ACE580[v31];
    }

    [v3 setObject:v32 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_subtitle)
  {
    v33 = [(_SFPBHeroTitleCardSection *)self subtitle];
    v34 = [v33 dictionaryRepresentation];
    if (v34)
    {
      [v3 setObject:v34 forKeyedSubscript:@"subtitle"];
    }

    else
    {
      v35 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v35 forKeyedSubscript:@"subtitle"];
    }
  }

  if (self->_title)
  {
    v36 = [(_SFPBHeroTitleCardSection *)self title];
    v37 = [v36 dictionaryRepresentation];
    if (v37)
    {
      [v3 setObject:v37 forKeyedSubscript:@"title"];
    }

    else
    {
      v38 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v38 forKeyedSubscript:@"title"];
    }
  }

  if (self->_type)
  {
    v39 = [(_SFPBHeroTitleCardSection *)self type];
    v40 = [v39 copy];
    [v3 setObject:v40 forKeyedSubscript:@"type"];
  }

  v41 = *MEMORY[0x1E69E9840];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_46;
  }

  v5 = [(_SFPBHeroTitleCardSection *)self punchoutOptions];
  v6 = [v4 punchoutOptions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_45;
  }

  v7 = [(_SFPBHeroTitleCardSection *)self punchoutOptions];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBHeroTitleCardSection *)self punchoutOptions];
    v10 = [v4 punchoutOptions];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  v5 = [(_SFPBHeroTitleCardSection *)self punchoutPickerTitle];
  v6 = [v4 punchoutPickerTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_45;
  }

  v12 = [(_SFPBHeroTitleCardSection *)self punchoutPickerTitle];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBHeroTitleCardSection *)self punchoutPickerTitle];
    v15 = [v4 punchoutPickerTitle];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  v5 = [(_SFPBHeroTitleCardSection *)self punchoutPickerDismissText];
  v6 = [v4 punchoutPickerDismissText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_45;
  }

  v17 = [(_SFPBHeroTitleCardSection *)self punchoutPickerDismissText];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBHeroTitleCardSection *)self punchoutPickerDismissText];
    v20 = [v4 punchoutPickerDismissText];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [v4 canBeHidden])
  {
    goto LABEL_46;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [v4 hasTopPadding])
  {
    goto LABEL_46;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [v4 hasBottomPadding])
  {
    goto LABEL_46;
  }

  v5 = [(_SFPBHeroTitleCardSection *)self type];
  v6 = [v4 type];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_45;
  }

  v25 = [(_SFPBHeroTitleCardSection *)self type];
  if (v25)
  {
    v26 = v25;
    v27 = [(_SFPBHeroTitleCardSection *)self type];
    v28 = [v4 type];
    v29 = [v27 isEqual:v28];

    if (!v29)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [v4 separatorStyle])
  {
    goto LABEL_46;
  }

  v5 = [(_SFPBHeroTitleCardSection *)self backgroundColor];
  v6 = [v4 backgroundColor];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_45;
  }

  v31 = [(_SFPBHeroTitleCardSection *)self backgroundColor];
  if (v31)
  {
    v32 = v31;
    v33 = [(_SFPBHeroTitleCardSection *)self backgroundColor];
    v34 = [v4 backgroundColor];
    v35 = [v33 isEqual:v34];

    if (!v35)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  v5 = [(_SFPBHeroTitleCardSection *)self title];
  v6 = [v4 title];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_45;
  }

  v36 = [(_SFPBHeroTitleCardSection *)self title];
  if (v36)
  {
    v37 = v36;
    v38 = [(_SFPBHeroTitleCardSection *)self title];
    v39 = [v4 title];
    v40 = [v38 isEqual:v39];

    if (!v40)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  v5 = [(_SFPBHeroTitleCardSection *)self subtitle];
  v6 = [v4 subtitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_45;
  }

  v41 = [(_SFPBHeroTitleCardSection *)self subtitle];
  if (v41)
  {
    v42 = v41;
    v43 = [(_SFPBHeroTitleCardSection *)self subtitle];
    v44 = [v4 subtitle];
    v45 = [v43 isEqual:v44];

    if (!v45)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  v5 = [(_SFPBHeroTitleCardSection *)self buttonItems];
  v6 = [v4 buttonItems];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_45:

    goto LABEL_46;
  }

  v46 = [(_SFPBHeroTitleCardSection *)self buttonItems];
  if (!v46)
  {

LABEL_49:
    maxVisibleButtonItems = self->_maxVisibleButtonItems;
    v51 = maxVisibleButtonItems == [v4 maxVisibleButtonItems];
    goto LABEL_47;
  }

  v47 = v46;
  v48 = [(_SFPBHeroTitleCardSection *)self buttonItems];
  v49 = [v4 buttonItems];
  v50 = [v48 isEqual:v49];

  if (v50)
  {
    goto LABEL_49;
  }

LABEL_46:
  v51 = 0;
LABEL_47:

  return v51;
}

- (void)writeTo:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBHeroTitleCardSection *)self punchoutOptions];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v28 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

  v11 = [(_SFPBHeroTitleCardSection *)self punchoutPickerTitle];
  if (v11)
  {
    PBDataWriterWriteStringField();
  }

  v12 = [(_SFPBHeroTitleCardSection *)self punchoutPickerDismissText];
  if (v12)
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

  v13 = [(_SFPBHeroTitleCardSection *)self type];
  if (v13)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBHeroTitleCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  v14 = [(_SFPBHeroTitleCardSection *)self backgroundColor];
  if (v14)
  {
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_SFPBHeroTitleCardSection *)self title];
  if (v15)
  {
    PBDataWriterWriteSubmessage();
  }

  v16 = [(_SFPBHeroTitleCardSection *)self subtitle];
  if (v16)
  {
    PBDataWriterWriteSubmessage();
  }

  v17 = [(_SFPBHeroTitleCardSection *)self buttonItems];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = [v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
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
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v24 + 1) + 8 * v21);
        PBDataWriterWriteSubmessage();
        ++v21;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v19);
  }

  if ([(_SFPBHeroTitleCardSection *)self maxVisibleButtonItems])
  {
    PBDataWriterWriteUint64Field();
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)addButtonItems:(id)a3
{
  v4 = a3;
  buttonItems = self->_buttonItems;
  v8 = v4;
  if (!buttonItems)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_buttonItems;
    self->_buttonItems = v6;

    v4 = v8;
    buttonItems = self->_buttonItems;
  }

  [(NSArray *)buttonItems addObject:v4];
}

- (void)setButtonItems:(id)a3
{
  v4 = [a3 copy];
  buttonItems = self->_buttonItems;
  self->_buttonItems = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setType:(id)a3
{
  v4 = [a3 copy];
  type = self->_type;
  self->_type = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPunchoutPickerDismissText:(id)a3
{
  v4 = [a3 copy];
  punchoutPickerDismissText = self->_punchoutPickerDismissText;
  self->_punchoutPickerDismissText = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPunchoutPickerTitle:(id)a3
{
  v4 = [a3 copy];
  punchoutPickerTitle = self->_punchoutPickerTitle;
  self->_punchoutPickerTitle = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addPunchoutOptions:(id)a3
{
  v4 = a3;
  punchoutOptions = self->_punchoutOptions;
  v8 = v4;
  if (!punchoutOptions)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_punchoutOptions;
    self->_punchoutOptions = v6;

    v4 = v8;
    punchoutOptions = self->_punchoutOptions;
  }

  [(NSArray *)punchoutOptions addObject:v4];
}

- (void)setPunchoutOptions:(id)a3
{
  v4 = [a3 copy];
  punchoutOptions = self->_punchoutOptions;
  self->_punchoutOptions = v4;

  MEMORY[0x1EEE66BB8]();
}

@end