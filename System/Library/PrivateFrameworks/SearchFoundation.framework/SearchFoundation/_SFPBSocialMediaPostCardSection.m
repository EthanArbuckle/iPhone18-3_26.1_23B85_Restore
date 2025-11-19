@interface _SFPBSocialMediaPostCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBSocialMediaPostCardSection)initWithDictionary:(id)a3;
- (_SFPBSocialMediaPostCardSection)initWithFacade:(id)a3;
- (_SFPBSocialMediaPostCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPunchoutOptions:(id)a3;
- (void)setFootnote:(id)a3;
- (void)setHandle:(id)a3;
- (void)setName:(id)a3;
- (void)setPunchoutOptions:(id)a3;
- (void)setPunchoutPickerDismissText:(id)a3;
- (void)setPunchoutPickerTitle:(id)a3;
- (void)setTimestamp:(id)a3;
- (void)setType:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBSocialMediaPostCardSection

- (_SFPBSocialMediaPostCardSection)initWithFacade:(id)a3
{
  v58 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBSocialMediaPostCardSection *)self init];
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

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v8 = [v4 punchoutOptions];
    v9 = [v8 countByEnumeratingWithState:&v53 objects:v57 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v54;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v54 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v53 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v53 objects:v57 count:16];
      }

      while (v10);
    }

    [(_SFPBSocialMediaPostCardSection *)v5 setPunchoutOptions:v7];
    v14 = [v4 punchoutPickerTitle];

    if (v14)
    {
      v15 = [v4 punchoutPickerTitle];
      [(_SFPBSocialMediaPostCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [v4 punchoutPickerDismissText];

    if (v16)
    {
      v17 = [v4 punchoutPickerDismissText];
      [(_SFPBSocialMediaPostCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    if ([v4 hasCanBeHidden])
    {
      -[_SFPBSocialMediaPostCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v4 canBeHidden]);
    }

    if ([v4 hasHasTopPadding])
    {
      -[_SFPBSocialMediaPostCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v4 hasTopPadding]);
    }

    if ([v4 hasHasBottomPadding])
    {
      -[_SFPBSocialMediaPostCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v4 hasBottomPadding]);
    }

    v18 = [v4 type];

    if (v18)
    {
      v19 = [v4 type];
      [(_SFPBSocialMediaPostCardSection *)v5 setType:v19];
    }

    if ([v4 hasSeparatorStyle])
    {
      -[_SFPBSocialMediaPostCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v4 separatorStyle]);
    }

    v20 = [v4 backgroundColor];

    if (v20)
    {
      v21 = [_SFPBColor alloc];
      v22 = [v4 backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:v22];
      [(_SFPBSocialMediaPostCardSection *)v5 setBackgroundColor:v23];
    }

    v24 = [v4 name];

    if (v24)
    {
      v25 = [v4 name];
      [(_SFPBSocialMediaPostCardSection *)v5 setName:v25];
    }

    if ([v4 hasNameNoWrap])
    {
      -[_SFPBSocialMediaPostCardSection setNameNoWrap:](v5, "setNameNoWrap:", [v4 nameNoWrap]);
    }

    v26 = [v4 nameMaxLines];

    if (v26)
    {
      v27 = [v4 nameMaxLines];
      -[_SFPBSocialMediaPostCardSection setNameMaxLines:](v5, "setNameMaxLines:", [v27 intValue]);
    }

    v28 = [v4 handle];

    if (v28)
    {
      v29 = [v4 handle];
      [(_SFPBSocialMediaPostCardSection *)v5 setHandle:v29];
    }

    v30 = [v4 verifiedGlyph];

    if (v30)
    {
      v31 = [_SFPBImage alloc];
      v32 = [v4 verifiedGlyph];
      v33 = [(_SFPBImage *)v31 initWithFacade:v32];
      [(_SFPBSocialMediaPostCardSection *)v5 setVerifiedGlyph:v33];
    }

    v34 = [v4 profilePicture];

    if (v34)
    {
      v35 = [_SFPBImage alloc];
      v36 = [v4 profilePicture];
      v37 = [(_SFPBImage *)v35 initWithFacade:v36];
      [(_SFPBSocialMediaPostCardSection *)v5 setProfilePicture:v37];
    }

    v38 = [v4 post];

    if (v38)
    {
      v39 = [_SFPBRichText alloc];
      v40 = [v4 post];
      v41 = [(_SFPBRichText *)v39 initWithFacade:v40];
      [(_SFPBSocialMediaPostCardSection *)v5 setPost:v41];
    }

    v42 = [v4 picture];

    if (v42)
    {
      v43 = [_SFPBImage alloc];
      v44 = [v4 picture];
      v45 = [(_SFPBImage *)v43 initWithFacade:v44];
      [(_SFPBSocialMediaPostCardSection *)v5 setPicture:v45];
    }

    v46 = [v4 timestamp];

    if (v46)
    {
      v47 = [v4 timestamp];
      [(_SFPBSocialMediaPostCardSection *)v5 setTimestamp:v47];
    }

    v48 = [v4 footnote];

    if (v48)
    {
      v49 = [v4 footnote];
      [(_SFPBSocialMediaPostCardSection *)v5 setFootnote:v49];
    }

    v50 = v5;
  }

  v51 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBSocialMediaPostCardSection)initWithDictionary:(id)a3
{
  v65 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v63.receiver = self;
  v63.super_class = _SFPBSocialMediaPostCardSection;
  v5 = [(_SFPBSocialMediaPostCardSection *)&v63 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"punchoutOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v59 objects:v64 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v60;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v60 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v59 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [[_SFPBPunchout alloc] initWithDictionary:v12];
              [(_SFPBSocialMediaPostCardSection *)v5 addPunchoutOptions:v13];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v59 objects:v64 count:16];
        }

        while (v9);
      }
    }

    v14 = [v4 objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBSocialMediaPostCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v53 = v14;
    v16 = [v4 objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBSocialMediaPostCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    v52 = v16;
    v18 = [v4 objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSocialMediaPostCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v18 BOOLValue]);
    }

    v19 = [v4 objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSocialMediaPostCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v19 BOOLValue]);
    }

    v20 = [v4 objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSocialMediaPostCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v20 BOOLValue]);
    }

    v21 = [v4 objectForKeyedSubscript:@"type"];
    objc_opt_class();
    v58 = v21;
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBSocialMediaPostCardSection *)v5 setType:v22];
    }

    v23 = [v4 objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    v57 = v23;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSocialMediaPostCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v23 intValue]);
    }

    v24 = [v4 objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    v56 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBColor alloc] initWithDictionary:v24];
      [(_SFPBSocialMediaPostCardSection *)v5 setBackgroundColor:v25];
    }

    v26 = [v4 objectForKeyedSubscript:@"name"];
    objc_opt_class();
    v55 = v26;
    if (objc_opt_isKindOfClass())
    {
      v27 = [v26 copy];
      [(_SFPBSocialMediaPostCardSection *)v5 setName:v27];
    }

    v28 = [v4 objectForKeyedSubscript:@"nameNoWrap"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSocialMediaPostCardSection setNameNoWrap:](v5, "setNameNoWrap:", [v28 BOOLValue]);
    }

    v48 = v28;
    v50 = v19;
    v29 = [v4 objectForKeyedSubscript:@"nameMaxLines"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSocialMediaPostCardSection setNameMaxLines:](v5, "setNameMaxLines:", [v29 intValue]);
    }

    v30 = [v4 objectForKeyedSubscript:{@"handle", v29}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [v30 copy];
      [(_SFPBSocialMediaPostCardSection *)v5 setHandle:v31];
    }

    v49 = v20;
    v32 = [v4 objectForKeyedSubscript:@"verifiedGlyph"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [[_SFPBImage alloc] initWithDictionary:v32];
      [(_SFPBSocialMediaPostCardSection *)v5 setVerifiedGlyph:v33];
    }

    v54 = v6;
    v34 = [v4 objectForKeyedSubscript:@"profilePicture"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [[_SFPBImage alloc] initWithDictionary:v34];
      [(_SFPBSocialMediaPostCardSection *)v5 setProfilePicture:v35];
    }

    v36 = [v4 objectForKeyedSubscript:@"post"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = [[_SFPBRichText alloc] initWithDictionary:v36];
      [(_SFPBSocialMediaPostCardSection *)v5 setPost:v37];
    }

    v51 = v18;
    v38 = [v4 objectForKeyedSubscript:@"picture"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = [[_SFPBImage alloc] initWithDictionary:v38];
      [(_SFPBSocialMediaPostCardSection *)v5 setPicture:v39];
    }

    v40 = [v4 objectForKeyedSubscript:@"timestamp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = [v40 copy];
      [(_SFPBSocialMediaPostCardSection *)v5 setTimestamp:v41];
    }

    v42 = [v4 objectForKeyedSubscript:@"footnote"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = [v42 copy];
      [(_SFPBSocialMediaPostCardSection *)v5 setFootnote:v43];
    }

    v44 = v5;
  }

  v45 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBSocialMediaPostCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBSocialMediaPostCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBSocialMediaPostCardSection *)self dictionaryRepresentation];
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
  v55 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_backgroundColor)
  {
    v4 = [(_SFPBSocialMediaPostCardSection *)self backgroundColor];
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
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBSocialMediaPostCardSection canBeHidden](self, "canBeHidden")}];
    [v3 setObject:v7 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_footnote)
  {
    v8 = [(_SFPBSocialMediaPostCardSection *)self footnote];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"footnote"];
  }

  if (self->_handle)
  {
    v10 = [(_SFPBSocialMediaPostCardSection *)self handle];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"handle"];
  }

  if (self->_hasBottomPadding)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBSocialMediaPostCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [v3 setObject:v12 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBSocialMediaPostCardSection hasTopPadding](self, "hasTopPadding")}];
    [v3 setObject:v13 forKeyedSubscript:@"hasTopPadding"];
  }

  if (self->_name)
  {
    v14 = [(_SFPBSocialMediaPostCardSection *)self name];
    v15 = [v14 copy];
    [v3 setObject:v15 forKeyedSubscript:@"name"];
  }

  if (self->_nameMaxLines)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBSocialMediaPostCardSection nameMaxLines](self, "nameMaxLines")}];
    [v3 setObject:v16 forKeyedSubscript:@"nameMaxLines"];
  }

  if (self->_nameNoWrap)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBSocialMediaPostCardSection nameNoWrap](self, "nameNoWrap")}];
    [v3 setObject:v17 forKeyedSubscript:@"nameNoWrap"];
  }

  if (self->_picture)
  {
    v18 = [(_SFPBSocialMediaPostCardSection *)self picture];
    v19 = [v18 dictionaryRepresentation];
    if (v19)
    {
      [v3 setObject:v19 forKeyedSubscript:@"picture"];
    }

    else
    {
      v20 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v20 forKeyedSubscript:@"picture"];
    }
  }

  if (self->_post)
  {
    v21 = [(_SFPBSocialMediaPostCardSection *)self post];
    v22 = [v21 dictionaryRepresentation];
    if (v22)
    {
      [v3 setObject:v22 forKeyedSubscript:@"post"];
    }

    else
    {
      v23 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v23 forKeyedSubscript:@"post"];
    }
  }

  if (self->_profilePicture)
  {
    v24 = [(_SFPBSocialMediaPostCardSection *)self profilePicture];
    v25 = [v24 dictionaryRepresentation];
    if (v25)
    {
      [v3 setObject:v25 forKeyedSubscript:@"profilePicture"];
    }

    else
    {
      v26 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v26 forKeyedSubscript:@"profilePicture"];
    }
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    v27 = [MEMORY[0x1E695DF70] array];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v28 = self->_punchoutOptions;
    v29 = [(NSArray *)v28 countByEnumeratingWithState:&v50 objects:v54 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v51;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v51 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = [*(*(&v50 + 1) + 8 * i) dictionaryRepresentation];
          if (v33)
          {
            [v27 addObject:v33];
          }

          else
          {
            v34 = [MEMORY[0x1E695DFB0] null];
            [v27 addObject:v34];
          }
        }

        v30 = [(NSArray *)v28 countByEnumeratingWithState:&v50 objects:v54 count:16];
      }

      while (v30);
    }

    [v3 setObject:v27 forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    v35 = [(_SFPBSocialMediaPostCardSection *)self punchoutPickerDismissText];
    v36 = [v35 copy];
    [v3 setObject:v36 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    v37 = [(_SFPBSocialMediaPostCardSection *)self punchoutPickerTitle];
    v38 = [v37 copy];
    [v3 setObject:v38 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    v39 = [(_SFPBSocialMediaPostCardSection *)self separatorStyle];
    if (v39 >= 6)
    {
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v39];
    }

    else
    {
      v40 = off_1E7ACE580[v39];
    }

    [v3 setObject:v40 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_timestamp)
  {
    v41 = [(_SFPBSocialMediaPostCardSection *)self timestamp];
    v42 = [v41 copy];
    [v3 setObject:v42 forKeyedSubscript:@"timestamp"];
  }

  if (self->_type)
  {
    v43 = [(_SFPBSocialMediaPostCardSection *)self type];
    v44 = [v43 copy];
    [v3 setObject:v44 forKeyedSubscript:@"type"];
  }

  if (self->_verifiedGlyph)
  {
    v45 = [(_SFPBSocialMediaPostCardSection *)self verifiedGlyph];
    v46 = [v45 dictionaryRepresentation];
    if (v46)
    {
      [v3 setObject:v46 forKeyedSubscript:@"verifiedGlyph"];
    }

    else
    {
      v47 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v47 forKeyedSubscript:@"verifiedGlyph"];
    }
  }

  v48 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v21 = [(NSArray *)self->_punchoutOptions hash];
  v3 = [(NSString *)self->_punchoutPickerTitle hash];
  v4 = [(NSString *)self->_punchoutPickerDismissText hash];
  if (self->_canBeHidden)
  {
    v5 = 2654435761;
  }

  else
  {
    v5 = 0;
  }

  if (self->_hasTopPadding)
  {
    v6 = 2654435761;
  }

  else
  {
    v6 = 0;
  }

  if (self->_hasBottomPadding)
  {
    v7 = 2654435761;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(NSString *)self->_type hash];
  v9 = 2654435761 * self->_separatorStyle;
  v10 = [(_SFPBColor *)self->_backgroundColor hash];
  v11 = [(NSString *)self->_name hash];
  if (self->_nameNoWrap)
  {
    v12 = 2654435761;
  }

  else
  {
    v12 = 0;
  }

  v13 = v3 ^ v21 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ (2654435761 * self->_nameMaxLines);
  v14 = [(NSString *)self->_handle hash];
  v15 = v14 ^ [(_SFPBImage *)self->_verifiedGlyph hash];
  v16 = v15 ^ [(_SFPBImage *)self->_profilePicture hash];
  v17 = v16 ^ [(_SFPBRichText *)self->_post hash];
  v18 = v17 ^ [(_SFPBImage *)self->_picture hash];
  v19 = v18 ^ [(NSString *)self->_timestamp hash];
  return v13 ^ v19 ^ [(NSString *)self->_footnote hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_73;
  }

  v5 = [(_SFPBSocialMediaPostCardSection *)self punchoutOptions];
  v6 = [v4 punchoutOptions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_72;
  }

  v7 = [(_SFPBSocialMediaPostCardSection *)self punchoutOptions];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBSocialMediaPostCardSection *)self punchoutOptions];
    v10 = [v4 punchoutOptions];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  v5 = [(_SFPBSocialMediaPostCardSection *)self punchoutPickerTitle];
  v6 = [v4 punchoutPickerTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_72;
  }

  v12 = [(_SFPBSocialMediaPostCardSection *)self punchoutPickerTitle];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBSocialMediaPostCardSection *)self punchoutPickerTitle];
    v15 = [v4 punchoutPickerTitle];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  v5 = [(_SFPBSocialMediaPostCardSection *)self punchoutPickerDismissText];
  v6 = [v4 punchoutPickerDismissText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_72;
  }

  v17 = [(_SFPBSocialMediaPostCardSection *)self punchoutPickerDismissText];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBSocialMediaPostCardSection *)self punchoutPickerDismissText];
    v20 = [v4 punchoutPickerDismissText];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [v4 canBeHidden])
  {
    goto LABEL_73;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [v4 hasTopPadding])
  {
    goto LABEL_73;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [v4 hasBottomPadding])
  {
    goto LABEL_73;
  }

  v5 = [(_SFPBSocialMediaPostCardSection *)self type];
  v6 = [v4 type];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_72;
  }

  v25 = [(_SFPBSocialMediaPostCardSection *)self type];
  if (v25)
  {
    v26 = v25;
    v27 = [(_SFPBSocialMediaPostCardSection *)self type];
    v28 = [v4 type];
    v29 = [v27 isEqual:v28];

    if (!v29)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [v4 separatorStyle])
  {
    goto LABEL_73;
  }

  v5 = [(_SFPBSocialMediaPostCardSection *)self backgroundColor];
  v6 = [v4 backgroundColor];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_72;
  }

  v31 = [(_SFPBSocialMediaPostCardSection *)self backgroundColor];
  if (v31)
  {
    v32 = v31;
    v33 = [(_SFPBSocialMediaPostCardSection *)self backgroundColor];
    v34 = [v4 backgroundColor];
    v35 = [v33 isEqual:v34];

    if (!v35)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  v5 = [(_SFPBSocialMediaPostCardSection *)self name];
  v6 = [v4 name];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_72;
  }

  v36 = [(_SFPBSocialMediaPostCardSection *)self name];
  if (v36)
  {
    v37 = v36;
    v38 = [(_SFPBSocialMediaPostCardSection *)self name];
    v39 = [v4 name];
    v40 = [v38 isEqual:v39];

    if (!v40)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  nameNoWrap = self->_nameNoWrap;
  if (nameNoWrap != [v4 nameNoWrap])
  {
    goto LABEL_73;
  }

  nameMaxLines = self->_nameMaxLines;
  if (nameMaxLines != [v4 nameMaxLines])
  {
    goto LABEL_73;
  }

  v5 = [(_SFPBSocialMediaPostCardSection *)self handle];
  v6 = [v4 handle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_72;
  }

  v43 = [(_SFPBSocialMediaPostCardSection *)self handle];
  if (v43)
  {
    v44 = v43;
    v45 = [(_SFPBSocialMediaPostCardSection *)self handle];
    v46 = [v4 handle];
    v47 = [v45 isEqual:v46];

    if (!v47)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  v5 = [(_SFPBSocialMediaPostCardSection *)self verifiedGlyph];
  v6 = [v4 verifiedGlyph];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_72;
  }

  v48 = [(_SFPBSocialMediaPostCardSection *)self verifiedGlyph];
  if (v48)
  {
    v49 = v48;
    v50 = [(_SFPBSocialMediaPostCardSection *)self verifiedGlyph];
    v51 = [v4 verifiedGlyph];
    v52 = [v50 isEqual:v51];

    if (!v52)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  v5 = [(_SFPBSocialMediaPostCardSection *)self profilePicture];
  v6 = [v4 profilePicture];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_72;
  }

  v53 = [(_SFPBSocialMediaPostCardSection *)self profilePicture];
  if (v53)
  {
    v54 = v53;
    v55 = [(_SFPBSocialMediaPostCardSection *)self profilePicture];
    v56 = [v4 profilePicture];
    v57 = [v55 isEqual:v56];

    if (!v57)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  v5 = [(_SFPBSocialMediaPostCardSection *)self post];
  v6 = [v4 post];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_72;
  }

  v58 = [(_SFPBSocialMediaPostCardSection *)self post];
  if (v58)
  {
    v59 = v58;
    v60 = [(_SFPBSocialMediaPostCardSection *)self post];
    v61 = [v4 post];
    v62 = [v60 isEqual:v61];

    if (!v62)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  v5 = [(_SFPBSocialMediaPostCardSection *)self picture];
  v6 = [v4 picture];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_72;
  }

  v63 = [(_SFPBSocialMediaPostCardSection *)self picture];
  if (v63)
  {
    v64 = v63;
    v65 = [(_SFPBSocialMediaPostCardSection *)self picture];
    v66 = [v4 picture];
    v67 = [v65 isEqual:v66];

    if (!v67)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  v5 = [(_SFPBSocialMediaPostCardSection *)self timestamp];
  v6 = [v4 timestamp];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_72;
  }

  v68 = [(_SFPBSocialMediaPostCardSection *)self timestamp];
  if (v68)
  {
    v69 = v68;
    v70 = [(_SFPBSocialMediaPostCardSection *)self timestamp];
    v71 = [v4 timestamp];
    v72 = [v70 isEqual:v71];

    if (!v72)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  v5 = [(_SFPBSocialMediaPostCardSection *)self footnote];
  v6 = [v4 footnote];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_72:

    goto LABEL_73;
  }

  v73 = [(_SFPBSocialMediaPostCardSection *)self footnote];
  if (!v73)
  {

LABEL_76:
    v78 = 1;
    goto LABEL_74;
  }

  v74 = v73;
  v75 = [(_SFPBSocialMediaPostCardSection *)self footnote];
  v76 = [v4 footnote];
  v77 = [v75 isEqual:v76];

  if (v77)
  {
    goto LABEL_76;
  }

LABEL_73:
  v78 = 0;
LABEL_74:

  return v78;
}

