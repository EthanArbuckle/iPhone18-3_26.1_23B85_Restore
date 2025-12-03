@interface _SFPBTableRowCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBTableRowCardSection)initWithDictionary:(id)dictionary;
- (_SFPBTableRowCardSection)initWithFacade:(id)facade;
- (_SFPBTableRowCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addData:(id)data;
- (void)addPunchoutOptions:(id)options;
- (void)addRichData:(id)data;
- (void)setData:(id)data;
- (void)setPunchoutOptions:(id)options;
- (void)setPunchoutPickerDismissText:(id)text;
- (void)setPunchoutPickerTitle:(id)title;
- (void)setRichData:(id)data;
- (void)setTabGroupIdentifier:(id)identifier;
- (void)setTableIdentifier:(id)identifier;
- (void)setType:(id)type;
- (void)writeTo:(id)to;
@end

@implementation _SFPBTableRowCardSection

- (_SFPBTableRowCardSection)initWithFacade:(id)facade
{
  v67 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBTableRowCardSection *)self init];
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

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    punchoutOptions2 = [facadeCopy punchoutOptions];
    v9 = [punchoutOptions2 countByEnumeratingWithState:&v60 objects:v66 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v61;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v61 != v11)
          {
            objc_enumerationMutation(punchoutOptions2);
          }

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v60 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [punchoutOptions2 countByEnumeratingWithState:&v60 objects:v66 count:16];
      }

      while (v10);
    }

    [(_SFPBTableRowCardSection *)v5 setPunchoutOptions:v7];
    punchoutPickerTitle = [facadeCopy punchoutPickerTitle];

    if (punchoutPickerTitle)
    {
      punchoutPickerTitle2 = [facadeCopy punchoutPickerTitle];
      [(_SFPBTableRowCardSection *)v5 setPunchoutPickerTitle:punchoutPickerTitle2];
    }

    punchoutPickerDismissText = [facadeCopy punchoutPickerDismissText];

    if (punchoutPickerDismissText)
    {
      punchoutPickerDismissText2 = [facadeCopy punchoutPickerDismissText];
      [(_SFPBTableRowCardSection *)v5 setPunchoutPickerDismissText:punchoutPickerDismissText2];
    }

    if ([facadeCopy hasCanBeHidden])
    {
      -[_SFPBTableRowCardSection setCanBeHidden:](v5, "setCanBeHidden:", [facadeCopy canBeHidden]);
    }

    if ([facadeCopy hasHasTopPadding])
    {
      -[_SFPBTableRowCardSection setHasTopPadding:](v5, "setHasTopPadding:", [facadeCopy hasTopPadding]);
    }

    if ([facadeCopy hasHasBottomPadding])
    {
      -[_SFPBTableRowCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [facadeCopy hasBottomPadding]);
    }

    type = [facadeCopy type];

    if (type)
    {
      type2 = [facadeCopy type];
      [(_SFPBTableRowCardSection *)v5 setType:type2];
    }

    if ([facadeCopy hasSeparatorStyle])
    {
      -[_SFPBTableRowCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [facadeCopy separatorStyle]);
    }

    backgroundColor = [facadeCopy backgroundColor];

    if (backgroundColor)
    {
      v21 = [_SFPBColor alloc];
      backgroundColor2 = [facadeCopy backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:backgroundColor2];
      [(_SFPBTableRowCardSection *)v5 setBackgroundColor:v23];
    }

    richData = [facadeCopy richData];
    if (richData)
    {
      v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v25 = 0;
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    richData2 = [facadeCopy richData];
    v27 = [richData2 countByEnumeratingWithState:&v56 objects:v65 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v57;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v57 != v29)
          {
            objc_enumerationMutation(richData2);
          }

          v31 = [[_SFPBRichText alloc] initWithFacade:*(*(&v56 + 1) + 8 * j)];
          if (v31)
          {
            [v25 addObject:v31];
          }
        }

        v28 = [richData2 countByEnumeratingWithState:&v56 objects:v65 count:16];
      }

      while (v28);
    }

    [(_SFPBTableRowCardSection *)v5 setRichDatas:v25];
    tableIdentifier = [facadeCopy tableIdentifier];

    if (tableIdentifier)
    {
      tableIdentifier2 = [facadeCopy tableIdentifier];
      [(_SFPBTableRowCardSection *)v5 setTableIdentifier:tableIdentifier2];
    }

    alignmentSchema = [facadeCopy alignmentSchema];

    if (alignmentSchema)
    {
      v35 = [_SFPBTableAlignmentSchema alloc];
      alignmentSchema2 = [facadeCopy alignmentSchema];
      v37 = [(_SFPBTableAlignmentSchema *)v35 initWithFacade:alignmentSchema2];
      [(_SFPBTableRowCardSection *)v5 setAlignmentSchema:v37];
    }

    data = [facadeCopy data];
    v51 = v5;
    if (data)
    {
      v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v39 = 0;
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    data2 = [facadeCopy data];
    v41 = [data2 countByEnumeratingWithState:&v52 objects:v64 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v53;
      do
      {
        for (k = 0; k != v42; ++k)
        {
          if (*v53 != v43)
          {
            objc_enumerationMutation(data2);
          }

          v45 = [[_SFPBFormattedText alloc] initWithFacade:*(*(&v52 + 1) + 8 * k)];
          if (v45)
          {
            [v39 addObject:v45];
          }
        }

        v42 = [data2 countByEnumeratingWithState:&v52 objects:v64 count:16];
      }

      while (v42);
    }

    v5 = v51;
    [(_SFPBTableRowCardSection *)v51 setDatas:v39];
    if ([facadeCopy hasIsSubHeader])
    {
      -[_SFPBTableRowCardSection setIsSubHeader:](v51, "setIsSubHeader:", [facadeCopy isSubHeader]);
    }

    tabGroupIdentifier = [facadeCopy tabGroupIdentifier];

    if (tabGroupIdentifier)
    {
      tabGroupIdentifier2 = [facadeCopy tabGroupIdentifier];
      [(_SFPBTableRowCardSection *)v51 setTabGroupIdentifier:tabGroupIdentifier2];
    }

    if ([facadeCopy hasReducedRowHeight])
    {
      -[_SFPBTableRowCardSection setReducedRowHeight:](v51, "setReducedRowHeight:", [facadeCopy reducedRowHeight]);
    }

    if ([facadeCopy hasVerticalAlign])
    {
      -[_SFPBTableRowCardSection setVerticalAlign:](v51, "setVerticalAlign:", [facadeCopy verticalAlign]);
    }

    if ([facadeCopy hasAlignRowsToHeader])
    {
      -[_SFPBTableRowCardSection setAlignRowsToHeader:](v51, "setAlignRowsToHeader:", [facadeCopy alignRowsToHeader]);
    }

    v48 = v51;
  }

  v49 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBTableRowCardSection)initWithDictionary:(id)dictionary
{
  v90 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v86.receiver = self;
  v86.super_class = _SFPBTableRowCardSection;
  v5 = [(_SFPBTableRowCardSection *)&v86 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"punchoutOptions"];
    objc_opt_class();
    v73 = v6;
    if (objc_opt_isKindOfClass())
    {
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v82 objects:v89 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v83;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v83 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v82 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [[_SFPBPunchout alloc] initWithDictionary:v12];
              [(_SFPBTableRowCardSection *)v5 addPunchoutOptions:v13];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v82 objects:v89 count:16];
        }

        while (v9);
      }
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBTableRowCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBTableRowCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"canBeHidden"];
    v19 = 0x1E696A000uLL;
    objc_opt_class();
    v72 = v18;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTableRowCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v18 BOOLValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    v71 = v20;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTableRowCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v20 BOOLValue]);
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    v70 = v21;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTableRowCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v21 BOOLValue]);
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    objc_opt_class();
    v69 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = [v22 copy];
      [(_SFPBTableRowCardSection *)v5 setType:v23];
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    v68 = v24;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTableRowCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v24 intValue]);
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    v67 = v25;
    if (objc_opt_isKindOfClass())
    {
      v26 = [[_SFPBColor alloc] initWithDictionary:v25];
      [(_SFPBTableRowCardSection *)v5 setBackgroundColor:v26];
    }

    v27 = [dictionaryCopy objectForKeyedSubscript:@"richData"];
    objc_opt_class();
    v66 = v27;
    v64 = v16;
    if (objc_opt_isKindOfClass())
    {
      v28 = v14;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v29 = v27;
      v30 = [v29 countByEnumeratingWithState:&v78 objects:v88 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v79;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v79 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v78 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v35 = [[_SFPBRichText alloc] initWithDictionary:v34];
              [(_SFPBTableRowCardSection *)v5 addRichData:v35];
            }
          }

          v31 = [v29 countByEnumeratingWithState:&v78 objects:v88 count:16];
        }

        while (v31);
      }

      v14 = v28;
      v16 = v64;
      v19 = 0x1E696A000;
    }

    v36 = [dictionaryCopy objectForKeyedSubscript:@"tableIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = [v36 copy];
      [(_SFPBTableRowCardSection *)v5 setTableIdentifier:v37];
    }

    v63 = v36;
    v38 = [dictionaryCopy objectForKeyedSubscript:@"alignmentSchema"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = [[_SFPBTableAlignmentSchema alloc] initWithDictionary:v38];
      [(_SFPBTableRowCardSection *)v5 setAlignmentSchema:v39];
    }

    v40 = [dictionaryCopy objectForKeyedSubscript:{@"data", v38}];
    objc_opt_class();
    v65 = v14;
    if (objc_opt_isKindOfClass())
    {
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v41 = v40;
      v42 = [v41 countByEnumeratingWithState:&v74 objects:v87 count:16];
      if (v42)
      {
        v43 = v42;
        v44 = *v75;
        do
        {
          for (k = 0; k != v43; ++k)
          {
            if (*v75 != v44)
            {
              objc_enumerationMutation(v41);
            }

            v46 = *(*(&v74 + 1) + 8 * k);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v47 = [[_SFPBFormattedText alloc] initWithDictionary:v46];
              [(_SFPBTableRowCardSection *)v5 addData:v47];
            }
          }

          v43 = [v41 countByEnumeratingWithState:&v74 objects:v87 count:16];
        }

        while (v43);
      }

      v16 = v64;
      v19 = 0x1E696A000uLL;
    }

    v48 = [dictionaryCopy objectForKeyedSubscript:@"isSubHeader"];
    v49 = *(v19 + 3480);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTableRowCardSection setIsSubHeader:](v5, "setIsSubHeader:", [v48 BOOLValue]);
    }

    v50 = [dictionaryCopy objectForKeyedSubscript:@"tabGroupIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v51 = [v50 copy];
      [(_SFPBTableRowCardSection *)v5 setTabGroupIdentifier:v51];
    }

    v52 = [dictionaryCopy objectForKeyedSubscript:@"reducedRowHeight"];
    v53 = *(v19 + 3480);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTableRowCardSection setReducedRowHeight:](v5, "setReducedRowHeight:", [v52 BOOLValue]);
    }

    v54 = [dictionaryCopy objectForKeyedSubscript:@"verticalAlign"];
    v55 = v19;
    v56 = *(v19 + 3480);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTableRowCardSection setVerticalAlign:](v5, "setVerticalAlign:", [v54 intValue]);
    }

    v57 = [dictionaryCopy objectForKeyedSubscript:@"alignRowsToHeader"];
    v58 = *(v55 + 3480);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTableRowCardSection setAlignRowsToHeader:](v5, "setAlignRowsToHeader:", [v57 BOOLValue]);
    }

    v59 = v5;
  }

  v60 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBTableRowCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBTableRowCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBTableRowCardSection *)self dictionaryRepresentation];
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
  v71 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_alignRowsToHeader)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBTableRowCardSection alignRowsToHeader](self, "alignRowsToHeader")}];
    [dictionary setObject:v4 forKeyedSubscript:@"alignRowsToHeader"];
  }

  if (self->_alignmentSchema)
  {
    alignmentSchema = [(_SFPBTableRowCardSection *)self alignmentSchema];
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
    backgroundColor = [(_SFPBTableRowCardSection *)self backgroundColor];
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
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBTableRowCardSection canBeHidden](self, "canBeHidden")}];
    [dictionary setObject:v11 forKeyedSubscript:@"canBeHidden"];
  }

  if ([(NSArray *)self->_datas count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v13 = self->_datas;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v64 objects:v70 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v65;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v65 != v16)
          {
            objc_enumerationMutation(v13);
          }

          dictionaryRepresentation3 = [*(*(&v64 + 1) + 8 * i) dictionaryRepresentation];
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

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v64 objects:v70 count:16];
      }

      while (v15);
    }

    [dictionary setObject:array forKeyedSubscript:@"data"];
  }

  if (self->_hasBottomPadding)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBTableRowCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [dictionary setObject:v20 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBTableRowCardSection hasTopPadding](self, "hasTopPadding")}];
    [dictionary setObject:v21 forKeyedSubscript:@"hasTopPadding"];
  }

  if (self->_isSubHeader)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBTableRowCardSection isSubHeader](self, "isSubHeader")}];
    [dictionary setObject:v22 forKeyedSubscript:@"isSubHeader"];
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v24 = self->_punchoutOptions;
    v25 = [(NSArray *)v24 countByEnumeratingWithState:&v60 objects:v69 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v61;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v61 != v27)
          {
            objc_enumerationMutation(v24);
          }

          dictionaryRepresentation4 = [*(*(&v60 + 1) + 8 * j) dictionaryRepresentation];
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

        v26 = [(NSArray *)v24 countByEnumeratingWithState:&v60 objects:v69 count:16];
      }

      while (v26);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    punchoutPickerDismissText = [(_SFPBTableRowCardSection *)self punchoutPickerDismissText];
    v32 = [punchoutPickerDismissText copy];
    [dictionary setObject:v32 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    punchoutPickerTitle = [(_SFPBTableRowCardSection *)self punchoutPickerTitle];
    v34 = [punchoutPickerTitle copy];
    [dictionary setObject:v34 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_reducedRowHeight)
  {
    v35 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBTableRowCardSection reducedRowHeight](self, "reducedRowHeight")}];
    [dictionary setObject:v35 forKeyedSubscript:@"reducedRowHeight"];
  }

  if ([(NSArray *)self->_richDatas count])
  {
    array3 = [MEMORY[0x1E695DF70] array];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v37 = self->_richDatas;
    v38 = [(NSArray *)v37 countByEnumeratingWithState:&v56 objects:v68 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v57;
      do
      {
        for (k = 0; k != v39; ++k)
        {
          if (*v57 != v40)
          {
            objc_enumerationMutation(v37);
          }

          dictionaryRepresentation5 = [*(*(&v56 + 1) + 8 * k) dictionaryRepresentation];
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

        v39 = [(NSArray *)v37 countByEnumeratingWithState:&v56 objects:v68 count:16];
      }

      while (v39);
    }

    [dictionary setObject:array3 forKeyedSubscript:@"richData"];
  }

  if (self->_separatorStyle)
  {
    separatorStyle = [(_SFPBTableRowCardSection *)self separatorStyle];
    if (separatorStyle >= 6)
    {
      v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", separatorStyle];
    }

    else
    {
      v45 = off_1E7ACE580[separatorStyle];
    }

    [dictionary setObject:v45 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_tabGroupIdentifier)
  {
    tabGroupIdentifier = [(_SFPBTableRowCardSection *)self tabGroupIdentifier];
    v47 = [tabGroupIdentifier copy];
    [dictionary setObject:v47 forKeyedSubscript:@"tabGroupIdentifier"];
  }

  if (self->_tableIdentifier)
  {
    tableIdentifier = [(_SFPBTableRowCardSection *)self tableIdentifier];
    v49 = [tableIdentifier copy];
    [dictionary setObject:v49 forKeyedSubscript:@"tableIdentifier"];
  }

  if (self->_type)
  {
    type = [(_SFPBTableRowCardSection *)self type];
    v51 = [type copy];
    [dictionary setObject:v51 forKeyedSubscript:@"type"];
  }

  if (self->_verticalAlign)
  {
    verticalAlign = [(_SFPBTableRowCardSection *)self verticalAlign];
    if ((verticalAlign + 1) >= 3)
    {
      v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", verticalAlign];
    }

    else
    {
      v53 = off_1E7ACE4B0[(verticalAlign + 1)];
    }

    [dictionary setObject:v53 forKeyedSubscript:@"verticalAlign"];
  }

  v54 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v24 = [(NSArray *)self->_punchoutOptions hash];
  v23 = [(NSString *)self->_punchoutPickerTitle hash];
  v3 = [(NSString *)self->_punchoutPickerDismissText hash];
  if (self->_canBeHidden)
  {
    v4 = 2654435761;
  }

  else
  {
    v4 = 0;
  }

  v21 = v4;
  v22 = v3;
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

  v7 = [(NSString *)self->_type hash:v6];
  v8 = 2654435761 * self->_separatorStyle;
  v9 = [(_SFPBColor *)self->_backgroundColor hash];
  v10 = [(NSArray *)self->_richDatas hash];
  v11 = [(NSString *)self->_tableIdentifier hash];
  v12 = [(_SFPBTableAlignmentSchema *)self->_alignmentSchema hash];
  v13 = [(NSArray *)self->_datas hash];
  if (self->_isSubHeader)
  {
    v14 = 2654435761;
  }

  else
  {
    v14 = 0;
  }

  v15 = [(NSString *)self->_tabGroupIdentifier hash];
  if (self->_reducedRowHeight)
  {
    v16 = 2654435761;
  }

  else
  {
    v16 = 0;
  }

  if (self->_alignRowsToHeader)
  {
    v17 = 2654435761;
  }

  else
  {
    v17 = 0;
  }

  return v23 ^ v24 ^ v22 ^ v21 ^ v20 ^ v19 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ (2654435761 * self->_verticalAlign) ^ v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_57;
  }

  punchoutOptions = [(_SFPBTableRowCardSection *)self punchoutOptions];
  punchoutOptions2 = [equalCopy punchoutOptions];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_56;
  }

  punchoutOptions3 = [(_SFPBTableRowCardSection *)self punchoutOptions];
  if (punchoutOptions3)
  {
    v8 = punchoutOptions3;
    punchoutOptions4 = [(_SFPBTableRowCardSection *)self punchoutOptions];
    punchoutOptions5 = [equalCopy punchoutOptions];
    v11 = [punchoutOptions4 isEqual:punchoutOptions5];

    if (!v11)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBTableRowCardSection *)self punchoutPickerTitle];
  punchoutOptions2 = [equalCopy punchoutPickerTitle];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_56;
  }

  punchoutPickerTitle = [(_SFPBTableRowCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    v13 = punchoutPickerTitle;
    punchoutPickerTitle2 = [(_SFPBTableRowCardSection *)self punchoutPickerTitle];
    punchoutPickerTitle3 = [equalCopy punchoutPickerTitle];
    v16 = [punchoutPickerTitle2 isEqual:punchoutPickerTitle3];

    if (!v16)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBTableRowCardSection *)self punchoutPickerDismissText];
  punchoutOptions2 = [equalCopy punchoutPickerDismissText];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_56;
  }

  punchoutPickerDismissText = [(_SFPBTableRowCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    v18 = punchoutPickerDismissText;
    punchoutPickerDismissText2 = [(_SFPBTableRowCardSection *)self punchoutPickerDismissText];
    punchoutPickerDismissText3 = [equalCopy punchoutPickerDismissText];
    v21 = [punchoutPickerDismissText2 isEqual:punchoutPickerDismissText3];

    if (!v21)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [equalCopy canBeHidden])
  {
    goto LABEL_57;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [equalCopy hasTopPadding])
  {
    goto LABEL_57;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [equalCopy hasBottomPadding])
  {
    goto LABEL_57;
  }

  punchoutOptions = [(_SFPBTableRowCardSection *)self type];
  punchoutOptions2 = [equalCopy type];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_56;
  }

  type = [(_SFPBTableRowCardSection *)self type];
  if (type)
  {
    v26 = type;
    type2 = [(_SFPBTableRowCardSection *)self type];
    type3 = [equalCopy type];
    v29 = [type2 isEqual:type3];

    if (!v29)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [equalCopy separatorStyle])
  {
    goto LABEL_57;
  }

  punchoutOptions = [(_SFPBTableRowCardSection *)self backgroundColor];
  punchoutOptions2 = [equalCopy backgroundColor];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_56;
  }

  backgroundColor = [(_SFPBTableRowCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    v32 = backgroundColor;
    backgroundColor2 = [(_SFPBTableRowCardSection *)self backgroundColor];
    backgroundColor3 = [equalCopy backgroundColor];
    v35 = [backgroundColor2 isEqual:backgroundColor3];

    if (!v35)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBTableRowCardSection *)self richDatas];
  punchoutOptions2 = [equalCopy richDatas];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_56;
  }

  richDatas = [(_SFPBTableRowCardSection *)self richDatas];
  if (richDatas)
  {
    v37 = richDatas;
    richDatas2 = [(_SFPBTableRowCardSection *)self richDatas];
    richDatas3 = [equalCopy richDatas];
    v40 = [richDatas2 isEqual:richDatas3];

    if (!v40)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBTableRowCardSection *)self tableIdentifier];
  punchoutOptions2 = [equalCopy tableIdentifier];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_56;
  }

  tableIdentifier = [(_SFPBTableRowCardSection *)self tableIdentifier];
  if (tableIdentifier)
  {
    v42 = tableIdentifier;
    tableIdentifier2 = [(_SFPBTableRowCardSection *)self tableIdentifier];
    tableIdentifier3 = [equalCopy tableIdentifier];
    v45 = [tableIdentifier2 isEqual:tableIdentifier3];

    if (!v45)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBTableRowCardSection *)self alignmentSchema];
  punchoutOptions2 = [equalCopy alignmentSchema];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_56;
  }

  alignmentSchema = [(_SFPBTableRowCardSection *)self alignmentSchema];
  if (alignmentSchema)
  {
    v47 = alignmentSchema;
    alignmentSchema2 = [(_SFPBTableRowCardSection *)self alignmentSchema];
    alignmentSchema3 = [equalCopy alignmentSchema];
    v50 = [alignmentSchema2 isEqual:alignmentSchema3];

    if (!v50)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  punchoutOptions = [(_SFPBTableRowCardSection *)self datas];
  punchoutOptions2 = [equalCopy datas];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
    goto LABEL_56;
  }

  datas = [(_SFPBTableRowCardSection *)self datas];
  if (datas)
  {
    v52 = datas;
    datas2 = [(_SFPBTableRowCardSection *)self datas];
    datas3 = [equalCopy datas];
    v55 = [datas2 isEqual:datas3];

    if (!v55)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  isSubHeader = self->_isSubHeader;
  if (isSubHeader != [equalCopy isSubHeader])
  {
    goto LABEL_57;
  }

  punchoutOptions = [(_SFPBTableRowCardSection *)self tabGroupIdentifier];
  punchoutOptions2 = [equalCopy tabGroupIdentifier];
  if ((punchoutOptions != 0) == (punchoutOptions2 == 0))
  {
LABEL_56:

    goto LABEL_57;
  }

  tabGroupIdentifier = [(_SFPBTableRowCardSection *)self tabGroupIdentifier];
  if (tabGroupIdentifier)
  {
    v58 = tabGroupIdentifier;
    tabGroupIdentifier2 = [(_SFPBTableRowCardSection *)self tabGroupIdentifier];
    tabGroupIdentifier3 = [equalCopy tabGroupIdentifier];
    v61 = [tabGroupIdentifier2 isEqual:tabGroupIdentifier3];

    if (!v61)
    {
      goto LABEL_57;
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
      v62 = alignRowsToHeader == [equalCopy alignRowsToHeader];
      goto LABEL_58;
    }
  }

LABEL_57:
  v62 = 0;
LABEL_58:

  return v62;
}

