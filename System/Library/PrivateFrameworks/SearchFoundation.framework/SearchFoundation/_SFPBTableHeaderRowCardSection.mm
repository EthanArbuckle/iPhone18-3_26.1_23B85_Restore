@interface _SFPBTableHeaderRowCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBTableHeaderRowCardSection)initWithDictionary:(id)a3;
- (_SFPBTableHeaderRowCardSection)initWithFacade:(id)a3;
- (_SFPBTableHeaderRowCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addData:(id)a3;
- (void)addPunchoutOptions:(id)a3;
- (void)setData:(id)a3;
- (void)setPunchoutOptions:(id)a3;
- (void)setPunchoutPickerDismissText:(id)a3;
- (void)setPunchoutPickerTitle:(id)a3;
- (void)setTabGroupIdentifier:(id)a3;
- (void)setTableIdentifier:(id)a3;
- (void)setType:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBTableHeaderRowCardSection

- (_SFPBTableHeaderRowCardSection)initWithFacade:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBTableHeaderRowCardSection *)self init];
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

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v8 = [v4 punchoutOptions];
    v9 = [v8 countByEnumeratingWithState:&v47 objects:v52 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v47 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v10);
    }

    [(_SFPBTableHeaderRowCardSection *)v5 setPunchoutOptions:v7];
    v14 = [v4 punchoutPickerTitle];

    if (v14)
    {
      v15 = [v4 punchoutPickerTitle];
      [(_SFPBTableHeaderRowCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [v4 punchoutPickerDismissText];

    if (v16)
    {
      v17 = [v4 punchoutPickerDismissText];
      [(_SFPBTableHeaderRowCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    if ([v4 hasCanBeHidden])
    {
      -[_SFPBTableHeaderRowCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v4 canBeHidden]);
    }

    if ([v4 hasHasTopPadding])
    {
      -[_SFPBTableHeaderRowCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v4 hasTopPadding]);
    }

    if ([v4 hasHasBottomPadding])
    {
      -[_SFPBTableHeaderRowCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v4 hasBottomPadding]);
    }

    v18 = [v4 type];

    if (v18)
    {
      v19 = [v4 type];
      [(_SFPBTableHeaderRowCardSection *)v5 setType:v19];
    }

    if ([v4 hasSeparatorStyle])
    {
      -[_SFPBTableHeaderRowCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v4 separatorStyle]);
    }

    v20 = [v4 backgroundColor];

    if (v20)
    {
      v21 = [_SFPBColor alloc];
      v22 = [v4 backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:v22];
      [(_SFPBTableHeaderRowCardSection *)v5 setBackgroundColor:v23];
    }

    v24 = [v4 tableIdentifier];

    if (v24)
    {
      v25 = [v4 tableIdentifier];
      [(_SFPBTableHeaderRowCardSection *)v5 setTableIdentifier:v25];
    }

    v26 = [v4 alignmentSchema];

    if (v26)
    {
      v27 = [_SFPBTableAlignmentSchema alloc];
      v28 = [v4 alignmentSchema];
      v29 = [(_SFPBTableAlignmentSchema *)v27 initWithFacade:v28];
      [(_SFPBTableHeaderRowCardSection *)v5 setAlignmentSchema:v29];
    }

    v30 = [v4 data];
    if (v30)
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
    v32 = [v4 data];
    v33 = [v32 countByEnumeratingWithState:&v43 objects:v51 count:16];
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
            objc_enumerationMutation(v32);
          }

          v37 = [[_SFPBFormattedText alloc] initWithFacade:*(*(&v43 + 1) + 8 * j)];
          if (v37)
          {
            [v31 addObject:v37];
          }
        }

        v34 = [v32 countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v34);
    }

    [(_SFPBTableHeaderRowCardSection *)v5 setDatas:v31];
    if ([v4 hasIsSubHeader])
    {
      -[_SFPBTableHeaderRowCardSection setIsSubHeader:](v5, "setIsSubHeader:", [v4 isSubHeader]);
    }

    v38 = [v4 tabGroupIdentifier];

    if (v38)
    {
      v39 = [v4 tabGroupIdentifier];
      [(_SFPBTableHeaderRowCardSection *)v5 setTabGroupIdentifier:v39];
    }

    if ([v4 hasReducedRowHeight])
    {
      -[_SFPBTableHeaderRowCardSection setReducedRowHeight:](v5, "setReducedRowHeight:", [v4 reducedRowHeight]);
    }

    if ([v4 hasVerticalAlign])
    {
      -[_SFPBTableHeaderRowCardSection setVerticalAlign:](v5, "setVerticalAlign:", [v4 verticalAlign]);
    }

    if ([v4 hasAlignRowsToHeader])
    {
      -[_SFPBTableHeaderRowCardSection setAlignRowsToHeader:](v5, "setAlignRowsToHeader:", [v4 alignRowsToHeader]);
    }

    v40 = v5;
  }

  v41 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBTableHeaderRowCardSection)initWithDictionary:(id)a3
{
  v69 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v66.receiver = self;
  v66.super_class = _SFPBTableHeaderRowCardSection;
  v5 = [(_SFPBTableHeaderRowCardSection *)&v66 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"punchoutOptions"];
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

    v15 = [v4 objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 copy];
      [(_SFPBTableHeaderRowCardSection *)v5 setPunchoutPickerTitle:v16];
    }

    v17 = [v4 objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v17 copy];
      [(_SFPBTableHeaderRowCardSection *)v5 setPunchoutPickerDismissText:v18];
    }

    v19 = [v4 objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTableHeaderRowCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v19 BOOLValue]);
    }

    v20 = [v4 objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTableHeaderRowCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v20 BOOLValue]);
    }

    v21 = [v4 objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    v57 = v21;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTableHeaderRowCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v21 BOOLValue]);
    }

    v22 = [v4 objectForKeyedSubscript:@"type"];
    objc_opt_class();
    v56 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = [v22 copy];
      [(_SFPBTableHeaderRowCardSection *)v5 setType:v23];
    }

    v24 = [v4 objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    v55 = v24;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTableHeaderRowCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v24 intValue]);
    }

    v25 = [v4 objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    v54 = v25;
    if (objc_opt_isKindOfClass())
    {
      v26 = [[_SFPBColor alloc] initWithDictionary:v25];
      [(_SFPBTableHeaderRowCardSection *)v5 setBackgroundColor:v26];
    }

    v27 = [v4 objectForKeyedSubscript:@"tableIdentifier"];
    objc_opt_class();
    v53 = v27;
    if (objc_opt_isKindOfClass())
    {
      v28 = [v27 copy];
      [(_SFPBTableHeaderRowCardSection *)v5 setTableIdentifier:v28];
    }

    v51 = v19;
    v52 = v17;
    v29 = [v4 objectForKeyedSubscript:@"alignmentSchema"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = [[_SFPBTableAlignmentSchema alloc] initWithDictionary:v29];
      [(_SFPBTableHeaderRowCardSection *)v5 setAlignmentSchema:v30];
    }

    v49 = v29;
    v50 = v20;
    v31 = [v4 objectForKeyedSubscript:@"data"];
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

    v39 = [v4 objectForKeyedSubscript:@"isSubHeader"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTableHeaderRowCardSection setIsSubHeader:](v5, "setIsSubHeader:", [v39 BOOLValue]);
    }

    v40 = [v4 objectForKeyedSubscript:@"tabGroupIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = [v40 copy];
      [(_SFPBTableHeaderRowCardSection *)v5 setTabGroupIdentifier:v41];
    }

    v42 = [v4 objectForKeyedSubscript:@"reducedRowHeight"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTableHeaderRowCardSection setReducedRowHeight:](v5, "setReducedRowHeight:", [v42 BOOLValue]);
    }

    v43 = [v4 objectForKeyedSubscript:@"verticalAlign"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBTableHeaderRowCardSection setVerticalAlign:](v5, "setVerticalAlign:", [v43 intValue]);
    }

    v44 = [v4 objectForKeyedSubscript:@"alignRowsToHeader"];
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

- (_SFPBTableHeaderRowCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBTableHeaderRowCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBTableHeaderRowCardSection *)self dictionaryRepresentation];
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
  v58 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_alignRowsToHeader)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBTableHeaderRowCardSection alignRowsToHeader](self, "alignRowsToHeader")}];
    [v3 setObject:v4 forKeyedSubscript:@"alignRowsToHeader"];
  }

  if (self->_alignmentSchema)
  {
    v5 = [(_SFPBTableHeaderRowCardSection *)self alignmentSchema];
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
    v8 = [(_SFPBTableHeaderRowCardSection *)self backgroundColor];
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
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBTableHeaderRowCardSection canBeHidden](self, "canBeHidden")}];
    [v3 setObject:v11 forKeyedSubscript:@"canBeHidden"];
  }

  if ([(NSArray *)self->_datas count])
  {
    v12 = [MEMORY[0x1E695DF70] array];
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

          v18 = [*(*(&v52 + 1) + 8 * i) dictionaryRepresentation];
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

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v15);
    }

    [v3 setObject:v12 forKeyedSubscript:@"data"];
  }

  if (self->_hasBottomPadding)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBTableHeaderRowCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [v3 setObject:v20 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBTableHeaderRowCardSection hasTopPadding](self, "hasTopPadding")}];
    [v3 setObject:v21 forKeyedSubscript:@"hasTopPadding"];
  }

  if (self->_isSubHeader)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBTableHeaderRowCardSection isSubHeader](self, "isSubHeader")}];
    [v3 setObject:v22 forKeyedSubscript:@"isSubHeader"];
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    v23 = [MEMORY[0x1E695DF70] array];
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

          v29 = [*(*(&v48 + 1) + 8 * j) dictionaryRepresentation];
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

        v26 = [(NSArray *)v24 countByEnumeratingWithState:&v48 objects:v56 count:16];
      }

      while (v26);
    }

    [v3 setObject:v23 forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    v31 = [(_SFPBTableHeaderRowCardSection *)self punchoutPickerDismissText];
    v32 = [v31 copy];
    [v3 setObject:v32 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    v33 = [(_SFPBTableHeaderRowCardSection *)self punchoutPickerTitle];
    v34 = [v33 copy];
    [v3 setObject:v34 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_reducedRowHeight)
  {
    v35 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBTableHeaderRowCardSection reducedRowHeight](self, "reducedRowHeight")}];
    [v3 setObject:v35 forKeyedSubscript:@"reducedRowHeight"];
  }

  if (self->_separatorStyle)
  {
    v36 = [(_SFPBTableHeaderRowCardSection *)self separatorStyle];
    if (v36 >= 6)
    {
      v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v36];
    }

    else
    {
      v37 = off_1E7ACE580[v36];
    }

    [v3 setObject:v37 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_tabGroupIdentifier)
  {
    v38 = [(_SFPBTableHeaderRowCardSection *)self tabGroupIdentifier];
    v39 = [v38 copy];
    [v3 setObject:v39 forKeyedSubscript:@"tabGroupIdentifier"];
  }

  if (self->_tableIdentifier)
  {
    v40 = [(_SFPBTableHeaderRowCardSection *)self tableIdentifier];
    v41 = [v40 copy];
    [v3 setObject:v41 forKeyedSubscript:@"tableIdentifier"];
  }

  if (self->_type)
  {
    v42 = [(_SFPBTableHeaderRowCardSection *)self type];
    v43 = [v42 copy];
    [v3 setObject:v43 forKeyedSubscript:@"type"];
  }

  if (self->_verticalAlign)
  {
    v44 = [(_SFPBTableHeaderRowCardSection *)self verticalAlign];
    if ((v44 + 1) >= 3)
    {
      v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v44];
    }

    else
    {
      v45 = off_1E7ACE4B0[(v44 + 1)];
    }

    [v3 setObject:v45 forKeyedSubscript:@"verticalAlign"];
  }

  v46 = *MEMORY[0x1E69E9840];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_52;
  }

  v5 = [(_SFPBTableHeaderRowCardSection *)self punchoutOptions];
  v6 = [v4 punchoutOptions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v7 = [(_SFPBTableHeaderRowCardSection *)self punchoutOptions];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBTableHeaderRowCardSection *)self punchoutOptions];
    v10 = [v4 punchoutOptions];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(_SFPBTableHeaderRowCardSection *)self punchoutPickerTitle];
  v6 = [v4 punchoutPickerTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v12 = [(_SFPBTableHeaderRowCardSection *)self punchoutPickerTitle];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBTableHeaderRowCardSection *)self punchoutPickerTitle];
    v15 = [v4 punchoutPickerTitle];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(_SFPBTableHeaderRowCardSection *)self punchoutPickerDismissText];
  v6 = [v4 punchoutPickerDismissText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v17 = [(_SFPBTableHeaderRowCardSection *)self punchoutPickerDismissText];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBTableHeaderRowCardSection *)self punchoutPickerDismissText];
    v20 = [v4 punchoutPickerDismissText];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [v4 canBeHidden])
  {
    goto LABEL_52;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [v4 hasTopPadding])
  {
    goto LABEL_52;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [v4 hasBottomPadding])
  {
    goto LABEL_52;
  }

  v5 = [(_SFPBTableHeaderRowCardSection *)self type];
  v6 = [v4 type];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v25 = [(_SFPBTableHeaderRowCardSection *)self type];
  if (v25)
  {
    v26 = v25;
    v27 = [(_SFPBTableHeaderRowCardSection *)self type];
    v28 = [v4 type];
    v29 = [v27 isEqual:v28];

    if (!v29)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [v4 separatorStyle])
  {
    goto LABEL_52;
  }

  v5 = [(_SFPBTableHeaderRowCardSection *)self backgroundColor];
  v6 = [v4 backgroundColor];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v31 = [(_SFPBTableHeaderRowCardSection *)self backgroundColor];
  if (v31)
  {
    v32 = v31;
    v33 = [(_SFPBTableHeaderRowCardSection *)self backgroundColor];
    v34 = [v4 backgroundColor];
    v35 = [v33 isEqual:v34];

    if (!v35)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(_SFPBTableHeaderRowCardSection *)self tableIdentifier];
  v6 = [v4 tableIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v36 = [(_SFPBTableHeaderRowCardSection *)self tableIdentifier];
  if (v36)
  {
    v37 = v36;
    v38 = [(_SFPBTableHeaderRowCardSection *)self tableIdentifier];
    v39 = [v4 tableIdentifier];
    v40 = [v38 isEqual:v39];

    if (!v40)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(_SFPBTableHeaderRowCardSection *)self alignmentSchema];
  v6 = [v4 alignmentSchema];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v41 = [(_SFPBTableHeaderRowCardSection *)self alignmentSchema];
  if (v41)
  {
    v42 = v41;
    v43 = [(_SFPBTableHeaderRowCardSection *)self alignmentSchema];
    v44 = [v4 alignmentSchema];
    v45 = [v43 isEqual:v44];

    if (!v45)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  v5 = [(_SFPBTableHeaderRowCardSection *)self datas];
  v6 = [v4 datas];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_51;
  }

  v46 = [(_SFPBTableHeaderRowCardSection *)self datas];
  if (v46)
  {
    v47 = v46;
    v48 = [(_SFPBTableHeaderRowCardSection *)self datas];
    v49 = [v4 datas];
    v50 = [v48 isEqual:v49];

    if (!v50)
    {
      goto LABEL_52;
    }
  }

  else
  {
  }

  isSubHeader = self->_isSubHeader;
  if (isSubHeader != [v4 isSubHeader])
  {
    goto LABEL_52;
  }

  v5 = [(_SFPBTableHeaderRowCardSection *)self tabGroupIdentifier];
  v6 = [v4 tabGroupIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_51:

    goto LABEL_52;
  }

  v52 = [(_SFPBTableHeaderRowCardSection *)self tabGroupIdentifier];
  if (v52)
  {
    v53 = v52;
    v54 = [(_SFPBTableHeaderRowCardSection *)self tabGroupIdentifier];
    v55 = [v4 tabGroupIdentifier];
    v56 = [v54 isEqual:v55];

    if (!v56)
    {
      goto LABEL_52;
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
      v57 = alignRowsToHeader == [v4 alignRowsToHeader];
      goto LABEL_53;
    }
  }

LABEL_52:
  v57 = 0;
LABEL_53:

  return v57;
}

