@interface GATSchemaGATGenerativeRequestEventStarted
- (BOOL)isEqual:(id)equal;
- (GATSchemaGATGenerativeRequestEventStarted)initWithDictionary:(id)dictionary;
- (GATSchemaGATGenerativeRequestEventStarted)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasGenAIAgentUsed:(BOOL)used;
- (void)setHasLlmAgentName:(BOOL)name;
- (void)setHasMediaQAUseCase:(BOOL)case;
- (void)writeTo:(id)to;
@end

@implementation GATSchemaGATGenerativeRequestEventStarted

- (GATSchemaGATGenerativeRequestEventStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = GATSchemaGATGenerativeRequestEventStarted;
  v5 = [(GATSchemaGATGenerativeRequestEventStarted *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"usecase"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GATSchemaGATGenerativeRequestEventStarted setUsecase:](v5, "setUsecase:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"mediaQAUseCase"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GATSchemaGATGenerativeRequestEventStarted setMediaQAUseCase:](v5, "setMediaQAUseCase:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"llmAgentName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GATSchemaGATGenerativeRequestEventStarted setLlmAgentName:](v5, "setLlmAgentName:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"genAIAgentUsed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GATSchemaGATGenerativeRequestEventStarted setGenAIAgentUsed:](v5, "setGenAIAgentUsed:", [v9 intValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (GATSchemaGATGenerativeRequestEventStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(GATSchemaGATGenerativeRequestEventStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(GATSchemaGATGenerativeRequestEventStarted *)self dictionaryRepresentation];
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
  if ((has & 8) != 0)
  {
    v5 = [(GATSchemaGATGenerativeRequestEventStarted *)self genAIAgentUsed]- 1;
    if (v5 > 4)
    {
      v6 = @"GENAIAGENT_UNKNOWN";
    }

    else
    {
      v6 = off_1E78D7080[v5];
    }

    [dictionary setObject:v6 forKeyedSubscript:@"genAIAgentUsed"];
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_14:
      v8 = [(GATSchemaGATGenerativeRequestEventStarted *)self mediaQAUseCase]- 1;
      if (v8 > 3)
      {
        v9 = @"GATMEDIAQNAUSECASE_UNKNOWN";
      }

      else
      {
        v9 = off_1E78D70A8[v8];
      }

      [dictionary setObject:v9 forKeyedSubscript:@"mediaQAUseCase"];
      if ((*&self->_has & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  if ([(GATSchemaGATGenerativeRequestEventStarted *)self llmAgentName]== 1)
  {
    v7 = @"GATLLMAGENT_OPENAI";
  }

  else
  {
    v7 = @"GATLLMAGENT_UNKNOWN";
  }

  [dictionary setObject:v7 forKeyedSubscript:@"llmAgentName"];
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_14;
  }

LABEL_4:
  if (has)
  {
LABEL_18:
    v10 = [(GATSchemaGATGenerativeRequestEventStarted *)self usecase]- 1;
    if (v10 > 5)
    {
      v11 = @"GATUSECASE_UNKNOWN";
    }

    else
    {
      v11 = off_1E78D70C8[v10];
    }

    [dictionary setObject:v11 forKeyedSubscript:@"usecase"];
  }

LABEL_22:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_usecase;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_mediaQAUseCase;
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
  v4 = 2654435761 * self->_llmAgentName;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = 2654435761 * self->_genAIAgentUsed;
  return v3 ^ v2 ^ v4 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  has = self->_has;
  v6 = equalCopy[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_18;
  }

  if (*&has)
  {
    usecase = self->_usecase;
    if (usecase != [equalCopy usecase])
    {
      goto LABEL_18;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_18;
  }

  if (v8)
  {
    mediaQAUseCase = self->_mediaQAUseCase;
    if (mediaQAUseCase != [equalCopy mediaQAUseCase])
    {
      goto LABEL_18;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_18;
  }

  if (v10)
  {
    llmAgentName = self->_llmAgentName;
    if (llmAgentName == [equalCopy llmAgentName])
    {
      has = self->_has;
      v6 = equalCopy[24];
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
    genAIAgentUsed = self->_genAIAgentUsed;
    if (genAIAgentUsed != [equalCopy genAIAgentUsed])
    {
      goto LABEL_18;
    }
  }

  v14 = 1;
LABEL_19:

  return v14;
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

- (void)setHasGenAIAgentUsed:(BOOL)used
{
  if (used)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasLlmAgentName:(BOOL)name
{
  if (name)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasMediaQAUseCase:(BOOL)case
{
  if (case)
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