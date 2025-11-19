@interface ORCHSchemaORCHSubRequestStarted
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ORCHSchemaORCHSubRequestStarted)initWithDictionary:(id)a3;
- (ORCHSchemaORCHSubRequestStarted)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation ORCHSchemaORCHSubRequestStarted

- (ORCHSchemaORCHSubRequestStarted)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ORCHSchemaORCHSubRequestStarted;
  v5 = [(ORCHSchemaORCHSubRequestStarted *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"trpId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ORCHSchemaORCHSubRequestStarted *)v5 setTrpId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"subRequestType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHSubRequestStarted setSubRequestType:](v5, "setSubRequestType:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"genAIMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[ORCHSchemaORCHNLRouterDecisionGenAIMetadata alloc] initWithDictionary:v9];
      [(ORCHSchemaORCHSubRequestStarted *)v5 setGenAIMetadata:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (ORCHSchemaORCHSubRequestStarted)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHSubRequestStarted *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ORCHSchemaORCHSubRequestStarted *)self dictionaryRepresentation];
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
  if (self->_genAIMetadata)
  {
    v4 = [(ORCHSchemaORCHSubRequestStarted *)self genAIMetadata];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"genAIMetadata"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"genAIMetadata"];
    }
  }

  if (*&self->_has)
  {
    v7 = [(ORCHSchemaORCHSubRequestStarted *)self subRequestType]- 1;
    if (v7 > 0xB)
    {
      v8 = @"SUBREQUESTTYPE_UNKNOWN";
    }

    else
    {
      v8 = off_1E78DF018[v7];
    }

    [v3 setObject:v8 forKeyedSubscript:@"subRequestType"];
  }

  if (self->_trpId)
  {
    v9 = [(ORCHSchemaORCHSubRequestStarted *)self trpId];
    v10 = [v9 dictionaryRepresentation];
    if (v10)
    {
      [v3 setObject:v10 forKeyedSubscript:@"trpId"];
    }

    else
    {
      v11 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v11 forKeyedSubscript:@"trpId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_trpId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_subRequestType;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(ORCHSchemaORCHNLRouterDecisionGenAIMetadata *)self->_genAIMetadata hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = [(ORCHSchemaORCHSubRequestStarted *)self trpId];
  v6 = [v4 trpId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_14;
  }

  v7 = [(ORCHSchemaORCHSubRequestStarted *)self trpId];
  if (v7)
  {
    v8 = v7;
    v9 = [(ORCHSchemaORCHSubRequestStarted *)self trpId];
    v10 = [v4 trpId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    subRequestType = self->_subRequestType;
    if (subRequestType != [v4 subRequestType])
    {
      goto LABEL_15;
    }
  }

  v5 = [(ORCHSchemaORCHSubRequestStarted *)self genAIMetadata];
  v6 = [v4 genAIMetadata];
  if ((v5 != 0) != (v6 == 0))
  {
    v13 = [(ORCHSchemaORCHSubRequestStarted *)self genAIMetadata];
    if (!v13)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = v13;
    v15 = [(ORCHSchemaORCHSubRequestStarted *)self genAIMetadata];
    v16 = [v4 genAIMetadata];
    v17 = [v15 isEqual:v16];

    if (v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_14:
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  v4 = [(ORCHSchemaORCHSubRequestStarted *)self trpId];

  if (v4)
  {
    v5 = [(ORCHSchemaORCHSubRequestStarted *)self trpId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v6 = [(ORCHSchemaORCHSubRequestStarted *)self genAIMetadata];

  v7 = v9;
  if (v6)
  {
    v8 = [(ORCHSchemaORCHSubRequestStarted *)self genAIMetadata];
    PBDataWriterWriteSubmessage();

    v7 = v9;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ORCHSchemaORCHSubRequestStarted;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(ORCHSchemaORCHSubRequestStarted *)self trpId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ORCHSchemaORCHSubRequestStarted *)self deleteTrpId];
  }

  v9 = [(ORCHSchemaORCHSubRequestStarted *)self genAIMetadata];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(ORCHSchemaORCHSubRequestStarted *)self deleteGenAIMetadata];
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