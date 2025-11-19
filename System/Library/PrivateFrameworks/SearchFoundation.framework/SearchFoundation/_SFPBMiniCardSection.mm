@interface _SFPBMiniCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBMiniCardSection)initWithDictionary:(id)a3;
- (_SFPBMiniCardSection)initWithFacade:(id)a3;
- (_SFPBMiniCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPunchoutOptions:(id)a3;
- (void)setPunchoutOptions:(id)a3;
- (void)setPunchoutPickerDismissText:(id)a3;
- (void)setPunchoutPickerTitle:(id)a3;
- (void)setType:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBMiniCardSection

- (_SFPBMiniCardSection)initWithFacade:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBMiniCardSection *)self init];
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
    v9 = [v8 countByEnumeratingWithState:&v39 objects:v43 count:16];
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

        v10 = [v8 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v10);
    }

    [(_SFPBMiniCardSection *)v5 setPunchoutOptions:v7];
    v14 = [v4 punchoutPickerTitle];

    if (v14)
    {
      v15 = [v4 punchoutPickerTitle];
      [(_SFPBMiniCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [v4 punchoutPickerDismissText];

    if (v16)
    {
      v17 = [v4 punchoutPickerDismissText];
      [(_SFPBMiniCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    if ([v4 hasCanBeHidden])
    {
      -[_SFPBMiniCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v4 canBeHidden]);
    }

    if ([v4 hasHasTopPadding])
    {
      -[_SFPBMiniCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v4 hasTopPadding]);
    }

    if ([v4 hasHasBottomPadding])
    {
      -[_SFPBMiniCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v4 hasBottomPadding]);
    }

    v18 = [v4 type];

    if (v18)
    {
      v19 = [v4 type];
      [(_SFPBMiniCardSection *)v5 setType:v19];
    }

    if ([v4 hasSeparatorStyle])
    {
      -[_SFPBMiniCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v4 separatorStyle]);
    }

    v20 = [v4 backgroundColor];

    if (v20)
    {
      v21 = [_SFPBColor alloc];
      v22 = [v4 backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:v22];
      [(_SFPBMiniCardSection *)v5 setBackgroundColor:v23];
    }

    v24 = [v4 title];

    if (v24)
    {
      v25 = [_SFPBRichText alloc];
      v26 = [v4 title];
      v27 = [(_SFPBRichText *)v25 initWithFacade:v26];
      [(_SFPBMiniCardSection *)v5 setTitle:v27];
    }

    v28 = [v4 subtitle];

    if (v28)
    {
      v29 = [_SFPBRichText alloc];
      v30 = [v4 subtitle];
      v31 = [(_SFPBRichText *)v29 initWithFacade:v30];
      [(_SFPBMiniCardSection *)v5 setSubtitle:v31];
    }

    v32 = [v4 image];

    if (v32)
    {
      v33 = [_SFPBImage alloc];
      v34 = [v4 image];
      v35 = [(_SFPBImage *)v33 initWithFacade:v34];
      [(_SFPBMiniCardSection *)v5 setImage:v35];
    }

    v36 = v5;
  }

  v37 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBMiniCardSection)initWithDictionary:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v44.receiver = self;
  v44.super_class = _SFPBMiniCardSection;
  v5 = [(_SFPBMiniCardSection *)&v44 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"punchoutOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v41;
        do
        {
          v11 = 0;
          do
          {
            if (*v41 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v40 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [[_SFPBPunchout alloc] initWithDictionary:v12];
              [(_SFPBMiniCardSection *)v5 addPunchoutOptions:v13];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v40 objects:v45 count:16];
        }

        while (v9);
      }
    }

    v14 = [v4 objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBMiniCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v38 = v14;
    v16 = [v4 objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBMiniCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    v37 = v16;
    v18 = [v4 objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMiniCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v18 BOOLValue]);
    }

    v19 = [v4 objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMiniCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v19 BOOLValue]);
    }

    v20 = [v4 objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMiniCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v20 BOOLValue]);
    }

    v36 = v18;
    v39 = v6;
    v21 = [v4 objectForKeyedSubscript:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBMiniCardSection *)v5 setType:v22];
    }

    v23 = [v4 objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMiniCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v23 intValue]);
    }

    v24 = [v4 objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBColor alloc] initWithDictionary:v24];
      [(_SFPBMiniCardSection *)v5 setBackgroundColor:v25];
    }

    v35 = v19;
    v26 = [v4 objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [[_SFPBRichText alloc] initWithDictionary:v26];
      [(_SFPBMiniCardSection *)v5 setTitle:v27];
    }

    v28 = [v4 objectForKeyedSubscript:@"subtitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [[_SFPBRichText alloc] initWithDictionary:v28];
      [(_SFPBMiniCardSection *)v5 setSubtitle:v29];
    }

    v30 = [v4 objectForKeyedSubscript:@"image"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [[_SFPBImage alloc] initWithDictionary:v30];
      [(_SFPBMiniCardSection *)v5 setImage:v31];
    }

    v32 = v5;
  }

  v33 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBMiniCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBMiniCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBMiniCardSection *)self dictionaryRepresentation];
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
  v42 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_backgroundColor)
  {
    v4 = [(_SFPBMiniCardSection *)self backgroundColor];
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
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMiniCardSection canBeHidden](self, "canBeHidden")}];
    [v3 setObject:v7 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_hasBottomPadding)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMiniCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [v3 setObject:v8 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMiniCardSection hasTopPadding](self, "hasTopPadding")}];
    [v3 setObject:v9 forKeyedSubscript:@"hasTopPadding"];
  }

  if (self->_image)
  {
    v10 = [(_SFPBMiniCardSection *)self image];
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
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v14 = self->_punchoutOptions;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v38;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v38 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v37 + 1) + 8 * i) dictionaryRepresentation];
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

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v16);
    }

    [v3 setObject:v13 forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    v21 = [(_SFPBMiniCardSection *)self punchoutPickerDismissText];
    v22 = [v21 copy];
    [v3 setObject:v22 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    v23 = [(_SFPBMiniCardSection *)self punchoutPickerTitle];
    v24 = [v23 copy];
    [v3 setObject:v24 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    v25 = [(_SFPBMiniCardSection *)self separatorStyle];
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
    v27 = [(_SFPBMiniCardSection *)self subtitle];
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
    v30 = [(_SFPBMiniCardSection *)self title];
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

  if (self->_type)
  {
    v33 = [(_SFPBMiniCardSection *)self type];
    v34 = [v33 copy];
    [v3 setObject:v34 forKeyedSubscript:@"type"];
  }

  v35 = *MEMORY[0x1E69E9840];

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
  v12 = v11 ^ [(_SFPBRichText *)self->_subtitle hash];
  return v9 ^ v12 ^ [(_SFPBImage *)self->_image hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_46;
  }

  v5 = [(_SFPBMiniCardSection *)self punchoutOptions];
  v6 = [v4 punchoutOptions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_45;
  }

  v7 = [(_SFPBMiniCardSection *)self punchoutOptions];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBMiniCardSection *)self punchoutOptions];
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

  v5 = [(_SFPBMiniCardSection *)self punchoutPickerTitle];
  v6 = [v4 punchoutPickerTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_45;
  }

  v12 = [(_SFPBMiniCardSection *)self punchoutPickerTitle];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBMiniCardSection *)self punchoutPickerTitle];
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

  v5 = [(_SFPBMiniCardSection *)self punchoutPickerDismissText];
  v6 = [v4 punchoutPickerDismissText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_45;
  }

  v17 = [(_SFPBMiniCardSection *)self punchoutPickerDismissText];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBMiniCardSection *)self punchoutPickerDismissText];
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

  v5 = [(_SFPBMiniCardSection *)self type];
  v6 = [v4 type];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_45;
  }

  v25 = [(_SFPBMiniCardSection *)self type];
  if (v25)
  {
    v26 = v25;
    v27 = [(_SFPBMiniCardSection *)self type];
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

  v5 = [(_SFPBMiniCardSection *)self backgroundColor];
  v6 = [v4 backgroundColor];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_45;
  }

  v31 = [(_SFPBMiniCardSection *)self backgroundColor];
  if (v31)
  {
    v32 = v31;
    v33 = [(_SFPBMiniCardSection *)self backgroundColor];
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

  v5 = [(_SFPBMiniCardSection *)self title];
  v6 = [v4 title];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_45;
  }

  v36 = [(_SFPBMiniCardSection *)self title];
  if (v36)
  {
    v37 = v36;
    v38 = [(_SFPBMiniCardSection *)self title];
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

  v5 = [(_SFPBMiniCardSection *)self subtitle];
  v6 = [v4 subtitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_45;
  }

  v41 = [(_SFPBMiniCardSection *)self subtitle];
  if (v41)
  {
    v42 = v41;
    v43 = [(_SFPBMiniCardSection *)self subtitle];
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

  v5 = [(_SFPBMiniCardSection *)self image];
  v6 = [v4 image];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_45:

    goto LABEL_46;
  }

  v46 = [(_SFPBMiniCardSection *)self image];
  if (!v46)
  {

LABEL_49:
    v51 = 1;
    goto LABEL_47;
  }

  v47 = v46;
  v48 = [(_SFPBMiniCardSection *)self image];
  v49 = [v4 image];
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
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBMiniCardSection *)self punchoutOptions];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v11 = [(_SFPBMiniCardSection *)self punchoutPickerTitle];
  if (v11)
  {
    PBDataWriterWriteStringField();
  }

  v12 = [(_SFPBMiniCardSection *)self punchoutPickerDismissText];
  if (v12)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBMiniCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBMiniCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBMiniCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  v13 = [(_SFPBMiniCardSection *)self type];
  if (v13)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBMiniCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  v14 = [(_SFPBMiniCardSection *)self backgroundColor];
  if (v14)
  {
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_SFPBMiniCardSection *)self title];
  if (v15)
  {
    PBDataWriterWriteSubmessage();
  }

  v16 = [(_SFPBMiniCardSection *)self subtitle];
  if (v16)
  {
    PBDataWriterWriteSubmessage();
  }

  v17 = [(_SFPBMiniCardSection *)self image];
  if (v17)
  {
    PBDataWriterWriteSubmessage();
  }

  v18 = *MEMORY[0x1E69E9840];
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