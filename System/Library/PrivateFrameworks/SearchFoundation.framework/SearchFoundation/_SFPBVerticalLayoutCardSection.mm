@interface _SFPBVerticalLayoutCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBVerticalLayoutCardSection)initWithDictionary:(id)a3;
- (_SFPBVerticalLayoutCardSection)initWithFacade:(id)a3;
- (_SFPBVerticalLayoutCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPunchoutOptions:(id)a3;
- (void)setPunchoutOptions:(id)a3;
- (void)setPunchoutPickerDismissText:(id)a3;
- (void)setPunchoutPickerTitle:(id)a3;
- (void)setType:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBVerticalLayoutCardSection

- (_SFPBVerticalLayoutCardSection)initWithFacade:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBVerticalLayoutCardSection *)self init];
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

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v8 = [v4 punchoutOptions];
    v9 = [v8 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v44;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v44 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v43 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v43 objects:v47 count:16];
      }

      while (v10);
    }

    [(_SFPBVerticalLayoutCardSection *)v5 setPunchoutOptions:v7];
    v14 = [v4 punchoutPickerTitle];

    if (v14)
    {
      v15 = [v4 punchoutPickerTitle];
      [(_SFPBVerticalLayoutCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [v4 punchoutPickerDismissText];

    if (v16)
    {
      v17 = [v4 punchoutPickerDismissText];
      [(_SFPBVerticalLayoutCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    if ([v4 hasCanBeHidden])
    {
      -[_SFPBVerticalLayoutCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v4 canBeHidden]);
    }

    if ([v4 hasHasTopPadding])
    {
      -[_SFPBVerticalLayoutCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v4 hasTopPadding]);
    }

    if ([v4 hasHasBottomPadding])
    {
      -[_SFPBVerticalLayoutCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v4 hasBottomPadding]);
    }

    v18 = [v4 type];

    if (v18)
    {
      v19 = [v4 type];
      [(_SFPBVerticalLayoutCardSection *)v5 setType:v19];
    }

    if ([v4 hasSeparatorStyle])
    {
      -[_SFPBVerticalLayoutCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v4 separatorStyle]);
    }

    v20 = [v4 backgroundColor];

    if (v20)
    {
      v21 = [_SFPBColor alloc];
      v22 = [v4 backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:v22];
      [(_SFPBVerticalLayoutCardSection *)v5 setBackgroundColor:v23];
    }

    v24 = [v4 thumbnail];

    if (v24)
    {
      v25 = [_SFPBImage alloc];
      v26 = [v4 thumbnail];
      v27 = [(_SFPBImage *)v25 initWithFacade:v26];
      [(_SFPBVerticalLayoutCardSection *)v5 setThumbnail:v27];
    }

    v28 = [v4 title];

    if (v28)
    {
      v29 = [_SFPBRichText alloc];
      v30 = [v4 title];
      v31 = [(_SFPBRichText *)v29 initWithFacade:v30];
      [(_SFPBVerticalLayoutCardSection *)v5 setTitle:v31];
    }

    v32 = [v4 footnote];

    if (v32)
    {
      v33 = [_SFPBRichText alloc];
      v34 = [v4 footnote];
      v35 = [(_SFPBRichText *)v33 initWithFacade:v34];
      [(_SFPBVerticalLayoutCardSection *)v5 setFootnote:v35];
    }

    if ([v4 hasContentsLeading])
    {
      -[_SFPBVerticalLayoutCardSection setContentsLeading:](v5, "setContentsLeading:", [v4 contentsLeading]);
    }

    v36 = [v4 thumbnailOverlayText];

    if (v36)
    {
      v37 = [_SFPBRichText alloc];
      v38 = [v4 thumbnailOverlayText];
      v39 = [(_SFPBRichText *)v37 initWithFacade:v38];
      [(_SFPBVerticalLayoutCardSection *)v5 setThumbnailOverlayText:v39];
    }

    if ([v4 hasUseAppIconMetrics])
    {
      -[_SFPBVerticalLayoutCardSection setUseAppIconMetrics:](v5, "setUseAppIconMetrics:", [v4 useAppIconMetrics]);
    }

    v40 = v5;
  }

  v41 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBVerticalLayoutCardSection)initWithDictionary:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v51.receiver = self;
  v51.super_class = _SFPBVerticalLayoutCardSection;
  v5 = [(_SFPBVerticalLayoutCardSection *)&v51 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"punchoutOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v47 objects:v52 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v48;
        do
        {
          v11 = 0;
          do
          {
            if (*v48 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v47 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [[_SFPBPunchout alloc] initWithDictionary:v12];
              [(_SFPBVerticalLayoutCardSection *)v5 addPunchoutOptions:v13];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v47 objects:v52 count:16];
        }

        while (v9);
      }
    }

    v14 = [v4 objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBVerticalLayoutCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBVerticalLayoutCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBVerticalLayoutCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v18 BOOLValue]);
    }

    v19 = [v4 objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBVerticalLayoutCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v19 BOOLValue]);
    }

    v20 = [v4 objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBVerticalLayoutCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v20 BOOLValue]);
    }

    v43 = v18;
    v46 = v6;
    v21 = [v4 objectForKeyedSubscript:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBVerticalLayoutCardSection *)v5 setType:v22];
    }

    v23 = [v4 objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBVerticalLayoutCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v23 intValue]);
    }

    v40 = v23;
    v45 = v14;
    v24 = [v4 objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBColor alloc] initWithDictionary:v24];
      [(_SFPBVerticalLayoutCardSection *)v5 setBackgroundColor:v25];
    }

    v44 = v16;
    v26 = [v4 objectForKeyedSubscript:@"thumbnail"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [[_SFPBImage alloc] initWithDictionary:v26];
      [(_SFPBVerticalLayoutCardSection *)v5 setThumbnail:v27];
    }

    v42 = v19;
    v28 = [v4 objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [[_SFPBRichText alloc] initWithDictionary:v28];
      [(_SFPBVerticalLayoutCardSection *)v5 setTitle:v29];
    }

    v41 = v21;
    v30 = [v4 objectForKeyedSubscript:@"footnote"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [[_SFPBRichText alloc] initWithDictionary:v30];
      [(_SFPBVerticalLayoutCardSection *)v5 setFootnote:v31];
    }

    v32 = v20;
    v33 = [v4 objectForKeyedSubscript:@"contentsLeading"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBVerticalLayoutCardSection setContentsLeading:](v5, "setContentsLeading:", [v33 BOOLValue]);
    }

    v34 = [v4 objectForKeyedSubscript:@"thumbnailOverlayText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [[_SFPBRichText alloc] initWithDictionary:v34];
      [(_SFPBVerticalLayoutCardSection *)v5 setThumbnailOverlayText:v35];
    }

    v36 = [v4 objectForKeyedSubscript:@"useAppIconMetrics"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBVerticalLayoutCardSection setUseAppIconMetrics:](v5, "setUseAppIconMetrics:", [v36 BOOLValue]);
    }

    v37 = v5;
  }

  v38 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBVerticalLayoutCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBVerticalLayoutCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBVerticalLayoutCardSection *)self dictionaryRepresentation];
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
  v47 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_backgroundColor)
  {
    v4 = [(_SFPBVerticalLayoutCardSection *)self backgroundColor];
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
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBVerticalLayoutCardSection canBeHidden](self, "canBeHidden")}];
    [v3 setObject:v7 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_contentsLeading)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBVerticalLayoutCardSection contentsLeading](self, "contentsLeading")}];
    [v3 setObject:v8 forKeyedSubscript:@"contentsLeading"];
  }

  if (self->_footnote)
  {
    v9 = [(_SFPBVerticalLayoutCardSection *)self footnote];
    v10 = [v9 dictionaryRepresentation];
    if (v10)
    {
      [v3 setObject:v10 forKeyedSubscript:@"footnote"];
    }

    else
    {
      v11 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v11 forKeyedSubscript:@"footnote"];
    }
  }

  if (self->_hasBottomPadding)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBVerticalLayoutCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [v3 setObject:v12 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBVerticalLayoutCardSection hasTopPadding](self, "hasTopPadding")}];
    [v3 setObject:v13 forKeyedSubscript:@"hasTopPadding"];
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    v14 = [MEMORY[0x1E695DF70] array];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v15 = self->_punchoutOptions;
    v16 = [(NSArray *)v15 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v43;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v43 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v42 + 1) + 8 * i) dictionaryRepresentation];
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

        v17 = [(NSArray *)v15 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v17);
    }

    [v3 setObject:v14 forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    v22 = [(_SFPBVerticalLayoutCardSection *)self punchoutPickerDismissText];
    v23 = [v22 copy];
    [v3 setObject:v23 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    v24 = [(_SFPBVerticalLayoutCardSection *)self punchoutPickerTitle];
    v25 = [v24 copy];
    [v3 setObject:v25 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    v26 = [(_SFPBVerticalLayoutCardSection *)self separatorStyle];
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

  if (self->_thumbnail)
  {
    v28 = [(_SFPBVerticalLayoutCardSection *)self thumbnail];
    v29 = [v28 dictionaryRepresentation];
    if (v29)
    {
      [v3 setObject:v29 forKeyedSubscript:@"thumbnail"];
    }

    else
    {
      v30 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v30 forKeyedSubscript:@"thumbnail"];
    }
  }

  if (self->_thumbnailOverlayText)
  {
    v31 = [(_SFPBVerticalLayoutCardSection *)self thumbnailOverlayText];
    v32 = [v31 dictionaryRepresentation];
    if (v32)
    {
      [v3 setObject:v32 forKeyedSubscript:@"thumbnailOverlayText"];
    }

    else
    {
      v33 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v33 forKeyedSubscript:@"thumbnailOverlayText"];
    }
  }

  if (self->_title)
  {
    v34 = [(_SFPBVerticalLayoutCardSection *)self title];
    v35 = [v34 dictionaryRepresentation];
    if (v35)
    {
      [v3 setObject:v35 forKeyedSubscript:@"title"];
    }

    else
    {
      v36 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v36 forKeyedSubscript:@"title"];
    }
  }

  if (self->_type)
  {
    v37 = [(_SFPBVerticalLayoutCardSection *)self type];
    v38 = [v37 copy];
    [v3 setObject:v38 forKeyedSubscript:@"type"];
  }

  if (self->_useAppIconMetrics)
  {
    v39 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBVerticalLayoutCardSection useAppIconMetrics](self, "useAppIconMetrics")}];
    [v3 setObject:v39 forKeyedSubscript:@"useAppIconMetrics"];
  }

  v40 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v21 = [(NSArray *)self->_punchoutOptions hash];
  v20 = [(NSString *)self->_punchoutPickerTitle hash];
  v3 = [(NSString *)self->_punchoutPickerDismissText hash];
  if (self->_canBeHidden)
  {
    v4 = 2654435761;
  }

  else
  {
    v4 = 0;
  }

  v18 = v4;
  v19 = v3;
  if (self->_hasTopPadding)
  {
    v5 = 2654435761;
  }

  else
  {
    v5 = 0;
  }

  v17 = v5;
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
  v10 = [(_SFPBImage *)self->_thumbnail hash];
  v11 = [(_SFPBRichText *)self->_title hash];
  v12 = [(_SFPBRichText *)self->_footnote hash];
  if (self->_contentsLeading)
  {
    v13 = 2654435761;
  }

  else
  {
    v13 = 0;
  }

  v14 = [(_SFPBRichText *)self->_thumbnailOverlayText hash];
  if (self->_useAppIconMetrics)
  {
    v15 = 2654435761;
  }

  else
  {
    v15 = 0;
  }

  return v20 ^ v21 ^ v19 ^ v18 ^ v17 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_52;
  }

  v5 = [(_SFPBVerticalLayoutCardSection *)self punchoutOptions];
  v6 = [v4 punchoutOptions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v7 = [(_SFPBVerticalLayoutCardSection *)self punchoutOptions];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBVerticalLayoutCardSection *)self punchoutOptions];
    v10 = [v4 punchoutOptions];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(_SFPBVerticalLayoutCardSection *)self punchoutPickerTitle];
  v6 = [v4 punchoutPickerTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v12 = [(_SFPBVerticalLayoutCardSection *)self punchoutPickerTitle];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBVerticalLayoutCardSection *)self punchoutPickerTitle];
    v15 = [v4 punchoutPickerTitle];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(_SFPBVerticalLayoutCardSection *)self punchoutPickerDismissText];
  v6 = [v4 punchoutPickerDismissText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v17 = [(_SFPBVerticalLayoutCardSection *)self punchoutPickerDismissText];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBVerticalLayoutCardSection *)self punchoutPickerDismissText];
    v20 = [v4 punchoutPickerDismissText];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [v4 canBeHidden])
  {
    goto LABEL_52;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [v4 hasTopPadding])
  {
    goto LABEL_52;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [v4 hasBottomPadding])
  {
    goto LABEL_52;
  }

  v5 = [(_SFPBVerticalLayoutCardSection *)self type];
  v6 = [v4 type];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v25 = [(_SFPBVerticalLayoutCardSection *)self type];
  if (v25)
  {
    v26 = v25;
    v27 = [(_SFPBVerticalLayoutCardSection *)self type];
    v28 = [v4 type];
    v29 = [v27 isEqual:v28];

    if (!v29)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [v4 separatorStyle])
  {
    goto LABEL_52;
  }

  v5 = [(_SFPBVerticalLayoutCardSection *)self backgroundColor];
  v6 = [v4 backgroundColor];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v31 = [(_SFPBVerticalLayoutCardSection *)self backgroundColor];
  if (v31)
  {
    v32 = v31;
    v33 = [(_SFPBVerticalLayoutCardSection *)self backgroundColor];
    v34 = [v4 backgroundColor];
    v35 = [v33 isEqual:v34];

    if (!v35)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(_SFPBVerticalLayoutCardSection *)self thumbnail];
  v6 = [v4 thumbnail];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v36 = [(_SFPBVerticalLayoutCardSection *)self thumbnail];
  if (v36)
  {
    v37 = v36;
    v38 = [(_SFPBVerticalLayoutCardSection *)self thumbnail];
    v39 = [v4 thumbnail];
    v40 = [v38 isEqual:v39];

    if (!v40)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(_SFPBVerticalLayoutCardSection *)self title];
  v6 = [v4 title];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v41 = [(_SFPBVerticalLayoutCardSection *)self title];
  if (v41)
  {
    v42 = v41;
    v43 = [(_SFPBVerticalLayoutCardSection *)self title];
    v44 = [v4 title];
    v45 = [v43 isEqual:v44];

    if (!v45)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(_SFPBVerticalLayoutCardSection *)self footnote];
  v6 = [v4 footnote];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v46 = [(_SFPBVerticalLayoutCardSection *)self footnote];
  if (v46)
  {
    v47 = v46;
    v48 = [(_SFPBVerticalLayoutCardSection *)self footnote];
    v49 = [v4 footnote];
    v50 = [v48 isEqual:v49];

    if (!v50)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  contentsLeading = self->_contentsLeading;
  if (contentsLeading != [v4 contentsLeading])
  {
    goto LABEL_52;
  }

  v5 = [(_SFPBVerticalLayoutCardSection *)self thumbnailOverlayText];
  v6 = [v4 thumbnailOverlayText];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_51:

    goto LABEL_52;
  }

  v52 = [(_SFPBVerticalLayoutCardSection *)self thumbnailOverlayText];
  if (!v52)
  {

LABEL_55:
    useAppIconMetrics = self->_useAppIconMetrics;
    v57 = useAppIconMetrics == [v4 useAppIconMetrics];
    goto LABEL_53;
  }

  v53 = v52;
  v54 = [(_SFPBVerticalLayoutCardSection *)self thumbnailOverlayText];
  v55 = [v4 thumbnailOverlayText];
  v56 = [v54 isEqual:v55];

  if (v56)
  {
    goto LABEL_55;
  }

