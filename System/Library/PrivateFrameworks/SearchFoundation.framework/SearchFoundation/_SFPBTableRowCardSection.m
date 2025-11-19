@interface _SFPBTableRowCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBTableRowCardSection)initWithDictionary:(id)a3;
- (_SFPBTableRowCardSection)initWithFacade:(id)a3;
- (_SFPBTableRowCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addData:(id)a3;
- (void)addPunchoutOptions:(id)a3;
- (void)addRichData:(id)a3;
- (void)setData:(id)a3;
- (void)setPunchoutOptions:(id)a3;
- (void)setPunchoutPickerDismissText:(id)a3;
- (void)setPunchoutPickerTitle:(id)a3;
- (void)setRichData:(id)a3;
- (void)setTabGroupIdentifier:(id)a3;
- (void)setTableIdentifier:(id)a3;
- (void)setType:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBTableRowCardSection

- (_SFPBTableRowCardSection)initWithFacade:(id)a3
{
  v67 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBTableRowCardSection *)self init];
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

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v8 = [v4 punchoutOptions];
    v9 = [v8 countByEnumeratingWithState:&v60 objects:v66 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v60 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v60 objects:v66 count:16];
      }

      while (v10);
    }

    [(_SFPBTableRowCardSection *)v5 setPunchoutOptions:v7];
    v14 = [v4 punchoutPickerTitle];

    if (v14)
    {
      v15 = [v4 punchoutPickerTitle];
      [(_SFPBTableRowCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [v4 punchoutPickerDismissText];

    if (v16)
    {
      v17 = [v4 punchoutPickerDismissText];
      [(_SFPBTableRowCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    if ([v4 hasCanBeHidden])
    {
      -[_SFPBTableRowCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v4 canBeHidden]);
    }

    if ([v4 hasHasTopPadding])
    {
      -[_SFPBTableRowCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v4 hasTopPadding]);
    }

    if ([v4 hasHasBottomPadding])
    {
      -[_SFPBTableRowCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v4 hasBottomPadding]);
    }

    v18 = [v4 type];

    if (v18)
    {
      v19 = [v4 type];
      [(_SFPBTableRowCardSection *)v5 setType:v19];
    }

    if ([v4 hasSeparatorStyle])
    {
      -[_SFPBTableRowCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v4 separatorStyle]);
    }

    v20 = [v4 backgroundColor];

    if (v20)
    {
      v21 = [_SFPBColor alloc];
      v22 = [v4 backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:v22];
      [(_SFPBTableRowCardSection *)v5 setBackgroundColor:v23];
    }

    v24 = [v4 richData];
    if (v24)
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
    v26 = [v4 richData];
    v27 = [v26 countByEnumeratingWithState:&v56 objects:v65 count:16];
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
            objc_enumerationMutation(v26);
          }

          v31 = [[_SFPBRichText alloc] initWithFacade:*(*(&v56 + 1) + 8 * j)];
          if (v31)
          {
            [v25 addObject:v31];
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v56 objects:v65 count:16];
      }

      while (v28);
    }

    [(_SFPBTableRowCardSection *)v5 setRichDatas:v25];
    v32 = [v4 tableIdentifier];

    if (v32)
    {
      v33 = [v4 tableIdentifier];
      [(_SFPBTableRowCardSection *)v5 setTableIdentifier:v33];
    }

    v34 = [v4 alignmentSchema];

    if (v34)
    {
      v35 = [_SFPBTableAlignmentSchema alloc];
      v36 = [v4 alignmentSchema];
      v37 = [(_SFPBTableAlignmentSchema *)v35 initWithFacade:v36];
      [(_SFPBTableRowCardSection *)v5 setAlignmentSchema:v37];
    }

    v38 = [v4 data];
    v51 = v5;
    if (v38)
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
    v40 = [v4 data];
    v41 = [v40 countByEnumeratingWithState:&v52 objects:v64 count:16];
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
            objc_enumerationMutation(v40);
          }

          v45 = [[_SFPBFormattedText alloc] initWithFacade:*(*(&v52 + 1) + 8 * k)];
          if (v45)
          {
            [v39 addObject:v45];
          }
        }

        v42 = [v40 countByEnumeratingWithState:&v52 objects:v64 count:16];
      }

      while (v42);
    }

    v5 = v51;
    [(_SFPBTableRowCardSection *)v51 setDatas:v39];
    if ([v4 hasIsSubHeader])
    {
      -[_SFPBTableRowCardSection setIsSubHeader:](v51, "setIsSubHeader:", [v4 isSubHeader]);
    }

    v46 = [v4 tabGroupIdentifier];

    if (v46)
    {
      v47 = [v4 tabGroupIdentifier];
      [(_SFPBTableRowCardSection *)v51 setTabGroupIdentifier:v47];
    }

    if ([v4 hasReducedRowHeight])
    {
      -[_SFPBTableRowCardSection setReducedRowHeight:](v51, "setReducedRowHeight:", [v4 reducedRowHeight]);
    }

    if ([v4 hasVerticalAlign])
    {
      -[_SFPBTableRowCardSection setVerticalAlign:](v51, "setVerticalAlign:", [v4 verticalAlign]);
    }

    if ([v4 hasAlignRowsToHeader])
    {
      -[_SFPBTableRowCardSection setAlignRowsToHeader:](v51, "setAlignRowsToHeader:", [v4 alignRowsToHeader]);
    }

    v48 = v51;
  }

  v49 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBTableRowCardSection)initWithDictionary:(id)a3
{
  v90 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v86.receiver = self;
  v86.super_class = _SFPBTableRowCardSection;
  v5 = [(_SFPBTableRowCardSection *)&v86 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"punchoutOptions"];
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

    v14 = [v4 objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBTableRowCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBTableRowCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"canBeHidden"];
    v19 = 0x1E696A000uLL;
    objc_opt_class();
    v72 = v18;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTableRowCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v18 BOOLValue]);
    }

    v20 = [v4 objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    v71 = v20;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTableRowCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v20 BOOLValue]);
    }

    v21 = [v4 objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    v70 = v21;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTableRowCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v21 BOOLValue]);
    }

    v22 = [v4 objectForKeyedSubscript:@"type"];
    objc_opt_class();
    v69 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = [v22 copy];
      [(_SFPBTableRowCardSection *)v5 setType:v23];
    }

    v24 = [v4 objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    v68 = v24;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTableRowCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v24 intValue]);
    }

    v25 = [v4 objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    v67 = v25;
    if (objc_opt_isKindOfClass())
    {
      v26 = [[_SFPBColor alloc] initWithDictionary:v25];
      [(_SFPBTableRowCardSection *)v5 setBackgroundColor:v26];
    }

    v27 = [v4 objectForKeyedSubscript:@"richData"];
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

    v36 = [v4 objectForKeyedSubscript:@"tableIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = [v36 copy];
      [(_SFPBTableRowCardSection *)v5 setTableIdentifier:v37];
    }

    v63 = v36;
    v38 = [v4 objectForKeyedSubscript:@"alignmentSchema"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = [[_SFPBTableAlignmentSchema alloc] initWithDictionary:v38];
      [(_SFPBTableRowCardSection *)v5 setAlignmentSchema:v39];
    }

    v40 = [v4 objectForKeyedSubscript:{@"data", v38}];
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

    v48 = [v4 objectForKeyedSubscript:@"isSubHeader"];
    v49 = *(v19 + 3480);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTableRowCardSection setIsSubHeader:](v5, "setIsSubHeader:", [v48 BOOLValue]);
    }

    v50 = [v4 objectForKeyedSubscript:@"tabGroupIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v51 = [v50 copy];
      [(_SFPBTableRowCardSection *)v5 setTabGroupIdentifier:v51];
    }

    v52 = [v4 objectForKeyedSubscript:@"reducedRowHeight"];
    v53 = *(v19 + 3480);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTableRowCardSection setReducedRowHeight:](v5, "setReducedRowHeight:", [v52 BOOLValue]);
    }

    v54 = [v4 objectForKeyedSubscript:@"verticalAlign"];
    v55 = v19;
    v56 = *(v19 + 3480);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTableRowCardSection setVerticalAlign:](v5, "setVerticalAlign:", [v54 intValue]);
    }

    v57 = [v4 objectForKeyedSubscript:@"alignRowsToHeader"];
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

