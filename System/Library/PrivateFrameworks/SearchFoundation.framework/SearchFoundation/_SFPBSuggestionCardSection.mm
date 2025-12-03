@interface _SFPBSuggestionCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBSuggestionCardSection)initWithDictionary:(id)dictionary;
- (_SFPBSuggestionCardSection)initWithFacade:(id)facade;
- (_SFPBSuggestionCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPunchoutOptions:(id)options;
- (void)setPunchoutOptions:(id)options;
- (void)setPunchoutPickerDismissText:(id)text;
- (void)setPunchoutPickerTitle:(id)title;
- (void)setScopedSearchSectionBundleIdentifier:(id)identifier;
- (void)setType:(id)type;
- (void)writeTo:(id)to;
@end

@implementation _SFPBSuggestionCardSection

- (_SFPBSuggestionCardSection)initWithFacade:(id)facade
{
  v54 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBSuggestionCardSection *)self init];
  if (v5)
  {
    punchoutOptions = [facadeCopy punchoutOptions];
    if (punchoutOptions)
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
    punchoutOptions2 = [facadeCopy punchoutOptions];
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v49 objects:v53 count:16];
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
            objc_enumerationMutation(punchoutOptions2);
          }

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v49 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v49 objects:v53 count:16];
      }

      while (v10);
    }

    [(_SFPBSuggestionCardSection *)v5 setPunchoutOptions:v7];
    punchoutPickerTitle = [facadeCopy punchoutPickerTitle];

    if (punchoutPickerTitle)
    {
      punchoutPickerTitle2 = [facadeCopy punchoutPickerTitle];
      [(_SFPBSuggestionCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle2];
    }

    punchoutPickerDismissText = [facadeCopy punchoutPickerDismissText];

    if (punchoutPickerDismissText)
    {
      punchoutPickerDismissText2 = [facadeCopy punchoutPickerDismissText];
      [(_SFPBSuggestionCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText2];
    }

    if ([facadeCopy hasCanBeHidden])
    {
      -[_SFPBSuggestionCardSection setCanBeHidden:](v5, "setCanBeHidden:", [facadeCopy canBeHidden]);
    }

    if ([facadeCopy hasHasTopPadding])
    {
      -[_SFPBSuggestionCardSection setHasTopPadding:](v5, "setHasTopPadding:", [facadeCopy hasTopPadding]);
    }

    if ([facadeCopy hasHasBottomPadding])
    {
      -[_SFPBSuggestionCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [facadeCopy hasBottomPadding]);
    }

    type = [facadeCopy type];

    if (type)
    {
      type2 = [facadeCopy type];
      [(_SFPBSuggestionCardSection *)v5 setType:type2];
    }

    if ([facadeCopy hasSeparatorStyle])
    {
      -[_SFPBSuggestionCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [facadeCopy separatorStyle]);
    }

    backgroundColor = [facadeCopy backgroundColor];

    if (backgroundColor)
    {
      v21 = [_SFPBColor alloc];
      backgroundColor2 = [facadeCopy backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:backgroundColor2];
      [(_SFPBSuggestionCardSection *)v5 setBackgroundColor:v23];
    }

    suggestionText = [facadeCopy suggestionText];

    if (suggestionText)
    {
      v25 = [_SFPBRichText alloc];
      suggestionText2 = [facadeCopy suggestionText];
      v27 = [(_SFPBRichText *)v25 initWithFacade:suggestionText2];
      [(_SFPBSuggestionCardSection *)v5 setSuggestionText:v27];
    }

    if ([facadeCopy hasIsContact])
    {
      -[_SFPBSuggestionCardSection setIsContact:](v5, "setIsContact:", [facadeCopy isContact]);
    }

    scopedSearchSectionBundleIdentifier = [facadeCopy scopedSearchSectionBundleIdentifier];

    if (scopedSearchSectionBundleIdentifier)
    {
      scopedSearchSectionBundleIdentifier2 = [facadeCopy scopedSearchSectionBundleIdentifier];
      [(_SFPBSuggestionCardSection *)v5 setScopedSearchSectionBundleIdentifier:scopedSearchSectionBundleIdentifier2];
    }

    if ([facadeCopy hasSuggestionType])
    {
      -[_SFPBSuggestionCardSection setSuggestionType:](v5, "setSuggestionType:", [facadeCopy suggestionType]);
    }

    detailText = [facadeCopy detailText];

    if (detailText)
    {
      v31 = [_SFPBRichText alloc];
      detailText2 = [facadeCopy detailText];
      v33 = [(_SFPBRichText *)v31 initWithFacade:detailText2];
      [(_SFPBSuggestionCardSection *)v5 setDetailText:v33];
    }

    thumbnail = [facadeCopy thumbnail];

    if (thumbnail)
    {
      v35 = [_SFPBImage alloc];
      thumbnail2 = [facadeCopy thumbnail];
      v37 = [(_SFPBImage *)v35 initWithFacade:thumbnail2];
      [(_SFPBSuggestionCardSection *)v5 setThumbnail:v37];
    }

    trailingMiddleText = [facadeCopy trailingMiddleText];

    if (trailingMiddleText)
    {
      v39 = [_SFPBFormattedText alloc];
      trailingMiddleText2 = [facadeCopy trailingMiddleText];
      v41 = [(_SFPBFormattedText *)v39 initWithFacade:trailingMiddleText2];
      [(_SFPBSuggestionCardSection *)v5 setTrailingMiddleText:v41];
    }

    trailingBottomText = [facadeCopy trailingBottomText];

    if (trailingBottomText)
    {
      v43 = [_SFPBFormattedText alloc];
      trailingBottomText2 = [facadeCopy trailingBottomText];
      v45 = [(_SFPBFormattedText *)v43 initWithFacade:trailingBottomText2];
      [(_SFPBSuggestionCardSection *)v5 setTrailingBottomText:v45];
    }

    v46 = v5;
  }

  v47 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBSuggestionCardSection)initWithDictionary:(id)dictionary
{
  v60 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v58.receiver = self;
  v58.super_class = _SFPBSuggestionCardSection;
  v5 = [(_SFPBSuggestionCardSection *)&v58 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"punchoutOptions"];
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

    v14 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBSuggestionCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBSuggestionCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSuggestionCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v18 BOOLValue]);
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    v53 = v19;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSuggestionCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v19 BOOLValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    v52 = v20;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSuggestionCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v20 BOOLValue]);
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    objc_opt_class();
    v51 = v21;
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBSuggestionCardSection *)v5 setType:v22];
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    v50 = v23;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSuggestionCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v23 intValue]);
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    v49 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBColor alloc] initWithDictionary:v24];
      [(_SFPBSuggestionCardSection *)v5 setBackgroundColor:v25];
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"suggestionText"];
    objc_opt_class();
    v48 = v26;
    if (objc_opt_isKindOfClass())
    {
      v27 = [[_SFPBRichText alloc] initWithDictionary:v26];
      [(_SFPBSuggestionCardSection *)v5 setSuggestionText:v27];
    }

    v46 = v14;
    v28 = [dictionaryCopy objectForKeyedSubscript:@"isContact"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSuggestionCardSection setIsContact:](v5, "setIsContact:", [v28 BOOLValue]);
    }

    v43 = v28;
    v45 = v16;
    v29 = [dictionaryCopy objectForKeyedSubscript:@"scopedSearchSectionBundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = [v29 copy];
      [(_SFPBSuggestionCardSection *)v5 setScopedSearchSectionBundleIdentifier:v30];
    }

    v31 = [dictionaryCopy objectForKeyedSubscript:@"suggestionType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSuggestionCardSection setSuggestionType:](v5, "setSuggestionType:", [v31 intValue]);
    }

    v44 = v18;
    v32 = [dictionaryCopy objectForKeyedSubscript:@"detailText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [[_SFPBRichText alloc] initWithDictionary:v32];
      [(_SFPBSuggestionCardSection *)v5 setDetailText:v33];
    }

    v47 = v6;
    v34 = [dictionaryCopy objectForKeyedSubscript:@"thumbnail"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [[_SFPBImage alloc] initWithDictionary:v34];
      [(_SFPBSuggestionCardSection *)v5 setThumbnail:v35];
    }

    v36 = [dictionaryCopy objectForKeyedSubscript:@"trailingMiddleText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = [[_SFPBFormattedText alloc] initWithDictionary:v36];
      [(_SFPBSuggestionCardSection *)v5 setTrailingMiddleText:v37];
    }

    v38 = [dictionaryCopy objectForKeyedSubscript:@"trailingBottomText"];
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

