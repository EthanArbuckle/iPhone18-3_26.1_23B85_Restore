@interface CLPInstSchemaCLPCDMReplaySampleStarted
- (BOOL)isEqual:(id)a3;
- (CLPInstSchemaCLPCDMReplaySampleStarted)initWithDictionary:(id)a3;
- (CLPInstSchemaCLPCDMReplaySampleStarted)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasWasHabitualUserDuringCalendarWeek:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CLPInstSchemaCLPCDMReplaySampleStarted

- (CLPInstSchemaCLPCDMReplaySampleStarted)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CLPInstSchemaCLPCDMReplaySampleStarted;
  v5 = [(CLPInstSchemaCLPCDMReplaySampleStarted *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"originalRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(CLPInstSchemaCLPCDMReplaySampleStarted *)v5 setOriginalRequestId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"resultCandidateId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(CLPInstSchemaCLPCDMReplaySampleStarted *)v5 setResultCandidateId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"utteranceRepetitionsInCalendarWeek"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CLPInstSchemaCLPCDMReplaySampleStarted setUtteranceRepetitionsInCalendarWeek:](v5, "setUtteranceRepetitionsInCalendarWeek:", [v10 unsignedIntValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"wasHabitualUserDuringCalendarWeek"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CLPInstSchemaCLPCDMReplaySampleStarted setWasHabitualUserDuringCalendarWeek:](v5, "setWasHabitualUserDuringCalendarWeek:", [v11 BOOLValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"trpId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaUUID alloc] initWithDictionary:v12];
      [(CLPInstSchemaCLPCDMReplaySampleStarted *)v5 setTrpId:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (CLPInstSchemaCLPCDMReplaySampleStarted)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(CLPInstSchemaCLPCDMReplaySampleStarted *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(CLPInstSchemaCLPCDMReplaySampleStarted *)self dictionaryRepresentation];
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
  if (self->_originalRequestId)
  {
    v4 = [(CLPInstSchemaCLPCDMReplaySampleStarted *)self originalRequestId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"originalRequestId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"originalRequestId"];
    }
  }

  if (self->_resultCandidateId)
  {
    v7 = [(CLPInstSchemaCLPCDMReplaySampleStarted *)self resultCandidateId];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"resultCandidateId"];
  }

  if (self->_trpId)
  {
    v9 = [(CLPInstSchemaCLPCDMReplaySampleStarted *)self trpId];
    v10 = [v9 dictionaryRepresentation];
    if (v10)
    {
      [v3 setObject:v10 forKeyedSubscript:@"trpId"];
    }

    else
    {
      v11 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v11 forKeyedSubscript:@"trpId"];
    }
  }

  has = self->_has;
  if (has)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CLPInstSchemaCLPCDMReplaySampleStarted utteranceRepetitionsInCalendarWeek](self, "utteranceRepetitionsInCalendarWeek")}];
    [v3 setObject:v13 forKeyedSubscript:@"utteranceRepetitionsInCalendarWeek"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[CLPInstSchemaCLPCDMReplaySampleStarted wasHabitualUserDuringCalendarWeek](self, "wasHabitualUserDuringCalendarWeek")}];
    [v3 setObject:v14 forKeyedSubscript:@"wasHabitualUserDuringCalendarWeek"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_originalRequestId hash];
  v4 = [(NSString *)self->_resultCandidateId hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_utteranceRepetitionsInCalendarWeek;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ [(SISchemaUUID *)self->_trpId hash];
  }

  v5 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = 2654435761 * self->_wasHabitualUserDuringCalendarWeek;
  return v4 ^ v3 ^ v5 ^ v6 ^ [(SISchemaUUID *)self->_trpId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  v5 = [(CLPInstSchemaCLPCDMReplaySampleStarted *)self originalRequestId];
  v6 = [v4 originalRequestId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_23;
  }

  v7 = [(CLPInstSchemaCLPCDMReplaySampleStarted *)self originalRequestId];
  if (v7)
  {
    v8 = v7;
    v9 = [(CLPInstSchemaCLPCDMReplaySampleStarted *)self originalRequestId];
    v10 = [v4 originalRequestId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  v5 = [(CLPInstSchemaCLPCDMReplaySampleStarted *)self resultCandidateId];
  v6 = [v4 resultCandidateId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_23;
  }

  v12 = [(CLPInstSchemaCLPCDMReplaySampleStarted *)self resultCandidateId];
  if (v12)
  {
    v13 = v12;
    v14 = [(CLPInstSchemaCLPCDMReplaySampleStarted *)self resultCandidateId];
    v15 = [v4 resultCandidateId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  has = self->_has;
  v18 = v4[40];
  if ((*&has & 1) != (v18 & 1))
  {
    goto LABEL_24;
  }

  if (*&has)
  {
    utteranceRepetitionsInCalendarWeek = self->_utteranceRepetitionsInCalendarWeek;
    if (utteranceRepetitionsInCalendarWeek != [v4 utteranceRepetitionsInCalendarWeek])
    {
      goto LABEL_24;
    }

    has = self->_has;
    v18 = v4[40];
  }

  v20 = (*&has >> 1) & 1;
  if (v20 != ((v18 >> 1) & 1))
  {
    goto LABEL_24;
  }

  if (v20)
  {
    wasHabitualUserDuringCalendarWeek = self->_wasHabitualUserDuringCalendarWeek;
    if (wasHabitualUserDuringCalendarWeek != [v4 wasHabitualUserDuringCalendarWeek])
    {
      goto LABEL_24;
    }
  }

  v5 = [(CLPInstSchemaCLPCDMReplaySampleStarted *)self trpId];
  v6 = [v4 trpId];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_23:

    goto LABEL_24;
  }

  v22 = [(CLPInstSchemaCLPCDMReplaySampleStarted *)self trpId];
  if (!v22)
  {

LABEL_27:
    v27 = 1;
    goto LABEL_25;
  }

  v23 = v22;
  v24 = [(CLPInstSchemaCLPCDMReplaySampleStarted *)self trpId];
  v25 = [v4 trpId];
  v26 = [v24 isEqual:v25];

  if (v26)
  {
    goto LABEL_27;
  }

LABEL_24:
  v27 = 0;
LABEL_25:

  return v27;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(CLPInstSchemaCLPCDMReplaySampleStarted *)self originalRequestId];

  if (v4)
  {
    v5 = [(CLPInstSchemaCLPCDMReplaySampleStarted *)self originalRequestId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(CLPInstSchemaCLPCDMReplaySampleStarted *)self resultCandidateId];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  v8 = [(CLPInstSchemaCLPCDMReplaySampleStarted *)self trpId];

  v9 = v11;
  if (v8)
  {
    v10 = [(CLPInstSchemaCLPCDMReplaySampleStarted *)self trpId];
    PBDataWriterWriteSubmessage();

    v9 = v11;
  }
}

- (void)setHasWasHabitualUserDuringCalendarWeek:(BOOL)a3
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
  v13.receiver = self;
  v13.super_class = CLPInstSchemaCLPCDMReplaySampleStarted;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(CLPInstSchemaCLPCDMReplaySampleStarted *)self originalRequestId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(CLPInstSchemaCLPCDMReplaySampleStarted *)self deleteOriginalRequestId];
  }

  v9 = [(CLPInstSchemaCLPCDMReplaySampleStarted *)self trpId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(CLPInstSchemaCLPCDMReplaySampleStarted *)self deleteTrpId];
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