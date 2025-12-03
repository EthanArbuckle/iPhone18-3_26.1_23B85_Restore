@interface POMMESSchemaPOMMESFunctionPerformanceProfile
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (POMMESSchemaPOMMESFunctionPerformanceProfile)initWithDictionary:(id)dictionary;
- (POMMESSchemaPOMMESFunctionPerformanceProfile)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasDurationInMs:(BOOL)ms;
- (void)setHasLineNumber:(BOOL)number;
- (void)writeTo:(id)to;
@end

@implementation POMMESSchemaPOMMESFunctionPerformanceProfile

- (POMMESSchemaPOMMESFunctionPerformanceProfile)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = POMMESSchemaPOMMESFunctionPerformanceProfile;
  v5 = [(POMMESSchemaPOMMESFunctionPerformanceProfile *)&v17 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"startTimeIntervalSince2001InMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 doubleValue];
      [(POMMESSchemaPOMMESFunctionPerformanceProfile *)v5 setStartTimeIntervalSince2001InMs:?];
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"durationInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 doubleValue];
      [(POMMESSchemaPOMMESFunctionPerformanceProfile *)v5 setDurationInMs:?];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"fileId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(POMMESSchemaPOMMESFunctionPerformanceProfile *)v5 setFileId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"lineNumber"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESFunctionPerformanceProfile setLineNumber:](v5, "setLineNumber:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"callingFunction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(POMMESSchemaPOMMESFunctionPerformanceProfile *)v5 setCallingFunction:v12];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"measurementLabel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 copy];
      [(POMMESSchemaPOMMESFunctionPerformanceProfile *)v5 setMeasurementLabel:v14];
    }

    v15 = v5;
  }

  return v5;
}

