@interface _SFPBMapCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBMapCardSection)initWithDictionary:(id)dictionary;
- (_SFPBMapCardSection)initWithFacade:(id)facade;
- (_SFPBMapCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPins:(id)pins;
- (void)addPunchoutOptions:(id)options;
- (void)setFootnote:(id)footnote;
- (void)setFootnoteLabel:(id)label;
- (void)setPins:(id)pins;
- (void)setPunchoutOptions:(id)options;
- (void)setPunchoutPickerDismissText:(id)text;
- (void)setPunchoutPickerTitle:(id)title;
- (void)setType:(id)type;
- (void)writeTo:(id)to;
@end

@implementation _SFPBMapCardSection

- (_SFPBMapCardSection)initWithFacade:(id)facade
{
  v61 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBMapCardSection *)self init];
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

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    punchoutOptions2 = [facadeCopy punchoutOptions];
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v55 objects:v60 count:16];
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
            objc_enumerationMutation(punchoutOptions2);
          }

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v55 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v55 objects:v60 count:16];
      }

      while (v10);
    }

    [(_SFPBMapCardSection *)v5 setPunchoutOptions:v7];
    punchoutPickerTitle = [facadeCopy punchoutPickerTitle];

    if (punchoutPickerTitle)
    {
      punchoutPickerTitle2 = [facadeCopy punchoutPickerTitle];
      [(_SFPBMapCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle2];
    }

    punchoutPickerDismissText = [facadeCopy punchoutPickerDismissText];

    if (punchoutPickerDismissText)
    {
      punchoutPickerDismissText2 = [facadeCopy punchoutPickerDismissText];
      [(_SFPBMapCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText2];
    }

    if ([facadeCopy hasCanBeHidden])
    {
      -[_SFPBMapCardSection setCanBeHidden:](v5, "setCanBeHidden:", [facadeCopy canBeHidden]);
    }

    if ([facadeCopy hasHasTopPadding])
    {
      -[_SFPBMapCardSection setHasTopPadding:](v5, "setHasTopPadding:", [facadeCopy hasTopPadding]);
    }

    if ([facadeCopy hasHasBottomPadding])
    {
      -[_SFPBMapCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [facadeCopy hasBottomPadding]);
    }

    type = [facadeCopy type];

    if (type)
    {
      type2 = [facadeCopy type];
      [(_SFPBMapCardSection *)v5 setType:type2];
    }

    if ([facadeCopy hasSeparatorStyle])
    {
      -[_SFPBMapCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [facadeCopy separatorStyle]);
    }

    backgroundColor = [facadeCopy backgroundColor];

    if (backgroundColor)
    {
      v21 = [_SFPBColor alloc];
      backgroundColor2 = [facadeCopy backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:backgroundColor2];
      [(_SFPBMapCardSection *)v5 setBackgroundColor:v23];
    }

    location = [facadeCopy location];

    if (location)
    {
      v25 = [_SFPBLatLng alloc];
      location2 = [facadeCopy location];
      v27 = [(_SFPBLatLng *)v25 initWithFacade:location2];
      [(_SFPBMapCardSection *)v5 setLocation:v27];
    }

    pinColor = [facadeCopy pinColor];

    if (pinColor)
    {
      v29 = [_SFPBColor alloc];
      pinColor2 = [facadeCopy pinColor];
      v31 = [(_SFPBColor *)v29 initWithFacade:pinColor2];
      [(_SFPBMapCardSection *)v5 setPinColor:v31];
    }

    footnoteLabel = [facadeCopy footnoteLabel];

    if (footnoteLabel)
    {
      footnoteLabel2 = [facadeCopy footnoteLabel];
      [(_SFPBMapCardSection *)v5 setFootnoteLabel:footnoteLabel2];
    }

    footnote = [facadeCopy footnote];

    if (footnote)
    {
      footnote2 = [facadeCopy footnote];
      [(_SFPBMapCardSection *)v5 setFootnote:footnote2];
    }

    if ([facadeCopy hasInteractive])
    {
      -[_SFPBMapCardSection setInteractive:](v5, "setInteractive:", [facadeCopy interactive]);
    }

    if ([facadeCopy hasSizeFormat])
    {
      -[_SFPBMapCardSection setSizeFormat:](v5, "setSizeFormat:", [facadeCopy sizeFormat]);
    }

    boundingMapRegion = [facadeCopy boundingMapRegion];

    if (boundingMapRegion)
    {
      v37 = [_SFPBMapRegion alloc];
      boundingMapRegion2 = [facadeCopy boundingMapRegion];
      v39 = [(_SFPBMapRegion *)v37 initWithFacade:boundingMapRegion2];
      [(_SFPBMapCardSection *)v5 setBoundingMapRegion:v39];
    }

    if ([facadeCopy hasPinBehavior])
    {
      -[_SFPBMapCardSection setPinBehavior:](v5, "setPinBehavior:", [facadeCopy pinBehavior]);
    }

    pins = [facadeCopy pins];
    if (pins)
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
    pins2 = [facadeCopy pins];
    v43 = [pins2 countByEnumeratingWithState:&v51 objects:v59 count:16];
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
            objc_enumerationMutation(pins2);
          }

          v47 = [[_SFPBPin alloc] initWithFacade:*(*(&v51 + 1) + 8 * j)];
          if (v47)
          {
            [v41 addObject:v47];
          }
        }

        v44 = [pins2 countByEnumeratingWithState:&v51 objects:v59 count:16];
      }

      while (v44);
    }

    [(_SFPBMapCardSection *)v5 setPins:v41];
    v48 = v5;
  }

  v49 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBMapCardSection)initWithDictionary:(id)dictionary
{
  v81 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v78.receiver = self;
  v78.super_class = _SFPBMapCardSection;
  v5 = [(_SFPBMapCardSection *)&v78 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"punchoutOptions"];
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

    v15 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    v69 = v15;
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 copy];
      [(_SFPBMapCardSection *)v5 setPunchoutPickerTitle:v16];
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v17 copy];
      [(_SFPBMapCardSection *)v5 setPunchoutPickerDismissText:v18];
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    v68 = v19;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMapCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v19 BOOLValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    v67 = v20;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMapCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v20 BOOLValue]);
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    v66 = v21;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMapCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v21 BOOLValue]);
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    objc_opt_class();
    v65 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = [v22 copy];
      [(_SFPBMapCardSection *)v5 setType:v23];
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    v64 = v24;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMapCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v24 intValue]);
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    v63 = v25;
    if (objc_opt_isKindOfClass())
    {
      v26 = [[_SFPBColor alloc] initWithDictionary:v25];
      [(_SFPBMapCardSection *)v5 setBackgroundColor:v26];
    }

    v27 = [dictionaryCopy objectForKeyedSubscript:@"location"];
    objc_opt_class();
    v62 = v27;
    if (objc_opt_isKindOfClass())
    {
      v28 = [[_SFPBLatLng alloc] initWithDictionary:v27];
      [(_SFPBMapCardSection *)v5 setLocation:v28];
    }

    v29 = [dictionaryCopy objectForKeyedSubscript:@"pinColor"];
    objc_opt_class();
    v61 = v29;
    if (objc_opt_isKindOfClass())
    {
      v30 = [[_SFPBColor alloc] initWithDictionary:v29];
      [(_SFPBMapCardSection *)v5 setPinColor:v30];
    }

    v31 = [dictionaryCopy objectForKeyedSubscript:@"footnoteLabel"];
    objc_opt_class();
    v60 = v31;
    if (objc_opt_isKindOfClass())
    {
      v32 = [v31 copy];
      [(_SFPBMapCardSection *)v5 setFootnoteLabel:v32];
    }

    v33 = [dictionaryCopy objectForKeyedSubscript:@"footnote"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = [v33 copy];
      [(_SFPBMapCardSection *)v5 setFootnote:v34];
    }

    v35 = [dictionaryCopy objectForKeyedSubscript:@"interactive"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMapCardSection setInteractive:](v5, "setInteractive:", [v35 BOOLValue]);
    }

    v36 = [dictionaryCopy objectForKeyedSubscript:@"sizeFormat"];
    objc_opt_class();
    v59 = v36;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMapCardSection setSizeFormat:](v5, "setSizeFormat:", [v36 intValue]);
    }

    v37 = [dictionaryCopy objectForKeyedSubscript:@"boundingMapRegion"];
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

    v42 = [dictionaryCopy objectForKeyedSubscript:@"pinBehavior"];
    objc_opt_class();
    v58 = v42;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBMapCardSection setPinBehavior:](v5, "setPinBehavior:", [v42 intValue]);
    }

    v43 = [dictionaryCopy objectForKeyedSubscript:@"pins"];
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