- (void)writeTo:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBTableHeaderRowCardSection *)self punchoutOptions];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v29 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v7);
  }

  v11 = [(_SFPBTableHeaderRowCardSection *)self punchoutPickerTitle];
  if (v11)
  {
    PBDataWriterWriteStringField();
  }

  v12 = [(_SFPBTableHeaderRowCardSection *)self punchoutPickerDismissText];
  if (v12)
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

  v13 = [(_SFPBTableHeaderRowCardSection *)self type];
  if (v13)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBTableHeaderRowCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  v14 = [(_SFPBTableHeaderRowCardSection *)self backgroundColor];
  if (v14)
  {
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_SFPBTableHeaderRowCardSection *)self tableIdentifier];
  if (v15)
  {
    PBDataWriterWriteStringField();
  }

  v16 = [(_SFPBTableHeaderRowCardSection *)self alignmentSchema];
  if (v16)
  {
    PBDataWriterWriteSubmessage();
  }

  v17 = [(_SFPBTableHeaderRowCardSection *)self datas];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v18 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
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
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v25 + 1) + 8 * v21);
        PBDataWriterWriteSubmessage();
        ++v21;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v19);
  }

  if ([(_SFPBTableHeaderRowCardSection *)self isSubHeader])
  {
    PBDataWriterWriteBOOLField();
  }

  v23 = [(_SFPBTableHeaderRowCardSection *)self tabGroupIdentifier];
  if (v23)
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