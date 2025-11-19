@interface _SFPBCollectionCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBCollectionCardSection)initWithDictionary:(id)a3;
- (_SFPBCollectionCardSection)initWithFacade:(id)a3;
- (_SFPBCollectionCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCardSections:(id)a3;
- (void)addPunchoutOptions:(id)a3;
- (void)setCardSections:(id)a3;
- (void)setPunchoutOptions:(id)a3;
- (void)setPunchoutPickerDismissText:(id)a3;
- (void)setPunchoutPickerTitle:(id)a3;
- (void)setType:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBCollectionCardSection

- (_SFPBCollectionCardSection)initWithFacade:(id)a3
{
  v61 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBCollectionCardSection *)self init];
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

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v8 = [v4 punchoutOptions];
    v9 = [v8 countByEnumeratingWithState:&v55 objects:v60 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v55 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v55 objects:v60 count:16];
      }

      while (v10);
    }

    [(_SFPBCollectionCardSection *)v5 setPunchoutOptions:v7];
    v14 = [v4 punchoutPickerTitle];

    if (v14)
    {
      v15 = [v4 punchoutPickerTitle];
      [(_SFPBCollectionCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [v4 punchoutPickerDismissText];

    if (v16)
    {
      v17 = [v4 punchoutPickerDismissText];
      [(_SFPBCollectionCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    if ([v4 hasCanBeHidden])
    {
      -[_SFPBCollectionCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v4 canBeHidden]);
    }

    if ([v4 hasHasTopPadding])
    {
      -[_SFPBCollectionCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v4 hasTopPadding]);
    }

    if ([v4 hasHasBottomPadding])
    {
      -[_SFPBCollectionCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v4 hasBottomPadding]);
    }

    v18 = [v4 type];

    if (v18)
    {
      v19 = [v4 type];
      [(_SFPBCollectionCardSection *)v5 setType:v19];
    }

    if ([v4 hasSeparatorStyle])
    {
      -[_SFPBCollectionCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v4 separatorStyle]);
    }

    v20 = [v4 backgroundColor];

    if (v20)
    {
      v21 = [_SFPBColor alloc];
      v22 = [v4 backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:v22];
      [(_SFPBCollectionCardSection *)v5 setBackgroundColor:v23];
    }

    v24 = [v4 cardSections];
    if (v24)
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
    v26 = [v4 cardSections];
    v27 = [v26 countByEnumeratingWithState:&v51 objects:v59 count:16];
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
            objc_enumerationMutation(v26);
          }

          v31 = [[_SFPBCardSection alloc] initWithFacade:*(*(&v51 + 1) + 8 * j)];
          if (v31)
          {
            [v25 addObject:v31];
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v51 objects:v59 count:16];
      }

      while (v28);
    }

    [(_SFPBCollectionCardSection *)v5 setCardSections:v25];
    v32 = [v4 title];

    if (v32)
    {
      v33 = [_SFPBRichText alloc];
      v34 = [v4 title];
      v35 = [(_SFPBRichText *)v33 initWithFacade:v34];
      [(_SFPBCollectionCardSection *)v5 setTitle:v35];
    }

    v36 = [v4 buttonItem];

    if (v36)
    {
      v37 = [_SFPBCommandButtonItem alloc];
      v38 = [v4 buttonItem];
      v39 = [(_SFPBCommandButtonItem *)v37 initWithFacade:v38];
      [(_SFPBCollectionCardSection *)v5 setButtonItem:v39];
    }

    v40 = [v4 collectionStyle];

    if (v40)
    {
      v41 = [_SFPBCollectionStyle alloc];
      v42 = [v4 collectionStyle];
      v43 = [(_SFPBCollectionStyle *)v41 initWithFacade:v42];
      [(_SFPBCollectionCardSection *)v5 setCollectionStyle:v43];
    }

    v44 = [v4 titleButtonItem];

    if (v44)
    {
      v45 = [_SFPBCommandButtonItem alloc];
      v46 = [v4 titleButtonItem];
      v47 = [(_SFPBCommandButtonItem *)v45 initWithFacade:v46];
      [(_SFPBCollectionCardSection *)v5 setTitleButtonItem:v47];
    }

    v48 = v5;
  }

  v49 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBCollectionCardSection)initWithDictionary:(id)a3
{
  v66 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v63.receiver = self;
  v63.super_class = _SFPBCollectionCardSection;
  v5 = [(_SFPBCollectionCardSection *)&v63 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"punchoutOptions"];
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

    v15 = [v4 objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 copy];
      [(_SFPBCollectionCardSection *)v5 setPunchoutPickerTitle:v16];
    }

    v53 = v15;
    v17 = [v4 objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v17 copy];
      [(_SFPBCollectionCardSection *)v5 setPunchoutPickerDismissText:v18];
    }

    v52 = v17;
    v19 = [v4 objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCollectionCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v19 BOOLValue]);
    }

    v20 = [v4 objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCollectionCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v20 BOOLValue]);
    }

    v21 = [v4 objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCollectionCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v21 BOOLValue]);
    }

    v22 = [v4 objectForKeyedSubscript:@"type"];
    objc_opt_class();
    v54 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = v19;
      v24 = [v22 copy];
      [(_SFPBCollectionCardSection *)v5 setType:v24];

      v19 = v23;
    }

    v25 = [v4 objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCollectionCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v25 intValue]);
    }

    v49 = v25;
    v51 = v20;
    v26 = [v4 objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [[_SFPBColor alloc] initWithDictionary:v26];
      [(_SFPBCollectionCardSection *)v5 setBackgroundColor:v27];
    }

    v48 = v26;
    v50 = v21;
    v28 = [v4 objectForKeyedSubscript:@"cardSections"];
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

    v36 = [v4 objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = [[_SFPBRichText alloc] initWithDictionary:v36];
      [(_SFPBCollectionCardSection *)v5 setTitle:v37];
    }

    v38 = [v4 objectForKeyedSubscript:@"buttonItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = [[_SFPBCommandButtonItem alloc] initWithDictionary:v38];
      [(_SFPBCollectionCardSection *)v5 setButtonItem:v39];
    }

    v40 = [v4 objectForKeyedSubscript:@"collectionStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = [[_SFPBCollectionStyle alloc] initWithDictionary:v40];
      [(_SFPBCollectionCardSection *)v5 setCollectionStyle:v41];
    }

    v42 = [v4 objectForKeyedSubscript:@"titleButtonItem"];
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

