@interface PNRODSchemaPNRODScheduleDebugSummary
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PNRODSchemaPNRODScheduleDebugSummary)initWithDictionary:(id)dictionary;
- (PNRODSchemaPNRODScheduleDebugSummary)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasDataSourceIndex:(BOOL)index;
- (void)setHasDelayFromLastBiomeBookmarkInSecond:(BOOL)second;
- (void)setHasEventTimestampInMsSince1970:(BOOL)since1970;
- (void)setHasFailureReasonIndex:(BOOL)index;
- (void)setHasNumRequestsWrite:(BOOL)write;
- (void)setHasProcessingTimeInSecond:(BOOL)second;
- (void)setHasProcessingWaitTimeInSecond:(BOOL)second;
- (void)setHasWorkerIndex:(BOOL)index;
- (void)writeTo:(id)to;
@end

@implementation PNRODSchemaPNRODScheduleDebugSummary

- (PNRODSchemaPNRODScheduleDebugSummary)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = PNRODSchemaPNRODScheduleDebugSummary;
  v5 = [(PNRODSchemaPNRODScheduleDebugSummary *)&v23 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"scheduleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PNRODSchemaPNRODScheduleDebugSummary *)v5 setScheduleId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"numRequestsRead"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODScheduleDebugSummary setNumRequestsRead:](v5, "setNumRequestsRead:", [v8 unsignedIntValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"numRequestsWrite"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODScheduleDebugSummary setNumRequestsWrite:](v5, "setNumRequestsWrite:", [v9 unsignedIntValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"processingWaitTimeInSecond"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 doubleValue];
      [(PNRODSchemaPNRODScheduleDebugSummary *)v5 setProcessingWaitTimeInSecond:?];
    }

    v20 = v10;
    v11 = [dictionaryCopy objectForKeyedSubscript:@"processingTimeInSecond"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v11 doubleValue];
      [(PNRODSchemaPNRODScheduleDebugSummary *)v5 setProcessingTimeInSecond:?];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"eventTimestampInMsSince1970"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODScheduleDebugSummary setEventTimestampInMsSince1970:](v5, "setEventTimestampInMsSince1970:", [v12 unsignedLongLongValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"delayFromLastBiomeBookmarkInSecond"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v13 doubleValue];
      [(PNRODSchemaPNRODScheduleDebugSummary *)v5 setDelayFromLastBiomeBookmarkInSecond:?];
    }

    v21 = v9;
    v22 = v8;
    v14 = [dictionaryCopy objectForKeyedSubscript:@"failureReasonIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODScheduleDebugSummary setFailureReasonIndex:](v5, "setFailureReasonIndex:", [v14 longLongValue]);
    }

    v15 = v6;
    v16 = [dictionaryCopy objectForKeyedSubscript:@"dataSourceIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODScheduleDebugSummary setDataSourceIndex:](v5, "setDataSourceIndex:", [v16 longLongValue]);
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"workerIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODScheduleDebugSummary setWorkerIndex:](v5, "setWorkerIndex:", [v17 longLongValue]);
    }

    v18 = v5;
  }

  return v5;
}

