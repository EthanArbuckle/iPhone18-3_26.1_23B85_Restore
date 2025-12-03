@interface _SFPBStrokeAnimationCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBStrokeAnimationCardSection)initWithDictionary:(id)dictionary;
- (_SFPBStrokeAnimationCardSection)initWithFacade:(id)facade;
- (_SFPBStrokeAnimationCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCharacters:(id)characters;
- (void)addPronunciations:(id)pronunciations;
- (void)addPunchoutOptions:(id)options;
- (void)addStrokeNames:(id)names;
- (void)setCharacters:(id)characters;
- (void)setPronunciations:(id)pronunciations;
- (void)setPunchoutOptions:(id)options;
- (void)setPunchoutPickerDismissText:(id)text;
- (void)setPunchoutPickerTitle:(id)title;
- (void)setStrokeAnimationRepresentation:(id)representation;
- (void)setStrokeNames:(id)names;
- (void)setType:(id)type;
- (void)writeTo:(id)to;
@end

@implementation _SFPBStrokeAnimationCardSection

- (_SFPBStrokeAnimationCardSection)initWithFacade:(id)facade
{
  v70 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBStrokeAnimationCardSection *)self init];
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

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    punchoutOptions2 = [facadeCopy punchoutOptions];
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v62 objects:v69 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v63;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v63 != v11)
          {
            objc_enumerationMutation(punchoutOptions2);
          }

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v62 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v62 objects:v69 count:16];
      }

      while (v10);
    }

    [(_SFPBStrokeAnimationCardSection *)v5 setPunchoutOptions:v7];
    punchoutPickerTitle = [facadeCopy punchoutPickerTitle];

    if (punchoutPickerTitle)
    {
      punchoutPickerTitle2 = [facadeCopy punchoutPickerTitle];
      [(_SFPBStrokeAnimationCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle2];
    }

    punchoutPickerDismissText = [facadeCopy punchoutPickerDismissText];

    if (punchoutPickerDismissText)
    {
      punchoutPickerDismissText2 = [facadeCopy punchoutPickerDismissText];
      [(_SFPBStrokeAnimationCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText2];
    }

    if ([facadeCopy hasCanBeHidden])
    {
      -[_SFPBStrokeAnimationCardSection setCanBeHidden:](v5, "setCanBeHidden:", [facadeCopy canBeHidden]);
    }

    if ([facadeCopy hasHasTopPadding])
    {
      -[_SFPBStrokeAnimationCardSection setHasTopPadding:](v5, "setHasTopPadding:", [facadeCopy hasTopPadding]);
    }

    if ([facadeCopy hasHasBottomPadding])
    {
      -[_SFPBStrokeAnimationCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [facadeCopy hasBottomPadding]);
    }

    type = [facadeCopy type];

    if (type)
    {
      type2 = [facadeCopy type];
      [(_SFPBStrokeAnimationCardSection *)v5 setType:type2];
    }

    if ([facadeCopy hasSeparatorStyle])
    {
      -[_SFPBStrokeAnimationCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [facadeCopy separatorStyle]);
    }

    backgroundColor = [facadeCopy backgroundColor];

    if (backgroundColor)
    {
      v21 = [_SFPBColor alloc];
      backgroundColor2 = [facadeCopy backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:backgroundColor2];
      [(_SFPBStrokeAnimationCardSection *)v5 setBackgroundColor:v23];
    }

    strokeAnimationRepresentation = [facadeCopy strokeAnimationRepresentation];

    if (strokeAnimationRepresentation)
    {
      strokeAnimationRepresentation2 = [facadeCopy strokeAnimationRepresentation];
      [(_SFPBStrokeAnimationCardSection *)v5 setStrokeAnimationRepresentation:strokeAnimationRepresentation2];
    }

    strokeNames = [facadeCopy strokeNames];
    if (strokeNames)
    {
      v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v27 = 0;
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    strokeNames2 = [facadeCopy strokeNames];
    v29 = [strokeNames2 countByEnumeratingWithState:&v58 objects:v68 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v59;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v59 != v31)
          {
            objc_enumerationMutation(strokeNames2);
          }

          if (*(*(&v58 + 1) + 8 * j))
          {
            [v27 addObject:?];
          }
        }

        v30 = [strokeNames2 countByEnumeratingWithState:&v58 objects:v68 count:16];
      }

      while (v30);
    }

    [(_SFPBStrokeAnimationCardSection *)v5 setStrokeNames:v27];
    characters = [facadeCopy characters];
    if (characters)
    {
      v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v34 = 0;
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    characters2 = [facadeCopy characters];
    v36 = [characters2 countByEnumeratingWithState:&v54 objects:v67 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v55;
      do
      {
        for (k = 0; k != v37; ++k)
        {
          if (*v55 != v38)
          {
            objc_enumerationMutation(characters2);
          }

          if (*(*(&v54 + 1) + 8 * k))
          {
            [v34 addObject:?];
          }
        }

        v37 = [characters2 countByEnumeratingWithState:&v54 objects:v67 count:16];
      }

      while (v37);
    }

    [(_SFPBStrokeAnimationCardSection *)v5 setCharacters:v34];
    pronunciations = [facadeCopy pronunciations];
    if (pronunciations)
    {
      v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v41 = 0;
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    pronunciations2 = [facadeCopy pronunciations];
    v43 = [pronunciations2 countByEnumeratingWithState:&v50 objects:v66 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v51;
      do
      {
        for (m = 0; m != v44; ++m)
        {
          if (*v51 != v45)
          {
            objc_enumerationMutation(pronunciations2);
          }

          if (*(*(&v50 + 1) + 8 * m))
          {
            [v41 addObject:?];
          }
        }

        v44 = [pronunciations2 countByEnumeratingWithState:&v50 objects:v66 count:16];
      }

      while (v44);
    }

    [(_SFPBStrokeAnimationCardSection *)v5 setPronunciations:v41];
    v47 = v5;
  }

  v48 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBStrokeAnimationCardSection)initWithDictionary:(id)dictionary
{
  v88 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v83.receiver = self;
  v83.super_class = _SFPBStrokeAnimationCardSection;
  v5 = [(_SFPBStrokeAnimationCardSection *)&v83 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"punchoutOptions"];
    objc_opt_class();
    v66 = v6;
    if (objc_opt_isKindOfClass())
    {
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v79 objects:v87 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v80;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v80 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v79 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [[_SFPBPunchout alloc] initWithDictionary:v12];
              [(_SFPBStrokeAnimationCardSection *)v5 addPunchoutOptions:v13];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v79 objects:v87 count:16];
        }

        while (v9);
      }
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBStrokeAnimationCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBStrokeAnimationCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    v65 = v18;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBStrokeAnimationCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v18 BOOLValue]);
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    v64 = v19;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBStrokeAnimationCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v19 BOOLValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    v63 = v20;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBStrokeAnimationCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v20 BOOLValue]);
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    objc_opt_class();
    v62 = v21;
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBStrokeAnimationCardSection *)v5 setType:v22];
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    v61 = v23;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBStrokeAnimationCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v23 intValue]);
    }

    v60 = v14;
    v24 = [dictionaryCopy objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBColor alloc] initWithDictionary:v24];
      [(_SFPBStrokeAnimationCardSection *)v5 setBackgroundColor:v25];
    }

    v58 = v24;
    v59 = v16;
    v26 = [dictionaryCopy objectForKeyedSubscript:@"strokeAnimationRepresentation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [v26 copy];
      [(_SFPBStrokeAnimationCardSection *)v5 setStrokeAnimationRepresentation:v27];
    }

    v57 = v26;
    v28 = [dictionaryCopy objectForKeyedSubscript:@"strokeNames"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v29 = v28;
      v30 = [v29 countByEnumeratingWithState:&v75 objects:v86 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v76;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v76 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v75 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v35 = [v34 copy];
              [(_SFPBStrokeAnimationCardSection *)v5 addStrokeNames:v35];
            }
          }

          v31 = [v29 countByEnumeratingWithState:&v75 objects:v86 count:16];
        }

        while (v31);
      }
    }

    v36 = [dictionaryCopy objectForKeyedSubscript:@"characters"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = dictionaryCopy;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v38 = v36;
      v39 = [v38 countByEnumeratingWithState:&v71 objects:v85 count:16];
      if (v39)
      {
        v40 = v39;
        v41 = *v72;
        do
        {
          for (k = 0; k != v40; ++k)
          {
            if (*v72 != v41)
            {
              objc_enumerationMutation(v38);
            }

            v43 = *(*(&v71 + 1) + 8 * k);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v44 = [v43 copy];
              [(_SFPBStrokeAnimationCardSection *)v5 addCharacters:v44];
            }
          }

          v40 = [v38 countByEnumeratingWithState:&v71 objects:v85 count:16];
        }

        while (v40);
      }

      dictionaryCopy = v37;
    }

    v45 = [dictionaryCopy objectForKeyedSubscript:@"pronunciations"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v56 = dictionaryCopy;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v46 = v45;
      v47 = [v46 countByEnumeratingWithState:&v67 objects:v84 count:16];
      if (v47)
      {
        v48 = v47;
        v49 = *v68;
        do
        {
          for (m = 0; m != v48; ++m)
          {
            if (*v68 != v49)
            {
              objc_enumerationMutation(v46);
            }

            v51 = *(*(&v67 + 1) + 8 * m);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v52 = [v51 copy];
              [(_SFPBStrokeAnimationCardSection *)v5 addPronunciations:v52];
            }
          }

          v48 = [v46 countByEnumeratingWithState:&v67 objects:v84 count:16];
        }

        while (v48);
      }

      dictionaryCopy = v56;
    }

    v53 = v5;
  }

  v54 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBStrokeAnimationCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBStrokeAnimationCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBStrokeAnimationCardSection *)self dictionaryRepresentation];
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
  v41 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_backgroundColor)
  {
    backgroundColor = [(_SFPBStrokeAnimationCardSection *)self backgroundColor];
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
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBStrokeAnimationCardSection canBeHidden](self, "canBeHidden")}];
    [dictionary setObject:v7 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_characters)
  {
    characters = [(_SFPBStrokeAnimationCardSection *)self characters];
    v9 = [characters copy];
    [dictionary setObject:v9 forKeyedSubscript:@"characters"];
  }

  if (self->_hasBottomPadding)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBStrokeAnimationCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [dictionary setObject:v10 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBStrokeAnimationCardSection hasTopPadding](self, "hasTopPadding")}];
    [dictionary setObject:v11 forKeyedSubscript:@"hasTopPadding"];
  }

  if (self->_pronunciations)
  {
    pronunciations = [(_SFPBStrokeAnimationCardSection *)self pronunciations];
    v13 = [pronunciations copy];
    [dictionary setObject:v13 forKeyedSubscript:@"pronunciations"];
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v15 = self->_punchoutOptions;
    v16 = [(NSArray *)v15 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v37;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v37 != v18)
          {
            objc_enumerationMutation(v15);
          }

          dictionaryRepresentation2 = [*(*(&v36 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation2)
          {
            [array addObject:dictionaryRepresentation2];
          }

          else
          {
            null2 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null2];
          }
        }

        v17 = [(NSArray *)v15 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v17);
    }

    [dictionary setObject:array forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    punchoutPickerDismissText = [(_SFPBStrokeAnimationCardSection *)self punchoutPickerDismissText];
    v23 = [punchoutPickerDismissText copy];
    [dictionary setObject:v23 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    punchoutPickerTitle = [(_SFPBStrokeAnimationCardSection *)self punchoutPickerTitle];
    v25 = [punchoutPickerTitle copy];
    [dictionary setObject:v25 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    separatorStyle = [(_SFPBStrokeAnimationCardSection *)self separatorStyle];
    if (separatorStyle >= 6)
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", separatorStyle];
    }

    else
    {
      v27 = off_1E7ACE580[separatorStyle];
    }

    [dictionary setObject:v27 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_strokeAnimationRepresentation)
  {
    strokeAnimationRepresentation = [(_SFPBStrokeAnimationCardSection *)self strokeAnimationRepresentation];
    v29 = [strokeAnimationRepresentation copy];
    [dictionary setObject:v29 forKeyedSubscript:@"strokeAnimationRepresentation"];
  }

  if (self->_strokeNames)
  {
    strokeNames = [(_SFPBStrokeAnimationCardSection *)self strokeNames];
    v31 = [strokeNames copy];
    [dictionary setObject:v31 forKeyedSubscript:@"strokeNames"];
  }

  if (self->_type)
  {
    type = [(_SFPBStrokeAnimationCardSection *)self type];
    v33 = [type copy];
    [dictionary setObject:v33 forKeyedSubscript:@"type"];
  }

  v34 = *MEMORY[0x1E69E9840];

  return dictionary;
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
  v11 = v10 ^ [(NSString *)self->_strokeAnimationRepresentation hash];
  v12 = v11 ^ [(NSArray *)self->_strokeNames hash];
  v13 = v12 ^ [(NSArray *)self->_characters hash];
  return v9 ^ v13 ^ [(NSArray *)self->_pronunciations hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_51;
  }

  punchoutOptions = [(_SFPBStrokeAnimationCardSection *)self punchoutOptions];
  punchoutOptions2 = [equalCopy punchoutOptions];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_50;
  }

  punchoutOptions3 = [(_SFPBStrokeAnimationCardSection *)self punchoutOptions];
  if (punchoutOptions3)
  {
    v8 = punchoutOptions3;
    punchoutOptions4 = [(_SFPBStrokeAnimationCardSection *)self punchoutOptions];
    punchoutOptions5 = [equalCopy punchoutOptions];
    v11 = [punchoutOptions4 isEqual:punchoutOptions5];

    if (!v11)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBStrokeAnimationCardSection *)self punchoutPickerTitle];
  punchoutOptions2 = [equalCopy punchoutPickerTitle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_50;
  }

  punchoutPickerTitle = [(_SFPBStrokeAnimationCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    v13 = punchoutPickerTitle;
    punchoutPickerTitle2 = [(_SFPBStrokeAnimationCardSection *)self punchoutPickerTitle];
    punchoutPickerTitle3 = [equalCopy punchoutPickerTitle];
    v16 = [punchoutPickerTitle2 isEqual:punchoutPickerTitle3];

    if (!v16)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBStrokeAnimationCardSection *)self punchoutPickerDismissText];
  punchoutOptions2 = [equalCopy punchoutPickerDismissText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_50;
  }

  punchoutPickerDismissText = [(_SFPBStrokeAnimationCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    v18 = punchoutPickerDismissText;
    punchoutPickerDismissText2 = [(_SFPBStrokeAnimationCardSection *)self punchoutPickerDismissText];
    punchoutPickerDismissText3 = [equalCopy punchoutPickerDismissText];
    v21 = [punchoutPickerDismissText2 isEqual:punchoutPickerDismissText3];

    if (!v21)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [equalCopy canBeHidden])
  {
    goto LABEL_51;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [equalCopy hasTopPadding])
  {
    goto LABEL_51;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [equalCopy hasBottomPadding])
  {
    goto LABEL_51;
  }

  punchoutOptions = [(_SFPBStrokeAnimationCardSection *)self type];
  punchoutOptions2 = [equalCopy type];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_50;
  }

  type = [(_SFPBStrokeAnimationCardSection *)self type];
  if (type)
  {
    v26 = type;
    type2 = [(_SFPBStrokeAnimationCardSection *)self type];
    type3 = [equalCopy type];
    v29 = [type2 isEqual:type3];

    if (!v29)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [equalCopy separatorStyle])
  {
    goto LABEL_51;
  }

  punchoutOptions = [(_SFPBStrokeAnimationCardSection *)self backgroundColor];
  punchoutOptions2 = [equalCopy backgroundColor];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_50;
  }

  backgroundColor = [(_SFPBStrokeAnimationCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    v32 = backgroundColor;
    backgroundColor2 = [(_SFPBStrokeAnimationCardSection *)self backgroundColor];
    backgroundColor3 = [equalCopy backgroundColor];
    v35 = [backgroundColor2 isEqual:backgroundColor3];

    if (!v35)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBStrokeAnimationCardSection *)self strokeAnimationRepresentation];
  punchoutOptions2 = [equalCopy strokeAnimationRepresentation];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_50;
  }

  strokeAnimationRepresentation = [(_SFPBStrokeAnimationCardSection *)self strokeAnimationRepresentation];
  if (strokeAnimationRepresentation)
  {
    v37 = strokeAnimationRepresentation;
    strokeAnimationRepresentation2 = [(_SFPBStrokeAnimationCardSection *)self strokeAnimationRepresentation];
    strokeAnimationRepresentation3 = [equalCopy strokeAnimationRepresentation];
    v40 = [strokeAnimationRepresentation2 isEqual:strokeAnimationRepresentation3];

    if (!v40)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBStrokeAnimationCardSection *)self strokeNames];
  punchoutOptions2 = [equalCopy strokeNames];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_50;
  }

  strokeNames = [(_SFPBStrokeAnimationCardSection *)self strokeNames];
  if (strokeNames)
  {
    v42 = strokeNames;
    strokeNames2 = [(_SFPBStrokeAnimationCardSection *)self strokeNames];
    strokeNames3 = [equalCopy strokeNames];
    v45 = [strokeNames2 isEqual:strokeNames3];

    if (!v45)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBStrokeAnimationCardSection *)self characters];
  punchoutOptions2 = [equalCopy characters];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_50;
  }

  characters = [(_SFPBStrokeAnimationCardSection *)self characters];
  if (characters)
  {
    v47 = characters;
    characters2 = [(_SFPBStrokeAnimationCardSection *)self characters];
    characters3 = [equalCopy characters];
    v50 = [characters2 isEqual:characters3];

    if (!v50)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBStrokeAnimationCardSection *)self pronunciations];
  punchoutOptions2 = [equalCopy pronunciations];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
