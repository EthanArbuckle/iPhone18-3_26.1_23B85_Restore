@interface _SFPBRFTableRowCardSection
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFTableRowCardSection)initWithDictionary:(id)dictionary;
- (_SFPBRFTableRowCardSection)initWithFacade:(id)facade;
- (_SFPBRFTableRowCardSection)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCells:(id)cells;
- (void)addCompact_cells:(id)compact_cells;
- (void)setCells:(id)cells;
- (void)setCompact_cells:(id)compact_cells;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFTableRowCardSection

- (_SFPBRFTableRowCardSection)initWithFacade:(id)facade
{
  v35 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBRFTableRowCardSection *)self init];
  if (v5)
  {
    cells = [facadeCopy cells];
    if (cells)
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
    cells2 = [facadeCopy cells];
    v9 = [cells2 countByEnumeratingWithState:&v29 objects:v34 count:16];
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
            objc_enumerationMutation(cells2);
          }

          v13 = [[_SFPBRFTableCell alloc] initWithFacade:*(*(&v29 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [cells2 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v10);
    }

    [(_SFPBRFTableRowCardSection *)v5 setCells:v7];
    if ([facadeCopy hasVertical_alignment])
    {
      -[_SFPBRFTableRowCardSection setVertical_alignment:](v5, "setVertical_alignment:", [facadeCopy vertical_alignment]);
    }

    if ([facadeCopy hasScale_to_fit])
    {
      -[_SFPBRFTableRowCardSection setScale_to_fit:](v5, "setScale_to_fit:", [facadeCopy scale_to_fit]);
    }

    compact_cells = [facadeCopy compact_cells];
    if (compact_cells)
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
    compact_cells2 = [facadeCopy compact_cells];
    v17 = [compact_cells2 countByEnumeratingWithState:&v25 objects:v33 count:16];
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
            objc_enumerationMutation(compact_cells2);
          }

          v21 = [[_SFPBRFTableCell alloc] initWithFacade:*(*(&v25 + 1) + 8 * j)];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [compact_cells2 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v18);
    }

    [(_SFPBRFTableRowCardSection *)v5 setCompact_cells:v15];
    v22 = v5;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_SFPBRFTableRowCardSection)initWithDictionary:(id)dictionary
{
  v40 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v37.receiver = self;
  v37.super_class = _SFPBRFTableRowCardSection;
  v5 = [(_SFPBRFTableRowCardSection *)&v37 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"cells"];
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

    v15 = [dictionaryCopy objectForKeyedSubscript:@"verticalAlignment"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFTableRowCardSection setVertical_alignment:](v5, "setVertical_alignment:", [v15 intValue]);
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"scaleToFit"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBRFTableRowCardSection setScale_to_fit:](v5, "setScale_to_fit:", [v16 BOOLValue]);
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"compactCells"];
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

- (_SFPBRFTableRowCardSection)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFTableRowCardSection *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFTableRowCardSection *)self dictionaryRepresentation];
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
  v35 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_cells count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation = [*(*(&v29 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"cells"];
  }

  if ([(NSArray *)self->_compact_cells count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation2 = [*(*(&v25 + 1) + 8 * j) dictionaryRepresentation];
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

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v15);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"compactCells"];
  }

  if (self->_scale_to_fit)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBRFTableRowCardSection scale_to_fit](self, "scale_to_fit")}];
    [dictionary setObject:v20 forKeyedSubscript:@"scaleToFit"];
  }

  if (self->_vertical_alignment)
  {
    vertical_alignment = [(_SFPBRFTableRowCardSection *)self vertical_alignment];
    if (vertical_alignment >= 7)
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", vertical_alignment];
    }

    else
    {
      v22 = off_1E7ACE4C8[vertical_alignment];
    }

    [dictionary setObject:v22 forKeyedSubscript:@"verticalAlignment"];
  }

  v23 = *MEMORY[0x1E69E9840];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  cells = [(_SFPBRFTableRowCardSection *)self cells];
  cells2 = [equalCopy cells];
  if ((cells != 0) == (cells2 == 0))
  {
    goto LABEL_13;
  }

  cells3 = [(_SFPBRFTableRowCardSection *)self cells];
  if (cells3)
  {
    v8 = cells3;
    cells4 = [(_SFPBRFTableRowCardSection *)self cells];
    cells5 = [equalCopy cells];
    v11 = [cells4 isEqual:cells5];

    if (!v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  vertical_alignment = self->_vertical_alignment;
  if (vertical_alignment != [equalCopy vertical_alignment])
  {
    goto LABEL_14;
  }

  scale_to_fit = self->_scale_to_fit;
  if (scale_to_fit != [equalCopy scale_to_fit])
  {
    goto LABEL_14;
  }

  cells = [(_SFPBRFTableRowCardSection *)self compact_cells];
  cells2 = [equalCopy compact_cells];
  if ((cells != 0) != (cells2 == 0))
  {
    compact_cells = [(_SFPBRFTableRowCardSection *)self compact_cells];
    if (!compact_cells)
    {

LABEL_17:
      v19 = 1;
      goto LABEL_15;
    }

    v15 = compact_cells;
    compact_cells2 = [(_SFPBRFTableRowCardSection *)self compact_cells];
    compact_cells3 = [equalCopy compact_cells];
    v18 = [compact_cells2 isEqual:compact_cells3];

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

- (void)writeTo:(id)to
{
  v28 = *MEMORY[0x1E69E9840];
  toCopy = to;
  cells = [(_SFPBRFTableRowCardSection *)self cells];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [cells countByEnumeratingWithState:&v22 objects:v27 count:16];
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
          objc_enumerationMutation(cells);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [cells countByEnumeratingWithState:&v22 objects:v27 count:16];
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

  compact_cells = [(_SFPBRFTableRowCardSection *)self compact_cells];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = [compact_cells countByEnumeratingWithState:&v18 objects:v26 count:16];
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
          objc_enumerationMutation(compact_cells);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [compact_cells countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  v17 = *MEMORY[0x1E69E9840];
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

@end