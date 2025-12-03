@interface _SFPBTableHeaderRowCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBTableHeaderRowCardSection)initWithDictionary:(id)dictionary;
- (_SFPBTableHeaderRowCardSection)initWithFacade:(id)facade;
- (_SFPBTableHeaderRowCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addData:(id)data;
- (void)addPunchoutOptions:(id)options;
- (void)setData:(id)data;
- (void)setPunchoutOptions:(id)options;
- (void)setPunchoutPickerDismissText:(id)text;
- (void)setPunchoutPickerTitle:(id)title;
- (void)setTabGroupIdentifier:(id)identifier;
- (void)setTableIdentifier:(id)identifier;
- (void)setType:(id)type;
- (void)writeTo:(id)to;
@end

@implementation _SFPBTableHeaderRowCardSection

- (_SFPBTableHeaderRowCardSection)initWithFacade:(id)facade
{
  v53 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBTableHeaderRowCardSection *)self init];
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

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    punchoutOptions2 = [facadeCopy punchoutOptions];
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v48;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v48 != v11)
          {
            objc_enumerationMutation(punchoutOptions2);
          }

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v47 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v10);
    }

    [(_SFPBTableHeaderRowCardSection *)v5 setPunchoutOptions:v7];
    punchoutPickerTitle = [facadeCopy punchoutPickerTitle];

    if (punchoutPickerTitle)
    {
      punchoutPickerTitle2 = [facadeCopy punchoutPickerTitle];
      [(_SFPBTableHeaderRowCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle2];
    }

    punchoutPickerDismissText = [facadeCopy punchoutPickerDismissText];

    if (punchoutPickerDismissText)
    {
      punchoutPickerDismissText2 = [facadeCopy punchoutPickerDismissText];
      [(_SFPBTableHeaderRowCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText2];
    }

    if ([facadeCopy hasCanBeHidden])
    {
      -[_SFPBTableHeaderRowCardSection setCanBeHidden:](v5, "setCanBeHidden:", [facadeCopy canBeHidden]);
    }

    if ([facadeCopy hasHasTopPadding])
    {
      -[_SFPBTableHeaderRowCardSection setHasTopPadding:](v5, "setHasTopPadding:", [facadeCopy hasTopPadding]);
    }

    if ([facadeCopy hasHasBottomPadding])
    {
      -[_SFPBTableHeaderRowCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [facadeCopy hasBottomPadding]);
    }

    type = [facadeCopy type];

    if (type)
    {
      type2 = [facadeCopy type];
      [(_SFPBTableHeaderRowCardSection *)v5 setType:type2];
    }

    if ([facadeCopy hasSeparatorStyle])
    {
      -[_SFPBTableHeaderRowCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [facadeCopy separatorStyle]);
    }

    backgroundColor = [facadeCopy backgroundColor];

    if (backgroundColor)
    {
      v21 = [_SFPBColor alloc];
      backgroundColor2 = [facadeCopy backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:backgroundColor2];
      [(_SFPBTableHeaderRowCardSection *)v5 setBackgroundColor:v23];
    }

    tableIdentifier = [facadeCopy tableIdentifier];

    if (tableIdentifier)
    {
      tableIdentifier2 = [facadeCopy tableIdentifier];
      [(_SFPBTableHeaderRowCardSection *)v5 setTableIdentifier:tableIdentifier2];
    }

    alignmentSchema = [facadeCopy alignmentSchema];

    if (alignmentSchema)
    {
      v27 = [_SFPBTableAlignmentSchema alloc];
      alignmentSchema2 = [facadeCopy alignmentSchema];
      v29 = [(_SFPBTableAlignmentSchema *)v27 initWithFacade:alignmentSchema2];
      [(_SFPBTableHeaderRowCardSection *)v5 setAlignmentSchema:v29];
    }

    data = [facadeCopy data];
    if (data)
    {
      v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v31 = 0;
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    data2 = [facadeCopy data];
    v33 = [data2 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v44;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v44 != v35)
          {
            objc_enumerationMutation(data2);
          }

          v37 = [[_SFPBFormattedText alloc] initWithFacade:*(*(&v43 + 1) + 8 * j)];
          if (v37)
          {
            [v31 addObject:v37];
          }
        }

        v34 = [data2 countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v34);
    }

    [(_SFPBTableHeaderRowCardSection *)v5 setDatas:v31];
    if ([facadeCopy hasIsSubHeader])
    {
      -[_SFPBTableHeaderRowCardSection setIsSubHeader:](v5, "setIsSubHeader:", [facadeCopy isSubHeader]);
    }

    tabGroupIdentifier = [facadeCopy tabGroupIdentifier];

    if (tabGroupIdentifier)
    {
      tabGroupIdentifier2 = [facadeCopy tabGroupIdentifier];
      [(_SFPBTableHeaderRowCardSection *)v5 setTabGroupIdentifier:tabGroupIdentifier2];
    }

    if ([facadeCopy hasReducedRowHeight])
    {
      -[_SFPBTableHeaderRowCardSection setReducedRowHeight:](v5, "setReducedRowHeight:", [facadeCopy reducedRowHeight]);
    }

    if ([facadeCopy hasVerticalAlign])
    {
      -[_SFPBTableHeaderRowCardSection setVerticalAlign:](v5, "setVerticalAlign:", [facadeCopy verticalAlign]);
    }

    if ([facadeCopy hasAlignRowsToHeader])
    {
      -[_SFPBTableHeaderRowCardSection setAlignRowsToHeader:](v5, "setAlignRowsToHeader:", [facadeCopy alignRowsToHeader]);
    }

    v40 = v5;
  }

  v41 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBTableHeaderRowCardSection)initWithDictionary:(id)dictionary
{
  v69 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v66.receiver = self;
  v66.super_class = _SFPBTableHeaderRowCardSection;
  v5 = [(_SFPBTableHeaderRowCardSection *)&v66 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"punchoutOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v7 = v6;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v62 objects:v68 count:16];
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
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v62 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [[_SFPBPunchout alloc] initWithDictionary:v13];
              [(_SFPBTableHeaderRowCardSection *)v5 addPunchoutOptions:v14];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v62 objects:v68 count:16];
        }

        while (v10);
      }

      v6 = v7;
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 copy];
      [(_SFPBTableHeaderRowCardSection *)v5 setPunchoutPickerTitle:v16];
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v17 copy];
      [(_SFPBTableHeaderRowCardSection *)v5 setPunchoutPickerDismissText:v18];
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTableHeaderRowCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v19 BOOLValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTableHeaderRowCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v20 BOOLValue]);
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    v57 = v21;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTableHeaderRowCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v21 BOOLValue]);
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    objc_opt_class();
    v56 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = [v22 copy];
      [(_SFPBTableHeaderRowCardSection *)v5 setType:v23];
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    v55 = v24;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTableHeaderRowCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v24 intValue]);
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    v54 = v25;
    if (objc_opt_isKindOfClass())
    {
      v26 = [[_SFPBColor alloc] initWithDictionary:v25];
      [(_SFPBTableHeaderRowCardSection *)v5 setBackgroundColor:v26];
    }

    v27 = [dictionaryCopy objectForKeyedSubscript:@"tableIdentifier"];
    objc_opt_class();
    v53 = v27;
    if (objc_opt_isKindOfClass())
    {
      v28 = [v27 copy];
      [(_SFPBTableHeaderRowCardSection *)v5 setTableIdentifier:v28];
    }

    v51 = v19;
    v52 = v17;
    v29 = [dictionaryCopy objectForKeyedSubscript:@"alignmentSchema"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = [[_SFPBTableAlignmentSchema alloc] initWithDictionary:v29];
      [(_SFPBTableHeaderRowCardSection *)v5 setAlignmentSchema:v30];
    }

    v49 = v29;
    v50 = v20;
    v31 = [dictionaryCopy objectForKeyedSubscript:@"data"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v48 = v15;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v32 = v31;
      v33 = [v32 countByEnumeratingWithState:&v58 objects:v67 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v59;
        do
        {
          for (j = 0; j != v34; ++j)
          {
            if (*v59 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = *(*(&v58 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v38 = [[_SFPBFormattedText alloc] initWithDictionary:v37];
              [(_SFPBTableHeaderRowCardSection *)v5 addData:v38];
            }
          }

          v34 = [v32 countByEnumeratingWithState:&v58 objects:v67 count:16];
        }

        while (v34);
      }

      v15 = v48;
    }

    v39 = [dictionaryCopy objectForKeyedSubscript:@"isSubHeader"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTableHeaderRowCardSection setIsSubHeader:](v5, "setIsSubHeader:", [v39 BOOLValue]);
    }

    v40 = [dictionaryCopy objectForKeyedSubscript:@"tabGroupIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = [v40 copy];
      [(_SFPBTableHeaderRowCardSection *)v5 setTabGroupIdentifier:v41];
    }

    v42 = [dictionaryCopy objectForKeyedSubscript:@"reducedRowHeight"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTableHeaderRowCardSection setReducedRowHeight:](v5, "setReducedRowHeight:", [v42 BOOLValue]);
    }

    v43 = [dictionaryCopy objectForKeyedSubscript:@"verticalAlign"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTableHeaderRowCardSection setVerticalAlign:](v5, "setVerticalAlign:", [v43 intValue]);
    }

    v44 = [dictionaryCopy objectForKeyedSubscript:@"alignRowsToHeader"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTableHeaderRowCardSection setAlignRowsToHeader:](v5, "setAlignRowsToHeader:", [v44 BOOLValue]);
    }

    v45 = v5;
  }

  v46 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBTableHeaderRowCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBTableHeaderRowCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBTableHeaderRowCardSection *)self dictionaryRepresentation];
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
  v58 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_alignRowsToHeader)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBTableHeaderRowCardSection alignRowsToHeader](self, "alignRowsToHeader")}];
    [dictionary setObject:v4 forKeyedSubscript:@"alignRowsToHeader"];
  }

  if (self->_alignmentSchema)
  {
    alignmentSchema = [(_SFPBTableHeaderRowCardSection *)self alignmentSchema];
    dictionaryRepresentation = [alignmentSchema dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"alignmentSchema"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"alignmentSchema"];
    }
  }

  if (self->_backgroundColor)
  {
    backgroundColor = [(_SFPBTableHeaderRowCardSection *)self backgroundColor];
    dictionaryRepresentation2 = [backgroundColor dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"backgroundColor"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"backgroundColor"];
    }
  }

  if (self->_canBeHidden)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBTableHeaderRowCardSection canBeHidden](self, "canBeHidden")}];
    [dictionary setObject:v11 forKeyedSubscript:@"canBeHidden"];
  }

  if ([(NSArray *)self->_datas count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v13 = self->_datas;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v53;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v53 != v16)
          {
            objc_enumerationMutation(v13);
          }

          dictionaryRepresentation3 = [*(*(&v52 + 1) + 8 * i) dictionaryRepresentation];
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

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v15);
    }

    [dictionary setObject:array forKeyedSubscript:@"data"];
  }

  if (self->_hasBottomPadding)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBTableHeaderRowCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [dictionary setObject:v20 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBTableHeaderRowCardSection hasTopPadding](self, "hasTopPadding")}];
    [dictionary setObject:v21 forKeyedSubscript:@"hasTopPadding"];
  }

  if (self->_isSubHeader)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBTableHeaderRowCardSection isSubHeader](self, "isSubHeader")}];
    [dictionary setObject:v22 forKeyedSubscript:@"isSubHeader"];
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v24 = self->_punchoutOptions;
    v25 = [(NSArray *)v24 countByEnumeratingWithState:&v48 objects:v56 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v49;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v49 != v27)
          {
            objc_enumerationMutation(v24);
          }

          dictionaryRepresentation4 = [*(*(&v48 + 1) + 8 * j) dictionaryRepresentation];
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

        v26 = [(NSArray *)v24 countByEnumeratingWithState:&v48 objects:v56 count:16];
      }

      while (v26);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    punchoutPickerDismissText = [(_SFPBTableHeaderRowCardSection *)self punchoutPickerDismissText];
    v32 = [punchoutPickerDismissText copy];
    [dictionary setObject:v32 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    punchoutPickerTitle = [(_SFPBTableHeaderRowCardSection *)self punchoutPickerTitle];
    v34 = [punchoutPickerTitle copy];
    [dictionary setObject:v34 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_reducedRowHeight)
  {
    v35 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBTableHeaderRowCardSection reducedRowHeight](self, "reducedRowHeight")}];
    [dictionary setObject:v35 forKeyedSubscript:@"reducedRowHeight"];
  }

  if (self->_separatorStyle)
  {
    separatorStyle = [(_SFPBTableHeaderRowCardSection *)self separatorStyle];
    if (separatorStyle >= 6)
    {
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", separatorStyle];
    }

    else
    {
      v37 = off_1E7ACE580[separatorStyle];
    }

    [dictionary setObject:v37 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_tabGroupIdentifier)
  {
    tabGroupIdentifier = [(_SFPBTableHeaderRowCardSection *)self tabGroupIdentifier];
    v39 = [tabGroupIdentifier copy];
    [dictionary setObject:v39 forKeyedSubscript:@"tabGroupIdentifier"];
  }

  if (self->_tableIdentifier)
  {
    tableIdentifier = [(_SFPBTableHeaderRowCardSection *)self tableIdentifier];
    v41 = [tableIdentifier copy];
    [dictionary setObject:v41 forKeyedSubscript:@"tableIdentifier"];
  }

  if (self->_type)
  {
    type = [(_SFPBTableHeaderRowCardSection *)self type];
    v43 = [type copy];
    [dictionary setObject:v43 forKeyedSubscript:@"type"];
  }

  if (self->_verticalAlign)
  {
    verticalAlign = [(_SFPBTableHeaderRowCardSection *)self verticalAlign];
    if ((verticalAlign + 1) >= 3)
    {
      v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", verticalAlign];
    }

    else
    {
      v45 = off_1E7ACE4B0[(verticalAlign + 1)];
    }

    [dictionary setObject:v45 forKeyedSubscript:@"verticalAlign"];
  }

  v46 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v22 = [(NSArray *)self->_punchoutOptions hash];
  v21 = [(NSString *)self->_punchoutPickerTitle hash];
  v3 = [(NSString *)self->_punchoutPickerDismissText hash];
  if (self->_canBeHidden)
  {
    v4 = 2654435761;
  }

  else
  {
    v4 = 0;
  }

  v19 = v4;
  v20 = v3;
  if (self->_hasTopPadding)
  {
    v5 = 2654435761;
  }

  else
  {
    v5 = 0;
  }

  v18 = v5;
  if (self->_hasBottomPadding)
  {
    v6 = 2654435761;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NSString *)self->_type hash];
  v8 = 2654435761 * self->_separatorStyle;
  v9 = [(_SFPBColor *)self->_backgroundColor hash];
  v10 = [(NSString *)self->_tableIdentifier hash];
  v11 = [(_SFPBTableAlignmentSchema *)self->_alignmentSchema hash];
  v12 = [(NSArray *)self->_datas hash];
  if (self->_isSubHeader)
  {
    v13 = 2654435761;
  }

  else
  {
    v13 = 0;
  }

  v14 = [(NSString *)self->_tabGroupIdentifier hash];
  if (self->_reducedRowHeight)
  {
    v15 = 2654435761;
  }

  else
  {
    v15 = 0;
  }

  if (self->_alignRowsToHeader)
  {
    v16 = 2654435761;
  }

  else
  {
    v16 = 0;
  }

  return v21 ^ v22 ^ v20 ^ v19 ^ v18 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ (2654435761 * self->_verticalAlign) ^ v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_52;
  }

  punchoutOptions = [(_SFPBTableHeaderRowCardSection *)self punchoutOptions];
  punchoutOptions2 = [equalCopy punchoutOptions];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_51;
  }

  punchoutOptions3 = [(_SFPBTableHeaderRowCardSection *)self punchoutOptions];
  if (punchoutOptions3)
  {
    v8 = punchoutOptions3;
    punchoutOptions4 = [(_SFPBTableHeaderRowCardSection *)self punchoutOptions];
    punchoutOptions5 = [equalCopy punchoutOptions];
    v11 = [punchoutOptions4 isEqual:punchoutOptions5];

    if (!v11)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBTableHeaderRowCardSection *)self punchoutPickerTitle];
  punchoutOptions2 = [equalCopy punchoutPickerTitle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_51;
  }

  punchoutPickerTitle = [(_SFPBTableHeaderRowCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    v13 = punchoutPickerTitle;
    punchoutPickerTitle2 = [(_SFPBTableHeaderRowCardSection *)self punchoutPickerTitle];
    punchoutPickerTitle3 = [equalCopy punchoutPickerTitle];
    v16 = [punchoutPickerTitle2 isEqual:punchoutPickerTitle3];

    if (!v16)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBTableHeaderRowCardSection *)self punchoutPickerDismissText];
  punchoutOptions2 = [equalCopy punchoutPickerDismissText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_51;
  }

  punchoutPickerDismissText = [(_SFPBTableHeaderRowCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    v18 = punchoutPickerDismissText;
    punchoutPickerDismissText2 = [(_SFPBTableHeaderRowCardSection *)self punchoutPickerDismissText];
    punchoutPickerDismissText3 = [equalCopy punchoutPickerDismissText];
    v21 = [punchoutPickerDismissText2 isEqual:punchoutPickerDismissText3];

    if (!v21)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [equalCopy canBeHidden])
  {
    goto LABEL_52;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [equalCopy hasTopPadding])
  {
    goto LABEL_52;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [equalCopy hasBottomPadding])
  {
    goto LABEL_52;
  }

  punchoutOptions = [(_SFPBTableHeaderRowCardSection *)self type];
  punchoutOptions2 = [equalCopy type];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_51;
  }

  type = [(_SFPBTableHeaderRowCardSection *)self type];
  if (type)
  {
    v26 = type;
    type2 = [(_SFPBTableHeaderRowCardSection *)self type];
    type3 = [equalCopy type];
    v29 = [type2 isEqual:type3];

    if (!v29)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [equalCopy separatorStyle])
  {
    goto LABEL_52;
  }

  punchoutOptions = [(_SFPBTableHeaderRowCardSection *)self backgroundColor];
  punchoutOptions2 = [equalCopy backgroundColor];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_51;
  }

  backgroundColor = [(_SFPBTableHeaderRowCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    v32 = backgroundColor;
    backgroundColor2 = [(_SFPBTableHeaderRowCardSection *)self backgroundColor];
    backgroundColor3 = [equalCopy backgroundColor];
    v35 = [backgroundColor2 isEqual:backgroundColor3];

    if (!v35)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBTableHeaderRowCardSection *)self tableIdentifier];
  punchoutOptions2 = [equalCopy tableIdentifier];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_51;
  }

  tableIdentifier = [(_SFPBTableHeaderRowCardSection *)self tableIdentifier];
  if (tableIdentifier)
  {
    v37 = tableIdentifier;
    tableIdentifier2 = [(_SFPBTableHeaderRowCardSection *)self tableIdentifier];
    tableIdentifier3 = [equalCopy tableIdentifier];
    v40 = [tableIdentifier2 isEqual:tableIdentifier3];

    if (!v40)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBTableHeaderRowCardSection *)self alignmentSchema];
  punchoutOptions2 = [equalCopy alignmentSchema];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_51;
  }

  alignmentSchema = [(_SFPBTableHeaderRowCardSection *)self alignmentSchema];
  if (alignmentSchema)
  {
    v42 = alignmentSchema;
    alignmentSchema2 = [(_SFPBTableHeaderRowCardSection *)self alignmentSchema];
    alignmentSchema3 = [equalCopy alignmentSchema];
    v45 = [alignmentSchema2 isEqual:alignmentSchema3];

    if (!v45)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBTableHeaderRowCardSection *)self datas];
  punchoutOptions2 = [equalCopy datas];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_51;
  }

  datas = [(_SFPBTableHeaderRowCardSection *)self datas];
  if (datas)
  {
    v47 = datas;
    datas2 = [(_SFPBTableHeaderRowCardSection *)self datas];
    datas3 = [equalCopy datas];
    v50 = [datas2 isEqual:datas3];

    if (!v50)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  isSubHeader = self->_isSubHeader;
  if (isSubHeader != [equalCopy isSubHeader])
  {
    goto LABEL_52;
  }

  punchoutOptions = [(_SFPBTableHeaderRowCardSection *)self tabGroupIdentifier];
  punchoutOptions2 = [equalCopy tabGroupIdentifier];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
LABEL_51:

    goto LABEL_52;
  }

  tabGroupIdentifier = [(_SFPBTableHeaderRowCardSection *)self tabGroupIdentifier];
  if (tabGroupIdentifier)
  {
    v53 = tabGroupIdentifier;
    tabGroupIdentifier2 = [(_SFPBTableHeaderRowCardSection *)self tabGroupIdentifier];
    tabGroupIdentifier3 = [equalCopy tabGroupIdentifier];
    v56 = [tabGroupIdentifier2 isEqual:tabGroupIdentifier3];

    if (!v56)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  reducedRowHeight = self->_reducedRowHeight;
  if (reducedRowHeight == [equalCopy reducedRowHeight])
  {
    verticalAlign = self->_verticalAlign;
    if (verticalAlign == [equalCopy verticalAlign])
    {
      alignRowsToHeader = self->_alignRowsToHeader;
      v57 = alignRowsToHeader == [equalCopy alignRowsToHeader];
      goto LABEL_53;
    }
  }

LABEL_52:
  v57 = 0;
LABEL_53:

  return v57;
}

