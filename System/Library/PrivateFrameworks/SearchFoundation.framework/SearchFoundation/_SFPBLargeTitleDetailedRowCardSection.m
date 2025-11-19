@interface _SFPBLargeTitleDetailedRowCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBLargeTitleDetailedRowCardSection)initWithDictionary:(id)a3;
- (_SFPBLargeTitleDetailedRowCardSection)initWithFacade:(id)a3;
- (_SFPBLargeTitleDetailedRowCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPunchoutOptions:(id)a3;
- (void)addTrailingButtonItems:(id)a3;
- (void)setPunchoutOptions:(id)a3;
- (void)setPunchoutPickerDismissText:(id)a3;
- (void)setPunchoutPickerTitle:(id)a3;
- (void)setTrailingButtonItems:(id)a3;
- (void)setType:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBLargeTitleDetailedRowCardSection

- (_SFPBLargeTitleDetailedRowCardSection)initWithFacade:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBLargeTitleDetailedRowCardSection *)self init];
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

    [(_SFPBLargeTitleDetailedRowCardSection *)v5 setPunchoutOptions:v7];
    v14 = [v4 punchoutPickerTitle];

    if (v14)
    {
      v15 = [v4 punchoutPickerTitle];
      [(_SFPBLargeTitleDetailedRowCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [v4 punchoutPickerDismissText];

    if (v16)
    {
      v17 = [v4 punchoutPickerDismissText];
      [(_SFPBLargeTitleDetailedRowCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    if ([v4 hasCanBeHidden])
    {
      -[_SFPBLargeTitleDetailedRowCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v4 canBeHidden]);
    }

    if ([v4 hasHasTopPadding])
    {
      -[_SFPBLargeTitleDetailedRowCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v4 hasTopPadding]);
    }

    if ([v4 hasHasBottomPadding])
    {
      -[_SFPBLargeTitleDetailedRowCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v4 hasBottomPadding]);
    }

    v18 = [v4 type];

    if (v18)
    {
      v19 = [v4 type];
      [(_SFPBLargeTitleDetailedRowCardSection *)v5 setType:v19];
    }

    if ([v4 hasSeparatorStyle])
    {
      -[_SFPBLargeTitleDetailedRowCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v4 separatorStyle]);
    }

    v20 = [v4 backgroundColor];

    if (v20)
    {
      v21 = [_SFPBColor alloc];
      v22 = [v4 backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:v22];
      [(_SFPBLargeTitleDetailedRowCardSection *)v5 setBackgroundColor:v23];
    }

    v24 = [v4 title];

    if (v24)
    {
      v25 = [_SFPBRichText alloc];
      v26 = [v4 title];
      v27 = [(_SFPBRichText *)v25 initWithFacade:v26];
      [(_SFPBLargeTitleDetailedRowCardSection *)v5 setTitle:v27];
    }

    v28 = [v4 subtitleButtonItem];

    if (v28)
    {
      v29 = [_SFPBButtonItem alloc];
      v30 = [v4 subtitleButtonItem];
      v31 = [(_SFPBButtonItem *)v29 initWithFacade:v30];
      [(_SFPBLargeTitleDetailedRowCardSection *)v5 setSubtitleButtonItem:v31];
    }

    v32 = [v4 trailingButtonItems];
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
    v34 = [v4 trailingButtonItems];
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

    [(_SFPBLargeTitleDetailedRowCardSection *)v5 setTrailingButtonItems:v33];
    v40 = v5;
  }

  v41 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBLargeTitleDetailedRowCardSection)initWithDictionary:(id)a3
{
  v68 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v65.receiver = self;
  v65.super_class = _SFPBLargeTitleDetailedRowCardSection;
  v5 = [(_SFPBLargeTitleDetailedRowCardSection *)&v65 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"punchoutOptions"];
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
    v15 = [v4 objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 copy];
      [(_SFPBLargeTitleDetailedRowCardSection *)v5 setPunchoutPickerTitle:v16];
    }

    v17 = [v4 objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v17 copy];
      [(_SFPBLargeTitleDetailedRowCardSection *)v5 setPunchoutPickerDismissText:v18];
    }

    v19 = [v4 objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBLargeTitleDetailedRowCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v19 BOOLValue]);
    }

    v20 = [v4 objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    v55 = v20;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBLargeTitleDetailedRowCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v20 BOOLValue]);
    }

    v21 = [v4 objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBLargeTitleDetailedRowCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v21 BOOLValue]);
    }

    v22 = [v4 objectForKeyedSubscript:@"type"];
    objc_opt_class();
    v54 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = v19;
      v24 = [v22 copy];
      [(_SFPBLargeTitleDetailedRowCardSection *)v5 setType:v24];

      v19 = v23;
    }

    v25 = [v4 objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    v26 = v15;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBLargeTitleDetailedRowCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v25 intValue]);
    }

    v51 = v25;
    v27 = [v4 objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [[_SFPBColor alloc] initWithDictionary:v27];
      [(_SFPBLargeTitleDetailedRowCardSection *)v5 setBackgroundColor:v28];
    }

    v52 = v17;
    v29 = [v4 objectForKeyedSubscript:@"title"];
    objc_opt_class();
    v30 = v56;
    if (objc_opt_isKindOfClass())
    {
      v31 = v29;
      v32 = [[_SFPBRichText alloc] initWithDictionary:v29];
      [(_SFPBLargeTitleDetailedRowCardSection *)v5 setTitle:v32];

      v29 = v31;
    }

    v33 = [v4 objectForKeyedSubscript:@"subtitleButtonItem"];
    objc_opt_class();
    v53 = v33;
    if (objc_opt_isKindOfClass())
    {
      v34 = [[_SFPBButtonItem alloc] initWithDictionary:v33];
      [(_SFPBLargeTitleDetailedRowCardSection *)v5 setSubtitleButtonItem:v34];
    }

    v35 = [v4 objectForKeyedSubscript:@"trailingButtonItems"];
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

- (_SFPBLargeTitleDetailedRowCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBLargeTitleDetailedRowCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBLargeTitleDetailedRowCardSection *)self dictionaryRepresentation];
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
  v52 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_backgroundColor)
  {
    v4 = [(_SFPBLargeTitleDetailedRowCardSection *)self backgroundColor];
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
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBLargeTitleDetailedRowCardSection canBeHidden](self, "canBeHidden")}];
    [v3 setObject:v7 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_hasBottomPadding)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBLargeTitleDetailedRowCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [v3 setObject:v8 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBLargeTitleDetailedRowCardSection hasTopPadding](self, "hasTopPadding")}];
    [v3 setObject:v9 forKeyedSubscript:@"hasTopPadding"];
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    v10 = [MEMORY[0x1E695DF70] array];
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

          v16 = [*(*(&v46 + 1) + 8 * i) dictionaryRepresentation];
          if (v16)
          {
            [v10 addObject:v16];
          }

          else
          {
            v17 = [MEMORY[0x1E695DFB0] null];
            [v10 addObject:v17];
          }
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v13);
    }

    [v3 setObject:v10 forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    v18 = [(_SFPBLargeTitleDetailedRowCardSection *)self punchoutPickerDismissText];
    v19 = [v18 copy];
    [v3 setObject:v19 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    v20 = [(_SFPBLargeTitleDetailedRowCardSection *)self punchoutPickerTitle];
    v21 = [v20 copy];
    [v3 setObject:v21 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    v22 = [(_SFPBLargeTitleDetailedRowCardSection *)self separatorStyle];
    if (v22 >= 6)
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v22];
    }

    else
    {
      v23 = off_1E7ACE580[v22];
    }

    [v3 setObject:v23 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_subtitleButtonItem)
  {
    v24 = [(_SFPBLargeTitleDetailedRowCardSection *)self subtitleButtonItem];
    v25 = [v24 dictionaryRepresentation];
    if (v25)
    {
      [v3 setObject:v25 forKeyedSubscript:@"subtitleButtonItem"];
    }

    else
    {
      v26 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v26 forKeyedSubscript:@"subtitleButtonItem"];
    }
  }

  if (self->_title)
  {
    v27 = [(_SFPBLargeTitleDetailedRowCardSection *)self title];
    v28 = [v27 dictionaryRepresentation];
    if (v28)
    {
      [v3 setObject:v28 forKeyedSubscript:@"title"];
    }

    else
    {
      v29 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v29 forKeyedSubscript:@"title"];
    }
  }

  if ([(NSArray *)self->_trailingButtonItems count])
  {
    v30 = [MEMORY[0x1E695DF70] array];
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

          v36 = [*(*(&v42 + 1) + 8 * j) dictionaryRepresentation];
          if (v36)
          {
            [v30 addObject:v36];
          }

          else
          {
            v37 = [MEMORY[0x1E695DFB0] null];
            [v30 addObject:v37];
          }
        }

        v33 = [(NSArray *)v31 countByEnumeratingWithState:&v42 objects:v50 count:16];
      }

      while (v33);
    }

    [v3 setObject:v30 forKeyedSubscript:@"trailingButtonItems"];
  }

  if (self->_type)
  {
    v38 = [(_SFPBLargeTitleDetailedRowCardSection *)self type];
    v39 = [v38 copy];
    [v3 setObject:v39 forKeyedSubscript:@"type"];
  }

  v40 = *MEMORY[0x1E69E9840];

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
  v11 = v10 ^ [(_SFPBRichText *)self->_title hash];
  v12 = v11 ^ [(_SFPBButtonItem *)self->_subtitleButtonItem hash];
  return v9 ^ v12 ^ [(NSArray *)self->_trailingButtonItems hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_46;
  }

  v5 = [(_SFPBLargeTitleDetailedRowCardSection *)self punchoutOptions];
  v6 = [v4 punchoutOptions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_45;
  }

  v7 = [(_SFPBLargeTitleDetailedRowCardSection *)self punchoutOptions];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBLargeTitleDetailedRowCardSection *)self punchoutOptions];
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

  v5 = [(_SFPBLargeTitleDetailedRowCardSection *)self punchoutPickerTitle];
  v6 = [v4 punchoutPickerTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_45;
  }

  v12 = [(_SFPBLargeTitleDetailedRowCardSection *)self punchoutPickerTitle];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBLargeTitleDetailedRowCardSection *)self punchoutPickerTitle];
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

  v5 = [(_SFPBLargeTitleDetailedRowCardSection *)self punchoutPickerDismissText];
  v6 = [v4 punchoutPickerDismissText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_45;
  }

  v17 = [(_SFPBLargeTitleDetailedRowCardSection *)self punchoutPickerDismissText];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBLargeTitleDetailedRowCardSection *)self punchoutPickerDismissText];
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

  v5 = [(_SFPBLargeTitleDetailedRowCardSection *)self type];
  v6 = [v4 type];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_45;
  }

  v25 = [(_SFPBLargeTitleDetailedRowCardSection *)self type];
  if (v25)
  {
    v26 = v25;
    v27 = [(_SFPBLargeTitleDetailedRowCardSection *)self type];
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

  v5 = [(_SFPBLargeTitleDetailedRowCardSection *)self backgroundColor];
  v6 = [v4 backgroundColor];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_45;
  }

  v31 = [(_SFPBLargeTitleDetailedRowCardSection *)self backgroundColor];
  if (v31)
  {
    v32 = v31;
    v33 = [(_SFPBLargeTitleDetailedRowCardSection *)self backgroundColor];
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

  v5 = [(_SFPBLargeTitleDetailedRowCardSection *)self title];
  v6 = [v4 title];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_45;
  }

  v36 = [(_SFPBLargeTitleDetailedRowCardSection *)self title];
  if (v36)
  {
    v37 = v36;
    v38 = [(_SFPBLargeTitleDetailedRowCardSection *)self title];
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

  v5 = [(_SFPBLargeTitleDetailedRowCardSection *)self subtitleButtonItem];
  v6 = [v4 subtitleButtonItem];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_45;
  }

  v41 = [(_SFPBLargeTitleDetailedRowCardSection *)self subtitleButtonItem];
  if (v41)
  {
    v42 = v41;
    v43 = [(_SFPBLargeTitleDetailedRowCardSection *)self subtitleButtonItem];
    v44 = [v4 subtitleButtonItem];
    v45 = [v43 isEqual:v44];

    if (!v45)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  v5 = [(_SFPBLargeTitleDetailedRowCardSection *)self trailingButtonItems];
  v6 = [v4 trailingButtonItems];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_45:

    goto LABEL_46;
  }

  v46 = [(_SFPBLargeTitleDetailedRowCardSection *)self trailingButtonItems];
  if (!v46)
  {

LABEL_49:
    v51 = 1;
    goto LABEL_47;
  }

  v47 = v46;
  v48 = [(_SFPBLargeTitleDetailedRowCardSection *)self trailingButtonItems];
  v49 = [v4 trailingButtonItems];
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
  v5 = [(_SFPBLargeTitleDetailedRowCardSection *)self punchoutOptions];
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

  v11 = [(_SFPBLargeTitleDetailedRowCardSection *)self punchoutPickerTitle];
  if (v11)
  {
    PBDataWriterWriteStringField();
  }

  v12 = [(_SFPBLargeTitleDetailedRowCardSection *)self punchoutPickerDismissText];
  if (v12)
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

  v13 = [(_SFPBLargeTitleDetailedRowCardSection *)self type];
  if (v13)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBLargeTitleDetailedRowCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  v14 = [(_SFPBLargeTitleDetailedRowCardSection *)self backgroundColor];
  if (v14)
  {
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_SFPBLargeTitleDetailedRowCardSection *)self title];
  if (v15)
  {
    PBDataWriterWriteSubmessage();
  }

  v16 = [(_SFPBLargeTitleDetailedRowCardSection *)self subtitleButtonItem];
  if (v16)
  {
    PBDataWriterWriteSubmessage();
  }

  v17 = [(_SFPBLargeTitleDetailedRowCardSection *)self trailingButtonItems];
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

  v23 = *MEMORY[0x1E69E9840];
}

- (void)addTrailingButtonItems:(id)a3
{
  v4 = a3;
  trailingButtonItems = self->_trailingButtonItems;
  v8 = v4;
  if (!trailingButtonItems)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_trailingButtonItems;
    self->_trailingButtonItems = v6;

    v4 = v8;
    trailingButtonItems = self->_trailingButtonItems;
  }

  [(NSArray *)trailingButtonItems addObject:v4];
}

- (void)setTrailingButtonItems:(id)a3
{
  v4 = [a3 copy];
  trailingButtonItems = self->_trailingButtonItems;
  self->_trailingButtonItems = v4;

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