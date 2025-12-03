@interface POMMESSchemaPOMMESKnowledgeFallbackOffered
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (POMMESSchemaPOMMESKnowledgeFallbackOffered)initWithDictionary:(id)dictionary;
- (POMMESSchemaPOMMESKnowledgeFallbackOffered)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasOfferedAgent:(BOOL)agent;
- (void)writeTo:(id)to;
@end

@implementation POMMESSchemaPOMMESKnowledgeFallbackOffered

- (POMMESSchemaPOMMESKnowledgeFallbackOffered)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = POMMESSchemaPOMMESKnowledgeFallbackOffered;
  v5 = [(POMMESSchemaPOMMESKnowledgeFallbackOffered *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"pommesSessionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(POMMESSchemaPOMMESKnowledgeFallbackOffered *)v5 setPommesSessionId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"isKnowledgeFallbackConfirmationShown"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESKnowledgeFallbackOffered setIsKnowledgeFallbackConfirmationShown:](v5, "setIsKnowledgeFallbackConfirmationShown:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"offeredAgent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESKnowledgeFallbackOffered setOfferedAgent:](v5, "setOfferedAgent:", [v9 intValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (POMMESSchemaPOMMESKnowledgeFallbackOffered)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(POMMESSchemaPOMMESKnowledgeFallbackOffered *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(POMMESSchemaPOMMESKnowledgeFallbackOffered *)self dictionaryRepresentation];
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
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[POMMESSchemaPOMMESKnowledgeFallbackOffered isKnowledgeFallbackConfirmationShown](self, "isKnowledgeFallbackConfirmationShown")}];
    [dictionary setObject:v5 forKeyedSubscript:@"isKnowledgeFallbackConfirmationShown"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [(POMMESSchemaPOMMESKnowledgeFallbackOffered *)self offeredAgent]- 1;
    if (v6 > 4)
    {
      v7 = @"GENAIAGENT_UNKNOWN";
    }

    else
    {
      v7 = off_1E78E0E80[v6];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"offeredAgent"];
  }

  if (self->_pommesSessionId)
  {
    pommesSessionId = [(POMMESSchemaPOMMESKnowledgeFallbackOffered *)self pommesSessionId];
    dictionaryRepresentation = [pommesSessionId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"pommesSessionId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"pommesSessionId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_pommesSessionId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_isKnowledgeFallbackConfirmationShown;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5;
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_offeredAgent;
  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  pommesSessionId = [(POMMESSchemaPOMMESKnowledgeFallbackOffered *)self pommesSessionId];
  pommesSessionId2 = [equalCopy pommesSessionId];
  v7 = pommesSessionId2;
  if ((pommesSessionId != 0) == (pommesSessionId2 == 0))
  {

    goto LABEL_16;
  }

  pommesSessionId3 = [(POMMESSchemaPOMMESKnowledgeFallbackOffered *)self pommesSessionId];
  if (pommesSessionId3)
  {
    v9 = pommesSessionId3;
    pommesSessionId4 = [(POMMESSchemaPOMMESKnowledgeFallbackOffered *)self pommesSessionId];
    pommesSessionId5 = [equalCopy pommesSessionId];
    v12 = [pommesSessionId4 isEqual:pommesSessionId5];

    if (!v12)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = equalCopy[24];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  if (*&has)
  {
    isKnowledgeFallbackConfirmationShown = self->_isKnowledgeFallbackConfirmationShown;
    if (isKnowledgeFallbackConfirmationShown == [equalCopy isKnowledgeFallbackConfirmationShown])
    {
      has = self->_has;
      v14 = equalCopy[24];
      goto LABEL_12;
    }

    goto LABEL_16;
  }

LABEL_12:
  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_16;
  }

  if (v16)
  {
    offeredAgent = self->_offeredAgent;
    if (offeredAgent != [equalCopy offeredAgent])
    {
      goto LABEL_16;
    }
  }

  v18 = 1;
LABEL_17:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  pommesSessionId = [(POMMESSchemaPOMMESKnowledgeFallbackOffered *)self pommesSessionId];

  if (pommesSessionId)
  {
    pommesSessionId2 = [(POMMESSchemaPOMMESKnowledgeFallbackOffered *)self pommesSessionId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  v7 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v7 = toCopy;
  }
}

- (void)setHasOfferedAgent:(BOOL)agent
{
  if (agent)
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
  v9.receiver = self;
  v9.super_class = POMMESSchemaPOMMESKnowledgeFallbackOffered;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(POMMESSchemaPOMMESKnowledgeFallbackOffered *)self pommesSessionId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(POMMESSchemaPOMMESKnowledgeFallbackOffered *)self deletePommesSessionId];
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