@interface _SFPBSuggestionCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBSuggestionCardSection)initWithDictionary:(id)a3;
- (_SFPBSuggestionCardSection)initWithFacade:(id)a3;
- (_SFPBSuggestionCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPunchoutOptions:(id)a3;
- (void)setPunchoutOptions:(id)a3;
- (void)setPunchoutPickerDismissText:(id)a3;
- (void)setPunchoutPickerTitle:(id)a3;
- (void)setScopedSearchSectionBundleIdentifier:(id)a3;
- (void)setType:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBSuggestionCardSection

- (_SFPBSuggestionCardSection)initWithFacade:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBSuggestionCardSection *)self init];
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

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v8 = [v4 punchoutOptions];
    v9 = [v8 countByEnumeratingWithState:&v49 objects:v53 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v50;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v50 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v49 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v49 objects:v53 count:16];
      }

      while (v10);
    }

    [(_SFPBSuggestionCardSection *)v5 setPunchoutOptions:v7];
    v14 = [v4 punchoutPickerTitle];

    if (v14)
    {
      v15 = [v4 punchoutPickerTitle];
      [(_SFPBSuggestionCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [v4 punchoutPickerDismissText];

    if (v16)
    {
      v17 = [v4 punchoutPickerDismissText];
      [(_SFPBSuggestionCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    if ([v4 hasCanBeHidden])
    {
      -[_SFPBSuggestionCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v4 canBeHidden]);
    }

    if ([v4 hasHasTopPadding])
    {
      -[_SFPBSuggestionCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v4 hasTopPadding]);
    }

    if ([v4 hasHasBottomPadding])
    {
      -[_SFPBSuggestionCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v4 hasBottomPadding]);
    }

    v18 = [v4 type];

    if (v18)
    {
      v19 = [v4 type];
      [(_SFPBSuggestionCardSection *)v5 setType:v19];
    }

    if ([v4 hasSeparatorStyle])
    {
      -[_SFPBSuggestionCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v4 separatorStyle]);
    }

    v20 = [v4 backgroundColor];

    if (v20)
    {
      v21 = [_SFPBColor alloc];
      v22 = [v4 backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:v22];
      [(_SFPBSuggestionCardSection *)v5 setBackgroundColor:v23];
    }

    v24 = [v4 suggestionText];

    if (v24)
    {
      v25 = [_SFPBRichText alloc];
      v26 = [v4 suggestionText];
      v27 = [(_SFPBRichText *)v25 initWithFacade:v26];
      [(_SFPBSuggestionCardSection *)v5 setSuggestionText:v27];
    }

    if ([v4 hasIsContact])
    {
      -[_SFPBSuggestionCardSection setIsContact:](v5, "setIsContact:", [v4 isContact]);
    }

    v28 = [v4 scopedSearchSectionBundleIdentifier];

    if (v28)
    {
      v29 = [v4 scopedSearchSectionBundleIdentifier];
      [(_SFPBSuggestionCardSection *)v5 setScopedSearchSectionBundleIdentifier:v29];
    }

    if ([v4 hasSuggestionType])
    {
      -[_SFPBSuggestionCardSection setSuggestionType:](v5, "setSuggestionType:", [v4 suggestionType]);
    }

    v30 = [v4 detailText];

    if (v30)
    {
      v31 = [_SFPBRichText alloc];
      v32 = [v4 detailText];
      v33 = [(_SFPBRichText *)v31 initWithFacade:v32];
      [(_SFPBSuggestionCardSection *)v5 setDetailText:v33];
    }

    v34 = [v4 thumbnail];

    if (v34)
    {
      v35 = [_SFPBImage alloc];
      v36 = [v4 thumbnail];
      v37 = [(_SFPBImage *)v35 initWithFacade:v36];
      [(_SFPBSuggestionCardSection *)v5 setThumbnail:v37];
    }

    v38 = [v4 trailingMiddleText];

    if (v38)
    {
      v39 = [_SFPBFormattedText alloc];
      v40 = [v4 trailingMiddleText];
      v41 = [(_SFPBFormattedText *)v39 initWithFacade:v40];
      [(_SFPBSuggestionCardSection *)v5 setTrailingMiddleText:v41];
    }

    v42 = [v4 trailingBottomText];

    if (v42)
    {
      v43 = [_SFPBFormattedText alloc];
      v44 = [v4 trailingBottomText];
      v45 = [(_SFPBFormattedText *)v43 initWithFacade:v44];
      [(_SFPBSuggestionCardSection *)v5 setTrailingBottomText:v45];
    }

    v46 = v5;
  }

  v47 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBSuggestionCardSection)initWithDictionary:(id)a3
{
  v60 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v58.receiver = self;
  v58.super_class = _SFPBSuggestionCardSection;
  v5 = [(_SFPBSuggestionCardSection *)&v58 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"punchoutOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v54 objects:v59 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v55;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v55 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v54 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [[_SFPBPunchout alloc] initWithDictionary:v12];
              [(_SFPBSuggestionCardSection *)v5 addPunchoutOptions:v13];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v54 objects:v59 count:16];
        }

        while (v9);
      }
    }

    v14 = [v4 objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBSuggestionCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBSuggestionCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSuggestionCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v18 BOOLValue]);
    }

    v19 = [v4 objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    v53 = v19;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSuggestionCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v19 BOOLValue]);
    }

    v20 = [v4 objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    v52 = v20;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSuggestionCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v20 BOOLValue]);
    }

    v21 = [v4 objectForKeyedSubscript:@"type"];
    objc_opt_class();
    v51 = v21;
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBSuggestionCardSection *)v5 setType:v22];
    }

    v23 = [v4 objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    v50 = v23;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSuggestionCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v23 intValue]);
    }

    v24 = [v4 objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    v49 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBColor alloc] initWithDictionary:v24];
      [(_SFPBSuggestionCardSection *)v5 setBackgroundColor:v25];
    }

    v26 = [v4 objectForKeyedSubscript:@"suggestionText"];
    objc_opt_class();
    v48 = v26;
    if (objc_opt_isKindOfClass())
    {
      v27 = [[_SFPBRichText alloc] initWithDictionary:v26];
      [(_SFPBSuggestionCardSection *)v5 setSuggestionText:v27];
    }

    v46 = v14;
    v28 = [v4 objectForKeyedSubscript:@"isContact"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSuggestionCardSection setIsContact:](v5, "setIsContact:", [v28 BOOLValue]);
    }

    v43 = v28;
    v45 = v16;
    v29 = [v4 objectForKeyedSubscript:@"scopedSearchSectionBundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = [v29 copy];
      [(_SFPBSuggestionCardSection *)v5 setScopedSearchSectionBundleIdentifier:v30];
    }

    v31 = [v4 objectForKeyedSubscript:@"suggestionType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSuggestionCardSection setSuggestionType:](v5, "setSuggestionType:", [v31 intValue]);
    }

    v44 = v18;
    v32 = [v4 objectForKeyedSubscript:@"detailText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [[_SFPBRichText alloc] initWithDictionary:v32];
      [(_SFPBSuggestionCardSection *)v5 setDetailText:v33];
    }

    v47 = v6;
    v34 = [v4 objectForKeyedSubscript:@"thumbnail"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [[_SFPBImage alloc] initWithDictionary:v34];
      [(_SFPBSuggestionCardSection *)v5 setThumbnail:v35];
    }

    v36 = [v4 objectForKeyedSubscript:@"trailingMiddleText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = [[_SFPBFormattedText alloc] initWithDictionary:v36];
      [(_SFPBSuggestionCardSection *)v5 setTrailingMiddleText:v37];
    }

    v38 = [v4 objectForKeyedSubscript:@"trailingBottomText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = [[_SFPBFormattedText alloc] initWithDictionary:v38];
      [(_SFPBSuggestionCardSection *)v5 setTrailingBottomText:v39];
    }

    v40 = v5;
  }

  v41 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBSuggestionCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBSuggestionCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBSuggestionCardSection *)self dictionaryRepresentation];
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
  v53 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_backgroundColor)
  {
    v4 = [(_SFPBSuggestionCardSection *)self backgroundColor];
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
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBSuggestionCardSection canBeHidden](self, "canBeHidden")}];
    [v3 setObject:v7 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_detailText)
  {
    v8 = [(_SFPBSuggestionCardSection *)self detailText];
    v9 = [v8 dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"detailText"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"detailText"];
    }
  }

  if (self->_hasBottomPadding)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBSuggestionCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [v3 setObject:v11 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBSuggestionCardSection hasTopPadding](self, "hasTopPadding")}];
    [v3 setObject:v12 forKeyedSubscript:@"hasTopPadding"];
  }

  if (self->_isContact)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBSuggestionCardSection isContact](self, "isContact")}];
    [v3 setObject:v13 forKeyedSubscript:@"isContact"];
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    v14 = [MEMORY[0x1E695DF70] array];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v15 = self->_punchoutOptions;
    v16 = [(NSArray *)v15 countByEnumeratingWithState:&v48 objects:v52 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v49;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v49 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v48 + 1) + 8 * i) dictionaryRepresentation];
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

        v17 = [(NSArray *)v15 countByEnumeratingWithState:&v48 objects:v52 count:16];
      }

      while (v17);
    }

    [v3 setObject:v14 forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    v22 = [(_SFPBSuggestionCardSection *)self punchoutPickerDismissText];
    v23 = [v22 copy];
    [v3 setObject:v23 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    v24 = [(_SFPBSuggestionCardSection *)self punchoutPickerTitle];
    v25 = [v24 copy];
    [v3 setObject:v25 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_scopedSearchSectionBundleIdentifier)
  {
    v26 = [(_SFPBSuggestionCardSection *)self scopedSearchSectionBundleIdentifier];
    v27 = [v26 copy];
    [v3 setObject:v27 forKeyedSubscript:@"scopedSearchSectionBundleIdentifier"];
  }

  if (self->_separatorStyle)
  {
    v28 = [(_SFPBSuggestionCardSection *)self separatorStyle];
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

  if (self->_suggestionText)
  {
    v30 = [(_SFPBSuggestionCardSection *)self suggestionText];
    v31 = [v30 dictionaryRepresentation];
    if (v31)
    {
      [v3 setObject:v31 forKeyedSubscript:@"suggestionText"];
    }

    else
    {
      v32 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v32 forKeyedSubscript:@"suggestionText"];
    }
  }

  if (self->_suggestionType)
  {
    v33 = [(_SFPBSuggestionCardSection *)self suggestionType];
    if (v33 >= 5)
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v33];
    }

    else
    {
      v34 = off_1E7ACE448[v33];
    }

    [v3 setObject:v34 forKeyedSubscript:@"suggestionType"];
  }

  if (self->_thumbnail)
  {
    v35 = [(_SFPBSuggestionCardSection *)self thumbnail];
    v36 = [v35 dictionaryRepresentation];
    if (v36)
    {
      [v3 setObject:v36 forKeyedSubscript:@"thumbnail"];
    }

    else
    {
      v37 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v37 forKeyedSubscript:@"thumbnail"];
    }
  }

  if (self->_trailingBottomText)
  {
    v38 = [(_SFPBSuggestionCardSection *)self trailingBottomText];
    v39 = [v38 dictionaryRepresentation];
    if (v39)
    {
      [v3 setObject:v39 forKeyedSubscript:@"trailingBottomText"];
    }

    else
    {
      v40 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v40 forKeyedSubscript:@"trailingBottomText"];
    }
  }

  if (self->_trailingMiddleText)
  {
    v41 = [(_SFPBSuggestionCardSection *)self trailingMiddleText];
    v42 = [v41 dictionaryRepresentation];
    if (v42)
    {
      [v3 setObject:v42 forKeyedSubscript:@"trailingMiddleText"];
    }

    else
    {
      v43 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v43 forKeyedSubscript:@"trailingMiddleText"];
    }
  }

  if (self->_type)
  {
    v44 = [(_SFPBSuggestionCardSection *)self type];
    v45 = [v44 copy];
    [v3 setObject:v45 forKeyedSubscript:@"type"];
  }

  v46 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v18 = [(NSArray *)self->_punchoutOptions hash];
  v17 = [(NSString *)self->_punchoutPickerTitle hash];
  v16 = [(NSString *)self->_punchoutPickerDismissText hash];
  if (self->_canBeHidden)
  {
    v3 = 2654435761;
  }

  else
  {
    v3 = 0;
  }

  if (self->_hasTopPadding)
  {
    v4 = 2654435761;
  }

  else
  {
    v4 = 0;
  }

  if (self->_hasBottomPadding)
  {
    v5 = 2654435761;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NSString *)self->_type hash];
  v7 = 2654435761 * self->_separatorStyle;
  v8 = [(_SFPBColor *)self->_backgroundColor hash];
  v9 = [(_SFPBRichText *)self->_suggestionText hash];
  if (self->_isContact)
  {
    v10 = 2654435761;
  }

  else
  {
    v10 = 0;
  }

  v11 = v17 ^ v18 ^ v16 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ [(NSString *)self->_scopedSearchSectionBundleIdentifier hash]^ (2654435761 * self->_suggestionType);
  v12 = [(_SFPBRichText *)self->_detailText hash];
  v13 = v12 ^ [(_SFPBImage *)self->_thumbnail hash];
  v14 = v13 ^ [(_SFPBFormattedText *)self->_trailingMiddleText hash];
  return v11 ^ v14 ^ [(_SFPBFormattedText *)self->_trailingBottomText hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_63;
  }

  v5 = [(_SFPBSuggestionCardSection *)self punchoutOptions];
  v6 = [v4 punchoutOptions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_62;
  }

  v7 = [(_SFPBSuggestionCardSection *)self punchoutOptions];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBSuggestionCardSection *)self punchoutOptions];
    v10 = [v4 punchoutOptions];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  v5 = [(_SFPBSuggestionCardSection *)self punchoutPickerTitle];
  v6 = [v4 punchoutPickerTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_62;
  }

  v12 = [(_SFPBSuggestionCardSection *)self punchoutPickerTitle];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBSuggestionCardSection *)self punchoutPickerTitle];
    v15 = [v4 punchoutPickerTitle];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  v5 = [(_SFPBSuggestionCardSection *)self punchoutPickerDismissText];
  v6 = [v4 punchoutPickerDismissText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_62;
  }

  v17 = [(_SFPBSuggestionCardSection *)self punchoutPickerDismissText];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBSuggestionCardSection *)self punchoutPickerDismissText];
    v20 = [v4 punchoutPickerDismissText];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [v4 canBeHidden])
  {
    goto LABEL_63;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [v4 hasTopPadding])
  {
    goto LABEL_63;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [v4 hasBottomPadding])
  {
    goto LABEL_63;
  }

  v5 = [(_SFPBSuggestionCardSection *)self type];
  v6 = [v4 type];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_62;
  }

  v25 = [(_SFPBSuggestionCardSection *)self type];
  if (v25)
  {
    v26 = v25;
    v27 = [(_SFPBSuggestionCardSection *)self type];
    v28 = [v4 type];
    v29 = [v27 isEqual:v28];

    if (!v29)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [v4 separatorStyle])
  {
    goto LABEL_63;
  }

  v5 = [(_SFPBSuggestionCardSection *)self backgroundColor];
  v6 = [v4 backgroundColor];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_62;
  }

  v31 = [(_SFPBSuggestionCardSection *)self backgroundColor];
  if (v31)
  {
    v32 = v31;
    v33 = [(_SFPBSuggestionCardSection *)self backgroundColor];
    v34 = [v4 backgroundColor];
    v35 = [v33 isEqual:v34];

    if (!v35)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  v5 = [(_SFPBSuggestionCardSection *)self suggestionText];
  v6 = [v4 suggestionText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_62;
  }

  v36 = [(_SFPBSuggestionCardSection *)self suggestionText];
  if (v36)
  {
    v37 = v36;
    v38 = [(_SFPBSuggestionCardSection *)self suggestionText];
    v39 = [v4 suggestionText];
    v40 = [v38 isEqual:v39];

    if (!v40)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  isContact = self->_isContact;
  if (isContact != [v4 isContact])
  {
    goto LABEL_63;
  }

  v5 = [(_SFPBSuggestionCardSection *)self scopedSearchSectionBundleIdentifier];
  v6 = [v4 scopedSearchSectionBundleIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_62;
  }

  v42 = [(_SFPBSuggestionCardSection *)self scopedSearchSectionBundleIdentifier];
  if (v42)
  {
    v43 = v42;
    v44 = [(_SFPBSuggestionCardSection *)self scopedSearchSectionBundleIdentifier];
    v45 = [v4 scopedSearchSectionBundleIdentifier];
    v46 = [v44 isEqual:v45];

    if (!v46)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  suggestionType = self->_suggestionType;
  if (suggestionType != [v4 suggestionType])
  {
    goto LABEL_63;
  }

  v5 = [(_SFPBSuggestionCardSection *)self detailText];
  v6 = [v4 detailText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_62;
  }

  v48 = [(_SFPBSuggestionCardSection *)self detailText];
  if (v48)
  {
    v49 = v48;
    v50 = [(_SFPBSuggestionCardSection *)self detailText];
    v51 = [v4 detailText];
    v52 = [v50 isEqual:v51];

    if (!v52)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  v5 = [(_SFPBSuggestionCardSection *)self thumbnail];
  v6 = [v4 thumbnail];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_62;
  }

  v53 = [(_SFPBSuggestionCardSection *)self thumbnail];
  if (v53)
  {
    v54 = v53;
    v55 = [(_SFPBSuggestionCardSection *)self thumbnail];
    v56 = [v4 thumbnail];
    v57 = [v55 isEqual:v56];

    if (!v57)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  v5 = [(_SFPBSuggestionCardSection *)self trailingMiddleText];
  v6 = [v4 trailingMiddleText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_62;
  }

  v58 = [(_SFPBSuggestionCardSection *)self trailingMiddleText];
  if (v58)
  {
    v59 = v58;
    v60 = [(_SFPBSuggestionCardSection *)self trailingMiddleText];
    v61 = [v4 trailingMiddleText];
    v62 = [v60 isEqual:v61];

    if (!v62)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  v5 = [(_SFPBSuggestionCardSection *)self trailingBottomText];
  v6 = [v4 trailingBottomText];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_62:

    goto LABEL_63;
  }

  v63 = [(_SFPBSuggestionCardSection *)self trailingBottomText];
  if (!v63)
  {

LABEL_66:
    v68 = 1;
    goto LABEL_64;
  }

  v64 = v63;
  v65 = [(_SFPBSuggestionCardSection *)self trailingBottomText];
  v66 = [v4 trailingBottomText];
  v67 = [v65 isEqual:v66];

  if (v67)
  {
    goto LABEL_66;
  }

LABEL_63:
  v68 = 0;
LABEL_64:

  return v68;
}

- (void)writeTo:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBSuggestionCardSection *)self punchoutOptions];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  v11 = [(_SFPBSuggestionCardSection *)self punchoutPickerTitle];
  if (v11)
  {
    PBDataWriterWriteStringField();
  }

  v12 = [(_SFPBSuggestionCardSection *)self punchoutPickerDismissText];
  if (v12)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBSuggestionCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBSuggestionCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBSuggestionCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  v13 = [(_SFPBSuggestionCardSection *)self type];
  if (v13)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBSuggestionCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  v14 = [(_SFPBSuggestionCardSection *)self backgroundColor];
  if (v14)
  {
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_SFPBSuggestionCardSection *)self suggestionText];
  if (v15)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBSuggestionCardSection *)self isContact])
  {
    PBDataWriterWriteBOOLField();
  }

  v16 = [(_SFPBSuggestionCardSection *)self scopedSearchSectionBundleIdentifier];
  if (v16)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBSuggestionCardSection *)self suggestionType])
  {
    PBDataWriterWriteInt32Field();
  }

  v17 = [(_SFPBSuggestionCardSection *)self detailText];
  if (v17)
  {
    PBDataWriterWriteSubmessage();
  }

  v18 = [(_SFPBSuggestionCardSection *)self thumbnail];
  if (v18)
  {
    PBDataWriterWriteSubmessage();
  }

  v19 = [(_SFPBSuggestionCardSection *)self trailingMiddleText];
  if (v19)
  {
    PBDataWriterWriteSubmessage();
  }

  v20 = [(_SFPBSuggestionCardSection *)self trailingBottomText];
  if (v20)
  {
    PBDataWriterWriteSubmessage();
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)setScopedSearchSectionBundleIdentifier:(id)a3
{
  v4 = [a3 copy];
  scopedSearchSectionBundleIdentifier = self->_scopedSearchSectionBundleIdentifier;
  self->_scopedSearchSectionBundleIdentifier = v4;

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