@interface ORCHSchemaORCHNLRouterDecisionGenAIMetadata
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ORCHSchemaORCHNLRouterDecisionGenAIMetadata)initWithDictionary:(id)a3;
- (ORCHSchemaORCHNLRouterDecisionGenAIMetadata)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasGenAIAppIntent:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ORCHSchemaORCHNLRouterDecisionGenAIMetadata

- (ORCHSchemaORCHNLRouterDecisionGenAIMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ORCHSchemaORCHNLRouterDecisionGenAIMetadata;
  v5 = [(ORCHSchemaORCHNLRouterDecisionGenAIMetadata *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"isExplicit"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHNLRouterDecisionGenAIMetadata setIsExplicit:](v5, "setIsExplicit:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"genAIAppIntent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHNLRouterDecisionGenAIMetadata setGenAIAppIntent:](v5, "setGenAIAppIntent:", [v7 intValue]);
    }

    v8 = v5;
  }

  return v5;
}

- (ORCHSchemaORCHNLRouterDecisionGenAIMetadata)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHNLRouterDecisionGenAIMetadata *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ORCHSchemaORCHNLRouterDecisionGenAIMetadata *)self dictionaryRepresentation];
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
  if ((has & 2) != 0)
  {
    v5 = [(ORCHSchemaORCHNLRouterDecisionGenAIMetadata *)self genAIAppIntent]- 1;
    if (v5 > 2)
    {
      v6 = @"ORCHNLROUTERDECISIONGENAIAPPINTENT_UNKNOWN";
    }

    else
    {
      v6 = off_1E78DED80[v5];
    }

    [v3 setObject:v6 forKeyedSubscript:@"genAIAppIntent"];
    has = self->_has;
  }

  if (has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[ORCHSchemaORCHNLRouterDecisionGenAIMetadata isExplicit](self, "isExplicit")}];
    [v3 setObject:v7 forKeyedSubscript:@"isExplicit"];
  }

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
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_genAIAppIntent;
  return v3 ^ v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  has = self->_has;
  v6 = v4[16];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_10;
  }

  if (*&has)
  {
    isExplicit = self->_isExplicit;
    if (isExplicit != [v4 isExplicit])
    {
LABEL_10:
      v10 = 0;
      goto LABEL_11;
    }

    has = self->_has;
    v6 = v4[16];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_10;
  }

  if (v8)
  {
    genAIAppIntent = self->_genAIAppIntent;
    if (genAIAppIntent != [v4 genAIAppIntent])
    {
      goto LABEL_10;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v6 = v4;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    v4 = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }
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