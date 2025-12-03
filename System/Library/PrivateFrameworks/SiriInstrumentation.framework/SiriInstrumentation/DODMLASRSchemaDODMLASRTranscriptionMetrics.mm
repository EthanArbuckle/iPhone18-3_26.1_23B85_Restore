@interface DODMLASRSchemaDODMLASRTranscriptionMetrics
- (BOOL)isEqual:(id)equal;
- (DODMLASRSchemaDODMLASRTranscriptionMetrics)initWithDictionary:(id)dictionary;
- (DODMLASRSchemaDODMLASRTranscriptionMetrics)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation DODMLASRSchemaDODMLASRTranscriptionMetrics

- (DODMLASRSchemaDODMLASRTranscriptionMetrics)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = DODMLASRSchemaDODMLASRTranscriptionMetrics;
  v5 = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"train"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[DODMLASRSchemaDODMLASRTranscriptMetadata alloc] initWithDictionary:v6];
      [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)v5 setTrain:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"dev"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[DODMLASRSchemaDODMLASRTranscriptMetadata alloc] initWithDictionary:v8];
      [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)v5 setDev:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"test"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[DODMLASRSchemaDODMLASRTranscriptMetadata alloc] initWithDictionary:v10];
      [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)v5 setTest:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"external"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[DODMLASRSchemaDODMLASRTranscriptMetadata alloc] initWithDictionary:v12];
      [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)v5 setExternal:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (DODMLASRSchemaDODMLASRTranscriptionMetrics)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self dictionaryRepresentation];
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
  if (self->_dev)
  {
    v4 = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self dev];
    dictionaryRepresentation = [v4 dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"dev"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"dev"];
    }
  }

  if (self->_external)
  {
    external = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self external];
    dictionaryRepresentation2 = [external dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"external"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"external"];
    }
  }

  if (self->_test)
  {
    test = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self test];
    dictionaryRepresentation3 = [test dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"test"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"test"];
    }
  }

  if (self->_train)
  {
    train = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self train];
    dictionaryRepresentation4 = [train dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"train"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"train"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(DODMLASRSchemaDODMLASRTranscriptMetadata *)self->_train hash];
  v4 = [(DODMLASRSchemaDODMLASRTranscriptMetadata *)self->_dev hash]^ v3;
  v5 = [(DODMLASRSchemaDODMLASRTranscriptMetadata *)self->_test hash];
  return v4 ^ v5 ^ [(DODMLASRSchemaDODMLASRTranscriptMetadata *)self->_external hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  train = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self train];
  train2 = [equalCopy train];
  if ((train != 0) == (train2 == 0))
  {
    goto LABEL_21;
  }

  train3 = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self train];
  if (train3)
  {
    v8 = train3;
    train4 = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self train];
    train5 = [equalCopy train];
    v11 = [train4 isEqual:train5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  train = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self dev];
  train2 = [equalCopy dev];
  if ((train != 0) == (train2 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self dev];
  if (v12)
  {
    v13 = v12;
    v14 = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self dev];
    v15 = [equalCopy dev];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  train = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self test];
  train2 = [equalCopy test];
  if ((train != 0) == (train2 == 0))
  {
    goto LABEL_21;
  }

  test = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self test];
  if (test)
  {
    v18 = test;
    test2 = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self test];
    test3 = [equalCopy test];
    v21 = [test2 isEqual:test3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  train = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self external];
  train2 = [equalCopy external];
  if ((train != 0) != (train2 == 0))
  {
    external = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self external];
    if (!external)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = external;
    external2 = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self external];
    external3 = [equalCopy external];
    v26 = [external2 isEqual:external3];

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
  toCopy = to;
  train = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self train];

  if (train)
  {
    train2 = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self train];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self dev];

  if (v6)
  {
    v7 = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self dev];
    PBDataWriterWriteSubmessage();
  }

  test = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self test];

  if (test)
  {
    test2 = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self test];
    PBDataWriterWriteSubmessage();
  }

  external = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self external];

  v11 = toCopy;
  if (external)
  {
    external2 = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self external];
    PBDataWriterWriteSubmessage();

    v11 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v19.receiver = self;
  v19.super_class = DODMLASRSchemaDODMLASRTranscriptionMetrics;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  train = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self train];
  v7 = [train applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self deleteTrain];
  }

  v9 = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self dev];
  v10 = [v9 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self deleteDev];
  }

  test = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self test];
  v13 = [test applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self deleteTest];
  }

  external = [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self external];
  v16 = [external applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(DODMLASRSchemaDODMLASRTranscriptionMetrics *)self deleteExternal];
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