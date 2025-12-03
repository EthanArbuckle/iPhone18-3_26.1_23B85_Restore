@interface _SFPBAudioPlaybackCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBAudioPlaybackCardSection)initWithDictionary:(id)dictionary;
- (_SFPBAudioPlaybackCardSection)initWithFacade:(id)facade;
- (_SFPBAudioPlaybackCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPlayCommands:(id)commands;
- (void)addPunchoutOptions:(id)options;
- (void)addStopCommands:(id)commands;
- (void)setPlayCommands:(id)commands;
- (void)setPunchoutOptions:(id)options;
- (void)setPunchoutPickerDismissText:(id)text;
- (void)setPunchoutPickerTitle:(id)title;
- (void)setStopCommands:(id)commands;
- (void)setType:(id)type;
- (void)writeTo:(id)to;
@end

@implementation _SFPBAudioPlaybackCardSection

- (_SFPBAudioPlaybackCardSection)initWithFacade:(id)facade
{
  v75 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBAudioPlaybackCardSection *)self init];
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

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    punchoutOptions2 = [facadeCopy punchoutOptions];
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v68 objects:v74 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v69;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v69 != v11)
          {
            objc_enumerationMutation(punchoutOptions2);
          }

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v68 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v68 objects:v74 count:16];
      }

      while (v10);
    }

    [(_SFPBAudioPlaybackCardSection *)v5 setPunchoutOptions:v7];
    punchoutPickerTitle = [facadeCopy punchoutPickerTitle];

    if (punchoutPickerTitle)
    {
      punchoutPickerTitle2 = [facadeCopy punchoutPickerTitle];
      [(_SFPBAudioPlaybackCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle2];
    }

    punchoutPickerDismissText = [facadeCopy punchoutPickerDismissText];

    if (punchoutPickerDismissText)
    {
      punchoutPickerDismissText2 = [facadeCopy punchoutPickerDismissText];
      [(_SFPBAudioPlaybackCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText2];
    }

    if ([facadeCopy hasCanBeHidden])
    {
      -[_SFPBAudioPlaybackCardSection setCanBeHidden:](v5, "setCanBeHidden:", [facadeCopy canBeHidden]);
    }

    if ([facadeCopy hasHasTopPadding])
    {
      -[_SFPBAudioPlaybackCardSection setHasTopPadding:](v5, "setHasTopPadding:", [facadeCopy hasTopPadding]);
    }

    if ([facadeCopy hasHasBottomPadding])
    {
      -[_SFPBAudioPlaybackCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [facadeCopy hasBottomPadding]);
    }

    type = [facadeCopy type];

    if (type)
    {
      type2 = [facadeCopy type];
      [(_SFPBAudioPlaybackCardSection *)v5 setType:type2];
    }

    if ([facadeCopy hasSeparatorStyle])
    {
      -[_SFPBAudioPlaybackCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [facadeCopy separatorStyle]);
    }

    backgroundColor = [facadeCopy backgroundColor];

    if (backgroundColor)
    {
      v21 = [_SFPBColor alloc];
      backgroundColor2 = [facadeCopy backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:backgroundColor2];
      [(_SFPBAudioPlaybackCardSection *)v5 setBackgroundColor:v23];
    }

    if ([facadeCopy hasState])
    {
      -[_SFPBAudioPlaybackCardSection setState:](v5, "setState:", [facadeCopy state]);
    }

    playCommands = [facadeCopy playCommands];
    if (playCommands)
    {
      v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v25 = 0;
    }

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    playCommands2 = [facadeCopy playCommands];
    v27 = [playCommands2 countByEnumeratingWithState:&v64 objects:v73 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v65;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v65 != v29)
          {
            objc_enumerationMutation(playCommands2);
          }

          v31 = [[_SFPBAbstractCommand alloc] initWithFacade:*(*(&v64 + 1) + 8 * j)];
          if (v31)
          {
            [v25 addObject:v31];
          }
        }

        v28 = [playCommands2 countByEnumeratingWithState:&v64 objects:v73 count:16];
      }

      while (v28);
    }

    [(_SFPBAudioPlaybackCardSection *)v5 setPlayCommands:v25];
    stopCommands = [facadeCopy stopCommands];
    v59 = v5;
    if (stopCommands)
    {
      v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v33 = 0;
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    stopCommands2 = [facadeCopy stopCommands];
    v35 = [stopCommands2 countByEnumeratingWithState:&v60 objects:v72 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v61;
      do
      {
        for (k = 0; k != v36; ++k)
        {
          if (*v61 != v37)
          {
            objc_enumerationMutation(stopCommands2);
          }

          v39 = [[_SFPBAbstractCommand alloc] initWithFacade:*(*(&v60 + 1) + 8 * k)];
          if (v39)
          {
            [v33 addObject:v39];
          }
        }

        v36 = [stopCommands2 countByEnumeratingWithState:&v60 objects:v72 count:16];
      }

      while (v36);
    }

    v5 = v59;
    [(_SFPBAudioPlaybackCardSection *)v59 setStopCommands:v33];
    detailText = [facadeCopy detailText];

    if (detailText)
    {
      v41 = [_SFPBRichText alloc];
      detailText2 = [facadeCopy detailText];
      v43 = [(_SFPBRichText *)v41 initWithFacade:detailText2];
      [(_SFPBAudioPlaybackCardSection *)v59 setDetailText:v43];
    }

    title = [facadeCopy title];

    if (title)
    {
      v45 = [_SFPBRichText alloc];
      title2 = [facadeCopy title];
      v47 = [(_SFPBRichText *)v45 initWithFacade:title2];
      [(_SFPBAudioPlaybackCardSection *)v59 setTitle:v47];
    }

    subtitle = [facadeCopy subtitle];

    if (subtitle)
    {
      v49 = [_SFPBRichText alloc];
      subtitle2 = [facadeCopy subtitle];
      v51 = [(_SFPBRichText *)v49 initWithFacade:subtitle2];
      [(_SFPBAudioPlaybackCardSection *)v59 setSubtitle:v51];
    }

    thumbnail = [facadeCopy thumbnail];

    if (thumbnail)
    {
      v53 = [_SFPBImage alloc];
      thumbnail2 = [facadeCopy thumbnail];
      v55 = [(_SFPBImage *)v53 initWithFacade:thumbnail2];
      [(_SFPBAudioPlaybackCardSection *)v59 setThumbnail:v55];
    }

    v56 = v59;
  }

  v57 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBAudioPlaybackCardSection)initWithDictionary:(id)dictionary
{
  v84 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v80.receiver = self;
  v80.super_class = _SFPBAudioPlaybackCardSection;
  v5 = [(_SFPBAudioPlaybackCardSection *)&v80 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"punchoutOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v76 objects:v83 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v77;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v77 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v76 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [[_SFPBPunchout alloc] initWithDictionary:v12];
              [(_SFPBAudioPlaybackCardSection *)v5 addPunchoutOptions:v13];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v76 objects:v83 count:16];
        }

        while (v9);
      }
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBAudioPlaybackCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v62 = v14;
    v16 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBAudioPlaybackCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    v61 = v16;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBAudioPlaybackCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v18 BOOLValue]);
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBAudioPlaybackCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v19 BOOLValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBAudioPlaybackCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v20 BOOLValue]);
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    objc_opt_class();
    v66 = v21;
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBAudioPlaybackCardSection *)v5 setType:v22];
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    v65 = v23;
    v24 = 0x1E695D000;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBAudioPlaybackCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v23 intValue]);
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    v64 = v25;
    if (objc_opt_isKindOfClass())
    {
      v26 = [[_SFPBColor alloc] initWithDictionary:v25];
      [(_SFPBAudioPlaybackCardSection *)v5 setBackgroundColor:v26];

      v24 = 0x1E695D000uLL;
    }

    v58 = v20;
    v59 = v19;
    v60 = v18;
    v27 = [dictionaryCopy objectForKeyedSubscript:@"state"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBAudioPlaybackCardSection setState:](v5, "setState:", [v27 intValue]);
    }

    v57 = v27;
    v63 = v6;
    v28 = [dictionaryCopy objectForKeyedSubscript:@"playCommands"];
    v29 = *(v24 + 3784);
    objc_opt_class();
    v67 = dictionaryCopy;
    if (objc_opt_isKindOfClass())
    {
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v30 = v28;
      v31 = [v30 countByEnumeratingWithState:&v72 objects:v82 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v73;
        do
        {
          for (j = 0; j != v32; ++j)
          {
            if (*v73 != v33)
            {
              objc_enumerationMutation(v30);
            }

            v35 = *(*(&v72 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v36 = [[_SFPBAbstractCommand alloc] initWithDictionary:v35];
              [(_SFPBAudioPlaybackCardSection *)v5 addPlayCommands:v36];
            }
          }

          v32 = [v30 countByEnumeratingWithState:&v72 objects:v82 count:16];
        }

        while (v32);
      }
    }

    v37 = [dictionaryCopy objectForKeyedSubscript:@"stopCommands"];
    v38 = *(v24 + 3784);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v39 = v37;
      v40 = [v39 countByEnumeratingWithState:&v68 objects:v81 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v69;
        do
        {
          for (k = 0; k != v41; ++k)
          {
            if (*v69 != v42)
            {
              objc_enumerationMutation(v39);
            }

            v44 = *(*(&v68 + 1) + 8 * k);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v45 = [[_SFPBAbstractCommand alloc] initWithDictionary:v44];
              [(_SFPBAudioPlaybackCardSection *)v5 addStopCommands:v45];
            }
          }

          v41 = [v39 countByEnumeratingWithState:&v68 objects:v81 count:16];
        }

        while (v41);
      }
    }

    v46 = [dictionaryCopy objectForKeyedSubscript:@"detailText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = [[_SFPBRichText alloc] initWithDictionary:v46];
      [(_SFPBAudioPlaybackCardSection *)v5 setDetailText:v47];
    }

    v48 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v49 = [[_SFPBRichText alloc] initWithDictionary:v48];
      [(_SFPBAudioPlaybackCardSection *)v5 setTitle:v49];
    }

    v50 = [dictionaryCopy objectForKeyedSubscript:@"subtitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v51 = [[_SFPBRichText alloc] initWithDictionary:v50];
      [(_SFPBAudioPlaybackCardSection *)v5 setSubtitle:v51];

      dictionaryCopy = v67;
    }

    v52 = [dictionaryCopy objectForKeyedSubscript:@"thumbnail"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v53 = [[_SFPBImage alloc] initWithDictionary:v52];
      [(_SFPBAudioPlaybackCardSection *)v5 setThumbnail:v53];
    }

    v54 = v5;

    dictionaryCopy = v67;
  }

  v55 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBAudioPlaybackCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBAudioPlaybackCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBAudioPlaybackCardSection *)self dictionaryRepresentation];
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
  v73 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_backgroundColor)
  {
    backgroundColor = [(_SFPBAudioPlaybackCardSection *)self backgroundColor];
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
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBAudioPlaybackCardSection canBeHidden](self, "canBeHidden")}];
    [dictionary setObject:v7 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_detailText)
  {
    detailText = [(_SFPBAudioPlaybackCardSection *)self detailText];
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
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBAudioPlaybackCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [dictionary setObject:v11 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBAudioPlaybackCardSection hasTopPadding](self, "hasTopPadding")}];
    [dictionary setObject:v12 forKeyedSubscript:@"hasTopPadding"];
  }

  if ([(NSArray *)self->_playCommands count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v14 = self->_playCommands;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v66 objects:v72 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v67;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v67 != v17)
          {
            objc_enumerationMutation(v14);
          }

          dictionaryRepresentation3 = [*(*(&v66 + 1) + 8 * i) dictionaryRepresentation];
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

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v66 objects:v72 count:16];
      }

      while (v16);
    }

    [dictionary setObject:array forKeyedSubscript:@"playCommands"];
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v22 = self->_punchoutOptions;
    v23 = [(NSArray *)v22 countByEnumeratingWithState:&v62 objects:v71 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v63;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v63 != v25)
          {
            objc_enumerationMutation(v22);
          }

          dictionaryRepresentation4 = [*(*(&v62 + 1) + 8 * j) dictionaryRepresentation];
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

        v24 = [(NSArray *)v22 countByEnumeratingWithState:&v62 objects:v71 count:16];
      }

      while (v24);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    punchoutPickerDismissText = [(_SFPBAudioPlaybackCardSection *)self punchoutPickerDismissText];
    v30 = [punchoutPickerDismissText copy];
    [dictionary setObject:v30 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    punchoutPickerTitle = [(_SFPBAudioPlaybackCardSection *)self punchoutPickerTitle];
    v32 = [punchoutPickerTitle copy];
    [dictionary setObject:v32 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    separatorStyle = [(_SFPBAudioPlaybackCardSection *)self separatorStyle];
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

  if (self->_state)
  {
    state = [(_SFPBAudioPlaybackCardSection *)self state];
    if (state >= 6)
    {
      v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", state];
    }

    else
    {
      v36 = off_1E7ACE580[state];
    }

    [dictionary setObject:v36 forKeyedSubscript:@"state"];
  }

  if ([(NSArray *)self->_stopCommands count])
  {
    array3 = [MEMORY[0x1E695DF70] array];
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v38 = self->_stopCommands;
    v39 = [(NSArray *)v38 countByEnumeratingWithState:&v58 objects:v70 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v59;
      do
      {
        for (k = 0; k != v40; ++k)
        {
          if (*v59 != v41)
          {
            objc_enumerationMutation(v38);
          }

          dictionaryRepresentation5 = [*(*(&v58 + 1) + 8 * k) dictionaryRepresentation];
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

        v40 = [(NSArray *)v38 countByEnumeratingWithState:&v58 objects:v70 count:16];
      }

      while (v40);
    }

    [dictionary setObject:array3 forKeyedSubscript:@"stopCommands"];
  }

  if (self->_subtitle)
  {
    subtitle = [(_SFPBAudioPlaybackCardSection *)self subtitle];
    dictionaryRepresentation6 = [subtitle dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"subtitle"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"subtitle"];
    }
  }

  if (self->_thumbnail)
  {
    thumbnail = [(_SFPBAudioPlaybackCardSection *)self thumbnail];
    dictionaryRepresentation7 = [thumbnail dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"thumbnail"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"thumbnail"];
    }
  }

  if (self->_title)
  {
    title = [(_SFPBAudioPlaybackCardSection *)self title];
    dictionaryRepresentation8 = [title dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"title"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"title"];
    }
  }

  if (self->_type)
  {
    type = [(_SFPBAudioPlaybackCardSection *)self type];
    v55 = [type copy];
    [dictionary setObject:v55 forKeyedSubscript:@"type"];
  }

  v56 = *MEMORY[0x1E69E9840];

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

  v9 = [(NSString *)self->_type hash];
  v10 = 2654435761 * self->_separatorStyle;
  v11 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ [(_SFPBColor *)self->_backgroundColor hash]^ (2654435761 * self->_state);
  v12 = [(NSArray *)self->_playCommands hash];
  v13 = v12 ^ [(NSArray *)self->_stopCommands hash];
  v14 = v13 ^ [(_SFPBRichText *)self->_detailText hash];
  v15 = v14 ^ [(_SFPBRichText *)self->_title hash];
  v16 = v15 ^ [(_SFPBRichText *)self->_subtitle hash];
  return v11 ^ v16 ^ [(_SFPBImage *)self->_thumbnail hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_62;
  }

  punchoutOptions = [(_SFPBAudioPlaybackCardSection *)self punchoutOptions];
  punchoutOptions2 = [equalCopy punchoutOptions];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_61;
  }

  punchoutOptions3 = [(_SFPBAudioPlaybackCardSection *)self punchoutOptions];
  if (punchoutOptions3)
  {
    v8 = punchoutOptions3;
    punchoutOptions4 = [(_SFPBAudioPlaybackCardSection *)self punchoutOptions];
    punchoutOptions5 = [equalCopy punchoutOptions];
    v11 = [punchoutOptions4 isEqual:punchoutOptions5];

    if (!v11)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBAudioPlaybackCardSection *)self punchoutPickerTitle];
  punchoutOptions2 = [equalCopy punchoutPickerTitle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_61;
  }

  punchoutPickerTitle = [(_SFPBAudioPlaybackCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    v13 = punchoutPickerTitle;
    punchoutPickerTitle2 = [(_SFPBAudioPlaybackCardSection *)self punchoutPickerTitle];
    punchoutPickerTitle3 = [equalCopy punchoutPickerTitle];
    v16 = [punchoutPickerTitle2 isEqual:punchoutPickerTitle3];

    if (!v16)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBAudioPlaybackCardSection *)self punchoutPickerDismissText];
  punchoutOptions2 = [equalCopy punchoutPickerDismissText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_61;
  }

  punchoutPickerDismissText = [(_SFPBAudioPlaybackCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    v18 = punchoutPickerDismissText;
    punchoutPickerDismissText2 = [(_SFPBAudioPlaybackCardSection *)self punchoutPickerDismissText];
    punchoutPickerDismissText3 = [equalCopy punchoutPickerDismissText];
    v21 = [punchoutPickerDismissText2 isEqual:punchoutPickerDismissText3];

    if (!v21)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [equalCopy canBeHidden])
  {
    goto LABEL_62;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [equalCopy hasTopPadding])
  {
    goto LABEL_62;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [equalCopy hasBottomPadding])
  {
    goto LABEL_62;
  }

  punchoutOptions = [(_SFPBAudioPlaybackCardSection *)self type];
  punchoutOptions2 = [equalCopy type];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_61;
  }

  type = [(_SFPBAudioPlaybackCardSection *)self type];
  if (type)
  {
    v26 = type;
    type2 = [(_SFPBAudioPlaybackCardSection *)self type];
    type3 = [equalCopy type];
    v29 = [type2 isEqual:type3];

    if (!v29)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [equalCopy separatorStyle])
  {
    goto LABEL_62;
  }

  punchoutOptions = [(_SFPBAudioPlaybackCardSection *)self backgroundColor];
  punchoutOptions2 = [equalCopy backgroundColor];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_61;
  }

  backgroundColor = [(_SFPBAudioPlaybackCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    v32 = backgroundColor;
    backgroundColor2 = [(_SFPBAudioPlaybackCardSection *)self backgroundColor];
    backgroundColor3 = [equalCopy backgroundColor];
    v35 = [backgroundColor2 isEqual:backgroundColor3];

    if (!v35)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  state = self->_state;
  if (state != [equalCopy state])
  {
    goto LABEL_62;
  }

  punchoutOptions = [(_SFPBAudioPlaybackCardSection *)self playCommands];
  punchoutOptions2 = [equalCopy playCommands];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_61;
  }

  playCommands = [(_SFPBAudioPlaybackCardSection *)self playCommands];
  if (playCommands)
  {
    v38 = playCommands;
    playCommands2 = [(_SFPBAudioPlaybackCardSection *)self playCommands];
    playCommands3 = [equalCopy playCommands];
    v41 = [playCommands2 isEqual:playCommands3];

    if (!v41)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBAudioPlaybackCardSection *)self stopCommands];
  punchoutOptions2 = [equalCopy stopCommands];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_61;
  }

  stopCommands = [(_SFPBAudioPlaybackCardSection *)self stopCommands];
  if (stopCommands)
  {
    v43 = stopCommands;
    stopCommands2 = [(_SFPBAudioPlaybackCardSection *)self stopCommands];
    stopCommands3 = [equalCopy stopCommands];
    v46 = [stopCommands2 isEqual:stopCommands3];

    if (!v46)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBAudioPlaybackCardSection *)self detailText];
  punchoutOptions2 = [equalCopy detailText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_61;
  }

  detailText = [(_SFPBAudioPlaybackCardSection *)self detailText];
  if (detailText)
  {
    v48 = detailText;
    detailText2 = [(_SFPBAudioPlaybackCardSection *)self detailText];
    detailText3 = [equalCopy detailText];
    v51 = [detailText2 isEqual:detailText3];

    if (!v51)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBAudioPlaybackCardSection *)self title];
  punchoutOptions2 = [equalCopy title];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_61;
  }

  title = [(_SFPBAudioPlaybackCardSection *)self title];
  if (title)
  {
    v53 = title;
    title2 = [(_SFPBAudioPlaybackCardSection *)self title];
    title3 = [equalCopy title];
    v56 = [title2 isEqual:title3];

    if (!v56)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBAudioPlaybackCardSection *)self subtitle];
  punchoutOptions2 = [equalCopy subtitle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_61;
  }

  subtitle = [(_SFPBAudioPlaybackCardSection *)self subtitle];
  if (subtitle)
  {
    v58 = subtitle;
    subtitle2 = [(_SFPBAudioPlaybackCardSection *)self subtitle];
    subtitle3 = [equalCopy subtitle];
    v61 = [subtitle2 isEqual:subtitle3];

    if (!v61)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBAudioPlaybackCardSection *)self thumbnail];
  punchoutOptions2 = [equalCopy thumbnail];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
