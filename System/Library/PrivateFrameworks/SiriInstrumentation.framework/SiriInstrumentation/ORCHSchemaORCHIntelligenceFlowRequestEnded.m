@interface ORCHSchemaORCHIntelligenceFlowRequestEnded
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ORCHSchemaORCHIntelligenceFlowRequestEnded)initWithDictionary:(id)a3;
- (ORCHSchemaORCHIntelligenceFlowRequestEnded)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation ORCHSchemaORCHIntelligenceFlowRequestEnded

- (ORCHSchemaORCHIntelligenceFlowRequestEnded)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ORCHSchemaORCHIntelligenceFlowRequestEnded;
  v5 = [(ORCHSchemaORCHIntelligenceFlowRequestEnded *)&v9 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"shimAction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHIntelligenceFlowRequestEnded setShimAction:](v5, "setShimAction:", [v6 intValue]);
    }

    v7 = v5;
  }

  return v5;
}

- (ORCHSchemaORCHIntelligenceFlowRequestEnded)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHIntelligenceFlowRequestEnded *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ORCHSchemaORCHIntelligenceFlowRequestEnded *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [(ORCHSchemaORCHIntelligenceFlowRequestEnded *)self shimAction]- 1;
    if (v4 > 6)
    {
      v5 = @"ORCHSHIMACTION_UNKNOWN";
    }

    else
    {
      v5 = off_1E78DEBD0[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"shimAction"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761 * self->_shimAction;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = 0;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (v4[12] & 1))
    {
      if ((*&self->_has & 1) == 0 || (shimAction = self->_shimAction, shimAction == [v4 shimAction]))
      {
        v6 = 1;
      }
    }
  }

  return v6;
}

- (void)writeTo:(id)a3
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