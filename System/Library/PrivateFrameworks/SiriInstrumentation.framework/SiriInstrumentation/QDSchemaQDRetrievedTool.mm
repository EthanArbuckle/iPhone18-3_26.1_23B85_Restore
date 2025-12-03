@interface QDSchemaQDRetrievedTool
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (QDSchemaQDRetrievedTool)initWithDictionary:(id)dictionary;
- (QDSchemaQDRetrievedTool)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasSelectionCriteria:(BOOL)criteria;
- (void)setHasSimilarityScore:(BOOL)score;
- (void)writeTo:(id)to;
@end

@implementation QDSchemaQDRetrievedTool

- (QDSchemaQDRetrievedTool)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = QDSchemaQDRetrievedTool;
  v5 = [(QDSchemaQDRetrievedTool *)&v19 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"sessionScopedUniqueId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(QDSchemaQDRetrievedTool *)v5 setSessionScopedUniqueId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"toolId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(QDSchemaQDRetrievedTool *)v5 setToolId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"subType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[QDSchemaQDRetrievedTool setSubType:](v5, "setSubType:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"similarityScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v11 floatValue];
      [(QDSchemaQDRetrievedTool *)v5 setSimilarityScore:?];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"selectionCriteria"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[QDSchemaQDRetrievedTool setSelectionCriteria:](v5, "setSelectionCriteria:", [v12 intValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"toolSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[QDSchemaQDToolSource alloc] initWithDictionary:v13];
      [(QDSchemaQDRetrievedTool *)v5 setToolSource:v14];
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"toolDefinition"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[QDSchemaQDToolDefinition alloc] initWithDictionary:v15];
      [(QDSchemaQDRetrievedTool *)v5 setToolDefinition:v16];
    }

    v17 = v5;
  }

  return v5;
}

