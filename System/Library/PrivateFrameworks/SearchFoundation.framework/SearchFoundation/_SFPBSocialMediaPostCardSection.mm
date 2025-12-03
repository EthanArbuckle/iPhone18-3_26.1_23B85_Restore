@interface _SFPBSocialMediaPostCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBSocialMediaPostCardSection)initWithDictionary:(id)dictionary;
- (_SFPBSocialMediaPostCardSection)initWithFacade:(id)facade;
- (_SFPBSocialMediaPostCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPunchoutOptions:(id)options;
- (void)setFootnote:(id)footnote;
- (void)setHandle:(id)handle;
- (void)setName:(id)name;
- (void)setPunchoutOptions:(id)options;
- (void)setPunchoutPickerDismissText:(id)text;
- (void)setPunchoutPickerTitle:(id)title;
- (void)setTimestamp:(id)timestamp;
- (void)setType:(id)type;
- (void)writeTo:(id)to;
@end

@implementation _SFPBSocialMediaPostCardSection

- (_SFPBSocialMediaPostCardSection)initWithFacade:(id)facade
{
  v58 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBSocialMediaPostCardSection *)self init];
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

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    punchoutOptions2 = [facadeCopy punchoutOptions];
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v53 objects:v57 count:16];
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
            objc_enumerationMutation(punchoutOptions2);
          }

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v53 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v53 objects:v57 count:16];
      }

      while (v10);
    }

    [(_SFPBSocialMediaPostCardSection *)v5 setPunchoutOptions:v7];
    punchoutPickerTitle = [facadeCopy punchoutPickerTitle];

    if (punchoutPickerTitle)
    {
      punchoutPickerTitle2 = [facadeCopy punchoutPickerTitle];
      [(_SFPBSocialMediaPostCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle2];
    }

    punchoutPickerDismissText = [facadeCopy punchoutPickerDismissText];

    if (punchoutPickerDismissText)
    {
      punchoutPickerDismissText2 = [facadeCopy punchoutPickerDismissText];
      [(_SFPBSocialMediaPostCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText2];
    }

    if ([facadeCopy hasCanBeHidden])
    {
      -[_SFPBSocialMediaPostCardSection setCanBeHidden:](v5, "setCanBeHidden:", [facadeCopy canBeHidden]);
    }

    if ([facadeCopy hasHasTopPadding])
    {
      -[_SFPBSocialMediaPostCardSection setHasTopPadding:](v5, "setHasTopPadding:", [facadeCopy hasTopPadding]);
    }

    if ([facadeCopy hasHasBottomPadding])
    {
      -[_SFPBSocialMediaPostCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [facadeCopy hasBottomPadding]);
    }

    type = [facadeCopy type];

    if (type)
    {
      type2 = [facadeCopy type];
      [(_SFPBSocialMediaPostCardSection *)v5 setType:type2];
    }

    if ([facadeCopy hasSeparatorStyle])
    {
      -[_SFPBSocialMediaPostCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [facadeCopy separatorStyle]);
    }

    backgroundColor = [facadeCopy backgroundColor];

    if (backgroundColor)
    {
      v21 = [_SFPBColor alloc];
      backgroundColor2 = [facadeCopy backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:backgroundColor2];
      [(_SFPBSocialMediaPostCardSection *)v5 setBackgroundColor:v23];
    }

    name = [facadeCopy name];

    if (name)
    {
      name2 = [facadeCopy name];
      [(_SFPBSocialMediaPostCardSection *)v5 setName:name2];
    }

    if ([facadeCopy hasNameNoWrap])
    {
      -[_SFPBSocialMediaPostCardSection setNameNoWrap:](v5, "setNameNoWrap:", [facadeCopy nameNoWrap]);
    }

    nameMaxLines = [facadeCopy nameMaxLines];

    if (nameMaxLines)
    {
      nameMaxLines2 = [facadeCopy nameMaxLines];
      -[_SFPBSocialMediaPostCardSection setNameMaxLines:](v5, "setNameMaxLines:", [nameMaxLines2 intValue]);
    }

    handle = [facadeCopy handle];

    if (handle)
    {
      handle2 = [facadeCopy handle];
      [(_SFPBSocialMediaPostCardSection *)v5 setHandle:handle2];
    }

    verifiedGlyph = [facadeCopy verifiedGlyph];

    if (verifiedGlyph)
    {
      v31 = [_SFPBImage alloc];
      verifiedGlyph2 = [facadeCopy verifiedGlyph];
      v33 = [(_SFPBImage *)v31 initWithFacade:verifiedGlyph2];
      [(_SFPBSocialMediaPostCardSection *)v5 setVerifiedGlyph:v33];
    }

    profilePicture = [facadeCopy profilePicture];

    if (profilePicture)
    {
      v35 = [_SFPBImage alloc];
      profilePicture2 = [facadeCopy profilePicture];
      v37 = [(_SFPBImage *)v35 initWithFacade:profilePicture2];
      [(_SFPBSocialMediaPostCardSection *)v5 setProfilePicture:v37];
    }

    post = [facadeCopy post];

    if (post)
    {
      v39 = [_SFPBRichText alloc];
      post2 = [facadeCopy post];
      v41 = [(_SFPBRichText *)v39 initWithFacade:post2];
      [(_SFPBSocialMediaPostCardSection *)v5 setPost:v41];
    }

    picture = [facadeCopy picture];

    if (picture)
    {
      v43 = [_SFPBImage alloc];
      picture2 = [facadeCopy picture];
      v45 = [(_SFPBImage *)v43 initWithFacade:picture2];
      [(_SFPBSocialMediaPostCardSection *)v5 setPicture:v45];
    }

    timestamp = [facadeCopy timestamp];

    if (timestamp)
    {
      timestamp2 = [facadeCopy timestamp];
      [(_SFPBSocialMediaPostCardSection *)v5 setTimestamp:timestamp2];
    }

    footnote = [facadeCopy footnote];

    if (footnote)
    {
      footnote2 = [facadeCopy footnote];
      [(_SFPBSocialMediaPostCardSection *)v5 setFootnote:footnote2];
    }

    v50 = v5;
  }

  v51 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBSocialMediaPostCardSection)initWithDictionary:(id)dictionary
{
  v65 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v63.receiver = self;
  v63.super_class = _SFPBSocialMediaPostCardSection;
  v5 = [(_SFPBSocialMediaPostCardSection *)&v63 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"punchoutOptions"];
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

    v14 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBSocialMediaPostCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v53 = v14;
    v16 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBSocialMediaPostCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    v52 = v16;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSocialMediaPostCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v18 BOOLValue]);
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSocialMediaPostCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v19 BOOLValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSocialMediaPostCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v20 BOOLValue]);
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    objc_opt_class();
    v58 = v21;
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBSocialMediaPostCardSection *)v5 setType:v22];
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    v57 = v23;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSocialMediaPostCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v23 intValue]);
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    v56 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBColor alloc] initWithDictionary:v24];
      [(_SFPBSocialMediaPostCardSection *)v5 setBackgroundColor:v25];
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    objc_opt_class();
    v55 = v26;
    if (objc_opt_isKindOfClass())
    {
      v27 = [v26 copy];
      [(_SFPBSocialMediaPostCardSection *)v5 setName:v27];
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"nameNoWrap"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSocialMediaPostCardSection setNameNoWrap:](v5, "setNameNoWrap:", [v28 BOOLValue]);
    }

    v48 = v28;
    v50 = v19;
    v29 = [dictionaryCopy objectForKeyedSubscript:@"nameMaxLines"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSocialMediaPostCardSection setNameMaxLines:](v5, "setNameMaxLines:", [v29 intValue]);
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:{@"handle", v29}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [v30 copy];
      [(_SFPBSocialMediaPostCardSection *)v5 setHandle:v31];
    }

    v49 = v20;
    v32 = [dictionaryCopy objectForKeyedSubscript:@"verifiedGlyph"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [[_SFPBImage alloc] initWithDictionary:v32];
      [(_SFPBSocialMediaPostCardSection *)v5 setVerifiedGlyph:v33];
    }

    v54 = v6;
    v34 = [dictionaryCopy objectForKeyedSubscript:@"profilePicture"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [[_SFPBImage alloc] initWithDictionary:v34];
      [(_SFPBSocialMediaPostCardSection *)v5 setProfilePicture:v35];
    }

    v36 = [dictionaryCopy objectForKeyedSubscript:@"post"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = [[_SFPBRichText alloc] initWithDictionary:v36];
      [(_SFPBSocialMediaPostCardSection *)v5 setPost:v37];
    }

    v51 = v18;
    v38 = [dictionaryCopy objectForKeyedSubscript:@"picture"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = [[_SFPBImage alloc] initWithDictionary:v38];
      [(_SFPBSocialMediaPostCardSection *)v5 setPicture:v39];
    }

    v40 = [dictionaryCopy objectForKeyedSubscript:@"timestamp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = [v40 copy];
      [(_SFPBSocialMediaPostCardSection *)v5 setTimestamp:v41];
    }

    v42 = [dictionaryCopy objectForKeyedSubscript:@"footnote"];
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

- (_SFPBSocialMediaPostCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBSocialMediaPostCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBSocialMediaPostCardSection *)self dictionaryRepresentation];
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
  v55 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_backgroundColor)
  {
    backgroundColor = [(_SFPBSocialMediaPostCardSection *)self backgroundColor];
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
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBSocialMediaPostCardSection canBeHidden](self, "canBeHidden")}];
    [dictionary setObject:v7 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_footnote)
  {
    footnote = [(_SFPBSocialMediaPostCardSection *)self footnote];
    v9 = [footnote copy];
    [dictionary setObject:v9 forKeyedSubscript:@"footnote"];
  }

  if (self->_handle)
  {
    handle = [(_SFPBSocialMediaPostCardSection *)self handle];
    v11 = [handle copy];
    [dictionary setObject:v11 forKeyedSubscript:@"handle"];
  }

  if (self->_hasBottomPadding)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBSocialMediaPostCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [dictionary setObject:v12 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBSocialMediaPostCardSection hasTopPadding](self, "hasTopPadding")}];
    [dictionary setObject:v13 forKeyedSubscript:@"hasTopPadding"];
  }

  if (self->_name)
  {
    name = [(_SFPBSocialMediaPostCardSection *)self name];
    v15 = [name copy];
    [dictionary setObject:v15 forKeyedSubscript:@"name"];
  }

  if (self->_nameMaxLines)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBSocialMediaPostCardSection nameMaxLines](self, "nameMaxLines")}];
    [dictionary setObject:v16 forKeyedSubscript:@"nameMaxLines"];
  }

  if (self->_nameNoWrap)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBSocialMediaPostCardSection nameNoWrap](self, "nameNoWrap")}];
    [dictionary setObject:v17 forKeyedSubscript:@"nameNoWrap"];
  }

  if (self->_picture)
  {
    picture = [(_SFPBSocialMediaPostCardSection *)self picture];
    dictionaryRepresentation2 = [picture dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"picture"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"picture"];
    }
  }

  if (self->_post)
  {
    post = [(_SFPBSocialMediaPostCardSection *)self post];
    dictionaryRepresentation3 = [post dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"post"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"post"];
    }
  }

  if (self->_profilePicture)
  {
    profilePicture = [(_SFPBSocialMediaPostCardSection *)self profilePicture];
    dictionaryRepresentation4 = [profilePicture dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"profilePicture"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"profilePicture"];
    }
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation5 = [*(*(&v50 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation5)
          {
            [array addObject:dictionaryRepresentation5];
          }

          else
          {
            null5 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null5];
          }
        }

        v30 = [(NSArray *)v28 countByEnumeratingWithState:&v50 objects:v54 count:16];
      }

      while (v30);
    }

    [dictionary setObject:array forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    punchoutPickerDismissText = [(_SFPBSocialMediaPostCardSection *)self punchoutPickerDismissText];
    v36 = [punchoutPickerDismissText copy];
    [dictionary setObject:v36 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    punchoutPickerTitle = [(_SFPBSocialMediaPostCardSection *)self punchoutPickerTitle];
    v38 = [punchoutPickerTitle copy];
    [dictionary setObject:v38 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    separatorStyle = [(_SFPBSocialMediaPostCardSection *)self separatorStyle];
    if (separatorStyle >= 6)
    {
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", separatorStyle];
    }

    else
    {
      v40 = off_1E7ACE580[separatorStyle];
    }

    [dictionary setObject:v40 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_timestamp)
  {
    timestamp = [(_SFPBSocialMediaPostCardSection *)self timestamp];
    v42 = [timestamp copy];
    [dictionary setObject:v42 forKeyedSubscript:@"timestamp"];
  }

  if (self->_type)
  {
    type = [(_SFPBSocialMediaPostCardSection *)self type];
    v44 = [type copy];
    [dictionary setObject:v44 forKeyedSubscript:@"type"];
  }

  if (self->_verifiedGlyph)
  {
    verifiedGlyph = [(_SFPBSocialMediaPostCardSection *)self verifiedGlyph];
    dictionaryRepresentation6 = [verifiedGlyph dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"verifiedGlyph"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"verifiedGlyph"];
    }
  }

  v48 = *MEMORY[0x1E69E9840];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_73;
  }

  punchoutOptions = [(_SFPBSocialMediaPostCardSection *)self punchoutOptions];
  punchoutOptions2 = [equalCopy punchoutOptions];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_72;
  }

  punchoutOptions3 = [(_SFPBSocialMediaPostCardSection *)self punchoutOptions];
  if (punchoutOptions3)
  {
    v8 = punchoutOptions3;
    punchoutOptions4 = [(_SFPBSocialMediaPostCardSection *)self punchoutOptions];
    punchoutOptions5 = [equalCopy punchoutOptions];
    v11 = [punchoutOptions4 isEqual:punchoutOptions5];

    if (!v11)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBSocialMediaPostCardSection *)self punchoutPickerTitle];
  punchoutOptions2 = [equalCopy punchoutPickerTitle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_72;
  }

  punchoutPickerTitle = [(_SFPBSocialMediaPostCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    v13 = punchoutPickerTitle;
    punchoutPickerTitle2 = [(_SFPBSocialMediaPostCardSection *)self punchoutPickerTitle];
    punchoutPickerTitle3 = [equalCopy punchoutPickerTitle];
    v16 = [punchoutPickerTitle2 isEqual:punchoutPickerTitle3];

    if (!v16)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBSocialMediaPostCardSection *)self punchoutPickerDismissText];
  punchoutOptions2 = [equalCopy punchoutPickerDismissText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_72;
  }

  punchoutPickerDismissText = [(_SFPBSocialMediaPostCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    v18 = punchoutPickerDismissText;
    punchoutPickerDismissText2 = [(_SFPBSocialMediaPostCardSection *)self punchoutPickerDismissText];
    punchoutPickerDismissText3 = [equalCopy punchoutPickerDismissText];
    v21 = [punchoutPickerDismissText2 isEqual:punchoutPickerDismissText3];

    if (!v21)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [equalCopy canBeHidden])
  {
    goto LABEL_73;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [equalCopy hasTopPadding])
  {
    goto LABEL_73;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [equalCopy hasBottomPadding])
  {
    goto LABEL_73;
  }

  punchoutOptions = [(_SFPBSocialMediaPostCardSection *)self type];
  punchoutOptions2 = [equalCopy type];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_72;
  }

  type = [(_SFPBSocialMediaPostCardSection *)self type];
  if (type)
  {
    v26 = type;
    type2 = [(_SFPBSocialMediaPostCardSection *)self type];
    type3 = [equalCopy type];
    v29 = [type2 isEqual:type3];

    if (!v29)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [equalCopy separatorStyle])
  {
    goto LABEL_73;
  }

  punchoutOptions = [(_SFPBSocialMediaPostCardSection *)self backgroundColor];
  punchoutOptions2 = [equalCopy backgroundColor];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_72;
  }

  backgroundColor = [(_SFPBSocialMediaPostCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    v32 = backgroundColor;
    backgroundColor2 = [(_SFPBSocialMediaPostCardSection *)self backgroundColor];
    backgroundColor3 = [equalCopy backgroundColor];
    v35 = [backgroundColor2 isEqual:backgroundColor3];

    if (!v35)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBSocialMediaPostCardSection *)self name];
  punchoutOptions2 = [equalCopy name];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_72;
  }

  name = [(_SFPBSocialMediaPostCardSection *)self name];
  if (name)
  {
    v37 = name;
    name2 = [(_SFPBSocialMediaPostCardSection *)self name];
    name3 = [equalCopy name];
    v40 = [name2 isEqual:name3];

    if (!v40)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  nameNoWrap = self->_nameNoWrap;
  if (nameNoWrap != [equalCopy nameNoWrap])
  {
    goto LABEL_73;
  }

  nameMaxLines = self->_nameMaxLines;
  if (nameMaxLines != [equalCopy nameMaxLines])
  {
    goto LABEL_73;
  }

  punchoutOptions = [(_SFPBSocialMediaPostCardSection *)self handle];
  punchoutOptions2 = [equalCopy handle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_72;
  }

  handle = [(_SFPBSocialMediaPostCardSection *)self handle];
  if (handle)
  {
    v44 = handle;
    handle2 = [(_SFPBSocialMediaPostCardSection *)self handle];
    handle3 = [equalCopy handle];
    v47 = [handle2 isEqual:handle3];

    if (!v47)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBSocialMediaPostCardSection *)self verifiedGlyph];
  punchoutOptions2 = [equalCopy verifiedGlyph];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_72;
  }

  verifiedGlyph = [(_SFPBSocialMediaPostCardSection *)self verifiedGlyph];
  if (verifiedGlyph)
  {
    v49 = verifiedGlyph;
    verifiedGlyph2 = [(_SFPBSocialMediaPostCardSection *)self verifiedGlyph];
    verifiedGlyph3 = [equalCopy verifiedGlyph];
    v52 = [verifiedGlyph2 isEqual:verifiedGlyph3];

    if (!v52)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBSocialMediaPostCardSection *)self profilePicture];
  punchoutOptions2 = [equalCopy profilePicture];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_72;
  }

  profilePicture = [(_SFPBSocialMediaPostCardSection *)self profilePicture];
  if (profilePicture)
  {
    v54 = profilePicture;
    profilePicture2 = [(_SFPBSocialMediaPostCardSection *)self profilePicture];
    profilePicture3 = [equalCopy profilePicture];
    v57 = [profilePicture2 isEqual:profilePicture3];

    if (!v57)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBSocialMediaPostCardSection *)self post];
  punchoutOptions2 = [equalCopy post];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_72;
  }

  post = [(_SFPBSocialMediaPostCardSection *)self post];
  if (post)
  {
    v59 = post;
    post2 = [(_SFPBSocialMediaPostCardSection *)self post];
    post3 = [equalCopy post];
    v62 = [post2 isEqual:post3];

    if (!v62)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBSocialMediaPostCardSection *)self picture];
  punchoutOptions2 = [equalCopy picture];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_72;
  }

  picture = [(_SFPBSocialMediaPostCardSection *)self picture];
  if (picture)
  {
    v64 = picture;
    picture2 = [(_SFPBSocialMediaPostCardSection *)self picture];
    picture3 = [equalCopy picture];
    v67 = [picture2 isEqual:picture3];

    if (!v67)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBSocialMediaPostCardSection *)self timestamp];
  punchoutOptions2 = [equalCopy timestamp];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_72;
  }

  timestamp = [(_SFPBSocialMediaPostCardSection *)self timestamp];
  if (timestamp)
  {
    v69 = timestamp;
    timestamp2 = [(_SFPBSocialMediaPostCardSection *)self timestamp];
    timestamp3 = [equalCopy timestamp];
    v72 = [timestamp2 isEqual:timestamp3];

    if (!v72)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBSocialMediaPostCardSection *)self footnote];
  punchoutOptions2 = [equalCopy footnote];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