- (void)writeTo:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBSocialMediaPostCardSection *)self punchoutOptions];
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

  v11 = [(_SFPBSocialMediaPostCardSection *)self punchoutPickerTitle];
  if (v11)
  {
    PBDataWriterWriteStringField();
  }

  v12 = [(_SFPBSocialMediaPostCardSection *)self punchoutPickerDismissText];
  if (v12)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBSocialMediaPostCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBSocialMediaPostCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBSocialMediaPostCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  v13 = [(_SFPBSocialMediaPostCardSection *)self type];
  if (v13)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBSocialMediaPostCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  v14 = [(_SFPBSocialMediaPostCardSection *)self backgroundColor];
  if (v14)
  {
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_SFPBSocialMediaPostCardSection *)self name];
  if (v15)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBSocialMediaPostCardSection *)self nameNoWrap])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBSocialMediaPostCardSection *)self nameMaxLines])
  {
    PBDataWriterWriteInt32Field();
  }

  v16 = [(_SFPBSocialMediaPostCardSection *)self handle];
  if (v16)
  {
    PBDataWriterWriteStringField();
  }

  v17 = [(_SFPBSocialMediaPostCardSection *)self verifiedGlyph];
  if (v17)
  {
    PBDataWriterWriteSubmessage();
  }

  v18 = [(_SFPBSocialMediaPostCardSection *)self profilePicture];
  if (v18)
  {
    PBDataWriterWriteSubmessage();
  }

  v19 = [(_SFPBSocialMediaPostCardSection *)self post];
  if (v19)
  {
    PBDataWriterWriteSubmessage();
  }

  v20 = [(_SFPBSocialMediaPostCardSection *)self picture];
  if (v20)
  {
    PBDataWriterWriteSubmessage();
  }

  v21 = [(_SFPBSocialMediaPostCardSection *)self timestamp];
  if (v21)
  {
    PBDataWriterWriteStringField();
  }

  v22 = [(_SFPBSocialMediaPostCardSection *)self footnote];
  if (v22)
  {
    PBDataWriterWriteStringField();
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)setFootnote:(id)a3
{
  v4 = [a3 copy];
  footnote = self->_footnote;
  self->_footnote = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setTimestamp:(id)a3
{
  v4 = [a3 copy];
  timestamp = self->_timestamp;
  self->_timestamp = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setHandle:(id)a3
{
  v4 = [a3 copy];
  handle = self->_handle;
  self->_handle = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setName:(id)a3
{
  v4 = [a3 copy];
  name = self->_name;
  self->_name = v4;

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