LABEL_50:

    goto LABEL_51;
  }

  pronunciations = [(_SFPBStrokeAnimationCardSection *)self pronunciations];
  if (!pronunciations)
  {

LABEL_54:
    v56 = 1;
    goto LABEL_52;
  }

  v52 = pronunciations;
  pronunciations2 = [(_SFPBStrokeAnimationCardSection *)self pronunciations];
  pronunciations3 = [equalCopy pronunciations];
  v55 = [pronunciations2 isEqual:pronunciations3];

  if (v55)
  {
    goto LABEL_54;
  }

LABEL_51:
  v56 = 0;
LABEL_52:

  return v56;
}

- (void)writeTo:(id)to
{
  v55 = *MEMORY[0x1E69E9840];
  toCopy = to;
  punchoutOptions = [(_SFPBStrokeAnimationCardSection *)self punchoutOptions];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v6 = [punchoutOptions countByEnumeratingWithState:&v47 objects:v54 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v48;
    do
    {
      v9 = 0;
      do
      {
        if (*v48 != v8)
        {
          objc_enumerationMutation(punchoutOptions);
        }

        v10 = *(*(&v47 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [punchoutOptions countByEnumeratingWithState:&v47 objects:v54 count:16];
    }

    while (v7);
  }

  punchoutPickerTitle = [(_SFPBStrokeAnimationCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    PBDataWriterWriteStringField();
  }

  punchoutPickerDismissText = [(_SFPBStrokeAnimationCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBStrokeAnimationCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBStrokeAnimationCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBStrokeAnimationCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  type = [(_SFPBStrokeAnimationCardSection *)self type];
  if (type)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBStrokeAnimationCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  backgroundColor = [(_SFPBStrokeAnimationCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    PBDataWriterWriteSubmessage();
  }

  strokeAnimationRepresentation = [(_SFPBStrokeAnimationCardSection *)self strokeAnimationRepresentation];
  if (strokeAnimationRepresentation)
  {
    PBDataWriterWriteStringField();
  }

  strokeNames = [(_SFPBStrokeAnimationCardSection *)self strokeNames];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v17 = [strokeNames countByEnumeratingWithState:&v43 objects:v53 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v44;
    do
    {
      v20 = 0;
      do
      {
        if (*v44 != v19)
        {
          objc_enumerationMutation(strokeNames);
        }

        v21 = *(*(&v43 + 1) + 8 * v20);
        PBDataWriterWriteStringField();
        ++v20;
      }

      while (v18 != v20);
      v18 = [strokeNames countByEnumeratingWithState:&v43 objects:v53 count:16];
    }

    while (v18);
  }

  characters = [(_SFPBStrokeAnimationCardSection *)self characters];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v23 = [characters countByEnumeratingWithState:&v39 objects:v52 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v40;
    do
    {
      v26 = 0;
      do
      {
        if (*v40 != v25)
        {
          objc_enumerationMutation(characters);
        }

        v27 = *(*(&v39 + 1) + 8 * v26);
        PBDataWriterWriteStringField();
        ++v26;
      }

      while (v24 != v26);
      v24 = [characters countByEnumeratingWithState:&v39 objects:v52 count:16];
    }

    while (v24);
  }

  pronunciations = [(_SFPBStrokeAnimationCardSection *)self pronunciations];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v29 = [pronunciations countByEnumeratingWithState:&v35 objects:v51 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v36;
    do
    {
      v32 = 0;
      do
      {
        if (*v36 != v31)
        {
          objc_enumerationMutation(pronunciations);
        }

        v33 = *(*(&v35 + 1) + 8 * v32);
        PBDataWriterWriteStringField();
        ++v32;
      }

      while (v30 != v32);
      v30 = [pronunciations countByEnumeratingWithState:&v35 objects:v51 count:16];
    }

    while (v30);
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (void)addPronunciations:(id)pronunciations
{
  pronunciationsCopy = pronunciations;
  pronunciations = self->_pronunciations;
  v8 = pronunciationsCopy;
  if (!pronunciations)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_pronunciations;
    self->_pronunciations = array;

    pronunciationsCopy = v8;
    pronunciations = self->_pronunciations;
  }

  [(NSArray *)pronunciations addObject:pronunciationsCopy];
}

- (void)setPronunciations:(id)pronunciations
{
  v4 = [pronunciations copy];
  pronunciations = self->_pronunciations;
  self->_pronunciations = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addCharacters:(id)characters
{
  charactersCopy = characters;
  characters = self->_characters;
  v8 = charactersCopy;
  if (!characters)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_characters;
    self->_characters = array;

    charactersCopy = v8;
    characters = self->_characters;
  }

  [(NSArray *)characters addObject:charactersCopy];
}

- (void)setCharacters:(id)characters
{
  v4 = [characters copy];
  characters = self->_characters;
  self->_characters = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addStrokeNames:(id)names
{
  namesCopy = names;
  strokeNames = self->_strokeNames;
  v8 = namesCopy;
  if (!strokeNames)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_strokeNames;
    self->_strokeNames = array;

    namesCopy = v8;
    strokeNames = self->_strokeNames;
  }

  [(NSArray *)strokeNames addObject:namesCopy];
}

- (void)setStrokeNames:(id)names
{
  v4 = [names copy];
  strokeNames = self->_strokeNames;
  self->_strokeNames = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setStrokeAnimationRepresentation:(id)representation
{
  v4 = [representation copy];
  strokeAnimationRepresentation = self->_strokeAnimationRepresentation;
  self->_strokeAnimationRepresentation = v4;

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