- (POMMESSchemaPOMMESFunctionPerformanceProfile)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(POMMESSchemaPOMMESFunctionPerformanceProfile *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(POMMESSchemaPOMMESFunctionPerformanceProfile *)self dictionaryRepresentation];
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
  if (self->_callingFunction)
  {
    callingFunction = [(POMMESSchemaPOMMESFunctionPerformanceProfile *)self callingFunction];
    v5 = [callingFunction copy];
    [dictionary setObject:v5 forKeyedSubscript:@"callingFunction"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v6 = MEMORY[0x1E696AD98];
    [(POMMESSchemaPOMMESFunctionPerformanceProfile *)self durationInMs];
    v7 = [v6 numberWithDouble:?];
    [dictionary setObject:v7 forKeyedSubscript:@"durationInMs"];
  }

  if (self->_fileId)
  {
    fileId = [(POMMESSchemaPOMMESFunctionPerformanceProfile *)self fileId];
    v9 = [fileId copy];
    [dictionary setObject:v9 forKeyedSubscript:@"fileId"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[POMMESSchemaPOMMESFunctionPerformanceProfile lineNumber](self, "lineNumber")}];
    [dictionary setObject:v10 forKeyedSubscript:@"lineNumber"];
  }

  if (self->_measurementLabel)
  {
    measurementLabel = [(POMMESSchemaPOMMESFunctionPerformanceProfile *)self measurementLabel];
    v12 = [measurementLabel copy];
    [dictionary setObject:v12 forKeyedSubscript:@"measurementLabel"];
  }

  if (*&self->_has)
  {
    v13 = MEMORY[0x1E696AD98];
    [(POMMESSchemaPOMMESFunctionPerformanceProfile *)self startTimeIntervalSince2001InMs];
    v14 = [v13 numberWithDouble:?];
    [dictionary setObject:v14 forKeyedSubscript:@"startTimeIntervalSince2001InMs"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    startTimeIntervalSince2001InMs = self->_startTimeIntervalSince2001InMs;
    if (startTimeIntervalSince2001InMs < 0.0)
    {
      startTimeIntervalSince2001InMs = -startTimeIntervalSince2001InMs;
    }

    *v2.i64 = floor(startTimeIntervalSince2001InMs + 0.5);
    v7 = (startTimeIntervalSince2001InMs - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v8), v3, v2);
    v5 = 2654435761u * *v2.i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    durationInMs = self->_durationInMs;
    if (durationInMs < 0.0)
    {
      durationInMs = -durationInMs;
    }

    *v2.i64 = floor(durationInMs + 0.5);
    v11 = (durationInMs - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v9 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v3, v2).i64;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v9 += v11;
      }
    }

    else
    {
      v9 -= fabs(v11);
    }
  }

  else
  {
    v9 = 0;
  }

  v13 = [(NSString *)self->_fileId hash];
  if ((*&self->_has & 4) != 0)
  {
    v14 = 2654435761 * self->_lineNumber;
  }

  else
  {
    v14 = 0;
  }

  v15 = v9 ^ v5 ^ v14 ^ v13;
  v16 = [(NSString *)self->_callingFunction hash];
  return v15 ^ v16 ^ [(NSString *)self->_measurementLabel hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  has = self->_has;
  v6 = equalCopy[56];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_27;
  }

  if (*&has)
  {
    startTimeIntervalSince2001InMs = self->_startTimeIntervalSince2001InMs;
    [equalCopy startTimeIntervalSince2001InMs];
    if (startTimeIntervalSince2001InMs != v8)
    {
      goto LABEL_27;
    }

    has = self->_has;
    v6 = equalCopy[56];
  }

  v9 = (*&has >> 1) & 1;
  if (v9 != ((v6 >> 1) & 1))
  {
    goto LABEL_27;
  }

  if (v9)
  {
    durationInMs = self->_durationInMs;
    [equalCopy durationInMs];
    if (durationInMs != v11)
    {
      goto LABEL_27;
    }
  }

  fileId = [(POMMESSchemaPOMMESFunctionPerformanceProfile *)self fileId];
  fileId2 = [equalCopy fileId];
  if ((fileId != 0) == (fileId2 == 0))
  {
    goto LABEL_26;
  }

  fileId3 = [(POMMESSchemaPOMMESFunctionPerformanceProfile *)self fileId];
  if (fileId3)
  {
    v15 = fileId3;
    fileId4 = [(POMMESSchemaPOMMESFunctionPerformanceProfile *)self fileId];
    fileId5 = [equalCopy fileId];
    v18 = [fileId4 isEqual:fileId5];

    if (!v18)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v19 = (*&self->_has >> 2) & 1;
  if (v19 != ((equalCopy[56] >> 2) & 1))
  {
    goto LABEL_27;
  }

  if (v19)
  {
    lineNumber = self->_lineNumber;
    if (lineNumber != [equalCopy lineNumber])
    {
      goto LABEL_27;
    }
  }

  fileId = [(POMMESSchemaPOMMESFunctionPerformanceProfile *)self callingFunction];
  fileId2 = [equalCopy callingFunction];
  if ((fileId != 0) == (fileId2 == 0))
  {
    goto LABEL_26;
  }

  callingFunction = [(POMMESSchemaPOMMESFunctionPerformanceProfile *)self callingFunction];
  if (callingFunction)
  {
    v22 = callingFunction;
    callingFunction2 = [(POMMESSchemaPOMMESFunctionPerformanceProfile *)self callingFunction];
    callingFunction3 = [equalCopy callingFunction];
    v25 = [callingFunction2 isEqual:callingFunction3];

    if (!v25)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  fileId = [(POMMESSchemaPOMMESFunctionPerformanceProfile *)self measurementLabel];
  fileId2 = [equalCopy measurementLabel];
  if ((fileId != 0) != (fileId2 == 0))
  {
    measurementLabel = [(POMMESSchemaPOMMESFunctionPerformanceProfile *)self measurementLabel];
    if (!measurementLabel)
    {

LABEL_30:
      v31 = 1;
      goto LABEL_28;
    }

    v27 = measurementLabel;
    measurementLabel2 = [(POMMESSchemaPOMMESFunctionPerformanceProfile *)self measurementLabel];
    measurementLabel3 = [equalCopy measurementLabel];
    v30 = [measurementLabel2 isEqual:measurementLabel3];

    if (v30)
    {
      goto LABEL_30;
    }
  }

  else
  {
LABEL_26:
  }

LABEL_27:
  v31 = 0;
LABEL_28:

  return v31;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteDoubleField();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
  }

  fileId = [(POMMESSchemaPOMMESFunctionPerformanceProfile *)self fileId];

  if (fileId)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  callingFunction = [(POMMESSchemaPOMMESFunctionPerformanceProfile *)self callingFunction];

  if (callingFunction)
  {
    PBDataWriterWriteStringField();
  }

  measurementLabel = [(POMMESSchemaPOMMESFunctionPerformanceProfile *)self measurementLabel];

  v8 = toCopy;
  if (measurementLabel)
  {
    PBDataWriterWriteStringField();
    v8 = toCopy;
  }
}

- (void)setHasLineNumber:(BOOL)number
{
  if (number)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasDurationInMs:(BOOL)ms
{
  if (ms)
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