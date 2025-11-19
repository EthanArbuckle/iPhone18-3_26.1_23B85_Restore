@interface NETSchemaNETClientEventMetadata
- (BOOL)isEqual:(id)a3;
- (NETSchemaNETClientEventMetadata)initWithDictionary:(id)a3;
- (NETSchemaNETClientEventMetadata)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation NETSchemaNETClientEventMetadata

- (NETSchemaNETClientEventMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NETSchemaNETClientEventMetadata;
  v5 = [(NETSchemaNETClientEventMetadata *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"netId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(NETSchemaNETClientEventMetadata *)v5 setNetId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"networkConnectionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(NETSchemaNETClientEventMetadata *)v5 setNetworkConnectionId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"provider"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETClientEventMetadata setProvider:](v5, "setProvider:", [v10 intValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (NETSchemaNETClientEventMetadata)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NETSchemaNETClientEventMetadata *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NETSchemaNETClientEventMetadata *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_netId)
  {
    v4 = [(NETSchemaNETClientEventMetadata *)self netId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"netId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"netId"];
    }
  }

  if (self->_networkConnectionId)
  {
    v7 = [(NETSchemaNETClientEventMetadata *)self networkConnectionId];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"networkConnectionId"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"networkConnectionId"];
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

    [v3 setObject:v11 forKeyedSubscript:@"provider"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(NETSchemaNETClientEventMetadata *)self netId];
  v6 = [v4 netId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(NETSchemaNETClientEventMetadata *)self netId];
  if (v7)
  {
    v8 = v7;
    v9 = [(NETSchemaNETClientEventMetadata *)self netId];
    v10 = [v4 netId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(NETSchemaNETClientEventMetadata *)self networkConnectionId];
  v6 = [v4 networkConnectionId];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(NETSchemaNETClientEventMetadata *)self networkConnectionId];
  if (v12)
  {
    v13 = v12;
    v14 = [(NETSchemaNETClientEventMetadata *)self networkConnectionId];
    v15 = [v4 networkConnectionId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (v4[28] & 1))
  {
    if ((*&self->_has & 1) == 0 || (provider = self->_provider, provider == [v4 provider]))
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

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(NETSchemaNETClientEventMetadata *)self netId];

  if (v4)
  {
    v5 = [(NETSchemaNETClientEventMetadata *)self netId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(NETSchemaNETClientEventMetadata *)self networkConnectionId];

  if (v6)
  {
    v7 = [(NETSchemaNETClientEventMetadata *)self networkConnectionId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NETSchemaNETClientEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(NETSchemaNETClientEventMetadata *)self netId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(NETSchemaNETClientEventMetadata *)self deleteNetId];
  }

  v9 = [(NETSchemaNETClientEventMetadata *)self networkConnectionId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
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