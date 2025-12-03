@interface ODDSiriSchemaODDExecutionMetadataReported
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDExecutionMetadataReported)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDExecutionMetadataReported)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasExecutionStatus:(BOOL)status;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDExecutionMetadataReported

- (ODDSiriSchemaODDExecutionMetadataReported)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = ODDSiriSchemaODDExecutionMetadataReported;
  v5 = [(ODDSiriSchemaODDExecutionMetadataReported *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"extensionName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDExecutionMetadataReported setExtensionName:](v5, "setExtensionName:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"executionStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDExecutionMetadataReported setExecutionStatus:](v5, "setExecutionStatus:", [v7 intValue]);
    }

    v8 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDExecutionMetadataReported)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDExecutionMetadataReported *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDExecutionMetadataReported *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 2) != 0)
  {
    if ([(ODDSiriSchemaODDExecutionMetadataReported *)self executionStatus]== 1)
    {
      v5 = @"ODDEXECUTIONSTATUS_COMPLETED";
    }

    else
    {
      v5 = @"ODDEXECUTIONSTATUS_UNKNOWN";
    }

    [dictionary setObject:v5 forKeyedSubscript:@"executionStatus"];
    has = self->_has;
  }

  if (has)
  {
    v6 = [(ODDSiriSchemaODDExecutionMetadataReported *)self extensionName]- 1;
    if (v6 > 5)
    {
      v7 = @"ODDEXTENSIONNAME_UNKNOWN";
    }

    else
    {
      v7 = off_1E78DD6B0[v6];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"extensionName"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_extensionName;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_executionStatus;
  return v3 ^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  has = self->_has;
  v6 = equalCopy[16];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_10;
  }

  if (*&has)
  {
    extensionName = self->_extensionName;
    if (extensionName != [equalCopy extensionName])
    {
LABEL_10:
      v10 = 0;
      goto LABEL_11;
    }

    has = self->_has;
    v6 = equalCopy[16];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_10;
  }

  if (v8)
  {
    executionStatus = self->_executionStatus;
    if (executionStatus != [equalCopy executionStatus])
    {
      goto LABEL_10;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v6 = toCopy;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }
}

- (void)setHasExecutionStatus:(BOOL)status
{
  if (status)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end