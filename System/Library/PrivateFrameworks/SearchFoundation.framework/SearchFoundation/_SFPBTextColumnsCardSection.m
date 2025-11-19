@interface _SFPBTextColumnsCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBTextColumnsCardSection)initWithDictionary:(id)a3;
- (_SFPBTextColumnsCardSection)initWithFacade:(id)a3;
- (_SFPBTextColumnsCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addColumns:(id)a3;
- (void)addPunchoutOptions:(id)a3;
- (void)setColumns:(id)a3;
- (void)setPunchoutOptions:(id)a3;
- (void)setPunchoutPickerDismissText:(id)a3;
- (void)setPunchoutPickerTitle:(id)a3;
- (void)setTitle:(id)a3;
- (void)setType:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBTextColumnsCardSection

- (_SFPBTextColumnsCardSection)initWithFacade:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBTextColumnsCardSection *)self init];
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

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v8 = [v4 punchoutOptions];
    v9 = [v8 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v42;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v42 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v41 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v10);
    }

    [(_SFPBTextColumnsCardSection *)v5 setPunchoutOptions:v7];
    v14 = [v4 punchoutPickerTitle];

    if (v14)
    {
      v15 = [v4 punchoutPickerTitle];
      [(_SFPBTextColumnsCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [v4 punchoutPickerDismissText];

    if (v16)
    {
      v17 = [v4 punchoutPickerDismissText];
      [(_SFPBTextColumnsCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    if ([v4 hasCanBeHidden])
    {
      -[_SFPBTextColumnsCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v4 canBeHidden]);
    }

    if ([v4 hasHasTopPadding])
    {
      -[_SFPBTextColumnsCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v4 hasTopPadding]);
    }

    if ([v4 hasHasBottomPadding])
    {
      -[_SFPBTextColumnsCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v4 hasBottomPadding]);
    }

    v18 = [v4 type];

    if (v18)
    {
      v19 = [v4 type];
      [(_SFPBTextColumnsCardSection *)v5 setType:v19];
    }

    if ([v4 hasSeparatorStyle])
    {
      -[_SFPBTextColumnsCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v4 separatorStyle]);
    }

    v20 = [v4 backgroundColor];

    if (v20)
    {
      v21 = [_SFPBColor alloc];
      v22 = [v4 backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:v22];
      [(_SFPBTextColumnsCardSection *)v5 setBackgroundColor:v23];
    }

    v24 = [v4 title];

    if (v24)
    {
      v25 = [v4 title];
      [(_SFPBTextColumnsCardSection *)v5 setTitle:v25];
    }

    if ([v4 hasTitleWeight])
    {
      -[_SFPBTextColumnsCardSection setTitleWeight:](v5, "setTitleWeight:", [v4 titleWeight]);
    }

    v26 = [v4 columns];
    if (v26)
    {
      v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v27 = 0;
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v28 = [v4 columns];
    v29 = [v28 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v38;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v38 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = [[_SFPBTextColumn alloc] initWithFacade:*(*(&v37 + 1) + 8 * j)];
          if (v33)
          {
            [v27 addObject:v33];
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v30);
    }

    [(_SFPBTextColumnsCardSection *)v5 setColumns:v27];
    v34 = v5;
  }

  v35 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBTextColumnsCardSection)initWithDictionary:(id)a3
{
  v63 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v60.receiver = self;
  v60.super_class = _SFPBTextColumnsCardSection;
  v5 = [(_SFPBTextColumnsCardSection *)&v60 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"punchoutOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v56 objects:v62 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v57;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v57 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v56 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [[_SFPBPunchout alloc] initWithDictionary:v12];
              [(_SFPBTextColumnsCardSection *)v5 addPunchoutOptions:v13];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v56 objects:v62 count:16];
        }

        while (v9);
      }
    }

    v14 = [v4 objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBTextColumnsCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBTextColumnsCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    v51 = v18;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTextColumnsCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v18 BOOLValue]);
    }

    v19 = [v4 objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    v50 = v19;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTextColumnsCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v19 BOOLValue]);
    }

    v20 = [v4 objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    v49 = v20;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTextColumnsCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v20 BOOLValue]);
    }

    v21 = [v4 objectForKeyedSubscript:@"type"];
    objc_opt_class();
    v48 = v21;
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBTextColumnsCardSection *)v5 setType:v22];
    }

    v23 = [v4 objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTextColumnsCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v23 intValue]);
    }

    v24 = [v4 objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    v47 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = v23;
      v26 = v16;
      v27 = [[_SFPBColor alloc] initWithDictionary:v24];
      [(_SFPBTextColumnsCardSection *)v5 setBackgroundColor:v27];

      v16 = v26;
      v23 = v25;
    }

    v28 = [v4 objectForKeyedSubscript:@"title"];
    objc_opt_class();
    v46 = v28;
    if (objc_opt_isKindOfClass())
    {
      v29 = [v28 copy];
      [(_SFPBTextColumnsCardSection *)v5 setTitle:v29];
    }

    v30 = [v4 objectForKeyedSubscript:@"titleWeight"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTextColumnsCardSection setTitleWeight:](v5, "setTitleWeight:", [v30 unsignedIntValue]);
    }

    v31 = [v4 objectForKeyedSubscript:@"columns"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v42 = v30;
      v43 = v23;
      v44 = v14;
      v45 = v6;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v32 = v31;
      v33 = [v32 countByEnumeratingWithState:&v52 objects:v61 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v53;
        do
        {
          for (j = 0; j != v34; ++j)
          {
            if (*v53 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = *(*(&v52 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v38 = [[_SFPBTextColumn alloc] initWithDictionary:v37];
              [(_SFPBTextColumnsCardSection *)v5 addColumns:v38];
            }
          }

          v34 = [v32 countByEnumeratingWithState:&v52 objects:v61 count:16];
        }

        while (v34);
      }

      v14 = v44;
      v6 = v45;
      v23 = v43;
      v30 = v42;
    }

    v39 = v5;
  }

  v40 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBTextColumnsCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBTextColumnsCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBTextColumnsCardSection *)self dictionaryRepresentation];
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
  v49 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_backgroundColor)
  {
    v4 = [(_SFPBTextColumnsCardSection *)self backgroundColor];
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

  if (self->_canBeHidden)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBTextColumnsCardSection canBeHidden](self, "canBeHidden")}];
    [v3 setObject:v7 forKeyedSubscript:@"canBeHidden"];
  }

  if ([(NSArray *)self->_columns count])
  {
    v8 = [MEMORY[0x1E695DF70] array];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v9 = self->_columns;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v44;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v44 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v43 + 1) + 8 * i) dictionaryRepresentation];
          if (v14)
          {
            [v8 addObject:v14];
          }

          else
          {
            v15 = [MEMORY[0x1E695DFB0] null];
            [v8 addObject:v15];
          }
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKeyedSubscript:@"columns"];
  }

  if (self->_hasBottomPadding)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBTextColumnsCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [v3 setObject:v16 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBTextColumnsCardSection hasTopPadding](self, "hasTopPadding")}];
    [v3 setObject:v17 forKeyedSubscript:@"hasTopPadding"];
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    v18 = [MEMORY[0x1E695DF70] array];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v19 = self->_punchoutOptions;
    v20 = [(NSArray *)v19 countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v40;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v40 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [*(*(&v39 + 1) + 8 * j) dictionaryRepresentation];
          if (v24)
          {
            [v18 addObject:v24];
          }

          else
          {
            v25 = [MEMORY[0x1E695DFB0] null];
            [v18 addObject:v25];
          }
        }

        v21 = [(NSArray *)v19 countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v21);
    }

    [v3 setObject:v18 forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    v26 = [(_SFPBTextColumnsCardSection *)self punchoutPickerDismissText];
    v27 = [v26 copy];
    [v3 setObject:v27 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    v28 = [(_SFPBTextColumnsCardSection *)self punchoutPickerTitle];
    v29 = [v28 copy];
    [v3 setObject:v29 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    v30 = [(_SFPBTextColumnsCardSection *)self separatorStyle];
    if (v30 >= 6)
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v30];
    }

    else
    {
      v31 = off_1E7ACE580[v30];
    }

    [v3 setObject:v31 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_title)
  {
    v32 = [(_SFPBTextColumnsCardSection *)self title];
    v33 = [v32 copy];
    [v3 setObject:v33 forKeyedSubscript:@"title"];
  }

  if (self->_titleWeight)
  {
    v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[_SFPBTextColumnsCardSection titleWeight](self, "titleWeight")}];
    [v3 setObject:v34 forKeyedSubscript:@"titleWeight"];
  }

  if (self->_type)
  {
    v35 = [(_SFPBTextColumnsCardSection *)self type];
    v36 = [v35 copy];
    [v3 setObject:v36 forKeyedSubscript:@"type"];
  }

  v37 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v14 = [(NSArray *)self->_punchoutOptions hash];
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
  v11 = v3 ^ v14 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  v12 = v10 ^ [(NSString *)self->_title hash]^ (2654435761 * self->_titleWeight);
  return v11 ^ v12 ^ [(NSArray *)self->_columns hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_42;
  }

  v5 = [(_SFPBTextColumnsCardSection *)self punchoutOptions];
  v6 = [v4 punchoutOptions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_41;
  }

  v7 = [(_SFPBTextColumnsCardSection *)self punchoutOptions];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBTextColumnsCardSection *)self punchoutOptions];
    v10 = [v4 punchoutOptions];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  v5 = [(_SFPBTextColumnsCardSection *)self punchoutPickerTitle];
  v6 = [v4 punchoutPickerTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_41;
  }

  v12 = [(_SFPBTextColumnsCardSection *)self punchoutPickerTitle];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBTextColumnsCardSection *)self punchoutPickerTitle];
    v15 = [v4 punchoutPickerTitle];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  v5 = [(_SFPBTextColumnsCardSection *)self punchoutPickerDismissText];
  v6 = [v4 punchoutPickerDismissText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_41;
  }

  v17 = [(_SFPBTextColumnsCardSection *)self punchoutPickerDismissText];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBTextColumnsCardSection *)self punchoutPickerDismissText];
    v20 = [v4 punchoutPickerDismissText];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [v4 canBeHidden])
  {
    goto LABEL_42;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [v4 hasTopPadding])
  {
    goto LABEL_42;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [v4 hasBottomPadding])
  {
    goto LABEL_42;
  }

  v5 = [(_SFPBTextColumnsCardSection *)self type];
  v6 = [v4 type];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_41;
  }

  v25 = [(_SFPBTextColumnsCardSection *)self type];
  if (v25)
  {
    v26 = v25;
    v27 = [(_SFPBTextColumnsCardSection *)self type];
    v28 = [v4 type];
    v29 = [v27 isEqual:v28];

    if (!v29)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [v4 separatorStyle])
  {
    goto LABEL_42;
  }

  v5 = [(_SFPBTextColumnsCardSection *)self backgroundColor];
  v6 = [v4 backgroundColor];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_41;
  }

  v31 = [(_SFPBTextColumnsCardSection *)self backgroundColor];
  if (v31)
  {
    v32 = v31;
    v33 = [(_SFPBTextColumnsCardSection *)self backgroundColor];
    v34 = [v4 backgroundColor];
    v35 = [v33 isEqual:v34];

    if (!v35)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  v5 = [(_SFPBTextColumnsCardSection *)self title];
  v6 = [v4 title];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_41;
  }

  v36 = [(_SFPBTextColumnsCardSection *)self title];
  if (v36)
  {
    v37 = v36;
    v38 = [(_SFPBTextColumnsCardSection *)self title];
    v39 = [v4 title];
    v40 = [v38 isEqual:v39];

    if (!v40)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  titleWeight = self->_titleWeight;
  if (titleWeight != [v4 titleWeight])
  {
    goto LABEL_42;
  }

  v5 = [(_SFPBTextColumnsCardSection *)self columns];
  v6 = [v4 columns];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_41:

    goto LABEL_42;
  }

  v42 = [(_SFPBTextColumnsCardSection *)self columns];
  if (!v42)
  {

LABEL_45:
    v47 = 1;
    goto LABEL_43;
  }

  v43 = v42;
  v44 = [(_SFPBTextColumnsCardSection *)self columns];
  v45 = [v4 columns];
  v46 = [v44 isEqual:v45];

  if (v46)
  {
    goto LABEL_45;
  }

