@interface _SFPBScoreboardCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBScoreboardCardSection)initWithDictionary:(id)a3;
- (_SFPBScoreboardCardSection)initWithFacade:(id)a3;
- (_SFPBScoreboardCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPunchoutOptions:(id)a3;
- (void)setAccessibilityDescription:(id)a3;
- (void)setEventStatus:(id)a3;
- (void)setPunchoutOptions:(id)a3;
- (void)setPunchoutPickerDismissText:(id)a3;
- (void)setPunchoutPickerTitle:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
- (void)setType:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBScoreboardCardSection

- (_SFPBScoreboardCardSection)initWithFacade:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBScoreboardCardSection *)self init];
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

    [(_SFPBScoreboardCardSection *)v5 setPunchoutOptions:v7];
    v14 = [v4 punchoutPickerTitle];

    if (v14)
    {
      v15 = [v4 punchoutPickerTitle];
      [(_SFPBScoreboardCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [v4 punchoutPickerDismissText];

    if (v16)
    {
      v17 = [v4 punchoutPickerDismissText];
      [(_SFPBScoreboardCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    if ([v4 hasCanBeHidden])
    {
      -[_SFPBScoreboardCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v4 canBeHidden]);
    }

    if ([v4 hasHasTopPadding])
    {
      -[_SFPBScoreboardCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v4 hasTopPadding]);
    }

    if ([v4 hasHasBottomPadding])
    {
      -[_SFPBScoreboardCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v4 hasBottomPadding]);
    }

    v18 = [v4 type];

    if (v18)
    {
      v19 = [v4 type];
      [(_SFPBScoreboardCardSection *)v5 setType:v19];
    }

    if ([v4 hasSeparatorStyle])
    {
      -[_SFPBScoreboardCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v4 separatorStyle]);
    }

    v20 = [v4 backgroundColor];

    if (v20)
    {
      v21 = [_SFPBColor alloc];
      v22 = [v4 backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:v22];
      [(_SFPBScoreboardCardSection *)v5 setBackgroundColor:v23];
    }

    v24 = [v4 title];

    if (v24)
    {
      v25 = [v4 title];
      [(_SFPBScoreboardCardSection *)v5 setTitle:v25];
    }

    v26 = [v4 subtitle];

    if (v26)
    {
      v27 = [v4 subtitle];
      [(_SFPBScoreboardCardSection *)v5 setSubtitle:v27];
    }

    v28 = [v4 team1];

    if (v28)
    {
      v29 = [_SFPBSportsTeam alloc];
      v30 = [v4 team1];
      v31 = [(_SFPBSportsTeam *)v29 initWithFacade:v30];
      [(_SFPBScoreboardCardSection *)v5 setTeam1:v31];
    }

    v32 = [v4 team2];

    if (v32)
    {
      v33 = [_SFPBSportsTeam alloc];
      v34 = [v4 team2];
      v35 = [(_SFPBSportsTeam *)v33 initWithFacade:v34];
      [(_SFPBScoreboardCardSection *)v5 setTeam2:v35];
    }

    v36 = [v4 accessibilityDescription];

    if (v36)
    {
      v37 = [v4 accessibilityDescription];
      [(_SFPBScoreboardCardSection *)v5 setAccessibilityDescription:v37];
    }

    v38 = [v4 eventStatus];

    if (v38)
    {
      v39 = [v4 eventStatus];
      [(_SFPBScoreboardCardSection *)v5 setEventStatus:v39];
    }

    v40 = v5;
  }

  v41 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBScoreboardCardSection)initWithDictionary:(id)a3
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v53.receiver = self;
  v53.super_class = _SFPBScoreboardCardSection;
  v5 = [(_SFPBScoreboardCardSection *)&v53 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"punchoutOptions"];
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
    v14 = [v4 objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBScoreboardCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v47 = v14;
    v16 = [v4 objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBScoreboardCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    v46 = v16;
    v18 = [v4 objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBScoreboardCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v18 BOOLValue]);
    }

    v19 = [v4 objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBScoreboardCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v19 BOOLValue]);
    }

    v20 = [v4 objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBScoreboardCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v20 BOOLValue]);
    }

    v45 = v18;
    v21 = [v4 objectForKeyedSubscript:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBScoreboardCardSection *)v5 setType:v22];
    }

    v23 = [v4 objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBScoreboardCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v23 intValue]);
    }

    v44 = v19;
    v24 = [v4 objectForKeyedSubscript:{@"backgroundColor", v23}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBColor alloc] initWithDictionary:v24];
      [(_SFPBScoreboardCardSection *)v5 setBackgroundColor:v25];
    }

    v43 = v20;
    v26 = [v4 objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [v26 copy];
      [(_SFPBScoreboardCardSection *)v5 setTitle:v27];
    }

    v42 = v21;
    v28 = [v4 objectForKeyedSubscript:@"subtitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [v28 copy];
      [(_SFPBScoreboardCardSection *)v5 setSubtitle:v29];
    }

    v30 = [v4 objectForKeyedSubscript:@"team1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [[_SFPBSportsTeam alloc] initWithDictionary:v30];
      [(_SFPBScoreboardCardSection *)v5 setTeam1:v31];
    }

    v32 = [v4 objectForKeyedSubscript:@"team2"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [[_SFPBSportsTeam alloc] initWithDictionary:v32];
      [(_SFPBScoreboardCardSection *)v5 setTeam2:v33];
    }

    v34 = [v4 objectForKeyedSubscript:@"accessibilityDescription"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [v34 copy];
      [(_SFPBScoreboardCardSection *)v5 setAccessibilityDescription:v35];
    }

    v36 = [v4 objectForKeyedSubscript:@"eventStatus"];
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

