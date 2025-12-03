@interface NETSchemaNETClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (NETSchemaNETClientEventMetadata)initWithDictionary:(id)dictionary;
- (NETSchemaNETClientEventMetadata)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation NETSchemaNETClientEventMetadata

- (NETSchemaNETClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = NETSchemaNETClientEventMetadata;
  v5 = [(NETSchemaNETClientEventMetadata *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"netId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(NETSchemaNETClientEventMetadata *)v5 setNetId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"networkConnectionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(NETSchemaNETClientEventMetadata *)v5 setNetworkConnectionId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"provider"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETClientEventMetadata setProvider:](v5, "setProvider:", [v10 intValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (NETSchemaNETClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NETSchemaNETClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NETSchemaNETClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_netId)
  {
    netId = [(NETSchemaNETClientEventMetadata *)self netId];
    dictionaryRepresentation = [netId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"netId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"netId"];
    }
  }

  if (self->_networkConnectionId)
  {
    networkConnectionId = [(NETSchemaNETClientEventMetadata *)self networkConnectionId];
    dictionaryRepresentation2 = [networkConnectionId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"networkConnectionId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"networkConnectionId"];
    }
  }

  if (*&self->_has)
  {
    v10 = [(NETSchemaNETClientEventMetadata *)self provider]- 1;
    if (v10 > 4)
    {
      v11 = @"NETPROVIDER_UNKNOWN";
    }

    else
    {
      v11 = off_1E78DB0A8[v10];
    }

    [dictionary setObject:v11 forKeyedSubscript:@"provider"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_netId hash];
  v4 = [(SISchemaUUID *)self->_networkConnectionId hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_provider;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  netId = [(NETSchemaNETClientEventMetadata *)self netId];
  netId2 = [equalCopy netId];
  if ((netId != 0) == (netId2 == 0))
  {
    goto LABEL_11;
  }

  netId3 = [(NETSchemaNETClientEventMetadata *)self netId];
  if (netId3)
  {
    v8 = netId3;
    netId4 = [(NETSchemaNETClientEventMetadata *)self netId];
    netId5 = [equalCopy netId];
    v11 = [netId4 isEqual:netId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  netId = [(NETSchemaNETClientEventMetadata *)self networkConnectionId];
  netId2 = [equalCopy networkConnectionId];
  if ((netId != 0) == (netId2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  networkConnectionId = [(NETSchemaNETClientEventMetadata *)self networkConnectionId];
  if (networkConnectionId)
  {
    v13 = networkConnectionId;
    networkConnectionId2 = [(NETSchemaNETClientEventMetadata *)self networkConnectionId];
    networkConnectionId3 = [equalCopy networkConnectionId];
    v16 = [networkConnectionId2 isEqual:networkConnectionId3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (equalCopy[28] & 1))
  {
    if ((*&self->_has & 1) == 0 || (provider = self->_provider, provider == [equalCopy provider]))
    {
      v17 = 1;
      goto LABEL_13;
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  netId = [(NETSchemaNETClientEventMetadata *)self netId];

  if (netId)
  {
    netId2 = [(NETSchemaNETClientEventMetadata *)self netId];
    PBDataWriterWriteSubmessage();
  }

  networkConnectionId = [(NETSchemaNETClientEventMetadata *)self networkConnectionId];

  if (networkConnectionId)
  {
    networkConnectionId2 = [(NETSchemaNETClientEventMetadata *)self networkConnectionId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = NETSchemaNETClientEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  netId = [(NETSchemaNETClientEventMetadata *)self netId];
  v7 = [netId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(NETSchemaNETClientEventMetadata *)self deleteNetId];
  }

  networkConnectionId = [(NETSchemaNETClientEventMetadata *)self networkConnectionId];
  v10 = [networkConnectionId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(NETSchemaNETClientEventMetadata *)self deleteNetworkConnectionId];
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