LABEL_61:

    goto LABEL_62;
  }

  thumbnail = [(_SFPBAudioPlaybackCardSection *)self thumbnail];
  if (!thumbnail)
  {

LABEL_65:
    v67 = 1;
    goto LABEL_63;
  }

  v63 = thumbnail;
  thumbnail2 = [(_SFPBAudioPlaybackCardSection *)self thumbnail];
  thumbnail3 = [equalCopy thumbnail];
  v66 = [thumbnail2 isEqual:thumbnail3];

  if (v66)
  {
    goto LABEL_65;
  }

LABEL_62:
  v67 = 0;
LABEL_63:

  return v67;
}

- (void)writeTo:(id)to
{
  v47 = *MEMORY[0x1E69E9840];
  toCopy = to;
  punchoutOptions = [(_SFPBAudioPlaybackCardSection *)self punchoutOptions];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v6 = [punchoutOptions countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v41;
    do
    {
      v9 = 0;
      do
      {
        if (*v41 != v8)
        {
          objc_enumerationMutation(punchoutOptions);
        }

        v10 = *(*(&v40 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [punchoutOptions countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v7);
  }

  punchoutPickerTitle = [(_SFPBAudioPlaybackCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    PBDataWriterWriteStringField();
  }

  punchoutPickerDismissText = [(_SFPBAudioPlaybackCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBAudioPlaybackCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBAudioPlaybackCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBAudioPlaybackCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  type = [(_SFPBAudioPlaybackCardSection *)self type];
  if (type)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBAudioPlaybackCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  backgroundColor = [(_SFPBAudioPlaybackCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBAudioPlaybackCardSection *)self state])
  {
    PBDataWriterWriteInt32Field();
  }

  playCommands = [(_SFPBAudioPlaybackCardSection *)self playCommands];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v16 = [playCommands countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v37;
    do
    {
      v19 = 0;
      do
      {
        if (*v37 != v18)
        {
          objc_enumerationMutation(playCommands);
        }

        v20 = *(*(&v36 + 1) + 8 * v19);
        PBDataWriterWriteSubmessage();
        ++v19;
      }

      while (v17 != v19);
      v17 = [playCommands countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v17);
  }

  stopCommands = [(_SFPBAudioPlaybackCardSection *)self stopCommands];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v22 = [stopCommands countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v33;
    do
    {
      v25 = 0;
      do
      {
        if (*v33 != v24)
        {
          objc_enumerationMutation(stopCommands);
        }

        v26 = *(*(&v32 + 1) + 8 * v25);
        PBDataWriterWriteSubmessage();
        ++v25;
      }

      while (v23 != v25);
      v23 = [stopCommands countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v23);
  }

  detailText = [(_SFPBAudioPlaybackCardSection *)self detailText];
  if (detailText)
  {
    PBDataWriterWriteSubmessage();
  }

  title = [(_SFPBAudioPlaybackCardSection *)self title];
  if (title)
  {
    PBDataWriterWriteSubmessage();
  }

  subtitle = [(_SFPBAudioPlaybackCardSection *)self subtitle];
  if (subtitle)
  {
    PBDataWriterWriteSubmessage();
  }

  thumbnail = [(_SFPBAudioPlaybackCardSection *)self thumbnail];
  if (thumbnail)
  {
    PBDataWriterWriteSubmessage();
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (void)addStopCommands:(id)commands
{
  commandsCopy = commands;
  stopCommands = self->_stopCommands;
  v8 = commandsCopy;
  if (!stopCommands)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_stopCommands;
    self->_stopCommands = array;

    commandsCopy = v8;
    stopCommands = self->_stopCommands;
  }

  [(NSArray *)stopCommands addObject:commandsCopy];
}

- (void)setStopCommands:(id)commands
{
  v4 = [commands copy];
  stopCommands = self->_stopCommands;
  self->_stopCommands = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addPlayCommands:(id)commands
{
  commandsCopy = commands;
  playCommands = self->_playCommands;
  v8 = commandsCopy;
  if (!playCommands)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_playCommands;
    self->_playCommands = array;

    commandsCopy = v8;
    playCommands = self->_playCommands;
  }

  [(NSArray *)playCommands addObject:commandsCopy];
}

- (void)setPlayCommands:(id)commands
{
  v4 = [commands copy];
  playCommands = self->_playCommands;
  self->_playCommands = v4;

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