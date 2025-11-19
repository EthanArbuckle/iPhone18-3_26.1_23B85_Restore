@interface _SFPBAttributionFooterCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBAttributionFooterCardSection)initWithDictionary:(id)a3;
- (_SFPBAttributionFooterCardSection)initWithFacade:(id)a3;
- (_SFPBAttributionFooterCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPunchoutOptions:(id)a3;
- (void)setPunchoutOptions:(id)a3;
- (void)setPunchoutPickerDismissText:(id)a3;
- (void)setPunchoutPickerTitle:(id)a3;
- (void)setType:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBAttributionFooterCardSection

- (_SFPBAttributionFooterCardSection)initWithFacade:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBAttributionFooterCardSection *)self init];
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
    v9 = [v8 countByEnumeratingWithState:&v47 objects:v51 count:16];
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

        v10 = [v8 countByEnumeratingWithState:&v47 objects:v51 count:16];
      }

      while (v10);
    }

    [(_SFPBAttributionFooterCardSection *)v5 setPunchoutOptions:v7];
    v14 = [v4 punchoutPickerTitle];

    if (v14)
    {
      v15 = [v4 punchoutPickerTitle];
      [(_SFPBAttributionFooterCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [v4 punchoutPickerDismissText];

    if (v16)
    {
      v17 = [v4 punchoutPickerDismissText];
      [(_SFPBAttributionFooterCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    if ([v4 hasCanBeHidden])
    {
      -[_SFPBAttributionFooterCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v4 canBeHidden]);
    }

    if ([v4 hasHasTopPadding])
    {
      -[_SFPBAttributionFooterCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v4 hasTopPadding]);
    }

    if ([v4 hasHasBottomPadding])
    {
      -[_SFPBAttributionFooterCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v4 hasBottomPadding]);
    }

    v18 = [v4 type];

    if (v18)
    {
      v19 = [v4 type];
      [(_SFPBAttributionFooterCardSection *)v5 setType:v19];
    }

    if ([v4 hasSeparatorStyle])
    {
      -[_SFPBAttributionFooterCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v4 separatorStyle]);
    }

    v20 = [v4 backgroundColor];

    if (v20)
    {
      v21 = [_SFPBColor alloc];
      v22 = [v4 backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:v22];
      [(_SFPBAttributionFooterCardSection *)v5 setBackgroundColor:v23];
    }

    v24 = [v4 leadingAttribution];

    if (v24)
    {
      v25 = [_SFPBRichText alloc];
      v26 = [v4 leadingAttribution];
      v27 = [(_SFPBRichText *)v25 initWithFacade:v26];
      [(_SFPBAttributionFooterCardSection *)v5 setLeadingAttribution:v27];
    }

    v28 = [v4 leadingAttributionPunchout];

    if (v28)
    {
      v29 = [_SFPBPunchout alloc];
      v30 = [v4 leadingAttributionPunchout];
      v31 = [(_SFPBPunchout *)v29 initWithFacade:v30];
      [(_SFPBAttributionFooterCardSection *)v5 setLeadingAttributionPunchout:v31];
    }

    v32 = [v4 trailingAttribution];

    if (v32)
    {
      v33 = [_SFPBRichText alloc];
      v34 = [v4 trailingAttribution];
      v35 = [(_SFPBRichText *)v33 initWithFacade:v34];
      [(_SFPBAttributionFooterCardSection *)v5 setTrailingAttribution:v35];
    }

    v36 = [v4 trailingAttributionPunchout];

    if (v36)
    {
      v37 = [_SFPBPunchout alloc];
      v38 = [v4 trailingAttributionPunchout];
      v39 = [(_SFPBPunchout *)v37 initWithFacade:v38];
      [(_SFPBAttributionFooterCardSection *)v5 setTrailingAttributionPunchout:v39];
    }

    v40 = [v4 trailingAttributionCommand];

    if (v40)
    {
      v41 = [_SFPBCommand alloc];
      v42 = [v4 trailingAttributionCommand];
      v43 = [(_SFPBCommand *)v41 initWithFacade:v42];
      [(_SFPBAttributionFooterCardSection *)v5 setTrailingAttributionCommand:v43];
    }

    v44 = v5;
  }

  v45 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBAttributionFooterCardSection)initWithDictionary:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v50.receiver = self;
  v50.super_class = _SFPBAttributionFooterCardSection;
  v5 = [(_SFPBAttributionFooterCardSection *)&v50 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"punchoutOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v46 objects:v51 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v47;
        do
        {
          v11 = 0;
          do
          {
            if (*v47 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v46 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [[_SFPBPunchout alloc] initWithDictionary:v12];
              [(_SFPBAttributionFooterCardSection *)v5 addPunchoutOptions:v13];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v46 objects:v51 count:16];
        }

        while (v9);
      }
    }

    v14 = [v4 objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBAttributionFooterCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v44 = v14;
    v16 = [v4 objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBAttributionFooterCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    v43 = v16;
    v18 = [v4 objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBAttributionFooterCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v18 BOOLValue]);
    }

    v19 = [v4 objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBAttributionFooterCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v19 BOOLValue]);
    }

    v20 = [v4 objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBAttributionFooterCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v20 BOOLValue]);
    }

    v42 = v18;
    v45 = v6;
    v21 = [v4 objectForKeyedSubscript:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBAttributionFooterCardSection *)v5 setType:v22];
    }

    v23 = [v4 objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBAttributionFooterCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v23 intValue]);
    }

    v39 = v23;
    v24 = [v4 objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBColor alloc] initWithDictionary:v24];
      [(_SFPBAttributionFooterCardSection *)v5 setBackgroundColor:v25];
    }

    v41 = v19;
    v26 = [v4 objectForKeyedSubscript:@"leadingAttribution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [[_SFPBRichText alloc] initWithDictionary:v26];
      [(_SFPBAttributionFooterCardSection *)v5 setLeadingAttribution:v27];
    }

    v40 = v20;
    v28 = [v4 objectForKeyedSubscript:@"leadingAttributionPunchout"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [[_SFPBPunchout alloc] initWithDictionary:v28];
      [(_SFPBAttributionFooterCardSection *)v5 setLeadingAttributionPunchout:v29];
    }

    v30 = [v4 objectForKeyedSubscript:@"trailingAttribution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [[_SFPBRichText alloc] initWithDictionary:v30];
      [(_SFPBAttributionFooterCardSection *)v5 setTrailingAttribution:v31];
    }

    v32 = [v4 objectForKeyedSubscript:@"trailingAttributionPunchout"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [[_SFPBPunchout alloc] initWithDictionary:v32];
      [(_SFPBAttributionFooterCardSection *)v5 setTrailingAttributionPunchout:v33];
    }

    v34 = [v4 objectForKeyedSubscript:@"trailingAttributionCommand"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [[_SFPBCommand alloc] initWithDictionary:v34];
      [(_SFPBAttributionFooterCardSection *)v5 setTrailingAttributionCommand:v35];
    }

    v36 = v5;
  }

  v37 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBAttributionFooterCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBAttributionFooterCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBAttributionFooterCardSection *)self dictionaryRepresentation];
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
  v48 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_backgroundColor)
  {
    v4 = [(_SFPBAttributionFooterCardSection *)self backgroundColor];
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
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBAttributionFooterCardSection canBeHidden](self, "canBeHidden")}];
    [v3 setObject:v7 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_hasBottomPadding)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBAttributionFooterCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [v3 setObject:v8 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBAttributionFooterCardSection hasTopPadding](self, "hasTopPadding")}];
    [v3 setObject:v9 forKeyedSubscript:@"hasTopPadding"];
  }

  if (self->_leadingAttribution)
  {
    v10 = [(_SFPBAttributionFooterCardSection *)self leadingAttribution];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"leadingAttribution"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"leadingAttribution"];
    }
  }

  if (self->_leadingAttributionPunchout)
  {
    v13 = [(_SFPBAttributionFooterCardSection *)self leadingAttributionPunchout];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"leadingAttributionPunchout"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"leadingAttributionPunchout"];
    }
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    v16 = [MEMORY[0x1E695DF70] array];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v17 = self->_punchoutOptions;
    v18 = [(NSArray *)v17 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v44;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v44 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [*(*(&v43 + 1) + 8 * i) dictionaryRepresentation];
          if (v22)
          {
            [v16 addObject:v22];
          }

          else
          {
            v23 = [MEMORY[0x1E695DFB0] null];
            [v16 addObject:v23];
          }
        }

        v19 = [(NSArray *)v17 countByEnumeratingWithState:&v43 objects:v47 count:16];
      }

      while (v19);
    }

    [v3 setObject:v16 forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    v24 = [(_SFPBAttributionFooterCardSection *)self punchoutPickerDismissText];
    v25 = [v24 copy];
    [v3 setObject:v25 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    v26 = [(_SFPBAttributionFooterCardSection *)self punchoutPickerTitle];
    v27 = [v26 copy];
    [v3 setObject:v27 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    v28 = [(_SFPBAttributionFooterCardSection *)self separatorStyle];
    if (v28 >= 6)
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v28];
    }

    else
    {
      v29 = off_1E7ACE580[v28];
    }

    [v3 setObject:v29 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_trailingAttribution)
  {
    v30 = [(_SFPBAttributionFooterCardSection *)self trailingAttribution];
    v31 = [v30 dictionaryRepresentation];
    if (v31)
    {
      [v3 setObject:v31 forKeyedSubscript:@"trailingAttribution"];
    }

    else
    {
      v32 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v32 forKeyedSubscript:@"trailingAttribution"];
    }
  }

  if (self->_trailingAttributionCommand)
  {
    v33 = [(_SFPBAttributionFooterCardSection *)self trailingAttributionCommand];
    v34 = [v33 dictionaryRepresentation];
    if (v34)
    {
      [v3 setObject:v34 forKeyedSubscript:@"trailingAttributionCommand"];
    }

    else
    {
      v35 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v35 forKeyedSubscript:@"trailingAttributionCommand"];
    }
  }

  if (self->_trailingAttributionPunchout)
  {
    v36 = [(_SFPBAttributionFooterCardSection *)self trailingAttributionPunchout];
    v37 = [v36 dictionaryRepresentation];
    if (v37)
    {
      [v3 setObject:v37 forKeyedSubscript:@"trailingAttributionPunchout"];
    }

    else
    {
      v38 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v38 forKeyedSubscript:@"trailingAttributionPunchout"];
    }
  }

  if (self->_type)
  {
    v39 = [(_SFPBAttributionFooterCardSection *)self type];
    v40 = [v39 copy];
    [v3 setObject:v40 forKeyedSubscript:@"type"];
  }

  v41 = *MEMORY[0x1E69E9840];

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
  v11 = v10 ^ [(_SFPBRichText *)self->_leadingAttribution hash];
  v12 = v11 ^ [(_SFPBPunchout *)self->_leadingAttributionPunchout hash];
  v13 = v12 ^ [(_SFPBRichText *)self->_trailingAttribution hash];
  v14 = v13 ^ [(_SFPBPunchout *)self->_trailingAttributionPunchout hash];
  return v9 ^ v14 ^ [(_SFPBCommand *)self->_trailingAttributionCommand hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_56;
  }

  v5 = [(_SFPBAttributionFooterCardSection *)self punchoutOptions];
  v6 = [v4 punchoutOptions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_55;
  }

  v7 = [(_SFPBAttributionFooterCardSection *)self punchoutOptions];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBAttributionFooterCardSection *)self punchoutOptions];
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

  v5 = [(_SFPBAttributionFooterCardSection *)self punchoutPickerTitle];
  v6 = [v4 punchoutPickerTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_55;
  }

  v12 = [(_SFPBAttributionFooterCardSection *)self punchoutPickerTitle];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBAttributionFooterCardSection *)self punchoutPickerTitle];
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

  v5 = [(_SFPBAttributionFooterCardSection *)self punchoutPickerDismissText];
  v6 = [v4 punchoutPickerDismissText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_55;
  }

  v17 = [(_SFPBAttributionFooterCardSection *)self punchoutPickerDismissText];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBAttributionFooterCardSection *)self punchoutPickerDismissText];
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

  v5 = [(_SFPBAttributionFooterCardSection *)self type];
  v6 = [v4 type];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_55;
  }

  v25 = [(_SFPBAttributionFooterCardSection *)self type];
  if (v25)
  {
    v26 = v25;
    v27 = [(_SFPBAttributionFooterCardSection *)self type];
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

  v5 = [(_SFPBAttributionFooterCardSection *)self backgroundColor];
  v6 = [v4 backgroundColor];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_55;
  }

  v31 = [(_SFPBAttributionFooterCardSection *)self backgroundColor];
  if (v31)
  {
    v32 = v31;
    v33 = [(_SFPBAttributionFooterCardSection *)self backgroundColor];
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

  v5 = [(_SFPBAttributionFooterCardSection *)self leadingAttribution];
  v6 = [v4 leadingAttribution];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_55;
  }

  v36 = [(_SFPBAttributionFooterCardSection *)self leadingAttribution];
  if (v36)
  {
    v37 = v36;
    v38 = [(_SFPBAttributionFooterCardSection *)self leadingAttribution];
    v39 = [v4 leadingAttribution];
    v40 = [v38 isEqual:v39];

    if (!v40)
    {
      goto LABEL_56;
    }
  }

  else
  {
  }

  v5 = [(_SFPBAttributionFooterCardSection *)self leadingAttributionPunchout];
  v6 = [v4 leadingAttributionPunchout];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_55;
  }

  v41 = [(_SFPBAttributionFooterCardSection *)self leadingAttributionPunchout];
  if (v41)
  {
    v42 = v41;
    v43 = [(_SFPBAttributionFooterCardSection *)self leadingAttributionPunchout];
    v44 = [v4 leadingAttributionPunchout];
    v45 = [v43 isEqual:v44];

    if (!v45)
    {
      goto LABEL_56;
    }
  }

  else
  {
  }

  v5 = [(_SFPBAttributionFooterCardSection *)self trailingAttribution];
  v6 = [v4 trailingAttribution];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_55;
  }

  v46 = [(_SFPBAttributionFooterCardSection *)self trailingAttribution];
  if (v46)
  {
    v47 = v46;
    v48 = [(_SFPBAttributionFooterCardSection *)self trailingAttribution];
    v49 = [v4 trailingAttribution];
    v50 = [v48 isEqual:v49];

    if (!v50)
    {
      goto LABEL_56;
    }
  }

  else
  {
  }

  v5 = [(_SFPBAttributionFooterCardSection *)self trailingAttributionPunchout];
  v6 = [v4 trailingAttributionPunchout];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_55;
  }

  v51 = [(_SFPBAttributionFooterCardSection *)self trailingAttributionPunchout];
  if (v51)
  {
    v52 = v51;
    v53 = [(_SFPBAttributionFooterCardSection *)self trailingAttributionPunchout];
    v54 = [v4 trailingAttributionPunchout];
    v55 = [v53 isEqual:v54];

    if (!v55)
    {
      goto LABEL_56;
    }
  }

  else
  {
  }

  v5 = [(_SFPBAttributionFooterCardSection *)self trailingAttributionCommand];
  v6 = [v4 trailingAttributionCommand];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_55:

    goto LABEL_56;
  }

  v56 = [(_SFPBAttributionFooterCardSection *)self trailingAttributionCommand];
  if (!v56)
  {

LABEL_59:
    v61 = 1;
    goto LABEL_57;
  }

  v57 = v56;
  v58 = [(_SFPBAttributionFooterCardSection *)self trailingAttributionCommand];
  v59 = [v4 trailingAttributionCommand];
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
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBAttributionFooterCardSection *)self punchoutOptions];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  v11 = [(_SFPBAttributionFooterCardSection *)self punchoutPickerTitle];
  if (v11)
  {
    PBDataWriterWriteStringField();
  }

  v12 = [(_SFPBAttributionFooterCardSection *)self punchoutPickerDismissText];
  if (v12)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBAttributionFooterCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBAttributionFooterCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBAttributionFooterCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  v13 = [(_SFPBAttributionFooterCardSection *)self type];
  if (v13)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBAttributionFooterCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  v14 = [(_SFPBAttributionFooterCardSection *)self backgroundColor];
  if (v14)
  {
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_SFPBAttributionFooterCardSection *)self leadingAttribution];
  if (v15)
  {
    PBDataWriterWriteSubmessage();
  }

  v16 = [(_SFPBAttributionFooterCardSection *)self leadingAttributionPunchout];
  if (v16)
  {
    PBDataWriterWriteSubmessage();
  }

  v17 = [(_SFPBAttributionFooterCardSection *)self trailingAttribution];
  if (v17)
  {
    PBDataWriterWriteSubmessage();
  }

  v18 = [(_SFPBAttributionFooterCardSection *)self trailingAttributionPunchout];
  if (v18)
  {
    PBDataWriterWriteSubmessage();
  }

  v19 = [(_SFPBAttributionFooterCardSection *)self trailingAttributionCommand];
  if (v19)
  {
    PBDataWriterWriteSubmessage();
  }

  v20 = *MEMORY[0x1E69E9840];
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