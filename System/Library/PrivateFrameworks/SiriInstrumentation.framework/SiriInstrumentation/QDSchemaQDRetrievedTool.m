@interface QDSchemaQDRetrievedTool
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (QDSchemaQDRetrievedTool)initWithDictionary:(id)a3;
- (QDSchemaQDRetrievedTool)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasSelectionCriteria:(BOOL)a3;
- (void)setHasSimilarityScore:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation QDSchemaQDRetrievedTool

- (QDSchemaQDRetrievedTool)initWithDictionary:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = QDSchemaQDRetrievedTool;
  v5 = [(QDSchemaQDRetrievedTool *)&v19 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"sessionScopedUniqueId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(QDSchemaQDRetrievedTool *)v5 setSessionScopedUniqueId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"toolId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(QDSchemaQDRetrievedTool *)v5 setToolId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"subType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[QDSchemaQDRetrievedTool setSubType:](v5, "setSubType:", [v10 intValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"similarityScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v11 floatValue];
      [(QDSchemaQDRetrievedTool *)v5 setSimilarityScore:?];
    }

    v12 = [v4 objectForKeyedSubscript:@"selectionCriteria"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[QDSchemaQDRetrievedTool setSelectionCriteria:](v5, "setSelectionCriteria:", [v12 intValue]);
    }

    v13 = [v4 objectForKeyedSubscript:@"toolSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[QDSchemaQDToolSource alloc] initWithDictionary:v13];
      [(QDSchemaQDRetrievedTool *)v5 setToolSource:v14];
    }

    v15 = [v4 objectForKeyedSubscript:@"toolDefinition"];
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

