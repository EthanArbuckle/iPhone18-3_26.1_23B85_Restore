@interface _SFPBScoreboardCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBScoreboardCardSection)initWithDictionary:(id)dictionary;
- (_SFPBScoreboardCardSection)initWithFacade:(id)facade;
- (_SFPBScoreboardCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPunchoutOptions:(id)options;
- (void)setAccessibilityDescription:(id)description;
- (void)setEventStatus:(id)status;
- (void)setPunchoutOptions:(id)options;
- (void)setPunchoutPickerDismissText:(id)text;
- (void)setPunchoutPickerTitle:(id)title;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
- (void)setType:(id)type;
- (void)writeTo:(id)to;
@end

@implementation _SFPBScoreboardCardSection

- (_SFPBScoreboardCardSection)initWithFacade:(id)facade
{
  v48 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBScoreboardCardSection *)self init];
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

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    punchoutOptions2 = [facadeCopy punchoutOptions];
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v43 objects:v47 count:16];
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
            objc_enumerationMutation(punchoutOptions2);
          }

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v43 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v43 objects:v47 count:16];
      }

      while (v10);
    }

    [(_SFPBScoreboardCardSection *)v5 setPunchoutOptions:v7];
    punchoutPickerTitle = [facadeCopy punchoutPickerTitle];

    if (punchoutPickerTitle)
    {
      punchoutPickerTitle2 = [facadeCopy punchoutPickerTitle];
      [(_SFPBScoreboardCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle2];
    }

    punchoutPickerDismissText = [facadeCopy punchoutPickerDismissText];

    if (punchoutPickerDismissText)
    {
      punchoutPickerDismissText2 = [facadeCopy punchoutPickerDismissText];
      [(_SFPBScoreboardCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText2];
    }

    if ([facadeCopy hasCanBeHidden])
    {
      -[_SFPBScoreboardCardSection setCanBeHidden:](v5, "setCanBeHidden:", [facadeCopy canBeHidden]);
    }

    if ([facadeCopy hasHasTopPadding])
    {
      -[_SFPBScoreboardCardSection setHasTopPadding:](v5, "setHasTopPadding:", [facadeCopy hasTopPadding]);
    }

    if ([facadeCopy hasHasBottomPadding])
    {
      -[_SFPBScoreboardCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [facadeCopy hasBottomPadding]);
    }

    type = [facadeCopy type];

    if (type)
    {
      type2 = [facadeCopy type];
      [(_SFPBScoreboardCardSection *)v5 setType:type2];
    }

    if ([facadeCopy hasSeparatorStyle])
    {
      -[_SFPBScoreboardCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [facadeCopy separatorStyle]);
    }

    backgroundColor = [facadeCopy backgroundColor];

    if (backgroundColor)
    {
      v21 = [_SFPBColor alloc];
      backgroundColor2 = [facadeCopy backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:backgroundColor2];
      [(_SFPBScoreboardCardSection *)v5 setBackgroundColor:v23];
    }

    title = [facadeCopy title];

    if (title)
    {
      title2 = [facadeCopy title];
      [(_SFPBScoreboardCardSection *)v5 setTitle:title2];
    }

    subtitle = [facadeCopy subtitle];

    if (subtitle)
    {
      subtitle2 = [facadeCopy subtitle];
      [(_SFPBScoreboardCardSection *)v5 setSubtitle:subtitle2];
    }

    team1 = [facadeCopy team1];

    if (team1)
    {
      v29 = [_SFPBSportsTeam alloc];
      team12 = [facadeCopy team1];
      v31 = [(_SFPBSportsTeam *)v29 initWithFacade:team12];
      [(_SFPBScoreboardCardSection *)v5 setTeam1:v31];
    }

    team2 = [facadeCopy team2];

    if (team2)
    {
      v33 = [_SFPBSportsTeam alloc];
      team22 = [facadeCopy team2];
      v35 = [(_SFPBSportsTeam *)v33 initWithFacade:team22];
      [(_SFPBScoreboardCardSection *)v5 setTeam2:v35];
    }

    accessibilityDescription = [facadeCopy accessibilityDescription];

    if (accessibilityDescription)
    {
      accessibilityDescription2 = [facadeCopy accessibilityDescription];
      [(_SFPBScoreboardCardSection *)v5 setAccessibilityDescription:accessibilityDescription2];
    }

    eventStatus = [facadeCopy eventStatus];

    if (eventStatus)
    {
      eventStatus2 = [facadeCopy eventStatus];
      [(_SFPBScoreboardCardSection *)v5 setEventStatus:eventStatus2];
    }

    v40 = v5;
  }

  v41 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBScoreboardCardSection)initWithDictionary:(id)dictionary
{
  v55 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v53.receiver = self;
  v53.super_class = _SFPBScoreboardCardSection;
  v5 = [(_SFPBScoreboardCardSection *)&v53 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"punchoutOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v49 objects:v54 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v50;
        do
        {
          v11 = 0;
          do
          {
            if (*v50 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v49 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [[_SFPBPunchout alloc] initWithDictionary:v12];
              [(_SFPBScoreboardCardSection *)v5 addPunchoutOptions:v13];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v49 objects:v54 count:16];
        }

        while (v9);
      }
    }

    v48 = v6;
    v14 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBScoreboardCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v47 = v14;
    v16 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBScoreboardCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    v46 = v16;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBScoreboardCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v18 BOOLValue]);
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBScoreboardCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v19 BOOLValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBScoreboardCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v20 BOOLValue]);
    }

    v45 = v18;
    v21 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBScoreboardCardSection *)v5 setType:v22];
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBScoreboardCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v23 intValue]);
    }

    v44 = v19;
    v24 = [dictionaryCopy objectForKeyedSubscript:{@"backgroundColor", v23}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBColor alloc] initWithDictionary:v24];
      [(_SFPBScoreboardCardSection *)v5 setBackgroundColor:v25];
    }

    v43 = v20;
    v26 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [v26 copy];
      [(_SFPBScoreboardCardSection *)v5 setTitle:v27];
    }

    v42 = v21;
    v28 = [dictionaryCopy objectForKeyedSubscript:@"subtitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [v28 copy];
      [(_SFPBScoreboardCardSection *)v5 setSubtitle:v29];
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"team1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [[_SFPBSportsTeam alloc] initWithDictionary:v30];
      [(_SFPBScoreboardCardSection *)v5 setTeam1:v31];
    }

    v32 = [dictionaryCopy objectForKeyedSubscript:@"team2"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [[_SFPBSportsTeam alloc] initWithDictionary:v32];
      [(_SFPBScoreboardCardSection *)v5 setTeam2:v33];
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"accessibilityDescription"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [v34 copy];
      [(_SFPBScoreboardCardSection *)v5 setAccessibilityDescription:v35];
    }

    v36 = [dictionaryCopy objectForKeyedSubscript:@"eventStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = [v36 copy];
      [(_SFPBScoreboardCardSection *)v5 setEventStatus:v37];
    }

    v38 = v5;
  }

  v39 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBScoreboardCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBScoreboardCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBScoreboardCardSection *)self dictionaryRepresentation];
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
  v47 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_accessibilityDescription)
  {
    accessibilityDescription = [(_SFPBScoreboardCardSection *)self accessibilityDescription];
    v5 = [accessibilityDescription copy];
    [dictionary setObject:v5 forKeyedSubscript:@"accessibilityDescription"];
  }

  if (self->_backgroundColor)
  {
    backgroundColor = [(_SFPBScoreboardCardSection *)self backgroundColor];
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
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBScoreboardCardSection canBeHidden](self, "canBeHidden")}];
    [dictionary setObject:v9 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_eventStatus)
  {
    eventStatus = [(_SFPBScoreboardCardSection *)self eventStatus];
    v11 = [eventStatus copy];
    [dictionary setObject:v11 forKeyedSubscript:@"eventStatus"];
  }

  if (self->_hasBottomPadding)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBScoreboardCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [dictionary setObject:v12 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBScoreboardCardSection hasTopPadding](self, "hasTopPadding")}];
    [dictionary setObject:v13 forKeyedSubscript:@"hasTopPadding"];
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation2 = [*(*(&v42 + 1) + 8 * i) dictionaryRepresentation];
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

        v17 = [(NSArray *)v15 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v17);
    }

    [dictionary setObject:array forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    punchoutPickerDismissText = [(_SFPBScoreboardCardSection *)self punchoutPickerDismissText];
    v23 = [punchoutPickerDismissText copy];
    [dictionary setObject:v23 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    punchoutPickerTitle = [(_SFPBScoreboardCardSection *)self punchoutPickerTitle];
    v25 = [punchoutPickerTitle copy];
    [dictionary setObject:v25 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    separatorStyle = [(_SFPBScoreboardCardSection *)self separatorStyle];
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

  if (self->_subtitle)
  {
    subtitle = [(_SFPBScoreboardCardSection *)self subtitle];
    v29 = [subtitle copy];
    [dictionary setObject:v29 forKeyedSubscript:@"subtitle"];
  }

  if (self->_team1)
  {
    team1 = [(_SFPBScoreboardCardSection *)self team1];
    dictionaryRepresentation3 = [team1 dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"team1"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"team1"];
    }
  }

  if (self->_team2)
  {
    team2 = [(_SFPBScoreboardCardSection *)self team2];
    dictionaryRepresentation4 = [team2 dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"team2"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"team2"];
    }
  }

  if (self->_title)
  {
    title = [(_SFPBScoreboardCardSection *)self title];
    v37 = [title copy];
    [dictionary setObject:v37 forKeyedSubscript:@"title"];
  }

  if (self->_type)
  {
    type = [(_SFPBScoreboardCardSection *)self type];
    v39 = [type copy];
    [dictionary setObject:v39 forKeyedSubscript:@"type"];
  }

  v40 = *MEMORY[0x1E69E9840];

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
  v11 = v10 ^ [(NSString *)self->_title hash];
  v12 = v11 ^ [(NSString *)self->_subtitle hash];
  v13 = v12 ^ [(_SFPBSportsTeam *)self->_team1 hash];
  v14 = v13 ^ [(_SFPBSportsTeam *)self->_team2 hash];
  v15 = v9 ^ v14 ^ [(NSString *)self->_accessibilityDescription hash];
  return v15 ^ [(NSString *)self->_eventStatus hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_61;
  }

  punchoutOptions = [(_SFPBScoreboardCardSection *)self punchoutOptions];
  punchoutOptions2 = [equalCopy punchoutOptions];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_60;
  }

  punchoutOptions3 = [(_SFPBScoreboardCardSection *)self punchoutOptions];
  if (punchoutOptions3)
  {
    v8 = punchoutOptions3;
    punchoutOptions4 = [(_SFPBScoreboardCardSection *)self punchoutOptions];
    punchoutOptions5 = [equalCopy punchoutOptions];
    v11 = [punchoutOptions4 isEqual:punchoutOptions5];

    if (!v11)
    {
      goto LABEL_61;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBScoreboardCardSection *)self punchoutPickerTitle];
  punchoutOptions2 = [equalCopy punchoutPickerTitle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_60;
  }

  punchoutPickerTitle = [(_SFPBScoreboardCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    v13 = punchoutPickerTitle;
    punchoutPickerTitle2 = [(_SFPBScoreboardCardSection *)self punchoutPickerTitle];
    punchoutPickerTitle3 = [equalCopy punchoutPickerTitle];
    v16 = [punchoutPickerTitle2 isEqual:punchoutPickerTitle3];

    if (!v16)
    {
      goto LABEL_61;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBScoreboardCardSection *)self punchoutPickerDismissText];
  punchoutOptions2 = [equalCopy punchoutPickerDismissText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_60;
  }

  punchoutPickerDismissText = [(_SFPBScoreboardCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    v18 = punchoutPickerDismissText;
    punchoutPickerDismissText2 = [(_SFPBScoreboardCardSection *)self punchoutPickerDismissText];
    punchoutPickerDismissText3 = [equalCopy punchoutPickerDismissText];
    v21 = [punchoutPickerDismissText2 isEqual:punchoutPickerDismissText3];

    if (!v21)
    {
      goto LABEL_61;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [equalCopy canBeHidden])
  {
    goto LABEL_61;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [equalCopy hasTopPadding])
  {
    goto LABEL_61;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [equalCopy hasBottomPadding])
  {
    goto LABEL_61;
  }

  punchoutOptions = [(_SFPBScoreboardCardSection *)self type];
  punchoutOptions2 = [equalCopy type];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_60;
  }

  type = [(_SFPBScoreboardCardSection *)self type];
  if (type)
  {
    v26 = type;
    type2 = [(_SFPBScoreboardCardSection *)self type];
    type3 = [equalCopy type];
    v29 = [type2 isEqual:type3];

    if (!v29)
    {
      goto LABEL_61;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [equalCopy separatorStyle])
  {
    goto LABEL_61;
  }

  punchoutOptions = [(_SFPBScoreboardCardSection *)self backgroundColor];
  punchoutOptions2 = [equalCopy backgroundColor];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_60;
  }

  backgroundColor = [(_SFPBScoreboardCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    v32 = backgroundColor;
    backgroundColor2 = [(_SFPBScoreboardCardSection *)self backgroundColor];
    backgroundColor3 = [equalCopy backgroundColor];
    v35 = [backgroundColor2 isEqual:backgroundColor3];

    if (!v35)
    {
      goto LABEL_61;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBScoreboardCardSection *)self title];
  punchoutOptions2 = [equalCopy title];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_60;
  }

  title = [(_SFPBScoreboardCardSection *)self title];
  if (title)
  {
    v37 = title;
    title2 = [(_SFPBScoreboardCardSection *)self title];
    title3 = [equalCopy title];
    v40 = [title2 isEqual:title3];

    if (!v40)
    {
      goto LABEL_61;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBScoreboardCardSection *)self subtitle];
  punchoutOptions2 = [equalCopy subtitle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_60;
  }

  subtitle = [(_SFPBScoreboardCardSection *)self subtitle];
  if (subtitle)
  {
    v42 = subtitle;
    subtitle2 = [(_SFPBScoreboardCardSection *)self subtitle];
    subtitle3 = [equalCopy subtitle];
    v45 = [subtitle2 isEqual:subtitle3];

    if (!v45)
    {
      goto LABEL_61;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBScoreboardCardSection *)self team1];
  punchoutOptions2 = [equalCopy team1];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_60;
  }

  team1 = [(_SFPBScoreboardCardSection *)self team1];
  if (team1)
  {
    v47 = team1;
    team12 = [(_SFPBScoreboardCardSection *)self team1];
    team13 = [equalCopy team1];
    v50 = [team12 isEqual:team13];

    if (!v50)
    {
      goto LABEL_61;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBScoreboardCardSection *)self team2];
  punchoutOptions2 = [equalCopy team2];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_60;
  }

  team2 = [(_SFPBScoreboardCardSection *)self team2];
  if (team2)
  {
    v52 = team2;
    team22 = [(_SFPBScoreboardCardSection *)self team2];
    team23 = [equalCopy team2];
    v55 = [team22 isEqual:team23];

    if (!v55)
    {
      goto LABEL_61;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBScoreboardCardSection *)self accessibilityDescription];
  punchoutOptions2 = [equalCopy accessibilityDescription];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_60;
  }

  accessibilityDescription = [(_SFPBScoreboardCardSection *)self accessibilityDescription];
  if (accessibilityDescription)
  {
    v57 = accessibilityDescription;
    accessibilityDescription2 = [(_SFPBScoreboardCardSection *)self accessibilityDescription];
    accessibilityDescription3 = [equalCopy accessibilityDescription];
    v60 = [accessibilityDescription2 isEqual:accessibilityDescription3];

    if (!v60)
    {
      goto LABEL_61;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBScoreboardCardSection *)self eventStatus];
  punchoutOptions2 = [equalCopy eventStatus];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
