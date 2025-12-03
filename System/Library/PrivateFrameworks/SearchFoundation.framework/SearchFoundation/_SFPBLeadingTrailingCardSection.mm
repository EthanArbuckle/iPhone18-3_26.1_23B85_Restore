@interface _SFPBLeadingTrailingCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBLeadingTrailingCardSection)initWithDictionary:(id)dictionary;
- (_SFPBLeadingTrailingCardSection)initWithFacade:(id)facade;
- (_SFPBLeadingTrailingCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addLeadingCardSections:(id)sections;
- (void)addPunchoutOptions:(id)options;
- (void)addTrailingCardSections:(id)sections;
- (void)setLeadingCardSections:(id)sections;
- (void)setPunchoutOptions:(id)options;
- (void)setPunchoutPickerDismissText:(id)text;
- (void)setPunchoutPickerTitle:(id)title;
- (void)setTrailingCardSections:(id)sections;
- (void)setType:(id)type;
- (void)writeTo:(id)to;
@end

@implementation _SFPBLeadingTrailingCardSection

- (_SFPBLeadingTrailingCardSection)initWithFacade:(id)facade
{
  v61 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBLeadingTrailingCardSection *)self init];
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

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    punchoutOptions2 = [facadeCopy punchoutOptions];
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v54 objects:v60 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v55;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v55 != v11)
          {
            objc_enumerationMutation(punchoutOptions2);
          }

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v54 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v54 objects:v60 count:16];
      }

      while (v10);
    }

    [(_SFPBLeadingTrailingCardSection *)v5 setPunchoutOptions:v7];
    punchoutPickerTitle = [facadeCopy punchoutPickerTitle];

    if (punchoutPickerTitle)
    {
      punchoutPickerTitle2 = [facadeCopy punchoutPickerTitle];
      [(_SFPBLeadingTrailingCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle2];
    }

    punchoutPickerDismissText = [facadeCopy punchoutPickerDismissText];

    if (punchoutPickerDismissText)
    {
      punchoutPickerDismissText2 = [facadeCopy punchoutPickerDismissText];
      [(_SFPBLeadingTrailingCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText2];
    }

    if ([facadeCopy hasCanBeHidden])
    {
      -[_SFPBLeadingTrailingCardSection setCanBeHidden:](v5, "setCanBeHidden:", [facadeCopy canBeHidden]);
    }

    if ([facadeCopy hasHasTopPadding])
    {
      -[_SFPBLeadingTrailingCardSection setHasTopPadding:](v5, "setHasTopPadding:", [facadeCopy hasTopPadding]);
    }

    if ([facadeCopy hasHasBottomPadding])
    {
      -[_SFPBLeadingTrailingCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [facadeCopy hasBottomPadding]);
    }

    type = [facadeCopy type];

    if (type)
    {
      type2 = [facadeCopy type];
      [(_SFPBLeadingTrailingCardSection *)v5 setType:type2];
    }

    if ([facadeCopy hasSeparatorStyle])
    {
      -[_SFPBLeadingTrailingCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [facadeCopy separatorStyle]);
    }

    backgroundColor = [facadeCopy backgroundColor];

    if (backgroundColor)
    {
      v21 = [_SFPBColor alloc];
      backgroundColor2 = [facadeCopy backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:backgroundColor2];
      [(_SFPBLeadingTrailingCardSection *)v5 setBackgroundColor:v23];
    }

    leadingCardSections = [facadeCopy leadingCardSections];
    if (leadingCardSections)
    {
      v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v25 = 0;
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    leadingCardSections2 = [facadeCopy leadingCardSections];
    v27 = [leadingCardSections2 countByEnumeratingWithState:&v50 objects:v59 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v51;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v51 != v29)
          {
            objc_enumerationMutation(leadingCardSections2);
          }

          v31 = [[_SFPBCardSection alloc] initWithFacade:*(*(&v50 + 1) + 8 * j)];
          if (v31)
          {
            [v25 addObject:v31];
          }
        }

        v28 = [leadingCardSections2 countByEnumeratingWithState:&v50 objects:v59 count:16];
      }

      while (v28);
    }

    [(_SFPBLeadingTrailingCardSection *)v5 setLeadingCardSections:v25];
    trailingCardSections = [facadeCopy trailingCardSections];
    v45 = v5;
    if (trailingCardSections)
    {
      v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v33 = 0;
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    trailingCardSections2 = [facadeCopy trailingCardSections];
    v35 = [trailingCardSections2 countByEnumeratingWithState:&v46 objects:v58 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v47;
      do
      {
        for (k = 0; k != v36; ++k)
        {
          if (*v47 != v37)
          {
            objc_enumerationMutation(trailingCardSections2);
          }

          v39 = [[_SFPBCardSection alloc] initWithFacade:*(*(&v46 + 1) + 8 * k)];
          if (v39)
          {
            [v33 addObject:v39];
          }
        }

        v36 = [trailingCardSections2 countByEnumeratingWithState:&v46 objects:v58 count:16];
      }

      while (v36);
    }

    v5 = v45;
    [(_SFPBLeadingTrailingCardSection *)v45 setTrailingCardSections:v33];
    if ([facadeCopy hasLeadingToTrailingRatio])
    {
      v40 = [_SFPBGraphicalFloat alloc];
      [facadeCopy leadingToTrailingRatio];
      v41 = [(_SFPBGraphicalFloat *)v40 initWithCGFloat:?];
      [(_SFPBLeadingTrailingCardSection *)v45 setLeadingToTrailingRatio:v41];
    }

    v42 = v45;
  }

  v43 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBLeadingTrailingCardSection)initWithDictionary:(id)dictionary
{
  v73 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v69.receiver = self;
  v69.super_class = _SFPBLeadingTrailingCardSection;
  v5 = [(_SFPBLeadingTrailingCardSection *)&v69 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"punchoutOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v65 objects:v72 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v66;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v66 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v65 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [[_SFPBPunchout alloc] initWithDictionary:v12];
              [(_SFPBLeadingTrailingCardSection *)v5 addPunchoutOptions:v13];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v65 objects:v72 count:16];
        }

        while (v9);
      }
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBLeadingTrailingCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBLeadingTrailingCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    v50 = v16;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    v56 = v18;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBLeadingTrailingCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v18 BOOLValue]);
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    v55 = v19;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBLeadingTrailingCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v19 BOOLValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    v54 = v20;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBLeadingTrailingCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v20 BOOLValue]);
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    objc_opt_class();
    v53 = v21;
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBLeadingTrailingCardSection *)v5 setType:v22];
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBLeadingTrailingCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v23 intValue]);
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBColor alloc] initWithDictionary:v24];
      [(_SFPBLeadingTrailingCardSection *)v5 setBackgroundColor:v25];
    }

    v48 = v24;
    v26 = [dictionaryCopy objectForKeyedSubscript:@"leadingCardSections"];
    objc_opt_class();
    v52 = v26;
    v51 = v14;
    v49 = v23;
    if (objc_opt_isKindOfClass())
    {
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v27 = v26;
      v28 = [v27 countByEnumeratingWithState:&v61 objects:v71 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v62;
        do
        {
          for (j = 0; j != v29; ++j)
          {
            if (*v62 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v61 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v33 = [[_SFPBCardSection alloc] initWithDictionary:v32];
              [(_SFPBLeadingTrailingCardSection *)v5 addLeadingCardSections:v33];
            }
          }

          v29 = [v27 countByEnumeratingWithState:&v61 objects:v71 count:16];
        }

        while (v29);
      }

      v14 = v51;
      v23 = v49;
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"trailingCardSections"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = v6;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v35 = v34;
      v36 = [v35 countByEnumeratingWithState:&v57 objects:v70 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = *v58;
        do
        {
          for (k = 0; k != v37; ++k)
          {
            if (*v58 != v38)
            {
              objc_enumerationMutation(v35);
            }

            v40 = *(*(&v57 + 1) + 8 * k);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v41 = [[_SFPBCardSection alloc] initWithDictionary:v40];
              [(_SFPBLeadingTrailingCardSection *)v5 addTrailingCardSections:v41];
            }
          }

          v37 = [v35 countByEnumeratingWithState:&v57 objects:v70 count:16];
        }

        while (v37);
      }

      v6 = v47;
      v14 = v51;
      v23 = v49;
    }

    v42 = [dictionaryCopy objectForKeyedSubscript:{@"leadingToTrailingRatio", v47}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = [[_SFPBGraphicalFloat alloc] initWithDictionary:v42];
      [(_SFPBLeadingTrailingCardSection *)v5 setLeadingToTrailingRatio:v43];
    }

    v44 = v5;
  }

  v45 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBLeadingTrailingCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBLeadingTrailingCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBLeadingTrailingCardSection *)self dictionaryRepresentation];
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
  v62 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_backgroundColor)
  {
    backgroundColor = [(_SFPBLeadingTrailingCardSection *)self backgroundColor];
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
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBLeadingTrailingCardSection canBeHidden](self, "canBeHidden")}];
    [dictionary setObject:v7 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_hasBottomPadding)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBLeadingTrailingCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [dictionary setObject:v8 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBLeadingTrailingCardSection hasTopPadding](self, "hasTopPadding")}];
    [dictionary setObject:v9 forKeyedSubscript:@"hasTopPadding"];
  }

  if ([(NSArray *)self->_leadingCardSections count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v11 = self->_leadingCardSections;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v55 objects:v61 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v56;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v56 != v14)
          {
            objc_enumerationMutation(v11);
          }

          dictionaryRepresentation2 = [*(*(&v55 + 1) + 8 * i) dictionaryRepresentation];
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

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v55 objects:v61 count:16];
      }

      while (v13);
    }

    [dictionary setObject:array forKeyedSubscript:@"leadingCardSections"];
  }

  if (self->_leadingToTrailingRatio)
  {
    leadingToTrailingRatio = [(_SFPBLeadingTrailingCardSection *)self leadingToTrailingRatio];
    dictionaryRepresentation3 = [leadingToTrailingRatio dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"leadingToTrailingRatio"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"leadingToTrailingRatio"];
    }
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v22 = self->_punchoutOptions;
    v23 = [(NSArray *)v22 countByEnumeratingWithState:&v51 objects:v60 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v52;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v52 != v25)
          {
            objc_enumerationMutation(v22);
          }

          dictionaryRepresentation4 = [*(*(&v51 + 1) + 8 * j) dictionaryRepresentation];
          if (dictionaryRepresentation4)
          {
            [array2 addObject:dictionaryRepresentation4];
          }

          else
          {
            null4 = [MEMORY[0x1E695DFB0] null];
            [array2 addObject:null4];
          }
        }

        v24 = [(NSArray *)v22 countByEnumeratingWithState:&v51 objects:v60 count:16];
      }

      while (v24);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    punchoutPickerDismissText = [(_SFPBLeadingTrailingCardSection *)self punchoutPickerDismissText];
    v30 = [punchoutPickerDismissText copy];
    [dictionary setObject:v30 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    punchoutPickerTitle = [(_SFPBLeadingTrailingCardSection *)self punchoutPickerTitle];
    v32 = [punchoutPickerTitle copy];
    [dictionary setObject:v32 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    separatorStyle = [(_SFPBLeadingTrailingCardSection *)self separatorStyle];
    if (separatorStyle >= 6)
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", separatorStyle];
    }

    else
    {
      v34 = off_1E7ACE580[separatorStyle];
    }

    [dictionary setObject:v34 forKeyedSubscript:@"separatorStyle"];
  }

  if ([(NSArray *)self->_trailingCardSections count])
  {
    array3 = [MEMORY[0x1E695DF70] array];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v36 = self->_trailingCardSections;
    v37 = [(NSArray *)v36 countByEnumeratingWithState:&v47 objects:v59 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v48;
      do
      {
        for (k = 0; k != v38; ++k)
        {
          if (*v48 != v39)
          {
            objc_enumerationMutation(v36);
          }

          dictionaryRepresentation5 = [*(*(&v47 + 1) + 8 * k) dictionaryRepresentation];
          if (dictionaryRepresentation5)
          {
            [array3 addObject:dictionaryRepresentation5];
          }

          else
          {
            null5 = [MEMORY[0x1E695DFB0] null];
            [array3 addObject:null5];
          }
        }

        v38 = [(NSArray *)v36 countByEnumeratingWithState:&v47 objects:v59 count:16];
      }

      while (v38);
    }

    [dictionary setObject:array3 forKeyedSubscript:@"trailingCardSections"];
  }

  if (self->_type)
  {
    type = [(_SFPBLeadingTrailingCardSection *)self type];
    v44 = [type copy];
    [dictionary setObject:v44 forKeyedSubscript:@"type"];
  }

  v45 = *MEMORY[0x1E69E9840];

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
  v11 = v10 ^ [(NSArray *)self->_leadingCardSections hash];
  v12 = v11 ^ [(NSArray *)self->_trailingCardSections hash];
  return v9 ^ v12 ^ [(_SFPBGraphicalFloat *)self->_leadingToTrailingRatio hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_46;
  }

  punchoutOptions = [(_SFPBLeadingTrailingCardSection *)self punchoutOptions];
  punchoutOptions2 = [equalCopy punchoutOptions];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_45;
  }

  punchoutOptions3 = [(_SFPBLeadingTrailingCardSection *)self punchoutOptions];
  if (punchoutOptions3)
  {
    v8 = punchoutOptions3;
    punchoutOptions4 = [(_SFPBLeadingTrailingCardSection *)self punchoutOptions];
    punchoutOptions5 = [equalCopy punchoutOptions];
    v11 = [punchoutOptions4 isEqual:punchoutOptions5];

    if (!v11)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBLeadingTrailingCardSection *)self punchoutPickerTitle];
  punchoutOptions2 = [equalCopy punchoutPickerTitle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_45;
  }

  punchoutPickerTitle = [(_SFPBLeadingTrailingCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    v13 = punchoutPickerTitle;
    punchoutPickerTitle2 = [(_SFPBLeadingTrailingCardSection *)self punchoutPickerTitle];
    punchoutPickerTitle3 = [equalCopy punchoutPickerTitle];
    v16 = [punchoutPickerTitle2 isEqual:punchoutPickerTitle3];

    if (!v16)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBLeadingTrailingCardSection *)self punchoutPickerDismissText];
  punchoutOptions2 = [equalCopy punchoutPickerDismissText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_45;
  }

  punchoutPickerDismissText = [(_SFPBLeadingTrailingCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    v18 = punchoutPickerDismissText;
    punchoutPickerDismissText2 = [(_SFPBLeadingTrailingCardSection *)self punchoutPickerDismissText];
    punchoutPickerDismissText3 = [equalCopy punchoutPickerDismissText];
    v21 = [punchoutPickerDismissText2 isEqual:punchoutPickerDismissText3];

    if (!v21)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [equalCopy canBeHidden])
  {
    goto LABEL_46;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [equalCopy hasTopPadding])
  {
    goto LABEL_46;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [equalCopy hasBottomPadding])
  {
    goto LABEL_46;
  }

  punchoutOptions = [(_SFPBLeadingTrailingCardSection *)self type];
  punchoutOptions2 = [equalCopy type];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_45;
  }

  type = [(_SFPBLeadingTrailingCardSection *)self type];
  if (type)
  {
    v26 = type;
    type2 = [(_SFPBLeadingTrailingCardSection *)self type];
    type3 = [equalCopy type];
    v29 = [type2 isEqual:type3];

    if (!v29)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [equalCopy separatorStyle])
  {
    goto LABEL_46;
  }

  punchoutOptions = [(_SFPBLeadingTrailingCardSection *)self backgroundColor];
  punchoutOptions2 = [equalCopy backgroundColor];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_45;
  }

  backgroundColor = [(_SFPBLeadingTrailingCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    v32 = backgroundColor;
    backgroundColor2 = [(_SFPBLeadingTrailingCardSection *)self backgroundColor];
    backgroundColor3 = [equalCopy backgroundColor];
    v35 = [backgroundColor2 isEqual:backgroundColor3];

    if (!v35)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBLeadingTrailingCardSection *)self leadingCardSections];
  punchoutOptions2 = [equalCopy leadingCardSections];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_45;
  }

  leadingCardSections = [(_SFPBLeadingTrailingCardSection *)self leadingCardSections];
  if (leadingCardSections)
  {
    v37 = leadingCardSections;
    leadingCardSections2 = [(_SFPBLeadingTrailingCardSection *)self leadingCardSections];
    leadingCardSections3 = [equalCopy leadingCardSections];
    v40 = [leadingCardSections2 isEqual:leadingCardSections3];

    if (!v40)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBLeadingTrailingCardSection *)self trailingCardSections];
  punchoutOptions2 = [equalCopy trailingCardSections];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_45;
  }

  trailingCardSections = [(_SFPBLeadingTrailingCardSection *)self trailingCardSections];
  if (trailingCardSections)
  {
    v42 = trailingCardSections;
    trailingCardSections2 = [(_SFPBLeadingTrailingCardSection *)self trailingCardSections];
    trailingCardSections3 = [equalCopy trailingCardSections];
    v45 = [trailingCardSections2 isEqual:trailingCardSections3];

    if (!v45)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBLeadingTrailingCardSection *)self leadingToTrailingRatio];
  punchoutOptions2 = [equalCopy leadingToTrailingRatio];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