- (void)writeTo:(id)to
{
  v35 = *MEMORY[0x1E69E9840];
  toCopy = to;
  punchoutOptions = [(_SFPBTableHeaderRowCardSection *)self punchoutOptions];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = [punchoutOptions countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      v9 = 0;
      do
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(punchoutOptions);
        }

        v10 = *(*(&v29 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [punchoutOptions countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v7);
  }

  punchoutPickerTitle = [(_SFPBTableHeaderRowCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    PBDataWriterWriteStringField();
  }

  punchoutPickerDismissText = [(_SFPBTableHeaderRowCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBTableHeaderRowCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBTableHeaderRowCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBTableHeaderRowCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  type = [(_SFPBTableHeaderRowCardSection *)self type];
  if (type)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBTableHeaderRowCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  backgroundColor = [(_SFPBTableHeaderRowCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    PBDataWriterWriteSubmessage();
  }

  tableIdentifier = [(_SFPBTableHeaderRowCardSection *)self tableIdentifier];
  if (tableIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  alignmentSchema = [(_SFPBTableHeaderRowCardSection *)self alignmentSchema];
  if (alignmentSchema)
  {
    PBDataWriterWriteSubmessage();
  }

  datas = [(_SFPBTableHeaderRowCardSection *)self datas];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v18 = [datas countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v26;
    do
    {
      v21 = 0;
      do
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(datas);
        }

        v22 = *(*(&v25 + 1) + 8 * v21);
        PBDataWriterWriteSubmessage();
        ++v21;
      }

      while (v19 != v21);
      v19 = [datas countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v19);
  }

  if ([(_SFPBTableHeaderRowCardSection *)self isSubHeader])
  {
    PBDataWriterWriteBOOLField();
  }

  tabGroupIdentifier = [(_SFPBTableHeaderRowCardSection *)self tabGroupIdentifier];
  if (tabGroupIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBTableHeaderRowCardSection *)self reducedRowHeight])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBTableHeaderRowCardSection *)self verticalAlign])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBTableHeaderRowCardSection *)self alignRowsToHeader])
  {
    PBDataWriterWriteBOOLField();
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)setTabGroupIdentifier:(id)identifier
{
  v4 = [identifier copy];
  tabGroupIdentifier = self->_tabGroupIdentifier;
  self->_tabGroupIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addData:(id)data
{
  dataCopy = data;
  datas = self->_datas;
  v8 = dataCopy;
  if (!datas)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_datas;
    self->_datas = array;

    dataCopy = v8;
    datas = self->_datas;
  }

  [(NSArray *)datas addObject:dataCopy];
}

- (void)setData:(id)data
{
  v4 = [data copy];
  datas = self->_datas;
  self->_datas = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setTableIdentifier:(id)identifier
{
  v4 = [identifier copy];
  tableIdentifier = self->_tableIdentifier;
  self->_tableIdentifier = v4;

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