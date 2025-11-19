@interface _SFPBMapCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBMapCardSection)initWithDictionary:(id)a3;
- (_SFPBMapCardSection)initWithFacade:(id)a3;
- (_SFPBMapCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPins:(id)a3;
- (void)addPunchoutOptions:(id)a3;
- (void)setFootnote:(id)a3;
- (void)setFootnoteLabel:(id)a3;
- (void)setPins:(id)a3;
- (void)setPunchoutOptions:(id)a3;
- (void)setPunchoutPickerDismissText:(id)a3;
- (void)setPunchoutPickerTitle:(id)a3;
- (void)setType:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBMapCardSection

- (_SFPBMapCardSection)initWithFacade:(id)a3
{
  v61 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBMapCardSection *)self init];
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

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v8 = [v4 punchoutOptions];
    v9 = [v8 countByEnumeratingWithState:&v55 objects:v60 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v56;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v56 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v55 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v55 objects:v60 count:16];
      }

      while (v10);
    }

    [(_SFPBMapCardSection *)v5 setPunchoutOptions:v7];
    v14 = [v4 punchoutPickerTitle];

    if (v14)
    {
      v15 = [v4 punchoutPickerTitle];
      [(_SFPBMapCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [v4 punchoutPickerDismissText];

    if (v16)
    {
      v17 = [v4 punchoutPickerDismissText];
      [(_SFPBMapCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    if ([v4 hasCanBeHidden])
    {
      -[_SFPBMapCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v4 canBeHidden]);
    }

    if ([v4 hasHasTopPadding])
    {
      -[_SFPBMapCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v4 hasTopPadding]);
    }

    if ([v4 hasHasBottomPadding])
    {
      -[_SFPBMapCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v4 hasBottomPadding]);
    }

    v18 = [v4 type];

    if (v18)
    {
      v19 = [v4 type];
      [(_SFPBMapCardSection *)v5 setType:v19];
    }

    if ([v4 hasSeparatorStyle])
    {
      -[_SFPBMapCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v4 separatorStyle]);
    }

    v20 = [v4 backgroundColor];

    if (v20)
    {
      v21 = [_SFPBColor alloc];
      v22 = [v4 backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:v22];
      [(_SFPBMapCardSection *)v5 setBackgroundColor:v23];
    }

    v24 = [v4 location];

    if (v24)
    {
      v25 = [_SFPBLatLng alloc];
      v26 = [v4 location];
      v27 = [(_SFPBLatLng *)v25 initWithFacade:v26];
      [(_SFPBMapCardSection *)v5 setLocation:v27];
    }

    v28 = [v4 pinColor];

    if (v28)
    {
      v29 = [_SFPBColor alloc];
      v30 = [v4 pinColor];
      v31 = [(_SFPBColor *)v29 initWithFacade:v30];
      [(_SFPBMapCardSection *)v5 setPinColor:v31];
    }

    v32 = [v4 footnoteLabel];

    if (v32)
    {
      v33 = [v4 footnoteLabel];
      [(_SFPBMapCardSection *)v5 setFootnoteLabel:v33];
    }

    v34 = [v4 footnote];

    if (v34)
    {
      v35 = [v4 footnote];
      [(_SFPBMapCardSection *)v5 setFootnote:v35];
    }

    if ([v4 hasInteractive])
    {
      -[_SFPBMapCardSection setInteractive:](v5, "setInteractive:", [v4 interactive]);
    }

    if ([v4 hasSizeFormat])
    {
      -[_SFPBMapCardSection setSizeFormat:](v5, "setSizeFormat:", [v4 sizeFormat]);
    }

    v36 = [v4 boundingMapRegion];

    if (v36)
    {
      v37 = [_SFPBMapRegion alloc];
      v38 = [v4 boundingMapRegion];
      v39 = [(_SFPBMapRegion *)v37 initWithFacade:v38];
      [(_SFPBMapCardSection *)v5 setBoundingMapRegion:v39];
    }

    if ([v4 hasPinBehavior])
    {
      -[_SFPBMapCardSection setPinBehavior:](v5, "setPinBehavior:", [v4 pinBehavior]);
    }

    v40 = [v4 pins];
    if (v40)
    {
      v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v41 = 0;
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v42 = [v4 pins];
    v43 = [v42 countByEnumeratingWithState:&v51 objects:v59 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v52;
      do
      {
        for (j = 0; j != v44; ++j)
        {
          if (*v52 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = [[_SFPBPin alloc] initWithFacade:*(*(&v51 + 1) + 8 * j)];
          if (v47)
          {
            [v41 addObject:v47];
          }
        }

        v44 = [v42 countByEnumeratingWithState:&v51 objects:v59 count:16];
      }

      while (v44);
    }

    [(_SFPBMapCardSection *)v5 setPins:v41];
    v48 = v5;
  }

  v49 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBMapCardSection)initWithDictionary:(id)a3
{
  v81 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v78.receiver = self;
  v78.super_class = _SFPBMapCardSection;
  v5 = [(_SFPBMapCardSection *)&v78 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"punchoutOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v7 = v6;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v74 objects:v80 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v75;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v75 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v74 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [[_SFPBPunchout alloc] initWithDictionary:v13];
              [(_SFPBMapCardSection *)v5 addPunchoutOptions:v14];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v74 objects:v80 count:16];
        }

        while (v10);
      }

      v6 = v7;
    }

    v15 = [v4 objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    v69 = v15;
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 copy];
      [(_SFPBMapCardSection *)v5 setPunchoutPickerTitle:v16];
    }

    v17 = [v4 objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v17 copy];
      [(_SFPBMapCardSection *)v5 setPunchoutPickerDismissText:v18];
    }

    v19 = [v4 objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    v68 = v19;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMapCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v19 BOOLValue]);
    }

    v20 = [v4 objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    v67 = v20;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMapCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v20 BOOLValue]);
    }

    v21 = [v4 objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    v66 = v21;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMapCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v21 BOOLValue]);
    }

    v22 = [v4 objectForKeyedSubscript:@"type"];
    objc_opt_class();
    v65 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = [v22 copy];
      [(_SFPBMapCardSection *)v5 setType:v23];
    }

    v24 = [v4 objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    v64 = v24;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMapCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v24 intValue]);
    }

    v25 = [v4 objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    v63 = v25;
    if (objc_opt_isKindOfClass())
    {
      v26 = [[_SFPBColor alloc] initWithDictionary:v25];
      [(_SFPBMapCardSection *)v5 setBackgroundColor:v26];
    }

    v27 = [v4 objectForKeyedSubscript:@"location"];
    objc_opt_class();
    v62 = v27;
    if (objc_opt_isKindOfClass())
    {
      v28 = [[_SFPBLatLng alloc] initWithDictionary:v27];
      [(_SFPBMapCardSection *)v5 setLocation:v28];
    }

    v29 = [v4 objectForKeyedSubscript:@"pinColor"];
    objc_opt_class();
    v61 = v29;
    if (objc_opt_isKindOfClass())
    {
      v30 = [[_SFPBColor alloc] initWithDictionary:v29];
      [(_SFPBMapCardSection *)v5 setPinColor:v30];
    }

    v31 = [v4 objectForKeyedSubscript:@"footnoteLabel"];
    objc_opt_class();
    v60 = v31;
    if (objc_opt_isKindOfClass())
    {
      v32 = [v31 copy];
      [(_SFPBMapCardSection *)v5 setFootnoteLabel:v32];
    }

    v33 = [v4 objectForKeyedSubscript:@"footnote"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = [v33 copy];
      [(_SFPBMapCardSection *)v5 setFootnote:v34];
    }

    v35 = [v4 objectForKeyedSubscript:@"interactive"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMapCardSection setInteractive:](v5, "setInteractive:", [v35 BOOLValue]);
    }

    v36 = [v4 objectForKeyedSubscript:@"sizeFormat"];
    objc_opt_class();
    v59 = v36;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMapCardSection setSizeFormat:](v5, "setSizeFormat:", [v36 intValue]);
    }

    v37 = [v4 objectForKeyedSubscript:@"boundingMapRegion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = [[_SFPBMapRegion alloc] initWithDictionary:v37];
      v39 = v37;
      v40 = v35;
      v41 = v38;
      [(_SFPBMapCardSection *)v5 setBoundingMapRegion:v38];

      v35 = v40;
      v37 = v39;
    }

    v42 = [v4 objectForKeyedSubscript:@"pinBehavior"];
    objc_opt_class();
    v58 = v42;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMapCardSection setPinBehavior:](v5, "setPinBehavior:", [v42 intValue]);
    }

    v43 = [v4 objectForKeyedSubscript:@"pins"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v54 = v35;
      v55 = v33;
      v56 = v17;
      v57 = v6;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v44 = v43;
      v45 = [v44 countByEnumeratingWithState:&v70 objects:v79 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = *v71;
        do
        {
          for (j = 0; j != v46; ++j)
          {
            if (*v71 != v47)
            {
              objc_enumerationMutation(v44);
            }

            v49 = *(*(&v70 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v50 = [[_SFPBPin alloc] initWithDictionary:v49];
              [(_SFPBMapCardSection *)v5 addPins:v50];
            }
          }

          v46 = [v44 countByEnumeratingWithState:&v70 objects:v79 count:16];
        }

        while (v46);
      }

      v17 = v56;
      v6 = v57;
      v35 = v54;
      v33 = v55;
    }

    v51 = v5;
  }

  v52 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBMapCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBMapCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBMapCardSection *)self dictionaryRepresentation];
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
  v64 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_backgroundColor)
  {
    v4 = [(_SFPBMapCardSection *)self backgroundColor];
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

  if (self->_boundingMapRegion)
  {
    v7 = [(_SFPBMapCardSection *)self boundingMapRegion];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"boundingMapRegion"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"boundingMapRegion"];
    }
  }

  if (self->_canBeHidden)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMapCardSection canBeHidden](self, "canBeHidden")}];
    [v3 setObject:v10 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_footnote)
  {
    v11 = [(_SFPBMapCardSection *)self footnote];
    v12 = [v11 copy];
    [v3 setObject:v12 forKeyedSubscript:@"footnote"];
  }

  if (self->_footnoteLabel)
  {
    v13 = [(_SFPBMapCardSection *)self footnoteLabel];
    v14 = [v13 copy];
    [v3 setObject:v14 forKeyedSubscript:@"footnoteLabel"];
  }

  if (self->_hasBottomPadding)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMapCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [v3 setObject:v15 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMapCardSection hasTopPadding](self, "hasTopPadding")}];
    [v3 setObject:v16 forKeyedSubscript:@"hasTopPadding"];
  }

  if (self->_interactive)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMapCardSection interactive](self, "interactive")}];
    [v3 setObject:v17 forKeyedSubscript:@"interactive"];
  }

  if (self->_location)
  {
    v18 = [(_SFPBMapCardSection *)self location];
    v19 = [v18 dictionaryRepresentation];
    if (v19)
    {
      [v3 setObject:v19 forKeyedSubscript:@"location"];
    }

    else
    {
      v20 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v20 forKeyedSubscript:@"location"];
    }
  }

  if (self->_pinBehavior)
  {
    v21 = [(_SFPBMapCardSection *)self pinBehavior];
    if (v21 >= 3)
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v21];
    }

    else
    {
      v22 = off_1E7ACE548[v21];
    }

    [v3 setObject:v22 forKeyedSubscript:@"pinBehavior"];
  }

  if (self->_pinColor)
  {
    v23 = [(_SFPBMapCardSection *)self pinColor];
    v24 = [v23 dictionaryRepresentation];
    if (v24)
    {
      [v3 setObject:v24 forKeyedSubscript:@"pinColor"];
    }

    else
    {
      v25 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v25 forKeyedSubscript:@"pinColor"];
    }
  }

  if ([(NSArray *)self->_pins count])
  {
    v26 = [MEMORY[0x1E695DF70] array];
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v27 = self->_pins;
    v28 = [(NSArray *)v27 countByEnumeratingWithState:&v58 objects:v63 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v59;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v59 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = [*(*(&v58 + 1) + 8 * i) dictionaryRepresentation];
          if (v32)
          {
            [v26 addObject:v32];
          }

          else
          {
            v33 = [MEMORY[0x1E695DFB0] null];
            [v26 addObject:v33];
          }
        }

        v29 = [(NSArray *)v27 countByEnumeratingWithState:&v58 objects:v63 count:16];
      }

      while (v29);
    }

    [v3 setObject:v26 forKeyedSubscript:@"pins"];
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    v34 = [MEMORY[0x1E695DF70] array];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v35 = self->_punchoutOptions;
    v36 = [(NSArray *)v35 countByEnumeratingWithState:&v54 objects:v62 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v55;
      do
      {
        for (j = 0; j != v37; ++j)
        {
          if (*v55 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = [*(*(&v54 + 1) + 8 * j) dictionaryRepresentation];
          if (v40)
          {
            [v34 addObject:v40];
          }

          else
          {
            v41 = [MEMORY[0x1E695DFB0] null];
            [v34 addObject:v41];
          }
        }

        v37 = [(NSArray *)v35 countByEnumeratingWithState:&v54 objects:v62 count:16];
      }

      while (v37);
    }

    [v3 setObject:v34 forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    v42 = [(_SFPBMapCardSection *)self punchoutPickerDismissText];
    v43 = [v42 copy];
    [v3 setObject:v43 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    v44 = [(_SFPBMapCardSection *)self punchoutPickerTitle];
    v45 = [v44 copy];
    [v3 setObject:v45 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    v46 = [(_SFPBMapCardSection *)self separatorStyle];
    if (v46 >= 6)
    {
      v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v46];
    }

    else
    {
      v47 = off_1E7ACE580[v46];
    }

    [v3 setObject:v47 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_sizeFormat)
  {
    v48 = [(_SFPBMapCardSection *)self sizeFormat];
    if (v48)
    {
      if (v48 == 1)
      {
        v49 = @"1";
      }

      else
      {
        v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v48];
      }
    }

    else
    {
      v49 = @"0";
    }

    [v3 setObject:v49 forKeyedSubscript:@"sizeFormat"];
  }

  if (self->_type)
  {
    v50 = [(_SFPBMapCardSection *)self type];
    v51 = [v50 copy];
    [v3 setObject:v51 forKeyedSubscript:@"type"];
  }

  v52 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v23 = [(NSArray *)self->_punchoutOptions hash];
  v22 = [(NSString *)self->_punchoutPickerTitle hash];
  v3 = [(NSString *)self->_punchoutPickerDismissText hash];
  if (self->_canBeHidden)
  {
    v4 = 2654435761;
  }

  else
  {
    v4 = 0;
  }

  v20 = v4;
  v21 = v3;
  if (self->_hasTopPadding)
  {
    v5 = 2654435761;
  }

  else
  {
    v5 = 0;
  }

  if (self->_hasBottomPadding)
  {
    v6 = 2654435761;
  }

  else
  {
    v6 = 0;
  }

  v18 = v6;
  v19 = v5;
  v17 = [(NSString *)self->_type hash];
  v7 = 2654435761 * self->_separatorStyle;
  v8 = [(_SFPBColor *)self->_backgroundColor hash];
  v9 = [(_SFPBLatLng *)self->_location hash];
  v10 = [(_SFPBColor *)self->_pinColor hash];
  v11 = [(NSString *)self->_footnoteLabel hash];
  v12 = [(NSString *)self->_footnote hash];
  if (self->_interactive)
  {
    v13 = 2654435761;
  }

  else
  {
    v13 = 0;
  }

  v14 = 2654435761 * self->_sizeFormat;
  v15 = v22 ^ v23 ^ v21 ^ v20 ^ v19 ^ v18 ^ v17 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ [(_SFPBMapRegion *)self->_boundingMapRegion hash]^ (2654435761 * self->_pinBehavior);
  return v15 ^ [(NSArray *)self->_pins hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_64;
  }

  v5 = [(_SFPBMapCardSection *)self punchoutOptions];
  v6 = [v4 punchoutOptions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_63;
  }

  v7 = [(_SFPBMapCardSection *)self punchoutOptions];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBMapCardSection *)self punchoutOptions];
    v10 = [v4 punchoutOptions];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_64;
    }
  }

  else
  {
  }

  v5 = [(_SFPBMapCardSection *)self punchoutPickerTitle];
  v6 = [v4 punchoutPickerTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_63;
  }

  v12 = [(_SFPBMapCardSection *)self punchoutPickerTitle];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBMapCardSection *)self punchoutPickerTitle];
    v15 = [v4 punchoutPickerTitle];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_64;
    }
  }

  else
  {
  }

  v5 = [(_SFPBMapCardSection *)self punchoutPickerDismissText];
  v6 = [v4 punchoutPickerDismissText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_63;
  }

  v17 = [(_SFPBMapCardSection *)self punchoutPickerDismissText];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBMapCardSection *)self punchoutPickerDismissText];
    v20 = [v4 punchoutPickerDismissText];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_64;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [v4 canBeHidden])
  {
    goto LABEL_64;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [v4 hasTopPadding])
  {
    goto LABEL_64;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [v4 hasBottomPadding])
  {
    goto LABEL_64;
  }

  v5 = [(_SFPBMapCardSection *)self type];
  v6 = [v4 type];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_63;
  }

  v25 = [(_SFPBMapCardSection *)self type];
  if (v25)
  {
    v26 = v25;
    v27 = [(_SFPBMapCardSection *)self type];
    v28 = [v4 type];
    v29 = [v27 isEqual:v28];

    if (!v29)
    {
      goto LABEL_64;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [v4 separatorStyle])
  {
    goto LABEL_64;
  }

  v5 = [(_SFPBMapCardSection *)self backgroundColor];
  v6 = [v4 backgroundColor];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_63;
  }

  v31 = [(_SFPBMapCardSection *)self backgroundColor];
  if (v31)
  {
    v32 = v31;
    v33 = [(_SFPBMapCardSection *)self backgroundColor];
    v34 = [v4 backgroundColor];
    v35 = [v33 isEqual:v34];

    if (!v35)
    {
      goto LABEL_64;
    }
  }

  else
  {
  }

  v5 = [(_SFPBMapCardSection *)self location];
  v6 = [v4 location];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_63;
  }

  v36 = [(_SFPBMapCardSection *)self location];
  if (v36)
  {
    v37 = v36;
    v38 = [(_SFPBMapCardSection *)self location];
    v39 = [v4 location];
    v40 = [v38 isEqual:v39];

    if (!v40)
    {
      goto LABEL_64;
    }
  }

  else
  {
  }

  v5 = [(_SFPBMapCardSection *)self pinColor];
  v6 = [v4 pinColor];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_63;
  }

  v41 = [(_SFPBMapCardSection *)self pinColor];
  if (v41)
  {
    v42 = v41;
    v43 = [(_SFPBMapCardSection *)self pinColor];
    v44 = [v4 pinColor];
    v45 = [v43 isEqual:v44];

    if (!v45)
    {
      goto LABEL_64;
    }
  }

  else
  {
  }

  v5 = [(_SFPBMapCardSection *)self footnoteLabel];
  v6 = [v4 footnoteLabel];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_63;
  }

  v46 = [(_SFPBMapCardSection *)self footnoteLabel];
  if (v46)
  {
    v47 = v46;
    v48 = [(_SFPBMapCardSection *)self footnoteLabel];
    v49 = [v4 footnoteLabel];
    v50 = [v48 isEqual:v49];

    if (!v50)
    {
      goto LABEL_64;
    }
  }

  else
  {
  }

  v5 = [(_SFPBMapCardSection *)self footnote];
  v6 = [v4 footnote];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_63;
  }

  v51 = [(_SFPBMapCardSection *)self footnote];
  if (v51)
  {
    v52 = v51;
    v53 = [(_SFPBMapCardSection *)self footnote];
    v54 = [v4 footnote];
    v55 = [v53 isEqual:v54];

    if (!v55)
    {
      goto LABEL_64;
    }
  }

  else
  {
  }

  interactive = self->_interactive;
  if (interactive != [v4 interactive])
  {
    goto LABEL_64;
  }

  sizeFormat = self->_sizeFormat;
  if (sizeFormat != [v4 sizeFormat])
  {
    goto LABEL_64;
  }

  v5 = [(_SFPBMapCardSection *)self boundingMapRegion];
  v6 = [v4 boundingMapRegion];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_63;
  }

  v58 = [(_SFPBMapCardSection *)self boundingMapRegion];
  if (v58)
  {
    v59 = v58;
    v60 = [(_SFPBMapCardSection *)self boundingMapRegion];
    v61 = [v4 boundingMapRegion];
    v62 = [v60 isEqual:v61];

    if (!v62)
    {
      goto LABEL_64;
    }
  }

  else
  {
  }

  pinBehavior = self->_pinBehavior;
  if (pinBehavior != [v4 pinBehavior])
  {
    goto LABEL_64;
  }

  v5 = [(_SFPBMapCardSection *)self pins];
  v6 = [v4 pins];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_63:

    goto LABEL_64;
  }

  v64 = [(_SFPBMapCardSection *)self pins];
  if (!v64)
  {

LABEL_67:
    v69 = 1;
    goto LABEL_65;
  }

  v65 = v64;
  v66 = [(_SFPBMapCardSection *)self pins];
  v67 = [v4 pins];
  v68 = [v66 isEqual:v67];

  if (v68)
  {
    goto LABEL_67;
  }

