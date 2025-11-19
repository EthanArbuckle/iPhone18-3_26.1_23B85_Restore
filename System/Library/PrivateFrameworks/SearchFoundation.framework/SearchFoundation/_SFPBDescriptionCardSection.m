@interface _SFPBDescriptionCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBDescriptionCardSection)initWithDictionary:(id)a3;
- (_SFPBDescriptionCardSection)initWithFacade:(id)a3;
- (_SFPBDescriptionCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPunchoutOptions:(id)a3;
- (void)addRichDescriptions:(id)a3;
- (void)setAttributionText:(id)a3;
- (void)setExpandText:(id)a3;
- (void)setPunchoutOptions:(id)a3;
- (void)setPunchoutPickerDismissText:(id)a3;
- (void)setPunchoutPickerTitle:(id)a3;
- (void)setRichDescriptions:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
- (void)setType:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBDescriptionCardSection

- (_SFPBDescriptionCardSection)initWithFacade:(id)a3
{
  v75 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBDescriptionCardSection *)self init];
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

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v8 = [v4 punchoutOptions];
    v9 = [v8 countByEnumeratingWithState:&v69 objects:v74 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v70;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v70 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v69 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v69 objects:v74 count:16];
      }

      while (v10);
    }

    [(_SFPBDescriptionCardSection *)v5 setPunchoutOptions:v7];
    v14 = [v4 punchoutPickerTitle];

    if (v14)
    {
      v15 = [v4 punchoutPickerTitle];
      [(_SFPBDescriptionCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [v4 punchoutPickerDismissText];

    if (v16)
    {
      v17 = [v4 punchoutPickerDismissText];
      [(_SFPBDescriptionCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    if ([v4 hasCanBeHidden])
    {
      -[_SFPBDescriptionCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v4 canBeHidden]);
    }

    if ([v4 hasHasTopPadding])
    {
      -[_SFPBDescriptionCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v4 hasTopPadding]);
    }

    if ([v4 hasHasBottomPadding])
    {
      -[_SFPBDescriptionCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v4 hasBottomPadding]);
    }

    v18 = [v4 type];

    if (v18)
    {
      v19 = [v4 type];
      [(_SFPBDescriptionCardSection *)v5 setType:v19];
    }

    if ([v4 hasSeparatorStyle])
    {
      -[_SFPBDescriptionCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v4 separatorStyle]);
    }

    v20 = [v4 backgroundColor];

    if (v20)
    {
      v21 = [_SFPBColor alloc];
      v22 = [v4 backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:v22];
      [(_SFPBDescriptionCardSection *)v5 setBackgroundColor:v23];
    }

    v24 = [v4 title];

    if (v24)
    {
      v25 = [v4 title];
      [(_SFPBDescriptionCardSection *)v5 setTitle:v25];
    }

    v26 = [v4 subtitle];

    if (v26)
    {
      v27 = [v4 subtitle];
      [(_SFPBDescriptionCardSection *)v5 setSubtitle:v27];
    }

    v28 = [v4 descriptionText];

    if (v28)
    {
      v29 = [_SFPBText alloc];
      v30 = [v4 descriptionText];
      v31 = [(_SFPBText *)v29 initWithFacade:v30];
      [(_SFPBDescriptionCardSection *)v5 setDescriptionText:v31];
    }

    v32 = [v4 expandText];

    if (v32)
    {
      v33 = [v4 expandText];
      [(_SFPBDescriptionCardSection *)v5 setExpandText:v33];
    }

    v34 = [v4 image];

    if (v34)
    {
      v35 = [_SFPBImage alloc];
      v36 = [v4 image];
      v37 = [(_SFPBImage *)v35 initWithFacade:v36];
      [(_SFPBDescriptionCardSection *)v5 setImage:v37];
    }

    if ([v4 hasTitleNoWrap])
    {
      -[_SFPBDescriptionCardSection setTitleNoWrap:](v5, "setTitleNoWrap:", [v4 titleNoWrap]);
    }

    v38 = [v4 titleWeight];

    if (v38)
    {
      v39 = [v4 titleWeight];
      -[_SFPBDescriptionCardSection setTitleWeight:](v5, "setTitleWeight:", [v39 intValue]);
    }

    v40 = [v4 descriptionSize];

    if (v40)
    {
      v41 = [v4 descriptionSize];
      -[_SFPBDescriptionCardSection setDescriptionSize:](v5, "setDescriptionSize:", [v41 intValue]);
    }

    v42 = [v4 descriptionWeight];

    if (v42)
    {
      v43 = [v4 descriptionWeight];
      -[_SFPBDescriptionCardSection setDescriptionWeight:](v5, "setDescriptionWeight:", [v43 intValue]);
    }

    if ([v4 hasDescriptionExpand])
    {
      -[_SFPBDescriptionCardSection setDescriptionExpand:](v5, "setDescriptionExpand:", [v4 descriptionExpand]);
    }

    if ([v4 hasImageAlign])
    {
      -[_SFPBDescriptionCardSection setImageAlign:](v5, "setImageAlign:", [v4 imageAlign]);
    }

    if ([v4 hasTextAlign])
    {
      -[_SFPBDescriptionCardSection setTextAlign:](v5, "setTextAlign:", [v4 textAlign]);
    }

    v44 = [v4 attributionText];

    if (v44)
    {
      v45 = [v4 attributionText];
      [(_SFPBDescriptionCardSection *)v5 setAttributionText:v45];
    }

    v46 = [v4 attributionURL];

    if (v46)
    {
      v47 = [_SFPBURL alloc];
      v48 = [v4 attributionURL];
      v49 = [(_SFPBURL *)v47 initWithNSURL:v48];
      [(_SFPBDescriptionCardSection *)v5 setAttributionURL:v49];
    }

    v50 = [v4 attributionGlyph];

    if (v50)
    {
      v51 = [_SFPBImage alloc];
      v52 = [v4 attributionGlyph];
      v53 = [(_SFPBImage *)v51 initWithFacade:v52];
      [(_SFPBDescriptionCardSection *)v5 setAttributionGlyph:v53];
    }

    v54 = [v4 richDescriptions];
    if (v54)
    {
      v55 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v55 = 0;
    }

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v56 = [v4 richDescriptions];
    v57 = [v56 countByEnumeratingWithState:&v65 objects:v73 count:16];
    if (v57)
    {
      v58 = v57;
      v59 = *v66;
      do
      {
        for (j = 0; j != v58; ++j)
        {
          if (*v66 != v59)
          {
            objc_enumerationMutation(v56);
          }

          v61 = [[_SFPBRichText alloc] initWithFacade:*(*(&v65 + 1) + 8 * j)];
          if (v61)
          {
            [v55 addObject:v61];
          }
        }

        v58 = [v56 countByEnumeratingWithState:&v65 objects:v73 count:16];
      }

      while (v58);
    }

    [(_SFPBDescriptionCardSection *)v5 setRichDescriptions:v55];
    v62 = v5;
  }

  v63 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBDescriptionCardSection)initWithDictionary:(id)a3
{
  v98 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v95.receiver = self;
  v95.super_class = _SFPBDescriptionCardSection;
  v5 = [(_SFPBDescriptionCardSection *)&v95 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"punchoutOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v7 = v6;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v91 objects:v97 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v92;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v92 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v91 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [[_SFPBPunchout alloc] initWithDictionary:v13];
              [(_SFPBDescriptionCardSection *)v5 addPunchoutOptions:v14];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v91 objects:v97 count:16];
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
      [(_SFPBDescriptionCardSection *)v5 setPunchoutPickerTitle:v16];
    }

    v86 = v15;
    v17 = [v4 objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v17 copy];
      [(_SFPBDescriptionCardSection *)v5 setPunchoutPickerDismissText:v18];
    }

    v85 = v17;
    v19 = [v4 objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBDescriptionCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v19 BOOLValue]);
    }

    v20 = [v4 objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    v84 = v20;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBDescriptionCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v20 BOOLValue]);
    }

    v21 = [v4 objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    v83 = v21;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBDescriptionCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v21 BOOLValue]);
    }

    v22 = [v4 objectForKeyedSubscript:@"type"];
    objc_opt_class();
    v82 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = [v22 copy];
      [(_SFPBDescriptionCardSection *)v5 setType:v23];
    }

    v24 = [v4 objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    v81 = v24;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBDescriptionCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v24 intValue]);
    }

    v25 = [v4 objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    v80 = v25;
    if (objc_opt_isKindOfClass())
    {
      v26 = [[_SFPBColor alloc] initWithDictionary:v25];
      [(_SFPBDescriptionCardSection *)v5 setBackgroundColor:v26];
    }

    v27 = [v4 objectForKeyedSubscript:@"title"];
    objc_opt_class();
    v79 = v27;
    if (objc_opt_isKindOfClass())
    {
      v28 = [v27 copy];
      [(_SFPBDescriptionCardSection *)v5 setTitle:v28];
    }

    v29 = [v4 objectForKeyedSubscript:@"subtitle"];
    objc_opt_class();
    v78 = v29;
    if (objc_opt_isKindOfClass())
    {
      v30 = [v29 copy];
      [(_SFPBDescriptionCardSection *)v5 setSubtitle:v30];
    }

    v31 = [v4 objectForKeyedSubscript:@"descriptionText"];
    objc_opt_class();
    v77 = v31;
    if (objc_opt_isKindOfClass())
    {
      v32 = [[_SFPBText alloc] initWithDictionary:v31];
      [(_SFPBDescriptionCardSection *)v5 setDescriptionText:v32];
    }

    v33 = [v4 objectForKeyedSubscript:@"expandText"];
    objc_opt_class();
    v76 = v33;
    if (objc_opt_isKindOfClass())
    {
      v34 = [v33 copy];
      [(_SFPBDescriptionCardSection *)v5 setExpandText:v34];
    }

    v35 = [v4 objectForKeyedSubscript:@"image"];
    objc_opt_class();
    v75 = v35;
    if (objc_opt_isKindOfClass())
    {
      v36 = [[_SFPBImage alloc] initWithDictionary:v35];
      [(_SFPBDescriptionCardSection *)v5 setImage:v36];
    }

    v37 = [v4 objectForKeyedSubscript:@"titleNoWrap"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBDescriptionCardSection setTitleNoWrap:](v5, "setTitleNoWrap:", [v37 BOOLValue]);
    }

    v38 = [v4 objectForKeyedSubscript:@"titleWeight"];
    objc_opt_class();
    v74 = v38;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBDescriptionCardSection setTitleWeight:](v5, "setTitleWeight:", [v38 intValue]);
    }

    v39 = [v4 objectForKeyedSubscript:@"descriptionSize"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBDescriptionCardSection setDescriptionSize:](v5, "setDescriptionSize:", [v39 intValue]);
    }

    v40 = [v4 objectForKeyedSubscript:@"descriptionWeight"];
    objc_opt_class();
    v73 = v40;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBDescriptionCardSection setDescriptionWeight:](v5, "setDescriptionWeight:", [v40 intValue]);
    }

    v41 = v19;
    v42 = [v4 objectForKeyedSubscript:@"descriptionExpand"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBDescriptionCardSection setDescriptionExpand:](v5, "setDescriptionExpand:", [v42 BOOLValue]);
    }

    v43 = [v4 objectForKeyedSubscript:@"imageAlign"];
    objc_opt_class();
    v72 = v43;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBDescriptionCardSection setImageAlign:](v5, "setImageAlign:", [v43 intValue]);
    }

    v68 = v37;
    v44 = [v4 objectForKeyedSubscript:@"textAlign"];
    objc_opt_class();
    v45 = v41;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBDescriptionCardSection setTextAlign:](v5, "setTextAlign:", [v44 intValue]);
    }

    v67 = v44;
    v46 = [v4 objectForKeyedSubscript:@"attributionText"];
    objc_opt_class();
    v71 = v46;
    v47 = v86;
    if (objc_opt_isKindOfClass())
    {
      v48 = [v46 copy];
      [(_SFPBDescriptionCardSection *)v5 setAttributionText:v48];
    }

    v49 = [v4 objectForKeyedSubscript:@"attributionURL"];
    objc_opt_class();
    v70 = v49;
    if (objc_opt_isKindOfClass())
    {
      v50 = [[_SFPBURL alloc] initWithDictionary:v49];
      [(_SFPBDescriptionCardSection *)v5 setAttributionURL:v50];
    }

    v51 = [v4 objectForKeyedSubscript:@"attributionGlyph"];
    objc_opt_class();
    v69 = v51;
    if (objc_opt_isKindOfClass())
    {
      v52 = [[_SFPBImage alloc] initWithDictionary:v51];
      [(_SFPBDescriptionCardSection *)v5 setAttributionGlyph:v52];
    }

    v53 = [v4 objectForKeyedSubscript:@"richDescriptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v64 = v39;
      v65 = v45;
      v66 = v6;
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v54 = v53;
      v55 = [v54 countByEnumeratingWithState:&v87 objects:v96 count:16];
      if (v55)
      {
        v56 = v55;
        v57 = *v88;
        do
        {
          for (j = 0; j != v56; ++j)
          {
            if (*v88 != v57)
            {
              objc_enumerationMutation(v54);
            }

            v59 = *(*(&v87 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v60 = [[_SFPBRichText alloc] initWithDictionary:v59];
              [(_SFPBDescriptionCardSection *)v5 addRichDescriptions:v60];
            }
          }

          v56 = [v54 countByEnumeratingWithState:&v87 objects:v96 count:16];
        }

        while (v56);
      }

      v45 = v65;
      v6 = v66;
      v17 = v85;
      v47 = v86;
      v39 = v64;
    }

    v61 = v5;
  }

  v62 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBDescriptionCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBDescriptionCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBDescriptionCardSection *)self dictionaryRepresentation];
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
  v77 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_attributionGlyph)
  {
    v4 = [(_SFPBDescriptionCardSection *)self attributionGlyph];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"attributionGlyph"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"attributionGlyph"];
    }
  }

  if (self->_attributionText)
  {
    v7 = [(_SFPBDescriptionCardSection *)self attributionText];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"attributionText"];
  }

  if (self->_attributionURL)
  {
    v9 = [(_SFPBDescriptionCardSection *)self attributionURL];
    v10 = [v9 dictionaryRepresentation];
    if (v10)
    {
      [v3 setObject:v10 forKeyedSubscript:@"attributionURL"];
    }

    else
    {
      v11 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v11 forKeyedSubscript:@"attributionURL"];
    }
  }

  if (self->_backgroundColor)
  {
    v12 = [(_SFPBDescriptionCardSection *)self backgroundColor];
    v13 = [v12 dictionaryRepresentation];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"backgroundColor"];
    }

    else
    {
      v14 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v14 forKeyedSubscript:@"backgroundColor"];
    }
  }

  v15 = 0x1E696A000uLL;
  if (self->_canBeHidden)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBDescriptionCardSection canBeHidden](self, "canBeHidden")}];
    [v3 setObject:v16 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_descriptionExpand)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBDescriptionCardSection descriptionExpand](self, "descriptionExpand")}];
    [v3 setObject:v17 forKeyedSubscript:@"descriptionExpand"];
  }

  if (self->_descriptionSize)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBDescriptionCardSection descriptionSize](self, "descriptionSize")}];
    [v3 setObject:v18 forKeyedSubscript:@"descriptionSize"];
  }

  if (self->_descriptionText)
  {
    v19 = [(_SFPBDescriptionCardSection *)self descriptionText];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"descriptionText"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"descriptionText"];
    }
  }

  if (self->_descriptionWeight)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBDescriptionCardSection descriptionWeight](self, "descriptionWeight")}];
    [v3 setObject:v22 forKeyedSubscript:@"descriptionWeight"];
  }

  if (self->_expandText)
  {
    v23 = [(_SFPBDescriptionCardSection *)self expandText];
    v24 = [v23 copy];
    [v3 setObject:v24 forKeyedSubscript:@"expandText"];
  }

  if (self->_hasBottomPadding)
  {
    v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBDescriptionCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [v3 setObject:v25 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBDescriptionCardSection hasTopPadding](self, "hasTopPadding")}];
    [v3 setObject:v26 forKeyedSubscript:@"hasTopPadding"];
  }

  if (self->_image)
  {
    v27 = [(_SFPBDescriptionCardSection *)self image];
    v28 = [v27 dictionaryRepresentation];
    if (v28)
    {
      [v3 setObject:v28 forKeyedSubscript:@"image"];
    }

    else
    {
      v29 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v29 forKeyedSubscript:@"image"];
    }
  }

  if (self->_imageAlign)
  {
    v30 = [(_SFPBDescriptionCardSection *)self imageAlign];
    if (v30 >= 5)
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v30];
    }

    else
    {
      v31 = off_1E7ACE448[v30];
    }

    [v3 setObject:v31 forKeyedSubscript:@"imageAlign"];
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    v32 = [MEMORY[0x1E695DF70] array];
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v33 = self->_punchoutOptions;
    v34 = [(NSArray *)v33 countByEnumeratingWithState:&v71 objects:v76 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v72;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v72 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = [*(*(&v71 + 1) + 8 * i) dictionaryRepresentation];
          if (v38)
          {
            [v32 addObject:v38];
          }

          else
          {
            v39 = [MEMORY[0x1E695DFB0] null];
            [v32 addObject:v39];
          }
        }

        v35 = [(NSArray *)v33 countByEnumeratingWithState:&v71 objects:v76 count:16];
      }

      while (v35);
    }

    [v3 setObject:v32 forKeyedSubscript:@"punchoutOptions"];
    v15 = 0x1E696A000;
  }

  if (self->_punchoutPickerDismissText)
  {
    v40 = [(_SFPBDescriptionCardSection *)self punchoutPickerDismissText];
    v41 = [v40 copy];
    [v3 setObject:v41 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    v42 = [(_SFPBDescriptionCardSection *)self punchoutPickerTitle];
    v43 = [v42 copy];
    [v3 setObject:v43 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if ([(NSArray *)self->_richDescriptions count])
  {
    v44 = [MEMORY[0x1E695DF70] array];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v45 = self->_richDescriptions;
    v46 = [(NSArray *)v45 countByEnumeratingWithState:&v67 objects:v75 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v68;
      do
      {
        for (j = 0; j != v47; ++j)
        {
          if (*v68 != v48)
          {
            objc_enumerationMutation(v45);
          }

          v50 = [*(*(&v67 + 1) + 8 * j) dictionaryRepresentation];
          if (v50)
          {
            [v44 addObject:v50];
          }

          else
          {
            v51 = [MEMORY[0x1E695DFB0] null];
            [v44 addObject:v51];
          }
        }

        v47 = [(NSArray *)v45 countByEnumeratingWithState:&v67 objects:v75 count:16];
      }

      while (v47);
    }

    [v3 setObject:v44 forKeyedSubscript:@"richDescriptions"];
    v15 = 0x1E696A000uLL;
  }

  if (self->_separatorStyle)
  {
    v52 = [(_SFPBDescriptionCardSection *)self separatorStyle];
    if (v52 >= 6)
    {
      v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v52];
    }

    else
    {
      v53 = off_1E7ACE580[v52];
    }

    [v3 setObject:v53 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_subtitle)
  {
    v54 = [(_SFPBDescriptionCardSection *)self subtitle];
    v55 = [v54 copy];
    [v3 setObject:v55 forKeyedSubscript:@"subtitle"];
  }

  if (self->_textAlign)
  {
    v56 = [(_SFPBDescriptionCardSection *)self textAlign];
    if (v56 >= 3)
    {
      v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v56];
    }

    else
    {
      v57 = off_1E7ACE548[v56];
    }

    [v3 setObject:v57 forKeyedSubscript:@"textAlign"];
  }

  if (self->_title)
  {
    v58 = [(_SFPBDescriptionCardSection *)self title];
    v59 = [v58 copy];
    [v3 setObject:v59 forKeyedSubscript:@"title"];
  }

  if (self->_titleNoWrap)
  {
    v60 = [*(v15 + 3480) numberWithBool:{-[_SFPBDescriptionCardSection titleNoWrap](self, "titleNoWrap")}];
    [v3 setObject:v60 forKeyedSubscript:@"titleNoWrap"];
  }

  if (self->_titleWeight)
  {
    v61 = [*(v15 + 3480) numberWithInt:{-[_SFPBDescriptionCardSection titleWeight](self, "titleWeight")}];
    [v3 setObject:v61 forKeyedSubscript:@"titleWeight"];
  }

  if (self->_type)
  {
    v62 = [(_SFPBDescriptionCardSection *)self type];
    v63 = [v62 copy];
    [v3 setObject:v63 forKeyedSubscript:@"type"];
  }

  v64 = v3;

  v65 = *MEMORY[0x1E69E9840];
  return v3;
}

- (unint64_t)hash
{
  v26 = [(NSArray *)self->_punchoutOptions hash];
  v25 = [(NSString *)self->_punchoutPickerTitle hash];
  v3 = [(NSString *)self->_punchoutPickerDismissText hash];
  if (self->_canBeHidden)
  {
    v4 = 2654435761;
  }

  else
  {
    v4 = 0;
  }

  v23 = v4;
  v24 = v3;
  if (self->_hasTopPadding)
  {
    v5 = 2654435761;
  }

  else
  {
    v5 = 0;
  }

  v22 = v5;
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
  v10 = [(NSString *)self->_title hash];
  v11 = [(NSString *)self->_subtitle hash];
  v12 = [(_SFPBText *)self->_descriptionText hash];
  v13 = [(NSString *)self->_expandText hash];
  v14 = [(_SFPBImage *)self->_image hash];
  if (self->_titleNoWrap)
  {
    v15 = 2654435761;
  }

  else
  {
    v15 = 0;
  }

  if (self->_descriptionExpand)
  {
    v16 = 2654435761;
  }

  else
  {
    v16 = 0;
  }

  v17 = v25 ^ v26 ^ v24 ^ v23 ^ v22 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ (2654435761 * self->_titleWeight) ^ (2654435761 * self->_descriptionSize) ^ (2654435761 * self->_descriptionWeight) ^ v16 ^ (2654435761 * self->_imageAlign) ^ (2654435761 * self->_textAlign);
  v18 = [(NSString *)self->_attributionText hash];
  v19 = v18 ^ [(_SFPBURL *)self->_attributionURL hash];
  v20 = v19 ^ [(_SFPBImage *)self->_attributionGlyph hash];
  return v17 ^ v20 ^ [(NSArray *)self->_richDescriptions hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_83;
  }

  v5 = [(_SFPBDescriptionCardSection *)self punchoutOptions];
  v6 = [v4 punchoutOptions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_82;
  }

  v7 = [(_SFPBDescriptionCardSection *)self punchoutOptions];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBDescriptionCardSection *)self punchoutOptions];
    v10 = [v4 punchoutOptions];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  v5 = [(_SFPBDescriptionCardSection *)self punchoutPickerTitle];
  v6 = [v4 punchoutPickerTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_82;
  }

  v12 = [(_SFPBDescriptionCardSection *)self punchoutPickerTitle];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBDescriptionCardSection *)self punchoutPickerTitle];
    v15 = [v4 punchoutPickerTitle];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  v5 = [(_SFPBDescriptionCardSection *)self punchoutPickerDismissText];
  v6 = [v4 punchoutPickerDismissText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_82;
  }

  v17 = [(_SFPBDescriptionCardSection *)self punchoutPickerDismissText];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBDescriptionCardSection *)self punchoutPickerDismissText];
    v20 = [v4 punchoutPickerDismissText];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [v4 canBeHidden])
  {
    goto LABEL_83;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [v4 hasTopPadding])
  {
    goto LABEL_83;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [v4 hasBottomPadding])
  {
    goto LABEL_83;
  }

  v5 = [(_SFPBDescriptionCardSection *)self type];
  v6 = [v4 type];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_82;
  }

  v25 = [(_SFPBDescriptionCardSection *)self type];
  if (v25)
  {
    v26 = v25;
    v27 = [(_SFPBDescriptionCardSection *)self type];
    v28 = [v4 type];
    v29 = [v27 isEqual:v28];

    if (!v29)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [v4 separatorStyle])
  {
    goto LABEL_83;
  }

  v5 = [(_SFPBDescriptionCardSection *)self backgroundColor];
  v6 = [v4 backgroundColor];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_82;
  }

  v31 = [(_SFPBDescriptionCardSection *)self backgroundColor];
  if (v31)
  {
    v32 = v31;
    v33 = [(_SFPBDescriptionCardSection *)self backgroundColor];
    v34 = [v4 backgroundColor];
    v35 = [v33 isEqual:v34];

    if (!v35)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  v5 = [(_SFPBDescriptionCardSection *)self title];
  v6 = [v4 title];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_82;
  }

  v36 = [(_SFPBDescriptionCardSection *)self title];
  if (v36)
  {
    v37 = v36;
    v38 = [(_SFPBDescriptionCardSection *)self title];
    v39 = [v4 title];
    v40 = [v38 isEqual:v39];

    if (!v40)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  v5 = [(_SFPBDescriptionCardSection *)self subtitle];
  v6 = [v4 subtitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_82;
  }

  v41 = [(_SFPBDescriptionCardSection *)self subtitle];
  if (v41)
  {
    v42 = v41;
    v43 = [(_SFPBDescriptionCardSection *)self subtitle];
    v44 = [v4 subtitle];
    v45 = [v43 isEqual:v44];

    if (!v45)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  v5 = [(_SFPBDescriptionCardSection *)self descriptionText];
  v6 = [v4 descriptionText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_82;
  }

  v46 = [(_SFPBDescriptionCardSection *)self descriptionText];
  if (v46)
  {
    v47 = v46;
    v48 = [(_SFPBDescriptionCardSection *)self descriptionText];
    v49 = [v4 descriptionText];
    v50 = [v48 isEqual:v49];

    if (!v50)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  v5 = [(_SFPBDescriptionCardSection *)self expandText];
  v6 = [v4 expandText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_82;
  }

  v51 = [(_SFPBDescriptionCardSection *)self expandText];
  if (v51)
  {
    v52 = v51;
    v53 = [(_SFPBDescriptionCardSection *)self expandText];
    v54 = [v4 expandText];
    v55 = [v53 isEqual:v54];

    if (!v55)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  v5 = [(_SFPBDescriptionCardSection *)self image];
  v6 = [v4 image];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_82;
  }

  v56 = [(_SFPBDescriptionCardSection *)self image];
  if (v56)
  {
    v57 = v56;
    v58 = [(_SFPBDescriptionCardSection *)self image];
    v59 = [v4 image];
    v60 = [v58 isEqual:v59];

    if (!v60)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  titleNoWrap = self->_titleNoWrap;
  if (titleNoWrap != [v4 titleNoWrap])
  {
    goto LABEL_83;
  }

  titleWeight = self->_titleWeight;
  if (titleWeight != [v4 titleWeight])
  {
    goto LABEL_83;
  }

  descriptionSize = self->_descriptionSize;
  if (descriptionSize != [v4 descriptionSize])
  {
    goto LABEL_83;
  }

  descriptionWeight = self->_descriptionWeight;
  if (descriptionWeight != [v4 descriptionWeight])
  {
    goto LABEL_83;
  }

  descriptionExpand = self->_descriptionExpand;
  if (descriptionExpand != [v4 descriptionExpand])
  {
    goto LABEL_83;
  }

  imageAlign = self->_imageAlign;
  if (imageAlign != [v4 imageAlign])
  {
    goto LABEL_83;
  }

  textAlign = self->_textAlign;
  if (textAlign != [v4 textAlign])
  {
    goto LABEL_83;
  }

  v5 = [(_SFPBDescriptionCardSection *)self attributionText];
  v6 = [v4 attributionText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_82;
  }

  v68 = [(_SFPBDescriptionCardSection *)self attributionText];
  if (v68)
  {
    v69 = v68;
    v70 = [(_SFPBDescriptionCardSection *)self attributionText];
    v71 = [v4 attributionText];
    v72 = [v70 isEqual:v71];

    if (!v72)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  v5 = [(_SFPBDescriptionCardSection *)self attributionURL];
  v6 = [v4 attributionURL];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_82;
  }

  v73 = [(_SFPBDescriptionCardSection *)self attributionURL];
  if (v73)
  {
    v74 = v73;
    v75 = [(_SFPBDescriptionCardSection *)self attributionURL];
    v76 = [v4 attributionURL];
    v77 = [v75 isEqual:v76];

    if (!v77)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  v5 = [(_SFPBDescriptionCardSection *)self attributionGlyph];
  v6 = [v4 attributionGlyph];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_82;
  }

  v78 = [(_SFPBDescriptionCardSection *)self attributionGlyph];
  if (v78)
  {
    v79 = v78;
    v80 = [(_SFPBDescriptionCardSection *)self attributionGlyph];
    v81 = [v4 attributionGlyph];
    v82 = [v80 isEqual:v81];

    if (!v82)
    {
      goto LABEL_83;
    }
  }

  else
  {
  }

  v5 = [(_SFPBDescriptionCardSection *)self richDescriptions];
  v6 = [v4 richDescriptions];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_82:

    goto LABEL_83;
  }

  v83 = [(_SFPBDescriptionCardSection *)self richDescriptions];
  if (!v83)
  {

LABEL_86:
    v88 = 1;
    goto LABEL_84;
  }

  v84 = v83;
  v85 = [(_SFPBDescriptionCardSection *)self richDescriptions];
  v86 = [v4 richDescriptions];
  v87 = [v85 isEqual:v86];

  if (v87)
  {
    goto LABEL_86;
  }

LABEL_83:
  v88 = 0;
LABEL_84:

  return v88;
}

- (void)writeTo:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBDescriptionCardSection *)self punchoutOptions];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v35;
    do
    {
      v9 = 0;
      do
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v34 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v7);
  }

  v11 = [(_SFPBDescriptionCardSection *)self punchoutPickerTitle];
  if (v11)
  {
    PBDataWriterWriteStringField();
  }

  v12 = [(_SFPBDescriptionCardSection *)self punchoutPickerDismissText];
  if (v12)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBDescriptionCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBDescriptionCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBDescriptionCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  v13 = [(_SFPBDescriptionCardSection *)self type];
  if (v13)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBDescriptionCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  v14 = [(_SFPBDescriptionCardSection *)self backgroundColor];
  if (v14)
  {
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_SFPBDescriptionCardSection *)self title];
  if (v15)
  {
    PBDataWriterWriteStringField();
  }

  v16 = [(_SFPBDescriptionCardSection *)self subtitle];
  if (v16)
  {
    PBDataWriterWriteStringField();
  }

  v17 = [(_SFPBDescriptionCardSection *)self descriptionText];
  if (v17)
  {
    PBDataWriterWriteSubmessage();
  }

  v18 = [(_SFPBDescriptionCardSection *)self expandText];
  if (v18)
  {
    PBDataWriterWriteStringField();
  }

  v19 = [(_SFPBDescriptionCardSection *)self image];
  if (v19)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBDescriptionCardSection *)self titleNoWrap])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBDescriptionCardSection *)self titleWeight])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBDescriptionCardSection *)self descriptionSize])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBDescriptionCardSection *)self descriptionWeight])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBDescriptionCardSection *)self descriptionExpand])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBDescriptionCardSection *)self imageAlign])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBDescriptionCardSection *)self textAlign])
  {
    PBDataWriterWriteInt32Field();
  }

  v20 = [(_SFPBDescriptionCardSection *)self attributionText];
  if (v20)
  {
    PBDataWriterWriteStringField();
  }

  v21 = [(_SFPBDescriptionCardSection *)self attributionURL];
  if (v21)
  {
    PBDataWriterWriteSubmessage();
  }

  v22 = [(_SFPBDescriptionCardSection *)self attributionGlyph];
  if (v22)
  {
    PBDataWriterWriteSubmessage();
  }

  v23 = [(_SFPBDescriptionCardSection *)self richDescriptions];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v24 = [v23 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v31;
    do
    {
      v27 = 0;
      do
      {
        if (*v31 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v30 + 1) + 8 * v27);
        PBDataWriterWriteSubmessage();
        ++v27;
      }

      while (v25 != v27);
      v25 = [v23 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v25);
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)addRichDescriptions:(id)a3
{
  v4 = a3;
  richDescriptions = self->_richDescriptions;
  v8 = v4;
  if (!richDescriptions)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_richDescriptions;
    self->_richDescriptions = v6;

    v4 = v8;
    richDescriptions = self->_richDescriptions;
  }

  [(NSArray *)richDescriptions addObject:v4];
}

- (void)setRichDescriptions:(id)a3
{
  v4 = [a3 copy];
  richDescriptions = self->_richDescriptions;
  self->_richDescriptions = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setAttributionText:(id)a3
{
  v4 = [a3 copy];
  attributionText = self->_attributionText;
  self->_attributionText = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setExpandText:(id)a3
{
  v4 = [a3 copy];
  expandText = self->_expandText;
  self->_expandText = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setSubtitle:(id)a3
{
  v4 = [a3 copy];
  subtitle = self->_subtitle;
  self->_subtitle = v4;

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