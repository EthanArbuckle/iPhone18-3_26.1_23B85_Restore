@interface _SFPBAudioPlaybackCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBAudioPlaybackCardSection)initWithDictionary:(id)a3;
- (_SFPBAudioPlaybackCardSection)initWithFacade:(id)a3;
- (_SFPBAudioPlaybackCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPlayCommands:(id)a3;
- (void)addPunchoutOptions:(id)a3;
- (void)addStopCommands:(id)a3;
- (void)setPlayCommands:(id)a3;
- (void)setPunchoutOptions:(id)a3;
- (void)setPunchoutPickerDismissText:(id)a3;
- (void)setPunchoutPickerTitle:(id)a3;
- (void)setStopCommands:(id)a3;
- (void)setType:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBAudioPlaybackCardSection

- (_SFPBAudioPlaybackCardSection)initWithFacade:(id)a3
{
  v75 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBAudioPlaybackCardSection *)self init];
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

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v8 = [v4 punchoutOptions];
    v9 = [v8 countByEnumeratingWithState:&v68 objects:v74 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v68 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v68 objects:v74 count:16];
      }

      while (v10);
    }

    [(_SFPBAudioPlaybackCardSection *)v5 setPunchoutOptions:v7];
    v14 = [v4 punchoutPickerTitle];

    if (v14)
    {
      v15 = [v4 punchoutPickerTitle];
      [(_SFPBAudioPlaybackCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [v4 punchoutPickerDismissText];

    if (v16)
    {
      v17 = [v4 punchoutPickerDismissText];
      [(_SFPBAudioPlaybackCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    if ([v4 hasCanBeHidden])
    {
      -[_SFPBAudioPlaybackCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v4 canBeHidden]);
    }

    if ([v4 hasHasTopPadding])
    {
      -[_SFPBAudioPlaybackCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v4 hasTopPadding]);
    }

    if ([v4 hasHasBottomPadding])
    {
      -[_SFPBAudioPlaybackCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v4 hasBottomPadding]);
    }

    v18 = [v4 type];

    if (v18)
    {
      v19 = [v4 type];
      [(_SFPBAudioPlaybackCardSection *)v5 setType:v19];
    }

    if ([v4 hasSeparatorStyle])
    {
      -[_SFPBAudioPlaybackCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v4 separatorStyle]);
    }

    v20 = [v4 backgroundColor];

    if (v20)
    {
      v21 = [_SFPBColor alloc];
      v22 = [v4 backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:v22];
      [(_SFPBAudioPlaybackCardSection *)v5 setBackgroundColor:v23];
    }

    if ([v4 hasState])
    {
      -[_SFPBAudioPlaybackCardSection setState:](v5, "setState:", [v4 state]);
    }

    v24 = [v4 playCommands];
    if (v24)
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
    v26 = [v4 playCommands];
    v27 = [v26 countByEnumeratingWithState:&v64 objects:v73 count:16];
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
            objc_enumerationMutation(v26);
          }

          v31 = [[_SFPBAbstractCommand alloc] initWithFacade:*(*(&v64 + 1) + 8 * j)];
          if (v31)
          {
            [v25 addObject:v31];
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v64 objects:v73 count:16];
      }

      while (v28);
    }

    [(_SFPBAudioPlaybackCardSection *)v5 setPlayCommands:v25];
    v32 = [v4 stopCommands];
    v59 = v5;
    if (v32)
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
    v34 = [v4 stopCommands];
    v35 = [v34 countByEnumeratingWithState:&v60 objects:v72 count:16];
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
            objc_enumerationMutation(v34);
          }

          v39 = [[_SFPBAbstractCommand alloc] initWithFacade:*(*(&v60 + 1) + 8 * k)];
          if (v39)
          {
            [v33 addObject:v39];
          }
        }

        v36 = [v34 countByEnumeratingWithState:&v60 objects:v72 count:16];
      }

      while (v36);
    }

    v5 = v59;
    [(_SFPBAudioPlaybackCardSection *)v59 setStopCommands:v33];
    v40 = [v4 detailText];

    if (v40)
    {
      v41 = [_SFPBRichText alloc];
      v42 = [v4 detailText];
      v43 = [(_SFPBRichText *)v41 initWithFacade:v42];
      [(_SFPBAudioPlaybackCardSection *)v59 setDetailText:v43];
    }

    v44 = [v4 title];

    if (v44)
    {
      v45 = [_SFPBRichText alloc];
      v46 = [v4 title];
      v47 = [(_SFPBRichText *)v45 initWithFacade:v46];
      [(_SFPBAudioPlaybackCardSection *)v59 setTitle:v47];
    }

    v48 = [v4 subtitle];

    if (v48)
    {
      v49 = [_SFPBRichText alloc];
      v50 = [v4 subtitle];
      v51 = [(_SFPBRichText *)v49 initWithFacade:v50];
      [(_SFPBAudioPlaybackCardSection *)v59 setSubtitle:v51];
    }

    v52 = [v4 thumbnail];

    if (v52)
    {
      v53 = [_SFPBImage alloc];
      v54 = [v4 thumbnail];
      v55 = [(_SFPBImage *)v53 initWithFacade:v54];
      [(_SFPBAudioPlaybackCardSection *)v59 setThumbnail:v55];
    }

    v56 = v59;
  }

  v57 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBAudioPlaybackCardSection)initWithDictionary:(id)a3
{
  v84 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v80.receiver = self;
  v80.super_class = _SFPBAudioPlaybackCardSection;
  v5 = [(_SFPBAudioPlaybackCardSection *)&v80 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"punchoutOptions"];
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

    v14 = [v4 objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBAudioPlaybackCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v62 = v14;
    v16 = [v4 objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBAudioPlaybackCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    v61 = v16;
    v18 = [v4 objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBAudioPlaybackCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v18 BOOLValue]);
    }

    v19 = [v4 objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBAudioPlaybackCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v19 BOOLValue]);
    }

    v20 = [v4 objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBAudioPlaybackCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v20 BOOLValue]);
    }

    v21 = [v4 objectForKeyedSubscript:@"type"];
    objc_opt_class();
    v66 = v21;
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBAudioPlaybackCardSection *)v5 setType:v22];
    }

    v23 = [v4 objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    v65 = v23;
    v24 = 0x1E695D000;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBAudioPlaybackCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v23 intValue]);
    }

    v25 = [v4 objectForKeyedSubscript:@"backgroundColor"];
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
    v27 = [v4 objectForKeyedSubscript:@"state"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBAudioPlaybackCardSection setState:](v5, "setState:", [v27 intValue]);
    }

    v57 = v27;
    v63 = v6;
    v28 = [v4 objectForKeyedSubscript:@"playCommands"];
    v29 = *(v24 + 3784);
    objc_opt_class();
    v67 = v4;
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

    v37 = [v4 objectForKeyedSubscript:@"stopCommands"];
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

    v46 = [v4 objectForKeyedSubscript:@"detailText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = [[_SFPBRichText alloc] initWithDictionary:v46];
      [(_SFPBAudioPlaybackCardSection *)v5 setDetailText:v47];
    }

    v48 = [v4 objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v49 = [[_SFPBRichText alloc] initWithDictionary:v48];
      [(_SFPBAudioPlaybackCardSection *)v5 setTitle:v49];
    }

    v50 = [v4 objectForKeyedSubscript:@"subtitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v51 = [[_SFPBRichText alloc] initWithDictionary:v50];
      [(_SFPBAudioPlaybackCardSection *)v5 setSubtitle:v51];

      v4 = v67;
    }

    v52 = [v4 objectForKeyedSubscript:@"thumbnail"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v53 = [[_SFPBImage alloc] initWithDictionary:v52];
      [(_SFPBAudioPlaybackCardSection *)v5 setThumbnail:v53];
    }

    v54 = v5;

    v4 = v67;
  }

  v55 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBAudioPlaybackCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBAudioPlaybackCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBAudioPlaybackCardSection *)self dictionaryRepresentation];
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
  v73 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_backgroundColor)
  {
    v4 = [(_SFPBAudioPlaybackCardSection *)self backgroundColor];
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
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBAudioPlaybackCardSection canBeHidden](self, "canBeHidden")}];
    [v3 setObject:v7 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_detailText)
  {
    v8 = [(_SFPBAudioPlaybackCardSection *)self detailText];
    v9 = [v8 dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"detailText"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"detailText"];
    }
  }

  if (self->_hasBottomPadding)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBAudioPlaybackCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [v3 setObject:v11 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBAudioPlaybackCardSection hasTopPadding](self, "hasTopPadding")}];
    [v3 setObject:v12 forKeyedSubscript:@"hasTopPadding"];
  }

  if ([(NSArray *)self->_playCommands count])
  {
    v13 = [MEMORY[0x1E695DF70] array];
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

          v19 = [*(*(&v66 + 1) + 8 * i) dictionaryRepresentation];
          if (v19)
          {
            [v13 addObject:v19];
          }

          else
          {
            v20 = [MEMORY[0x1E695DFB0] null];
            [v13 addObject:v20];
          }
        }

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v66 objects:v72 count:16];
      }

      while (v16);
    }

    [v3 setObject:v13 forKeyedSubscript:@"playCommands"];
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    v21 = [MEMORY[0x1E695DF70] array];
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

          v27 = [*(*(&v62 + 1) + 8 * j) dictionaryRepresentation];
          if (v27)
          {
            [v21 addObject:v27];
          }

          else
          {
            v28 = [MEMORY[0x1E695DFB0] null];
            [v21 addObject:v28];
          }
        }

        v24 = [(NSArray *)v22 countByEnumeratingWithState:&v62 objects:v71 count:16];
      }

      while (v24);
    }

    [v3 setObject:v21 forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    v29 = [(_SFPBAudioPlaybackCardSection *)self punchoutPickerDismissText];
    v30 = [v29 copy];
    [v3 setObject:v30 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    v31 = [(_SFPBAudioPlaybackCardSection *)self punchoutPickerTitle];
    v32 = [v31 copy];
    [v3 setObject:v32 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    v33 = [(_SFPBAudioPlaybackCardSection *)self separatorStyle];
    if (v33 >= 6)
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v33];
    }

    else
    {
      v34 = off_1E7ACE580[v33];
    }

    [v3 setObject:v34 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_state)
  {
    v35 = [(_SFPBAudioPlaybackCardSection *)self state];
    if (v35 >= 6)
    {
      v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v35];
    }

    else
    {
      v36 = off_1E7ACE580[v35];
    }

    [v3 setObject:v36 forKeyedSubscript:@"state"];
  }

  if ([(NSArray *)self->_stopCommands count])
  {
    v37 = [MEMORY[0x1E695DF70] array];
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

          v43 = [*(*(&v58 + 1) + 8 * k) dictionaryRepresentation];
          if (v43)
          {
            [v37 addObject:v43];
          }

          else
          {
            v44 = [MEMORY[0x1E695DFB0] null];
            [v37 addObject:v44];
          }
        }

        v40 = [(NSArray *)v38 countByEnumeratingWithState:&v58 objects:v70 count:16];
      }

      while (v40);
    }

    [v3 setObject:v37 forKeyedSubscript:@"stopCommands"];
  }

  if (self->_subtitle)
  {
    v45 = [(_SFPBAudioPlaybackCardSection *)self subtitle];
    v46 = [v45 dictionaryRepresentation];
    if (v46)
    {
      [v3 setObject:v46 forKeyedSubscript:@"subtitle"];
    }

    else
    {
      v47 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v47 forKeyedSubscript:@"subtitle"];
    }
  }

  if (self->_thumbnail)
  {
    v48 = [(_SFPBAudioPlaybackCardSection *)self thumbnail];
    v49 = [v48 dictionaryRepresentation];
    if (v49)
    {
      [v3 setObject:v49 forKeyedSubscript:@"thumbnail"];
    }

    else
    {
      v50 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v50 forKeyedSubscript:@"thumbnail"];
    }
  }

  if (self->_title)
  {
    v51 = [(_SFPBAudioPlaybackCardSection *)self title];
    v52 = [v51 dictionaryRepresentation];
    if (v52)
    {
      [v3 setObject:v52 forKeyedSubscript:@"title"];
    }

    else
    {
      v53 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v53 forKeyedSubscript:@"title"];
    }
  }

  if (self->_type)
  {
    v54 = [(_SFPBAudioPlaybackCardSection *)self type];
    v55 = [v54 copy];
    [v3 setObject:v55 forKeyedSubscript:@"type"];
  }

  v56 = *MEMORY[0x1E69E9840];

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
  v11 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ [(_SFPBColor *)self->_backgroundColor hash]^ (2654435761 * self->_state);
  v12 = [(NSArray *)self->_playCommands hash];
  v13 = v12 ^ [(NSArray *)self->_stopCommands hash];
  v14 = v13 ^ [(_SFPBRichText *)self->_detailText hash];
  v15 = v14 ^ [(_SFPBRichText *)self->_title hash];
  v16 = v15 ^ [(_SFPBRichText *)self->_subtitle hash];
  return v11 ^ v16 ^ [(_SFPBImage *)self->_thumbnail hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_62;
  }

  v5 = [(_SFPBAudioPlaybackCardSection *)self punchoutOptions];
  v6 = [v4 punchoutOptions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_61;
  }

  v7 = [(_SFPBAudioPlaybackCardSection *)self punchoutOptions];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBAudioPlaybackCardSection *)self punchoutOptions];
    v10 = [v4 punchoutOptions];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  v5 = [(_SFPBAudioPlaybackCardSection *)self punchoutPickerTitle];
  v6 = [v4 punchoutPickerTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_61;
  }

  v12 = [(_SFPBAudioPlaybackCardSection *)self punchoutPickerTitle];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBAudioPlaybackCardSection *)self punchoutPickerTitle];
    v15 = [v4 punchoutPickerTitle];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  v5 = [(_SFPBAudioPlaybackCardSection *)self punchoutPickerDismissText];
  v6 = [v4 punchoutPickerDismissText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_61;
  }

  v17 = [(_SFPBAudioPlaybackCardSection *)self punchoutPickerDismissText];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBAudioPlaybackCardSection *)self punchoutPickerDismissText];
    v20 = [v4 punchoutPickerDismissText];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [v4 canBeHidden])
  {
    goto LABEL_62;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [v4 hasTopPadding])
  {
    goto LABEL_62;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [v4 hasBottomPadding])
  {
    goto LABEL_62;
  }

  v5 = [(_SFPBAudioPlaybackCardSection *)self type];
  v6 = [v4 type];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_61;
  }

  v25 = [(_SFPBAudioPlaybackCardSection *)self type];
  if (v25)
  {
    v26 = v25;
    v27 = [(_SFPBAudioPlaybackCardSection *)self type];
    v28 = [v4 type];
    v29 = [v27 isEqual:v28];

    if (!v29)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [v4 separatorStyle])
  {
    goto LABEL_62;
  }

  v5 = [(_SFPBAudioPlaybackCardSection *)self backgroundColor];
  v6 = [v4 backgroundColor];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_61;
  }

  v31 = [(_SFPBAudioPlaybackCardSection *)self backgroundColor];
  if (v31)
  {
    v32 = v31;
    v33 = [(_SFPBAudioPlaybackCardSection *)self backgroundColor];
    v34 = [v4 backgroundColor];
    v35 = [v33 isEqual:v34];

    if (!v35)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  state = self->_state;
  if (state != [v4 state])
  {
    goto LABEL_62;
  }

  v5 = [(_SFPBAudioPlaybackCardSection *)self playCommands];
  v6 = [v4 playCommands];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_61;
  }

  v37 = [(_SFPBAudioPlaybackCardSection *)self playCommands];
  if (v37)
  {
    v38 = v37;
    v39 = [(_SFPBAudioPlaybackCardSection *)self playCommands];
    v40 = [v4 playCommands];
    v41 = [v39 isEqual:v40];

    if (!v41)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  v5 = [(_SFPBAudioPlaybackCardSection *)self stopCommands];
  v6 = [v4 stopCommands];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_61;
  }

  v42 = [(_SFPBAudioPlaybackCardSection *)self stopCommands];
  if (v42)
  {
    v43 = v42;
    v44 = [(_SFPBAudioPlaybackCardSection *)self stopCommands];
    v45 = [v4 stopCommands];
    v46 = [v44 isEqual:v45];

    if (!v46)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  v5 = [(_SFPBAudioPlaybackCardSection *)self detailText];
  v6 = [v4 detailText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_61;
  }

  v47 = [(_SFPBAudioPlaybackCardSection *)self detailText];
  if (v47)
  {
    v48 = v47;
    v49 = [(_SFPBAudioPlaybackCardSection *)self detailText];
    v50 = [v4 detailText];
    v51 = [v49 isEqual:v50];

    if (!v51)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  v5 = [(_SFPBAudioPlaybackCardSection *)self title];
  v6 = [v4 title];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_61;
  }

  v52 = [(_SFPBAudioPlaybackCardSection *)self title];
  if (v52)
  {
    v53 = v52;
    v54 = [(_SFPBAudioPlaybackCardSection *)self title];
    v55 = [v4 title];
    v56 = [v54 isEqual:v55];

    if (!v56)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  v5 = [(_SFPBAudioPlaybackCardSection *)self subtitle];
  v6 = [v4 subtitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_61;
  }

  v57 = [(_SFPBAudioPlaybackCardSection *)self subtitle];
  if (v57)
  {
    v58 = v57;
    v59 = [(_SFPBAudioPlaybackCardSection *)self subtitle];
    v60 = [v4 subtitle];
    v61 = [v59 isEqual:v60];

    if (!v61)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  v5 = [(_SFPBAudioPlaybackCardSection *)self thumbnail];
  v6 = [v4 thumbnail];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_61:

    goto LABEL_62;
  }

  v62 = [(_SFPBAudioPlaybackCardSection *)self thumbnail];
  if (!v62)
  {

LABEL_65:
    v67 = 1;
    goto LABEL_63;
  }

  v63 = v62;
  v64 = [(_SFPBAudioPlaybackCardSection *)self thumbnail];
  v65 = [v4 thumbnail];
  v66 = [v64 isEqual:v65];

  if (v66)
  {
    goto LABEL_65;
  }

LABEL_62:
  v67 = 0;
LABEL_63:

  return v67;
}

- (void)writeTo:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBAudioPlaybackCardSection *)self punchoutOptions];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v40 objects:v46 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v40 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v7);
  }

  v11 = [(_SFPBAudioPlaybackCardSection *)self punchoutPickerTitle];
  if (v11)
  {
    PBDataWriterWriteStringField();
  }

  v12 = [(_SFPBAudioPlaybackCardSection *)self punchoutPickerDismissText];
  if (v12)
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

  v13 = [(_SFPBAudioPlaybackCardSection *)self type];
  if (v13)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBAudioPlaybackCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  v14 = [(_SFPBAudioPlaybackCardSection *)self backgroundColor];
  if (v14)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBAudioPlaybackCardSection *)self state])
  {
    PBDataWriterWriteInt32Field();
  }

  v15 = [(_SFPBAudioPlaybackCardSection *)self playCommands];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v36 objects:v45 count:16];
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
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v36 + 1) + 8 * v19);
        PBDataWriterWriteSubmessage();
        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v17);
  }

  v21 = [(_SFPBAudioPlaybackCardSection *)self stopCommands];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v22 = [v21 countByEnumeratingWithState:&v32 objects:v44 count:16];
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
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v32 + 1) + 8 * v25);
        PBDataWriterWriteSubmessage();
        ++v25;
      }

      while (v23 != v25);
      v23 = [v21 countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v23);
  }

  v27 = [(_SFPBAudioPlaybackCardSection *)self detailText];
  if (v27)
  {
    PBDataWriterWriteSubmessage();
  }

  v28 = [(_SFPBAudioPlaybackCardSection *)self title];
  if (v28)
  {
    PBDataWriterWriteSubmessage();
  }

  v29 = [(_SFPBAudioPlaybackCardSection *)self subtitle];
  if (v29)
  {
    PBDataWriterWriteSubmessage();
  }

  v30 = [(_SFPBAudioPlaybackCardSection *)self thumbnail];
  if (v30)
  {
    PBDataWriterWriteSubmessage();
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (void)addStopCommands:(id)a3
{
  v4 = a3;
  stopCommands = self->_stopCommands;
  v8 = v4;
  if (!stopCommands)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_stopCommands;
    self->_stopCommands = v6;

    v4 = v8;
    stopCommands = self->_stopCommands;
  }

  [(NSArray *)stopCommands addObject:v4];
}

- (void)setStopCommands:(id)a3
{
  v4 = [a3 copy];
  stopCommands = self->_stopCommands;
  self->_stopCommands = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addPlayCommands:(id)a3
{
  v4 = a3;
  playCommands = self->_playCommands;
  v8 = v4;
  if (!playCommands)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_playCommands;
    self->_playCommands = v6;

    v4 = v8;
    playCommands = self->_playCommands;
  }

  [(NSArray *)playCommands addObject:v4];
}

- (void)setPlayCommands:(id)a3
{
  v4 = [a3 copy];
  playCommands = self->_playCommands;
  self->_playCommands = v4;

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