- (_SFPBCollectionCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBCollectionCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBCollectionCardSection *)self dictionaryRepresentation];
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
  v58 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_backgroundColor)
  {
    v4 = [(_SFPBCollectionCardSection *)self backgroundColor];
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

  if (self->_buttonItem)
  {
    v7 = [(_SFPBCollectionCardSection *)self buttonItem];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"buttonItem"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"buttonItem"];
    }
  }

  if (self->_canBeHidden)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCollectionCardSection canBeHidden](self, "canBeHidden")}];
    [v3 setObject:v10 forKeyedSubscript:@"canBeHidden"];
  }

  if ([(NSArray *)self->_cardSections count])
  {
    v11 = [MEMORY[0x1E695DF70] array];
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

          v17 = [*(*(&v52 + 1) + 8 * i) dictionaryRepresentation];
          if (v17)
          {
            [v11 addObject:v17];
          }

          else
          {
            v18 = [MEMORY[0x1E695DFB0] null];
            [v11 addObject:v18];
          }
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v14);
    }

    [v3 setObject:v11 forKeyedSubscript:@"cardSections"];
  }

  if (self->_collectionStyle)
  {
    v19 = [(_SFPBCollectionCardSection *)self collectionStyle];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"collectionStyle"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"collectionStyle"];
    }
  }

  if (self->_hasBottomPadding)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCollectionCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [v3 setObject:v22 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCollectionCardSection hasTopPadding](self, "hasTopPadding")}];
    [v3 setObject:v23 forKeyedSubscript:@"hasTopPadding"];
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    v24 = [MEMORY[0x1E695DF70] array];
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

          v30 = [*(*(&v48 + 1) + 8 * j) dictionaryRepresentation];
          if (v30)
          {
            [v24 addObject:v30];
          }

          else
          {
            v31 = [MEMORY[0x1E695DFB0] null];
            [v24 addObject:v31];
          }
        }

        v27 = [(NSArray *)v25 countByEnumeratingWithState:&v48 objects:v56 count:16];
      }

      while (v27);
    }

    [v3 setObject:v24 forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    v32 = [(_SFPBCollectionCardSection *)self punchoutPickerDismissText];
    v33 = [v32 copy];
    [v3 setObject:v33 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    v34 = [(_SFPBCollectionCardSection *)self punchoutPickerTitle];
    v35 = [v34 copy];
    [v3 setObject:v35 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    v36 = [(_SFPBCollectionCardSection *)self separatorStyle];
    if (v36 >= 6)
    {
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v36];
    }

    else
    {
      v37 = off_1E7ACE580[v36];
    }

    [v3 setObject:v37 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_title)
  {
    v38 = [(_SFPBCollectionCardSection *)self title];
    v39 = [v38 dictionaryRepresentation];
    if (v39)
    {
      [v3 setObject:v39 forKeyedSubscript:@"title"];
    }

    else
    {
      v40 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v40 forKeyedSubscript:@"title"];
    }
  }

  if (self->_titleButtonItem)
  {
    v41 = [(_SFPBCollectionCardSection *)self titleButtonItem];
    v42 = [v41 dictionaryRepresentation];
    if (v42)
    {
      [v3 setObject:v42 forKeyedSubscript:@"titleButtonItem"];
    }

    else
    {
      v43 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v43 forKeyedSubscript:@"titleButtonItem"];
    }
  }

  if (self->_type)
  {
    v44 = [(_SFPBCollectionCardSection *)self type];
    v45 = [v44 copy];
    [v3 setObject:v45 forKeyedSubscript:@"type"];
  }

  v46 = *MEMORY[0x1E69E9840];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_56;
  }

  v5 = [(_SFPBCollectionCardSection *)self punchoutOptions];
  v6 = [v4 punchoutOptions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_55;
  }

  v7 = [(_SFPBCollectionCardSection *)self punchoutOptions];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBCollectionCardSection *)self punchoutOptions];
    v10 = [v4 punchoutOptions];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_56;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCollectionCardSection *)self punchoutPickerTitle];
  v6 = [v4 punchoutPickerTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_55;
  }

  v12 = [(_SFPBCollectionCardSection *)self punchoutPickerTitle];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBCollectionCardSection *)self punchoutPickerTitle];
    v15 = [v4 punchoutPickerTitle];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_56;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCollectionCardSection *)self punchoutPickerDismissText];
  v6 = [v4 punchoutPickerDismissText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_55;
  }

  v17 = [(_SFPBCollectionCardSection *)self punchoutPickerDismissText];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBCollectionCardSection *)self punchoutPickerDismissText];
    v20 = [v4 punchoutPickerDismissText];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_56;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [v4 canBeHidden])
  {
    goto LABEL_56;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [v4 hasTopPadding])
  {
    goto LABEL_56;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [v4 hasBottomPadding])
  {
    goto LABEL_56;
  }

  v5 = [(_SFPBCollectionCardSection *)self type];
  v6 = [v4 type];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_55;
  }

  v25 = [(_SFPBCollectionCardSection *)self type];
  if (v25)
  {
    v26 = v25;
    v27 = [(_SFPBCollectionCardSection *)self type];
    v28 = [v4 type];
    v29 = [v27 isEqual:v28];

    if (!v29)
    {
      goto LABEL_56;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [v4 separatorStyle])
  {
    goto LABEL_56;
  }

  v5 = [(_SFPBCollectionCardSection *)self backgroundColor];
  v6 = [v4 backgroundColor];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_55;
  }

  v31 = [(_SFPBCollectionCardSection *)self backgroundColor];
  if (v31)
  {
    v32 = v31;
    v33 = [(_SFPBCollectionCardSection *)self backgroundColor];
    v34 = [v4 backgroundColor];
    v35 = [v33 isEqual:v34];

    if (!v35)
    {
      goto LABEL_56;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCollectionCardSection *)self cardSections];
  v6 = [v4 cardSections];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_55;
  }

  v36 = [(_SFPBCollectionCardSection *)self cardSections];
  if (v36)
  {
    v37 = v36;
    v38 = [(_SFPBCollectionCardSection *)self cardSections];
    v39 = [v4 cardSections];
    v40 = [v38 isEqual:v39];

    if (!v40)
    {
      goto LABEL_56;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCollectionCardSection *)self title];
  v6 = [v4 title];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_55;
  }

  v41 = [(_SFPBCollectionCardSection *)self title];
  if (v41)
  {
    v42 = v41;
    v43 = [(_SFPBCollectionCardSection *)self title];
    v44 = [v4 title];
    v45 = [v43 isEqual:v44];

    if (!v45)
    {
      goto LABEL_56;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCollectionCardSection *)self buttonItem];
  v6 = [v4 buttonItem];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_55;
  }

  v46 = [(_SFPBCollectionCardSection *)self buttonItem];
  if (v46)
  {
    v47 = v46;
    v48 = [(_SFPBCollectionCardSection *)self buttonItem];
    v49 = [v4 buttonItem];
    v50 = [v48 isEqual:v49];

    if (!v50)
    {
      goto LABEL_56;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCollectionCardSection *)self collectionStyle];
  v6 = [v4 collectionStyle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_55;
  }

  v51 = [(_SFPBCollectionCardSection *)self collectionStyle];
  if (v51)
  {
    v52 = v51;
    v53 = [(_SFPBCollectionCardSection *)self collectionStyle];
    v54 = [v4 collectionStyle];
    v55 = [v53 isEqual:v54];

    if (!v55)
    {
      goto LABEL_56;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCollectionCardSection *)self titleButtonItem];
  v6 = [v4 titleButtonItem];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_55:

    goto LABEL_56;
  }

  v56 = [(_SFPBCollectionCardSection *)self titleButtonItem];
  if (!v56)
  {

LABEL_59:
    v61 = 1;
    goto LABEL_57;
  }

  v57 = v56;
  v58 = [(_SFPBCollectionCardSection *)self titleButtonItem];
  v59 = [v4 titleButtonItem];
  v60 = [v58 isEqual:v59];

  if (v60)
  {
    goto LABEL_59;
  }

