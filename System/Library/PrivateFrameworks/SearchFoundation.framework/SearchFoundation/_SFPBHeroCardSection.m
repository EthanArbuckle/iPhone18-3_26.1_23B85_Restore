@interface _SFPBHeroCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBHeroCardSection)initWithDictionary:(id)a3;
- (_SFPBHeroCardSection)initWithFacade:(id)a3;
- (_SFPBHeroCardSection)initWithJSON:(id)a3;
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

@implementation _SFPBHeroCardSection

- (_SFPBHeroCardSection)initWithFacade:(id)a3
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBHeroCardSection *)self init];
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

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v8 = [v4 punchoutOptions];
    v9 = [v8 countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v52;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v52 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v51 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v51 objects:v56 count:16];
      }

      while (v10);
    }

    [(_SFPBHeroCardSection *)v5 setPunchoutOptions:v7];
    v14 = [v4 punchoutPickerTitle];

    if (v14)
    {
      v15 = [v4 punchoutPickerTitle];
      [(_SFPBHeroCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [v4 punchoutPickerDismissText];

    if (v16)
    {
      v17 = [v4 punchoutPickerDismissText];
      [(_SFPBHeroCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    if ([v4 hasCanBeHidden])
    {
      -[_SFPBHeroCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v4 canBeHidden]);
    }

    if ([v4 hasHasTopPadding])
    {
      -[_SFPBHeroCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v4 hasTopPadding]);
    }

    if ([v4 hasHasBottomPadding])
    {
      -[_SFPBHeroCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v4 hasBottomPadding]);
    }

    v18 = [v4 type];

    if (v18)
    {
      v19 = [v4 type];
      [(_SFPBHeroCardSection *)v5 setType:v19];
    }

    if ([v4 hasSeparatorStyle])
    {
      -[_SFPBHeroCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v4 separatorStyle]);
    }

    v20 = [v4 backgroundColor];

    if (v20)
    {
      v21 = [_SFPBColor alloc];
      v22 = [v4 backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:v22];
      [(_SFPBHeroCardSection *)v5 setBackgroundColor:v23];
    }

    v24 = [v4 title];

    if (v24)
    {
      v25 = [_SFPBRichText alloc];
      v26 = [v4 title];
      v27 = [(_SFPBRichText *)v25 initWithFacade:v26];
      [(_SFPBHeroCardSection *)v5 setTitle:v27];
    }

    v28 = [v4 subtitle];

    if (v28)
    {
      v29 = [_SFPBRichText alloc];
      v30 = [v4 subtitle];
      v31 = [(_SFPBRichText *)v29 initWithFacade:v30];
      [(_SFPBHeroCardSection *)v5 setSubtitle:v31];
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

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v34 = [v4 buttonItems];
    v35 = [v34 countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v48;
      do
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v48 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = [[_SFPBButtonItem alloc] initWithFacade:*(*(&v47 + 1) + 8 * j)];
          if (v39)
          {
            [v33 addObject:v39];
          }
        }

        v36 = [v34 countByEnumeratingWithState:&v47 objects:v55 count:16];
      }

      while (v36);
    }

    [(_SFPBHeroCardSection *)v5 setButtonItems:v33];
    v40 = [v4 image];

    if (v40)
    {
      v41 = [_SFPBImage alloc];
      v42 = [v4 image];
      v43 = [(_SFPBImage *)v41 initWithFacade:v42];
      [(_SFPBHeroCardSection *)v5 setImage:v43];
    }

    if ([v4 hasImageAlign])
    {
      -[_SFPBHeroCardSection setImageAlign:](v5, "setImageAlign:", [v4 imageAlign]);
    }

    v44 = v5;
  }

  v45 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBHeroCardSection)initWithDictionary:(id)a3
{
  v69 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v66.receiver = self;
  v66.super_class = _SFPBHeroCardSection;
  v5 = [(_SFPBHeroCardSection *)&v66 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"punchoutOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v7 = v6;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v62 objects:v68 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v63;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v63 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v62 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [[_SFPBPunchout alloc] initWithDictionary:v13];
              [(_SFPBHeroCardSection *)v5 addPunchoutOptions:v14];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v62 objects:v68 count:16];
        }

        while (v10);
      }

      v6 = v7;
    }

    v57 = v6;
    v15 = [v4 objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 copy];
      [(_SFPBHeroCardSection *)v5 setPunchoutPickerTitle:v16];
    }

    v17 = [v4 objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v17 copy];
      [(_SFPBHeroCardSection *)v5 setPunchoutPickerDismissText:v18];
    }

    v19 = [v4 objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBHeroCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v19 BOOLValue]);
    }

    v20 = [v4 objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBHeroCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v20 BOOLValue]);
    }

    v21 = [v4 objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    v56 = v21;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBHeroCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v21 BOOLValue]);
    }

    v22 = [v4 objectForKeyedSubscript:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [v22 copy];
      [(_SFPBHeroCardSection *)v5 setType:v23];
    }

    v24 = [v4 objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBHeroCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v24 intValue]);
    }

    v51 = v24;
    v25 = [v4 objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    v55 = v25;
    if (objc_opt_isKindOfClass())
    {
      v26 = [[_SFPBColor alloc] initWithDictionary:v25];
      [(_SFPBHeroCardSection *)v5 setBackgroundColor:v26];
    }

    v54 = v17;
    v27 = [v4 objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v15;
      v29 = [[_SFPBRichText alloc] initWithDictionary:v27];
      [(_SFPBHeroCardSection *)v5 setTitle:v29];

      v15 = v28;
    }

    v50 = v27;
    v52 = v20;
    v53 = v19;
    v30 = [v4 objectForKeyedSubscript:@"subtitle"];
    objc_opt_class();
    v31 = v57;
    if (objc_opt_isKindOfClass())
    {
      v32 = [[_SFPBRichText alloc] initWithDictionary:v30];
      [(_SFPBHeroCardSection *)v5 setSubtitle:v32];
    }

    v49 = v30;
    v33 = [v4 objectForKeyedSubscript:@"buttonItems"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = v22;
      v48 = v15;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v34 = v33;
      v35 = [v34 countByEnumeratingWithState:&v58 objects:v67 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v59;
        do
        {
          for (j = 0; j != v36; ++j)
          {
            if (*v59 != v37)
            {
              objc_enumerationMutation(v34);
            }

            v39 = *(*(&v58 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v40 = [[_SFPBButtonItem alloc] initWithDictionary:v39];
              [(_SFPBHeroCardSection *)v5 addButtonItems:v40];
            }
          }

          v36 = [v34 countByEnumeratingWithState:&v58 objects:v67 count:16];
        }

        while (v36);
      }

      v31 = v57;
      v22 = v47;
      v15 = v48;
    }

    v41 = [v4 objectForKeyedSubscript:@"image"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v42 = [[_SFPBImage alloc] initWithDictionary:v41];
      [(_SFPBHeroCardSection *)v5 setImage:v42];
    }

    v43 = [v4 objectForKeyedSubscript:@"imageAlign"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBHeroCardSection setImageAlign:](v5, "setImageAlign:", [v43 intValue]);
    }

    v44 = v5;
  }

  v45 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBHeroCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBHeroCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBHeroCardSection *)self dictionaryRepresentation];
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
  v57 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_backgroundColor)
  {
    v4 = [(_SFPBHeroCardSection *)self backgroundColor];
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
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v8 = self->_buttonItems;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v52;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v52 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v51 + 1) + 8 * i) dictionaryRepresentation];
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

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v51 objects:v56 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKeyedSubscript:@"buttonItems"];
  }

  if (self->_canBeHidden)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBHeroCardSection canBeHidden](self, "canBeHidden")}];
    [v3 setObject:v15 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_hasBottomPadding)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBHeroCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [v3 setObject:v16 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBHeroCardSection hasTopPadding](self, "hasTopPadding")}];
    [v3 setObject:v17 forKeyedSubscript:@"hasTopPadding"];
  }

  if (self->_image)
  {
    v18 = [(_SFPBHeroCardSection *)self image];
    v19 = [v18 dictionaryRepresentation];
    if (v19)
    {
      [v3 setObject:v19 forKeyedSubscript:@"image"];
    }

    else
    {
      v20 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v20 forKeyedSubscript:@"image"];
    }
  }

  if (self->_imageAlign)
  {
    v21 = [(_SFPBHeroCardSection *)self imageAlign];
    if (v21 >= 5)
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v21];
    }

    else
    {
      v22 = off_1E7ACE448[v21];
    }

    [v3 setObject:v22 forKeyedSubscript:@"imageAlign"];
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    v23 = [MEMORY[0x1E695DF70] array];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v24 = self->_punchoutOptions;
    v25 = [(NSArray *)v24 countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v48;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v48 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [*(*(&v47 + 1) + 8 * j) dictionaryRepresentation];
          if (v29)
          {
            [v23 addObject:v29];
          }

          else
          {
            v30 = [MEMORY[0x1E695DFB0] null];
            [v23 addObject:v30];
          }
        }

        v26 = [(NSArray *)v24 countByEnumeratingWithState:&v47 objects:v55 count:16];
      }

      while (v26);
    }

    [v3 setObject:v23 forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    v31 = [(_SFPBHeroCardSection *)self punchoutPickerDismissText];
    v32 = [v31 copy];
    [v3 setObject:v32 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    v33 = [(_SFPBHeroCardSection *)self punchoutPickerTitle];
    v34 = [v33 copy];
    [v3 setObject:v34 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    v35 = [(_SFPBHeroCardSection *)self separatorStyle];
    if (v35 >= 6)
    {
      v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v35];
    }

    else
    {
      v36 = off_1E7ACE580[v35];
    }

    [v3 setObject:v36 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_subtitle)
  {
    v37 = [(_SFPBHeroCardSection *)self subtitle];
    v38 = [v37 dictionaryRepresentation];
    if (v38)
    {
      [v3 setObject:v38 forKeyedSubscript:@"subtitle"];
    }

    else
    {
      v39 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v39 forKeyedSubscript:@"subtitle"];
    }
  }

  if (self->_title)
  {
    v40 = [(_SFPBHeroCardSection *)self title];
    v41 = [v40 dictionaryRepresentation];
    if (v41)
    {
      [v3 setObject:v41 forKeyedSubscript:@"title"];
    }

    else
    {
      v42 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v42 forKeyedSubscript:@"title"];
    }
  }

  if (self->_type)
  {
    v43 = [(_SFPBHeroCardSection *)self type];
    v44 = [v43 copy];
    [v3 setObject:v44 forKeyedSubscript:@"type"];
  }

  v45 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v17 = [(NSArray *)self->_punchoutOptions hash];
  v16 = [(NSString *)self->_punchoutPickerTitle hash];
  v3 = [(NSString *)self->_punchoutPickerDismissText hash];
  if (self->_canBeHidden)
  {
    v4 = 2654435761;
  }

  else
  {
    v4 = 0;
  }

  if (self->_hasTopPadding)
  {
    v5 = 2654435761;
  }

  else
  {
    v5 = 0;
  }

  if (self->_hasBottomPadding)
  {
    v6 = 2654435761;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NSString *)self->_type hash:v4];
  v8 = 2654435761 * self->_separatorStyle;
  v9 = [(_SFPBColor *)self->_backgroundColor hash];
  v10 = [(_SFPBRichText *)self->_title hash];
  v11 = [(_SFPBRichText *)self->_subtitle hash];
  v12 = [(NSArray *)self->_buttonItems hash];
  return v16 ^ v17 ^ v15 ^ v14 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ [(_SFPBImage *)self->_image hash]^ (2654435761 * self->_imageAlign);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_51;
  }

  v5 = [(_SFPBHeroCardSection *)self punchoutOptions];
  v6 = [v4 punchoutOptions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_50;
  }

  v7 = [(_SFPBHeroCardSection *)self punchoutOptions];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBHeroCardSection *)self punchoutOptions];
    v10 = [v4 punchoutOptions];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  v5 = [(_SFPBHeroCardSection *)self punchoutPickerTitle];
  v6 = [v4 punchoutPickerTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_50;
  }

  v12 = [(_SFPBHeroCardSection *)self punchoutPickerTitle];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBHeroCardSection *)self punchoutPickerTitle];
    v15 = [v4 punchoutPickerTitle];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  v5 = [(_SFPBHeroCardSection *)self punchoutPickerDismissText];
  v6 = [v4 punchoutPickerDismissText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_50;
  }

  v17 = [(_SFPBHeroCardSection *)self punchoutPickerDismissText];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBHeroCardSection *)self punchoutPickerDismissText];
    v20 = [v4 punchoutPickerDismissText];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [v4 canBeHidden])
  {
    goto LABEL_51;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [v4 hasTopPadding])
  {
    goto LABEL_51;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [v4 hasBottomPadding])
  {
    goto LABEL_51;
  }

  v5 = [(_SFPBHeroCardSection *)self type];
  v6 = [v4 type];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_50;
  }

  v25 = [(_SFPBHeroCardSection *)self type];
  if (v25)
  {
    v26 = v25;
    v27 = [(_SFPBHeroCardSection *)self type];
    v28 = [v4 type];
    v29 = [v27 isEqual:v28];

    if (!v29)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [v4 separatorStyle])
  {
    goto LABEL_51;
  }

  v5 = [(_SFPBHeroCardSection *)self backgroundColor];
  v6 = [v4 backgroundColor];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_50;
  }

  v31 = [(_SFPBHeroCardSection *)self backgroundColor];
  if (v31)
  {
    v32 = v31;
    v33 = [(_SFPBHeroCardSection *)self backgroundColor];
    v34 = [v4 backgroundColor];
    v35 = [v33 isEqual:v34];

    if (!v35)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  v5 = [(_SFPBHeroCardSection *)self title];
  v6 = [v4 title];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_50;
  }

  v36 = [(_SFPBHeroCardSection *)self title];
  if (v36)
  {
    v37 = v36;
    v38 = [(_SFPBHeroCardSection *)self title];
    v39 = [v4 title];
    v40 = [v38 isEqual:v39];

    if (!v40)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  v5 = [(_SFPBHeroCardSection *)self subtitle];
  v6 = [v4 subtitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_50;
  }

  v41 = [(_SFPBHeroCardSection *)self subtitle];
  if (v41)
  {
    v42 = v41;
    v43 = [(_SFPBHeroCardSection *)self subtitle];
    v44 = [v4 subtitle];
    v45 = [v43 isEqual:v44];

    if (!v45)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  v5 = [(_SFPBHeroCardSection *)self buttonItems];
  v6 = [v4 buttonItems];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_50;
  }

  v46 = [(_SFPBHeroCardSection *)self buttonItems];
  if (v46)
  {
    v47 = v46;
    v48 = [(_SFPBHeroCardSection *)self buttonItems];
    v49 = [v4 buttonItems];
    v50 = [v48 isEqual:v49];

    if (!v50)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  v5 = [(_SFPBHeroCardSection *)self image];
  v6 = [v4 image];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_50:

    goto LABEL_51;
  }

  v51 = [(_SFPBHeroCardSection *)self image];
  if (!v51)
  {

LABEL_54:
    imageAlign = self->_imageAlign;
    v56 = imageAlign == [v4 imageAlign];
    goto LABEL_52;
  }

  v52 = v51;
  v53 = [(_SFPBHeroCardSection *)self image];
  v54 = [v4 image];
  v55 = [v53 isEqual:v54];

  if (v55)
  {
    goto LABEL_54;
  }

LABEL_51:
  v56 = 0;
LABEL_52:

  return v56;
}

