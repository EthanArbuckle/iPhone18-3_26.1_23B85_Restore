@interface ODDSiriSchemaODDAssistantExperimentDigest
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDAssistantExperimentDigest)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDAssistantExperimentDigest)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addTurnIds:(id)ids;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDAssistantExperimentDigest

- (ODDSiriSchemaODDAssistantExperimentDigest)initWithDictionary:(id)dictionary
{
  v30 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v28.receiver = self;
  v28.super_class = ODDSiriSchemaODDAssistantExperimentDigest;
  v5 = [(ODDSiriSchemaODDAssistantExperimentDigest *)&v28 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"dimensions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDAssistantExperimentDimensions alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDAssistantExperimentDigest *)v5 setDimensions:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"counts"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ODDSiriSchemaODDAssistantExperimentCounts alloc] initWithDictionary:v8];
      [(ODDSiriSchemaODDAssistantExperimentDigest *)v5 setCounts:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"tuples"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[ODDSiriSchemaODDAssistantExperimentTuples alloc] initWithDictionary:v10];
      [(ODDSiriSchemaODDAssistantExperimentDigest *)v5 setTuples:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"turnIds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v10;
      v23 = v6;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v25;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v25 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v24 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = [[SISchemaUUID alloc] initWithDictionary:v18];
              [(ODDSiriSchemaODDAssistantExperimentDigest *)v5 addTurnIds:v19];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v24 objects:v29 count:16];
        }

        while (v15);
      }

      v6 = v23;
      v10 = v22;
    }

    v20 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDAssistantExperimentDigest)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDAssistantExperimentDigest *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDAssistantExperimentDigest *)self dictionaryRepresentation];
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
  v27 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_counts)
  {
    counts = [(ODDSiriSchemaODDAssistantExperimentDigest *)self counts];
    dictionaryRepresentation = [counts dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"counts"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"counts"];
    }
  }

  if (self->_dimensions)
  {
    dimensions = [(ODDSiriSchemaODDAssistantExperimentDigest *)self dimensions];
    dictionaryRepresentation2 = [dimensions dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"dimensions"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"dimensions"];
    }
  }

  if (self->_tuples)
  {
    tuples = [(ODDSiriSchemaODDAssistantExperimentDigest *)self tuples];
    dictionaryRepresentation3 = [tuples dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"tuples"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"tuples"];
    }
  }

  if ([(NSArray *)self->_turnIds count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = self->_turnIds;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v23;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v23 != v17)
          {
            objc_enumerationMutation(v14);
          }

          dictionaryRepresentation4 = [*(*(&v22 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation4)
          {
            [array addObject:dictionaryRepresentation4];
          }

          else
          {
            null4 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null4];
          }
        }

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v16);
    }

    [dictionary setObject:array forKeyedSubscript:@"turnIds"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v22];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(ODDSiriSchemaODDAssistantExperimentDimensions *)self->_dimensions hash];
  v4 = [(ODDSiriSchemaODDAssistantExperimentCounts *)self->_counts hash]^ v3;
  v5 = [(ODDSiriSchemaODDAssistantExperimentTuples *)self->_tuples hash];
  return v4 ^ v5 ^ [(NSArray *)self->_turnIds hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  dimensions = [(ODDSiriSchemaODDAssistantExperimentDigest *)self dimensions];
  dimensions2 = [equalCopy dimensions];
  if ((dimensions != 0) == (dimensions2 == 0))
  {
    goto LABEL_21;
  }

  dimensions3 = [(ODDSiriSchemaODDAssistantExperimentDigest *)self dimensions];
  if (dimensions3)
  {
    v8 = dimensions3;
    dimensions4 = [(ODDSiriSchemaODDAssistantExperimentDigest *)self dimensions];
    dimensions5 = [equalCopy dimensions];
    v11 = [dimensions4 isEqual:dimensions5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  dimensions = [(ODDSiriSchemaODDAssistantExperimentDigest *)self counts];
  dimensions2 = [equalCopy counts];
  if ((dimensions != 0) == (dimensions2 == 0))
  {
    goto LABEL_21;
  }

  counts = [(ODDSiriSchemaODDAssistantExperimentDigest *)self counts];
  if (counts)
  {
    v13 = counts;
    counts2 = [(ODDSiriSchemaODDAssistantExperimentDigest *)self counts];
    counts3 = [equalCopy counts];
    v16 = [counts2 isEqual:counts3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  dimensions = [(ODDSiriSchemaODDAssistantExperimentDigest *)self tuples];
  dimensions2 = [equalCopy tuples];
  if ((dimensions != 0) == (dimensions2 == 0))
  {
    goto LABEL_21;
  }

  tuples = [(ODDSiriSchemaODDAssistantExperimentDigest *)self tuples];
  if (tuples)
  {
    v18 = tuples;
    tuples2 = [(ODDSiriSchemaODDAssistantExperimentDigest *)self tuples];
    tuples3 = [equalCopy tuples];
    v21 = [tuples2 isEqual:tuples3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  dimensions = [(ODDSiriSchemaODDAssistantExperimentDigest *)self turnIds];
  dimensions2 = [equalCopy turnIds];
  if ((dimensions != 0) != (dimensions2 == 0))
  {
    turnIds = [(ODDSiriSchemaODDAssistantExperimentDigest *)self turnIds];
    if (!turnIds)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = turnIds;
    turnIds2 = [(ODDSiriSchemaODDAssistantExperimentDigest *)self turnIds];
    turnIds3 = [equalCopy turnIds];
    v26 = [turnIds2 isEqual:turnIds3];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (void)writeTo:(id)to
{
  v21 = *MEMORY[0x1E69E9840];
  toCopy = to;
  dimensions = [(ODDSiriSchemaODDAssistantExperimentDigest *)self dimensions];

  if (dimensions)
  {
    dimensions2 = [(ODDSiriSchemaODDAssistantExperimentDigest *)self dimensions];
    PBDataWriterWriteSubmessage();
  }

  counts = [(ODDSiriSchemaODDAssistantExperimentDigest *)self counts];

  if (counts)
  {
    counts2 = [(ODDSiriSchemaODDAssistantExperimentDigest *)self counts];
    PBDataWriterWriteSubmessage();
  }

  tuples = [(ODDSiriSchemaODDAssistantExperimentDigest *)self tuples];

  if (tuples)
  {
    tuples2 = [(ODDSiriSchemaODDAssistantExperimentDigest *)self tuples];
    PBDataWriterWriteSubmessage();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = self->_turnIds;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (void)addTurnIds:(id)ids
{
  idsCopy = ids;
  turnIds = self->_turnIds;
  v8 = idsCopy;
  if (!turnIds)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_turnIds;
    self->_turnIds = array;

    idsCopy = v8;
    turnIds = self->_turnIds;
  }

  [(NSArray *)turnIds addObject:idsCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v18.receiver = self;
  v18.super_class = ODDSiriSchemaODDAssistantExperimentDigest;
  v5 = [(SISchemaInstrumentationMessage *)&v18 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:8])
  {
    [(ODDSiriSchemaODDAssistantExperimentDigest *)self deleteTurnIds];
  }

  dimensions = [(ODDSiriSchemaODDAssistantExperimentDigest *)self dimensions];
  v7 = [dimensions applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ODDSiriSchemaODDAssistantExperimentDigest *)self deleteDimensions];
  }

  counts = [(ODDSiriSchemaODDAssistantExperimentDigest *)self counts];
  v10 = [counts applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ODDSiriSchemaODDAssistantExperimentDigest *)self deleteCounts];
  }

  tuples = [(ODDSiriSchemaODDAssistantExperimentDigest *)self tuples];
  v13 = [tuples applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(ODDSiriSchemaODDAssistantExperimentDigest *)self deleteTuples];
  }

  turnIds = [(ODDSiriSchemaODDAssistantExperimentDigest *)self turnIds];
  v16 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:turnIds underConditions:policyCopy];
  [(ODDSiriSchemaODDAssistantExperimentDigest *)self setTurnIds:v16];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end