- (_SFPBScoreboardCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBScoreboardCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBScoreboardCardSection *)self dictionaryRepresentation];
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
  if (self->_accessibilityDescription)
  {
    v4 = [(_SFPBScoreboardCardSection *)self accessibilityDescription];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"accessibilityDescription"];
  }

  if (self->_backgroundColor)
  {
    v6 = [(_SFPBScoreboardCardSection *)self backgroundColor];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"backgroundColor"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"backgroundColor"];
    }
  }

  if (self->_canBeHidden)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBScoreboardCardSection canBeHidden](self, "canBeHidden")}];
    [v3 setObject:v9 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_eventStatus)
  {
    v10 = [(_SFPBScoreboardCardSection *)self eventStatus];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"eventStatus"];
  }

  if (self->_hasBottomPadding)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBScoreboardCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [v3 setObject:v12 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBScoreboardCardSection hasTopPadding](self, "hasTopPadding")}];
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
    v22 = [(_SFPBScoreboardCardSection *)self punchoutPickerDismissText];
    v23 = [v22 copy];
    [v3 setObject:v23 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    v24 = [(_SFPBScoreboardCardSection *)self punchoutPickerTitle];
    v25 = [v24 copy];
    [v3 setObject:v25 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    v26 = [(_SFPBScoreboardCardSection *)self separatorStyle];
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

  if (self->_subtitle)
  {
    v28 = [(_SFPBScoreboardCardSection *)self subtitle];
    v29 = [v28 copy];
    [v3 setObject:v29 forKeyedSubscript:@"subtitle"];
  }

  if (self->_team1)
  {
    v30 = [(_SFPBScoreboardCardSection *)self team1];
    v31 = [v30 dictionaryRepresentation];
    if (v31)
    {
      [v3 setObject:v31 forKeyedSubscript:@"team1"];
    }

    else
    {
      v32 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v32 forKeyedSubscript:@"team1"];
    }
  }

  if (self->_team2)
  {
    v33 = [(_SFPBScoreboardCardSection *)self team2];
    v34 = [v33 dictionaryRepresentation];
    if (v34)
    {
      [v3 setObject:v34 forKeyedSubscript:@"team2"];
    }

    else
    {
      v35 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v35 forKeyedSubscript:@"team2"];
    }
  }

  if (self->_title)
  {
    v36 = [(_SFPBScoreboardCardSection *)self title];
    v37 = [v36 copy];
    [v3 setObject:v37 forKeyedSubscript:@"title"];
  }

  if (self->_type)
  {
    v38 = [(_SFPBScoreboardCardSection *)self type];
    v39 = [v38 copy];
    [v3 setObject:v39 forKeyedSubscript:@"type"];
  }

  v40 = *MEMORY[0x1E69E9840];

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

  v9 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ [(NSString *)self->_type hash]^ (2654435761 * self->_separatorStyle);
  v10 = [(_SFPBColor *)self->_backgroundColor hash];
  v11 = v10 ^ [(NSString *)self->_title hash];
  v12 = v11 ^ [(NSString *)self->_subtitle hash];
  v13 = v12 ^ [(_SFPBSportsTeam *)self->_team1 hash];
  v14 = v13 ^ [(_SFPBSportsTeam *)self->_team2 hash];
  v15 = v9 ^ v14 ^ [(NSString *)self->_accessibilityDescription hash];
  return v15 ^ [(NSString *)self->_eventStatus hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_61;
  }

  v5 = [(_SFPBScoreboardCardSection *)self punchoutOptions];
  v6 = [v4 punchoutOptions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_60;
  }

  v7 = [(_SFPBScoreboardCardSection *)self punchoutOptions];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBScoreboardCardSection *)self punchoutOptions];
    v10 = [v4 punchoutOptions];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_61;
    }
  }

  else
  {
  }

  v5 = [(_SFPBScoreboardCardSection *)self punchoutPickerTitle];
  v6 = [v4 punchoutPickerTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_60;
  }

  v12 = [(_SFPBScoreboardCardSection *)self punchoutPickerTitle];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBScoreboardCardSection *)self punchoutPickerTitle];
    v15 = [v4 punchoutPickerTitle];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_61;
    }
  }

  else
  {
  }

  v5 = [(_SFPBScoreboardCardSection *)self punchoutPickerDismissText];
  v6 = [v4 punchoutPickerDismissText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_60;
  }

  v17 = [(_SFPBScoreboardCardSection *)self punchoutPickerDismissText];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBScoreboardCardSection *)self punchoutPickerDismissText];
    v20 = [v4 punchoutPickerDismissText];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_61;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [v4 canBeHidden])
  {
    goto LABEL_61;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [v4 hasTopPadding])
  {
    goto LABEL_61;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [v4 hasBottomPadding])
  {
    goto LABEL_61;
  }

  v5 = [(_SFPBScoreboardCardSection *)self type];
  v6 = [v4 type];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_60;
  }

  v25 = [(_SFPBScoreboardCardSection *)self type];
  if (v25)
  {
    v26 = v25;
    v27 = [(_SFPBScoreboardCardSection *)self type];
    v28 = [v4 type];
    v29 = [v27 isEqual:v28];

    if (!v29)
    {
      goto LABEL_61;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [v4 separatorStyle])
  {
    goto LABEL_61;
  }

  v5 = [(_SFPBScoreboardCardSection *)self backgroundColor];
  v6 = [v4 backgroundColor];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_60;
  }

  v31 = [(_SFPBScoreboardCardSection *)self backgroundColor];
  if (v31)
  {
    v32 = v31;
    v33 = [(_SFPBScoreboardCardSection *)self backgroundColor];
    v34 = [v4 backgroundColor];
    v35 = [v33 isEqual:v34];

    if (!v35)
    {
      goto LABEL_61;
    }
  }

  else
  {
  }

  v5 = [(_SFPBScoreboardCardSection *)self title];
  v6 = [v4 title];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_60;
  }

  v36 = [(_SFPBScoreboardCardSection *)self title];
  if (v36)
  {
    v37 = v36;
    v38 = [(_SFPBScoreboardCardSection *)self title];
    v39 = [v4 title];
    v40 = [v38 isEqual:v39];

    if (!v40)
    {
      goto LABEL_61;
    }
  }

  else
  {
  }

  v5 = [(_SFPBScoreboardCardSection *)self subtitle];
  v6 = [v4 subtitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_60;
  }

  v41 = [(_SFPBScoreboardCardSection *)self subtitle];
  if (v41)
  {
    v42 = v41;
    v43 = [(_SFPBScoreboardCardSection *)self subtitle];
    v44 = [v4 subtitle];
    v45 = [v43 isEqual:v44];

    if (!v45)
    {
      goto LABEL_61;
    }
  }

  else
  {
  }

  v5 = [(_SFPBScoreboardCardSection *)self team1];
  v6 = [v4 team1];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_60;
  }

  v46 = [(_SFPBScoreboardCardSection *)self team1];
  if (v46)
  {
    v47 = v46;
    v48 = [(_SFPBScoreboardCardSection *)self team1];
    v49 = [v4 team1];
    v50 = [v48 isEqual:v49];

    if (!v50)
    {
      goto LABEL_61;
    }
  }

  else
  {
  }

  v5 = [(_SFPBScoreboardCardSection *)self team2];
  v6 = [v4 team2];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_60;
  }

  v51 = [(_SFPBScoreboardCardSection *)self team2];
  if (v51)
  {
    v52 = v51;
    v53 = [(_SFPBScoreboardCardSection *)self team2];
    v54 = [v4 team2];
    v55 = [v53 isEqual:v54];

    if (!v55)
    {
      goto LABEL_61;
    }
  }

  else
  {
  }

  v5 = [(_SFPBScoreboardCardSection *)self accessibilityDescription];
  v6 = [v4 accessibilityDescription];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_60;
  }

  v56 = [(_SFPBScoreboardCardSection *)self accessibilityDescription];
  if (v56)
  {
    v57 = v56;
    v58 = [(_SFPBScoreboardCardSection *)self accessibilityDescription];
    v59 = [v4 accessibilityDescription];
    v60 = [v58 isEqual:v59];

    if (!v60)
    {
      goto LABEL_61;
    }
  }

  else
  {
  }

  v5 = [(_SFPBScoreboardCardSection *)self eventStatus];
  v6 = [v4 eventStatus];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_60:

    goto LABEL_61;
  }

  v61 = [(_SFPBScoreboardCardSection *)self eventStatus];
  if (!v61)
  {

LABEL_64:
    v66 = 1;
    goto LABEL_62;
  }

  v62 = v61;
  v63 = [(_SFPBScoreboardCardSection *)self eventStatus];
  v64 = [v4 eventStatus];
  v65 = [v63 isEqual:v64];

  if (v65)
  {
    goto LABEL_64;
  }

