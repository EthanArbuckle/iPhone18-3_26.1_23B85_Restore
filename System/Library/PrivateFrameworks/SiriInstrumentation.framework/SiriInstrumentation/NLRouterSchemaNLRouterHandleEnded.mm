@interface NLRouterSchemaNLRouterHandleEnded
- (BOOL)isEqual:(id)equal;
- (NLRouterSchemaNLRouterHandleEnded)initWithDictionary:(id)dictionary;
- (NLRouterSchemaNLRouterHandleEnded)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasRewrittenUtteranceCount:(BOOL)count;
- (void)setHasRoutingDecisionSource:(BOOL)source;
- (void)writeTo:(id)to;
@end

@implementation NLRouterSchemaNLRouterHandleEnded

- (NLRouterSchemaNLRouterHandleEnded)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = NLRouterSchemaNLRouterHandleEnded;
  v5 = [(NLRouterSchemaNLRouterHandleEnded *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"routingDecisionType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLRouterSchemaNLRouterHandleEnded setRoutingDecisionType:](v5, "setRoutingDecisionType:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"routingDecisionSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLRouterSchemaNLRouterHandleEnded setRoutingDecisionSource:](v5, "setRoutingDecisionSource:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"rewrittenUtteranceCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLRouterSchemaNLRouterHandleEnded setRewrittenUtteranceCount:](v5, "setRewrittenUtteranceCount:", [v8 unsignedIntValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"genAIMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[NLRouterSchemaNLRouterDecisionGenAIMetadata alloc] initWithDictionary:v9];
      [(NLRouterSchemaNLRouterHandleEnded *)v5 setGenAIMetadata:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"overrideMetadata"];
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

- (NLRouterSchemaNLRouterHandleEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLRouterSchemaNLRouterHandleEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLRouterSchemaNLRouterHandleEnded *)self dictionaryRepresentation];
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
  if (self->_genAIMetadata)
  {
    genAIMetadata = [(NLRouterSchemaNLRouterHandleEnded *)self genAIMetadata];
    dictionaryRepresentation = [genAIMetadata dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"genAIMetadata"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"genAIMetadata"];
    }
  }

  if (self->_overrideMetadata)
  {
    overrideMetadata = [(NLRouterSchemaNLRouterHandleEnded *)self overrideMetadata];
    dictionaryRepresentation2 = [overrideMetadata dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"overrideMetadata"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"overrideMetadata"];
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

    [dictionary setObject:v13 forKeyedSubscript:@"routingDecisionSource"];
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NLRouterSchemaNLRouterHandleEnded rewrittenUtteranceCount](self, "rewrittenUtteranceCount")}];
  [dictionary setObject:v11 forKeyedSubscript:@"rewrittenUtteranceCount"];

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

    [dictionary setObject:v15 forKeyedSubscript:@"routingDecisionType"];
  }

LABEL_24:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  has = self->_has;
  v6 = equalCopy[40];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_23;
  }

  if (*&has)
  {
    routingDecisionType = self->_routingDecisionType;
    if (routingDecisionType != [equalCopy routingDecisionType])
    {
      goto LABEL_23;
    }

    has = self->_has;
    v6 = equalCopy[40];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      routingDecisionSource = self->_routingDecisionSource;
      if (routingDecisionSource != [equalCopy routingDecisionSource])
      {
        goto LABEL_23;
      }

      has = self->_has;
      v6 = equalCopy[40];
    }

    v10 = (*&has >> 2) & 1;
    if (v10 != ((v6 >> 2) & 1))
    {
      goto LABEL_23;
    }

    if (v10)
    {
      rewrittenUtteranceCount = self->_rewrittenUtteranceCount;
      if (rewrittenUtteranceCount != [equalCopy rewrittenUtteranceCount])
      {
        goto LABEL_23;
      }
    }

    genAIMetadata = [(NLRouterSchemaNLRouterHandleEnded *)self genAIMetadata];
    genAIMetadata2 = [equalCopy genAIMetadata];
    if ((genAIMetadata != 0) == (genAIMetadata2 == 0))
    {
      goto LABEL_22;
    }

    genAIMetadata3 = [(NLRouterSchemaNLRouterHandleEnded *)self genAIMetadata];
    if (genAIMetadata3)
    {
      v15 = genAIMetadata3;
      genAIMetadata4 = [(NLRouterSchemaNLRouterHandleEnded *)self genAIMetadata];
      genAIMetadata5 = [equalCopy genAIMetadata];
      v18 = [genAIMetadata4 isEqual:genAIMetadata5];

      if (!v18)
      {
        goto LABEL_23;
      }
    }

    else
    {
    }

    genAIMetadata = [(NLRouterSchemaNLRouterHandleEnded *)self overrideMetadata];
    genAIMetadata2 = [equalCopy overrideMetadata];
    if ((genAIMetadata != 0) != (genAIMetadata2 == 0))
    {
      overrideMetadata = [(NLRouterSchemaNLRouterHandleEnded *)self overrideMetadata];
      if (!overrideMetadata)
      {

LABEL_26:
        v24 = 1;
        goto LABEL_24;
      }

      v20 = overrideMetadata;
      overrideMetadata2 = [(NLRouterSchemaNLRouterHandleEnded *)self overrideMetadata];
      overrideMetadata3 = [equalCopy overrideMetadata];
      v23 = [overrideMetadata2 isEqual:overrideMetadata3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
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
  genAIMetadata = [(NLRouterSchemaNLRouterHandleEnded *)self genAIMetadata];

  if (genAIMetadata)
  {
    genAIMetadata2 = [(NLRouterSchemaNLRouterHandleEnded *)self genAIMetadata];
    PBDataWriterWriteSubmessage();
  }

  overrideMetadata = [(NLRouterSchemaNLRouterHandleEnded *)self overrideMetadata];

  v8 = toCopy;
  if (overrideMetadata)
  {
    overrideMetadata2 = [(NLRouterSchemaNLRouterHandleEnded *)self overrideMetadata];
    PBDataWriterWriteSubmessage();

    v8 = toCopy;
  }
}

- (void)setHasRewrittenUtteranceCount:(BOOL)count
{
  if (count)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasRoutingDecisionSource:(BOOL)source
{
  if (source)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = NLRouterSchemaNLRouterHandleEnded;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  genAIMetadata = [(NLRouterSchemaNLRouterHandleEnded *)self genAIMetadata];
  v7 = [genAIMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(NLRouterSchemaNLRouterHandleEnded *)self deleteGenAIMetadata];
  }

  overrideMetadata = [(NLRouterSchemaNLRouterHandleEnded *)self overrideMetadata];
  v10 = [overrideMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
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