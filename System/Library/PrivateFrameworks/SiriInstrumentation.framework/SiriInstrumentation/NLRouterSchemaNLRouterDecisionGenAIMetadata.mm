@interface NLRouterSchemaNLRouterDecisionGenAIMetadata
- (BOOL)isEqual:(id)a3;
- (NLRouterSchemaNLRouterDecisionGenAIMetadata)initWithDictionary:(id)a3;
- (NLRouterSchemaNLRouterDecisionGenAIMetadata)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasCorrectionOutcome:(BOOL)a3;
- (void)setHasGenAIAppIntent:(BOOL)a3;
- (void)setHasRequestedGenAIAgent:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NLRouterSchemaNLRouterDecisionGenAIMetadata

- (NLRouterSchemaNLRouterDecisionGenAIMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = NLRouterSchemaNLRouterDecisionGenAIMetadata;
  v5 = [(NLRouterSchemaNLRouterDecisionGenAIMetadata *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"isExplicit"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLRouterSchemaNLRouterDecisionGenAIMetadata setIsExplicit:](v5, "setIsExplicit:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"genAIAppIntent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLRouterSchemaNLRouterDecisionGenAIMetadata setGenAIAppIntent:](v5, "setGenAIAppIntent:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"correctionOutcome"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLRouterSchemaNLRouterDecisionGenAIMetadata setCorrectionOutcome:](v5, "setCorrectionOutcome:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"requestedGenAIAgent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLRouterSchemaNLRouterDecisionGenAIMetadata setRequestedGenAIAgent:](v5, "setRequestedGenAIAgent:", [v9 intValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (NLRouterSchemaNLRouterDecisionGenAIMetadata)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NLRouterSchemaNLRouterDecisionGenAIMetadata *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NLRouterSchemaNLRouterDecisionGenAIMetadata *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 4) != 0)
  {
    v5 = [(NLRouterSchemaNLRouterDecisionGenAIMetadata *)self correctionOutcome];
    v6 = @"NLROUTERCORRECTIONOUTCOME_UNKNOWN";
    if (v5 == 1)
    {
      v6 = @"NLROUTERCORRECTIONOUTCOME_NONE";
    }

    if (v5 == 2)
    {
      v7 = @"NLROUTERCORRECTIONOUTCOME_UNDO";
    }

    else
    {
      v7 = v6;
    }

    [v3 setObject:v7 forKeyedSubscript:@"correctionOutcome"];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_16:
      v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[NLRouterSchemaNLRouterDecisionGenAIMetadata isExplicit](self, "isExplicit")}];
      [v3 setObject:v10 forKeyedSubscript:@"isExplicit"];

      if ((*&self->_has & 8) == 0)
      {
        goto LABEL_21;
      }

LABEL_17:
      v11 = [(NLRouterSchemaNLRouterDecisionGenAIMetadata *)self requestedGenAIAgent]- 1;
      if (v11 > 4)
      {
        v12 = @"GENAIAGENT_UNKNOWN";
      }

      else
      {
        v12 = off_1E78DB628[v11];
      }

      [v3 setObject:v12 forKeyedSubscript:@"requestedGenAIAgent"];
      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = [(NLRouterSchemaNLRouterDecisionGenAIMetadata *)self genAIAppIntent]- 1;
  if (v8 > 2)
  {
    v9 = @"NLROUTERDECISIONGENAIAPPINTENT_UNKNOWN";
  }

  else
  {
    v9 = off_1E78DB610[v8];
  }

  [v3 setObject:v9 forKeyedSubscript:@"genAIAppIntent"];
  has = self->_has;
  if (has)
  {
    goto LABEL_16;
  }

LABEL_4:
  if ((has & 8) != 0)
  {
    goto LABEL_17;
  }

LABEL_21:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_isExplicit;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_genAIAppIntent;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v4 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v5 = 0;
      return v3 ^ v2 ^ v4 ^ v5;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = 2654435761 * self->_correctionOutcome;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = 2654435761 * self->_requestedGenAIAgent;
  return v3 ^ v2 ^ v4 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  has = self->_has;
  v6 = v4[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_18;
  }

  if (*&has)
  {
    isExplicit = self->_isExplicit;
    if (isExplicit != [v4 isExplicit])
    {
      goto LABEL_18;
    }

    has = self->_has;
    v6 = v4[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_18;
  }

  if (v8)
  {
    genAIAppIntent = self->_genAIAppIntent;
    if (genAIAppIntent != [v4 genAIAppIntent])
    {
      goto LABEL_18;
    }

    has = self->_has;
    v6 = v4[24];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_18;
  }

  if (v10)
  {
    correctionOutcome = self->_correctionOutcome;
    if (correctionOutcome == [v4 correctionOutcome])
    {
      has = self->_has;
      v6 = v4[24];
      goto LABEL_14;
    }

LABEL_18:
    v14 = 0;
    goto LABEL_19;
  }

LABEL_14:
  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_18;
  }

  if (v12)
  {
    requestedGenAIAgent = self->_requestedGenAIAgent;
    if (requestedGenAIAgent != [v4 requestedGenAIAgent])
    {
      goto LABEL_18;
    }
  }

  v14 = 1;
LABEL_19:

  return v14;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    PBDataWriterWriteInt32Field();
  }

LABEL_6:
}

- (void)setHasRequestedGenAIAgent:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasCorrectionOutcome:(BOOL)a3
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

- (void)setHasGenAIAppIntent:(BOOL)a3
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

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end