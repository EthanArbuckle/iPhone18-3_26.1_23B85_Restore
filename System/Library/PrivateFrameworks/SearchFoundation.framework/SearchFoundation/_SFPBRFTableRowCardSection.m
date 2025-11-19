@interface _SFPBRFTableRowCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBRFTableRowCardSection)initWithDictionary:(id)a3;
- (_SFPBRFTableRowCardSection)initWithFacade:(id)a3;
- (_SFPBRFTableRowCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCells:(id)a3;
- (void)addCompact_cells:(id)a3;
- (void)setCells:(id)a3;
- (void)setCompact_cells:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBRFTableRowCardSection

- (_SFPBRFTableRowCardSection)initWithFacade:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBRFTableRowCardSection *)self init];
  if (v5)
  {
    v6 = [v4 cells];
    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v8 = [v4 cells];
    v9 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v30;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v30 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[_SFPBRFTableCell alloc] initWithFacade:*(*(&v29 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v10);
    }

    [(_SFPBRFTableRowCardSection *)v5 setCells:v7];
    if ([v4 hasVertical_alignment])
    {
      -[_SFPBRFTableRowCardSection setVertical_alignment:](v5, "setVertical_alignment:", [v4 vertical_alignment]);
    }

    if ([v4 hasScale_to_fit])
    {
      -[_SFPBRFTableRowCardSection setScale_to_fit:](v5, "setScale_to_fit:", [v4 scale_to_fit]);
    }

    v14 = [v4 compact_cells];
    if (v14)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v15 = 0;
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v16 = [v4 compact_cells];
    v17 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v26;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [[_SFPBRFTableCell alloc] initWithFacade:*(*(&v25 + 1) + 8 * j)];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v18);
    }

    [(_SFPBRFTableRowCardSection *)v5 setCompact_cells:v15];
    v22 = v5;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFTableRowCardSection)initWithDictionary:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v37.receiver = self;
  v37.super_class = _SFPBRFTableRowCardSection;
  v5 = [(_SFPBRFTableRowCardSection *)&v37 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"cells"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v7 = v6;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v33 objects:v39 count:16];
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

            v13 = *(*(&v33 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [[_SFPBRFTableCell alloc] initWithDictionary:v13];
              [(_SFPBRFTableRowCardSection *)v5 addCells:v14];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v33 objects:v39 count:16];
        }

        while (v10);
      }

      v6 = v7;
    }

    v15 = [v4 objectForKeyedSubscript:@"verticalAlignment"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFTableRowCardSection setVertical_alignment:](v5, "setVertical_alignment:", [v15 intValue]);
    }

    v16 = [v4 objectForKeyedSubscript:@"scaleToFit"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFTableRowCardSection setScale_to_fit:](v5, "setScale_to_fit:", [v16 BOOLValue]);
    }

    v17 = [v4 objectForKeyedSubscript:@"compactCells"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v15;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v18 = v17;
      v19 = [v18 countByEnumeratingWithState:&v29 objects:v38 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v30;
        do
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v30 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v29 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v24 = [[_SFPBRFTableCell alloc] initWithDictionary:v23];
              [(_SFPBRFTableRowCardSection *)v5 addCompact_cells:v24];
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v29 objects:v38 count:16];
        }

        while (v20);
      }

      v15 = v28;
    }

    v25 = v5;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFTableRowCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBRFTableRowCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBRFTableRowCardSection *)self dictionaryRepresentation];
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
  v35 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_cells count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v5 = self->_cells;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v30;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v30 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v29 + 1) + 8 * i) dictionaryRepresentation];
          if (v10)
          {
            [v4 addObject:v10];
          }

          else
          {
            v11 = [MEMORY[0x1E695DFB0] null];
            [v4 addObject:v11];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"cells"];
  }

  if ([(NSArray *)self->_compact_cells count])
  {
    v12 = [MEMORY[0x1E695DF70] array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v13 = self->_compact_cells;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v26;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v26 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v25 + 1) + 8 * j) dictionaryRepresentation];
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

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v15);
    }

    [v3 setObject:v12 forKeyedSubscript:@"compactCells"];
  }

  if (self->_scale_to_fit)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRFTableRowCardSection scale_to_fit](self, "scale_to_fit")}];
    [v3 setObject:v20 forKeyedSubscript:@"scaleToFit"];
  }

  if (self->_vertical_alignment)
  {
    v21 = [(_SFPBRFTableRowCardSection *)self vertical_alignment];
    if (v21 >= 7)
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v21];
    }

    else
    {
      v22 = off_1E7ACE4C8[v21];
    }

    [v3 setObject:v22 forKeyedSubscript:@"verticalAlignment"];
  }

  v23 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_cells hash];
  if (self->_scale_to_fit)
  {
    v5 = 2654435761;
  }

  else
  {
    v5 = 0;
  }

  v4 = 2654435761 * self->_vertical_alignment;
  return v4 ^ v3 ^ v5 ^ [(NSArray *)self->_compact_cells hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  v5 = [(_SFPBRFTableRowCardSection *)self cells];
  v6 = [v4 cells];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_13;
  }

  v7 = [(_SFPBRFTableRowCardSection *)self cells];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBRFTableRowCardSection *)self cells];
    v10 = [v4 cells];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  vertical_alignment = self->_vertical_alignment;
  if (vertical_alignment != [v4 vertical_alignment])
  {
    goto LABEL_14;
  }

  scale_to_fit = self->_scale_to_fit;
  if (scale_to_fit != [v4 scale_to_fit])
  {
    goto LABEL_14;
  }

  v5 = [(_SFPBRFTableRowCardSection *)self compact_cells];
  v6 = [v4 compact_cells];
  if ((v5 != 0) != (v6 == 0))
  {
    v14 = [(_SFPBRFTableRowCardSection *)self compact_cells];
    if (!v14)
    {

LABEL_17:
      v19 = 1;
      goto LABEL_15;
    }

    v15 = v14;
    v16 = [(_SFPBRFTableRowCardSection *)self compact_cells];
    v17 = [v4 compact_cells];
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
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBRFTableRowCardSection *)self cells];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  if ([(_SFPBRFTableRowCardSection *)self vertical_alignment])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBRFTableRowCardSection *)self scale_to_fit])
  {
    PBDataWriterWriteBOOLField();
  }

  v11 = [(_SFPBRFTableRowCardSection *)self compact_cells];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)addCompact_cells:(id)a3
{
  v4 = a3;
  compact_cells = self->_compact_cells;
  v8 = v4;
  if (!compact_cells)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_compact_cells;
    self->_compact_cells = v6;

    v4 = v8;
    compact_cells = self->_compact_cells;
  }

  [(NSArray *)compact_cells addObject:v4];
}

- (void)setCompact_cells:(id)a3
{
  v4 = [a3 copy];
  compact_cells = self->_compact_cells;
  self->_compact_cells = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addCells:(id)a3
{
  v4 = a3;
  cells = self->_cells;
  v8 = v4;
  if (!cells)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_cells;
    self->_cells = v6;

    v4 = v8;
    cells = self->_cells;
  }

  [(NSArray *)cells addObject:v4];
}

- (void)setCells:(id)a3
{
  v4 = [a3 copy];
  cells = self->_cells;
  self->_cells = v4;

  MEMORY[0x1EEE66BB8]();
}

@end