@interface _SFPBButtonListCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBButtonListCardSection)initWithDictionary:(id)a3;
- (_SFPBButtonListCardSection)initWithFacade:(id)a3;
- (_SFPBButtonListCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addButtons:(id)a3;
- (void)addPunchoutOptions:(id)a3;
- (void)setButtons:(id)a3;
- (void)setPunchoutOptions:(id)a3;
- (void)setPunchoutPickerDismissText:(id)a3;
- (void)setPunchoutPickerTitle:(id)a3;
- (void)setSectionTitle:(id)a3;
- (void)setShowMoreButtonTitle:(id)a3;
- (void)setType:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBButtonListCardSection

- (_SFPBButtonListCardSection)initWithFacade:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBButtonListCardSection *)self init];
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

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v8 = [v4 punchoutOptions];
    v9 = [v8 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v44;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v44 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v43 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v10);
    }

    [(_SFPBButtonListCardSection *)v5 setPunchoutOptions:v7];
    v14 = [v4 punchoutPickerTitle];

    if (v14)
    {
      v15 = [v4 punchoutPickerTitle];
      [(_SFPBButtonListCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [v4 punchoutPickerDismissText];

    if (v16)
    {
      v17 = [v4 punchoutPickerDismissText];
      [(_SFPBButtonListCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    if ([v4 hasCanBeHidden])
    {
      -[_SFPBButtonListCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v4 canBeHidden]);
    }

    if ([v4 hasHasTopPadding])
    {
      -[_SFPBButtonListCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v4 hasTopPadding]);
    }

    if ([v4 hasHasBottomPadding])
    {
      -[_SFPBButtonListCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v4 hasBottomPadding]);
    }

    v18 = [v4 type];

    if (v18)
    {
      v19 = [v4 type];
      [(_SFPBButtonListCardSection *)v5 setType:v19];
    }

    if ([v4 hasSeparatorStyle])
    {
      -[_SFPBButtonListCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v4 separatorStyle]);
    }

    v20 = [v4 backgroundColor];

    if (v20)
    {
      v21 = [_SFPBColor alloc];
      v22 = [v4 backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:v22];
      [(_SFPBButtonListCardSection *)v5 setBackgroundColor:v23];
    }

    v24 = [v4 SectionTitle];

    if (v24)
    {
      v25 = [v4 SectionTitle];
      [(_SFPBButtonListCardSection *)v5 setSectionTitle:v25];
    }

    v26 = [v4 buttons];
    if (v26)
    {
      v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v27 = 0;
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v28 = [v4 buttons];
    v29 = [v28 countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v40;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v40 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = [[_SFPBButtonItem alloc] initWithFacade:*(*(&v39 + 1) + 8 * j)];
          if (v33)
          {
            [v27 addObject:v33];
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v30);
    }

    [(_SFPBButtonListCardSection *)v5 setButtons:v27];
    v34 = [v4 showMoreButtonTitle];

    if (v34)
    {
      v35 = [v4 showMoreButtonTitle];
      [(_SFPBButtonListCardSection *)v5 setShowMoreButtonTitle:v35];
    }

    v36 = v5;
  }

  v37 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBButtonListCardSection)initWithDictionary:(id)a3
{
  v65 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v62.receiver = self;
  v62.super_class = _SFPBButtonListCardSection;
  v5 = [(_SFPBButtonListCardSection *)&v62 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"punchoutOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v58 objects:v64 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v59;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v59 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v58 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [[_SFPBPunchout alloc] initWithDictionary:v12];
              [(_SFPBButtonListCardSection *)v5 addPunchoutOptions:v13];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v58 objects:v64 count:16];
        }

        while (v9);
      }
    }

    v14 = [v4 objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBButtonListCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBButtonListCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    v53 = v18;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBButtonListCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v18 BOOLValue]);
    }

    v19 = [v4 objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    v52 = v19;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBButtonListCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v19 BOOLValue]);
    }

    v20 = [v4 objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    v51 = v20;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBButtonListCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v20 BOOLValue]);
    }

    v21 = [v4 objectForKeyedSubscript:@"type"];
    objc_opt_class();
    v50 = v21;
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBButtonListCardSection *)v5 setType:v22];
    }

    v23 = [v4 objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBButtonListCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v23 intValue]);
    }

    v24 = [v4 objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    v49 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBColor alloc] initWithDictionary:v24];
      [(_SFPBButtonListCardSection *)v5 setBackgroundColor:v25];
    }

    v26 = [v4 objectForKeyedSubscript:@"SectionTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [v26 copy];
      [(_SFPBButtonListCardSection *)v5 setSectionTitle:v27];
    }

    v28 = [v4 objectForKeyedSubscript:@"buttons"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v44 = v26;
      v45 = v23;
      v46 = v16;
      v47 = v14;
      v48 = v6;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v29 = v28;
      v30 = [v29 countByEnumeratingWithState:&v54 objects:v63 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v55;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v55 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v54 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v35 = [[_SFPBButtonItem alloc] initWithDictionary:v34];
              [(_SFPBButtonListCardSection *)v5 addButtons:v35];
            }
          }

          v31 = [v29 countByEnumeratingWithState:&v54 objects:v63 count:16];
        }

        while (v31);
      }

      v14 = v47;
      v6 = v48;
      v16 = v46;
      v26 = v44;
    }

    v36 = [v4 objectForKeyedSubscript:{@"showMoreButtonTitle", v44, v45, v46, v47, v48}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = v26;
      v38 = v23;
      v39 = v16;
      v40 = [v36 copy];
      [(_SFPBButtonListCardSection *)v5 setShowMoreButtonTitle:v40];

      v16 = v39;
      v23 = v38;
      v26 = v37;
    }

    v41 = v5;
  }

  v42 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBButtonListCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBButtonListCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBButtonListCardSection *)self dictionaryRepresentation];
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
  v50 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_SectionTitle)
  {
    v4 = [(_SFPBButtonListCardSection *)self SectionTitle];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"SectionTitle"];
  }

  if (self->_backgroundColor)
  {
    v6 = [(_SFPBButtonListCardSection *)self backgroundColor];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"backgroundColor"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"backgroundColor"];
    }
  }

  if ([(NSArray *)self->_buttons count])
  {
    v9 = [MEMORY[0x1E695DF70] array];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v10 = self->_buttons;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v45;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v45 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v44 + 1) + 8 * i) dictionaryRepresentation];
          if (v15)
          {
            [v9 addObject:v15];
          }

          else
          {
            v16 = [MEMORY[0x1E695DFB0] null];
            [v9 addObject:v16];
          }
        }

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v12);
    }

    [v3 setObject:v9 forKeyedSubscript:@"buttons"];
  }

  if (self->_canBeHidden)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBButtonListCardSection canBeHidden](self, "canBeHidden")}];
    [v3 setObject:v17 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_hasBottomPadding)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBButtonListCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [v3 setObject:v18 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBButtonListCardSection hasTopPadding](self, "hasTopPadding")}];
    [v3 setObject:v19 forKeyedSubscript:@"hasTopPadding"];
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    v20 = [MEMORY[0x1E695DF70] array];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v21 = self->_punchoutOptions;
    v22 = [(NSArray *)v21 countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v41;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v41 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [*(*(&v40 + 1) + 8 * j) dictionaryRepresentation];
          if (v26)
          {
            [v20 addObject:v26];
          }

          else
          {
            v27 = [MEMORY[0x1E695DFB0] null];
            [v20 addObject:v27];
          }
        }

        v23 = [(NSArray *)v21 countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v23);
    }

    [v3 setObject:v20 forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    v28 = [(_SFPBButtonListCardSection *)self punchoutPickerDismissText];
    v29 = [v28 copy];
    [v3 setObject:v29 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    v30 = [(_SFPBButtonListCardSection *)self punchoutPickerTitle];
    v31 = [v30 copy];
    [v3 setObject:v31 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    v32 = [(_SFPBButtonListCardSection *)self separatorStyle];
    if (v32 >= 6)
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v32];
    }

    else
    {
      v33 = off_1E7ACE580[v32];
    }

    [v3 setObject:v33 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_showMoreButtonTitle)
  {
    v34 = [(_SFPBButtonListCardSection *)self showMoreButtonTitle];
    v35 = [v34 copy];
    [v3 setObject:v35 forKeyedSubscript:@"showMoreButtonTitle"];
  }

  if (self->_type)
  {
    v36 = [(_SFPBButtonListCardSection *)self type];
    v37 = [v36 copy];
    [v3 setObject:v37 forKeyedSubscript:@"type"];
  }

  v38 = *MEMORY[0x1E69E9840];

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
  v11 = v10 ^ [(NSString *)self->_SectionTitle hash];
  v12 = v11 ^ [(NSArray *)self->_buttons hash];
  return v9 ^ v12 ^ [(NSString *)self->_showMoreButtonTitle hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_46;
  }

  v5 = [(_SFPBButtonListCardSection *)self punchoutOptions];
  v6 = [v4 punchoutOptions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_45;
  }

  v7 = [(_SFPBButtonListCardSection *)self punchoutOptions];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBButtonListCardSection *)self punchoutOptions];
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

  v5 = [(_SFPBButtonListCardSection *)self punchoutPickerTitle];
  v6 = [v4 punchoutPickerTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_45;
  }

  v12 = [(_SFPBButtonListCardSection *)self punchoutPickerTitle];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBButtonListCardSection *)self punchoutPickerTitle];
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

  v5 = [(_SFPBButtonListCardSection *)self punchoutPickerDismissText];
  v6 = [v4 punchoutPickerDismissText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_45;
  }

  v17 = [(_SFPBButtonListCardSection *)self punchoutPickerDismissText];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBButtonListCardSection *)self punchoutPickerDismissText];
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

  v5 = [(_SFPBButtonListCardSection *)self type];
  v6 = [v4 type];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_45;
  }

  v25 = [(_SFPBButtonListCardSection *)self type];
  if (v25)
  {
    v26 = v25;
    v27 = [(_SFPBButtonListCardSection *)self type];
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

  v5 = [(_SFPBButtonListCardSection *)self backgroundColor];
  v6 = [v4 backgroundColor];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_45;
  }

  v31 = [(_SFPBButtonListCardSection *)self backgroundColor];
  if (v31)
  {
    v32 = v31;
    v33 = [(_SFPBButtonListCardSection *)self backgroundColor];
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

  v5 = [(_SFPBButtonListCardSection *)self SectionTitle];
  v6 = [v4 SectionTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_45;
  }

  v36 = [(_SFPBButtonListCardSection *)self SectionTitle];
  if (v36)
  {
    v37 = v36;
    v38 = [(_SFPBButtonListCardSection *)self SectionTitle];
    v39 = [v4 SectionTitle];
    v40 = [v38 isEqual:v39];

    if (!v40)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  v5 = [(_SFPBButtonListCardSection *)self buttons];
  v6 = [v4 buttons];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_45;
  }

  v41 = [(_SFPBButtonListCardSection *)self buttons];
  if (v41)
  {
    v42 = v41;
    v43 = [(_SFPBButtonListCardSection *)self buttons];
    v44 = [v4 buttons];
    v45 = [v43 isEqual:v44];

    if (!v45)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  v5 = [(_SFPBButtonListCardSection *)self showMoreButtonTitle];
  v6 = [v4 showMoreButtonTitle];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_45:

    goto LABEL_46;
  }

  v46 = [(_SFPBButtonListCardSection *)self showMoreButtonTitle];
  if (!v46)
  {

LABEL_49:
    v51 = 1;
    goto LABEL_47;
  }

  v47 = v46;
  v48 = [(_SFPBButtonListCardSection *)self showMoreButtonTitle];
  v49 = [v4 showMoreButtonTitle];
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
  v5 = [(_SFPBButtonListCardSection *)self punchoutOptions];
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

  v11 = [(_SFPBButtonListCardSection *)self punchoutPickerTitle];
  if (v11)
  {
    PBDataWriterWriteStringField();
  }

  v12 = [(_SFPBButtonListCardSection *)self punchoutPickerDismissText];
  if (v12)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBButtonListCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBButtonListCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBButtonListCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  v13 = [(_SFPBButtonListCardSection *)self type];
  if (v13)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBButtonListCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  v14 = [(_SFPBButtonListCardSection *)self backgroundColor];
  if (v14)
  {
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_SFPBButtonListCardSection *)self SectionTitle];
  if (v15)
  {
    PBDataWriterWriteStringField();
  }

  v16 = [(_SFPBButtonListCardSection *)self buttons];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v25;
    do
    {
      v20 = 0;
      do
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v24 + 1) + 8 * v20);
        PBDataWriterWriteSubmessage();
        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v18);
  }

  v22 = [(_SFPBButtonListCardSection *)self showMoreButtonTitle];
  if (v22)
  {
    PBDataWriterWriteStringField();
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)setShowMoreButtonTitle:(id)a3
{
  v4 = [a3 copy];
  showMoreButtonTitle = self->_showMoreButtonTitle;
  self->_showMoreButtonTitle = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addButtons:(id)a3
{
  v4 = a3;
  buttons = self->_buttons;
  v8 = v4;
  if (!buttons)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_buttons;
    self->_buttons = v6;

    v4 = v8;
    buttons = self->_buttons;
  }

  [(NSArray *)buttons addObject:v4];
}

- (void)setButtons:(id)a3
{
  v4 = [a3 copy];
  buttons = self->_buttons;
  self->_buttons = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setSectionTitle:(id)a3
{
  v4 = [a3 copy];
  SectionTitle = self->_SectionTitle;
  self->_SectionTitle = v4;

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