- (_SFPBSuggestionCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBSuggestionCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBSuggestionCardSection *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_backgroundColor)
  {
    backgroundColor = [(_SFPBSuggestionCardSection *)self backgroundColor];
    dictionaryRepresentation = [backgroundColor dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"backgroundColor"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"backgroundColor"];
    }
  }

  if (self->_canBeHidden)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBSuggestionCardSection canBeHidden](self, "canBeHidden")}];
    [dictionary setObject:v7 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_detailText)
  {
    detailText = [(_SFPBSuggestionCardSection *)self detailText];
    dictionaryRepresentation2 = [detailText dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"detailText"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"detailText"];
    }
  }

  if (self->_hasBottomPadding)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBSuggestionCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [dictionary setObject:v11 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBSuggestionCardSection hasTopPadding](self, "hasTopPadding")}];
    [dictionary setObject:v12 forKeyedSubscript:@"hasTopPadding"];
  }

  if (self->_isContact)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBSuggestionCardSection isContact](self, "isContact")}];
    [dictionary setObject:v13 forKeyedSubscript:@"isContact"];
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation3 = [*(*(&v48 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation3)
          {
            [array addObject:dictionaryRepresentation3];
          }

          else
          {
            null3 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null3];
          }
        }

        v17 = [(NSArray *)v15 countByEnumeratingWithState:&v48 objects:v52 count:16];
      }

      while (v17);
    }

    [dictionary setObject:array forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    punchoutPickerDismissText = [(_SFPBSuggestionCardSection *)self punchoutPickerDismissText];
    v23 = [punchoutPickerDismissText copy];
    [dictionary setObject:v23 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    punchoutPickerTitle = [(_SFPBSuggestionCardSection *)self punchoutPickerTitle];
    v25 = [punchoutPickerTitle copy];
    [dictionary setObject:v25 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_scopedSearchSectionBundleIdentifier)
  {
    scopedSearchSectionBundleIdentifier = [(_SFPBSuggestionCardSection *)self scopedSearchSectionBundleIdentifier];
    v27 = [scopedSearchSectionBundleIdentifier copy];
    [dictionary setObject:v27 forKeyedSubscript:@"scopedSearchSectionBundleIdentifier"];
  }

  if (self->_separatorStyle)
  {
    separatorStyle = [(_SFPBSuggestionCardSection *)self separatorStyle];
    if (separatorStyle >= 6)
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", separatorStyle];
    }

    else
    {
      v29 = off_1E7ACE580[separatorStyle];
    }

    [dictionary setObject:v29 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_suggestionText)
  {
    suggestionText = [(_SFPBSuggestionCardSection *)self suggestionText];
    dictionaryRepresentation4 = [suggestionText dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"suggestionText"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"suggestionText"];
    }
  }

  if (self->_suggestionType)
  {
    suggestionType = [(_SFPBSuggestionCardSection *)self suggestionType];
    if (suggestionType >= 5)
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", suggestionType];
    }

    else
    {
      v34 = off_1E7ACE448[suggestionType];
    }

    [dictionary setObject:v34 forKeyedSubscript:@"suggestionType"];
  }

  if (self->_thumbnail)
  {
    thumbnail = [(_SFPBSuggestionCardSection *)self thumbnail];
    dictionaryRepresentation5 = [thumbnail dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"thumbnail"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"thumbnail"];
    }
  }

  if (self->_trailingBottomText)
  {
    trailingBottomText = [(_SFPBSuggestionCardSection *)self trailingBottomText];
    dictionaryRepresentation6 = [trailingBottomText dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"trailingBottomText"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"trailingBottomText"];
    }
  }

  if (self->_trailingMiddleText)
  {
    trailingMiddleText = [(_SFPBSuggestionCardSection *)self trailingMiddleText];
    dictionaryRepresentation7 = [trailingMiddleText dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"trailingMiddleText"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"trailingMiddleText"];
    }
  }

  if (self->_type)
  {
    type = [(_SFPBSuggestionCardSection *)self type];
    v45 = [type copy];
    [dictionary setObject:v45 forKeyedSubscript:@"type"];
  }

  v46 = *MEMORY[0x1E69E9840];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_63;
  }

  punchoutOptions = [(_SFPBSuggestionCardSection *)self punchoutOptions];
  punchoutOptions2 = [equalCopy punchoutOptions];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_62;
  }

  punchoutOptions3 = [(_SFPBSuggestionCardSection *)self punchoutOptions];
  if (punchoutOptions3)
  {
    v8 = punchoutOptions3;
    punchoutOptions4 = [(_SFPBSuggestionCardSection *)self punchoutOptions];
    punchoutOptions5 = [equalCopy punchoutOptions];
    v11 = [punchoutOptions4 isEqual:punchoutOptions5];

    if (!v11)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBSuggestionCardSection *)self punchoutPickerTitle];
  punchoutOptions2 = [equalCopy punchoutPickerTitle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_62;
  }

  punchoutPickerTitle = [(_SFPBSuggestionCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    v13 = punchoutPickerTitle;
    punchoutPickerTitle2 = [(_SFPBSuggestionCardSection *)self punchoutPickerTitle];
    punchoutPickerTitle3 = [equalCopy punchoutPickerTitle];
    v16 = [punchoutPickerTitle2 isEqual:punchoutPickerTitle3];

    if (!v16)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBSuggestionCardSection *)self punchoutPickerDismissText];
  punchoutOptions2 = [equalCopy punchoutPickerDismissText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_62;
  }

  punchoutPickerDismissText = [(_SFPBSuggestionCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    v18 = punchoutPickerDismissText;
    punchoutPickerDismissText2 = [(_SFPBSuggestionCardSection *)self punchoutPickerDismissText];
    punchoutPickerDismissText3 = [equalCopy punchoutPickerDismissText];
    v21 = [punchoutPickerDismissText2 isEqual:punchoutPickerDismissText3];

    if (!v21)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [equalCopy canBeHidden])
  {
    goto LABEL_63;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [equalCopy hasTopPadding])
  {
    goto LABEL_63;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [equalCopy hasBottomPadding])
  {
    goto LABEL_63;
  }

  punchoutOptions = [(_SFPBSuggestionCardSection *)self type];
  punchoutOptions2 = [equalCopy type];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_62;
  }

  type = [(_SFPBSuggestionCardSection *)self type];
  if (type)
  {
    v26 = type;
    type2 = [(_SFPBSuggestionCardSection *)self type];
    type3 = [equalCopy type];
    v29 = [type2 isEqual:type3];

    if (!v29)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [equalCopy separatorStyle])
  {
    goto LABEL_63;
  }

  punchoutOptions = [(_SFPBSuggestionCardSection *)self backgroundColor];
  punchoutOptions2 = [equalCopy backgroundColor];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_62;
  }

  backgroundColor = [(_SFPBSuggestionCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    v32 = backgroundColor;
    backgroundColor2 = [(_SFPBSuggestionCardSection *)self backgroundColor];
    backgroundColor3 = [equalCopy backgroundColor];
    v35 = [backgroundColor2 isEqual:backgroundColor3];

    if (!v35)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBSuggestionCardSection *)self suggestionText];
  punchoutOptions2 = [equalCopy suggestionText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_62;
  }

  suggestionText = [(_SFPBSuggestionCardSection *)self suggestionText];
  if (suggestionText)
  {
    v37 = suggestionText;
    suggestionText2 = [(_SFPBSuggestionCardSection *)self suggestionText];
    suggestionText3 = [equalCopy suggestionText];
    v40 = [suggestionText2 isEqual:suggestionText3];

    if (!v40)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  isContact = self->_isContact;
  if (isContact != [equalCopy isContact])
  {
    goto LABEL_63;
  }

  punchoutOptions = [(_SFPBSuggestionCardSection *)self scopedSearchSectionBundleIdentifier];
  punchoutOptions2 = [equalCopy scopedSearchSectionBundleIdentifier];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_62;
  }

  scopedSearchSectionBundleIdentifier = [(_SFPBSuggestionCardSection *)self scopedSearchSectionBundleIdentifier];
  if (scopedSearchSectionBundleIdentifier)
  {
    v43 = scopedSearchSectionBundleIdentifier;
    scopedSearchSectionBundleIdentifier2 = [(_SFPBSuggestionCardSection *)self scopedSearchSectionBundleIdentifier];
    scopedSearchSectionBundleIdentifier3 = [equalCopy scopedSearchSectionBundleIdentifier];
    v46 = [scopedSearchSectionBundleIdentifier2 isEqual:scopedSearchSectionBundleIdentifier3];

    if (!v46)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  suggestionType = self->_suggestionType;
  if (suggestionType != [equalCopy suggestionType])
  {
    goto LABEL_63;
  }

  punchoutOptions = [(_SFPBSuggestionCardSection *)self detailText];
  punchoutOptions2 = [equalCopy detailText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_62;
  }

  detailText = [(_SFPBSuggestionCardSection *)self detailText];
  if (detailText)
  {
    v49 = detailText;
    detailText2 = [(_SFPBSuggestionCardSection *)self detailText];
    detailText3 = [equalCopy detailText];
    v52 = [detailText2 isEqual:detailText3];

    if (!v52)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBSuggestionCardSection *)self thumbnail];
  punchoutOptions2 = [equalCopy thumbnail];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_62;
  }

  thumbnail = [(_SFPBSuggestionCardSection *)self thumbnail];
  if (thumbnail)
  {
    v54 = thumbnail;
    thumbnail2 = [(_SFPBSuggestionCardSection *)self thumbnail];
    thumbnail3 = [equalCopy thumbnail];
    v57 = [thumbnail2 isEqual:thumbnail3];

    if (!v57)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBSuggestionCardSection *)self trailingMiddleText];
  punchoutOptions2 = [equalCopy trailingMiddleText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_62;
  }

  trailingMiddleText = [(_SFPBSuggestionCardSection *)self trailingMiddleText];
  if (trailingMiddleText)
  {
    v59 = trailingMiddleText;
    trailingMiddleText2 = [(_SFPBSuggestionCardSection *)self trailingMiddleText];
    trailingMiddleText3 = [equalCopy trailingMiddleText];
    v62 = [trailingMiddleText2 isEqual:trailingMiddleText3];

    if (!v62)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBSuggestionCardSection *)self trailingBottomText];
  punchoutOptions2 = [equalCopy trailingBottomText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
LABEL_62:

    goto LABEL_63;
  }

  trailingBottomText = [(_SFPBSuggestionCardSection *)self trailingBottomText];
  if (!trailingBottomText)
  {

LABEL_66:
    v68 = 1;
    goto LABEL_64;
  }

  v64 = trailingBottomText;
  trailingBottomText2 = [(_SFPBSuggestionCardSection *)self trailingBottomText];
  trailingBottomText3 = [equalCopy trailingBottomText];
  v67 = [trailingBottomText2 isEqual:trailingBottomText3];

  if (v67)
  {
    goto LABEL_66;
  }

