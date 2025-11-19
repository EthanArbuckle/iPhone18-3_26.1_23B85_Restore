@interface _SFPBCompactRowCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBCompactRowCardSection)initWithDictionary:(id)a3;
- (_SFPBCompactRowCardSection)initWithFacade:(id)a3;
- (_SFPBCompactRowCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPunchoutOptions:(id)a3;
- (void)setPunchoutOptions:(id)a3;
- (void)setPunchoutPickerDismissText:(id)a3;
- (void)setPunchoutPickerTitle:(id)a3;
- (void)setType:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBCompactRowCardSection

- (_SFPBCompactRowCardSection)initWithFacade:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBCompactRowCardSection *)self init];
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

    [(_SFPBCompactRowCardSection *)v5 setPunchoutOptions:v7];
    v14 = [v4 punchoutPickerTitle];

    if (v14)
    {
      v15 = [v4 punchoutPickerTitle];
      [(_SFPBCompactRowCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [v4 punchoutPickerDismissText];

    if (v16)
    {
      v17 = [v4 punchoutPickerDismissText];
      [(_SFPBCompactRowCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    if ([v4 hasCanBeHidden])
    {
      -[_SFPBCompactRowCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v4 canBeHidden]);
    }

    if ([v4 hasHasTopPadding])
    {
      -[_SFPBCompactRowCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v4 hasTopPadding]);
    }

    if ([v4 hasHasBottomPadding])
    {
      -[_SFPBCompactRowCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v4 hasBottomPadding]);
    }

    v18 = [v4 type];

    if (v18)
    {
      v19 = [v4 type];
      [(_SFPBCompactRowCardSection *)v5 setType:v19];
    }

    if ([v4 hasSeparatorStyle])
    {
      -[_SFPBCompactRowCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v4 separatorStyle]);
    }

    v20 = [v4 backgroundColor];

    if (v20)
    {
      v21 = [_SFPBColor alloc];
      v22 = [v4 backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:v22];
      [(_SFPBCompactRowCardSection *)v5 setBackgroundColor:v23];
    }

    v24 = [v4 title];

    if (v24)
    {
      v25 = [_SFPBRichText alloc];
      v26 = [v4 title];
      v27 = [(_SFPBRichText *)v25 initWithFacade:v26];
      [(_SFPBCompactRowCardSection *)v5 setTitle:v27];
    }

    v28 = [v4 subtitle];

    if (v28)
    {
      v29 = [_SFPBRichText alloc];
      v30 = [v4 subtitle];
      v31 = [(_SFPBRichText *)v29 initWithFacade:v30];
      [(_SFPBCompactRowCardSection *)v5 setSubtitle:v31];
    }

    if ([v4 hasIsSubtitleDetatched])
    {
      -[_SFPBCompactRowCardSection setIsSubtitleDetatched:](v5, "setIsSubtitleDetatched:", [v4 isSubtitleDetatched]);
    }

    v32 = [v4 image];

    if (v32)
    {
      v33 = [_SFPBImage alloc];
      v34 = [v4 image];
      v35 = [(_SFPBImage *)v33 initWithFacade:v34];
      [(_SFPBCompactRowCardSection *)v5 setImage:v35];
    }

    v36 = v5;
  }

  v37 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBCompactRowCardSection)initWithDictionary:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v46.receiver = self;
  v46.super_class = _SFPBCompactRowCardSection;
  v5 = [(_SFPBCompactRowCardSection *)&v46 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"punchoutOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v42 objects:v47 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v43;
        do
        {
          v11 = 0;
          do
          {
            if (*v43 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v42 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [[_SFPBPunchout alloc] initWithDictionary:v12];
              [(_SFPBCompactRowCardSection *)v5 addPunchoutOptions:v13];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v42 objects:v47 count:16];
        }

        while (v9);
      }
    }

    v14 = [v4 objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBCompactRowCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBCompactRowCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCompactRowCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v18 BOOLValue]);
    }

    v19 = [v4 objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCompactRowCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v19 BOOLValue]);
    }

    v37 = v19;
    v20 = [v4 objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCompactRowCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v20 BOOLValue]);
    }

    v38 = v18;
    v41 = v6;
    v21 = [v4 objectForKeyedSubscript:{@"type", v20}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBCompactRowCardSection *)v5 setType:v22];
    }

    v23 = [v4 objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCompactRowCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v23 intValue]);
    }

    v40 = v14;
    v24 = [v4 objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBColor alloc] initWithDictionary:v24];
      [(_SFPBCompactRowCardSection *)v5 setBackgroundColor:v25];
    }

    v39 = v16;
    v26 = [v4 objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [[_SFPBRichText alloc] initWithDictionary:v26];
      [(_SFPBCompactRowCardSection *)v5 setTitle:v27];
    }

    v28 = [v4 objectForKeyedSubscript:@"subtitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [[_SFPBRichText alloc] initWithDictionary:v28];
      [(_SFPBCompactRowCardSection *)v5 setSubtitle:v29];
    }

    v30 = [v4 objectForKeyedSubscript:@"isSubtitleDetatched"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBCompactRowCardSection setIsSubtitleDetatched:](v5, "setIsSubtitleDetatched:", [v30 BOOLValue]);
    }

    v31 = [v4 objectForKeyedSubscript:@"image"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = [[_SFPBImage alloc] initWithDictionary:v31];
      [(_SFPBCompactRowCardSection *)v5 setImage:v32];
    }

    v33 = v5;
  }

  v34 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBCompactRowCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBCompactRowCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBCompactRowCardSection *)self dictionaryRepresentation];
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
  v43 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_backgroundColor)
  {
    v4 = [(_SFPBCompactRowCardSection *)self backgroundColor];
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
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCompactRowCardSection canBeHidden](self, "canBeHidden")}];
    [v3 setObject:v7 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_hasBottomPadding)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCompactRowCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [v3 setObject:v8 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCompactRowCardSection hasTopPadding](self, "hasTopPadding")}];
    [v3 setObject:v9 forKeyedSubscript:@"hasTopPadding"];
  }

  if (self->_image)
  {
    v10 = [(_SFPBCompactRowCardSection *)self image];
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

  if (self->_isSubtitleDetatched)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBCompactRowCardSection isSubtitleDetatched](self, "isSubtitleDetatched")}];
    [v3 setObject:v13 forKeyedSubscript:@"isSubtitleDetatched"];
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    v14 = [MEMORY[0x1E695DF70] array];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v15 = self->_punchoutOptions;
    v16 = [(NSArray *)v15 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v39;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v39 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v38 + 1) + 8 * i) dictionaryRepresentation];
          if (v20)
          {
            [v14 addObject:v20];
          }

          else
          {
            v21 = [MEMORY[0x1E695DFB0] null];
            [v14 addObject:v21];
          }
        }

        v17 = [(NSArray *)v15 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v17);
    }

    [v3 setObject:v14 forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    v22 = [(_SFPBCompactRowCardSection *)self punchoutPickerDismissText];
    v23 = [v22 copy];
    [v3 setObject:v23 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    v24 = [(_SFPBCompactRowCardSection *)self punchoutPickerTitle];
    v25 = [v24 copy];
    [v3 setObject:v25 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    v26 = [(_SFPBCompactRowCardSection *)self separatorStyle];
    if (v26 >= 6)
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v26];
    }

    else
    {
      v27 = off_1E7ACE580[v26];
    }

    [v3 setObject:v27 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_subtitle)
  {
    v28 = [(_SFPBCompactRowCardSection *)self subtitle];
    v29 = [v28 dictionaryRepresentation];
    if (v29)
    {
      [v3 setObject:v29 forKeyedSubscript:@"subtitle"];
    }

    else
    {
      v30 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v30 forKeyedSubscript:@"subtitle"];
    }
  }

  if (self->_title)
  {
    v31 = [(_SFPBCompactRowCardSection *)self title];
    v32 = [v31 dictionaryRepresentation];
    if (v32)
    {
      [v3 setObject:v32 forKeyedSubscript:@"title"];
    }

    else
    {
      v33 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v33 forKeyedSubscript:@"title"];
    }
  }

  if (self->_type)
  {
    v34 = [(_SFPBCompactRowCardSection *)self type];
    v35 = [v34 copy];
    [v3 setObject:v35 forKeyedSubscript:@"type"];
  }

  v36 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v15 = [(NSArray *)self->_punchoutOptions hash];
  v14 = [(NSString *)self->_punchoutPickerTitle hash];
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

  v7 = [(NSString *)self->_type hash];
  v8 = 2654435761 * self->_separatorStyle;
  v9 = [(_SFPBColor *)self->_backgroundColor hash];
  v10 = [(_SFPBRichText *)self->_title hash];
  v11 = [(_SFPBRichText *)self->_subtitle hash];
  if (self->_isSubtitleDetatched)
  {
    v12 = 2654435761;
  }

  else
  {
    v12 = 0;
  }

  return v14 ^ v15 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ [(_SFPBImage *)self->_image hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_47;
  }

  v5 = [(_SFPBCompactRowCardSection *)self punchoutOptions];
  v6 = [v4 punchoutOptions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v7 = [(_SFPBCompactRowCardSection *)self punchoutOptions];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBCompactRowCardSection *)self punchoutOptions];
    v10 = [v4 punchoutOptions];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCompactRowCardSection *)self punchoutPickerTitle];
  v6 = [v4 punchoutPickerTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v12 = [(_SFPBCompactRowCardSection *)self punchoutPickerTitle];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBCompactRowCardSection *)self punchoutPickerTitle];
    v15 = [v4 punchoutPickerTitle];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCompactRowCardSection *)self punchoutPickerDismissText];
  v6 = [v4 punchoutPickerDismissText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v17 = [(_SFPBCompactRowCardSection *)self punchoutPickerDismissText];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBCompactRowCardSection *)self punchoutPickerDismissText];
    v20 = [v4 punchoutPickerDismissText];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [v4 canBeHidden])
  {
    goto LABEL_47;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [v4 hasTopPadding])
  {
    goto LABEL_47;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [v4 hasBottomPadding])
  {
    goto LABEL_47;
  }

  v5 = [(_SFPBCompactRowCardSection *)self type];
  v6 = [v4 type];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v25 = [(_SFPBCompactRowCardSection *)self type];
  if (v25)
  {
    v26 = v25;
    v27 = [(_SFPBCompactRowCardSection *)self type];
    v28 = [v4 type];
    v29 = [v27 isEqual:v28];

    if (!v29)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [v4 separatorStyle])
  {
    goto LABEL_47;
  }

  v5 = [(_SFPBCompactRowCardSection *)self backgroundColor];
  v6 = [v4 backgroundColor];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v31 = [(_SFPBCompactRowCardSection *)self backgroundColor];
  if (v31)
  {
    v32 = v31;
    v33 = [(_SFPBCompactRowCardSection *)self backgroundColor];
    v34 = [v4 backgroundColor];
    v35 = [v33 isEqual:v34];

    if (!v35)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCompactRowCardSection *)self title];
  v6 = [v4 title];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v36 = [(_SFPBCompactRowCardSection *)self title];
  if (v36)
  {
    v37 = v36;
    v38 = [(_SFPBCompactRowCardSection *)self title];
    v39 = [v4 title];
    v40 = [v38 isEqual:v39];

    if (!v40)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(_SFPBCompactRowCardSection *)self subtitle];
  v6 = [v4 subtitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v41 = [(_SFPBCompactRowCardSection *)self subtitle];
  if (v41)
  {
    v42 = v41;
    v43 = [(_SFPBCompactRowCardSection *)self subtitle];
    v44 = [v4 subtitle];
    v45 = [v43 isEqual:v44];

    if (!v45)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  isSubtitleDetatched = self->_isSubtitleDetatched;
  if (isSubtitleDetatched != [v4 isSubtitleDetatched])
  {
    goto LABEL_47;
  }

  v5 = [(_SFPBCompactRowCardSection *)self image];
  v6 = [v4 image];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_46:

    goto LABEL_47;
  }

  v47 = [(_SFPBCompactRowCardSection *)self image];
  if (!v47)
  {

LABEL_50:
    v52 = 1;
    goto LABEL_48;
  }

  v48 = v47;
  v49 = [(_SFPBCompactRowCardSection *)self image];
  v50 = [v4 image];
  v51 = [v49 isEqual:v50];

  if (v51)
  {
    goto LABEL_50;
  }

LABEL_47:
  v52 = 0;
LABEL_48:

  return v52;
}

- (void)writeTo:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBCompactRowCardSection *)self punchoutOptions];
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

  v11 = [(_SFPBCompactRowCardSection *)self punchoutPickerTitle];
  if (v11)
  {
    PBDataWriterWriteStringField();
  }

  v12 = [(_SFPBCompactRowCardSection *)self punchoutPickerDismissText];
  if (v12)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBCompactRowCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBCompactRowCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBCompactRowCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  v13 = [(_SFPBCompactRowCardSection *)self type];
  if (v13)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBCompactRowCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  v14 = [(_SFPBCompactRowCardSection *)self backgroundColor];
  if (v14)
  {
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_SFPBCompactRowCardSection *)self title];
  if (v15)
  {
    PBDataWriterWriteSubmessage();
  }

  v16 = [(_SFPBCompactRowCardSection *)self subtitle];
  if (v16)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBCompactRowCardSection *)self isSubtitleDetatched])
  {
    PBDataWriterWriteBOOLField();
  }

  v17 = [(_SFPBCompactRowCardSection *)self image];
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