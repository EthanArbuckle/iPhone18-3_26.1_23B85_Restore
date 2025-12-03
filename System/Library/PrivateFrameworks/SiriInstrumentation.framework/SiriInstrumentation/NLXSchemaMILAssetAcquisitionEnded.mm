@interface NLXSchemaMILAssetAcquisitionEnded
- (BOOL)isEqual:(id)equal;
- (NLXSchemaMILAssetAcquisitionEnded)initWithDictionary:(id)dictionary;
- (NLXSchemaMILAssetAcquisitionEnded)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation NLXSchemaMILAssetAcquisitionEnded

- (NLXSchemaMILAssetAcquisitionEnded)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = NLXSchemaMILAssetAcquisitionEnded;
  v5 = [(NLXSchemaMILAssetAcquisitionEnded *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"acquisitionType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLXSchemaMILAssetAcquisitionEnded setAcquisitionType:](v5, "setAcquisitionType:", [v6 intValue]);
    }

    v7 = v5;
  }

  return v5;
}

- (NLXSchemaMILAssetAcquisitionEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLXSchemaMILAssetAcquisitionEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLXSchemaMILAssetAcquisitionEnded *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    acquisitionType = [(NLXSchemaMILAssetAcquisitionEnded *)self acquisitionType];
    v5 = @"MILASSETACQUISITIONTYPE_UNKNOWN";
    if (acquisitionType == 1)
    {
      v5 = @"MILASSETACQUISITIONTYPE_CACHE";
    }

    if (acquisitionType == 2)
    {
      v6 = @"MILASSETACQUISITIONTYPE_RECOMPILE";
    }

    else
    {
      v6 = v5;
    }

    [dictionary setObject:v6 forKeyedSubscript:@"acquisitionType"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761 * self->_acquisitionType;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = 0;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (equalCopy[12] & 1))
    {
      if ((*&self->_has & 1) == 0 || (acquisitionType = self->_acquisitionType, acquisitionType == [equalCopy acquisitionType]))
      {
        v6 = 1;
      }
    }
  }

  return v6;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end