- (void)writeTo:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBHeroCardSection *)self punchoutOptions];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      v9 = 0;
      do
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v29 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v7);
  }

  v11 = [(_SFPBHeroCardSection *)self punchoutPickerTitle];
  if (v11)
  {
    PBDataWriterWriteStringField();
  }

  v12 = [(_SFPBHeroCardSection *)self punchoutPickerDismissText];
  if (v12)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBHeroCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBHeroCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBHeroCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  v13 = [(_SFPBHeroCardSection *)self type];
  if (v13)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBHeroCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  v14 = [(_SFPBHeroCardSection *)self backgroundColor];
  if (v14)
  {
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_SFPBHeroCardSection *)self title];
  if (v15)
  {
    PBDataWriterWriteSubmessage();
  }

  v16 = [(_SFPBHeroCardSection *)self subtitle];
  if (v16)
  {
    PBDataWriterWriteSubmessage();
  }

  v17 = [(_SFPBHeroCardSection *)self buttonItems];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v18 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v26;
    do
    {
      v21 = 0;
      do
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v25 + 1) + 8 * v21);
        PBDataWriterWriteSubmessage();
        ++v21;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v19);
  }

  v23 = [(_SFPBHeroCardSection *)self image];
  if (v23)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBHeroCardSection *)self imageAlign])
  {
    PBDataWriterWriteInt32Field();
  }

  v24 = *MEMORY[0x1E69E9840];
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