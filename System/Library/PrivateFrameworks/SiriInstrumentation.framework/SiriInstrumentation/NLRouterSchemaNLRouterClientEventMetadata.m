@interface NLRouterSchemaNLRouterClientEventMetadata
- (BOOL)isEqual:(id)a3;
- (NLRouterSchemaNLRouterClientEventMetadata)initWithDictionary:(id)a3;
- (NLRouterSchemaNLRouterClientEventMetadata)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation NLRouterSchemaNLRouterClientEventMetadata

- (NLRouterSchemaNLRouterClientEventMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = NLRouterSchemaNLRouterClientEventMetadata;
  v5 = [(NLRouterSchemaNLRouterClientEventMetadata *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"nlRouterId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(NLRouterSchemaNLRouterClientEventMetadata *)v5 setNlRouterId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"requestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(NLRouterSchemaNLRouterClientEventMetadata *)v5 setRequestId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"trpId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(NLRouterSchemaNLRouterClientEventMetadata *)v5 setTrpId:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (NLRouterSchemaNLRouterClientEventMetadata)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NLRouterSchemaNLRouterClientEventMetadata *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NLRouterSchemaNLRouterClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_nlRouterId)
  {
    v4 = [(NLRouterSchemaNLRouterClientEventMetadata *)self nlRouterId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"nlRouterId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"nlRouterId"];
    }
  }

  if (self->_requestId)
  {
    v7 = [(NLRouterSchemaNLRouterClientEventMetadata *)self requestId];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"requestId"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"requestId"];
    }
  }

  if (self->_trpId)
  {
    v10 = [(NLRouterSchemaNLRouterClientEventMetadata *)self trpId];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"trpId"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"trpId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_nlRouterId hash];
  v4 = [(SISchemaUUID *)self->_requestId hash]^ v3;
  return v4 ^ [(SISchemaUUID *)self->_trpId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(NLRouterSchemaNLRouterClientEventMetadata *)self nlRouterId];
  v6 = [v4 nlRouterId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(NLRouterSchemaNLRouterClientEventMetadata *)self nlRouterId];
  if (v7)
  {
    v8 = v7;
    v9 = [(NLRouterSchemaNLRouterClientEventMetadata *)self nlRouterId];
    v10 = [v4 nlRouterId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(NLRouterSchemaNLRouterClientEventMetadata *)self requestId];
  v6 = [v4 requestId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(NLRouterSchemaNLRouterClientEventMetadata *)self requestId];
  if (v12)
  {
    v13 = v12;
    v14 = [(NLRouterSchemaNLRouterClientEventMetadata *)self requestId];
    v15 = [v4 requestId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(NLRouterSchemaNLRouterClientEventMetadata *)self trpId];
  v6 = [v4 trpId];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(NLRouterSchemaNLRouterClientEventMetadata *)self trpId];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(NLRouterSchemaNLRouterClientEventMetadata *)self trpId];
    v20 = [v4 trpId];
    v21 = [v19 isEqual:v20];

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

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(NLRouterSchemaNLRouterClientEventMetadata *)self nlRouterId];

  if (v4)
  {
    v5 = [(NLRouterSchemaNLRouterClientEventMetadata *)self nlRouterId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(NLRouterSchemaNLRouterClientEventMetadata *)self requestId];

  if (v6)
  {
    v7 = [(NLRouterSchemaNLRouterClientEventMetadata *)self requestId];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(NLRouterSchemaNLRouterClientEventMetadata *)self trpId];

  v9 = v11;
  if (v8)
  {
    v10 = [(NLRouterSchemaNLRouterClientEventMetadata *)self trpId];
    PBDataWriterWriteSubmessage();

    v9 = v11;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = NLRouterSchemaNLRouterClientEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  v6 = [(NLRouterSchemaNLRouterClientEventMetadata *)self nlRouterId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(NLRouterSchemaNLRouterClientEventMetadata *)self deleteNlRouterId];
  }

  v9 = [(NLRouterSchemaNLRouterClientEventMetadata *)self requestId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(NLRouterSchemaNLRouterClientEventMetadata *)self deleteRequestId];
  }

  v12 = [(NLRouterSchemaNLRouterClientEventMetadata *)self trpId];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(NLRouterSchemaNLRouterClientEventMetadata *)self deleteTrpId];
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