- (QDSchemaQDRetrievedTool)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(QDSchemaQDRetrievedTool *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(QDSchemaQDRetrievedTool *)self dictionaryRepresentation];
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
  if ((*&self->_has & 4) != 0)
  {
    v4 = [(QDSchemaQDRetrievedTool *)self selectionCriteria]- 1;
    if (v4 > 4)
    {
      v5 = @"QDTOOLSELECTIONCRITERIA_UNKNOWN";
    }

    else
    {
      v5 = off_1E78E17D0[v4];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"selectionCriteria"];
  }

  if (self->_sessionScopedUniqueId)
  {
    sessionScopedUniqueId = [(QDSchemaQDRetrievedTool *)self sessionScopedUniqueId];
    dictionaryRepresentation = [sessionScopedUniqueId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"sessionScopedUniqueId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"sessionScopedUniqueId"];
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v10 = MEMORY[0x1E696AD98];
    [(QDSchemaQDRetrievedTool *)self similarityScore];
    v11 = [v10 numberWithFloat:?];
    [dictionary setObject:v11 forKeyedSubscript:@"similarityScore"];

    has = self->_has;
  }

  if (has)
  {
    v12 = [(QDSchemaQDRetrievedTool *)self subType]- 1;
    if (v12 > 4)
    {
      v13 = @"QDTOOLSUBTYPE_UNKNOWN";
    }

    else
    {
      v13 = off_1E78E17F8[v12];
    }

    [dictionary setObject:v13 forKeyedSubscript:@"subType"];
  }

  if (self->_toolDefinition)
  {
    toolDefinition = [(QDSchemaQDRetrievedTool *)self toolDefinition];
    dictionaryRepresentation2 = [toolDefinition dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"toolDefinition"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"toolDefinition"];
    }
  }

  if (self->_toolId)
  {
    toolId = [(QDSchemaQDRetrievedTool *)self toolId];
    v18 = [toolId copy];
    [dictionary setObject:v18 forKeyedSubscript:@"toolId"];
  }

  if (self->_toolSource)
  {
    toolSource = [(QDSchemaQDRetrievedTool *)self toolSource];
    dictionaryRepresentation3 = [toolSource dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"toolSource"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"toolSource"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_sessionScopedUniqueId hash];
  v4 = [(NSString *)self->_toolId hash];
  if ((*&self->_has & 1) == 0)
  {
    v7 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  v7 = 2654435761 * self->_subType;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  similarityScore = self->_similarityScore;
  if (similarityScore >= 0.0)
  {
    v9 = similarityScore;
  }

  else
  {
    v9 = -similarityScore;
  }

  *v5.i64 = floor(v9 + 0.5);
  v10 = (v9 - *v5.i64) * 1.84467441e19;
  *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  v12 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v6, v5).i64;
  if (v10 >= 0.0)
  {
    if (v10 > 0.0)
    {
      v12 += v10;
    }
  }

  else
  {
    v12 -= fabs(v10);
  }

LABEL_10:
  if ((*&self->_has & 4) != 0)
  {
    v13 = 2654435761 * self->_selectionCriteria;
  }

  else
  {
    v13 = 0;
  }

  v14 = v4 ^ v3 ^ v7 ^ v12 ^ v13 ^ [(QDSchemaQDToolSource *)self->_toolSource hash];
  return v14 ^ [(QDSchemaQDToolDefinition *)self->_toolDefinition hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_33;
  }

  sessionScopedUniqueId = [(QDSchemaQDRetrievedTool *)self sessionScopedUniqueId];
  sessionScopedUniqueId2 = [equalCopy sessionScopedUniqueId];
  if ((sessionScopedUniqueId != 0) == (sessionScopedUniqueId2 == 0))
  {
    goto LABEL_32;
  }

  sessionScopedUniqueId3 = [(QDSchemaQDRetrievedTool *)self sessionScopedUniqueId];
  if (sessionScopedUniqueId3)
  {
    v8 = sessionScopedUniqueId3;
    sessionScopedUniqueId4 = [(QDSchemaQDRetrievedTool *)self sessionScopedUniqueId];
    sessionScopedUniqueId5 = [equalCopy sessionScopedUniqueId];
    v11 = [sessionScopedUniqueId4 isEqual:sessionScopedUniqueId5];

    if (!v11)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  sessionScopedUniqueId = [(QDSchemaQDRetrievedTool *)self toolId];
  sessionScopedUniqueId2 = [equalCopy toolId];
  if ((sessionScopedUniqueId != 0) == (sessionScopedUniqueId2 == 0))
  {
    goto LABEL_32;
  }

  toolId = [(QDSchemaQDRetrievedTool *)self toolId];
  if (toolId)
  {
    v13 = toolId;
    toolId2 = [(QDSchemaQDRetrievedTool *)self toolId];
    toolId3 = [equalCopy toolId];
    v16 = [toolId2 isEqual:toolId3];

    if (!v16)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  has = self->_has;
  v18 = equalCopy[56];
  if ((*&has & 1) != (v18 & 1))
  {
    goto LABEL_33;
  }

  if (*&has)
  {
    subType = self->_subType;
    if (subType != [equalCopy subType])
    {
      goto LABEL_33;
    }

    has = self->_has;
    v18 = equalCopy[56];
  }

  v20 = (*&has >> 1) & 1;
  if (v20 != ((v18 >> 1) & 1))
  {
    goto LABEL_33;
  }

  if (v20)
  {
    similarityScore = self->_similarityScore;
    [equalCopy similarityScore];
    if (similarityScore != v22)
    {
      goto LABEL_33;
    }

    has = self->_has;
    v18 = equalCopy[56];
  }

  v23 = (*&has >> 2) & 1;
  if (v23 != ((v18 >> 2) & 1))
  {
    goto LABEL_33;
  }

  if (v23)
  {
    selectionCriteria = self->_selectionCriteria;
    if (selectionCriteria != [equalCopy selectionCriteria])
    {
      goto LABEL_33;
    }
  }

  sessionScopedUniqueId = [(QDSchemaQDRetrievedTool *)self toolSource];
  sessionScopedUniqueId2 = [equalCopy toolSource];
  if ((sessionScopedUniqueId != 0) == (sessionScopedUniqueId2 == 0))
  {
    goto LABEL_32;
  }

  toolSource = [(QDSchemaQDRetrievedTool *)self toolSource];
  if (toolSource)
  {
    v26 = toolSource;
    toolSource2 = [(QDSchemaQDRetrievedTool *)self toolSource];
    toolSource3 = [equalCopy toolSource];
    v29 = [toolSource2 isEqual:toolSource3];

    if (!v29)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  sessionScopedUniqueId = [(QDSchemaQDRetrievedTool *)self toolDefinition];
  sessionScopedUniqueId2 = [equalCopy toolDefinition];
  if ((sessionScopedUniqueId != 0) == (sessionScopedUniqueId2 == 0))
  {
LABEL_32:

    goto LABEL_33;
  }

  toolDefinition = [(QDSchemaQDRetrievedTool *)self toolDefinition];
  if (!toolDefinition)
  {

LABEL_36:
    v35 = 1;
    goto LABEL_34;
  }

  v31 = toolDefinition;
  toolDefinition2 = [(QDSchemaQDRetrievedTool *)self toolDefinition];
  toolDefinition3 = [equalCopy toolDefinition];
  v34 = [toolDefinition2 isEqual:toolDefinition3];

  if (v34)
  {
    goto LABEL_36;
  }

LABEL_33:
  v35 = 0;
LABEL_34:

  return v35;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  sessionScopedUniqueId = [(QDSchemaQDRetrievedTool *)self sessionScopedUniqueId];

  if (sessionScopedUniqueId)
  {
    sessionScopedUniqueId2 = [(QDSchemaQDRetrievedTool *)self sessionScopedUniqueId];
    PBDataWriterWriteSubmessage();
  }

  toolId = [(QDSchemaQDRetrievedTool *)self toolId];

  if (toolId)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  PBDataWriterWriteFloatField();
  if ((*&self->_has & 4) != 0)
  {
LABEL_8:
    PBDataWriterWriteInt32Field();
  }

LABEL_9:
  toolSource = [(QDSchemaQDRetrievedTool *)self toolSource];

  if (toolSource)
  {
    toolSource2 = [(QDSchemaQDRetrievedTool *)self toolSource];
    PBDataWriterWriteSubmessage();
  }

  toolDefinition = [(QDSchemaQDRetrievedTool *)self toolDefinition];

  v11 = toCopy;
  if (toolDefinition)
  {
    toolDefinition2 = [(QDSchemaQDRetrievedTool *)self toolDefinition];
    PBDataWriterWriteSubmessage();

    v11 = toCopy;
  }
}

- (void)setHasSelectionCriteria:(BOOL)criteria
{
  if (criteria)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasSimilarityScore:(BOOL)score
{
  if (score)
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
  v16.receiver = self;
  v16.super_class = QDSchemaQDRetrievedTool;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:4])
  {
    [(QDSchemaQDRetrievedTool *)self deleteToolId];
  }

  sessionScopedUniqueId = [(QDSchemaQDRetrievedTool *)self sessionScopedUniqueId];
  v7 = [sessionScopedUniqueId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(QDSchemaQDRetrievedTool *)self deleteSessionScopedUniqueId];
  }

  toolSource = [(QDSchemaQDRetrievedTool *)self toolSource];
  v10 = [toolSource applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(QDSchemaQDRetrievedTool *)self deleteToolSource];
  }

  toolDefinition = [(QDSchemaQDRetrievedTool *)self toolDefinition];
  v13 = [toolDefinition applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(QDSchemaQDRetrievedTool *)self deleteToolDefinition];
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