LABEL_52:
  v57 = 0;
LABEL_53:

  return v57;
}

- (void)writeTo:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBVerticalLayoutCardSection *)self punchoutOptions];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  v11 = [(_SFPBVerticalLayoutCardSection *)self punchoutPickerTitle];
  if (v11)
  {
    PBDataWriterWriteStringField();
  }

  v12 = [(_SFPBVerticalLayoutCardSection *)self punchoutPickerDismissText];
  if (v12)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBVerticalLayoutCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBVerticalLayoutCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBVerticalLayoutCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  v13 = [(_SFPBVerticalLayoutCardSection *)self type];
  if (v13)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBVerticalLayoutCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  v14 = [(_SFPBVerticalLayoutCardSection *)self backgroundColor];
  if (v14)
  {
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_SFPBVerticalLayoutCardSection *)self thumbnail];
  if (v15)
  {
    PBDataWriterWriteSubmessage();
  }

  v16 = [(_SFPBVerticalLayoutCardSection *)self title];
  if (v16)
  {
    PBDataWriterWriteSubmessage();
  }

  v17 = [(_SFPBVerticalLayoutCardSection *)self footnote];
  if (v17)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBVerticalLayoutCardSection *)self contentsLeading])
  {
    PBDataWriterWriteBOOLField();
  }

  v18 = [(_SFPBVerticalLayoutCardSection *)self thumbnailOverlayText];
  if (v18)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBVerticalLayoutCardSection *)self useAppIconMetrics])
  {
    PBDataWriterWriteBOOLField();
  }

  v19 = *MEMORY[0x1E69E9840];
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