LABEL_42:
  v47 = 0;
LABEL_43:

  return v47;
}

- (void)writeTo:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBTextColumnsCardSection *)self punchoutOptions];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      v9 = 0;
      do
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v27 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v7);
  }

  v11 = [(_SFPBTextColumnsCardSection *)self punchoutPickerTitle];
  if (v11)
  {
    PBDataWriterWriteStringField();
  }

  v12 = [(_SFPBTextColumnsCardSection *)self punchoutPickerDismissText];
  if (v12)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBTextColumnsCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBTextColumnsCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBTextColumnsCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  v13 = [(_SFPBTextColumnsCardSection *)self type];
  if (v13)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBTextColumnsCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  v14 = [(_SFPBTextColumnsCardSection *)self backgroundColor];
  if (v14)
  {
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_SFPBTextColumnsCardSection *)self title];
  if (v15)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBTextColumnsCardSection *)self titleWeight])
  {
    PBDataWriterWriteUint32Field();
  }

  v16 = [(_SFPBTextColumnsCardSection *)self columns];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      v20 = 0;
      do
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v23 + 1) + 8 * v20);
        PBDataWriterWriteSubmessage();
        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v18);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)addColumns:(id)a3
{
  v4 = a3;
  columns = self->_columns;
  v8 = v4;
  if (!columns)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_columns;
    self->_columns = v6;

    v4 = v8;
    columns = self->_columns;
  }

  [(NSArray *)columns addObject:v4];
}

- (void)setColumns:(id)a3
{
  v4 = [a3 copy];
  columns = self->_columns;
  self->_columns = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setTitle:(id)a3
{
  v4 = [a3 copy];
  title = self->_title;
  self->_title = v4;

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