LABEL_61:
  v66 = 0;
LABEL_62:

  return v66;
}

- (void)writeTo:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBScoreboardCardSection *)self punchoutOptions];
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

  v11 = [(_SFPBScoreboardCardSection *)self punchoutPickerTitle];
  if (v11)
  {
    PBDataWriterWriteStringField();
  }

  v12 = [(_SFPBScoreboardCardSection *)self punchoutPickerDismissText];
  if (v12)
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

  v13 = [(_SFPBScoreboardCardSection *)self type];
  if (v13)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBScoreboardCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  v14 = [(_SFPBScoreboardCardSection *)self backgroundColor];
  if (v14)
  {
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_SFPBScoreboardCardSection *)self title];
  if (v15)
  {
    PBDataWriterWriteStringField();
  }

  v16 = [(_SFPBScoreboardCardSection *)self subtitle];
  if (v16)
  {
    PBDataWriterWriteStringField();
  }

  v17 = [(_SFPBScoreboardCardSection *)self team1];
  if (v17)
  {
    PBDataWriterWriteSubmessage();
  }

  v18 = [(_SFPBScoreboardCardSection *)self team2];
  if (v18)
  {
    PBDataWriterWriteSubmessage();
  }

  v19 = [(_SFPBScoreboardCardSection *)self accessibilityDescription];
  if (v19)
  {
    PBDataWriterWriteStringField();
  }

  v20 = [(_SFPBScoreboardCardSection *)self eventStatus];
  if (v20)
  {
    PBDataWriterWriteStringField();
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)setEventStatus:(id)a3
{
  v4 = [a3 copy];
  eventStatus = self->_eventStatus;
  self->_eventStatus = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setAccessibilityDescription:(id)a3
{
  v4 = [a3 copy];
  accessibilityDescription = self->_accessibilityDescription;
  self->_accessibilityDescription = v4;

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