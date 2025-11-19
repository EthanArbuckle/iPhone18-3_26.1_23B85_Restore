@interface _SFPBLeadingTrailingCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBLeadingTrailingCardSection)initWithDictionary:(id)a3;
- (_SFPBLeadingTrailingCardSection)initWithFacade:(id)a3;
- (_SFPBLeadingTrailingCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addLeadingCardSections:(id)a3;
- (void)addPunchoutOptions:(id)a3;
- (void)addTrailingCardSections:(id)a3;
- (void)setLeadingCardSections:(id)a3;
- (void)setPunchoutOptions:(id)a3;
- (void)setPunchoutPickerDismissText:(id)a3;
- (void)setPunchoutPickerTitle:(id)a3;
- (void)setTrailingCardSections:(id)a3;
- (void)setType:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBLeadingTrailingCardSection

- (_SFPBLeadingTrailingCardSection)initWithFacade:(id)a3
{
  v61 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBLeadingTrailingCardSection *)self init];
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

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v8 = [v4 punchoutOptions];
    v9 = [v8 countByEnumeratingWithState:&v54 objects:v60 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v55;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v55 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v54 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v54 objects:v60 count:16];
      }

      while (v10);
    }

    [(_SFPBLeadingTrailingCardSection *)v5 setPunchoutOptions:v7];
    v14 = [v4 punchoutPickerTitle];

    if (v14)
    {
      v15 = [v4 punchoutPickerTitle];
      [(_SFPBLeadingTrailingCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [v4 punchoutPickerDismissText];

    if (v16)
    {
      v17 = [v4 punchoutPickerDismissText];
      [(_SFPBLeadingTrailingCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    if ([v4 hasCanBeHidden])
    {
      -[_SFPBLeadingTrailingCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v4 canBeHidden]);
    }

    if ([v4 hasHasTopPadding])
    {
      -[_SFPBLeadingTrailingCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v4 hasTopPadding]);
    }

    if ([v4 hasHasBottomPadding])
    {
      -[_SFPBLeadingTrailingCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v4 hasBottomPadding]);
    }

    v18 = [v4 type];

    if (v18)
    {
      v19 = [v4 type];
      [(_SFPBLeadingTrailingCardSection *)v5 setType:v19];
    }

    if ([v4 hasSeparatorStyle])
    {
      -[_SFPBLeadingTrailingCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v4 separatorStyle]);
    }

    v20 = [v4 backgroundColor];

    if (v20)
    {
      v21 = [_SFPBColor alloc];
      v22 = [v4 backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:v22];
      [(_SFPBLeadingTrailingCardSection *)v5 setBackgroundColor:v23];
    }

    v24 = [v4 leadingCardSections];
    if (v24)
    {
      v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v25 = 0;
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v26 = [v4 leadingCardSections];
    v27 = [v26 countByEnumeratingWithState:&v50 objects:v59 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v51;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v51 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = [[_SFPBCardSection alloc] initWithFacade:*(*(&v50 + 1) + 8 * j)];
          if (v31)
          {
            [v25 addObject:v31];
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v50 objects:v59 count:16];
      }

      while (v28);
    }

    [(_SFPBLeadingTrailingCardSection *)v5 setLeadingCardSections:v25];
    v32 = [v4 trailingCardSections];
    v45 = v5;
    if (v32)
    {
      v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v33 = 0;
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v34 = [v4 trailingCardSections];
    v35 = [v34 countByEnumeratingWithState:&v46 objects:v58 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v47;
      do
      {
        for (k = 0; k != v36; ++k)
        {
          if (*v47 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = [[_SFPBCardSection alloc] initWithFacade:*(*(&v46 + 1) + 8 * k)];
          if (v39)
          {
            [v33 addObject:v39];
          }
        }

        v36 = [v34 countByEnumeratingWithState:&v46 objects:v58 count:16];
      }

      while (v36);
    }

    v5 = v45;
    [(_SFPBLeadingTrailingCardSection *)v45 setTrailingCardSections:v33];
    if ([v4 hasLeadingToTrailingRatio])
    {
      v40 = [_SFPBGraphicalFloat alloc];
      [v4 leadingToTrailingRatio];
      v41 = [(_SFPBGraphicalFloat *)v40 initWithCGFloat:?];
      [(_SFPBLeadingTrailingCardSection *)v45 setLeadingToTrailingRatio:v41];
    }

    v42 = v45;
  }

  v43 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBLeadingTrailingCardSection)initWithDictionary:(id)a3
{
  v73 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v69.receiver = self;
  v69.super_class = _SFPBLeadingTrailingCardSection;
  v5 = [(_SFPBLeadingTrailingCardSection *)&v69 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"punchoutOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v65 objects:v72 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v66;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v66 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v65 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [[_SFPBPunchout alloc] initWithDictionary:v12];
              [(_SFPBLeadingTrailingCardSection *)v5 addPunchoutOptions:v13];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v65 objects:v72 count:16];
        }

        while (v9);
      }
    }

    v14 = [v4 objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBLeadingTrailingCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBLeadingTrailingCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    v50 = v16;
    v18 = [v4 objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    v56 = v18;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBLeadingTrailingCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v18 BOOLValue]);
    }

    v19 = [v4 objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    v55 = v19;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBLeadingTrailingCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v19 BOOLValue]);
    }

    v20 = [v4 objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    v54 = v20;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBLeadingTrailingCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v20 BOOLValue]);
    }

    v21 = [v4 objectForKeyedSubscript:@"type"];
    objc_opt_class();
    v53 = v21;
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBLeadingTrailingCardSection *)v5 setType:v22];
    }

    v23 = [v4 objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBLeadingTrailingCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v23 intValue]);
    }

    v24 = [v4 objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBColor alloc] initWithDictionary:v24];
      [(_SFPBLeadingTrailingCardSection *)v5 setBackgroundColor:v25];
    }

    v48 = v24;
    v26 = [v4 objectForKeyedSubscript:@"leadingCardSections"];
    objc_opt_class();
    v52 = v26;
    v51 = v14;
    v49 = v23;
    if (objc_opt_isKindOfClass())
    {
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v27 = v26;
      v28 = [v27 countByEnumeratingWithState:&v61 objects:v71 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v62;
        do
        {
          for (j = 0; j != v29; ++j)
          {
            if (*v62 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v61 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v33 = [[_SFPBCardSection alloc] initWithDictionary:v32];
              [(_SFPBLeadingTrailingCardSection *)v5 addLeadingCardSections:v33];
            }
          }

          v29 = [v27 countByEnumeratingWithState:&v61 objects:v71 count:16];
        }

        while (v29);
      }

      v14 = v51;
      v23 = v49;
    }

    v34 = [v4 objectForKeyedSubscript:@"trailingCardSections"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = v6;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v35 = v34;
      v36 = [v35 countByEnumeratingWithState:&v57 objects:v70 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = *v58;
        do
        {
          for (k = 0; k != v37; ++k)
          {
            if (*v58 != v38)
            {
              objc_enumerationMutation(v35);
            }

            v40 = *(*(&v57 + 1) + 8 * k);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v41 = [[_SFPBCardSection alloc] initWithDictionary:v40];
              [(_SFPBLeadingTrailingCardSection *)v5 addTrailingCardSections:v41];
            }
          }

          v37 = [v35 countByEnumeratingWithState:&v57 objects:v70 count:16];
        }

        while (v37);
      }

      v6 = v47;
      v14 = v51;
      v23 = v49;
    }

    v42 = [v4 objectForKeyedSubscript:{@"leadingToTrailingRatio", v47}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = [[_SFPBGraphicalFloat alloc] initWithDictionary:v42];
      [(_SFPBLeadingTrailingCardSection *)v5 setLeadingToTrailingRatio:v43];
    }

    v44 = v5;
  }

  v45 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBLeadingTrailingCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBLeadingTrailingCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBLeadingTrailingCardSection *)self dictionaryRepresentation];
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
  v62 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_backgroundColor)
  {
    v4 = [(_SFPBLeadingTrailingCardSection *)self backgroundColor];
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
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBLeadingTrailingCardSection canBeHidden](self, "canBeHidden")}];
    [v3 setObject:v7 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_hasBottomPadding)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBLeadingTrailingCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [v3 setObject:v8 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBLeadingTrailingCardSection hasTopPadding](self, "hasTopPadding")}];
    [v3 setObject:v9 forKeyedSubscript:@"hasTopPadding"];
  }

  if ([(NSArray *)self->_leadingCardSections count])
  {
    v10 = [MEMORY[0x1E695DF70] array];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v11 = self->_leadingCardSections;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v55 objects:v61 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v56;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v56 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v55 + 1) + 8 * i) dictionaryRepresentation];
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

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v55 objects:v61 count:16];
      }

      while (v13);
    }

    [v3 setObject:v10 forKeyedSubscript:@"leadingCardSections"];
  }

  if (self->_leadingToTrailingRatio)
  {
    v18 = [(_SFPBLeadingTrailingCardSection *)self leadingToTrailingRatio];
    v19 = [v18 dictionaryRepresentation];
    if (v19)
    {
      [v3 setObject:v19 forKeyedSubscript:@"leadingToTrailingRatio"];
    }

    else
    {
      v20 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v20 forKeyedSubscript:@"leadingToTrailingRatio"];
    }
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    v21 = [MEMORY[0x1E695DF70] array];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v22 = self->_punchoutOptions;
    v23 = [(NSArray *)v22 countByEnumeratingWithState:&v51 objects:v60 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v52;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v52 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [*(*(&v51 + 1) + 8 * j) dictionaryRepresentation];
          if (v27)
          {
            [v21 addObject:v27];
          }

          else
          {
            v28 = [MEMORY[0x1E695DFB0] null];
            [v21 addObject:v28];
          }
        }

        v24 = [(NSArray *)v22 countByEnumeratingWithState:&v51 objects:v60 count:16];
      }

      while (v24);
    }

    [v3 setObject:v21 forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    v29 = [(_SFPBLeadingTrailingCardSection *)self punchoutPickerDismissText];
    v30 = [v29 copy];
    [v3 setObject:v30 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    v31 = [(_SFPBLeadingTrailingCardSection *)self punchoutPickerTitle];
    v32 = [v31 copy];
    [v3 setObject:v32 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    v33 = [(_SFPBLeadingTrailingCardSection *)self separatorStyle];
    if (v33 >= 6)
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v33];
    }

    else
    {
      v34 = off_1E7ACE580[v33];
    }

    [v3 setObject:v34 forKeyedSubscript:@"separatorStyle"];
  }

  if ([(NSArray *)self->_trailingCardSections count])
  {
    v35 = [MEMORY[0x1E695DF70] array];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v36 = self->_trailingCardSections;
    v37 = [(NSArray *)v36 countByEnumeratingWithState:&v47 objects:v59 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v48;
      do
      {
        for (k = 0; k != v38; ++k)
        {
          if (*v48 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v41 = [*(*(&v47 + 1) + 8 * k) dictionaryRepresentation];
          if (v41)
          {
            [v35 addObject:v41];
          }

          else
          {
            v42 = [MEMORY[0x1E695DFB0] null];
            [v35 addObject:v42];
          }
        }

        v38 = [(NSArray *)v36 countByEnumeratingWithState:&v47 objects:v59 count:16];
      }

      while (v38);
    }

    [v3 setObject:v35 forKeyedSubscript:@"trailingCardSections"];
  }

  if (self->_type)
  {
    v43 = [(_SFPBLeadingTrailingCardSection *)self type];
    v44 = [v43 copy];
    [v3 setObject:v44 forKeyedSubscript:@"type"];
  }

  v45 = *MEMORY[0x1E69E9840];

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
  v11 = v10 ^ [(NSArray *)self->_leadingCardSections hash];
  v12 = v11 ^ [(NSArray *)self->_trailingCardSections hash];
  return v9 ^ v12 ^ [(_SFPBGraphicalFloat *)self->_leadingToTrailingRatio hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_46;
  }

  v5 = [(_SFPBLeadingTrailingCardSection *)self punchoutOptions];
  v6 = [v4 punchoutOptions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_45;
  }

  v7 = [(_SFPBLeadingTrailingCardSection *)self punchoutOptions];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBLeadingTrailingCardSection *)self punchoutOptions];
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

  v5 = [(_SFPBLeadingTrailingCardSection *)self punchoutPickerTitle];
  v6 = [v4 punchoutPickerTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_45;
  }

  v12 = [(_SFPBLeadingTrailingCardSection *)self punchoutPickerTitle];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBLeadingTrailingCardSection *)self punchoutPickerTitle];
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

  v5 = [(_SFPBLeadingTrailingCardSection *)self punchoutPickerDismissText];
  v6 = [v4 punchoutPickerDismissText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_45;
  }

  v17 = [(_SFPBLeadingTrailingCardSection *)self punchoutPickerDismissText];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBLeadingTrailingCardSection *)self punchoutPickerDismissText];
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

  v5 = [(_SFPBLeadingTrailingCardSection *)self type];
  v6 = [v4 type];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_45;
  }

  v25 = [(_SFPBLeadingTrailingCardSection *)self type];
  if (v25)
  {
    v26 = v25;
    v27 = [(_SFPBLeadingTrailingCardSection *)self type];
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

  v5 = [(_SFPBLeadingTrailingCardSection *)self backgroundColor];
  v6 = [v4 backgroundColor];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_45;
  }

  v31 = [(_SFPBLeadingTrailingCardSection *)self backgroundColor];
  if (v31)
  {
    v32 = v31;
    v33 = [(_SFPBLeadingTrailingCardSection *)self backgroundColor];
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

  v5 = [(_SFPBLeadingTrailingCardSection *)self leadingCardSections];
  v6 = [v4 leadingCardSections];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_45;
  }

  v36 = [(_SFPBLeadingTrailingCardSection *)self leadingCardSections];
  if (v36)
  {
    v37 = v36;
    v38 = [(_SFPBLeadingTrailingCardSection *)self leadingCardSections];
    v39 = [v4 leadingCardSections];
    v40 = [v38 isEqual:v39];

    if (!v40)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  v5 = [(_SFPBLeadingTrailingCardSection *)self trailingCardSections];
  v6 = [v4 trailingCardSections];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_45;
  }

  v41 = [(_SFPBLeadingTrailingCardSection *)self trailingCardSections];
  if (v41)
  {
    v42 = v41;
    v43 = [(_SFPBLeadingTrailingCardSection *)self trailingCardSections];
    v44 = [v4 trailingCardSections];
    v45 = [v43 isEqual:v44];

    if (!v45)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  v5 = [(_SFPBLeadingTrailingCardSection *)self leadingToTrailingRatio];
  v6 = [v4 leadingToTrailingRatio];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_45:

    goto LABEL_46;
  }

  v46 = [(_SFPBLeadingTrailingCardSection *)self leadingToTrailingRatio];
  if (!v46)
  {

LABEL_49:
    v51 = 1;
    goto LABEL_47;
  }

  v47 = v46;
  v48 = [(_SFPBLeadingTrailingCardSection *)self leadingToTrailingRatio];
  v49 = [v4 leadingToTrailingRatio];
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
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBLeadingTrailingCardSection *)self punchoutOptions];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v38;
    do
    {
      v9 = 0;
      do
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v37 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v7);
  }

  v11 = [(_SFPBLeadingTrailingCardSection *)self punchoutPickerTitle];
  if (v11)
  {
    PBDataWriterWriteStringField();
  }

  v12 = [(_SFPBLeadingTrailingCardSection *)self punchoutPickerDismissText];
  if (v12)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBLeadingTrailingCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBLeadingTrailingCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBLeadingTrailingCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  v13 = [(_SFPBLeadingTrailingCardSection *)self type];
  if (v13)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBLeadingTrailingCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  v14 = [(_SFPBLeadingTrailingCardSection *)self backgroundColor];
  if (v14)
  {
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_SFPBLeadingTrailingCardSection *)self leadingCardSections];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v34;
    do
    {
      v19 = 0;
      do
      {
        if (*v34 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v33 + 1) + 8 * v19);
        PBDataWriterWriteSubmessage();
        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v17);
  }

  v21 = [(_SFPBLeadingTrailingCardSection *)self trailingCardSections];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v22 = [v21 countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v30;
    do
    {
      v25 = 0;
      do
      {
        if (*v30 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v29 + 1) + 8 * v25);
        PBDataWriterWriteSubmessage();
        ++v25;
      }

      while (v23 != v25);
      v23 = [v21 countByEnumeratingWithState:&v29 objects:v41 count:16];
    }

    while (v23);
  }

  v27 = [(_SFPBLeadingTrailingCardSection *)self leadingToTrailingRatio];
  if (v27)
  {
    PBDataWriterWriteSubmessage();
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (void)addTrailingCardSections:(id)a3
{
  v4 = a3;
  trailingCardSections = self->_trailingCardSections;
  v8 = v4;
  if (!trailingCardSections)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_trailingCardSections;
    self->_trailingCardSections = v6;

    v4 = v8;
    trailingCardSections = self->_trailingCardSections;
  }

  [(NSArray *)trailingCardSections addObject:v4];
}

- (void)setTrailingCardSections:(id)a3
{
  v4 = [a3 copy];
  trailingCardSections = self->_trailingCardSections;
  self->_trailingCardSections = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addLeadingCardSections:(id)a3
{
  v4 = a3;
  leadingCardSections = self->_leadingCardSections;
  v8 = v4;
  if (!leadingCardSections)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_leadingCardSections;
    self->_leadingCardSections = v6;

    v4 = v8;
    leadingCardSections = self->_leadingCardSections;
  }

  [(NSArray *)leadingCardSections addObject:v4];
}

- (void)setLeadingCardSections:(id)a3
{
  v4 = [a3 copy];
  leadingCardSections = self->_leadingCardSections;
  self->_leadingCardSections = v4;

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