LABEL_63:
  v68 = 0;
LABEL_64:

  return v68;
}

- (void)writeTo:(id)to
{
  v27 = *MEMORY[0x1E69E9840];
  toCopy = to;
  punchoutOptions = [(_SFPBSuggestionCardSection *)self punchoutOptions];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [punchoutOptions countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(punchoutOptions);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [punchoutOptions countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  punchoutPickerTitle = [(_SFPBSuggestionCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    PBDataWriterWriteStringField();
  }

  punchoutPickerDismissText = [(_SFPBSuggestionCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
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

  type = [(_SFPBSuggestionCardSection *)self type];
  if (type)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBSuggestionCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  backgroundColor = [(_SFPBSuggestionCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    PBDataWriterWriteSubmessage();
  }

  suggestionText = [(_SFPBSuggestionCardSection *)self suggestionText];
  if (suggestionText)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBSuggestionCardSection *)self isContact])
  {
    PBDataWriterWriteBOOLField();
  }

  scopedSearchSectionBundleIdentifier = [(_SFPBSuggestionCardSection *)self scopedSearchSectionBundleIdentifier];
  if (scopedSearchSectionBundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBSuggestionCardSection *)self suggestionType])
  {
    PBDataWriterWriteInt32Field();
  }

  detailText = [(_SFPBSuggestionCardSection *)self detailText];
  if (detailText)
  {
    PBDataWriterWriteSubmessage();
  }

  thumbnail = [(_SFPBSuggestionCardSection *)self thumbnail];
  if (thumbnail)
  {
    PBDataWriterWriteSubmessage();
  }

  trailingMiddleText = [(_SFPBSuggestionCardSection *)self trailingMiddleText];
  if (trailingMiddleText)
  {
    PBDataWriterWriteSubmessage();
  }

  trailingBottomText = [(_SFPBSuggestionCardSection *)self trailingBottomText];
  if (trailingBottomText)
  {
    PBDataWriterWriteSubmessage();
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)setScopedSearchSectionBundleIdentifier:(id)identifier
{
  v4 = [identifier copy];
  scopedSearchSectionBundleIdentifier = self->_scopedSearchSectionBundleIdentifier;
  self->_scopedSearchSectionBundleIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setType:(id)type
{
  v4 = [type copy];
  type = self->_type;
  self->_type = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPunchoutPickerDismissText:(id)text
{
  v4 = [text copy];
  punchoutPickerDismissText = self->_punchoutPickerDismissText;
  self->_punchoutPickerDismissText = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPunchoutPickerTitle:(id)title
{
  v4 = [title copy];
  punchoutPickerTitle = self->_punchoutPickerTitle;
  self->_punchoutPickerTitle = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addPunchoutOptions:(id)options
{
  optionsCopy = options;
  punchoutOptions = self->_punchoutOptions;
  v8 = optionsCopy;
  if (!punchoutOptions)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_punchoutOptions;
    self->_punchoutOptions = array;

    optionsCopy = v8;
    punchoutOptions = self->_punchoutOptions;
  }

  [(NSArray *)punchoutOptions addObject:optionsCopy];
}

- (void)setPunchoutOptions:(id)options
{
  v4 = [options copy];
  punchoutOptions = self->_punchoutOptions;
  self->_punchoutOptions = v4;

  MEMORY[0x1EEE66BB8]();
}

@end