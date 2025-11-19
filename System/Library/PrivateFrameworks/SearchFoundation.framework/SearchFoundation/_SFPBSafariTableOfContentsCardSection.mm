@interface _SFPBSafariTableOfContentsCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBSafariTableOfContentsCardSection)initWithDictionary:(id)a3;
- (_SFPBSafariTableOfContentsCardSection)initWithFacade:(id)a3;
- (_SFPBSafariTableOfContentsCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addTableOfContentsItems:(id)a3;
- (void)setAlgorithmVersion:(id)a3;
- (void)setTableOfContentsItems:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBSafariTableOfContentsCardSection

- (_SFPBSafariTableOfContentsCardSection)initWithFacade:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBSafariTableOfContentsCardSection *)self init];
  if (v5)
  {
    if ([v4 hasTableOfContentsType])
    {
      -[_SFPBSafariTableOfContentsCardSection setTableOfContentsType:](v5, "setTableOfContentsType:", [v4 tableOfContentsType]);
    }

    if ([v4 hasTableOfContentsSource])
    {
      -[_SFPBSafariTableOfContentsCardSection setTableOfContentsSource:](v5, "setTableOfContentsSource:", [v4 tableOfContentsSource]);
    }

    v6 = [v4 tableOfContentsItems];
    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = [v4 tableOfContentsItems];
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[_SFPBSafariTableOfContentsItem alloc] initWithFacade:*(*(&v19 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    [(_SFPBSafariTableOfContentsCardSection *)v5 setTableOfContentsItems:v7];
    v14 = [v4 algorithmVersion];

    if (v14)
    {
      v15 = [v4 algorithmVersion];
      [(_SFPBSafariTableOfContentsCardSection *)v5 setAlgorithmVersion:v15];
    }

    v16 = v5;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBSafariTableOfContentsCardSection)initWithDictionary:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v27.receiver = self;
  v27.super_class = _SFPBSafariTableOfContentsCardSection;
  v5 = [(_SFPBSafariTableOfContentsCardSection *)&v27 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"tableOfContentsType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSafariTableOfContentsCardSection setTableOfContentsType:](v5, "setTableOfContentsType:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"tableOfContentsSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSafariTableOfContentsCardSection setTableOfContentsSource:](v5, "setTableOfContentsSource:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"tableOfContentsItems"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v7;
      v22 = v6;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v24;
        do
        {
          v13 = 0;
          do
          {
            if (*v24 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v23 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[_SFPBSafariTableOfContentsItem alloc] initWithDictionary:v14];
              [(_SFPBSafariTableOfContentsCardSection *)v5 addTableOfContentsItems:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v11);
      }

      v7 = v21;
      v6 = v22;
    }

    v16 = [v4 objectForKeyedSubscript:{@"algorithmVersion", v21, v22, v23}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(_SFPBSafariTableOfContentsCardSection *)v5 setAlgorithmVersion:v17];
    }

    v18 = v5;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBSafariTableOfContentsCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBSafariTableOfContentsCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBSafariTableOfContentsCardSection *)self dictionaryRepresentation];
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
  v25 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_algorithmVersion)
  {
    v4 = [(_SFPBSafariTableOfContentsCardSection *)self algorithmVersion];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"algorithmVersion"];
  }

  if ([(NSArray *)self->_tableOfContentsItems count])
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = self->_tableOfContentsItems;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
          if (v12)
          {
            [v6 addObject:v12];
          }

          else
          {
            v13 = [MEMORY[0x1E695DFB0] null];
            [v6 addObject:v13];
          }
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKeyedSubscript:@"tableOfContentsItems"];
  }

  if (self->_tableOfContentsSource)
  {
    v14 = [(_SFPBSafariTableOfContentsCardSection *)self tableOfContentsSource];
    if (v14 >= 3)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v14];
    }

    else
    {
      v15 = off_1E7ACE548[v14];
    }

    [v3 setObject:v15 forKeyedSubscript:@"tableOfContentsSource"];
  }

  if (self->_tableOfContentsType)
  {
    v16 = [(_SFPBSafariTableOfContentsCardSection *)self tableOfContentsType];
    if (v16 >= 3)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v16];
    }

    else
    {
      v17 = off_1E7ACE548[v16];
    }

    [v3 setObject:v17 forKeyedSubscript:@"tableOfContentsType"];
  }

  v18 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = (2654435761 * self->_tableOfContentsSource) ^ (2654435761 * self->_tableOfContentsType);
  v4 = [(NSArray *)self->_tableOfContentsItems hash];
  return v3 ^ v4 ^ [(NSString *)self->_algorithmVersion hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  tableOfContentsType = self->_tableOfContentsType;
  if (tableOfContentsType != [v4 tableOfContentsType])
  {
    goto LABEL_14;
  }

  tableOfContentsSource = self->_tableOfContentsSource;
  if (tableOfContentsSource != [v4 tableOfContentsSource])
  {
    goto LABEL_14;
  }

  v7 = [(_SFPBSafariTableOfContentsCardSection *)self tableOfContentsItems];
  v8 = [v4 tableOfContentsItems];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_13;
  }

  v9 = [(_SFPBSafariTableOfContentsCardSection *)self tableOfContentsItems];
  if (v9)
  {
    v10 = v9;
    v11 = [(_SFPBSafariTableOfContentsCardSection *)self tableOfContentsItems];
    v12 = [v4 tableOfContentsItems];
    v13 = [v11 isEqual:v12];

    if (!v13)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  v7 = [(_SFPBSafariTableOfContentsCardSection *)self algorithmVersion];
  v8 = [v4 algorithmVersion];
  if ((v7 != 0) != (v8 == 0))
  {
    v14 = [(_SFPBSafariTableOfContentsCardSection *)self algorithmVersion];
    if (!v14)
    {

LABEL_17:
      v19 = 1;
      goto LABEL_15;
    }

    v15 = v14;
    v16 = [(_SFPBSafariTableOfContentsCardSection *)self algorithmVersion];
    v17 = [v4 algorithmVersion];
    v18 = [v16 isEqual:v17];

    if (v18)
    {
      goto LABEL_17;
    }
  }

  else
  {
LABEL_13:
  }

LABEL_14:
  v19 = 0;
LABEL_15:

  return v19;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(_SFPBSafariTableOfContentsCardSection *)self tableOfContentsType])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBSafariTableOfContentsCardSection *)self tableOfContentsSource])
  {
    PBDataWriterWriteInt32Field();
  }

  v5 = [(_SFPBSafariTableOfContentsCardSection *)self tableOfContentsItems];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [(_SFPBSafariTableOfContentsCardSection *)self algorithmVersion];
  if (v11)
  {
    PBDataWriterWriteStringField();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)setAlgorithmVersion:(id)a3
{
  v4 = [a3 copy];
  algorithmVersion = self->_algorithmVersion;
  self->_algorithmVersion = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addTableOfContentsItems:(id)a3
{
  v4 = a3;
  tableOfContentsItems = self->_tableOfContentsItems;
  v8 = v4;
  if (!tableOfContentsItems)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_tableOfContentsItems;
    self->_tableOfContentsItems = v6;

    v4 = v8;
    tableOfContentsItems = self->_tableOfContentsItems;
  }

  [(NSArray *)tableOfContentsItems addObject:v4];
}

- (void)setTableOfContentsItems:(id)a3
{
  v4 = [a3 copy];
  tableOfContentsItems = self->_tableOfContentsItems;
  self->_tableOfContentsItems = v4;

  MEMORY[0x1EEE66BB8]();
}

@end