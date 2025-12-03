@interface _SFPBRFTableHeaderCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFTableHeaderCardSection)initWithDictionary:(id)dictionary;
- (_SFPBRFTableHeaderCardSection)initWithFacade:(id)facade;
- (_SFPBRFTableHeaderCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCells:(id)cells;
- (void)addColumns:(id)columns;
- (void)addCompact_cells:(id)compact_cells;
- (void)setCells:(id)cells;
- (void)setColumns:(id)columns;
- (void)setCompact_cells:(id)compact_cells;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFTableHeaderCardSection

- (_SFPBRFTableHeaderCardSection)initWithFacade:(id)facade
{
  v49 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBRFTableHeaderCardSection *)self init];
  if (v5)
  {
    columns = [facadeCopy columns];
    if (columns)
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
    columns2 = [facadeCopy columns];
    v9 = [columns2 countByEnumeratingWithState:&v42 objects:v48 count:16];
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
            objc_enumerationMutation(columns2);
          }

          v13 = [[_SFPBRFTableColumnDefinition alloc] initWithFacade:*(*(&v42 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [columns2 countByEnumeratingWithState:&v42 objects:v48 count:16];
      }

      while (v10);
    }

    [(_SFPBRFTableHeaderCardSection *)v5 setColumns:v7];
    cells = [facadeCopy cells];
    if (cells)
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
    cells2 = [facadeCopy cells];
    v17 = [cells2 countByEnumeratingWithState:&v38 objects:v47 count:16];
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
            objc_enumerationMutation(cells2);
          }

          v21 = [[_SFPBRFTableCell alloc] initWithFacade:*(*(&v38 + 1) + 8 * j)];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [cells2 countByEnumeratingWithState:&v38 objects:v47 count:16];
      }

      while (v18);
    }

    [(_SFPBRFTableHeaderCardSection *)v5 setCells:v15];
    compact_cells = [facadeCopy compact_cells];
    v33 = v5;
    if (compact_cells)
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
    compact_cells2 = [facadeCopy compact_cells];
    v25 = [compact_cells2 countByEnumeratingWithState:&v34 objects:v46 count:16];
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
            objc_enumerationMutation(compact_cells2);
          }

          v29 = [[_SFPBRFTableCell alloc] initWithFacade:*(*(&v34 + 1) + 8 * k)];
          if (v29)
          {
            [v23 addObject:v29];
          }
        }

        v26 = [compact_cells2 countByEnumeratingWithState:&v34 objects:v46 count:16];
      }

      while (v26);
    }

    v5 = v33;
    [(_SFPBRFTableHeaderCardSection *)v33 setCompact_cells:v23];
    if ([facadeCopy hasShould_repeat_header_in_flow_layout])
    {
      -[_SFPBRFTableHeaderCardSection setShould_repeat_header_in_flow_layout:](v33, "setShould_repeat_header_in_flow_layout:", [facadeCopy should_repeat_header_in_flow_layout]);
    }

    if ([facadeCopy hasVertical_alignment])
    {
      -[_SFPBRFTableHeaderCardSection setVertical_alignment:](v33, "setVertical_alignment:", [facadeCopy vertical_alignment]);
    }

    v30 = v33;
  }

  v31 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFTableHeaderCardSection)initWithDictionary:(id)dictionary
{
  v54 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v50.receiver = self;
  v50.super_class = _SFPBRFTableHeaderCardSection;
  v5 = [(_SFPBRFTableHeaderCardSection *)&v50 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"columns"];
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

    v15 = [dictionaryCopy objectForKeyedSubscript:@"cells"];
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

    v23 = [dictionaryCopy objectForKeyedSubscript:@"compactCells"];
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

    v31 = [dictionaryCopy objectForKeyedSubscript:{@"shouldRepeatHeaderInFlowLayout", v36}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFTableHeaderCardSection setShould_repeat_header_in_flow_layout:](v5, "setShould_repeat_header_in_flow_layout:", [v31 intValue]);
    }

    v32 = [dictionaryCopy objectForKeyedSubscript:@"verticalAlignment"];
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

- (_SFPBRFTableHeaderCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFTableHeaderCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFTableHeaderCardSection *)self dictionaryRepresentation];
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
  v49 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_cells count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation = [*(*(&v42 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation)
          {
            [array addObject:dictionaryRepresentation];
          }

          else
          {
            null = [MEMORY[0x1E695DFB0] null];
            [array addObject:null];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v42 objects:v48 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"cells"];
  }

  if ([(NSArray *)self->_columns count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation2 = [*(*(&v38 + 1) + 8 * j) dictionaryRepresentation];
          if (dictionaryRepresentation2)
          {
            [array2 addObject:dictionaryRepresentation2];
          }

          else
          {
            null2 = [MEMORY[0x1E695DFB0] null];
            [array2 addObject:null2];
          }
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v38 objects:v47 count:16];
      }

      while (v15);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"columns"];
  }

  if ([(NSArray *)self->_compact_cells count])
  {
    array3 = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation3 = [*(*(&v34 + 1) + 8 * k) dictionaryRepresentation];
          if (dictionaryRepresentation3)
          {
            [array3 addObject:dictionaryRepresentation3];
          }

          else
          {
            null3 = [MEMORY[0x1E695DFB0] null];
            [array3 addObject:null3];
          }
        }

        v23 = [(NSArray *)v21 countByEnumeratingWithState:&v34 objects:v46 count:16];
      }

      while (v23);
    }

    [dictionary setObject:array3 forKeyedSubscript:@"compactCells"];
  }

  if (self->_should_repeat_header_in_flow_layout)
  {
    should_repeat_header_in_flow_layout = [(_SFPBRFTableHeaderCardSection *)self should_repeat_header_in_flow_layout];
    if (should_repeat_header_in_flow_layout >= 3)
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", should_repeat_header_in_flow_layout];
    }

    else
    {
      v29 = off_1E7ACE548[should_repeat_header_in_flow_layout];
    }

    [dictionary setObject:v29 forKeyedSubscript:@"shouldRepeatHeaderInFlowLayout"];
  }

  if (self->_vertical_alignment)
  {
    vertical_alignment = [(_SFPBRFTableHeaderCardSection *)self vertical_alignment];
    if (vertical_alignment >= 7)
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", vertical_alignment];
    }

    else
    {
      v31 = off_1E7ACE4C8[vertical_alignment];
    }

    [dictionary setObject:v31 forKeyedSubscript:@"verticalAlignment"];
  }

  v32 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_columns hash];
  v4 = [(NSArray *)self->_cells hash];
  return v4 ^ v3 ^ [(NSArray *)self->_compact_cells hash]^ (2654435761 * self->_should_repeat_header_in_flow_layout) ^ (2654435761 * self->_vertical_alignment);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  columns = [(_SFPBRFTableHeaderCardSection *)self columns];
  columns2 = [equalCopy columns];
  if ((columns != 0) == (columns2 == 0))
  {
    goto LABEL_16;
  }

  columns3 = [(_SFPBRFTableHeaderCardSection *)self columns];
  if (columns3)
  {
    v8 = columns3;
    columns4 = [(_SFPBRFTableHeaderCardSection *)self columns];
    columns5 = [equalCopy columns];
    v11 = [columns4 isEqual:columns5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  columns = [(_SFPBRFTableHeaderCardSection *)self cells];
  columns2 = [equalCopy cells];
  if ((columns != 0) == (columns2 == 0))
  {
    goto LABEL_16;
  }

  cells = [(_SFPBRFTableHeaderCardSection *)self cells];
  if (cells)
  {
    v13 = cells;
    cells2 = [(_SFPBRFTableHeaderCardSection *)self cells];
    cells3 = [equalCopy cells];
    v16 = [cells2 isEqual:cells3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  columns = [(_SFPBRFTableHeaderCardSection *)self compact_cells];
  columns2 = [equalCopy compact_cells];
  if ((columns != 0) == (columns2 == 0))
  {
LABEL_16:

    goto LABEL_17;
  }

  compact_cells = [(_SFPBRFTableHeaderCardSection *)self compact_cells];
  if (compact_cells)
  {
    v18 = compact_cells;
    compact_cells2 = [(_SFPBRFTableHeaderCardSection *)self compact_cells];
    compact_cells3 = [equalCopy compact_cells];
    v21 = [compact_cells2 isEqual:compact_cells3];

    if (!v21)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  should_repeat_header_in_flow_layout = self->_should_repeat_header_in_flow_layout;
  if (should_repeat_header_in_flow_layout == [equalCopy should_repeat_header_in_flow_layout])
  {
    vertical_alignment = self->_vertical_alignment;
    v22 = vertical_alignment == [equalCopy vertical_alignment];
    goto LABEL_18;
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)to
{
  v39 = *MEMORY[0x1E69E9840];
  toCopy = to;
  columns = [(_SFPBRFTableHeaderCardSection *)self columns];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = [columns countByEnumeratingWithState:&v32 objects:v38 count:16];
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
          objc_enumerationMutation(columns);
        }

        v10 = *(*(&v32 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [columns countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v7);
  }

  cells = [(_SFPBRFTableHeaderCardSection *)self cells];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = [cells countByEnumeratingWithState:&v28 objects:v37 count:16];
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
          objc_enumerationMutation(cells);
        }

        v16 = *(*(&v28 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [cells countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v13);
  }

  compact_cells = [(_SFPBRFTableHeaderCardSection *)self compact_cells];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = [compact_cells countByEnumeratingWithState:&v24 objects:v36 count:16];
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
          objc_enumerationMutation(compact_cells);
        }

        v22 = *(*(&v24 + 1) + 8 * v21);
        PBDataWriterWriteSubmessage();
        ++v21;
      }

      while (v19 != v21);
      v19 = [compact_cells countByEnumeratingWithState:&v24 objects:v36 count:16];
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

- (void)addCompact_cells:(id)compact_cells
{
  compact_cellsCopy = compact_cells;
  compact_cells = self->_compact_cells;
  v8 = compact_cellsCopy;
  if (!compact_cells)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_compact_cells;
    self->_compact_cells = array;

    compact_cellsCopy = v8;
    compact_cells = self->_compact_cells;
  }

  [(NSArray *)compact_cells addObject:compact_cellsCopy];
}

- (void)setCompact_cells:(id)compact_cells
{
  v4 = [compact_cells copy];
  compact_cells = self->_compact_cells;
  self->_compact_cells = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addCells:(id)cells
{
  cellsCopy = cells;
  cells = self->_cells;
  v8 = cellsCopy;
  if (!cells)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_cells;
    self->_cells = array;

    cellsCopy = v8;
    cells = self->_cells;
  }

  [(NSArray *)cells addObject:cellsCopy];
}

- (void)setCells:(id)cells
{
  v4 = [cells copy];
  cells = self->_cells;
  self->_cells = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addColumns:(id)columns
{
  columnsCopy = columns;
  columns = self->_columns;
  v8 = columnsCopy;
  if (!columns)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_columns;
    self->_columns = array;

    columnsCopy = v8;
    columns = self->_columns;
  }

  [(NSArray *)columns addObject:columnsCopy];
}

- (void)setColumns:(id)columns
{
  v4 = [columns copy];
  columns = self->_columns;
  self->_columns = v4;

  MEMORY[0x1EEE66BB8]();
}

@end