LABEL_64:
  v69 = 0;
LABEL_65:

  return v69;
}

- (void)writeTo:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBMapCardSection *)self punchoutOptions];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    do
    {
      v9 = 0;
      do
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v31 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v7);
  }

  v11 = [(_SFPBMapCardSection *)self punchoutPickerTitle];
  if (v11)
  {
    PBDataWriterWriteStringField();
  }

  v12 = [(_SFPBMapCardSection *)self punchoutPickerDismissText];
  if (v12)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBMapCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBMapCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBMapCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  v13 = [(_SFPBMapCardSection *)self type];
  if (v13)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBMapCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  v14 = [(_SFPBMapCardSection *)self backgroundColor];
  if (v14)
  {
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_SFPBMapCardSection *)self location];
  if (v15)
  {
    PBDataWriterWriteSubmessage();
  }

  v16 = [(_SFPBMapCardSection *)self pinColor];
  if (v16)
  {
    PBDataWriterWriteSubmessage();
  }

  v17 = [(_SFPBMapCardSection *)self footnoteLabel];
  if (v17)
  {
    PBDataWriterWriteStringField();
  }

  v18 = [(_SFPBMapCardSection *)self footnote];
  if (v18)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBMapCardSection *)self interactive])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBMapCardSection *)self sizeFormat])
  {
    PBDataWriterWriteInt32Field();
  }

  v19 = [(_SFPBMapCardSection *)self boundingMapRegion];
  if (v19)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBMapCardSection *)self pinBehavior])
  {
    PBDataWriterWriteInt32Field();
  }

  v20 = [(_SFPBMapCardSection *)self pins];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v21 = [v20 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v28;
    do
    {
      v24 = 0;
      do
      {
        if (*v28 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v27 + 1) + 8 * v24);
        PBDataWriterWriteSubmessage();
        ++v24;
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v22);
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)addPins:(id)a3
{
  v4 = a3;
  pins = self->_pins;
  v8 = v4;
  if (!pins)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_pins;
    self->_pins = v6;

    v4 = v8;
    pins = self->_pins;
  }

  [(NSArray *)pins addObject:v4];
}

- (void)setPins:(id)a3
{
  v4 = [a3 copy];
  pins = self->_pins;
  self->_pins = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setFootnote:(id)a3
{
  v4 = [a3 copy];
  footnote = self->_footnote;
  self->_footnote = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setFootnoteLabel:(id)a3
{
  v4 = [a3 copy];
  footnoteLabel = self->_footnoteLabel;
  self->_footnoteLabel = v4;

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