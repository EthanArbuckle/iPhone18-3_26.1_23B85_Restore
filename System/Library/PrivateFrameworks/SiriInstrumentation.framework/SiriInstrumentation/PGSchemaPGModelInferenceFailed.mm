@interface PGSchemaPGModelInferenceFailed
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PGSchemaPGModelInferenceFailed)initWithDictionary:(id)dictionary;
- (PGSchemaPGModelInferenceFailed)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation PGSchemaPGModelInferenceFailed

- (PGSchemaPGModelInferenceFailed)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = PGSchemaPGModelInferenceFailed;
  v5 = [(PGSchemaPGModelInferenceFailed *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"criticalError"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTIntelligenceFlowError alloc] initWithDictionary:v6];
      [(PGSchemaPGModelInferenceFailed *)v5 setCriticalError:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"modelIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(PGSchemaPGModelInferenceFailed *)v5 setModelIdentifier:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (PGSchemaPGModelInferenceFailed)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PGSchemaPGModelInferenceFailed *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PGSchemaPGModelInferenceFailed *)self dictionaryRepresentation];
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
  if (self->_criticalError)
  {
    criticalError = [(PGSchemaPGModelInferenceFailed *)self criticalError];
    dictionaryRepresentation = [criticalError dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"criticalError"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"criticalError"];
    }
  }

  if (self->_modelIdentifier)
  {
    modelIdentifier = [(PGSchemaPGModelInferenceFailed *)self modelIdentifier];
    v8 = [modelIdentifier copy];
    [dictionary setObject:v8 forKeyedSubscript:@"modelIdentifier"];
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

  criticalError = [(PGSchemaPGModelInferenceFailed *)self criticalError];
  criticalError2 = [equalCopy criticalError];
  if ((criticalError != 0) == (criticalError2 == 0))
  {
    goto LABEL_11;
  }

  criticalError3 = [(PGSchemaPGModelInferenceFailed *)self criticalError];
  if (criticalError3)
  {
    v8 = criticalError3;
    criticalError4 = [(PGSchemaPGModelInferenceFailed *)self criticalError];
    criticalError5 = [equalCopy criticalError];
    v11 = [criticalError4 isEqual:criticalError5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  criticalError = [(PGSchemaPGModelInferenceFailed *)self modelIdentifier];
  criticalError2 = [equalCopy modelIdentifier];
  if ((criticalError != 0) != (criticalError2 == 0))
  {
    modelIdentifier = [(PGSchemaPGModelInferenceFailed *)self modelIdentifier];
    if (!modelIdentifier)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = modelIdentifier;
    modelIdentifier2 = [(PGSchemaPGModelInferenceFailed *)self modelIdentifier];
    modelIdentifier3 = [equalCopy modelIdentifier];
    v16 = [modelIdentifier2 isEqual:modelIdentifier3];

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
  toCopy = to;
  criticalError = [(PGSchemaPGModelInferenceFailed *)self criticalError];

  if (criticalError)
  {
    criticalError2 = [(PGSchemaPGModelInferenceFailed *)self criticalError];
    PBDataWriterWriteSubmessage();
  }

  modelIdentifier = [(PGSchemaPGModelInferenceFailed *)self modelIdentifier];

  if (modelIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = PGSchemaPGModelInferenceFailed;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(PGSchemaPGModelInferenceFailed *)self criticalError:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(PGSchemaPGModelInferenceFailed *)self deleteCriticalError];
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