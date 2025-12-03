@interface ODDSiriSchemaODDDictationDigest
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDDictationDigest)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDDictationDigest)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addTurnIds:(id)ids;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDDictationDigest

- (ODDSiriSchemaODDDictationDigest)initWithDictionary:(id)dictionary
{
  v27 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = ODDSiriSchemaODDDictationDigest;
  v5 = [(ODDSiriSchemaODDDictationDigest *)&v25 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"dimensions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDDictationDimensions alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDDictationDigest *)v5 setDimensions:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"counts"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ODDSiriSchemaODDDictationCounts alloc] initWithDictionary:v8];
      [(ODDSiriSchemaODDDictationDigest *)v5 setCounts:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"turnIds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v8;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v22;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v22 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v21 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = [[SISchemaUUID alloc] initWithDictionary:v16];
              [(ODDSiriSchemaODDDictationDigest *)v5 addTurnIds:v17];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v13);
      }

      v8 = v20;
    }

    v18 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDDictationDigest)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDDictationDigest *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDDictationDigest *)self dictionaryRepresentation];
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
  v24 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_counts)
  {
    counts = [(ODDSiriSchemaODDDictationDigest *)self counts];
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
    dimensions = [(ODDSiriSchemaODDDictationDigest *)self dimensions];
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

  if ([(NSArray *)self->_turnIds count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = self->_turnIds;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          dictionaryRepresentation3 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation3)
          {
            [array addObject:dictionaryRepresentation3];
          }

          else
          {
            null3 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null3];
          }
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    [dictionary setObject:array forKeyedSubscript:@"turnIds"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v19];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(ODDSiriSchemaODDDictationDimensions *)self->_dimensions hash];
  v4 = [(ODDSiriSchemaODDDictationCounts *)self->_counts hash]^ v3;
  return v4 ^ [(NSArray *)self->_turnIds hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  dimensions = [(ODDSiriSchemaODDDictationDigest *)self dimensions];
  dimensions2 = [equalCopy dimensions];
  if ((dimensions != 0) == (dimensions2 == 0))
  {
    goto LABEL_16;
  }

  dimensions3 = [(ODDSiriSchemaODDDictationDigest *)self dimensions];
  if (dimensions3)
  {
    v8 = dimensions3;
    dimensions4 = [(ODDSiriSchemaODDDictationDigest *)self dimensions];
    dimensions5 = [equalCopy dimensions];
    v11 = [dimensions4 isEqual:dimensions5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  dimensions = [(ODDSiriSchemaODDDictationDigest *)self counts];
  dimensions2 = [equalCopy counts];
  if ((dimensions != 0) == (dimensions2 == 0))
  {
    goto LABEL_16;
  }

  counts = [(ODDSiriSchemaODDDictationDigest *)self counts];
  if (counts)
  {
    v13 = counts;
    counts2 = [(ODDSiriSchemaODDDictationDigest *)self counts];
    counts3 = [equalCopy counts];
    v16 = [counts2 isEqual:counts3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  dimensions = [(ODDSiriSchemaODDDictationDigest *)self turnIds];
  dimensions2 = [equalCopy turnIds];
  if ((dimensions != 0) != (dimensions2 == 0))
  {
    turnIds = [(ODDSiriSchemaODDDictationDigest *)self turnIds];
    if (!turnIds)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = turnIds;
    turnIds2 = [(ODDSiriSchemaODDDictationDigest *)self turnIds];
    turnIds3 = [equalCopy turnIds];
    v21 = [turnIds2 isEqual:turnIds3];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x1E69E9840];
  toCopy = to;
  dimensions = [(ODDSiriSchemaODDDictationDigest *)self dimensions];

  if (dimensions)
  {
    dimensions2 = [(ODDSiriSchemaODDDictationDigest *)self dimensions];
    PBDataWriterWriteSubmessage();
  }

  counts = [(ODDSiriSchemaODDDictationDigest *)self counts];

  if (counts)
  {
    counts2 = [(ODDSiriSchemaODDDictationDigest *)self counts];
    PBDataWriterWriteSubmessage();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = self->_turnIds;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        PBDataWriterWriteSubmessage();
        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
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
  v15.receiver = self;
  v15.super_class = ODDSiriSchemaODDDictationDigest;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:8])
  {
    [(ODDSiriSchemaODDDictationDigest *)self deleteTurnIds];
  }

  dimensions = [(ODDSiriSchemaODDDictationDigest *)self dimensions];
  v7 = [dimensions applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ODDSiriSchemaODDDictationDigest *)self deleteDimensions];
  }

  counts = [(ODDSiriSchemaODDDictationDigest *)self counts];
  v10 = [counts applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ODDSiriSchemaODDDictationDigest *)self deleteCounts];
  }

  turnIds = [(ODDSiriSchemaODDDictationDigest *)self turnIds];
  v13 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:turnIds underConditions:policyCopy];
  [(ODDSiriSchemaODDDictationDigest *)self setTurnIds:v13];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end