@interface JRSchemaJRCandidateBooleanMask
- (BOOL)isApplicableToCandidateAtIndex:(unint64_t)index;
- (BOOL)isEqual:(id)equal;
- (JRSchemaJRCandidateBooleanMask)initWithDictionary:(id)dictionary;
- (JRSchemaJRCandidateBooleanMask)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)addIsApplicableToCandidate:(BOOL)candidate;
- (void)writeTo:(id)to;
@end

@implementation JRSchemaJRCandidateBooleanMask

- (JRSchemaJRCandidateBooleanMask)initWithDictionary:(id)dictionary
{
  v21 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = JRSchemaJRCandidateBooleanMask;
  v5 = [(JRSchemaJRCandidateBooleanMask *)&v19 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"isApplicableToCandidate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v16;
        do
        {
          v11 = 0;
          do
          {
            if (*v16 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v15 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[JRSchemaJRCandidateBooleanMask addIsApplicableToCandidate:](v5, "addIsApplicableToCandidate:", [v12 BOOLValue]);
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
        }

        while (v9);
      }
    }

    v13 = v5;
  }

  return v5;
}

- (JRSchemaJRCandidateBooleanMask)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(JRSchemaJRCandidateBooleanMask *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(JRSchemaJRCandidateBooleanMask *)self dictionaryRepresentation];
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
  if ([(NSArray *)self->_isApplicableToCandidates count])
  {
    isApplicableToCandidates = [(JRSchemaJRCandidateBooleanMask *)self isApplicableToCandidates];
    v5 = [isApplicableToCandidates copy];
    [dictionary setObject:v5 forKeyedSubscript:@"isApplicableToCandidate"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    isApplicableToCandidates = [(JRSchemaJRCandidateBooleanMask *)self isApplicableToCandidates];
    isApplicableToCandidates2 = [equalCopy isApplicableToCandidates];
    v7 = isApplicableToCandidates2;
    if ((isApplicableToCandidates != 0) != (isApplicableToCandidates2 == 0))
    {
      isApplicableToCandidates3 = [(JRSchemaJRCandidateBooleanMask *)self isApplicableToCandidates];
      if (!isApplicableToCandidates3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = isApplicableToCandidates3;
      isApplicableToCandidates4 = [(JRSchemaJRCandidateBooleanMask *)self isApplicableToCandidates];
      isApplicableToCandidates5 = [equalCopy isApplicableToCandidates];
      v12 = [isApplicableToCandidates4 isEqual:isApplicableToCandidates5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_isApplicableToCandidates;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) BOOLValue];
        PBDataWriterWriteBOOLField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (BOOL)isApplicableToCandidateAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_isApplicableToCandidates objectAtIndexedSubscript:index];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)addIsApplicableToCandidate:(BOOL)candidate
{
  candidateCopy = candidate;
  isApplicableToCandidates = self->_isApplicableToCandidates;
  if (!isApplicableToCandidates)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_isApplicableToCandidates;
    self->_isApplicableToCandidates = array;

    isApplicableToCandidates = self->_isApplicableToCandidates;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:candidateCopy];
  [(NSArray *)isApplicableToCandidates addObject:v8];
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end