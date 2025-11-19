@interface _SFPBRFTableHeaderCardSection
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBRFTableHeaderCardSection)initWithDictionary:(id)a3;
- (_SFPBRFTableHeaderCardSection)initWithFacade:(id)a3;
- (_SFPBRFTableHeaderCardSection)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCells:(id)a3;
- (void)addColumns:(id)a3;
- (void)addCompact_cells:(id)a3;
- (void)setCells:(id)a3;
- (void)setColumns:(id)a3;
- (void)setCompact_cells:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBRFTableHeaderCardSection

- (_SFPBRFTableHeaderCardSection)initWithFacade:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBRFTableHeaderCardSection *)self init];
  if (v5)
  {
    v6 = [v4 columns];
    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v8 = [v4 columns];
    v9 = [v8 countByEnumeratingWithState:&v42 objects:v48 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v43;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v43 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[_SFPBRFTableColumnDefinition alloc] initWithFacade:*(*(&v42 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v42 objects:v48 count:16];
      }

      while (v10);
    }

    [(_SFPBRFTableHeaderCardSection *)v5 setColumns:v7];
    v14 = [v4 cells];
    if (v14)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v15 = 0;
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v16 = [v4 cells];
    v17 = [v16 countByEnumeratingWithState:&v38 objects:v47 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v39;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v39 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [[_SFPBRFTableCell alloc] initWithFacade:*(*(&v38 + 1) + 8 * j)];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v38 objects:v47 count:16];
      }

      while (v18);
    }

    [(_SFPBRFTableHeaderCardSection *)v5 setCells:v15];
    v22 = [v4 compact_cells];
    v33 = v5;
    if (v22)
    {
      v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v23 = 0;
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v24 = [v4 compact_cells];
    v25 = [v24 countByEnumeratingWithState:&v34 objects:v46 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v35;
      do
      {
        for (k = 0; k != v26; ++k)
        {
          if (*v35 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [[_SFPBRFTableCell alloc] initWithFacade:*(*(&v34 + 1) + 8 * k)];
          if (v29)
          {
            [v23 addObject:v29];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v34 objects:v46 count:16];
      }

      while (v26);
    }

    v5 = v33;
    [(_SFPBRFTableHeaderCardSection *)v33 setCompact_cells:v23];
    if ([v4 hasShould_repeat_header_in_flow_layout])
    {
      -[_SFPBRFTableHeaderCardSection setShould_repeat_header_in_flow_layout:](v33, "setShould_repeat_header_in_flow_layout:", [v4 should_repeat_header_in_flow_layout]);
    }

    if ([v4 hasVertical_alignment])
    {
      -[_SFPBRFTableHeaderCardSection setVertical_alignment:](v33, "setVertical_alignment:", [v4 vertical_alignment]);
    }

    v30 = v33;
  }

  v31 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFTableHeaderCardSection)initWithDictionary:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v50.receiver = self;
  v50.super_class = _SFPBRFTableHeaderCardSection;
  v5 = [(_SFPBRFTableHeaderCardSection *)&v50 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"columns"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v7 = v6;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v46 objects:v53 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v47;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v47 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v46 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [[_SFPBRFTableColumnDefinition alloc] initWithDictionary:v13];
              [(_SFPBRFTableHeaderCardSection *)v5 addColumns:v14];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v46 objects:v53 count:16];
        }

        while (v10);
      }

      v6 = v7;
    }

    v15 = [v4 objectForKeyedSubscript:@"cells"];
    objc_opt_class();
    v37 = v15;
    if (objc_opt_isKindOfClass())
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v16 = v15;
      v17 = [v16 countByEnumeratingWithState:&v42 objects:v52 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v43;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v43 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v42 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v22 = [[_SFPBRFTableCell alloc] initWithDictionary:v21];
              [(_SFPBRFTableHeaderCardSection *)v5 addCells:v22];
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v42 objects:v52 count:16];
        }

        while (v18);
      }
    }

    v23 = [v4 objectForKeyedSubscript:@"compactCells"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = v6;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v24 = v23;
      v25 = [v24 countByEnumeratingWithState:&v38 objects:v51 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v39;
        do
        {
          for (k = 0; k != v26; ++k)
          {
            if (*v39 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v38 + 1) + 8 * k);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v30 = [[_SFPBRFTableCell alloc] initWithDictionary:v29];
              [(_SFPBRFTableHeaderCardSection *)v5 addCompact_cells:v30];
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v38 objects:v51 count:16];
        }

        while (v26);
      }

      v6 = v36;
      v15 = v37;
    }

    v31 = [v4 objectForKeyedSubscript:{@"shouldRepeatHeaderInFlowLayout", v36}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFTableHeaderCardSection setShould_repeat_header_in_flow_layout:](v5, "setShould_repeat_header_in_flow_layout:", [v31 intValue]);
    }

    v32 = [v4 objectForKeyedSubscript:@"verticalAlignment"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFTableHeaderCardSection setVertical_alignment:](v5, "setVertical_alignment:", [v32 intValue]);
    }

    v33 = v5;
  }

  v34 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFTableHeaderCardSection)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBRFTableHeaderCardSection *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBRFTableHeaderCardSection *)self dictionaryRepresentation];
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
  if ([(NSArray *)self->_cells count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v5 = self->_cells;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v42 objects:v48 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v43;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v43 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v42 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v42 objects:v48 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"cells"];
  }

  if ([(NSArray *)self->_columns count])
  {
    v12 = [MEMORY[0x1E695DF70] array];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v13 = self->_columns;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v38 objects:v47 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v39;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v39 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v38 + 1) + 8 * j) dictionaryRepresentation];
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

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v38 objects:v47 count:16];
      }

      while (v15);
    }

    [v3 setObject:v12 forKeyedSubscript:@"columns"];
  }

  if ([(NSArray *)self->_compact_cells count])
  {
    v20 = [MEMORY[0x1E695DF70] array];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v21 = self->_compact_cells;
    v22 = [(NSArray *)v21 countByEnumeratingWithState:&v34 objects:v46 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v35;
      do
      {
        for (k = 0; k != v23; ++k)
        {
          if (*v35 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [*(*(&v34 + 1) + 8 * k) dictionaryRepresentation];
          if (v26)
          {
            [v20 addObject:v26];
          }

          else
          {
            v27 = [MEMORY[0x1E695DFB0] null];
            [v20 addObject:v27];
          }
        }

        v23 = [(NSArray *)v21 countByEnumeratingWithState:&v34 objects:v46 count:16];
      }

      while (v23);
    }

    [v3 setObject:v20 forKeyedSubscript:@"compactCells"];
  }

  if (self->_should_repeat_header_in_flow_layout)
  {
    v28 = [(_SFPBRFTableHeaderCardSection *)self should_repeat_header_in_flow_layout];
    if (v28 >= 3)
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v28];
    }

    else
    {
      v29 = off_1E7ACE548[v28];
    }

    [v3 setObject:v29 forKeyedSubscript:@"shouldRepeatHeaderInFlowLayout"];
  }

  if (self->_vertical_alignment)
  {
    v30 = [(_SFPBRFTableHeaderCardSection *)self vertical_alignment];
    if (v30 >= 7)
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v30];
    }

    else
    {
      v31 = off_1E7ACE4C8[v30];
    }

    [v3 setObject:v31 forKeyedSubscript:@"verticalAlignment"];
  }

  v32 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_columns hash];
  v4 = [(NSArray *)self->_cells hash];
  return v4 ^ v3 ^ [(NSArray *)self->_compact_cells hash]^ (2654435761 * self->_should_repeat_header_in_flow_layout) ^ (2654435761 * self->_vertical_alignment);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_SFPBRFTableHeaderCardSection *)self columns];
  v6 = [v4 columns];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_SFPBRFTableHeaderCardSection *)self columns];
  if (v7)
  {
    v8 = v7;
    v9 = [(_SFPBRFTableHeaderCardSection *)self columns];
    v10 = [v4 columns];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFTableHeaderCardSection *)self cells];
  v6 = [v4 cells];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_SFPBRFTableHeaderCardSection *)self cells];
  if (v12)
  {
    v13 = v12;
    v14 = [(_SFPBRFTableHeaderCardSection *)self cells];
    v15 = [v4 cells];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_SFPBRFTableHeaderCardSection *)self compact_cells];
  v6 = [v4 compact_cells];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_16:

    goto LABEL_17;
  }

  v17 = [(_SFPBRFTableHeaderCardSection *)self compact_cells];
  if (v17)
  {
    v18 = v17;
    v19 = [(_SFPBRFTableHeaderCardSection *)self compact_cells];
    v20 = [v4 compact_cells];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  should_repeat_header_in_flow_layout = self->_should_repeat_header_in_flow_layout;
  if (should_repeat_header_in_flow_layout == [v4 should_repeat_header_in_flow_layout])
  {
    vertical_alignment = self->_vertical_alignment;
    v22 = vertical_alignment == [v4 vertical_alignment];
    goto LABEL_18;
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_SFPBRFTableHeaderCardSection *)self columns];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    do
    {
      v9 = 0;
      do
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v32 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v7);
  }

  v11 = [(_SFPBRFTableHeaderCardSection *)self cells];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    do
    {
      v15 = 0;
      do
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v28 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v13);
  }

  v17 = [(_SFPBRFTableHeaderCardSection *)self compact_cells];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = [v17 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v25;
    do
    {
      v21 = 0;
      do
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v24 + 1) + 8 * v21);
        PBDataWriterWriteSubmessage();
        ++v21;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v19);
  }

  if ([(_SFPBRFTableHeaderCardSection *)self should_repeat_header_in_flow_layout])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBRFTableHeaderCardSection *)self vertical_alignment])
  {
    PBDataWriterWriteInt32Field();
  }

  v23 = *MEMORY[0x1E69E9840];
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

- (void)addColumns:(id)a3
{
  v4 = a3;
  columns = self->_columns;
  v8 = v4;
  if (!columns)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_columns;
    self->_columns = v6;

    v4 = v8;
    columns = self->_columns;
  }

  [(NSArray *)columns addObject:v4];
}

- (void)setColumns:(id)a3
{
  v4 = [a3 copy];
  columns = self->_columns;
  self->_columns = v4;

  MEMORY[0x1EEE66BB8]();
}

@end