- (_SFPBMapCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBMapCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBMapCardSection *)self dictionaryRepresentation];
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
  v64 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_backgroundColor)
  {
    backgroundColor = [(_SFPBMapCardSection *)self backgroundColor];
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

  if (self->_boundingMapRegion)
  {
    boundingMapRegion = [(_SFPBMapCardSection *)self boundingMapRegion];
    dictionaryRepresentation2 = [boundingMapRegion dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"boundingMapRegion"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"boundingMapRegion"];
    }
  }

  if (self->_canBeHidden)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMapCardSection canBeHidden](self, "canBeHidden")}];
    [dictionary setObject:v10 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_footnote)
  {
    footnote = [(_SFPBMapCardSection *)self footnote];
    v12 = [footnote copy];
    [dictionary setObject:v12 forKeyedSubscript:@"footnote"];
  }

  if (self->_footnoteLabel)
  {
    footnoteLabel = [(_SFPBMapCardSection *)self footnoteLabel];
    v14 = [footnoteLabel copy];
    [dictionary setObject:v14 forKeyedSubscript:@"footnoteLabel"];
  }

  if (self->_hasBottomPadding)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMapCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [dictionary setObject:v15 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMapCardSection hasTopPadding](self, "hasTopPadding")}];
    [dictionary setObject:v16 forKeyedSubscript:@"hasTopPadding"];
  }

  if (self->_interactive)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBMapCardSection interactive](self, "interactive")}];
    [dictionary setObject:v17 forKeyedSubscript:@"interactive"];
  }

  if (self->_location)
  {
    location = [(_SFPBMapCardSection *)self location];
    dictionaryRepresentation3 = [location dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"location"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"location"];
    }
  }

  if (self->_pinBehavior)
  {
    pinBehavior = [(_SFPBMapCardSection *)self pinBehavior];
    if (pinBehavior >= 3)
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", pinBehavior];
    }

    else
    {
      v22 = off_1E7ACE548[pinBehavior];
    }

    [dictionary setObject:v22 forKeyedSubscript:@"pinBehavior"];
  }

  if (self->_pinColor)
  {
    pinColor = [(_SFPBMapCardSection *)self pinColor];
    dictionaryRepresentation4 = [pinColor dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"pinColor"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"pinColor"];
    }
  }

  if ([(NSArray *)self->_pins count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation5 = [*(*(&v58 + 1) + 8 * i) dictionaryRepresentation];
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

        v29 = [(NSArray *)v27 countByEnumeratingWithState:&v58 objects:v63 count:16];
      }

      while (v29);
    }

    [dictionary setObject:array forKeyedSubscript:@"pins"];
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation6 = [*(*(&v54 + 1) + 8 * j) dictionaryRepresentation];
          if (dictionaryRepresentation6)
          {
            [array2 addObject:dictionaryRepresentation6];
          }

          else
          {
            null6 = [MEMORY[0x1E695DFB0] null];
            [array2 addObject:null6];
          }
        }

        v37 = [(NSArray *)v35 countByEnumeratingWithState:&v54 objects:v62 count:16];
      }

      while (v37);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    punchoutPickerDismissText = [(_SFPBMapCardSection *)self punchoutPickerDismissText];
    v43 = [punchoutPickerDismissText copy];
    [dictionary setObject:v43 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    punchoutPickerTitle = [(_SFPBMapCardSection *)self punchoutPickerTitle];
    v45 = [punchoutPickerTitle copy];
    [dictionary setObject:v45 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    separatorStyle = [(_SFPBMapCardSection *)self separatorStyle];
    if (separatorStyle >= 6)
    {
      v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", separatorStyle];
    }

    else
    {
      v47 = off_1E7ACE580[separatorStyle];
    }

    [dictionary setObject:v47 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_sizeFormat)
  {
    sizeFormat = [(_SFPBMapCardSection *)self sizeFormat];
    if (sizeFormat)
    {
      if (sizeFormat == 1)
      {
        v49 = @"1";
      }

      else
      {
        v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", sizeFormat];
      }
    }

    else
    {
      v49 = @"0";
    }

    [dictionary setObject:v49 forKeyedSubscript:@"sizeFormat"];
  }

  if (self->_type)
  {
    type = [(_SFPBMapCardSection *)self type];
    v51 = [type copy];
    [dictionary setObject:v51 forKeyedSubscript:@"type"];
  }

  v52 = *MEMORY[0x1E69E9840];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_64;
  }

  punchoutOptions = [(_SFPBMapCardSection *)self punchoutOptions];
  punchoutOptions2 = [equalCopy punchoutOptions];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_63;
  }

  punchoutOptions3 = [(_SFPBMapCardSection *)self punchoutOptions];
  if (punchoutOptions3)
  {
    v8 = punchoutOptions3;
    punchoutOptions4 = [(_SFPBMapCardSection *)self punchoutOptions];
    punchoutOptions5 = [equalCopy punchoutOptions];
    v11 = [punchoutOptions4 isEqual:punchoutOptions5];

    if (!v11)
    {
      goto LABEL_64;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBMapCardSection *)self punchoutPickerTitle];
  punchoutOptions2 = [equalCopy punchoutPickerTitle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_63;
  }

  punchoutPickerTitle = [(_SFPBMapCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    v13 = punchoutPickerTitle;
    punchoutPickerTitle2 = [(_SFPBMapCardSection *)self punchoutPickerTitle];
    punchoutPickerTitle3 = [equalCopy punchoutPickerTitle];
    v16 = [punchoutPickerTitle2 isEqual:punchoutPickerTitle3];

    if (!v16)
    {
      goto LABEL_64;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBMapCardSection *)self punchoutPickerDismissText];
  punchoutOptions2 = [equalCopy punchoutPickerDismissText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_63;
  }

  punchoutPickerDismissText = [(_SFPBMapCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    v18 = punchoutPickerDismissText;
    punchoutPickerDismissText2 = [(_SFPBMapCardSection *)self punchoutPickerDismissText];
    punchoutPickerDismissText3 = [equalCopy punchoutPickerDismissText];
    v21 = [punchoutPickerDismissText2 isEqual:punchoutPickerDismissText3];

    if (!v21)
    {
      goto LABEL_64;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [equalCopy canBeHidden])
  {
    goto LABEL_64;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [equalCopy hasTopPadding])
  {
    goto LABEL_64;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [equalCopy hasBottomPadding])
  {
    goto LABEL_64;
  }

  punchoutOptions = [(_SFPBMapCardSection *)self type];
  punchoutOptions2 = [equalCopy type];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_63;
  }

  type = [(_SFPBMapCardSection *)self type];
  if (type)
  {
    v26 = type;
    type2 = [(_SFPBMapCardSection *)self type];
    type3 = [equalCopy type];
    v29 = [type2 isEqual:type3];

    if (!v29)
    {
      goto LABEL_64;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [equalCopy separatorStyle])
  {
    goto LABEL_64;
  }

  punchoutOptions = [(_SFPBMapCardSection *)self backgroundColor];
  punchoutOptions2 = [equalCopy backgroundColor];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_63;
  }

  backgroundColor = [(_SFPBMapCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    v32 = backgroundColor;
    backgroundColor2 = [(_SFPBMapCardSection *)self backgroundColor];
    backgroundColor3 = [equalCopy backgroundColor];
    v35 = [backgroundColor2 isEqual:backgroundColor3];

    if (!v35)
    {
      goto LABEL_64;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBMapCardSection *)self location];
  punchoutOptions2 = [equalCopy location];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_63;
  }

  location = [(_SFPBMapCardSection *)self location];
  if (location)
  {
    v37 = location;
    location2 = [(_SFPBMapCardSection *)self location];
    location3 = [equalCopy location];
    v40 = [location2 isEqual:location3];

    if (!v40)
    {
      goto LABEL_64;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBMapCardSection *)self pinColor];
  punchoutOptions2 = [equalCopy pinColor];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_63;
  }

  pinColor = [(_SFPBMapCardSection *)self pinColor];
  if (pinColor)
  {
    v42 = pinColor;
    pinColor2 = [(_SFPBMapCardSection *)self pinColor];
    pinColor3 = [equalCopy pinColor];
    v45 = [pinColor2 isEqual:pinColor3];

    if (!v45)
    {
      goto LABEL_64;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBMapCardSection *)self footnoteLabel];
  punchoutOptions2 = [equalCopy footnoteLabel];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_63;
  }

  footnoteLabel = [(_SFPBMapCardSection *)self footnoteLabel];
  if (footnoteLabel)
  {
    v47 = footnoteLabel;
    footnoteLabel2 = [(_SFPBMapCardSection *)self footnoteLabel];
    footnoteLabel3 = [equalCopy footnoteLabel];
    v50 = [footnoteLabel2 isEqual:footnoteLabel3];

    if (!v50)
    {
      goto LABEL_64;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBMapCardSection *)self footnote];
  punchoutOptions2 = [equalCopy footnote];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_63;
  }

  footnote = [(_SFPBMapCardSection *)self footnote];
  if (footnote)
  {
    v52 = footnote;
    footnote2 = [(_SFPBMapCardSection *)self footnote];
    footnote3 = [equalCopy footnote];
    v55 = [footnote2 isEqual:footnote3];

    if (!v55)
    {
      goto LABEL_64;
    }
  }

  else
  {
  }

  interactive = self->_interactive;
  if (interactive != [equalCopy interactive])
  {
    goto LABEL_64;
  }

  sizeFormat = self->_sizeFormat;
  if (sizeFormat != [equalCopy sizeFormat])
  {
    goto LABEL_64;
  }

  punchoutOptions = [(_SFPBMapCardSection *)self boundingMapRegion];
  punchoutOptions2 = [equalCopy boundingMapRegion];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_63;
  }

  boundingMapRegion = [(_SFPBMapCardSection *)self boundingMapRegion];
  if (boundingMapRegion)
  {
    v59 = boundingMapRegion;
    boundingMapRegion2 = [(_SFPBMapCardSection *)self boundingMapRegion];
    boundingMapRegion3 = [equalCopy boundingMapRegion];
    v62 = [boundingMapRegion2 isEqual:boundingMapRegion3];

    if (!v62)
    {
      goto LABEL_64;
    }
  }

  else
  {
  }

  pinBehavior = self->_pinBehavior;
  if (pinBehavior != [equalCopy pinBehavior])
  {
    goto LABEL_64;
  }

  punchoutOptions = [(_SFPBMapCardSection *)self pins];
  punchoutOptions2 = [equalCopy pins];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
