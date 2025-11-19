@interface _SFPBStockChartCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBStockChartCardSection)initWithDictionary:(id)a3;
- (_SFPBStockChartCardSection)initWithFacade:(id)a3;
- (_SFPBStockChartCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPunchoutOptions:(id)a3;
- (void)setChartData:(id)a3;
- (void)setPunchoutOptions:(id)a3;
- (void)setPunchoutPickerDismissText:(id)a3;
- (void)setPunchoutPickerTitle:(id)a3;
- (void)setType:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBStockChartCardSection

- (_SFPBStockChartCardSection)initWithFacade:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBStockChartCardSection *)self init];
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

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v8 = [v4 punchoutOptions];
    v9 = [v8 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v34;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v34 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[_SFPBPunchout alloc] initWithFacade:*(*(&v33 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v10);
    }

    [(_SFPBStockChartCardSection *)v5 setPunchoutOptions:v7];
    v14 = [v4 punchoutPickerTitle];

    if (v14)
    {
      v15 = [v4 punchoutPickerTitle];
      [(_SFPBStockChartCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v16 = [v4 punchoutPickerDismissText];

    if (v16)
    {
      v17 = [v4 punchoutPickerDismissText];
      [(_SFPBStockChartCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    if ([v4 hasCanBeHidden])
    {
      -[_SFPBStockChartCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v4 canBeHidden]);
    }

    if ([v4 hasHasTopPadding])
    {
      -[_SFPBStockChartCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v4 hasTopPadding]);
    }

    if ([v4 hasHasBottomPadding])
    {
      -[_SFPBStockChartCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v4 hasBottomPadding]);
    }

    v18 = [v4 type];

    if (v18)
    {
      v19 = [v4 type];
      [(_SFPBStockChartCardSection *)v5 setType:v19];
    }

    if ([v4 hasSeparatorStyle])
    {
      -[_SFPBStockChartCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v4 separatorStyle]);
    }

    v20 = [v4 backgroundColor];

    if (v20)
    {
      v21 = [_SFPBColor alloc];
      v22 = [v4 backgroundColor];
      v23 = [(_SFPBColor *)v21 initWithFacade:v22];
      [(_SFPBStockChartCardSection *)v5 setBackgroundColor:v23];
    }

    v24 = [v4 thirdPartyContentURL];

    if (v24)
    {
      v25 = [_SFPBURL alloc];
      v26 = [v4 thirdPartyContentURL];
      v27 = [(_SFPBURL *)v25 initWithNSURL:v26];
      [(_SFPBStockChartCardSection *)v5 setThirdPartyContentURL:v27];
    }

    v28 = [v4 chartData];

    if (v28)
    {
      v29 = [v4 chartData];
      [(_SFPBStockChartCardSection *)v5 setChartData:v29];
    }

    v30 = v5;
  }

  v31 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBStockChartCardSection)initWithDictionary:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v41.receiver = self;
  v41.super_class = _SFPBStockChartCardSection;
  v5 = [(_SFPBStockChartCardSection *)&v41 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"punchoutOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v38;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v38 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v37 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [[_SFPBPunchout alloc] initWithDictionary:v12];
              [(_SFPBStockChartCardSection *)v5 addPunchoutOptions:v13];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v37 objects:v42 count:16];
        }

        while (v9);
      }
    }

    v14 = [v4 objectForKeyedSubscript:@"punchoutPickerTitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(_SFPBStockChartCardSection *)v5 setPunchoutPickerTitle:v15];
    }

    v35 = v14;
    v16 = [v4 objectForKeyedSubscript:@"punchoutPickerDismissText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBStockChartCardSection *)v5 setPunchoutPickerDismissText:v17];
    }

    v34 = v16;
    v18 = [v4 objectForKeyedSubscript:@"canBeHidden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBStockChartCardSection setCanBeHidden:](v5, "setCanBeHidden:", [v18 BOOLValue]);
    }

    v19 = [v4 objectForKeyedSubscript:@"hasTopPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBStockChartCardSection setHasTopPadding:](v5, "setHasTopPadding:", [v19 BOOLValue]);
    }

    v20 = [v4 objectForKeyedSubscript:@"hasBottomPadding"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBStockChartCardSection setHasBottomPadding:](v5, "setHasBottomPadding:", [v20 BOOLValue]);
    }

    v33 = v18;
    v36 = v6;
    v21 = [v4 objectForKeyedSubscript:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [v21 copy];
      [(_SFPBStockChartCardSection *)v5 setType:v22];
    }

    v23 = [v4 objectForKeyedSubscript:@"separatorStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBStockChartCardSection setSeparatorStyle:](v5, "setSeparatorStyle:", [v23 intValue]);
    }

    v24 = [v4 objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[_SFPBColor alloc] initWithDictionary:v24];
      [(_SFPBStockChartCardSection *)v5 setBackgroundColor:v25];
    }

    v26 = [v4 objectForKeyedSubscript:@"thirdPartyContentURL"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [[_SFPBURL alloc] initWithDictionary:v26];
      [(_SFPBStockChartCardSection *)v5 setThirdPartyContentURL:v27];
    }

    v28 = [v4 objectForKeyedSubscript:@"chartData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v28 options:0];
      [(_SFPBStockChartCardSection *)v5 setChartData:v29];
    }

    v30 = v5;
  }

  v31 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBStockChartCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBStockChartCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBStockChartCardSection *)self dictionaryRepresentation];
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
  v39 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_backgroundColor)
  {
    v4 = [(_SFPBStockChartCardSection *)self backgroundColor];
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
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBStockChartCardSection canBeHidden](self, "canBeHidden")}];
    [v3 setObject:v7 forKeyedSubscript:@"canBeHidden"];
  }

  if (self->_chartData)
  {
    v8 = [(_SFPBStockChartCardSection *)self chartData];
    v9 = [v8 base64EncodedStringWithOptions:0];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"chartData"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"chartData"];
    }
  }

  if (self->_hasBottomPadding)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBStockChartCardSection hasBottomPadding](self, "hasBottomPadding")}];
    [v3 setObject:v11 forKeyedSubscript:@"hasBottomPadding"];
  }

  if (self->_hasTopPadding)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBStockChartCardSection hasTopPadding](self, "hasTopPadding")}];
    [v3 setObject:v12 forKeyedSubscript:@"hasTopPadding"];
  }

  if ([(NSArray *)self->_punchoutOptions count])
  {
    v13 = [MEMORY[0x1E695DF70] array];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v14 = self->_punchoutOptions;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v35;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v35 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v34 + 1) + 8 * i) dictionaryRepresentation];
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

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v16);
    }

    [v3 setObject:v13 forKeyedSubscript:@"punchoutOptions"];
  }

  if (self->_punchoutPickerDismissText)
  {
    v21 = [(_SFPBStockChartCardSection *)self punchoutPickerDismissText];
    v22 = [v21 copy];
    [v3 setObject:v22 forKeyedSubscript:@"punchoutPickerDismissText"];
  }

  if (self->_punchoutPickerTitle)
  {
    v23 = [(_SFPBStockChartCardSection *)self punchoutPickerTitle];
    v24 = [v23 copy];
    [v3 setObject:v24 forKeyedSubscript:@"punchoutPickerTitle"];
  }

  if (self->_separatorStyle)
  {
    v25 = [(_SFPBStockChartCardSection *)self separatorStyle];
    if (v25 >= 6)
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v25];
    }

    else
    {
      v26 = off_1E7ACE580[v25];
    }

    [v3 setObject:v26 forKeyedSubscript:@"separatorStyle"];
  }

  if (self->_thirdPartyContentURL)
  {
    v27 = [(_SFPBStockChartCardSection *)self thirdPartyContentURL];
    v28 = [v27 dictionaryRepresentation];
    if (v28)
    {
      [v3 setObject:v28 forKeyedSubscript:@"thirdPartyContentURL"];
    }

    else
    {
      v29 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v29 forKeyedSubscript:@"thirdPartyContentURL"];
    }
  }

  if (self->_type)
  {
    v30 = [(_SFPBStockChartCardSection *)self type];
    v31 = [v30 copy];
    [v3 setObject:v31 forKeyedSubscript:@"type"];
  }

  v32 = *MEMORY[0x1E69E9840];

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
  v11 = v10 ^ [(_SFPBURL *)self->_thirdPartyContentURL hash];
  return v9 ^ v11 ^ [(NSData *)self->_chartData hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_41;
  }

  v5 = [(_SFPBStockChartCardSection *)self punchoutOptions];
  v6 = [v4 punchoutOptions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_40;
  }

  v7 = [(_SFPBStockChartCardSection *)self punchoutOptions];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBStockChartCardSection *)self punchoutOptions];
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

  v5 = [(_SFPBStockChartCardSection *)self punchoutPickerTitle];
  v6 = [v4 punchoutPickerTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_40;
  }

  v12 = [(_SFPBStockChartCardSection *)self punchoutPickerTitle];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBStockChartCardSection *)self punchoutPickerTitle];
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

  v5 = [(_SFPBStockChartCardSection *)self punchoutPickerDismissText];
  v6 = [v4 punchoutPickerDismissText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_40;
  }

  v17 = [(_SFPBStockChartCardSection *)self punchoutPickerDismissText];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBStockChartCardSection *)self punchoutPickerDismissText];
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

  v5 = [(_SFPBStockChartCardSection *)self type];
  v6 = [v4 type];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_40;
  }

  v25 = [(_SFPBStockChartCardSection *)self type];
  if (v25)
  {
    v26 = v25;
    v27 = [(_SFPBStockChartCardSection *)self type];
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

  v5 = [(_SFPBStockChartCardSection *)self backgroundColor];
  v6 = [v4 backgroundColor];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_40;
  }

  v31 = [(_SFPBStockChartCardSection *)self backgroundColor];
  if (v31)
  {
    v32 = v31;
    v33 = [(_SFPBStockChartCardSection *)self backgroundColor];
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

  v5 = [(_SFPBStockChartCardSection *)self thirdPartyContentURL];
  v6 = [v4 thirdPartyContentURL];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_40;
  }

  v36 = [(_SFPBStockChartCardSection *)self thirdPartyContentURL];
  if (v36)
  {
    v37 = v36;
    v38 = [(_SFPBStockChartCardSection *)self thirdPartyContentURL];
    v39 = [v4 thirdPartyContentURL];
    v40 = [v38 isEqual:v39];

    if (!v40)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  v5 = [(_SFPBStockChartCardSection *)self chartData];
  v6 = [v4 chartData];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_40:

    goto LABEL_41;
  }

  v41 = [(_SFPBStockChartCardSection *)self chartData];
  if (!v41)
  {

LABEL_44:
    v46 = 1;
    goto LABEL_42;
  }

  v42 = v41;
  v43 = [(_SFPBStockChartCardSection *)self chartData];
  v44 = [v4 chartData];
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
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBStockChartCardSection *)self punchoutOptions];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v11 = [(_SFPBStockChartCardSection *)self punchoutPickerTitle];
  if (v11)
  {
    PBDataWriterWriteStringField();
  }

  v12 = [(_SFPBStockChartCardSection *)self punchoutPickerDismissText];
  if (v12)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBStockChartCardSection *)self canBeHidden])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBStockChartCardSection *)self hasTopPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBStockChartCardSection *)self hasBottomPadding])
  {
    PBDataWriterWriteBOOLField();
  }

  v13 = [(_SFPBStockChartCardSection *)self type];
  if (v13)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBStockChartCardSection *)self separatorStyle])
  {
    PBDataWriterWriteInt32Field();
  }

  v14 = [(_SFPBStockChartCardSection *)self backgroundColor];
  if (v14)
  {
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_SFPBStockChartCardSection *)self thirdPartyContentURL];
  if (v15)
  {
    PBDataWriterWriteSubmessage();
  }

  v16 = [(_SFPBStockChartCardSection *)self chartData];
  if (v16)
  {
    PBDataWriterWriteDataField();
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)setChartData:(id)a3
{
  v4 = [a3 copy];
  chartData = self->_chartData;
  self->_chartData = v4;

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