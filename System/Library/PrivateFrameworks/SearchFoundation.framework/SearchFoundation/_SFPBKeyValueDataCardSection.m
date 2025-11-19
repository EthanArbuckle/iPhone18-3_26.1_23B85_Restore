@interface _SFPBKeyValueDataCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBKeyValueDataCardSection)initWithDictionary:(id)a3;
- (_SFPBKeyValueDataCardSection)initWithFacade:(id)a3;
- (_SFPBKeyValueDataCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addData:(id)a3;
- (void)addPunchoutOptions:(id)a3;
- (void)setData:(id)a3;
- (void)setPunchoutOptions:(id)a3;
- (void)setPunchoutPickerDismissText:(id)a3;
- (void)setPunchoutPickerTitle:(id)a3;
- (void)setType:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBKeyValueDataCardSection

- (_SFPBKeyValueDataCardSection)initWithFacade:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBKeyValueDataCardSection *)self init];
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
    v9 = [v8 countByEnumeratingWithState:&v43 objects:v48 count:16];
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

        v10 = [v8 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v10);
    }

    [(_SFPBKeyValueDataCardSection *)v5 setPunchoutOptions:v7];
    v14 = [v4 punchoutPickerTitle];

    if (v14)
    {
      v15 = [v4 punchoutPickerTitle];
      [(_SFPBKeyValueDataCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [v4 punchoutPickerDismissText];

    if (v16)
    {
      v17 = [v4 punchoutPickerDismissText];
      [(_SFPBKeyValueDataCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    if ([v4 hasCanBeHidden])
    {
      -[_SFPBKeyValueDataCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v4 canBeHidden]);
    }

    if ([v4 hasHasTopPadding])
    {
      -[_SFPBKeyValueDataCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v4 hasTopPadding]);
    }

    if ([v4 hasHasBottomPadding])
    {
      -[_SFPBKeyValueDataCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v4 hasBottomPadding]);
    }

    v18 = [v4 type];

    if (v18)
    {
      v19 = [v4 type];
      [(_SFPBKeyValueDataCardSection *)v5 setType:v19];
    }

    if ([v4 hasSeparatorStyle])
    {
      -[_SFPBKeyValueDataCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v4 separatorStyle]);
    }

    v20 = [v4 backgroundColor];

    if (v20)
    {
      v21 = [_SFPBColor alloc];
      v22 = [v4 backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:v22];
      [(_SFPBKeyValueDataCardSection *)v5 setBackgroundColor:v23];
    }

    v24 = [v4 data];
    if (v24)
    {
      v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v25 = 0;
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v26 = [v4 data];
    v27 = [v26 countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v40;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v40 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = [[_SFPBKeyValueTuple alloc] initWithFacade:*(*(&v39 + 1) + 8 * j)];
          if (v31)
          {
            [v25 addObject:v31];
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v28);
    }

    [(_SFPBKeyValueDataCardSection *)v5 setDatas:v25];
    v32 = [v4 accessoryImage];

    if (v32)
    {
      v33 = [_SFPBImage alloc];
      v34 = [v4 accessoryImage];
      v35 = [(_SFPBImage *)v33 initWithFacade:v34];
      [(_SFPBKeyValueDataCardSection *)v5 setAccessoryImage:v35];
    }

    v36 = v5;
  }

  v37 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBKeyValueDataCardSection)initWithDictionary:(id)a3
{
  v60 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v57.receiver = self;
  v57.super_class = _SFPBKeyValueDataCardSection;
  v5 = [(_SFPBKeyValueDataCardSection *)&v57 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"punchoutOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v7 = v6;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v53 objects:v59 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v54;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v54 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v53 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [[_SFPBPunchout alloc] initWithDictionary:v13];
              [(_SFPBKeyValueDataCardSection *)v5 addPunchoutOptions:v14];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v53 objects:v59 count:16];
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
      [(_SFPBKeyValueDataCardSection *)v5 setPunchoutPickerTitle:v16];
    }

    v17 = [v4 objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v17 copy];
      [(_SFPBKeyValueDataCardSection *)v5 setPunchoutPickerDismissText:v18];
    }

    v19 = [v4 objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBKeyValueDataCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v19 BOOLValue]);
    }

    v20 = [v4 objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    v48 = v20;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBKeyValueDataCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v20 BOOLValue]);
    }

    v21 = [v4 objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBKeyValueDataCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v21 BOOLValue]);
    }

    v46 = v21;
    v22 = [v4 objectForKeyedSubscript:@"type"];
    objc_opt_class();
    v47 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = v19;
      v24 = [v47 copy];
      [(_SFPBKeyValueDataCardSection *)v5 setType:v24];

      v19 = v23;
    }

    v25 = [v4 objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBKeyValueDataCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v25 intValue]);
    }

    v45 = v25;
    v26 = [v4 objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [[_SFPBColor alloc] initWithDictionary:v26];
      [(_SFPBKeyValueDataCardSection *)v5 setBackgroundColor:v27];
    }

    v44 = v26;
    v28 = [v4 objectForKeyedSubscript:@"data"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = v19;
      v42 = v15;
      v43 = v6;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v29 = v28;
      v30 = [v29 countByEnumeratingWithState:&v49 objects:v58 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v50;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v50 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v49 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v35 = [[_SFPBKeyValueTuple alloc] initWithDictionary:v34];
              [(_SFPBKeyValueDataCardSection *)v5 addData:v35];
            }
          }

          v31 = [v29 countByEnumeratingWithState:&v49 objects:v58 count:16];
        }

        while (v31);
      }

      v15 = v42;
      v6 = v43;
      v19 = v41;
    }

    v36 = [v4 objectForKeyedSubscript:@"accessoryImage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = [[_SFPBImage alloc] initWithDictionary:v36];
      [(_SFPBKeyValueDataCardSection *)v5 setAccessoryImage:v37];
    }

    v38 = v5;
  }

  v39 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBKeyValueDataCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBKeyValueDataCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBKeyValueDataCardSection *)self dictionaryRepresentation];
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
  v49 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_accessoryImage)
  {
    v4 = [(_SFPBKeyValueDataCardSection *)self accessoryImage];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"accessoryImage"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"accessoryImage"];
    }
  }

  if (self->_backgroundColor)
  {
    v7 = [(_SFPBKeyValueDataCardSection *)self backgroundColor];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"backgroundColor"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"backgroundColor"];
    }
  }

  if (self->_canBeHidden)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBKeyValueDataCardSection canBeHidden](self, "canBeHidden")}];
    [v3 setObject:v10 forKeyedSubscript:@"canBeHidden"];
  }

  if ([(NSArray *)self->_datas count])
  {
    v11 = [MEMORY[0x1E695DF70] array];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v12 = self->_datas;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v44;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v44 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v43 + 1) + 8 * i) dictionaryRepresentation];
          if (v17)
          {
            [v11 addObject:v17];
          }

          else
          {
            v18 = [MEMORY[0x1E695DFB0] null];
            [v11 addObject:v18];
          }
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v14);
    }

    [v3 setObject:v11 forKeyedSubscript:@"data"];
  }

  if (self->_hasBottomPadding)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBKeyValueDataCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [v3 setObject:v19 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBKeyValueDataCardSection hasTopPadding](self, "hasTopPadding")}];
    [v3 setObject:v20 forKeyedSubscript:@"hasTopPadding"];
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    v21 = [MEMORY[0x1E695DF70] array];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v22 = self->_punchoutOptions;
    v23 = [(NSArray *)v22 countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v40;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v40 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [*(*(&v39 + 1) + 8 * j) dictionaryRepresentation];
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

        v24 = [(NSArray *)v22 countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v24);
    }

    [v3 setObject:v21 forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    v29 = [(_SFPBKeyValueDataCardSection *)self punchoutPickerDismissText];
    v30 = [v29 copy];
    [v3 setObject:v30 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    v31 = [(_SFPBKeyValueDataCardSection *)self punchoutPickerTitle];
    v32 = [v31 copy];
    [v3 setObject:v32 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    v33 = [(_SFPBKeyValueDataCardSection *)self separatorStyle];
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

  if (self->_type)
  {
    v35 = [(_SFPBKeyValueDataCardSection *)self type];
    v36 = [v35 copy];
    [v3 setObject:v36 forKeyedSubscript:@"type"];
  }

  v37 = *MEMORY[0x1E69E9840];

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
  v11 = v10 ^ [(NSArray *)self->_datas hash];
  return v9 ^ v11 ^ [(_SFPBImage *)self->_accessoryImage hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_41;
  }

  v5 = [(_SFPBKeyValueDataCardSection *)self punchoutOptions];
  v6 = [v4 punchoutOptions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_40;
  }

  v7 = [(_SFPBKeyValueDataCardSection *)self punchoutOptions];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBKeyValueDataCardSection *)self punchoutOptions];
    v10 = [v4 punchoutOptions];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  v5 = [(_SFPBKeyValueDataCardSection *)self punchoutPickerTitle];
  v6 = [v4 punchoutPickerTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_40;
  }

  v12 = [(_SFPBKeyValueDataCardSection *)self punchoutPickerTitle];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBKeyValueDataCardSection *)self punchoutPickerTitle];
    v15 = [v4 punchoutPickerTitle];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  v5 = [(_SFPBKeyValueDataCardSection *)self punchoutPickerDismissText];
  v6 = [v4 punchoutPickerDismissText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_40;
  }

  v17 = [(_SFPBKeyValueDataCardSection *)self punchoutPickerDismissText];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBKeyValueDataCardSection *)self punchoutPickerDismissText];
    v20 = [v4 punchoutPickerDismissText];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  canBeHidden = self->_canBeHidden;
  if (canBeHidden != [v4 canBeHidden])
  {
    goto LABEL_41;
  }

  hasTopPadding = self->_hasTopPadding;
  if (hasTopPadding != [v4 hasTopPadding])
  {
    goto LABEL_41;
  }

  hasBottomPadding = self->_hasBottomPadding;
  if (hasBottomPadding != [v4 hasBottomPadding])
  {
    goto LABEL_41;
  }

  v5 = [(_SFPBKeyValueDataCardSection *)self type];
  v6 = [v4 type];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_40;
  }

  v25 = [(_SFPBKeyValueDataCardSection *)self type];
  if (v25)
  {
    v26 = v25;
    v27 = [(_SFPBKeyValueDataCardSection *)self type];
    v28 = [v4 type];
    v29 = [v27 isEqual:v28];

    if (!v29)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  separatorStyle = self->_separatorStyle;
  if (separatorStyle != [v4 separatorStyle])
  {
    goto LABEL_41;
  }

  v5 = [(_SFPBKeyValueDataCardSection *)self backgroundColor];
  v6 = [v4 backgroundColor];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_40;
  }

  v31 = [(_SFPBKeyValueDataCardSection *)self backgroundColor];
  if (v31)
  {
    v32 = v31;
    v33 = [(_SFPBKeyValueDataCardSection *)self backgroundColor];
    v34 = [v4 backgroundColor];
    v35 = [v33 isEqual:v34];

    if (!v35)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  v5 = [(_SFPBKeyValueDataCardSection *)self datas];
  v6 = [v4 datas];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_40;
  }

  v36 = [(_SFPBKeyValueDataCardSection *)self datas];
  if (v36)
  {
    v37 = v36;
    v38 = [(_SFPBKeyValueDataCardSection *)self datas];
    v39 = [v4 datas];
    v40 = [v38 isEqual:v39];

    if (!v40)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  v5 = [(_SFPBKeyValueDataCardSection *)self accessoryImage];
  v6 = [v4 accessoryImage];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_40:

    goto LABEL_41;
  }

  v41 = [(_SFPBKeyValueDataCardSection *)self accessoryImage];
  if (!v41)
  {

LABEL_44:
    v46 = 1;
    goto LABEL_42;
  }

  v42 = v41;
  v43 = [(_SFPBKeyValueDataCardSection *)self accessoryImage];
  v44 = [v4 accessoryImage];
  v45 = [v43 isEqual:v44];

  if (v45)
  {
    goto LABEL_44;
  }

LABEL_41:
  v46 = 0;
LABEL_42:

  return v46;
}

- (void)writeTo:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBKeyValueDataCardSection *)self punchoutOptions];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      v9 = 0;
      do
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v27 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v7);
  }

  v11 = [(_SFPBKeyValueDataCardSection *)self punchoutPickerTitle];
  if (v11)
  {
    PBDataWriterWriteStringField();
  }

  v12 = [(_SFPBKeyValueDataCardSection *)self punchoutPickerDismissText];
  if (v12)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBKeyValueDataCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBKeyValueDataCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBKeyValueDataCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  v13 = [(_SFPBKeyValueDataCardSection *)self type];
  if (v13)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBKeyValueDataCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  v14 = [(_SFPBKeyValueDataCardSection *)self backgroundColor];
  if (v14)
  {
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_SFPBKeyValueDataCardSection *)self datas];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      v19 = 0;
      do
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v23 + 1) + 8 * v19);
        PBDataWriterWriteSubmessage();
        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v17);
  }

  v21 = [(_SFPBKeyValueDataCardSection *)self accessoryImage];
  if (v21)
  {
    PBDataWriterWriteSubmessage();
  }

  v22 = *MEMORY[0x1E69E9840];
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