LABEL_60:

    goto LABEL_61;
  }

  eventStatus = [(_SFPBScoreboardCardSection *)self eventStatus];
  if (!eventStatus)
  {

LABEL_64:
    v66 = 1;
    goto LABEL_62;
  }

  v62 = eventStatus;
  eventStatus2 = [(_SFPBScoreboardCardSection *)self eventStatus];
  eventStatus3 = [equalCopy eventStatus];
  v65 = [eventStatus2 isEqual:eventStatus3];

  if (v65)
  {
    goto LABEL_64;
  }

LABEL_61:
  v66 = 0;
LABEL_62:

  return v66;
}

- (void)writeTo:(id)to
{
  v27 = *MEMORY[0x1E69E9840];
  toCopy = to;
  punchoutOptions = [(_SFPBScoreboardCardSection *)self punchoutOptions];
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

  punchoutPickerTitle = [(_SFPBScoreboardCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    PBDataWriterWriteStringField();
  }

  punchoutPickerDismissText = [(_SFPBScoreboardCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBScoreboardCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBScoreboardCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBScoreboardCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  type = [(_SFPBScoreboardCardSection *)self type];
  if (type)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBScoreboardCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  backgroundColor = [(_SFPBScoreboardCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    PBDataWriterWriteSubmessage();
  }

  title = [(_SFPBScoreboardCardSection *)self title];
  if (title)
  {
    PBDataWriterWriteStringField();
  }

  subtitle = [(_SFPBScoreboardCardSection *)self subtitle];
  if (subtitle)
  {
    PBDataWriterWriteStringField();
  }

  team1 = [(_SFPBScoreboardCardSection *)self team1];
  if (team1)
  {
    PBDataWriterWriteSubmessage();
  }

  team2 = [(_SFPBScoreboardCardSection *)self team2];
  if (team2)
  {
    PBDataWriterWriteSubmessage();
  }

  accessibilityDescription = [(_SFPBScoreboardCardSection *)self accessibilityDescription];
  if (accessibilityDescription)
  {
    PBDataWriterWriteStringField();
  }

  eventStatus = [(_SFPBScoreboardCardSection *)self eventStatus];
  if (eventStatus)
  {
    PBDataWriterWriteStringField();
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)setEventStatus:(id)status
{
  v4 = [status copy];
  eventStatus = self->_eventStatus;
  self->_eventStatus = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setAccessibilityDescription:(id)description
{
  v4 = [description copy];
  accessibilityDescription = self->_accessibilityDescription;
  self->_accessibilityDescription = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setSubtitle:(id)subtitle
{
  v4 = [subtitle copy];
  subtitle = self->_subtitle;
  self->_subtitle = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setTitle:(id)title
{
  v4 = [title copy];
  title = self->_title;
  self->_title = v4;

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