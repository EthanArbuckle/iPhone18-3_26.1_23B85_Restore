@interface ORCHSchemaNLRouterRewrittenUtteranceTier1
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ORCHSchemaNLRouterRewrittenUtteranceTier1)initWithDictionary:(id)a3;
- (ORCHSchemaNLRouterRewrittenUtteranceTier1)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation ORCHSchemaNLRouterRewrittenUtteranceTier1

- (ORCHSchemaNLRouterRewrittenUtteranceTier1)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ORCHSchemaNLRouterRewrittenUtteranceTier1;
  v5 = [(ORCHSchemaNLRouterRewrittenUtteranceTier1 *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"subRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ORCHSchemaNLRouterRewrittenUtteranceTier1 *)v5 setSubRequestId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"utteranceText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(ORCHSchemaNLRouterRewrittenUtteranceTier1 *)v5 setUtteranceText:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"utteranceIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaNLRouterRewrittenUtteranceTier1 setUtteranceIndex:](v5, "setUtteranceIndex:", [v10 intValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (ORCHSchemaNLRouterRewrittenUtteranceTier1)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ORCHSchemaNLRouterRewrittenUtteranceTier1 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ORCHSchemaNLRouterRewrittenUtteranceTier1 *)self dictionaryRepresentation];
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
  if (self->_subRequestId)
  {
    v4 = [(ORCHSchemaNLRouterRewrittenUtteranceTier1 *)self subRequestId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"subRequestId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"subRequestId"];
    }
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[ORCHSchemaNLRouterRewrittenUtteranceTier1 utteranceIndex](self, "utteranceIndex")}];
    [v3 setObject:v7 forKeyedSubscript:@"utteranceIndex"];
  }

  if (self->_utteranceText)
  {
    v8 = [(ORCHSchemaNLRouterRewrittenUtteranceTier1 *)self utteranceText];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"utteranceText"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_subRequestId hash];
  v4 = [(NSString *)self->_utteranceText hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_utteranceIndex;
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

  v5 = [(ORCHSchemaNLRouterRewrittenUtteranceTier1 *)self subRequestId];
  v6 = [v4 subRequestId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(ORCHSchemaNLRouterRewrittenUtteranceTier1 *)self subRequestId];
  if (v7)
  {
    v8 = v7;
    v9 = [(ORCHSchemaNLRouterRewrittenUtteranceTier1 *)self subRequestId];
    v10 = [v4 subRequestId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(ORCHSchemaNLRouterRewrittenUtteranceTier1 *)self utteranceText];
  v6 = [v4 utteranceText];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(ORCHSchemaNLRouterRewrittenUtteranceTier1 *)self utteranceText];
  if (v12)
  {
    v13 = v12;
    v14 = [(ORCHSchemaNLRouterRewrittenUtteranceTier1 *)self utteranceText];
    v15 = [v4 utteranceText];
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
    if ((*&self->_has & 1) == 0 || (utteranceIndex = self->_utteranceIndex, utteranceIndex == [v4 utteranceIndex]))
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
  v4 = [(ORCHSchemaNLRouterRewrittenUtteranceTier1 *)self subRequestId];

  if (v4)
  {
    v5 = [(ORCHSchemaNLRouterRewrittenUtteranceTier1 *)self subRequestId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(ORCHSchemaNLRouterRewrittenUtteranceTier1 *)self utteranceText];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = v8;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    v7 = v8;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ORCHSchemaNLRouterRewrittenUtteranceTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v10 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(ORCHSchemaNLRouterRewrittenUtteranceTier1 *)self deleteUtteranceText];
  }

  if ([v4 isConditionSet:4])
  {
    [(ORCHSchemaNLRouterRewrittenUtteranceTier1 *)self deleteUtteranceText];
  }

  if ([v4 isConditionSet:5])
  {
    [(ORCHSchemaNLRouterRewrittenUtteranceTier1 *)self deleteUtteranceText];
  }

  if ([v4 isConditionSet:6])
  {
    [(ORCHSchemaNLRouterRewrittenUtteranceTier1 *)self deleteUtteranceText];
  }

  if ([v4 isConditionSet:7])
  {
    [(ORCHSchemaNLRouterRewrittenUtteranceTier1 *)self deleteUtteranceText];
  }

  v6 = [(ORCHSchemaNLRouterRewrittenUtteranceTier1 *)self subRequestId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ORCHSchemaNLRouterRewrittenUtteranceTier1 *)self deleteSubRequestId];
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