- (void)writeTo:(id)to
{
  v46 = *MEMORY[0x1E69E9840];
  toCopy = to;
  punchoutOptions = [(_SFPBTableRowCardSection *)self punchoutOptions];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v6 = [punchoutOptions countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v40;
    do
    {
      v9 = 0;
      do
      {
        if (*v40 != v8)
        {
          objc_enumerationMutation(punchoutOptions);
        }

        v10 = *(*(&v39 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [punchoutOptions countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v7);
  }

  punchoutPickerTitle = [(_SFPBTableRowCardSection *)self punchoutPickerTitle];
  if (punchoutPickerTitle)
  {
    PBDataWriterWriteStringField();
  }

  punchoutPickerDismissText = [(_SFPBTableRowCardSection *)self punchoutPickerDismissText];
  if (punchoutPickerDismissText)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBTableRowCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBTableRowCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBTableRowCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  type = [(_SFPBTableRowCardSection *)self type];
  if (type)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBTableRowCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  backgroundColor = [(_SFPBTableRowCardSection *)self backgroundColor];
  if (backgroundColor)
  {
    PBDataWriterWriteSubmessage();
  }

  richDatas = [(_SFPBTableRowCardSection *)self richDatas];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v16 = [richDatas countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v36;
    do
    {
      v19 = 0;
      do
      {
        if (*v36 != v18)
        {
          objc_enumerationMutation(richDatas);
        }

        v20 = *(*(&v35 + 1) + 8 * v19);
        PBDataWriterWriteSubmessage();
        ++v19;
      }

      while (v17 != v19);
      v17 = [richDatas countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v17);
  }

  tableIdentifier = [(_SFPBTableRowCardSection *)self tableIdentifier];
  if (tableIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  alignmentSchema = [(_SFPBTableRowCardSection *)self alignmentSchema];
  if (alignmentSchema)
  {
    PBDataWriterWriteSubmessage();
  }

  datas = [(_SFPBTableRowCardSection *)self datas];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v24 = [datas countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v32;
    do
    {
      v27 = 0;
      do
      {
        if (*v32 != v26)
        {
          objc_enumerationMutation(datas);
        }

        v28 = *(*(&v31 + 1) + 8 * v27);
        PBDataWriterWriteSubmessage();
        ++v27;
      }

      while (v25 != v27);
      v25 = [datas countByEnumeratingWithState:&v31 objects:v43 count:16];
    }

    while (v25);
  }

  if ([(_SFPBTableRowCardSection *)self isSubHeader])
  {
    PBDataWriterWriteBOOLField();
  }

  tabGroupIdentifier = [(_SFPBTableRowCardSection *)self tabGroupIdentifier];
  if (tabGroupIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBTableRowCardSection *)self reducedRowHeight])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBTableRowCardSection *)self verticalAlign])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBTableRowCardSection *)self alignRowsToHeader])
  {
    PBDataWriterWriteBOOLField();
  }

  v30 = *MEMORY[0x1E69E9840];
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

- (void)addRichData:(id)data
{
  dataCopy = data;
  richDatas = self->_richDatas;
  v8 = dataCopy;
  if (!richDatas)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_richDatas;
    self->_richDatas = array;

    dataCopy = v8;
    richDatas = self->_richDatas;
  }

  [(NSArray *)richDatas addObject:dataCopy];
}

- (void)setRichData:(id)data
{
  v4 = [data copy];
  richDatas = self->_richDatas;
  self->_richDatas = v4;

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