- (_SFPBTableRowCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBTableRowCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBTableRowCardSection *)self dictionaryRepresentation];
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
  v71 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_alignRowsToHeader)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBTableRowCardSection alignRowsToHeader](self, "alignRowsToHeader")}];
    [v3 setObject:v4 forKeyedSubscript:@"alignRowsToHeader"];
  }

  if (self->_alignmentSchema)
  {
    v5 = [(_SFPBTableRowCardSection *)self alignmentSchema];
    v6 = [v5 dictionaryRepresentation];
    if (v6)
    {
      [v3 setObject:v6 forKeyedSubscript:@"alignmentSchema"];
    }

    else
    {
      v7 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v7 forKeyedSubscript:@"alignmentSchema"];
    }
  }

  if (self->_backgroundColor)
  {
    v8 = [(_SFPBTableRowCardSection *)self backgroundColor];
    v9 = [v8 dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"backgroundColor"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"backgroundColor"];
    }
  }

  if (self->_canBeHidden)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBTableRowCardSection canBeHidden](self, "canBeHidden")}];
    [v3 setObject:v11 forKeyedSubscript:@"canBeHidden"];
  }

  if ([(NSArray *)self->_datas count])
  {
    v12 = [MEMORY[0x1E695DF70] array];
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

          v18 = [*(*(&v64 + 1) + 8 * i) dictionaryRepresentation];
          if (v18)
          {
            [v12 addObject:v18];
          }

          else
          {
            v19 = [MEMORY[0x1E695DFB0] null];
            [v12 addObject:v19];
          }
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v64 objects:v70 count:16];
      }

      while (v15);
    }

    [v3 setObject:v12 forKeyedSubscript:@"data"];
  }

  if (self->_hasBottomPadding)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBTableRowCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [v3 setObject:v20 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBTableRowCardSection hasTopPadding](self, "hasTopPadding")}];
    [v3 setObject:v21 forKeyedSubscript:@"hasTopPadding"];
  }

  if (self->_isSubHeader)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBTableRowCardSection isSubHeader](self, "isSubHeader")}];
    [v3 setObject:v22 forKeyedSubscript:@"isSubHeader"];
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    v23 = [MEMORY[0x1E695DF70] array];
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

          v29 = [*(*(&v60 + 1) + 8 * j) dictionaryRepresentation];
          if (v29)
          {
            [v23 addObject:v29];
          }

          else
          {
            v30 = [MEMORY[0x1E695DFB0] null];
            [v23 addObject:v30];
          }
        }

        v26 = [(NSArray *)v24 countByEnumeratingWithState:&v60 objects:v69 count:16];
      }

      while (v26);
    }

    [v3 setObject:v23 forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    v31 = [(_SFPBTableRowCardSection *)self punchoutPickerDismissText];
    v32 = [v31 copy];
    [v3 setObject:v32 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    v33 = [(_SFPBTableRowCardSection *)self punchoutPickerTitle];
    v34 = [v33 copy];
    [v3 setObject:v34 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_reducedRowHeight)
  {
    v35 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBTableRowCardSection reducedRowHeight](self, "reducedRowHeight")}];
    [v3 setObject:v35 forKeyedSubscript:@"reducedRowHeight"];
  }

  if ([(NSArray *)self->_richDatas count])
  {
    v36 = [MEMORY[0x1E695DF70] array];
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

          v42 = [*(*(&v56 + 1) + 8 * k) dictionaryRepresentation];
          if (v42)
          {
            [v36 addObject:v42];
          }

          else
          {
            v43 = [MEMORY[0x1E695DFB0] null];
            [v36 addObject:v43];
          }
        }

        v39 = [(NSArray *)v37 countByEnumeratingWithState:&v56 objects:v68 count:16];
      }

      while (v39);
    }

    [v3 setObject:v36 forKeyedSubscript:@"richData"];
  }

  if (self->_separatorStyle)
  {
    v44 = [(_SFPBTableRowCardSection *)self separatorStyle];
    if (v44 >= 6)
    {
      v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v44];
    }

    else
    {
      v45 = off_1E7ACE580[v44];
    }

    [v3 setObject:v45 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_tabGroupIdentifier)
  {
    v46 = [(_SFPBTableRowCardSection *)self tabGroupIdentifier];
    v47 = [v46 copy];
    [v3 setObject:v47 forKeyedSubscript:@"tabGroupIdentifier"];
  }

  if (self->_tableIdentifier)
  {
    v48 = [(_SFPBTableRowCardSection *)self tableIdentifier];
    v49 = [v48 copy];
    [v3 setObject:v49 forKeyedSubscript:@"tableIdentifier"];
  }

  if (self->_type)
  {
    v50 = [(_SFPBTableRowCardSection *)self type];
    v51 = [v50 copy];
    [v3 setObject:v51 forKeyedSubscript:@"type"];
  }

  if (self->_verticalAlign)
  {
    v52 = [(_SFPBTableRowCardSection *)self verticalAlign];
    if ((v52 + 1) >= 3)
    {
      v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v52];
    }

    else
    {
      v53 = off_1E7ACE4B0[(v52 + 1)];
    }

    [v3 setObject:v53 forKeyedSubscript:@"verticalAlign"];
  }

  v54 = *MEMORY[0x1E69E9840];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_57;
  }

  v5 = [(_SFPBTableRowCardSection *)self punchoutOptions];
  v6 = [v4 punchoutOptions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v7 = [(_SFPBTableRowCardSection *)self punchoutOptions];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBTableRowCardSection *)self punchoutOptions];
    v10 = [v4 punchoutOptions];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(_SFPBTableRowCardSection *)self punchoutPickerTitle];
  v6 = [v4 punchoutPickerTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v12 = [(_SFPBTableRowCardSection *)self punchoutPickerTitle];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBTableRowCardSection *)self punchoutPickerTitle];
    v15 = [v4 punchoutPickerTitle];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(_SFPBTableRowCardSection *)self punchoutPickerDismissText];
  v6 = [v4 punchoutPickerDismissText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v17 = [(_SFPBTableRowCardSection *)self punchoutPickerDismissText];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBTableRowCardSection *)self punchoutPickerDismissText];
    v20 = [v4 punchoutPickerDismissText];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [v4 canBeHidden])
  {
    goto LABEL_57;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [v4 hasTopPadding])
  {
    goto LABEL_57;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [v4 hasBottomPadding])
  {
    goto LABEL_57;
  }

  v5 = [(_SFPBTableRowCardSection *)self type];
  v6 = [v4 type];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v25 = [(_SFPBTableRowCardSection *)self type];
  if (v25)
  {
    v26 = v25;
    v27 = [(_SFPBTableRowCardSection *)self type];
    v28 = [v4 type];
    v29 = [v27 isEqual:v28];

    if (!v29)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [v4 separatorStyle])
  {
    goto LABEL_57;
  }

  v5 = [(_SFPBTableRowCardSection *)self backgroundColor];
  v6 = [v4 backgroundColor];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v31 = [(_SFPBTableRowCardSection *)self backgroundColor];
  if (v31)
  {
    v32 = v31;
    v33 = [(_SFPBTableRowCardSection *)self backgroundColor];
    v34 = [v4 backgroundColor];
    v35 = [v33 isEqual:v34];

    if (!v35)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(_SFPBTableRowCardSection *)self richDatas];
  v6 = [v4 richDatas];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v36 = [(_SFPBTableRowCardSection *)self richDatas];
  if (v36)
  {
    v37 = v36;
    v38 = [(_SFPBTableRowCardSection *)self richDatas];
    v39 = [v4 richDatas];
    v40 = [v38 isEqual:v39];

    if (!v40)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(_SFPBTableRowCardSection *)self tableIdentifier];
  v6 = [v4 tableIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v41 = [(_SFPBTableRowCardSection *)self tableIdentifier];
  if (v41)
  {
    v42 = v41;
    v43 = [(_SFPBTableRowCardSection *)self tableIdentifier];
    v44 = [v4 tableIdentifier];
    v45 = [v43 isEqual:v44];

    if (!v45)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(_SFPBTableRowCardSection *)self alignmentSchema];
  v6 = [v4 alignmentSchema];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v46 = [(_SFPBTableRowCardSection *)self alignmentSchema];
  if (v46)
  {
    v47 = v46;
    v48 = [(_SFPBTableRowCardSection *)self alignmentSchema];
    v49 = [v4 alignmentSchema];
    v50 = [v48 isEqual:v49];

    if (!v50)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(_SFPBTableRowCardSection *)self datas];
  v6 = [v4 datas];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v51 = [(_SFPBTableRowCardSection *)self datas];
  if (v51)
  {
    v52 = v51;
    v53 = [(_SFPBTableRowCardSection *)self datas];
    v54 = [v4 datas];
    v55 = [v53 isEqual:v54];

    if (!v55)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  isSubHeader = self->_isSubHeader;
  if (isSubHeader != [v4 isSubHeader])
  {
    goto LABEL_57;
  }

  v5 = [(_SFPBTableRowCardSection *)self tabGroupIdentifier];
  v6 = [v4 tabGroupIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_56:

    goto LABEL_57;
  }

  v57 = [(_SFPBTableRowCardSection *)self tabGroupIdentifier];
  if (v57)
  {
    v58 = v57;
    v59 = [(_SFPBTableRowCardSection *)self tabGroupIdentifier];
    v60 = [v4 tabGroupIdentifier];
    v61 = [v59 isEqual:v60];

    if (!v61)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  reducedRowHeight = self->_reducedRowHeight;
  if (reducedRowHeight == [v4 reducedRowHeight])
  {
    verticalAlign = self->_verticalAlign;
    if (verticalAlign == [v4 verticalAlign])
    {
      alignRowsToHeader = self->_alignRowsToHeader;
      v62 = alignRowsToHeader == [v4 alignRowsToHeader];
      goto LABEL_58;
    }
  }

LABEL_57:
  v62 = 0;
LABEL_58:

  return v62;
}

- (void)writeTo:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBTableRowCardSection *)self punchoutOptions];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v39 objects:v45 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v39 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v7);
  }

  v11 = [(_SFPBTableRowCardSection *)self punchoutPickerTitle];
  if (v11)
  {
    PBDataWriterWriteStringField();
  }

  v12 = [(_SFPBTableRowCardSection *)self punchoutPickerDismissText];
  if (v12)
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

  v13 = [(_SFPBTableRowCardSection *)self type];
  if (v13)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBTableRowCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  v14 = [(_SFPBTableRowCardSection *)self backgroundColor];
  if (v14)
  {
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_SFPBTableRowCardSection *)self richDatas];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v35 objects:v44 count:16];
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
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v35 + 1) + 8 * v19);
        PBDataWriterWriteSubmessage();
        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v17);
  }

  v21 = [(_SFPBTableRowCardSection *)self tableIdentifier];
  if (v21)
  {
    PBDataWriterWriteStringField();
  }

  v22 = [(_SFPBTableRowCardSection *)self alignmentSchema];
  if (v22)
  {
    PBDataWriterWriteSubmessage();
  }

  v23 = [(_SFPBTableRowCardSection *)self datas];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v24 = [v23 countByEnumeratingWithState:&v31 objects:v43 count:16];
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
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v31 + 1) + 8 * v27);
        PBDataWriterWriteSubmessage();
        ++v27;
      }

      while (v25 != v27);
      v25 = [v23 countByEnumeratingWithState:&v31 objects:v43 count:16];
    }

    while (v25);
  }

  if ([(_SFPBTableRowCardSection *)self isSubHeader])
  {
    PBDataWriterWriteBOOLField();
  }

  v29 = [(_SFPBTableRowCardSection *)self tabGroupIdentifier];
  if (v29)
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

- (void)setTabGroupIdentifier:(id)a3
{
  v4 = [a3 copy];
  tabGroupIdentifier = self->_tabGroupIdentifier;
  self->_tabGroupIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addData:(id)a3
{
  v4 = a3;
  datas = self->_datas;
  v8 = v4;
  if (!datas)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_datas;
    self->_datas = v6;

    v4 = v8;
    datas = self->_datas;
  }

  [(NSArray *)datas addObject:v4];
}

- (void)setData:(id)a3
{
  v4 = [a3 copy];
  datas = self->_datas;
  self->_datas = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setTableIdentifier:(id)a3
{
  v4 = [a3 copy];
  tableIdentifier = self->_tableIdentifier;
  self->_tableIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addRichData:(id)a3
{
  v4 = a3;
  richDatas = self->_richDatas;
  v8 = v4;
  if (!richDatas)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_richDatas;
    self->_richDatas = v6;

    v4 = v8;
    richDatas = self->_richDatas;
  }

  [(NSArray *)richDatas addObject:v4];
}

- (void)setRichData:(id)a3
{
  v4 = [a3 copy];
  richDatas = self->_richDatas;
  self->_richDatas = v4;

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