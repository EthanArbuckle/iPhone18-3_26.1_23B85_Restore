@interface PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1)initWithDictionary:(id)a3;
- (PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)citationIndicesAtIndex:(unint64_t)a3;
- (void)addCitationIndices:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1

- (PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1)initWithDictionary:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1;
  v5 = [(PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1 *)&v21 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"subText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1 *)v5 setSubText:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"citationIndices"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v18;
        do
        {
          v13 = 0;
          do
          {
            if (*v18 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v17 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1 addCitationIndices:](v5, "addCitationIndices:", [v14 intValue]);
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
        }

        while (v11);
      }
    }

    v15 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1 *)self dictionaryRepresentation];
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
  if ([(NSArray *)self->_citationIndices count])
  {
    v4 = [(PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1 *)self citationIndices];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"citationIndices"];
  }

  if (self->_subText)
  {
    v6 = [(PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1 *)self subText];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"subText"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1 *)self subText];
  v6 = [v4 subText];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1 *)self subText];
  if (v7)
  {
    v8 = v7;
    v9 = [(PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1 *)self subText];
    v10 = [v4 subText];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1 *)self citationIndices];
  v6 = [v4 citationIndices];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1 *)self citationIndices];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1 *)self citationIndices];
    v15 = [v4 citationIndices];
    v16 = [v14 isEqual:v15];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1 *)self subText];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_citationIndices;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10) intValue];
        PBDataWriterWriteInt32Field();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (int)citationIndicesAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_citationIndices objectAtIndexedSubscript:a3];
  v4 = [v3 intValue];

  return v4;
}

- (void)addCitationIndices:(int)a3
{
  v3 = *&a3;
  citationIndices = self->_citationIndices;
  if (!citationIndices)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_citationIndices;
    self->_citationIndices = v6;

    citationIndices = self->_citationIndices;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)citationIndices addObject:v8];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1 *)self deleteSubText];
  }

  if ([v4 isConditionSet:4])
  {
    [(PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1 *)self deleteSubText];
  }

  if ([v4 isConditionSet:5])
  {
    [(PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1 *)self deleteSubText];
  }

  if ([v4 isConditionSet:6])
  {
    [(PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1 *)self deleteSubText];
  }

  if ([v4 isConditionSet:7])
  {
    [(PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1 *)self deleteSubText];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end