LABEL_56:
  v61 = 0;
LABEL_57:

  return v61;
}

- (void)writeTo:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBCollectionCardSection *)self punchoutOptions];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v30 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v7);
  }

  v11 = [(_SFPBCollectionCardSection *)self punchoutPickerTitle];
  if (v11)
  {
    PBDataWriterWriteStringField();
  }

  v12 = [(_SFPBCollectionCardSection *)self punchoutPickerDismissText];
  if (v12)
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

  v13 = [(_SFPBCollectionCardSection *)self type];
  if (v13)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBCollectionCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  v14 = [(_SFPBCollectionCardSection *)self backgroundColor];
  if (v14)
  {
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_SFPBCollectionCardSection *)self cardSections];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
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
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v26 + 1) + 8 * v19);
        PBDataWriterWriteSubmessage();
        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v17);
  }

  v21 = [(_SFPBCollectionCardSection *)self title];
  if (v21)
  {
    PBDataWriterWriteSubmessage();
  }

  v22 = [(_SFPBCollectionCardSection *)self buttonItem];
  if (v22)
  {
    PBDataWriterWriteSubmessage();
  }

  v23 = [(_SFPBCollectionCardSection *)self collectionStyle];
  if (v23)
  {
    PBDataWriterWriteSubmessage();
  }

  v24 = [(_SFPBCollectionCardSection *)self titleButtonItem];
  if (v24)
  {
    PBDataWriterWriteSubmessage();
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)addCardSections:(id)a3
{
  v4 = a3;
  cardSections = self->_cardSections;
  v8 = v4;
  if (!cardSections)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_cardSections;
    self->_cardSections = v6;

    v4 = v8;
    cardSections = self->_cardSections;
  }

  [(NSArray *)cardSections addObject:v4];
}

- (void)setCardSections:(id)a3
{
  v4 = [a3 copy];
  cardSections = self->_cardSections;
  self->_cardSections = v4;

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