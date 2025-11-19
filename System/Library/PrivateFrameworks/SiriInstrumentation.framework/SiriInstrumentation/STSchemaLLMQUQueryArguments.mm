@interface STSchemaLLMQUQueryArguments
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (STSchemaLLMQUQueryArguments)initWithDictionary:(id)a3;
- (STSchemaLLMQUQueryArguments)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasSortOrder:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation STSchemaLLMQUQueryArguments

- (STSchemaLLMQUQueryArguments)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = STSchemaLLMQUQueryArguments;
  v5 = [(STSchemaLLMQUQueryArguments *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(STSchemaLLMQUQueryArguments *)v5 setLinkId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"isQuestionNeedingAnswer"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaLLMQUQueryArguments setIsQuestionNeedingAnswer:](v5, "setIsQuestionNeedingAnswer:", [v8 BOOLValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"sortOrder"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[STSchemaLLMQUQueryArguments setSortOrder:](v5, "setSortOrder:", [v9 intValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (STSchemaLLMQUQueryArguments)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(STSchemaLLMQUQueryArguments *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(STSchemaLLMQUQueryArguments *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[STSchemaLLMQUQueryArguments isQuestionNeedingAnswer](self, "isQuestionNeedingAnswer")}];
    [v3 setObject:v4 forKeyedSubscript:@"isQuestionNeedingAnswer"];
  }

  if (self->_linkId)
  {
    v5 = [(STSchemaLLMQUQueryArguments *)self linkId];
    v6 = [v5 dictionaryRepresentation];
    if (v6)
    {
      [v3 setObject:v6 forKeyedSubscript:@"linkId"];
    }

    else
    {
      v7 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v7 forKeyedSubscript:@"linkId"];
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    v8 = [(STSchemaLLMQUQueryArguments *)self sortOrder]- 1;
    if (v8 > 2)
    {
      v9 = @"STLLMQUMODELSORTORDER_UNKNOWN";
    }

    else
    {
      v9 = off_1E78E7788[v8];
    }

    [v3 setObject:v9 forKeyedSubscript:@"sortOrder"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_linkId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_isQuestionNeedingAnswer;
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
  v5 = 2654435761 * self->_sortOrder;
  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  v5 = [(STSchemaLLMQUQueryArguments *)self linkId];
  v6 = [v4 linkId];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

    goto LABEL_16;
  }

  v8 = [(STSchemaLLMQUQueryArguments *)self linkId];
  if (v8)
  {
    v9 = v8;
    v10 = [(STSchemaLLMQUQueryArguments *)self linkId];
    v11 = [v4 linkId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = v4[24];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  if (*&has)
  {
    isQuestionNeedingAnswer = self->_isQuestionNeedingAnswer;
    if (isQuestionNeedingAnswer == [v4 isQuestionNeedingAnswer])
    {
      has = self->_has;
      v14 = v4[24];
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
    sortOrder = self->_sortOrder;
    if (sortOrder != [v4 sortOrder])
    {
      goto LABEL_16;
    }
  }

  v18 = 1;
LABEL_17:

  return v18;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(STSchemaLLMQUQueryArguments *)self linkId];

  if (v4)
  {
    v5 = [(STSchemaLLMQUQueryArguments *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  v7 = v8;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v7 = v8;
  }
}

- (void)setHasSortOrder:(BOOL)a3
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
  v9.receiver = self;
  v9.super_class = STSchemaLLMQUQueryArguments;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(STSchemaLLMQUQueryArguments *)self linkId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(STSchemaLLMQUQueryArguments *)self deleteLinkId];
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