LABEL_63:

    goto LABEL_64;
  }

  pins = [(_SFPBMapCardSection *)self pins];
  if (!pins)
  {

LABEL_67:
    v69 = 1;
    goto LABEL_65;
  }

  v65 = pins;
  pins2 = [(_SFPBMapCardSection *)self pins];
  pins3 = [equalCopy pins];
  v68 = [pins2 isEqual:pins3];

  if (v68)
  {
    goto LABEL_67;
  }

LABEL_64:
  v69 = 0;
LABEL_65:

  return v69;
}

- (void)writeTo:(id)to
{
  v37 = *MEMORY[0x1E69E9840];
  toCopy = to;
  punchoutOptions = [(_SFPBMapCardSection *)self punchoutOptions];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = [punchoutOptions countByEnumeratingWithState:&v31 objects:v36 count:16];
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
          objc_enumerationMutation(punchoutOptions);
        }

        v10 = *(*(&v31 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [punchoutOptions countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v7);
  }

  punchoutPickerTitle = [(_SFPBMapCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    PBDataWriterWriteStringField();
  }

  punchoutPickerDismissText = [(_SFPBMapCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
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

  type = [(_SFPBMapCardSection *)self type];
  if (type)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBMapCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  backgroundColor = [(_SFPBMapCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    PBDataWriterWriteSubmessage();
  }

  location = [(_SFPBMapCardSection *)self location];
  if (location)
  {
    PBDataWriterWriteSubmessage();
  }

  pinColor = [(_SFPBMapCardSection *)self pinColor];
  if (pinColor)
  {
    PBDataWriterWriteSubmessage();
  }

  footnoteLabel = [(_SFPBMapCardSection *)self footnoteLabel];
  if (footnoteLabel)
  {
    PBDataWriterWriteStringField();
  }

  footnote = [(_SFPBMapCardSection *)self footnote];
  if (footnote)
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

  boundingMapRegion = [(_SFPBMapCardSection *)self boundingMapRegion];
  if (boundingMapRegion)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBMapCardSection *)self pinBehavior])
  {
    PBDataWriterWriteInt32Field();
  }

  pins = [(_SFPBMapCardSection *)self pins];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v21 = [pins countByEnumeratingWithState:&v27 objects:v35 count:16];
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
          objc_enumerationMutation(pins);
        }

        v25 = *(*(&v27 + 1) + 8 * v24);
        PBDataWriterWriteSubmessage();
        ++v24;
      }

      while (v22 != v24);
      v22 = [pins countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v22);
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)addPins:(id)pins
{
  pinsCopy = pins;
  pins = self->_pins;
  v8 = pinsCopy;
  if (!pins)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_pins;
    self->_pins = array;

    pinsCopy = v8;
    pins = self->_pins;
  }

  [(NSArray *)pins addObject:pinsCopy];
}

- (void)setPins:(id)pins
{
  v4 = [pins copy];
  pins = self->_pins;
  self->_pins = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setFootnote:(id)footnote
{
  v4 = [footnote copy];
  footnote = self->_footnote;
  self->_footnote = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setFootnoteLabel:(id)label
{
  v4 = [label copy];
  footnoteLabel = self->_footnoteLabel;
  self->_footnoteLabel = v4;

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