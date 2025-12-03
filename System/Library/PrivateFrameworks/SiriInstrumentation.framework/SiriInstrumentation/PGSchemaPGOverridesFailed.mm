@interface PGSchemaPGOverridesFailed
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PGSchemaPGOverridesFailed)initWithDictionary:(id)dictionary;
- (PGSchemaPGOverridesFailed)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation PGSchemaPGOverridesFailed

- (PGSchemaPGOverridesFailed)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = PGSchemaPGOverridesFailed;
  v5 = [(PGSchemaPGOverridesFailed *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"criticalError"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTIntelligenceFlowError alloc] initWithDictionary:v6];
      [(PGSchemaPGOverridesFailed *)v5 setCriticalError:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"assetVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(PGSchemaPGOverridesFailed *)v5 setAssetVersion:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (PGSchemaPGOverridesFailed)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PGSchemaPGOverridesFailed *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PGSchemaPGOverridesFailed *)self dictionaryRepresentation];
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
  if (self->_assetVersion)
  {
    assetVersion = [(PGSchemaPGOverridesFailed *)self assetVersion];
    v5 = [assetVersion copy];
    [dictionary setObject:v5 forKeyedSubscript:@"assetVersion"];
  }

  if (self->_criticalError)
  {
    criticalError = [(PGSchemaPGOverridesFailed *)self criticalError];
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

  criticalError = [(PGSchemaPGOverridesFailed *)self criticalError];
  criticalError2 = [equalCopy criticalError];
  if ((criticalError != 0) == (criticalError2 == 0))
  {
    goto LABEL_11;
  }

  criticalError3 = [(PGSchemaPGOverridesFailed *)self criticalError];
  if (criticalError3)
  {
    v8 = criticalError3;
    criticalError4 = [(PGSchemaPGOverridesFailed *)self criticalError];
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

  criticalError = [(PGSchemaPGOverridesFailed *)self assetVersion];
  criticalError2 = [equalCopy assetVersion];
  if ((criticalError != 0) != (criticalError2 == 0))
  {
    assetVersion = [(PGSchemaPGOverridesFailed *)self assetVersion];
    if (!assetVersion)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = assetVersion;
    assetVersion2 = [(PGSchemaPGOverridesFailed *)self assetVersion];
    assetVersion3 = [equalCopy assetVersion];
    v16 = [assetVersion2 isEqual:assetVersion3];

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
  criticalError = [(PGSchemaPGOverridesFailed *)self criticalError];

  if (criticalError)
  {
    criticalError2 = [(PGSchemaPGOverridesFailed *)self criticalError];
    PBDataWriterWriteSubmessage();
  }

  assetVersion = [(PGSchemaPGOverridesFailed *)self assetVersion];

  if (assetVersion)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = PGSchemaPGOverridesFailed;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(PGSchemaPGOverridesFailed *)self criticalError:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(PGSchemaPGOverridesFailed *)self deleteCriticalError];
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