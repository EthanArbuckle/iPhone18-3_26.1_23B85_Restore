@interface CLPInstSchemaServiceNodeComparatorResult
- (BOOL)isEqual:(id)a3;
- (CLPInstSchemaServiceNodeComparatorResult)initWithDictionary:(id)a3;
- (CLPInstSchemaServiceNodeComparatorResult)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (unint64_t)mismatchedFieldsAtIndex:(unint64_t)a3;
- (void)addMismatchedFields:(unint64_t)a3;
- (void)setHasIsMatched:(BOOL)a3;
- (void)setHasIsValidOriginalItem:(BOOL)a3;
- (void)setHasIsValidReplayedItem:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CLPInstSchemaServiceNodeComparatorResult

- (CLPInstSchemaServiceNodeComparatorResult)initWithDictionary:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26.receiver = self;
  v26.super_class = CLPInstSchemaServiceNodeComparatorResult;
  v5 = [(CLPInstSchemaServiceNodeComparatorResult *)&v26 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"comparatorName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CLPInstSchemaServiceNodeComparatorResult setComparatorName:](v5, "setComparatorName:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"isValidOriginalItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CLPInstSchemaServiceNodeComparatorResult setIsValidOriginalItem:](v5, "setIsValidOriginalItem:", [v7 BOOLValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"isValidReplayedItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CLPInstSchemaServiceNodeComparatorResult setIsValidReplayedItem:](v5, "setIsValidReplayedItem:", [v8 BOOLValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"isMatched"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CLPInstSchemaServiceNodeComparatorResult setIsMatched:](v5, "setIsMatched:", [v9 BOOLValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"mismatchedFields"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v8;
      v20 = v7;
      v21 = v6;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v23;
        do
        {
          v15 = 0;
          do
          {
            if (*v23 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v22 + 1) + 8 * v15);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[CLPInstSchemaServiceNodeComparatorResult addMismatchedFields:](v5, "addMismatchedFields:", [v16 unsignedLongLongValue]);
            }

            ++v15;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
        }

        while (v13);
      }

      v7 = v20;
      v6 = v21;
      v8 = v19;
    }

    v17 = v5;
  }

  return v5;
}

- (CLPInstSchemaServiceNodeComparatorResult)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(CLPInstSchemaServiceNodeComparatorResult *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(CLPInstSchemaServiceNodeComparatorResult *)self dictionaryRepresentation];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [(CLPInstSchemaServiceNodeComparatorResult *)self comparatorName]- 1;
    if (v5 > 5)
    {
      v6 = @"CLPCOMPARATORNAME_UNKNOWN";
    }

    else
    {
      v6 = off_1E78D2AF0[v5];
    }

    [v3 setObject:v6 forKeyedSubscript:@"comparatorName"];
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[CLPInstSchemaServiceNodeComparatorResult isMatched](self, "isMatched")}];
    [v3 setObject:v11 forKeyedSubscript:@"isMatched"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_8:
      if ((has & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_8;
  }

  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[CLPInstSchemaServiceNodeComparatorResult isValidOriginalItem](self, "isValidOriginalItem")}];
  [v3 setObject:v12 forKeyedSubscript:@"isValidOriginalItem"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_9:
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[CLPInstSchemaServiceNodeComparatorResult isValidReplayedItem](self, "isValidReplayedItem")}];
    [v3 setObject:v7 forKeyedSubscript:@"isValidReplayedItem"];
  }

LABEL_10:
  if ([(NSArray *)self->_mismatchedFields count])
  {
    v8 = [(CLPInstSchemaServiceNodeComparatorResult *)self mismatchedFields];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"mismatchedFields"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_comparatorName;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v7 = 2654435761 * self->_isValidOriginalItem;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v9 = 0;
      return v7 ^ v6 ^ v8 ^ v9 ^ [(NSArray *)self->_mismatchedFields hash:v3];
    }
  }

  else
  {
    v6 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = 2654435761 * self->_isValidReplayedItem;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v9 = 2654435761 * self->_isMatched;
  return v7 ^ v6 ^ v8 ^ v9 ^ [(NSArray *)self->_mismatchedFields hash:v3];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  has = self->_has;
  v6 = v4[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_22;
  }

  if (*&has)
  {
    comparatorName = self->_comparatorName;
    if (comparatorName != [v4 comparatorName])
    {
      goto LABEL_22;
    }

    has = self->_has;
    v6 = v4[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      isValidOriginalItem = self->_isValidOriginalItem;
      if (isValidOriginalItem != [v4 isValidOriginalItem])
      {
        goto LABEL_22;
      }

      has = self->_has;
      v6 = v4[24];
    }

    v10 = (*&has >> 2) & 1;
    if (v10 == ((v6 >> 2) & 1))
    {
      if (v10)
      {
        isValidReplayedItem = self->_isValidReplayedItem;
        if (isValidReplayedItem != [v4 isValidReplayedItem])
        {
          goto LABEL_22;
        }

        has = self->_has;
        v6 = v4[24];
      }

      v12 = (*&has >> 3) & 1;
      if (v12 == ((v6 >> 3) & 1))
      {
        if (!v12 || (isMatched = self->_isMatched, isMatched == [v4 isMatched]))
        {
          v14 = [(CLPInstSchemaServiceNodeComparatorResult *)self mismatchedFields];
          v15 = [v4 mismatchedFields];
          v16 = v15;
          if ((v14 != 0) != (v15 == 0))
          {
            v17 = [(CLPInstSchemaServiceNodeComparatorResult *)self mismatchedFields];
            if (!v17)
            {

LABEL_25:
              v22 = 1;
              goto LABEL_23;
            }

            v18 = v17;
            v19 = [(CLPInstSchemaServiceNodeComparatorResult *)self mismatchedFields];
            v20 = [v4 mismatchedFields];
            v21 = [v19 isEqual:v20];

            if (v21)
            {
              goto LABEL_25;
            }
          }

          else
          {
          }
        }
      }
    }
  }

LABEL_22:
  v22 = 0;
LABEL_23:

  return v22;
}

- (void)writeTo:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_16:
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    PBDataWriterWriteBOOLField();
  }

LABEL_6:
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_mismatchedFields;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * i) unsignedLongLongValue];
        PBDataWriterWriteUint64Field();
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (unint64_t)mismatchedFieldsAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_mismatchedFields objectAtIndexedSubscript:a3];
  v4 = [v3 unsignedLongLongValue];

  return v4;
}

- (void)addMismatchedFields:(unint64_t)a3
{
  mismatchedFields = self->_mismatchedFields;
  if (!mismatchedFields)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_mismatchedFields;
    self->_mismatchedFields = v6;

    mismatchedFields = self->_mismatchedFields;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  [(NSArray *)mismatchedFields addObject:v8];
}

- (void)setHasIsMatched:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsValidReplayedItem:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasIsValidOriginalItem:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end