LABEL_72:

    goto LABEL_73;
  }

  footnote = [(_SFPBSocialMediaPostCardSection *)self footnote];
  if (!footnote)
  {

LABEL_76:
    v78 = 1;
    goto LABEL_74;
  }

  v74 = footnote;
  footnote2 = [(_SFPBSocialMediaPostCardSection *)self footnote];
  footnote3 = [equalCopy footnote];
  v77 = [footnote2 isEqual:footnote3];

  if (v77)
  {
    goto LABEL_76;
  }

LABEL_73:
  v78 = 0;
LABEL_74:

  return v78;
}

- (void)writeTo:(id)to
{
  v29 = *MEMORY[0x1E69E9840];
  toCopy = to;
  punchoutOptions = [(_SFPBSocialMediaPostCardSection *)self punchoutOptions];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = [punchoutOptions countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(punchoutOptions);
        }

        v10 = *(*(&v24 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [punchoutOptions countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v7);
  }

  punchoutPickerTitle = [(_SFPBSocialMediaPostCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    PBDataWriterWriteStringField();
  }

  punchoutPickerDismissText = [(_SFPBSocialMediaPostCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
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

  type = [(_SFPBSocialMediaPostCardSection *)self type];
  if (type)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBSocialMediaPostCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  backgroundColor = [(_SFPBSocialMediaPostCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    PBDataWriterWriteSubmessage();
  }

  name = [(_SFPBSocialMediaPostCardSection *)self name];
  if (name)
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

  handle = [(_SFPBSocialMediaPostCardSection *)self handle];
  if (handle)
  {
    PBDataWriterWriteStringField();
  }

  verifiedGlyph = [(_SFPBSocialMediaPostCardSection *)self verifiedGlyph];
  if (verifiedGlyph)
  {
    PBDataWriterWriteSubmessage();
  }

  profilePicture = [(_SFPBSocialMediaPostCardSection *)self profilePicture];
  if (profilePicture)
  {
    PBDataWriterWriteSubmessage();
  }

  post = [(_SFPBSocialMediaPostCardSection *)self post];
  if (post)
  {
    PBDataWriterWriteSubmessage();
  }

  picture = [(_SFPBSocialMediaPostCardSection *)self picture];
  if (picture)
  {
    PBDataWriterWriteSubmessage();
  }

  timestamp = [(_SFPBSocialMediaPostCardSection *)self timestamp];
  if (timestamp)
  {
    PBDataWriterWriteStringField();
  }

  footnote = [(_SFPBSocialMediaPostCardSection *)self footnote];
  if (footnote)
  {
    PBDataWriterWriteStringField();
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)setFootnote:(id)footnote
{
  v4 = [footnote copy];
  footnote = self->_footnote;
  self->_footnote = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setTimestamp:(id)timestamp
{
  v4 = [timestamp copy];
  timestamp = self->_timestamp;
  self->_timestamp = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setHandle:(id)handle
{
  v4 = [handle copy];
  handle = self->_handle;
  self->_handle = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setName:(id)name
{
  v4 = [name copy];
  name = self->_name;
  self->_name = v4;

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