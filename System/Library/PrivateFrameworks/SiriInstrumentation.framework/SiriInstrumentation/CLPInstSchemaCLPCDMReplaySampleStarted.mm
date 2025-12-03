@interface CLPInstSchemaCLPCDMReplaySampleStarted
- (BOOL)isEqual:(id)equal;
- (CLPInstSchemaCLPCDMReplaySampleStarted)initWithDictionary:(id)dictionary;
- (CLPInstSchemaCLPCDMReplaySampleStarted)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasWasHabitualUserDuringCalendarWeek:(BOOL)week;
- (void)writeTo:(id)to;
@end

@implementation CLPInstSchemaCLPCDMReplaySampleStarted

- (CLPInstSchemaCLPCDMReplaySampleStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = CLPInstSchemaCLPCDMReplaySampleStarted;
  v5 = [(CLPInstSchemaCLPCDMReplaySampleStarted *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"originalRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(CLPInstSchemaCLPCDMReplaySampleStarted *)v5 setOriginalRequestId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"resultCandidateId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(CLPInstSchemaCLPCDMReplaySampleStarted *)v5 setResultCandidateId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"utteranceRepetitionsInCalendarWeek"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CLPInstSchemaCLPCDMReplaySampleStarted setUtteranceRepetitionsInCalendarWeek:](v5, "setUtteranceRepetitionsInCalendarWeek:", [v10 unsignedIntValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"wasHabitualUserDuringCalendarWeek"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CLPInstSchemaCLPCDMReplaySampleStarted setWasHabitualUserDuringCalendarWeek:](v5, "setWasHabitualUserDuringCalendarWeek:", [v11 BOOLValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"trpId"];
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

- (CLPInstSchemaCLPCDMReplaySampleStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CLPInstSchemaCLPCDMReplaySampleStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CLPInstSchemaCLPCDMReplaySampleStarted *)self dictionaryRepresentation];
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
  if (self->_originalRequestId)
  {
    originalRequestId = [(CLPInstSchemaCLPCDMReplaySampleStarted *)self originalRequestId];
    dictionaryRepresentation = [originalRequestId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"originalRequestId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"originalRequestId"];
    }
  }

  if (self->_resultCandidateId)
  {
    resultCandidateId = [(CLPInstSchemaCLPCDMReplaySampleStarted *)self resultCandidateId];
    v8 = [resultCandidateId copy];
    [dictionary setObject:v8 forKeyedSubscript:@"resultCandidateId"];
  }

  if (self->_trpId)
  {
    trpId = [(CLPInstSchemaCLPCDMReplaySampleStarted *)self trpId];
    dictionaryRepresentation2 = [trpId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"trpId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"trpId"];
    }
  }

  has = self->_has;
  if (has)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CLPInstSchemaCLPCDMReplaySampleStarted utteranceRepetitionsInCalendarWeek](self, "utteranceRepetitionsInCalendarWeek")}];
    [dictionary setObject:v13 forKeyedSubscript:@"utteranceRepetitionsInCalendarWeek"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[CLPInstSchemaCLPCDMReplaySampleStarted wasHabitualUserDuringCalendarWeek](self, "wasHabitualUserDuringCalendarWeek")}];
    [dictionary setObject:v14 forKeyedSubscript:@"wasHabitualUserDuringCalendarWeek"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  originalRequestId = [(CLPInstSchemaCLPCDMReplaySampleStarted *)self originalRequestId];
  originalRequestId2 = [equalCopy originalRequestId];
  if ((originalRequestId != 0) == (originalRequestId2 == 0))
  {
    goto LABEL_23;
  }

  originalRequestId3 = [(CLPInstSchemaCLPCDMReplaySampleStarted *)self originalRequestId];
  if (originalRequestId3)
  {
    v8 = originalRequestId3;
    originalRequestId4 = [(CLPInstSchemaCLPCDMReplaySampleStarted *)self originalRequestId];
    originalRequestId5 = [equalCopy originalRequestId];
    v11 = [originalRequestId4 isEqual:originalRequestId5];

    if (!v11)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  originalRequestId = [(CLPInstSchemaCLPCDMReplaySampleStarted *)self resultCandidateId];
  originalRequestId2 = [equalCopy resultCandidateId];
  if ((originalRequestId != 0) == (originalRequestId2 == 0))
  {
    goto LABEL_23;
  }

  resultCandidateId = [(CLPInstSchemaCLPCDMReplaySampleStarted *)self resultCandidateId];
  if (resultCandidateId)
  {
    v13 = resultCandidateId;
    resultCandidateId2 = [(CLPInstSchemaCLPCDMReplaySampleStarted *)self resultCandidateId];
    resultCandidateId3 = [equalCopy resultCandidateId];
    v16 = [resultCandidateId2 isEqual:resultCandidateId3];

    if (!v16)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  has = self->_has;
  v18 = equalCopy[40];
  if ((*&has & 1) != (v18 & 1))
  {
    goto LABEL_24;
  }

  if (*&has)
  {
    utteranceRepetitionsInCalendarWeek = self->_utteranceRepetitionsInCalendarWeek;
    if (utteranceRepetitionsInCalendarWeek != [equalCopy utteranceRepetitionsInCalendarWeek])
    {
      goto LABEL_24;
    }

    has = self->_has;
    v18 = equalCopy[40];
  }

  v20 = (*&has >> 1) & 1;
  if (v20 != ((v18 >> 1) & 1))
  {
    goto LABEL_24;
  }

  if (v20)
  {
    wasHabitualUserDuringCalendarWeek = self->_wasHabitualUserDuringCalendarWeek;
    if (wasHabitualUserDuringCalendarWeek != [equalCopy wasHabitualUserDuringCalendarWeek])
    {
      goto LABEL_24;
    }
  }

  originalRequestId = [(CLPInstSchemaCLPCDMReplaySampleStarted *)self trpId];
  originalRequestId2 = [equalCopy trpId];
  if ((originalRequestId != 0) == (originalRequestId2 == 0))
  {
LABEL_23:

    goto LABEL_24;
  }

  trpId = [(CLPInstSchemaCLPCDMReplaySampleStarted *)self trpId];
  if (!trpId)
  {

LABEL_27:
    v27 = 1;
    goto LABEL_25;
  }

  v23 = trpId;
  trpId2 = [(CLPInstSchemaCLPCDMReplaySampleStarted *)self trpId];
  trpId3 = [equalCopy trpId];
  v26 = [trpId2 isEqual:trpId3];

  if (v26)
  {
    goto LABEL_27;
  }

LABEL_24:
  v27 = 0;
LABEL_25:

  return v27;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  originalRequestId = [(CLPInstSchemaCLPCDMReplaySampleStarted *)self originalRequestId];

  if (originalRequestId)
  {
    originalRequestId2 = [(CLPInstSchemaCLPCDMReplaySampleStarted *)self originalRequestId];
    PBDataWriterWriteSubmessage();
  }

  resultCandidateId = [(CLPInstSchemaCLPCDMReplaySampleStarted *)self resultCandidateId];

  if (resultCandidateId)
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

  trpId = [(CLPInstSchemaCLPCDMReplaySampleStarted *)self trpId];

  v9 = toCopy;
  if (trpId)
  {
    trpId2 = [(CLPInstSchemaCLPCDMReplaySampleStarted *)self trpId];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (void)setHasWasHabitualUserDuringCalendarWeek:(BOOL)week
{
  if (week)
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
  v13.receiver = self;
  v13.super_class = CLPInstSchemaCLPCDMReplaySampleStarted;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  originalRequestId = [(CLPInstSchemaCLPCDMReplaySampleStarted *)self originalRequestId];
  v7 = [originalRequestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(CLPInstSchemaCLPCDMReplaySampleStarted *)self deleteOriginalRequestId];
  }

  trpId = [(CLPInstSchemaCLPCDMReplaySampleStarted *)self trpId];
  v10 = [trpId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
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