- (QDSchemaQDRetrievedTool)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(QDSchemaQDRetrievedTool *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(QDSchemaQDRetrievedTool *)self dictionaryRepresentation];
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

    [v3 setObject:v5 forKeyedSubscript:@"selectionCriteria"];
  }

  if (self->_sessionScopedUniqueId)
  {
    v6 = [(QDSchemaQDRetrievedTool *)self sessionScopedUniqueId];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"sessionScopedUniqueId"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"sessionScopedUniqueId"];
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v10 = MEMORY[0x1E696AD98];
    [(QDSchemaQDRetrievedTool *)self similarityScore];
    v11 = [v10 numberWithFloat:?];
    [v3 setObject:v11 forKeyedSubscript:@"similarityScore"];

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

    [v3 setObject:v13 forKeyedSubscript:@"subType"];
  }

  if (self->_toolDefinition)
  {
    v14 = [(QDSchemaQDRetrievedTool *)self toolDefinition];
    v15 = [v14 dictionaryRepresentation];
    if (v15)
    {
      [v3 setObject:v15 forKeyedSubscript:@"toolDefinition"];
    }

    else
    {
      v16 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v16 forKeyedSubscript:@"toolDefinition"];
    }
  }

  if (self->_toolId)
  {
    v17 = [(QDSchemaQDRetrievedTool *)self toolId];
    v18 = [v17 copy];
    [v3 setObject:v18 forKeyedSubscript:@"toolId"];
  }

  if (self->_toolSource)
  {
    v19 = [(QDSchemaQDRetrievedTool *)self toolSource];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"toolSource"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"toolSource"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_33;
  }

  v5 = [(QDSchemaQDRetrievedTool *)self sessionScopedUniqueId];
  v6 = [v4 sessionScopedUniqueId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_32;
  }

  v7 = [(QDSchemaQDRetrievedTool *)self sessionScopedUniqueId];
  if (v7)
  {
    v8 = v7;
    v9 = [(QDSchemaQDRetrievedTool *)self sessionScopedUniqueId];
    v10 = [v4 sessionScopedUniqueId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v5 = [(QDSchemaQDRetrievedTool *)self toolId];
  v6 = [v4 toolId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_32;
  }

  v12 = [(QDSchemaQDRetrievedTool *)self toolId];
  if (v12)
  {
    v13 = v12;
    v14 = [(QDSchemaQDRetrievedTool *)self toolId];
    v15 = [v4 toolId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  has = self->_has;
  v18 = v4[56];
  if ((*&has & 1) != (v18 & 1))
  {
    goto LABEL_33;
  }

  if (*&has)
  {
    subType = self->_subType;
    if (subType != [v4 subType])
    {
      goto LABEL_33;
    }

    has = self->_has;
    v18 = v4[56];
  }

  v20 = (*&has >> 1) & 1;
  if (v20 != ((v18 >> 1) & 1))
  {
    goto LABEL_33;
  }

  if (v20)
  {
    similarityScore = self->_similarityScore;
    [v4 similarityScore];
    if (similarityScore != v22)
    {
      goto LABEL_33;
    }

    has = self->_has;
    v18 = v4[56];
  }

  v23 = (*&has >> 2) & 1;
  if (v23 != ((v18 >> 2) & 1))
  {
    goto LABEL_33;
  }

  if (v23)
  {
    selectionCriteria = self->_selectionCriteria;
    if (selectionCriteria != [v4 selectionCriteria])
    {
      goto LABEL_33;
    }
  }

  v5 = [(QDSchemaQDRetrievedTool *)self toolSource];
  v6 = [v4 toolSource];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_32;
  }

  v25 = [(QDSchemaQDRetrievedTool *)self toolSource];
  if (v25)
  {
    v26 = v25;
    v27 = [(QDSchemaQDRetrievedTool *)self toolSource];
    v28 = [v4 toolSource];
    v29 = [v27 isEqual:v28];

    if (!v29)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v5 = [(QDSchemaQDRetrievedTool *)self toolDefinition];
  v6 = [v4 toolDefinition];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_32:

    goto LABEL_33;
  }

  v30 = [(QDSchemaQDRetrievedTool *)self toolDefinition];
  if (!v30)
  {

LABEL_36:
    v35 = 1;
    goto LABEL_34;
  }

  v31 = v30;
  v32 = [(QDSchemaQDRetrievedTool *)self toolDefinition];
  v33 = [v4 toolDefinition];
  v34 = [v32 isEqual:v33];

  if (v34)
  {
    goto LABEL_36;
  }

LABEL_33:
  v35 = 0;
LABEL_34:

  return v35;
}

- (void)writeTo:(id)a3
{
  v13 = a3;
  v4 = [(QDSchemaQDRetrievedTool *)self sessionScopedUniqueId];

  if (v4)
  {
    v5 = [(QDSchemaQDRetrievedTool *)self sessionScopedUniqueId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(QDSchemaQDRetrievedTool *)self toolId];

  if (v6)
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
  v8 = [(QDSchemaQDRetrievedTool *)self toolSource];

  if (v8)
  {
    v9 = [(QDSchemaQDRetrievedTool *)self toolSource];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(QDSchemaQDRetrievedTool *)self toolDefinition];

  v11 = v13;
  if (v10)
  {
    v12 = [(QDSchemaQDRetrievedTool *)self toolDefinition];
    PBDataWriterWriteSubmessage();

    v11 = v13;
  }
}

- (void)setHasSelectionCriteria:(BOOL)a3
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

- (void)setHasSimilarityScore:(BOOL)a3
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
  v16.receiver = self;
  v16.super_class = QDSchemaQDRetrievedTool;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:4])
  {
    [(QDSchemaQDRetrievedTool *)self deleteToolId];
  }

  v6 = [(QDSchemaQDRetrievedTool *)self sessionScopedUniqueId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(QDSchemaQDRetrievedTool *)self deleteSessionScopedUniqueId];
  }

  v9 = [(QDSchemaQDRetrievedTool *)self toolSource];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(QDSchemaQDRetrievedTool *)self deleteToolSource];
  }

  v12 = [(QDSchemaQDRetrievedTool *)self toolDefinition];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
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