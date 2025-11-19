@interface NLRouterSchemaNLRouterHandleEnded
- (BOOL)isEqual:(id)a3;
- (NLRouterSchemaNLRouterHandleEnded)initWithDictionary:(id)a3;
- (NLRouterSchemaNLRouterHandleEnded)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasRewrittenUtteranceCount:(BOOL)a3;
- (void)setHasRoutingDecisionSource:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NLRouterSchemaNLRouterHandleEnded

- (NLRouterSchemaNLRouterHandleEnded)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = NLRouterSchemaNLRouterHandleEnded;
  v5 = [(NLRouterSchemaNLRouterHandleEnded *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"routingDecisionType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLRouterSchemaNLRouterHandleEnded setRoutingDecisionType:](v5, "setRoutingDecisionType:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"routingDecisionSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLRouterSchemaNLRouterHandleEnded setRoutingDecisionSource:](v5, "setRoutingDecisionSource:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"rewrittenUtteranceCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLRouterSchemaNLRouterHandleEnded setRewrittenUtteranceCount:](v5, "setRewrittenUtteranceCount:", [v8 unsignedIntValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"genAIMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[NLRouterSchemaNLRouterDecisionGenAIMetadata alloc] initWithDictionary:v9];
      [(NLRouterSchemaNLRouterHandleEnded *)v5 setGenAIMetadata:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"overrideMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[NLRouterSchemaNLRouterOverrideMetadata alloc] initWithDictionary:v11];
      [(NLRouterSchemaNLRouterHandleEnded *)v5 setOverrideMetadata:v12];
    }

    v13 = v5;
  }

  return v5;
}

- (NLRouterSchemaNLRouterHandleEnded)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NLRouterSchemaNLRouterHandleEnded *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NLRouterSchemaNLRouterHandleEnded *)self dictionaryRepresentation];
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
    v4 = [(NLRouterSchemaNLRouterHandleEnded *)self genAIMetadata];
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

  if (self->_overrideMetadata)
  {
    v7 = [(NLRouterSchemaNLRouterHandleEnded *)self overrideMetadata];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"overrideMetadata"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"overrideMetadata"];
    }
  }

  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_13;
    }

LABEL_16:
    v12 = [(NLRouterSchemaNLRouterHandleEnded *)self routingDecisionSource]- 1;
    if (v12 > 4)
    {
      v13 = @"NLROUTERDECISIONSOURCE_UNKNOWN";
    }

    else
    {
      v13 = off_1E78DB650[v12];
    }

    [v3 setObject:v13 forKeyedSubscript:@"routingDecisionSource"];
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NLRouterSchemaNLRouterHandleEnded rewrittenUtteranceCount](self, "rewrittenUtteranceCount")}];
  [v3 setObject:v11 forKeyedSubscript:@"rewrittenUtteranceCount"];

  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  if (has)
  {
LABEL_20:
    v14 = [(NLRouterSchemaNLRouterHandleEnded *)self routingDecisionType]- 1;
    if (v14 > 7)
    {
      v15 = @"NLROUTERDECISIONTYPE_UNKNOWN";
    }

    else
    {
      v15 = off_1E78DB678[v14];
    }

    [v3 setObject:v15 forKeyedSubscript:@"routingDecisionType"];
  }

LABEL_24:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v3 = 2654435761 * self->_routingDecisionType;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = 2654435761 * self->_routingDecisionSource;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v5 = 2654435761 * self->_rewrittenUtteranceCount;
LABEL_8:
  v6 = v4 ^ v3 ^ v5 ^ [(NLRouterSchemaNLRouterDecisionGenAIMetadata *)self->_genAIMetadata hash];
  return v6 ^ [(NLRouterSchemaNLRouterOverrideMetadata *)self->_overrideMetadata hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  has = self->_has;
  v6 = v4[40];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_23;
  }

  if (*&has)
  {
    routingDecisionType = self->_routingDecisionType;
    if (routingDecisionType != [v4 routingDecisionType])
    {
      goto LABEL_23;
    }

    has = self->_has;
    v6 = v4[40];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      routingDecisionSource = self->_routingDecisionSource;
      if (routingDecisionSource != [v4 routingDecisionSource])
      {
        goto LABEL_23;
      }

      has = self->_has;
      v6 = v4[40];
    }

    v10 = (*&has >> 2) & 1;
    if (v10 != ((v6 >> 2) & 1))
    {
      goto LABEL_23;
    }

    if (v10)
    {
      rewrittenUtteranceCount = self->_rewrittenUtteranceCount;
      if (rewrittenUtteranceCount != [v4 rewrittenUtteranceCount])
      {
        goto LABEL_23;
      }
    }

    v12 = [(NLRouterSchemaNLRouterHandleEnded *)self genAIMetadata];
    v13 = [v4 genAIMetadata];
    if ((v12 != 0) == (v13 == 0))
    {
      goto LABEL_22;
    }

    v14 = [(NLRouterSchemaNLRouterHandleEnded *)self genAIMetadata];
    if (v14)
    {
      v15 = v14;
      v16 = [(NLRouterSchemaNLRouterHandleEnded *)self genAIMetadata];
      v17 = [v4 genAIMetadata];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_23;
      }
    }

    else
    {
    }

    v12 = [(NLRouterSchemaNLRouterHandleEnded *)self overrideMetadata];
    v13 = [v4 overrideMetadata];
    if ((v12 != 0) != (v13 == 0))
    {
      v19 = [(NLRouterSchemaNLRouterHandleEnded *)self overrideMetadata];
      if (!v19)
      {

LABEL_26:
        v24 = 1;
        goto LABEL_24;
      }

      v20 = v19;
      v21 = [(NLRouterSchemaNLRouterHandleEnded *)self overrideMetadata];
      v22 = [v4 overrideMetadata];
      v23 = [v21 isEqual:v22];

      if (v23)
      {
        goto LABEL_26;
      }
    }

    else
    {
LABEL_22:
    }
  }

LABEL_23:
  v24 = 0;
LABEL_24:

  return v24;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteUint32Field();
  }

LABEL_5:
  v5 = [(NLRouterSchemaNLRouterHandleEnded *)self genAIMetadata];

  if (v5)
  {
    v6 = [(NLRouterSchemaNLRouterHandleEnded *)self genAIMetadata];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(NLRouterSchemaNLRouterHandleEnded *)self overrideMetadata];

  v8 = v10;
  if (v7)
  {
    v9 = [(NLRouterSchemaNLRouterHandleEnded *)self overrideMetadata];
    PBDataWriterWriteSubmessage();

    v8 = v10;
  }
}

- (void)setHasRewrittenUtteranceCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasRoutingDecisionSource:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NLRouterSchemaNLRouterHandleEnded;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(NLRouterSchemaNLRouterHandleEnded *)self genAIMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(NLRouterSchemaNLRouterHandleEnded *)self deleteGenAIMetadata];
  }

  v9 = [(NLRouterSchemaNLRouterHandleEnded *)self overrideMetadata];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(NLRouterSchemaNLRouterHandleEnded *)self deleteOverrideMetadata];
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