@interface _SFPBCommandRowCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBCommandRowCardSection)initWithDictionary:(id)a3;
- (_SFPBCommandRowCardSection)initWithFacade:(id)a3;
- (_SFPBCommandRowCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPunchoutOptions:(id)a3;
- (void)setPunchoutOptions:(id)a3;
- (void)setPunchoutPickerDismissText:(id)a3;
- (void)setPunchoutPickerTitle:(id)a3;
- (void)setType:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBCommandRowCardSection

- (_SFPBCommandRowCardSection)initWithFacade:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBCommandRowCardSection *)self init];
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

    [(_SFPBCommandRowCardSection *)v5 setPunchoutOptions:v7];
    v14 = [v4 punchoutPickerTitle];

    if (v14)
    {
      v15 = [v4 punchoutPickerTitle];
      [(_SFPBCommandRowCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [v4 punchoutPickerDismissText];

    if (v16)
    {
      v17 = [v4 punchoutPickerDismissText];
      [(_SFPBCommandRowCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    if ([v4 hasCanBeHidden])
    {
      -[_SFPBCommandRowCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v4 canBeHidden]);
    }

    if ([v4 hasHasTopPadding])
    {
      -[_SFPBCommandRowCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v4 hasTopPadding]);
    }

    if ([v4 hasHasBottomPadding])
    {
      -[_SFPBCommandRowCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v4 hasBottomPadding]);
    }

    v18 = [v4 type];

    if (v18)
    {
      v19 = [v4 type];
      [(_SFPBCommandRowCardSection *)v5 setType:v19];
    }

    if ([v4 hasSeparatorStyle])
    {
      -[_SFPBCommandRowCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v4 separatorStyle]);
    }

    v20 = [v4 backgroundColor];

    if (v20)
    {
      v21 = [_SFPBColor alloc];
      v22 = [v4 backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:v22];
      [(_SFPBCommandRowCardSection *)v5 setBackgroundColor:v23];
    }

    v24 = [v4 image];

    if (v24)
    {
      v25 = [_SFPBImage alloc];
      v26 = [v4 image];
      v27 = [(_SFPBImage *)v25 initWithFacade:v26];
      [(_SFPBCommandRowCardSection *)v5 setImage:v27];
    }

    v28 = [v4 toggledImage];

    if (v28)
    {
      v29 = [_SFPBImage alloc];
      v30 = [v4 toggledImage];
      v31 = [(_SFPBImage *)v29 initWithFacade:v30];
      [(_SFPBCommandRowCardSection *)v5 setToggledImage:v31];
    }

    v32 = [v4 title];

    if (v32)
    {
      v33 = [_SFPBRichText alloc];
      v34 = [v4 title];
      v35 = [(_SFPBRichText *)v33 initWithFacade:v34];
      [(_SFPBCommandRowCardSection *)v5 setTitle:v35];
    }

    v36 = [v4 toggledTitle];

    if (v36)
    {
      v37 = [_SFPBRichText alloc];
      v38 = [v4 toggledTitle];
      v39 = [(_SFPBRichText *)v37 initWithFacade:v38];
      [(_SFPBCommandRowCardSection *)v5 setToggledTitle:v39];
    }

    v40 = [v4 subtitle];

    if (v40)
    {
      v41 = [_SFPBRichText alloc];
      v42 = [v4 subtitle];
      v43 = [(_SFPBRichText *)v41 initWithFacade:v42];
      [(_SFPBCommandRowCardSection *)v5 setSubtitle:v43];
    }

    v44 = v5;
  }

  v45 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBCommandRowCardSection)initWithDictionary:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v50.receiver = self;
  v50.super_class = _SFPBCommandRowCardSection;
  v5 = [(_SFPBCommandRowCardSection *)&v50 init];
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
              [(_SFPBCommandRowCardSection *)v5 addPunchoutOptions:v13];
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
      [(_SFPBCommandRowCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v44 = v14;
    v16 = [v4 objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBCommandRowCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    v43 = v16;
    v18 = [v4 objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCommandRowCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v18 BOOLValue]);
    }

    v19 = [v4 objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCommandRowCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v19 BOOLValue]);
    }

    v20 = [v4 objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCommandRowCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v20 BOOLValue]);
    }

    v42 = v18;
    v45 = v6;
    v21 = [v4 objectForKeyedSubscript:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBCommandRowCardSection *)v5 setType:v22];
    }

    v23 = [v4 objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCommandRowCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v23 intValue]);
    }

    v39 = v23;
    v24 = [v4 objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBColor alloc] initWithDictionary:v24];
      [(_SFPBCommandRowCardSection *)v5 setBackgroundColor:v25];
    }

    v41 = v19;
    v26 = [v4 objectForKeyedSubscript:@"image"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [[_SFPBImage alloc] initWithDictionary:v26];
      [(_SFPBCommandRowCardSection *)v5 setImage:v27];
    }

    v40 = v20;
    v28 = [v4 objectForKeyedSubscript:@"toggledImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [[_SFPBImage alloc] initWithDictionary:v28];
      [(_SFPBCommandRowCardSection *)v5 setToggledImage:v29];
    }

    v30 = [v4 objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [[_SFPBRichText alloc] initWithDictionary:v30];
      [(_SFPBCommandRowCardSection *)v5 setTitle:v31];
    }

    v32 = [v4 objectForKeyedSubscript:@"toggledTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [[_SFPBRichText alloc] initWithDictionary:v32];
      [(_SFPBCommandRowCardSection *)v5 setToggledTitle:v33];
    }

    v34 = [v4 objectForKeyedSubscript:@"subtitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [[_SFPBRichText alloc] initWithDictionary:v34];
      [(_SFPBCommandRowCardSection *)v5 setSubtitle:v35];
    }

    v36 = v5;
  }

  v37 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBCommandRowCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBCommandRowCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBCommandRowCardSection *)self dictionaryRepresentation];
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
    v4 = [(_SFPBCommandRowCardSection *)self backgroundColor];
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
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCommandRowCardSection canBeHidden](self, "canBeHidden")}];
    [v3 setObject:v7 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_hasBottomPadding)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCommandRowCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [v3 setObject:v8 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCommandRowCardSection hasTopPadding](self, "hasTopPadding")}];
    [v3 setObject:v9 forKeyedSubscript:@"hasTopPadding"];
  }

  if (self->_image)
  {
    v10 = [(_SFPBCommandRowCardSection *)self image];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"image"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"image"];
    }
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    v13 = [MEMORY[0x1E695DF70] array];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v14 = self->_punchoutOptions;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v44;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v44 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v43 + 1) + 8 * i) dictionaryRepresentation];
          if (v19)
          {
            [v13 addObject:v19];
          }

          else
          {
            v20 = [MEMORY[0x1E695DFB0] null];
            [v13 addObject:v20];
          }
        }

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v43 objects:v47 count:16];
      }

      while (v16);
    }

    [v3 setObject:v13 forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    v21 = [(_SFPBCommandRowCardSection *)self punchoutPickerDismissText];
    v22 = [v21 copy];
    [v3 setObject:v22 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    v23 = [(_SFPBCommandRowCardSection *)self punchoutPickerTitle];
    v24 = [v23 copy];
    [v3 setObject:v24 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    v25 = [(_SFPBCommandRowCardSection *)self separatorStyle];
    if (v25 >= 6)
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v25];
    }

    else
    {
      v26 = off_1E7ACE580[v25];
    }

    [v3 setObject:v26 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_subtitle)
  {
    v27 = [(_SFPBCommandRowCardSection *)self subtitle];
    v28 = [v27 dictionaryRepresentation];
    if (v28)
    {
      [v3 setObject:v28 forKeyedSubscript:@"subtitle"];
    }

    else
    {
      v29 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v29 forKeyedSubscript:@"subtitle"];
    }
  }

  if (self->_title)
  {
    v30 = [(_SFPBCommandRowCardSection *)self title];
    v31 = [v30 dictionaryRepresentation];
    if (v31)
    {
      [v3 setObject:v31 forKeyedSubscript:@"title"];
    }

    else
    {
      v32 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v32 forKeyedSubscript:@"title"];
    }
  }

  if (self->_toggledImage)
  {
    v33 = [(_SFPBCommandRowCardSection *)self toggledImage];
    v34 = [v33 dictionaryRepresentation];
    if (v34)
    {
      [v3 setObject:v34 forKeyedSubscript:@"toggledImage"];
    }

    else
    {
      v35 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v35 forKeyedSubscript:@"toggledImage"];
    }
  }

  if (self->_toggledTitle)
  {
    v36 = [(_SFPBCommandRowCardSection *)self toggledTitle];
    v37 = [v36 dictionaryRepresentation];
    if (v37)
    {
      [v3 setObject:v37 forKeyedSubscript:@"toggledTitle"];
    }

    else
    {
      v38 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v38 forKeyedSubscript:@"toggledTitle"];
    }
  }

  if (self->_type)
  {
    v39 = [(_SFPBCommandRowCardSection *)self type];
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
  v11 = v10 ^ [(_SFPBImage *)self->_image hash];
  v12 = v11 ^ [(_SFPBImage *)self->_toggledImage hash];
  v13 = v12 ^ [(_SFPBRichText *)self->_title hash];
  v14 = v13 ^ [(_SFPBRichText *)self->_toggledTitle hash];
  return v9 ^ v14 ^ [(_SFPBRichText *)self->_subtitle hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_56;
  }

  v5 = [(_SFPBCommandRowCardSection *)self punchoutOptions];
  v6 = [v4 punchoutOptions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_55;
  }

  v7 = [(_SFPBCommandRowCardSection *)self punchoutOptions];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBCommandRowCardSection *)self punchoutOptions];
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

  v5 = [(_SFPBCommandRowCardSection *)self punchoutPickerTitle];
  v6 = [v4 punchoutPickerTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_55;
  }

  v12 = [(_SFPBCommandRowCardSection *)self punchoutPickerTitle];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBCommandRowCardSection *)self punchoutPickerTitle];
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

  v5 = [(_SFPBCommandRowCardSection *)self punchoutPickerDismissText];
  v6 = [v4 punchoutPickerDismissText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_55;
  }

  v17 = [(_SFPBCommandRowCardSection *)self punchoutPickerDismissText];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBCommandRowCardSection *)self punchoutPickerDismissText];
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

  v5 = [(_SFPBCommandRowCardSection *)self type];
  v6 = [v4 type];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_55;
  }

  v25 = [(_SFPBCommandRowCardSection *)self type];
  if (v25)
  {
    v26 = v25;
    v27 = [(_SFPBCommandRowCardSection *)self type];
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

  v5 = [(_SFPBCommandRowCardSection *)self backgroundColor];
  v6 = [v4 backgroundColor];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_55;
  }

  v31 = [(_SFPBCommandRowCardSection *)self backgroundColor];
  if (v31)
  {
    v32 = v31;
    v33 = [(_SFPBCommandRowCardSection *)self backgroundColor];
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

  v5 = [(_SFPBCommandRowCardSection *)self image];
  v6 = [v4 image];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_55;
  }

  v36 = [(_SFPBCommandRowCardSection *)self image];
  if (v36)
  {
    v37 = v36;
    v38 = [(_SFPBCommandRowCardSection *)self image];
    v39 = [v4 image];
    v40 = [v38 isEqual:v39];

    if (!v40)
    {
      goto LABEL_56;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommandRowCardSection *)self toggledImage];
  v6 = [v4 toggledImage];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_55;
  }

  v41 = [(_SFPBCommandRowCardSection *)self toggledImage];
  if (v41)
  {
    v42 = v41;
    v43 = [(_SFPBCommandRowCardSection *)self toggledImage];
    v44 = [v4 toggledImage];
    v45 = [v43 isEqual:v44];

    if (!v45)
    {
      goto LABEL_56;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommandRowCardSection *)self title];
  v6 = [v4 title];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_55;
  }

  v46 = [(_SFPBCommandRowCardSection *)self title];
  if (v46)
  {
    v47 = v46;
    v48 = [(_SFPBCommandRowCardSection *)self title];
    v49 = [v4 title];
    v50 = [v48 isEqual:v49];

    if (!v50)
    {
      goto LABEL_56;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommandRowCardSection *)self toggledTitle];
  v6 = [v4 toggledTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_55;
  }

  v51 = [(_SFPBCommandRowCardSection *)self toggledTitle];
  if (v51)
  {
    v52 = v51;
    v53 = [(_SFPBCommandRowCardSection *)self toggledTitle];
    v54 = [v4 toggledTitle];
    v55 = [v53 isEqual:v54];

    if (!v55)
    {
      goto LABEL_56;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCommandRowCardSection *)self subtitle];
  v6 = [v4 subtitle];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_55:

    goto LABEL_56;
  }

  v56 = [(_SFPBCommandRowCardSection *)self subtitle];
  if (!v56)
  {

LABEL_59:
    v61 = 1;
    goto LABEL_57;
  }

  v57 = v56;
  v58 = [(_SFPBCommandRowCardSection *)self subtitle];
  v59 = [v4 subtitle];
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
  v5 = [(_SFPBCommandRowCardSection *)self punchoutOptions];
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

  v11 = [(_SFPBCommandRowCardSection *)self punchoutPickerTitle];
  if (v11)
  {
    PBDataWriterWriteStringField();
  }

  v12 = [(_SFPBCommandRowCardSection *)self punchoutPickerDismissText];
  if (v12)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBCommandRowCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBCommandRowCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBCommandRowCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  v13 = [(_SFPBCommandRowCardSection *)self type];
  if (v13)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBCommandRowCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  v14 = [(_SFPBCommandRowCardSection *)self backgroundColor];
  if (v14)
  {
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_SFPBCommandRowCardSection *)self image];
  if (v15)
  {
    PBDataWriterWriteSubmessage();
  }

  v16 = [(_SFPBCommandRowCardSection *)self toggledImage];
  if (v16)
  {
    PBDataWriterWriteSubmessage();
  }

  v17 = [(_SFPBCommandRowCardSection *)self title];
  if (v17)
  {
    PBDataWriterWriteSubmessage();
  }

  v18 = [(_SFPBCommandRowCardSection *)self toggledTitle];
  if (v18)
  {
    PBDataWriterWriteSubmessage();
  }

  v19 = [(_SFPBCommandRowCardSection *)self subtitle];
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