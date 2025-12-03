@interface ORCHSchemaNLRouterRewrittenUtteranceTier1
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ORCHSchemaNLRouterRewrittenUtteranceTier1)initWithDictionary:(id)dictionary;
- (ORCHSchemaNLRouterRewrittenUtteranceTier1)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation ORCHSchemaNLRouterRewrittenUtteranceTier1

- (ORCHSchemaNLRouterRewrittenUtteranceTier1)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = ORCHSchemaNLRouterRewrittenUtteranceTier1;
  v5 = [(ORCHSchemaNLRouterRewrittenUtteranceTier1 *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"subRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ORCHSchemaNLRouterRewrittenUtteranceTier1 *)v5 setSubRequestId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"utteranceText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(ORCHSchemaNLRouterRewrittenUtteranceTier1 *)v5 setUtteranceText:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"utteranceIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaNLRouterRewrittenUtteranceTier1 setUtteranceIndex:](v5, "setUtteranceIndex:", [v10 intValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (ORCHSchemaNLRouterRewrittenUtteranceTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ORCHSchemaNLRouterRewrittenUtteranceTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ORCHSchemaNLRouterRewrittenUtteranceTier1 *)self dictionaryRepresentation];
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
  if (self->_subRequestId)
  {
    subRequestId = [(ORCHSchemaNLRouterRewrittenUtteranceTier1 *)self subRequestId];
    dictionaryRepresentation = [subRequestId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"subRequestId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"subRequestId"];
    }
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[ORCHSchemaNLRouterRewrittenUtteranceTier1 utteranceIndex](self, "utteranceIndex")}];
    [dictionary setObject:v7 forKeyedSubscript:@"utteranceIndex"];
  }

  if (self->_utteranceText)
  {
    utteranceText = [(ORCHSchemaNLRouterRewrittenUtteranceTier1 *)self utteranceText];
    v9 = [utteranceText copy];
    [dictionary setObject:v9 forKeyedSubscript:@"utteranceText"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  subRequestId = [(ORCHSchemaNLRouterRewrittenUtteranceTier1 *)self subRequestId];
  subRequestId2 = [equalCopy subRequestId];
  if ((subRequestId != 0) == (subRequestId2 == 0))
  {
    goto LABEL_11;
  }

  subRequestId3 = [(ORCHSchemaNLRouterRewrittenUtteranceTier1 *)self subRequestId];
  if (subRequestId3)
  {
    v8 = subRequestId3;
    subRequestId4 = [(ORCHSchemaNLRouterRewrittenUtteranceTier1 *)self subRequestId];
    subRequestId5 = [equalCopy subRequestId];
    v11 = [subRequestId4 isEqual:subRequestId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  subRequestId = [(ORCHSchemaNLRouterRewrittenUtteranceTier1 *)self utteranceText];
  subRequestId2 = [equalCopy utteranceText];
  if ((subRequestId != 0) == (subRequestId2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  utteranceText = [(ORCHSchemaNLRouterRewrittenUtteranceTier1 *)self utteranceText];
  if (utteranceText)
  {
    v13 = utteranceText;
    utteranceText2 = [(ORCHSchemaNLRouterRewrittenUtteranceTier1 *)self utteranceText];
    utteranceText3 = [equalCopy utteranceText];
    v16 = [utteranceText2 isEqual:utteranceText3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (equalCopy[28] & 1))
  {
    if ((*&self->_has & 1) == 0 || (utteranceIndex = self->_utteranceIndex, utteranceIndex == [equalCopy utteranceIndex]))
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

- (void)writeTo:(id)to
{
  toCopy = to;
  subRequestId = [(ORCHSchemaNLRouterRewrittenUtteranceTier1 *)self subRequestId];

  if (subRequestId)
  {
    subRequestId2 = [(ORCHSchemaNLRouterRewrittenUtteranceTier1 *)self subRequestId];
    PBDataWriterWriteSubmessage();
  }

  utteranceText = [(ORCHSchemaNLRouterRewrittenUtteranceTier1 *)self utteranceText];

  if (utteranceText)
  {
    PBDataWriterWriteStringField();
  }

  v7 = toCopy;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    v7 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v10.receiver = self;
  v10.super_class = ORCHSchemaNLRouterRewrittenUtteranceTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v10 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(ORCHSchemaNLRouterRewrittenUtteranceTier1 *)self deleteUtteranceText];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(ORCHSchemaNLRouterRewrittenUtteranceTier1 *)self deleteUtteranceText];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(ORCHSchemaNLRouterRewrittenUtteranceTier1 *)self deleteUtteranceText];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(ORCHSchemaNLRouterRewrittenUtteranceTier1 *)self deleteUtteranceText];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(ORCHSchemaNLRouterRewrittenUtteranceTier1 *)self deleteUtteranceText];
  }

  subRequestId = [(ORCHSchemaNLRouterRewrittenUtteranceTier1 *)self subRequestId];
  v7 = [subRequestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
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