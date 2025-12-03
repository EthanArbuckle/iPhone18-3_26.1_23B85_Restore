@interface PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1)initWithDictionary:(id)dictionary;
- (PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)citationIndicesAtIndex:(unint64_t)index;
- (void)addCitationIndices:(int)indices;
- (void)writeTo:(id)to;
@end

@implementation PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1

- (PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1)initWithDictionary:(id)dictionary
{
  v23 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v21.receiver = self;
  v21.super_class = PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1;
  v5 = [(PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1 *)&v21 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"subText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1 *)v5 setSubText:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"citationIndices"];
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

- (PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1 *)self dictionaryRepresentation];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_citationIndices count])
  {
    citationIndices = [(PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1 *)self citationIndices];
    v5 = [citationIndices copy];
    [dictionary setObject:v5 forKeyedSubscript:@"citationIndices"];
  }

  if (self->_subText)
  {
    subText = [(PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1 *)self subText];
    v7 = [subText copy];
    [dictionary setObject:v7 forKeyedSubscript:@"subText"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  subText = [(PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1 *)self subText];
  subText2 = [equalCopy subText];
  if ((subText != 0) == (subText2 == 0))
  {
    goto LABEL_11;
  }

  subText3 = [(PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1 *)self subText];
  if (subText3)
  {
    v8 = subText3;
    subText4 = [(PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1 *)self subText];
    subText5 = [equalCopy subText];
    v11 = [subText4 isEqual:subText5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  subText = [(PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1 *)self citationIndices];
  subText2 = [equalCopy citationIndices];
  if ((subText != 0) != (subText2 == 0))
  {
    citationIndices = [(PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1 *)self citationIndices];
    if (!citationIndices)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = citationIndices;
    citationIndices2 = [(PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1 *)self citationIndices];
    citationIndices3 = [equalCopy citationIndices];
    v16 = [citationIndices2 isEqual:citationIndices3];

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

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  subText = [(PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1 *)self subText];

  if (subText)
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

- (int)citationIndicesAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_citationIndices objectAtIndexedSubscript:index];
  intValue = [v3 intValue];

  return intValue;
}

- (void)addCitationIndices:(int)indices
{
  v3 = *&indices;
  citationIndices = self->_citationIndices;
  if (!citationIndices)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_citationIndices;
    self->_citationIndices = array;

    citationIndices = self->_citationIndices;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)citationIndices addObject:v8];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v7.receiver = self;
  v7.super_class = PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1 *)self deleteSubText];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1 *)self deleteSubText];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1 *)self deleteSubText];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(PEGASUSSchemaPEGASUSWebAnswerCitationInfoTier1 *)self deleteSubText];
  }

  if ([policyCopy isConditionSet:7])
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