LABEL_45:

    goto LABEL_46;
  }

  leadingToTrailingRatio = [(_SFPBLeadingTrailingCardSection *)self leadingToTrailingRatio];
  if (!leadingToTrailingRatio)
  {

LABEL_49:
    v51 = 1;
    goto LABEL_47;
  }

  v47 = leadingToTrailingRatio;
  leadingToTrailingRatio2 = [(_SFPBLeadingTrailingCardSection *)self leadingToTrailingRatio];
  leadingToTrailingRatio3 = [equalCopy leadingToTrailingRatio];
  v50 = [leadingToTrailingRatio2 isEqual:leadingToTrailingRatio3];

  if (v50)
  {
    goto LABEL_49;
  }

LABEL_46:
  v51 = 0;
LABEL_47:

  return v51;
}

- (void)writeTo:(id)to
{
  v44 = *MEMORY[0x1E69E9840];
  toCopy = to;
  punchoutOptions = [(_SFPBLeadingTrailingCardSection *)self punchoutOptions];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v6 = [punchoutOptions countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v38;
    do
    {
      v9 = 0;
      do
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(punchoutOptions);
        }

        v10 = *(*(&v37 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [punchoutOptions countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v7);
  }

  punchoutPickerTitle = [(_SFPBLeadingTrailingCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    PBDataWriterWriteStringField();
  }

  punchoutPickerDismissText = [(_SFPBLeadingTrailingCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBLeadingTrailingCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBLeadingTrailingCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBLeadingTrailingCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  type = [(_SFPBLeadingTrailingCardSection *)self type];
  if (type)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBLeadingTrailingCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  backgroundColor = [(_SFPBLeadingTrailingCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    PBDataWriterWriteSubmessage();
  }

  leadingCardSections = [(_SFPBLeadingTrailingCardSection *)self leadingCardSections];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v16 = [leadingCardSections countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v34;
    do
    {
      v19 = 0;
      do
      {
        if (*v34 != v18)
        {
          objc_enumerationMutation(leadingCardSections);
        }

        v20 = *(*(&v33 + 1) + 8 * v19);
        PBDataWriterWriteSubmessage();
        ++v19;
      }

      while (v17 != v19);
      v17 = [leadingCardSections countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v17);
  }

  trailingCardSections = [(_SFPBLeadingTrailingCardSection *)self trailingCardSections];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v22 = [trailingCardSections countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v30;
    do
    {
      v25 = 0;
      do
      {
        if (*v30 != v24)
        {
          objc_enumerationMutation(trailingCardSections);
        }

        v26 = *(*(&v29 + 1) + 8 * v25);
        PBDataWriterWriteSubmessage();
        ++v25;
      }

      while (v23 != v25);
      v23 = [trailingCardSections countByEnumeratingWithState:&v29 objects:v41 count:16];
    }

    while (v23);
  }

  leadingToTrailingRatio = [(_SFPBLeadingTrailingCardSection *)self leadingToTrailingRatio];
  if (leadingToTrailingRatio)
  {
    PBDataWriterWriteSubmessage();
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (void)addTrailingCardSections:(id)sections
{
  sectionsCopy = sections;
  trailingCardSections = self->_trailingCardSections;
  v8 = sectionsCopy;
  if (!trailingCardSections)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_trailingCardSections;
    self->_trailingCardSections = array;

    sectionsCopy = v8;
    trailingCardSections = self->_trailingCardSections;
  }

  [(NSArray *)trailingCardSections addObject:sectionsCopy];
}

- (void)setTrailingCardSections:(id)sections
{
  v4 = [sections copy];
  trailingCardSections = self->_trailingCardSections;
  self->_trailingCardSections = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addLeadingCardSections:(id)sections
{
  sectionsCopy = sections;
  leadingCardSections = self->_leadingCardSections;
  v8 = sectionsCopy;
  if (!leadingCardSections)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_leadingCardSections;
    self->_leadingCardSections = array;

    sectionsCopy = v8;
    leadingCardSections = self->_leadingCardSections;
  }

  [(NSArray *)leadingCardSections addObject:sectionsCopy];
}

- (void)setLeadingCardSections:(id)sections
{
  v4 = [sections copy];
  leadingCardSections = self->_leadingCardSections;
  self->_leadingCardSections = v4;

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