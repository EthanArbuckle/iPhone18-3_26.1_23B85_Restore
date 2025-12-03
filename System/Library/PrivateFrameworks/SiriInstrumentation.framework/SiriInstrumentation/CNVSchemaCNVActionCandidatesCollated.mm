@interface CNVSchemaCNVActionCandidatesCollated
- (BOOL)isEqual:(id)equal;
- (CNVSchemaCNVActionCandidatesCollated)initWithDictionary:(id)dictionary;
- (CNVSchemaCNVActionCandidatesCollated)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)addCollatedActionCandidates:(id)candidates;
- (void)writeTo:(id)to;
@end

@implementation CNVSchemaCNVActionCandidatesCollated

- (CNVSchemaCNVActionCandidatesCollated)initWithDictionary:(id)dictionary
{
  v23 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v21.receiver = self;
  v21.super_class = CNVSchemaCNVActionCandidatesCollated;
  v5 = [(CNVSchemaCNVActionCandidatesCollated *)&v21 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"collatedActionCandidates"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v18;
        do
        {
          v11 = 0;
          do
          {
            if (*v18 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v17 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [CNVSchemaCollatedActionCandidate alloc];
              v14 = [(CNVSchemaCollatedActionCandidate *)v13 initWithDictionary:v12, v17];
              [(CNVSchemaCNVActionCandidatesCollated *)v5 addCollatedActionCandidates:v14];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
        }

        while (v9);
      }
    }

    v15 = v5;
  }

  return v5;
}

- (CNVSchemaCNVActionCandidatesCollated)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CNVSchemaCNVActionCandidatesCollated *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CNVSchemaCNVActionCandidatesCollated *)self dictionaryRepresentation];
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
  v18 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_collatedActionCandidates count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_collatedActionCandidates;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v13 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"collatedActionCandidates"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v13];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    collatedActionCandidates = [(CNVSchemaCNVActionCandidatesCollated *)self collatedActionCandidates];
    collatedActionCandidates2 = [equalCopy collatedActionCandidates];
    v7 = collatedActionCandidates2;
    if ((collatedActionCandidates != 0) != (collatedActionCandidates2 == 0))
    {
      collatedActionCandidates3 = [(CNVSchemaCNVActionCandidatesCollated *)self collatedActionCandidates];
      if (!collatedActionCandidates3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = collatedActionCandidates3;
      collatedActionCandidates4 = [(CNVSchemaCNVActionCandidatesCollated *)self collatedActionCandidates];
      collatedActionCandidates5 = [equalCopy collatedActionCandidates];
      v12 = [collatedActionCandidates4 isEqual:collatedActionCandidates5];

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
  v5 = self->_collatedActionCandidates;
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

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)addCollatedActionCandidates:(id)candidates
{
  candidatesCopy = candidates;
  collatedActionCandidates = self->_collatedActionCandidates;
  v8 = candidatesCopy;
  if (!collatedActionCandidates)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_collatedActionCandidates;
    self->_collatedActionCandidates = array;

    candidatesCopy = v8;
    collatedActionCandidates = self->_collatedActionCandidates;
  }

  [(NSArray *)collatedActionCandidates addObject:candidatesCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = CNVSchemaCNVActionCandidatesCollated;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(CNVSchemaCNVActionCandidatesCollated *)self collatedActionCandidates:v9.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];

  [(CNVSchemaCNVActionCandidatesCollated *)self setCollatedActionCandidates:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end