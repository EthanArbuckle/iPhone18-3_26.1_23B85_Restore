@interface SISchemaTRPRequestLink
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaTRPRequestLink)initWithDictionary:(id)a3;
- (SISchemaTRPRequestLink)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaTRPRequestLink

- (SISchemaTRPRequestLink)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SISchemaTRPRequestLink;
  v5 = [(SISchemaTRPRequestLink *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"trpId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(SISchemaTRPRequestLink *)v5 setTrpId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"requestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(SISchemaTRPRequestLink *)v5 setRequestId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"source"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaTRPRequestLink setSource:](v5, "setSource:", [v10 intValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (SISchemaTRPRequestLink)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaTRPRequestLink *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaTRPRequestLink *)self dictionaryRepresentation];
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
  if (self->_requestId)
  {
    v4 = [(SISchemaTRPRequestLink *)self requestId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"requestId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"requestId"];
    }
  }

  if (*&self->_has)
  {
    v7 = [(SISchemaTRPRequestLink *)self source];
    v8 = @"TRPREQUESTLINKSOURCE_UNKNOWN";
    if (v7 == 1)
    {
      v8 = @"TRPREQUESTLINKSOURCE_TURN_TAKING_MANAGER";
    }

    if (v7 == 2)
    {
      v9 = @"TRPREQUESTLINKSOURCE_CORE_SPEECH";
    }

    else
    {
      v9 = v8;
    }

    [v3 setObject:v9 forKeyedSubscript:@"source"];
  }

  if (self->_trpId)
  {
    v10 = [(SISchemaTRPRequestLink *)self trpId];
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
  v3 = [(SISchemaUUID *)self->_trpId hash];
  v4 = [(SISchemaUUID *)self->_requestId hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_source;
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

  v5 = [(SISchemaTRPRequestLink *)self trpId];
  v6 = [v4 trpId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(SISchemaTRPRequestLink *)self trpId];
  if (v7)
  {
    v8 = v7;
    v9 = [(SISchemaTRPRequestLink *)self trpId];
    v10 = [v4 trpId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(SISchemaTRPRequestLink *)self requestId];
  v6 = [v4 requestId];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(SISchemaTRPRequestLink *)self requestId];
  if (v12)
  {
    v13 = v12;
    v14 = [(SISchemaTRPRequestLink *)self requestId];
    v15 = [v4 requestId];
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
    if ((*&self->_has & 1) == 0 || (source = self->_source, source == [v4 source]))
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
  v4 = [(SISchemaTRPRequestLink *)self trpId];

  if (v4)
  {
    v5 = [(SISchemaTRPRequestLink *)self trpId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(SISchemaTRPRequestLink *)self requestId];

  if (v6)
  {
    v7 = [(SISchemaTRPRequestLink *)self requestId];
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
  v13.super_class = SISchemaTRPRequestLink;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(SISchemaTRPRequestLink *)self trpId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(SISchemaTRPRequestLink *)self deleteTrpId];
  }

  v9 = [(SISchemaTRPRequestLink *)self requestId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(SISchemaTRPRequestLink *)self deleteRequestId];
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