- (PNRODSchemaPNRODScheduleDebugSummary)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PNRODSchemaPNRODScheduleDebugSummary *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PNRODSchemaPNRODScheduleDebugSummary *)self dictionaryRepresentation];
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
  if ((has & 0x80) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[PNRODSchemaPNRODScheduleDebugSummary dataSourceIndex](self, "dataSourceIndex")}];
    [dictionary setObject:v9 forKeyedSubscript:@"dataSourceIndex"];

    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  v10 = MEMORY[0x1E696AD98];
  [(PNRODSchemaPNRODScheduleDebugSummary *)self delayFromLastBiomeBookmarkInSecond];
  v11 = [v10 numberWithDouble:?];
  [dictionary setObject:v11 forKeyedSubscript:@"delayFromLastBiomeBookmarkInSecond"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[PNRODSchemaPNRODScheduleDebugSummary eventTimestampInMsSince1970](self, "eventTimestampInMsSince1970")}];
  [dictionary setObject:v12 forKeyedSubscript:@"eventTimestampInMsSince1970"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v13 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[PNRODSchemaPNRODScheduleDebugSummary failureReasonIndex](self, "failureReasonIndex")}];
  [dictionary setObject:v13 forKeyedSubscript:@"failureReasonIndex"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PNRODSchemaPNRODScheduleDebugSummary numRequestsRead](self, "numRequestsRead")}];
  [dictionary setObject:v14 forKeyedSubscript:@"numRequestsRead"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PNRODSchemaPNRODScheduleDebugSummary numRequestsWrite](self, "numRequestsWrite")}];
  [dictionary setObject:v15 forKeyedSubscript:@"numRequestsWrite"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  v16 = MEMORY[0x1E696AD98];
  [(PNRODSchemaPNRODScheduleDebugSummary *)self processingTimeInSecond];
  v17 = [v16 numberWithDouble:?];
  [dictionary setObject:v17 forKeyedSubscript:@"processingTimeInSecond"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_9:
    v5 = MEMORY[0x1E696AD98];
    [(PNRODSchemaPNRODScheduleDebugSummary *)self processingWaitTimeInSecond];
    v6 = [v5 numberWithDouble:?];
    [dictionary setObject:v6 forKeyedSubscript:@"processingWaitTimeInSecond"];
  }

LABEL_10:
  if (self->_scheduleId)
  {
    scheduleId = [(PNRODSchemaPNRODScheduleDebugSummary *)self scheduleId];
    dictionaryRepresentation = [scheduleId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"scheduleId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"scheduleId"];
    }
  }

  if ((*&self->_has & 0x100) != 0)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[PNRODSchemaPNRODScheduleDebugSummary workerIndex](self, "workerIndex")}];
    [dictionary setObject:v19 forKeyedSubscript:@"workerIndex"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_scheduleId hash];
  has = self->_has;
  if ((has & 1) == 0)
  {
    v7 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v8 = 0;
    if ((has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  v7 = 2654435761 * self->_numRequestsRead;
  if ((has & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v8 = 2654435761 * self->_numRequestsWrite;
  if ((has & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  processingWaitTimeInSecond = self->_processingWaitTimeInSecond;
  if (processingWaitTimeInSecond < 0.0)
  {
    processingWaitTimeInSecond = -processingWaitTimeInSecond;
  }

  *v4.i64 = floor(processingWaitTimeInSecond + 0.5);
  v10 = (processingWaitTimeInSecond - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  v4 = vbslq_s8(vnegq_f64(v11), v5, v4);
  v12 = 2654435761u * *v4.i64;
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

LABEL_11:
  if ((has & 8) != 0)
  {
    processingTimeInSecond = self->_processingTimeInSecond;
    if (processingTimeInSecond < 0.0)
    {
      processingTimeInSecond = -processingTimeInSecond;
    }

    *v4.i64 = floor(processingTimeInSecond + 0.5);
    v15 = (processingTimeInSecond - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v16), v5, v4);
    v13 = 2654435761u * *v4.i64;
    if (v15 >= 0.0)
    {
      if (v15 > 0.0)
      {
        v13 += v15;
      }
    }

    else
    {
      v13 -= fabs(v15);
    }
  }

  else
  {
    v13 = 0;
  }

  if ((has & 0x10) != 0)
  {
    v17 = 2654435761u * self->_eventTimestampInMsSince1970;
    if ((has & 0x20) != 0)
    {
      goto LABEL_23;
    }

LABEL_28:
    v21 = 0;
    goto LABEL_29;
  }

  v17 = 0;
  if ((has & 0x20) == 0)
  {
    goto LABEL_28;
  }

LABEL_23:
  delayFromLastBiomeBookmarkInSecond = self->_delayFromLastBiomeBookmarkInSecond;
  if (delayFromLastBiomeBookmarkInSecond < 0.0)
  {
    delayFromLastBiomeBookmarkInSecond = -delayFromLastBiomeBookmarkInSecond;
  }

  *v4.i64 = floor(delayFromLastBiomeBookmarkInSecond + 0.5);
  v19 = (delayFromLastBiomeBookmarkInSecond - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v20.f64[0] = NAN;
  v20.f64[1] = NAN;
  v21 = 2654435761u * *vbslq_s8(vnegq_f64(v20), v5, v4).i64;
  if (v19 >= 0.0)
  {
    if (v19 > 0.0)
    {
      v21 += v19;
    }
  }

  else
  {
    v21 -= fabs(v19);
  }

LABEL_29:
  if ((has & 0x40) == 0)
  {
    v22 = 0;
    if ((has & 0x80) != 0)
    {
      goto LABEL_31;
    }

LABEL_34:
    v23 = 0;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_32;
    }

LABEL_35:
    v24 = 0;
    return v7 ^ v3 ^ v8 ^ v12 ^ v13 ^ v17 ^ v21 ^ v22 ^ v23 ^ v24;
  }

  v22 = 2654435761 * self->_failureReasonIndex;
  if ((has & 0x80) == 0)
  {
    goto LABEL_34;
  }

LABEL_31:
  v23 = 2654435761 * self->_dataSourceIndex;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_35;
  }

LABEL_32:
  v24 = 2654435761 * self->_workerIndex;
  return v7 ^ v3 ^ v8 ^ v12 ^ v13 ^ v17 ^ v21 ^ v22 ^ v23 ^ v24;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_44;
  }

  scheduleId = [(PNRODSchemaPNRODScheduleDebugSummary *)self scheduleId];
  scheduleId2 = [equalCopy scheduleId];
  v7 = scheduleId2;
  if ((scheduleId != 0) == (scheduleId2 == 0))
  {

    goto LABEL_44;
  }

  scheduleId3 = [(PNRODSchemaPNRODScheduleDebugSummary *)self scheduleId];
  if (scheduleId3)
  {
    v9 = scheduleId3;
    scheduleId4 = [(PNRODSchemaPNRODScheduleDebugSummary *)self scheduleId];
    scheduleId5 = [equalCopy scheduleId];
    v12 = [scheduleId4 isEqual:scheduleId5];

    if (!v12)
    {
      goto LABEL_44;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = equalCopy[40];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_44:
    v35 = 0;
    goto LABEL_45;
  }

  if (*&has)
  {
    numRequestsRead = self->_numRequestsRead;
    if (numRequestsRead != [equalCopy numRequestsRead])
    {
      goto LABEL_44;
    }

    has = self->_has;
    v14 = equalCopy[40];
  }

  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_44;
  }

  if (v16)
  {
    numRequestsWrite = self->_numRequestsWrite;
    if (numRequestsWrite != [equalCopy numRequestsWrite])
    {
      goto LABEL_44;
    }

    has = self->_has;
    v14 = equalCopy[40];
  }

  v18 = (*&has >> 2) & 1;
  if (v18 != ((v14 >> 2) & 1))
  {
    goto LABEL_44;
  }

  if (v18)
  {
    processingWaitTimeInSecond = self->_processingWaitTimeInSecond;
    [equalCopy processingWaitTimeInSecond];
    if (processingWaitTimeInSecond != v20)
    {
      goto LABEL_44;
    }

    has = self->_has;
    v14 = equalCopy[40];
  }

  v21 = (*&has >> 3) & 1;
  if (v21 != ((v14 >> 3) & 1))
  {
    goto LABEL_44;
  }

  if (v21)
  {
    processingTimeInSecond = self->_processingTimeInSecond;
    [equalCopy processingTimeInSecond];
    if (processingTimeInSecond != v23)
    {
      goto LABEL_44;
    }

    has = self->_has;
    v14 = equalCopy[40];
  }

  v24 = (*&has >> 4) & 1;
  if (v24 != ((v14 >> 4) & 1))
  {
    goto LABEL_44;
  }

  if (v24)
  {
    eventTimestampInMsSince1970 = self->_eventTimestampInMsSince1970;
    if (eventTimestampInMsSince1970 != [equalCopy eventTimestampInMsSince1970])
    {
      goto LABEL_44;
    }

    has = self->_has;
    v14 = equalCopy[40];
  }

  v26 = (*&has >> 5) & 1;
  if (v26 != ((v14 >> 5) & 1))
  {
    goto LABEL_44;
  }

  if (v26)
  {
    delayFromLastBiomeBookmarkInSecond = self->_delayFromLastBiomeBookmarkInSecond;
    [equalCopy delayFromLastBiomeBookmarkInSecond];
    if (delayFromLastBiomeBookmarkInSecond != v28)
    {
      goto LABEL_44;
    }

    has = self->_has;
    v14 = equalCopy[40];
  }

  v29 = (*&has >> 6) & 1;
  if (v29 != ((v14 >> 6) & 1))
  {
    goto LABEL_44;
  }

  if (v29)
  {
    failureReasonIndex = self->_failureReasonIndex;
    if (failureReasonIndex != [equalCopy failureReasonIndex])
    {
      goto LABEL_44;
    }

    has = self->_has;
    v14 = equalCopy[40];
  }

  v31 = (*&has >> 7) & 1;
  if (v31 != ((v14 >> 7) & 1))
  {
    goto LABEL_44;
  }

  if (v31)
  {
    dataSourceIndex = self->_dataSourceIndex;
    if (dataSourceIndex == [equalCopy dataSourceIndex])
    {
      has = self->_has;
      v14 = equalCopy[40];
      goto LABEL_40;
    }

    goto LABEL_44;
  }

LABEL_40:
  v33 = (*&has >> 8) & 1;
  if (v33 != ((v14 >> 8) & 1))
  {
    goto LABEL_44;
  }

  if (v33)
  {
    workerIndex = self->_workerIndex;
    if (workerIndex != [equalCopy workerIndex])
    {
      goto LABEL_44;
    }
  }

  v35 = 1;
LABEL_45:

  return v35;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  scheduleId = [(PNRODSchemaPNRODScheduleDebugSummary *)self scheduleId];

  if (scheduleId)
  {
    scheduleId2 = [(PNRODSchemaPNRODScheduleDebugSummary *)self scheduleId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  v7 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    v7 = toCopy;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_19;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_7;
  }

  PBDataWriterWriteDoubleField();
  v7 = toCopy;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  PBDataWriterWriteDoubleField();
  v7 = toCopy;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  PBDataWriterWriteUint64Field();
  v7 = toCopy;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_10:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  PBDataWriterWriteDoubleField();
  v7 = toCopy;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_11:
    if ((has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  PBDataWriterWriteInt64Field();
  v7 = toCopy;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_12:
    if ((has & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_23:
  PBDataWriterWriteInt64Field();
  v7 = toCopy;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_13:
    PBDataWriterWriteInt64Field();
    v7 = toCopy;
  }

LABEL_14:
}

- (void)setHasWorkerIndex:(BOOL)index
{
  if (index)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasDataSourceIndex:(BOOL)index
{
  if (index)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasFailureReasonIndex:(BOOL)index
{
  if (index)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasDelayFromLastBiomeBookmarkInSecond:(BOOL)second
{
  if (second)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasEventTimestampInMsSince1970:(BOOL)since1970
{
  if (since1970)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasProcessingTimeInSecond:(BOOL)second
{
  if (second)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasProcessingWaitTimeInSecond:(BOOL)second
{
  if (second)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasNumRequestsWrite:(BOOL)write
{
  if (write)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = PNRODSchemaPNRODScheduleDebugSummary;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(PNRODSchemaPNRODScheduleDebugSummary *)self scheduleId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(PNRODSchemaPNRODScheduleDebugSummary *)self deleteScheduleId];
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