@interface _SFPBRowCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBRowCardSection)initWithDictionary:(id)a3;
- (_SFPBRowCardSection)initWithFacade:(id)a3;
- (_SFPBRowCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPunchoutOptions:(id)a3;
- (void)setKey:(id)a3;
- (void)setPunchoutOptions:(id)a3;
- (void)setPunchoutPickerDismissText:(id)a3;
- (void)setPunchoutPickerTitle:(id)a3;
- (void)setType:(id)a3;
- (void)setValue:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBRowCardSection

- (_SFPBRowCardSection)initWithFacade:(id)a3
{
  v64 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBRowCardSection *)self init];
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

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v8 = [v4 punchoutOptions];
    v9 = [v8 countByEnumeratingWithState:&v59 objects:v63 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v60;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v60 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v59 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v59 objects:v63 count:16];
      }

      while (v10);
    }

    [(_SFPBRowCardSection *)v5 setPunchoutOptions:v7];
    v14 = [v4 punchoutPickerTitle];

    if (v14)
    {
      v15 = [v4 punchoutPickerTitle];
      [(_SFPBRowCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [v4 punchoutPickerDismissText];

    if (v16)
    {
      v17 = [v4 punchoutPickerDismissText];
      [(_SFPBRowCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    if ([v4 hasCanBeHidden])
    {
      -[_SFPBRowCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v4 canBeHidden]);
    }

    if ([v4 hasHasTopPadding])
    {
      -[_SFPBRowCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v4 hasTopPadding]);
    }

    if ([v4 hasHasBottomPadding])
    {
      -[_SFPBRowCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v4 hasBottomPadding]);
    }

    v18 = [v4 type];

    if (v18)
    {
      v19 = [v4 type];
      [(_SFPBRowCardSection *)v5 setType:v19];
    }

    if ([v4 hasSeparatorStyle])
    {
      -[_SFPBRowCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v4 separatorStyle]);
    }

    v20 = [v4 backgroundColor];

    if (v20)
    {
      v21 = [_SFPBColor alloc];
      v22 = [v4 backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:v22];
      [(_SFPBRowCardSection *)v5 setBackgroundColor:v23];
    }

    v24 = [v4 image];

    if (v24)
    {
      v25 = [_SFPBImage alloc];
      v26 = [v4 image];
      v27 = [(_SFPBImage *)v25 initWithFacade:v26];
      [(_SFPBRowCardSection *)v5 setImage:v27];
    }

    if ([v4 hasImageIsRightAligned])
    {
      -[_SFPBRowCardSection setImageIsRightAligned:](v5, "setImageIsRightAligned:", [v4 imageIsRightAligned]);
    }

    v28 = [v4 leadingText];

    if (v28)
    {
      v29 = [_SFPBRichText alloc];
      v30 = [v4 leadingText];
      v31 = [(_SFPBRichText *)v29 initWithFacade:v30];
      [(_SFPBRowCardSection *)v5 setLeadingText:v31];
    }

    v32 = [v4 trailingText];

    if (v32)
    {
      v33 = [_SFPBRichText alloc];
      v34 = [v4 trailingText];
      v35 = [(_SFPBRichText *)v33 initWithFacade:v34];
      [(_SFPBRowCardSection *)v5 setTrailingText:v35];
    }

    v36 = [v4 attributionImage];

    if (v36)
    {
      v37 = [_SFPBImage alloc];
      v38 = [v4 attributionImage];
      v39 = [(_SFPBImage *)v37 initWithFacade:v38];
      [(_SFPBRowCardSection *)v5 setAttributionImage:v39];
    }

    v40 = [v4 key];

    if (v40)
    {
      v41 = [v4 key];
      [(_SFPBRowCardSection *)v5 setKey:v41];
    }

    if ([v4 hasKeyNoWrap])
    {
      -[_SFPBRowCardSection setKeyNoWrap:](v5, "setKeyNoWrap:", [v4 keyNoWrap]);
    }

    v42 = [v4 keyWeight];

    if (v42)
    {
      v43 = [v4 keyWeight];
      -[_SFPBRowCardSection setKeyWeight:](v5, "setKeyWeight:", [v43 intValue]);
    }

    v44 = [v4 value];

    if (v44)
    {
      v45 = [v4 value];
      [(_SFPBRowCardSection *)v5 setValue:v45];
    }

    if ([v4 hasValueNoWrap])
    {
      -[_SFPBRowCardSection setValueNoWrap:](v5, "setValueNoWrap:", [v4 valueNoWrap]);
    }

    v46 = [v4 valueWeight];

    if (v46)
    {
      v47 = [v4 valueWeight];
      -[_SFPBRowCardSection setValueWeight:](v5, "setValueWeight:", [v47 intValue]);
    }

    if ([v4 hasCardPaddingBottom])
    {
      -[_SFPBRowCardSection setCardPaddingBottom:](v5, "setCardPaddingBottom:", [v4 cardPaddingBottom]);
    }

    v48 = [v4 leadingSubtitle];

    if (v48)
    {
      v49 = [_SFPBRichText alloc];
      v50 = [v4 leadingSubtitle];
      v51 = [(_SFPBRichText *)v49 initWithFacade:v50];
      [(_SFPBRowCardSection *)v5 setLeadingSubtitle:v51];
    }

    v52 = [v4 trailingSubtitle];

    if (v52)
    {
      v53 = [_SFPBRichText alloc];
      v54 = [v4 trailingSubtitle];
      v55 = [(_SFPBRichText *)v53 initWithFacade:v54];
      [(_SFPBRowCardSection *)v5 setTrailingSubtitle:v55];
    }

    v56 = v5;
  }

  v57 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRowCardSection)initWithDictionary:(id)a3
{
  v73 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v71.receiver = self;
  v71.super_class = _SFPBRowCardSection;
  v5 = [(_SFPBRowCardSection *)&v71 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"punchoutOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v67 objects:v72 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v68;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v68 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v67 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [[_SFPBPunchout alloc] initWithDictionary:v12];
              [(_SFPBRowCardSection *)v5 addPunchoutOptions:v13];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v67 objects:v72 count:16];
        }

        while (v9);
      }
    }

    v14 = [v4 objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBRowCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBRowCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRowCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v18 BOOLValue]);
    }

    v19 = [v4 objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    v66 = v19;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRowCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v19 BOOLValue]);
    }

    v20 = [v4 objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    v65 = v20;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRowCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v20 BOOLValue]);
    }

    v21 = [v4 objectForKeyedSubscript:@"type"];
    objc_opt_class();
    v64 = v21;
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBRowCardSection *)v5 setType:v22];
    }

    v23 = [v4 objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    v63 = v23;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRowCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v23 intValue]);
    }

    v24 = [v4 objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    v62 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBColor alloc] initWithDictionary:v24];
      [(_SFPBRowCardSection *)v5 setBackgroundColor:v25];
    }

    v26 = [v4 objectForKeyedSubscript:@"image"];
    objc_opt_class();
    v61 = v26;
    if (objc_opt_isKindOfClass())
    {
      v27 = [[_SFPBImage alloc] initWithDictionary:v26];
      [(_SFPBRowCardSection *)v5 setImage:v27];
    }

    v28 = [v4 objectForKeyedSubscript:@"imageIsRightAligned"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRowCardSection setImageIsRightAligned:](v5, "setImageIsRightAligned:", [v28 BOOLValue]);
    }

    v52 = v28;
    v29 = [v4 objectForKeyedSubscript:@"leadingText"];
    objc_opt_class();
    v60 = v29;
    if (objc_opt_isKindOfClass())
    {
      v30 = [[_SFPBRichText alloc] initWithDictionary:v29];
      [(_SFPBRowCardSection *)v5 setLeadingText:v30];
    }

    v31 = [v4 objectForKeyedSubscript:@"trailingText"];
    objc_opt_class();
    v59 = v31;
    if (objc_opt_isKindOfClass())
    {
      v32 = [[_SFPBRichText alloc] initWithDictionary:v31];
      [(_SFPBRowCardSection *)v5 setTrailingText:v32];
    }

    v33 = [v4 objectForKeyedSubscript:@"attributionImage"];
    objc_opt_class();
    v58 = v33;
    if (objc_opt_isKindOfClass())
    {
      v34 = [[_SFPBImage alloc] initWithDictionary:v33];
      [(_SFPBRowCardSection *)v5 setAttributionImage:v34];
    }

    v35 = [v4 objectForKeyedSubscript:@"key"];
    objc_opt_class();
    v57 = v35;
    if (objc_opt_isKindOfClass())
    {
      v36 = [v35 copy];
      [(_SFPBRowCardSection *)v5 setKey:v36];
    }

    v37 = [v4 objectForKeyedSubscript:@"keyNoWrap"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRowCardSection setKeyNoWrap:](v5, "setKeyNoWrap:", [v37 BOOLValue]);
    }

    v55 = v14;
    v38 = [v4 objectForKeyedSubscript:{@"keyWeight", v37}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRowCardSection setKeyWeight:](v5, "setKeyWeight:", [v38 intValue]);
    }

    v39 = [v4 objectForKeyedSubscript:@"value"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = [v39 copy];
      [(_SFPBRowCardSection *)v5 setValue:v40];
    }

    v54 = v16;
    v41 = [v4 objectForKeyedSubscript:@"valueNoWrap"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRowCardSection setValueNoWrap:](v5, "setValueNoWrap:", [v41 BOOLValue]);
    }

    v53 = v18;
    v42 = [v4 objectForKeyedSubscript:@"valueWeight"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRowCardSection setValueWeight:](v5, "setValueWeight:", [v42 intValue]);
    }

    v56 = v6;
    v43 = [v4 objectForKeyedSubscript:@"cardPaddingBottom"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRowCardSection setCardPaddingBottom:](v5, "setCardPaddingBottom:", [v43 BOOLValue]);
    }

    v44 = [v4 objectForKeyedSubscript:@"leadingSubtitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v45 = [[_SFPBRichText alloc] initWithDictionary:v44];
      [(_SFPBRowCardSection *)v5 setLeadingSubtitle:v45];
    }

    v46 = [v4 objectForKeyedSubscript:@"trailingSubtitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = [[_SFPBRichText alloc] initWithDictionary:v46];
      [(_SFPBRowCardSection *)v5 setTrailingSubtitle:v47];
    }

    v48 = v5;
  }

  v49 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRowCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBRowCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBRowCardSection *)self dictionaryRepresentation];
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
  v61 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_attributionImage)
  {
    v4 = [(_SFPBRowCardSection *)self attributionImage];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"attributionImage"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"attributionImage"];
    }
  }

  if (self->_backgroundColor)
  {
    v7 = [(_SFPBRowCardSection *)self backgroundColor];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"backgroundColor"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"backgroundColor"];
    }
  }

  if (self->_canBeHidden)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRowCardSection canBeHidden](self, "canBeHidden")}];
    [v3 setObject:v10 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_cardPaddingBottom)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRowCardSection cardPaddingBottom](self, "cardPaddingBottom")}];
    [v3 setObject:v11 forKeyedSubscript:@"cardPaddingBottom"];
  }

  if (self->_hasBottomPadding)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRowCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [v3 setObject:v12 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRowCardSection hasTopPadding](self, "hasTopPadding")}];
    [v3 setObject:v13 forKeyedSubscript:@"hasTopPadding"];
  }

  if (self->_image)
  {
    v14 = [(_SFPBRowCardSection *)self image];
    v15 = [v14 dictionaryRepresentation];
    if (v15)
    {
      [v3 setObject:v15 forKeyedSubscript:@"image"];
    }

    else
    {
      v16 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v16 forKeyedSubscript:@"image"];
    }
  }

  if (self->_imageIsRightAligned)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRowCardSection imageIsRightAligned](self, "imageIsRightAligned")}];
    [v3 setObject:v17 forKeyedSubscript:@"imageIsRightAligned"];
  }

  if (self->_key)
  {
    v18 = [(_SFPBRowCardSection *)self key];
    v19 = [v18 copy];
    [v3 setObject:v19 forKeyedSubscript:@"key"];
  }

  if (self->_keyNoWrap)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRowCardSection keyNoWrap](self, "keyNoWrap")}];
    [v3 setObject:v20 forKeyedSubscript:@"keyNoWrap"];
  }

  if (self->_keyWeight)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBRowCardSection keyWeight](self, "keyWeight")}];
    [v3 setObject:v21 forKeyedSubscript:@"keyWeight"];
  }

  if (self->_leadingSubtitle)
  {
    v22 = [(_SFPBRowCardSection *)self leadingSubtitle];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"leadingSubtitle"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"leadingSubtitle"];
    }
  }

  if (self->_leadingText)
  {
    v25 = [(_SFPBRowCardSection *)self leadingText];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"leadingText"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"leadingText"];
    }
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    v28 = [MEMORY[0x1E695DF70] array];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v29 = self->_punchoutOptions;
    v30 = [(NSArray *)v29 countByEnumeratingWithState:&v56 objects:v60 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v57;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v57 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = [*(*(&v56 + 1) + 8 * i) dictionaryRepresentation];
          if (v34)
          {
            [v28 addObject:v34];
          }

          else
          {
            v35 = [MEMORY[0x1E695DFB0] null];
            [v28 addObject:v35];
          }
        }

        v31 = [(NSArray *)v29 countByEnumeratingWithState:&v56 objects:v60 count:16];
      }

      while (v31);
    }

    [v3 setObject:v28 forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    v36 = [(_SFPBRowCardSection *)self punchoutPickerDismissText];
    v37 = [v36 copy];
    [v3 setObject:v37 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    v38 = [(_SFPBRowCardSection *)self punchoutPickerTitle];
    v39 = [v38 copy];
    [v3 setObject:v39 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    v40 = [(_SFPBRowCardSection *)self separatorStyle];
    if (v40 >= 6)
    {
      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v40];
    }

    else
    {
      v41 = off_1E7ACE580[v40];
    }

    [v3 setObject:v41 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_trailingSubtitle)
  {
    v42 = [(_SFPBRowCardSection *)self trailingSubtitle];
    v43 = [v42 dictionaryRepresentation];
    if (v43)
    {
      [v3 setObject:v43 forKeyedSubscript:@"trailingSubtitle"];
    }

    else
    {
      v44 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v44 forKeyedSubscript:@"trailingSubtitle"];
    }
  }

  if (self->_trailingText)
  {
    v45 = [(_SFPBRowCardSection *)self trailingText];
    v46 = [v45 dictionaryRepresentation];
    if (v46)
    {
      [v3 setObject:v46 forKeyedSubscript:@"trailingText"];
    }

    else
    {
      v47 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v47 forKeyedSubscript:@"trailingText"];
    }
  }

  if (self->_type)
  {
    v48 = [(_SFPBRowCardSection *)self type];
    v49 = [v48 copy];
    [v3 setObject:v49 forKeyedSubscript:@"type"];
  }

  if (self->_value)
  {
    v50 = [(_SFPBRowCardSection *)self value];
    v51 = [v50 copy];
    [v3 setObject:v51 forKeyedSubscript:@"value"];
  }

  if (self->_valueNoWrap)
  {
    v52 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRowCardSection valueNoWrap](self, "valueNoWrap")}];
    [v3 setObject:v52 forKeyedSubscript:@"valueNoWrap"];
  }

  if (self->_valueWeight)
  {
    v53 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBRowCardSection valueWeight](self, "valueWeight")}];
    [v3 setObject:v53 forKeyedSubscript:@"valueWeight"];
  }

  v54 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v30 = [(NSArray *)self->_punchoutOptions hash];
  v29 = [(NSString *)self->_punchoutPickerTitle hash];
  v3 = [(NSString *)self->_punchoutPickerDismissText hash];
  if (self->_canBeHidden)
  {
    v4 = 2654435761;
  }

  else
  {
    v4 = 0;
  }

  v27 = v4;
  v28 = v3;
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

  v25 = v6;
  v26 = v5;
  v7 = [(NSString *)self->_type hash];
  v23 = 2654435761 * self->_separatorStyle;
  v24 = v7;
  v22 = [(_SFPBColor *)self->_backgroundColor hash];
  v8 = [(_SFPBImage *)self->_image hash];
  if (self->_imageIsRightAligned)
  {
    v9 = 2654435761;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(_SFPBRichText *)self->_leadingText hash];
  v11 = [(_SFPBRichText *)self->_trailingText hash];
  v12 = [(_SFPBImage *)self->_attributionImage hash];
  v13 = [(NSString *)self->_key hash];
  if (self->_keyNoWrap)
  {
    v14 = 2654435761;
  }

  else
  {
    v14 = 0;
  }

  v15 = 2654435761 * self->_keyWeight;
  v16 = [(NSString *)self->_value hash];
  if (self->_valueNoWrap)
  {
    v17 = 2654435761;
  }

  else
  {
    v17 = 0;
  }

  if (self->_cardPaddingBottom)
  {
    v18 = 2654435761;
  }

  else
  {
    v18 = 0;
  }

  v19 = v17 ^ (2654435761 * self->_valueWeight) ^ v18;
  v20 = v29 ^ v30 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v19 ^ [(_SFPBRichText *)self->_leadingSubtitle hash];
  return v20 ^ [(_SFPBRichText *)self->_trailingSubtitle hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_77;
  }

  v5 = [(_SFPBRowCardSection *)self punchoutOptions];
  v6 = [v4 punchoutOptions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v7 = [(_SFPBRowCardSection *)self punchoutOptions];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBRowCardSection *)self punchoutOptions];
    v10 = [v4 punchoutOptions];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRowCardSection *)self punchoutPickerTitle];
  v6 = [v4 punchoutPickerTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v12 = [(_SFPBRowCardSection *)self punchoutPickerTitle];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBRowCardSection *)self punchoutPickerTitle];
    v15 = [v4 punchoutPickerTitle];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRowCardSection *)self punchoutPickerDismissText];
  v6 = [v4 punchoutPickerDismissText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v17 = [(_SFPBRowCardSection *)self punchoutPickerDismissText];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBRowCardSection *)self punchoutPickerDismissText];
    v20 = [v4 punchoutPickerDismissText];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [v4 canBeHidden])
  {
    goto LABEL_77;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [v4 hasTopPadding])
  {
    goto LABEL_77;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [v4 hasBottomPadding])
  {
    goto LABEL_77;
  }

  v5 = [(_SFPBRowCardSection *)self type];
  v6 = [v4 type];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v25 = [(_SFPBRowCardSection *)self type];
  if (v25)
  {
    v26 = v25;
    v27 = [(_SFPBRowCardSection *)self type];
    v28 = [v4 type];
    v29 = [v27 isEqual:v28];

    if (!v29)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [v4 separatorStyle])
  {
    goto LABEL_77;
  }

  v5 = [(_SFPBRowCardSection *)self backgroundColor];
  v6 = [v4 backgroundColor];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v31 = [(_SFPBRowCardSection *)self backgroundColor];
  if (v31)
  {
    v32 = v31;
    v33 = [(_SFPBRowCardSection *)self backgroundColor];
    v34 = [v4 backgroundColor];
    v35 = [v33 isEqual:v34];

    if (!v35)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRowCardSection *)self image];
  v6 = [v4 image];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v36 = [(_SFPBRowCardSection *)self image];
  if (v36)
  {
    v37 = v36;
    v38 = [(_SFPBRowCardSection *)self image];
    v39 = [v4 image];
    v40 = [v38 isEqual:v39];

    if (!v40)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  imageIsRightAligned = self->_imageIsRightAligned;
  if (imageIsRightAligned != [v4 imageIsRightAligned])
  {
    goto LABEL_77;
  }

  v5 = [(_SFPBRowCardSection *)self leadingText];
  v6 = [v4 leadingText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v42 = [(_SFPBRowCardSection *)self leadingText];
  if (v42)
  {
    v43 = v42;
    v44 = [(_SFPBRowCardSection *)self leadingText];
    v45 = [v4 leadingText];
    v46 = [v44 isEqual:v45];

    if (!v46)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRowCardSection *)self trailingText];
  v6 = [v4 trailingText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v47 = [(_SFPBRowCardSection *)self trailingText];
  if (v47)
  {
    v48 = v47;
    v49 = [(_SFPBRowCardSection *)self trailingText];
    v50 = [v4 trailingText];
    v51 = [v49 isEqual:v50];

    if (!v51)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRowCardSection *)self attributionImage];
  v6 = [v4 attributionImage];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v52 = [(_SFPBRowCardSection *)self attributionImage];
  if (v52)
  {
    v53 = v52;
    v54 = [(_SFPBRowCardSection *)self attributionImage];
    v55 = [v4 attributionImage];
    v56 = [v54 isEqual:v55];

    if (!v56)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRowCardSection *)self key];
  v6 = [v4 key];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v57 = [(_SFPBRowCardSection *)self key];
  if (v57)
  {
    v58 = v57;
    v59 = [(_SFPBRowCardSection *)self key];
    v60 = [v4 key];
    v61 = [v59 isEqual:v60];

    if (!v61)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  keyNoWrap = self->_keyNoWrap;
  if (keyNoWrap != [v4 keyNoWrap])
  {
    goto LABEL_77;
  }

  keyWeight = self->_keyWeight;
  if (keyWeight != [v4 keyWeight])
  {
    goto LABEL_77;
  }

  v5 = [(_SFPBRowCardSection *)self value];
  v6 = [v4 value];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v64 = [(_SFPBRowCardSection *)self value];
  if (v64)
  {
    v65 = v64;
    v66 = [(_SFPBRowCardSection *)self value];
    v67 = [v4 value];
    v68 = [v66 isEqual:v67];

    if (!v68)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  valueNoWrap = self->_valueNoWrap;
  if (valueNoWrap != [v4 valueNoWrap])
  {
    goto LABEL_77;
  }

  valueWeight = self->_valueWeight;
  if (valueWeight != [v4 valueWeight])
  {
    goto LABEL_77;
  }

  cardPaddingBottom = self->_cardPaddingBottom;
  if (cardPaddingBottom != [v4 cardPaddingBottom])
  {
    goto LABEL_77;
  }

  v5 = [(_SFPBRowCardSection *)self leadingSubtitle];
  v6 = [v4 leadingSubtitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_76;
  }

  v72 = [(_SFPBRowCardSection *)self leadingSubtitle];
  if (v72)
  {
    v73 = v72;
    v74 = [(_SFPBRowCardSection *)self leadingSubtitle];
    v75 = [v4 leadingSubtitle];
    v76 = [v74 isEqual:v75];

    if (!v76)
    {
      goto LABEL_77;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRowCardSection *)self trailingSubtitle];
  v6 = [v4 trailingSubtitle];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_76:

    goto LABEL_77;
  }

  v77 = [(_SFPBRowCardSection *)self trailingSubtitle];
  if (!v77)
  {

LABEL_80:
    v82 = 1;
    goto LABEL_78;
  }

  v78 = v77;
  v79 = [(_SFPBRowCardSection *)self trailingSubtitle];
  v80 = [v4 trailingSubtitle];
  v81 = [v79 isEqual:v80];

  if (v81)
  {
    goto LABEL_80;
  }

LABEL_77:
  v82 = 0;
LABEL_78:

  return v82;
}

