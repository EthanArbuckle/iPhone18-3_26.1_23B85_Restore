@interface STSchemaSTLLMQUQueryArgumentsTier1
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (STSchemaSTLLMQUQueryArgumentsTier1)initWithDictionary:(id)a3;
- (STSchemaSTLLMQUQueryArgumentsTier1)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasLlmquAppEntityStatus:(BOOL)a3;
- (void)setHasLlmquAppEntityType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation STSchemaSTLLMQUQueryArgumentsTier1

- (STSchemaSTLLMQUQueryArgumentsTier1)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = STSchemaSTLLMQUQueryArgumentsTier1;
  v5 = [(STSchemaSTLLMQUQueryArgumentsTier1 *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(STSchemaSTLLMQUQueryArgumentsTier1 *)v5 setLinkId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"eventType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaSTLLMQUQueryArgumentsTier1 setEventType:](v5, "setEventType:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"llmquAppEntityType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaSTLLMQUQueryArgumentsTier1 setLlmquAppEntityType:](v5, "setLlmquAppEntityType:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"llmquAppEntityStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaSTLLMQUQueryArgumentsTier1 setLlmquAppEntityStatus:](v5, "setLlmquAppEntityStatus:", [v10 intValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (STSchemaSTLLMQUQueryArgumentsTier1)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(STSchemaSTLLMQUQueryArgumentsTier1 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(STSchemaSTLLMQUQueryArgumentsTier1 *)self dictionaryRepresentation];
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
    v4 = [(STSchemaSTLLMQUQueryArgumentsTier1 *)self eventType]- 1;
    if (v4 > 3)
    {
      v5 = @"STLLMQUMODELEVENTTYPE_UNKNOWN";
    }

    else
    {
      v5 = off_1E78E7900[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"eventType"];
  }

  if (self->_linkId)
  {
    v6 = [(STSchemaSTLLMQUQueryArgumentsTier1 *)self linkId];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"linkId"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"linkId"];
    }
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v10 = [(STSchemaSTLLMQUQueryArgumentsTier1 *)self llmquAppEntityStatus]- 1;
    if (v10 > 0x18)
    {
      v11 = @"STLLMQUMODELAPPENTITYSTATUS_UNKNOWN";
    }

    else
    {
      v11 = off_1E78E7920[v10];
    }

    [v3 setObject:v11 forKeyedSubscript:@"llmquAppEntityStatus"];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v12 = [(STSchemaSTLLMQUQueryArgumentsTier1 *)self llmquAppEntityType]- 1;
    if (v12 > 0x10)
    {
      v13 = @"STLLMQUMODELAPPENTITYTYPE_UNKNOWN";
    }

    else
    {
      v13 = off_1E78E79E8[v12];
    }

    [v3 setObject:v13 forKeyedSubscript:@"llmquAppEntityType"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_linkId hash];
  if ((*&self->_has & 1) == 0)
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v4 = 2654435761 * self->_eventType;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = 2654435761 * self->_llmquAppEntityType;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v6 = 2654435761 * self->_llmquAppEntityStatus;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  v5 = [(STSchemaSTLLMQUQueryArgumentsTier1 *)self linkId];
  v6 = [v4 linkId];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

    goto LABEL_20;
  }

  v8 = [(STSchemaSTLLMQUQueryArgumentsTier1 *)self linkId];
  if (v8)
  {
    v9 = v8;
    v10 = [(STSchemaSTLLMQUQueryArgumentsTier1 *)self linkId];
    v11 = [v4 linkId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = v4[28];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_20:
    v20 = 0;
    goto LABEL_21;
  }

  if (*&has)
  {
    eventType = self->_eventType;
    if (eventType != [v4 eventType])
    {
      goto LABEL_20;
    }

    has = self->_has;
    v14 = v4[28];
  }

  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_20;
  }

  if (v16)
  {
    llmquAppEntityType = self->_llmquAppEntityType;
    if (llmquAppEntityType == [v4 llmquAppEntityType])
    {
      has = self->_has;
      v14 = v4[28];
      goto LABEL_16;
    }

    goto LABEL_20;
  }

LABEL_16:
  v18 = (*&has >> 2) & 1;
  if (v18 != ((v14 >> 2) & 1))
  {
    goto LABEL_20;
  }

  if (v18)
  {
    llmquAppEntityStatus = self->_llmquAppEntityStatus;
    if (llmquAppEntityStatus != [v4 llmquAppEntityStatus])
    {
      goto LABEL_20;
    }
  }

  v20 = 1;
LABEL_21:

  return v20;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(STSchemaSTLLMQUQueryArgumentsTier1 *)self linkId];

  if (v4)
  {
    v5 = [(STSchemaSTLLMQUQueryArgumentsTier1 *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  v7 = v8;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v7 = v8;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
    v7 = v8;
  }
}

- (void)setHasLlmquAppEntityStatus:(BOOL)a3
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

- (void)setHasLlmquAppEntityType:(BOOL)a3
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
  v10.receiver = self;
  v10.super_class = STSchemaSTLLMQUQueryArgumentsTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v10 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(STSchemaSTLLMQUQueryArgumentsTier1 *)self deleteEventType];
    [(STSchemaSTLLMQUQueryArgumentsTier1 *)self deleteLlmquAppEntityType];
    [(STSchemaSTLLMQUQueryArgumentsTier1 *)self deleteLlmquAppEntityStatus];
  }

  if ([v4 isConditionSet:4])
  {
    [(STSchemaSTLLMQUQueryArgumentsTier1 *)self deleteEventType];
    [(STSchemaSTLLMQUQueryArgumentsTier1 *)self deleteLlmquAppEntityType];
    [(STSchemaSTLLMQUQueryArgumentsTier1 *)self deleteLlmquAppEntityStatus];
  }

  if ([v4 isConditionSet:5])
  {
    [(STSchemaSTLLMQUQueryArgumentsTier1 *)self deleteEventType];
    [(STSchemaSTLLMQUQueryArgumentsTier1 *)self deleteLlmquAppEntityType];
    [(STSchemaSTLLMQUQueryArgumentsTier1 *)self deleteLlmquAppEntityStatus];
  }

  if ([v4 isConditionSet:6])
  {
    [(STSchemaSTLLMQUQueryArgumentsTier1 *)self deleteEventType];
    [(STSchemaSTLLMQUQueryArgumentsTier1 *)self deleteLlmquAppEntityType];
    [(STSchemaSTLLMQUQueryArgumentsTier1 *)self deleteLlmquAppEntityStatus];
  }

  if ([v4 isConditionSet:7])
  {
    [(STSchemaSTLLMQUQueryArgumentsTier1 *)self deleteEventType];
    [(STSchemaSTLLMQUQueryArgumentsTier1 *)self deleteLlmquAppEntityType];
    [(STSchemaSTLLMQUQueryArgumentsTier1 *)self deleteLlmquAppEntityStatus];
  }

  v6 = [(STSchemaSTLLMQUQueryArgumentsTier1 *)self linkId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(STSchemaSTLLMQUQueryArgumentsTier1 *)self deleteLinkId];
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