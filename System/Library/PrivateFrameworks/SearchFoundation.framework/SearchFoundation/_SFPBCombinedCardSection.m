@interface _SFPBCombinedCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBCombinedCardSection)initWithDictionary:(id)a3;
- (_SFPBCombinedCardSection)initWithFacade:(id)a3;
- (_SFPBCombinedCardSection)initWithJSON:(id)a3;
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

@implementation _SFPBCombinedCardSection

- (_SFPBCombinedCardSection)initWithFacade:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBCombinedCardSection *)self init];
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

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v8 = [v4 punchoutOptions];
    v9 = [v8 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v40;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v40 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v39 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v10);
    }

    [(_SFPBCombinedCardSection *)v5 setPunchoutOptions:v7];
    v14 = [v4 punchoutPickerTitle];

    if (v14)
    {
      v15 = [v4 punchoutPickerTitle];
      [(_SFPBCombinedCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [v4 punchoutPickerDismissText];

    if (v16)
    {
      v17 = [v4 punchoutPickerDismissText];
      [(_SFPBCombinedCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    if ([v4 hasCanBeHidden])
    {
      -[_SFPBCombinedCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v4 canBeHidden]);
    }

    if ([v4 hasHasTopPadding])
    {
      -[_SFPBCombinedCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v4 hasTopPadding]);
    }

    if ([v4 hasHasBottomPadding])
    {
      -[_SFPBCombinedCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v4 hasBottomPadding]);
    }

    v18 = [v4 type];

    if (v18)
    {
      v19 = [v4 type];
      [(_SFPBCombinedCardSection *)v5 setType:v19];
    }

    if ([v4 hasSeparatorStyle])
    {
      -[_SFPBCombinedCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v4 separatorStyle]);
    }

    v20 = [v4 backgroundColor];

    if (v20)
    {
      v21 = [_SFPBColor alloc];
      v22 = [v4 backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:v22];
      [(_SFPBCombinedCardSection *)v5 setBackgroundColor:v23];
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

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v26 = [v4 cardSections];
    v27 = [v26 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v36;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v36 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = [[_SFPBCardSection alloc] initWithFacade:*(*(&v35 + 1) + 8 * j)];
          if (v31)
          {
            [v25 addObject:v31];
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v28);
    }

    [(_SFPBCombinedCardSection *)v5 setCardSections:v25];
    v32 = v5;
  }

  v33 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBCombinedCardSection)initWithDictionary:(id)a3
{
  v58 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v55.receiver = self;
  v55.super_class = _SFPBCombinedCardSection;
  v5 = [(_SFPBCombinedCardSection *)&v55 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"punchoutOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v7 = v6;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v51 objects:v57 count:16];
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

            v13 = *(*(&v51 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [[_SFPBPunchout alloc] initWithDictionary:v13];
              [(_SFPBCombinedCardSection *)v5 addPunchoutOptions:v14];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v51 objects:v57 count:16];
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
      [(_SFPBCombinedCardSection *)v5 setPunchoutPickerTitle:v16];
    }

    v17 = [v4 objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v17 copy];
      [(_SFPBCombinedCardSection *)v5 setPunchoutPickerDismissText:v18];
    }

    v19 = [v4 objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCombinedCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v19 BOOLValue]);
    }

    v20 = [v4 objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    v46 = v20;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCombinedCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v20 BOOLValue]);
    }

    v21 = [v4 objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCombinedCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v21 BOOLValue]);
    }

    v43 = v21;
    v22 = [v4 objectForKeyedSubscript:@"type"];
    objc_opt_class();
    v45 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = v19;
      v24 = [v45 copy];
      [(_SFPBCombinedCardSection *)v5 setType:v24];

      v19 = v23;
    }

    v25 = [v4 objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCombinedCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v25 intValue]);
    }

    v26 = [v4 objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    v44 = v26;
    if (objc_opt_isKindOfClass())
    {
      v27 = [[_SFPBColor alloc] initWithDictionary:v26];
      [(_SFPBCombinedCardSection *)v5 setBackgroundColor:v27];
    }

    v28 = [v4 objectForKeyedSubscript:@"cardSections"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = v25;
      v40 = v19;
      v41 = v15;
      v42 = v6;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v29 = v28;
      v30 = [v29 countByEnumeratingWithState:&v47 objects:v56 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v48;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v48 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v47 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v35 = [[_SFPBCardSection alloc] initWithDictionary:v34];
              [(_SFPBCombinedCardSection *)v5 addCardSections:v35];
            }
          }

          v31 = [v29 countByEnumeratingWithState:&v47 objects:v56 count:16];
        }

        while (v31);
      }

      v15 = v41;
      v6 = v42;
      v19 = v40;
      v25 = v39;
    }

    v36 = v5;
  }

  v37 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBCombinedCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBCombinedCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBCombinedCardSection *)self dictionaryRepresentation];
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
  v46 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_backgroundColor)
  {
    v4 = [(_SFPBCombinedCardSection *)self backgroundColor];
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
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCombinedCardSection canBeHidden](self, "canBeHidden")}];
    [v3 setObject:v7 forKeyedSubscript:@"canBeHidden"];
  }

  if ([(NSArray *)self->_cardSections count])
  {
    v8 = [MEMORY[0x1E695DF70] array];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v9 = self->_cardSections;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v41;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v41 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v40 + 1) + 8 * i) dictionaryRepresentation];
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

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKeyedSubscript:@"cardSections"];
  }

  if (self->_hasBottomPadding)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCombinedCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [v3 setObject:v16 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCombinedCardSection hasTopPadding](self, "hasTopPadding")}];
    [v3 setObject:v17 forKeyedSubscript:@"hasTopPadding"];
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    v18 = [MEMORY[0x1E695DF70] array];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v19 = self->_punchoutOptions;
    v20 = [(NSArray *)v19 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v37;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v37 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [*(*(&v36 + 1) + 8 * j) dictionaryRepresentation];
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

        v21 = [(NSArray *)v19 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v21);
    }

    [v3 setObject:v18 forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    v26 = [(_SFPBCombinedCardSection *)self punchoutPickerDismissText];
    v27 = [v26 copy];
    [v3 setObject:v27 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    v28 = [(_SFPBCombinedCardSection *)self punchoutPickerTitle];
    v29 = [v28 copy];
    [v3 setObject:v29 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    v30 = [(_SFPBCombinedCardSection *)self separatorStyle];
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

  if (self->_type)
  {
    v32 = [(_SFPBCombinedCardSection *)self type];
    v33 = [v32 copy];
    [v3 setObject:v33 forKeyedSubscript:@"type"];
  }

  v34 = *MEMORY[0x1E69E9840];

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
  return v9 ^ v10 ^ [(NSArray *)self->_cardSections hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_36;
  }

  v5 = [(_SFPBCombinedCardSection *)self punchoutOptions];
  v6 = [v4 punchoutOptions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_35;
  }

  v7 = [(_SFPBCombinedCardSection *)self punchoutOptions];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBCombinedCardSection *)self punchoutOptions];
    v10 = [v4 punchoutOptions];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCombinedCardSection *)self punchoutPickerTitle];
  v6 = [v4 punchoutPickerTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_35;
  }

  v12 = [(_SFPBCombinedCardSection *)self punchoutPickerTitle];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBCombinedCardSection *)self punchoutPickerTitle];
    v15 = [v4 punchoutPickerTitle];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCombinedCardSection *)self punchoutPickerDismissText];
  v6 = [v4 punchoutPickerDismissText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_35;
  }

  v17 = [(_SFPBCombinedCardSection *)self punchoutPickerDismissText];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBCombinedCardSection *)self punchoutPickerDismissText];
    v20 = [v4 punchoutPickerDismissText];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [v4 canBeHidden])
  {
    goto LABEL_36;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [v4 hasTopPadding])
  {
    goto LABEL_36;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [v4 hasBottomPadding])
  {
    goto LABEL_36;
  }

  v5 = [(_SFPBCombinedCardSection *)self type];
  v6 = [v4 type];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_35;
  }

  v25 = [(_SFPBCombinedCardSection *)self type];
  if (v25)
  {
    v26 = v25;
    v27 = [(_SFPBCombinedCardSection *)self type];
    v28 = [v4 type];
    v29 = [v27 isEqual:v28];

    if (!v29)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [v4 separatorStyle])
  {
    goto LABEL_36;
  }

  v5 = [(_SFPBCombinedCardSection *)self backgroundColor];
  v6 = [v4 backgroundColor];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_35;
  }

  v31 = [(_SFPBCombinedCardSection *)self backgroundColor];
  if (v31)
  {
    v32 = v31;
    v33 = [(_SFPBCombinedCardSection *)self backgroundColor];
    v34 = [v4 backgroundColor];
    v35 = [v33 isEqual:v34];

    if (!v35)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCombinedCardSection *)self cardSections];
  v6 = [v4 cardSections];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_35:

    goto LABEL_36;
  }

  v36 = [(_SFPBCombinedCardSection *)self cardSections];
  if (!v36)
  {

LABEL_39:
    v41 = 1;
    goto LABEL_37;
  }

  v37 = v36;
  v38 = [(_SFPBCombinedCardSection *)self cardSections];
  v39 = [v4 cardSections];
  v40 = [v38 isEqual:v39];

  if (v40)
  {
    goto LABEL_39;
  }

LABEL_36:
  v41 = 0;
LABEL_37:

  return v41;
}

- (void)writeTo:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBCombinedCardSection *)self punchoutOptions];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      v9 = 0;
      do
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v26 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v7);
  }

  v11 = [(_SFPBCombinedCardSection *)self punchoutPickerTitle];
  if (v11)
  {
    PBDataWriterWriteStringField();
  }

  v12 = [(_SFPBCombinedCardSection *)self punchoutPickerDismissText];
  if (v12)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBCombinedCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBCombinedCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBCombinedCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  v13 = [(_SFPBCombinedCardSection *)self type];
  if (v13)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBCombinedCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  v14 = [(_SFPBCombinedCardSection *)self backgroundColor];
  if (v14)
  {
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_SFPBCombinedCardSection *)self cardSections];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      v19 = 0;
      do
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v22 + 1) + 8 * v19);
        PBDataWriterWriteSubmessage();
        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v17);
  }

  v21 = *MEMORY[0x1E69E9840];
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