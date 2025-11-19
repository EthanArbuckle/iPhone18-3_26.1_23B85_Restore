@interface _SFPBMetaInfoCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBMetaInfoCardSection)initWithDictionary:(id)a3;
- (_SFPBMetaInfoCardSection)initWithFacade:(id)a3;
- (_SFPBMetaInfoCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPunchoutOptions:(id)a3;
- (void)setPunchoutOptions:(id)a3;
- (void)setPunchoutPickerDismissText:(id)a3;
- (void)setPunchoutPickerTitle:(id)a3;
- (void)setType:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBMetaInfoCardSection

- (_SFPBMetaInfoCardSection)initWithFacade:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBMetaInfoCardSection *)self init];
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

    [(_SFPBMetaInfoCardSection *)v5 setPunchoutOptions:v7];
    v14 = [v4 punchoutPickerTitle];

    if (v14)
    {
      v15 = [v4 punchoutPickerTitle];
      [(_SFPBMetaInfoCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [v4 punchoutPickerDismissText];

    if (v16)
    {
      v17 = [v4 punchoutPickerDismissText];
      [(_SFPBMetaInfoCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    if ([v4 hasCanBeHidden])
    {
      -[_SFPBMetaInfoCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v4 canBeHidden]);
    }

    if ([v4 hasHasTopPadding])
    {
      -[_SFPBMetaInfoCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v4 hasTopPadding]);
    }

    if ([v4 hasHasBottomPadding])
    {
      -[_SFPBMetaInfoCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v4 hasBottomPadding]);
    }

    v18 = [v4 type];

    if (v18)
    {
      v19 = [v4 type];
      [(_SFPBMetaInfoCardSection *)v5 setType:v19];
    }

    if ([v4 hasSeparatorStyle])
    {
      -[_SFPBMetaInfoCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v4 separatorStyle]);
    }

    v20 = [v4 backgroundColor];

    if (v20)
    {
      v21 = [_SFPBColor alloc];
      v22 = [v4 backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:v22];
      [(_SFPBMetaInfoCardSection *)v5 setBackgroundColor:v23];
    }

    if ([v4 hasTrending])
    {
      -[_SFPBMetaInfoCardSection setTrending:](v5, "setTrending:", [v4 trending]);
    }

    v24 = [v4 contentURL];

    if (v24)
    {
      v25 = [_SFPBURL alloc];
      v26 = [v4 contentURL];
      v27 = [(_SFPBURL *)v25 initWithNSURL:v26];
      [(_SFPBMetaInfoCardSection *)v5 setContentURL:v27];
    }

    v28 = [v4 hostPageURL];

    if (v28)
    {
      v29 = [_SFPBURL alloc];
      v30 = [v4 hostPageURL];
      v31 = [(_SFPBURL *)v29 initWithNSURL:v30];
      [(_SFPBMetaInfoCardSection *)v5 setHostPageURL:v31];
    }

    v32 = [v4 badge];

    if (v32)
    {
      v33 = [_SFPBImage alloc];
      v34 = [v4 badge];
      v35 = [(_SFPBImage *)v33 initWithFacade:v34];
      [(_SFPBMetaInfoCardSection *)v5 setBadge:v35];
    }

    v36 = v5;
  }

  v37 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBMetaInfoCardSection)initWithDictionary:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v46.receiver = self;
  v46.super_class = _SFPBMetaInfoCardSection;
  v5 = [(_SFPBMetaInfoCardSection *)&v46 init];
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
              [(_SFPBMetaInfoCardSection *)v5 addPunchoutOptions:v13];
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
      [(_SFPBMetaInfoCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v40 = v14;
    v16 = [v4 objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBMetaInfoCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    v39 = v16;
    v18 = [v4 objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMetaInfoCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v18 BOOLValue]);
    }

    v19 = [v4 objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMetaInfoCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v19 BOOLValue]);
    }

    v20 = [v4 objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMetaInfoCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v20 BOOLValue]);
    }

    v38 = v18;
    v41 = v6;
    v21 = [v4 objectForKeyedSubscript:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBMetaInfoCardSection *)v5 setType:v22];
    }

    v23 = [v4 objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMetaInfoCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v23 intValue]);
    }

    v24 = [v4 objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBColor alloc] initWithDictionary:v24];
      [(_SFPBMetaInfoCardSection *)v5 setBackgroundColor:v25];
    }

    v37 = v19;
    v26 = [v4 objectForKeyedSubscript:@"trending"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMetaInfoCardSection setTrending:](v5, "setTrending:", [v26 BOOLValue]);
    }

    v27 = [v4 objectForKeyedSubscript:{@"contentURL", v20}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [[_SFPBURL alloc] initWithDictionary:v27];
      [(_SFPBMetaInfoCardSection *)v5 setContentURL:v28];
    }

    v29 = [v4 objectForKeyedSubscript:@"hostPageURL"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = [[_SFPBURL alloc] initWithDictionary:v29];
      [(_SFPBMetaInfoCardSection *)v5 setHostPageURL:v30];
    }

    v31 = [v4 objectForKeyedSubscript:@"badge"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = [[_SFPBImage alloc] initWithDictionary:v31];
      [(_SFPBMetaInfoCardSection *)v5 setBadge:v32];
    }

    v33 = v5;
  }

  v34 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBMetaInfoCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBMetaInfoCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBMetaInfoCardSection *)self dictionaryRepresentation];
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
    v4 = [(_SFPBMetaInfoCardSection *)self backgroundColor];
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

  if (self->_badge)
  {
    v7 = [(_SFPBMetaInfoCardSection *)self badge];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"badge"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"badge"];
    }
  }

  if (self->_canBeHidden)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMetaInfoCardSection canBeHidden](self, "canBeHidden")}];
    [v3 setObject:v10 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_contentURL)
  {
    v11 = [(_SFPBMetaInfoCardSection *)self contentURL];
    v12 = [v11 dictionaryRepresentation];
    if (v12)
    {
      [v3 setObject:v12 forKeyedSubscript:@"contentURL"];
    }

    else
    {
      v13 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v13 forKeyedSubscript:@"contentURL"];
    }
  }

  if (self->_hasBottomPadding)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMetaInfoCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [v3 setObject:v14 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMetaInfoCardSection hasTopPadding](self, "hasTopPadding")}];
    [v3 setObject:v15 forKeyedSubscript:@"hasTopPadding"];
  }

  if (self->_hostPageURL)
  {
    v16 = [(_SFPBMetaInfoCardSection *)self hostPageURL];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"hostPageURL"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"hostPageURL"];
    }
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    v19 = [MEMORY[0x1E695DF70] array];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v20 = self->_punchoutOptions;
    v21 = [(NSArray *)v20 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v39;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v39 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [*(*(&v38 + 1) + 8 * i) dictionaryRepresentation];
          if (v25)
          {
            [v19 addObject:v25];
          }

          else
          {
            v26 = [MEMORY[0x1E695DFB0] null];
            [v19 addObject:v26];
          }
        }

        v22 = [(NSArray *)v20 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v22);
    }

    [v3 setObject:v19 forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    v27 = [(_SFPBMetaInfoCardSection *)self punchoutPickerDismissText];
    v28 = [v27 copy];
    [v3 setObject:v28 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    v29 = [(_SFPBMetaInfoCardSection *)self punchoutPickerTitle];
    v30 = [v29 copy];
    [v3 setObject:v30 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    v31 = [(_SFPBMetaInfoCardSection *)self separatorStyle];
    if (v31 >= 6)
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v31];
    }

    else
    {
      v32 = off_1E7ACE580[v31];
    }

    [v3 setObject:v32 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_trending)
  {
    v33 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMetaInfoCardSection trending](self, "trending")}];
    [v3 setObject:v33 forKeyedSubscript:@"trending"];
  }

  if (self->_type)
  {
    v34 = [(_SFPBMetaInfoCardSection *)self type];
    v35 = [v34 copy];
    [v3 setObject:v35 forKeyedSubscript:@"type"];
  }

  v36 = *MEMORY[0x1E69E9840];

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

  v9 = [(NSString *)self->_type hash];
  v10 = 2654435761 * self->_separatorStyle;
  v11 = [(_SFPBColor *)self->_backgroundColor hash];
  if (self->_trending)
  {
    v12 = 2654435761;
  }

  else
  {
    v12 = 0;
  }

  v13 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
  v14 = v11 ^ v12 ^ [(_SFPBURL *)self->_contentURL hash];
  v15 = v14 ^ [(_SFPBURL *)self->_hostPageURL hash];
  return v13 ^ v15 ^ [(_SFPBImage *)self->_badge hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_47;
  }

  v5 = [(_SFPBMetaInfoCardSection *)self punchoutOptions];
  v6 = [v4 punchoutOptions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v7 = [(_SFPBMetaInfoCardSection *)self punchoutOptions];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBMetaInfoCardSection *)self punchoutOptions];
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

  v5 = [(_SFPBMetaInfoCardSection *)self punchoutPickerTitle];
  v6 = [v4 punchoutPickerTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v12 = [(_SFPBMetaInfoCardSection *)self punchoutPickerTitle];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBMetaInfoCardSection *)self punchoutPickerTitle];
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

  v5 = [(_SFPBMetaInfoCardSection *)self punchoutPickerDismissText];
  v6 = [v4 punchoutPickerDismissText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v17 = [(_SFPBMetaInfoCardSection *)self punchoutPickerDismissText];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBMetaInfoCardSection *)self punchoutPickerDismissText];
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

  v5 = [(_SFPBMetaInfoCardSection *)self type];
  v6 = [v4 type];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v25 = [(_SFPBMetaInfoCardSection *)self type];
  if (v25)
  {
    v26 = v25;
    v27 = [(_SFPBMetaInfoCardSection *)self type];
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

  v5 = [(_SFPBMetaInfoCardSection *)self backgroundColor];
  v6 = [v4 backgroundColor];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v31 = [(_SFPBMetaInfoCardSection *)self backgroundColor];
  if (v31)
  {
    v32 = v31;
    v33 = [(_SFPBMetaInfoCardSection *)self backgroundColor];
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

  trending = self->_trending;
  if (trending != [v4 trending])
  {
    goto LABEL_47;
  }

  v5 = [(_SFPBMetaInfoCardSection *)self contentURL];
  v6 = [v4 contentURL];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v37 = [(_SFPBMetaInfoCardSection *)self contentURL];
  if (v37)
  {
    v38 = v37;
    v39 = [(_SFPBMetaInfoCardSection *)self contentURL];
    v40 = [v4 contentURL];
    v41 = [v39 isEqual:v40];

    if (!v41)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(_SFPBMetaInfoCardSection *)self hostPageURL];
  v6 = [v4 hostPageURL];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v42 = [(_SFPBMetaInfoCardSection *)self hostPageURL];
  if (v42)
  {
    v43 = v42;
    v44 = [(_SFPBMetaInfoCardSection *)self hostPageURL];
    v45 = [v4 hostPageURL];
    v46 = [v44 isEqual:v45];

    if (!v46)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(_SFPBMetaInfoCardSection *)self badge];
  v6 = [v4 badge];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_46:

    goto LABEL_47;
  }

  v47 = [(_SFPBMetaInfoCardSection *)self badge];
  if (!v47)
  {

LABEL_50:
    v52 = 1;
    goto LABEL_48;
  }

  v48 = v47;
  v49 = [(_SFPBMetaInfoCardSection *)self badge];
  v50 = [v4 badge];
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
  v5 = [(_SFPBMetaInfoCardSection *)self punchoutOptions];
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

  v11 = [(_SFPBMetaInfoCardSection *)self punchoutPickerTitle];
  if (v11)
  {
    PBDataWriterWriteStringField();
  }

  v12 = [(_SFPBMetaInfoCardSection *)self punchoutPickerDismissText];
  if (v12)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBMetaInfoCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBMetaInfoCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBMetaInfoCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  v13 = [(_SFPBMetaInfoCardSection *)self type];
  if (v13)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBMetaInfoCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  v14 = [(_SFPBMetaInfoCardSection *)self backgroundColor];
  if (v14)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBMetaInfoCardSection *)self trending])
  {
    PBDataWriterWriteBOOLField();
  }

  v15 = [(_SFPBMetaInfoCardSection *)self contentURL];
  if (v15)
  {
    PBDataWriterWriteSubmessage();
  }

  v16 = [(_SFPBMetaInfoCardSection *)self hostPageURL];
  if (v16)
  {
    PBDataWriterWriteSubmessage();
  }

  v17 = [(_SFPBMetaInfoCardSection *)self badge];
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