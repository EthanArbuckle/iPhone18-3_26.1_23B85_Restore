@interface SIRINLUEXTERNALRRMetadata
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsDataSource:(id)a3;
- (int)dataSource;
- (unint64_t)hash;
- (void)addSurroundingTexts:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALRRMetadata

- (void)mergeFrom:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  boundingBox = self->_boundingBox;
  v6 = *(v4 + 1);
  if (boundingBox)
  {
    if (v6)
    {
      [(SIRINLUEXTERNALRRBoundingBox *)boundingBox mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUEXTERNALRRMetadata *)self setBoundingBox:?];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(v4 + 3);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(SIRINLUEXTERNALRRMetadata *)self addSurroundingTexts:*(*(&v13 + 1) + 8 * i), v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  if (*(v4 + 32))
  {
    self->_dataSource = *(v4 + 4);
    *&self->_has |= 1u;
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(SIRINLUEXTERNALRRBoundingBox *)self->_boundingBox hash];
  v4 = [(NSMutableArray *)self->_surroundingTexts hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_dataSource;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  boundingBox = self->_boundingBox;
  if (boundingBox | *(v4 + 1))
  {
    if (![(SIRINLUEXTERNALRRBoundingBox *)boundingBox isEqual:?])
    {
      goto LABEL_10;
    }
  }

  surroundingTexts = self->_surroundingTexts;
  if (surroundingTexts | *(v4 + 3))
  {
    if (![(NSMutableArray *)surroundingTexts isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(v4 + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) != 0 && self->_dataSource == *(v4 + 4))
    {
      v7 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v7 = 0;
  }

LABEL_11:

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SIRINLUEXTERNALRRBoundingBox *)self->_boundingBox copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_surroundingTexts;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * v12) copyWithZone:{a3, v16}];
        [v5 addSurroundingTexts:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  if (*&self->_has)
  {
    *(v5 + 16) = self->_dataSource;
    *(v5 + 32) |= 1u;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)a3
{
  v8 = a3;
  if (self->_boundingBox)
  {
    [v8 setBoundingBox:?];
  }

  if ([(SIRINLUEXTERNALRRMetadata *)self surroundingTextsCount])
  {
    [v8 clearSurroundingTexts];
    v4 = [(SIRINLUEXTERNALRRMetadata *)self surroundingTextsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SIRINLUEXTERNALRRMetadata *)self surroundingTextsAtIndex:i];
        [v8 addSurroundingTexts:v7];
      }
    }
  }

  if (*&self->_has)
  {
    *(v8 + 4) = self->_dataSource;
    *(v8 + 32) |= 1u;
  }
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_boundingBox)
  {
    PBDataWriterWriteSubmessage();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_surroundingTexts;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if (*&self->_has)
  {
    dataSource = self->_dataSource;
    PBDataWriterWriteInt32Field();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  boundingBox = self->_boundingBox;
  if (boundingBox)
  {
    v5 = [(SIRINLUEXTERNALRRBoundingBox *)boundingBox dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"bounding_box"];
  }

  if ([(NSMutableArray *)self->_surroundingTexts count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_surroundingTexts, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = self->_surroundingTexts;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKey:@"surrounding_texts"];
  }

  if (*&self->_has)
  {
    dataSource = self->_dataSource;
    if (dataSource >= 6)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_dataSource];
    }

    else
    {
      v14 = off_1E8328300[dataSource];
    }

    [v3 setObject:v14 forKey:@"data_source"];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALRRMetadata;
  v4 = [(SIRINLUEXTERNALRRMetadata *)&v8 description];
  v5 = [(SIRINLUEXTERNALRRMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsDataSource:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"CONVERSATIONAL"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ON_SCREEN"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"NOTIFICATION"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"ANNOUNCEMENT"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"VISUAL"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)dataSource
{
  if (*&self->_has)
  {
    return self->_dataSource;
  }

  else
  {
    return 0;
  }
}

- (void)addSurroundingTexts:(id)a3
{
  v4 = a3;
  surroundingTexts = self->_surroundingTexts;
  v8 = v4;
  if (!surroundingTexts)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_surroundingTexts;
    self->_surroundingTexts = v6;

    v4 = v8;
    surroundingTexts = self->_surroundingTexts;
  }

  [(NSMutableArray *)surroundingTexts addObject:v4];
}

@end