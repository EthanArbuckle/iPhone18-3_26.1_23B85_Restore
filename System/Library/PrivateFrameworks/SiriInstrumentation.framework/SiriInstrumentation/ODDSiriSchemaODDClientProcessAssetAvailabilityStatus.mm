@interface ODDSiriSchemaODDClientProcessAssetAvailabilityStatus
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDClientProcessAssetAvailabilityStatus)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDClientProcessAssetAvailabilityStatus)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDClientProcessAssetAvailabilityStatus

- (ODDSiriSchemaODDClientProcessAssetAvailabilityStatus)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = ODDSiriSchemaODDClientProcessAssetAvailabilityStatus;
  v5 = [(ODDSiriSchemaODDClientProcessAssetAvailabilityStatus *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"gmsAssetAvailabilityStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDGmsAssetAvailabilityStatus alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDClientProcessAssetAvailabilityStatus *)v5 setGmsAssetAvailabilityStatus:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDClientProcessAssetAvailabilityStatus)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDClientProcessAssetAvailabilityStatus *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDClientProcessAssetAvailabilityStatus *)self dictionaryRepresentation];
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
  if (self->_gmsAssetAvailabilityStatus)
  {
    gmsAssetAvailabilityStatus = [(ODDSiriSchemaODDClientProcessAssetAvailabilityStatus *)self gmsAssetAvailabilityStatus];
    dictionaryRepresentation = [gmsAssetAvailabilityStatus dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"gmsAssetAvailabilityStatus"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"gmsAssetAvailabilityStatus"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    gmsAssetAvailabilityStatus = [(ODDSiriSchemaODDClientProcessAssetAvailabilityStatus *)self gmsAssetAvailabilityStatus];
    gmsAssetAvailabilityStatus2 = [equalCopy gmsAssetAvailabilityStatus];
    v7 = gmsAssetAvailabilityStatus2;
    if ((gmsAssetAvailabilityStatus != 0) != (gmsAssetAvailabilityStatus2 == 0))
    {
      gmsAssetAvailabilityStatus3 = [(ODDSiriSchemaODDClientProcessAssetAvailabilityStatus *)self gmsAssetAvailabilityStatus];
      if (!gmsAssetAvailabilityStatus3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = gmsAssetAvailabilityStatus3;
      gmsAssetAvailabilityStatus4 = [(ODDSiriSchemaODDClientProcessAssetAvailabilityStatus *)self gmsAssetAvailabilityStatus];
      gmsAssetAvailabilityStatus5 = [equalCopy gmsAssetAvailabilityStatus];
      v12 = [gmsAssetAvailabilityStatus4 isEqual:gmsAssetAvailabilityStatus5];

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
  toCopy = to;
  gmsAssetAvailabilityStatus = [(ODDSiriSchemaODDClientProcessAssetAvailabilityStatus *)self gmsAssetAvailabilityStatus];

  if (gmsAssetAvailabilityStatus)
  {
    gmsAssetAvailabilityStatus2 = [(ODDSiriSchemaODDClientProcessAssetAvailabilityStatus *)self gmsAssetAvailabilityStatus];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = ODDSiriSchemaODDClientProcessAssetAvailabilityStatus;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ODDSiriSchemaODDClientProcessAssetAvailabilityStatus *)self gmsAssetAvailabilityStatus:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(ODDSiriSchemaODDClientProcessAssetAvailabilityStatus *)self deleteGmsAssetAvailabilityStatus];
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