- (void)writeTo:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBRowCardSection *)self punchoutOptions];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      v9 = 0;
      do
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v24 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v7);
  }

  v11 = [(_SFPBRowCardSection *)self punchoutPickerTitle];
  if (v11)
  {
    PBDataWriterWriteStringField();
  }

  v12 = [(_SFPBRowCardSection *)self punchoutPickerDismissText];
  if (v12)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBRowCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBRowCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBRowCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  v13 = [(_SFPBRowCardSection *)self type];
  if (v13)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBRowCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  v14 = [(_SFPBRowCardSection *)self backgroundColor];
  if (v14)
  {
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_SFPBRowCardSection *)self image];
  if (v15)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBRowCardSection *)self imageIsRightAligned])
  {
    PBDataWriterWriteBOOLField();
  }

  v16 = [(_SFPBRowCardSection *)self leadingText];
  if (v16)
  {
    PBDataWriterWriteSubmessage();
  }

  v17 = [(_SFPBRowCardSection *)self trailingText];
  if (v17)
  {
    PBDataWriterWriteSubmessage();
  }

  v18 = [(_SFPBRowCardSection *)self attributionImage];
  if (v18)
  {
    PBDataWriterWriteSubmessage();
  }

  v19 = [(_SFPBRowCardSection *)self key];
  if (v19)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBRowCardSection *)self keyNoWrap])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBRowCardSection *)self keyWeight])
  {
    PBDataWriterWriteInt32Field();
  }

  v20 = [(_SFPBRowCardSection *)self value];
  if (v20)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBRowCardSection *)self valueNoWrap])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBRowCardSection *)self valueWeight])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBRowCardSection *)self cardPaddingBottom])
  {
    PBDataWriterWriteBOOLField();
  }

  v21 = [(_SFPBRowCardSection *)self leadingSubtitle];
  if (v21)
  {
    PBDataWriterWriteSubmessage();
  }

  v22 = [(_SFPBRowCardSection *)self trailingSubtitle];
  if (v22)
  {
    PBDataWriterWriteSubmessage();
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)setValue:(id)a3
{
  v4 = [a3 copy];
  value = self->_value;
  self->_value = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setKey:(id)a3
{
  v4 = [a3 copy];
  key = self->_key;
  self->_key = v4;

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