@interface ODDSiriSchemaODDDictationExperimentDigestsReported
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDDictationExperimentDigestsReported)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDDictationExperimentDigestsReported)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addDigests:(id)digests;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDDictationExperimentDigestsReported

- (ODDSiriSchemaODDDictationExperimentDigestsReported)initWithDictionary:(id)dictionary
{
  v29 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v27.receiver = self;
  v27.super_class = ODDSiriSchemaODDDictationExperimentDigestsReported;
  v5 = [(ODDSiriSchemaODDDictationExperimentDigestsReported *)&v27 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"digestType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDDictationExperimentDigestsReported setDigestType:](v5, "setDigestType:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"experimentFixedDimensions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[ODDSiriSchemaODDExperimentFixedDimensions alloc] initWithDictionary:v7];
      [(ODDSiriSchemaODDDictationExperimentDigestsReported *)v5 setExperimentFixedDimensions:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"fixedDimensions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[ODDSiriSchemaODDFixedDimensions alloc] initWithDictionary:v9];
      [(ODDSiriSchemaODDDictationExperimentDigestsReported *)v5 setFixedDimensions:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"digests"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v9;
      v22 = v6;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v24;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v24 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v23 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v18 = [[ODDSiriSchemaODDDictationExperimentDigest alloc] initWithDictionary:v17];
              [(ODDSiriSchemaODDDictationExperimentDigestsReported *)v5 addDigests:v18];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v14);
      }

      v6 = v22;
      v9 = v21;
    }

    v19 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDDictationExperimentDigestsReported)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDDictationExperimentDigestsReported *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDDictationExperimentDigestsReported *)self dictionaryRepresentation];
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
  v26 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [(ODDSiriSchemaODDDictationExperimentDigestsReported *)self digestType]- 1;
    if (v4 > 3)
    {
      v5 = @"ODDEXPERIMENTDIGESTTYPE_UNKNOWN";
    }

    else
    {
      v5 = off_1E78DD678[v4];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"digestType"];
  }

  if ([(NSArray *)self->_digests count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = self->_digests;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v21 + 1) + 8 * i) dictionaryRepresentation];
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

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }

    [dictionary setObject:array forKeyedSubscript:@"digests"];
  }

  if (self->_experimentFixedDimensions)
  {
    experimentFixedDimensions = [(ODDSiriSchemaODDDictationExperimentDigestsReported *)self experimentFixedDimensions];
    dictionaryRepresentation2 = [experimentFixedDimensions dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"experimentFixedDimensions"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"experimentFixedDimensions"];
    }
  }

  if (self->_fixedDimensions)
  {
    fixedDimensions = [(ODDSiriSchemaODDDictationExperimentDigestsReported *)self fixedDimensions];
    dictionaryRepresentation3 = [fixedDimensions dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"fixedDimensions"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"fixedDimensions"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v21];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_digestType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(ODDSiriSchemaODDExperimentFixedDimensions *)self->_experimentFixedDimensions hash]^ v3;
  v5 = [(ODDSiriSchemaODDFixedDimensions *)self->_fixedDimensions hash];
  return v4 ^ v5 ^ [(NSArray *)self->_digests hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  if ((*&self->_has & 1) != (equalCopy[40] & 1))
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    digestType = self->_digestType;
    if (digestType != [equalCopy digestType])
    {
      goto LABEL_20;
    }
  }

  experimentFixedDimensions = [(ODDSiriSchemaODDDictationExperimentDigestsReported *)self experimentFixedDimensions];
  experimentFixedDimensions2 = [equalCopy experimentFixedDimensions];
  if ((experimentFixedDimensions != 0) == (experimentFixedDimensions2 == 0))
  {
    goto LABEL_19;
  }

  experimentFixedDimensions3 = [(ODDSiriSchemaODDDictationExperimentDigestsReported *)self experimentFixedDimensions];
  if (experimentFixedDimensions3)
  {
    v9 = experimentFixedDimensions3;
    experimentFixedDimensions4 = [(ODDSiriSchemaODDDictationExperimentDigestsReported *)self experimentFixedDimensions];
    experimentFixedDimensions5 = [equalCopy experimentFixedDimensions];
    v12 = [experimentFixedDimensions4 isEqual:experimentFixedDimensions5];

    if (!v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  experimentFixedDimensions = [(ODDSiriSchemaODDDictationExperimentDigestsReported *)self fixedDimensions];
  experimentFixedDimensions2 = [equalCopy fixedDimensions];
  if ((experimentFixedDimensions != 0) == (experimentFixedDimensions2 == 0))
  {
    goto LABEL_19;
  }

  fixedDimensions = [(ODDSiriSchemaODDDictationExperimentDigestsReported *)self fixedDimensions];
  if (fixedDimensions)
  {
    v14 = fixedDimensions;
    fixedDimensions2 = [(ODDSiriSchemaODDDictationExperimentDigestsReported *)self fixedDimensions];
    fixedDimensions3 = [equalCopy fixedDimensions];
    v17 = [fixedDimensions2 isEqual:fixedDimensions3];

    if (!v17)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  experimentFixedDimensions = [(ODDSiriSchemaODDDictationExperimentDigestsReported *)self digests];
  experimentFixedDimensions2 = [equalCopy digests];
  if ((experimentFixedDimensions != 0) != (experimentFixedDimensions2 == 0))
  {
    digests = [(ODDSiriSchemaODDDictationExperimentDigestsReported *)self digests];
    if (!digests)
    {

LABEL_23:
      v23 = 1;
      goto LABEL_21;
    }

    v19 = digests;
    digests2 = [(ODDSiriSchemaODDDictationExperimentDigestsReported *)self digests];
    digests3 = [equalCopy digests];
    v22 = [digests2 isEqual:digests3];

    if (v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
LABEL_19:
  }

LABEL_20:
  v23 = 0;
LABEL_21:

  return v23;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  experimentFixedDimensions = [(ODDSiriSchemaODDDictationExperimentDigestsReported *)self experimentFixedDimensions];

  if (experimentFixedDimensions)
  {
    experimentFixedDimensions2 = [(ODDSiriSchemaODDDictationExperimentDigestsReported *)self experimentFixedDimensions];
    PBDataWriterWriteSubmessage();
  }

  fixedDimensions = [(ODDSiriSchemaODDDictationExperimentDigestsReported *)self fixedDimensions];

  if (fixedDimensions)
  {
    fixedDimensions2 = [(ODDSiriSchemaODDDictationExperimentDigestsReported *)self fixedDimensions];
    PBDataWriterWriteSubmessage();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = self->_digests;
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

- (void)addDigests:(id)digests
{
  digestsCopy = digests;
  digests = self->_digests;
  v8 = digestsCopy;
  if (!digests)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_digests;
    self->_digests = array;

    digestsCopy = v8;
    digests = self->_digests;
  }

  [(NSArray *)digests addObject:digestsCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v15.receiver = self;
  v15.super_class = ODDSiriSchemaODDDictationExperimentDigestsReported;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:policyCopy];
  experimentFixedDimensions = [(ODDSiriSchemaODDDictationExperimentDigestsReported *)self experimentFixedDimensions];
  v7 = [experimentFixedDimensions applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ODDSiriSchemaODDDictationExperimentDigestsReported *)self deleteExperimentFixedDimensions];
  }

  fixedDimensions = [(ODDSiriSchemaODDDictationExperimentDigestsReported *)self fixedDimensions];
  v10 = [fixedDimensions applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ODDSiriSchemaODDDictationExperimentDigestsReported *)self deleteFixedDimensions];
  }

  digests = [(ODDSiriSchemaODDDictationExperimentDigestsReported *)self digests];
  v13 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:digests underConditions:policyCopy];
  [(ODDSiriSchemaODDDictationExperimentDigestsReported *)self setDigests:v13];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end