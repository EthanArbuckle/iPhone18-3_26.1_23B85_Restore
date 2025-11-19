@interface POMMESSchemaPOMMESFunctionPerformanceProfile
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (POMMESSchemaPOMMESFunctionPerformanceProfile)initWithDictionary:(id)a3;
- (POMMESSchemaPOMMESFunctionPerformanceProfile)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasDurationInMs:(BOOL)a3;
- (void)setHasLineNumber:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation POMMESSchemaPOMMESFunctionPerformanceProfile

- (POMMESSchemaPOMMESFunctionPerformanceProfile)initWithDictionary:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = POMMESSchemaPOMMESFunctionPerformanceProfile;
  v5 = [(POMMESSchemaPOMMESFunctionPerformanceProfile *)&v17 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"startTimeIntervalSince2001InMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 doubleValue];
      [(POMMESSchemaPOMMESFunctionPerformanceProfile *)v5 setStartTimeIntervalSince2001InMs:?];
    }

    v7 = [v4 objectForKeyedSubscript:@"durationInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 doubleValue];
      [(POMMESSchemaPOMMESFunctionPerformanceProfile *)v5 setDurationInMs:?];
    }

    v8 = [v4 objectForKeyedSubscript:@"fileId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(POMMESSchemaPOMMESFunctionPerformanceProfile *)v5 setFileId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"lineNumber"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[POMMESSchemaPOMMESFunctionPerformanceProfile setLineNumber:](v5, "setLineNumber:", [v10 intValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"callingFunction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(POMMESSchemaPOMMESFunctionPerformanceProfile *)v5 setCallingFunction:v12];
    }

    v13 = [v4 objectForKeyedSubscript:@"measurementLabel"];
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

- (POMMESSchemaPOMMESFunctionPerformanceProfile)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(POMMESSchemaPOMMESFunctionPerformanceProfile *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(POMMESSchemaPOMMESFunctionPerformanceProfile *)self dictionaryRepresentation];
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
  if (self->_callingFunction)
  {
    v4 = [(POMMESSchemaPOMMESFunctionPerformanceProfile *)self callingFunction];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"callingFunction"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v6 = MEMORY[0x1E696AD98];
    [(POMMESSchemaPOMMESFunctionPerformanceProfile *)self durationInMs];
    v7 = [v6 numberWithDouble:?];
    [v3 setObject:v7 forKeyedSubscript:@"durationInMs"];
  }

  if (self->_fileId)
  {
    v8 = [(POMMESSchemaPOMMESFunctionPerformanceProfile *)self fileId];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"fileId"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[POMMESSchemaPOMMESFunctionPerformanceProfile lineNumber](self, "lineNumber")}];
    [v3 setObject:v10 forKeyedSubscript:@"lineNumber"];
  }

  if (self->_measurementLabel)
  {
    v11 = [(POMMESSchemaPOMMESFunctionPerformanceProfile *)self measurementLabel];
    v12 = [v11 copy];
    [v3 setObject:v12 forKeyedSubscript:@"measurementLabel"];
  }

  if (*&self->_has)
  {
    v13 = MEMORY[0x1E696AD98];
    [(POMMESSchemaPOMMESFunctionPerformanceProfile *)self startTimeIntervalSince2001InMs];
    v14 = [v13 numberWithDouble:?];
    [v3 setObject:v14 forKeyedSubscript:@"startTimeIntervalSince2001InMs"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  has = self->_has;
  v6 = v4[56];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_27;
  }

  if (*&has)
  {
    startTimeIntervalSince2001InMs = self->_startTimeIntervalSince2001InMs;
    [v4 startTimeIntervalSince2001InMs];
    if (startTimeIntervalSince2001InMs != v8)
    {
      goto LABEL_27;
    }

    has = self->_has;
    v6 = v4[56];
  }

  v9 = (*&has >> 1) & 1;
  if (v9 != ((v6 >> 1) & 1))
  {
    goto LABEL_27;
  }

  if (v9)
  {
    durationInMs = self->_durationInMs;
    [v4 durationInMs];
    if (durationInMs != v11)
    {
      goto LABEL_27;
    }
  }

  v12 = [(POMMESSchemaPOMMESFunctionPerformanceProfile *)self fileId];
  v13 = [v4 fileId];
  if ((v12 != 0) == (v13 == 0))
  {
    goto LABEL_26;
  }

  v14 = [(POMMESSchemaPOMMESFunctionPerformanceProfile *)self fileId];
  if (v14)
  {
    v15 = v14;
    v16 = [(POMMESSchemaPOMMESFunctionPerformanceProfile *)self fileId];
    v17 = [v4 fileId];
    v18 = [v16 isEqual:v17];

    if (!v18)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v19 = (*&self->_has >> 2) & 1;
  if (v19 != ((v4[56] >> 2) & 1))
  {
    goto LABEL_27;
  }

  if (v19)
  {
    lineNumber = self->_lineNumber;
    if (lineNumber != [v4 lineNumber])
    {
      goto LABEL_27;
    }
  }

  v12 = [(POMMESSchemaPOMMESFunctionPerformanceProfile *)self callingFunction];
  v13 = [v4 callingFunction];
  if ((v12 != 0) == (v13 == 0))
  {
    goto LABEL_26;
  }

  v21 = [(POMMESSchemaPOMMESFunctionPerformanceProfile *)self callingFunction];
  if (v21)
  {
    v22 = v21;
    v23 = [(POMMESSchemaPOMMESFunctionPerformanceProfile *)self callingFunction];
    v24 = [v4 callingFunction];
    v25 = [v23 isEqual:v24];

    if (!v25)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v12 = [(POMMESSchemaPOMMESFunctionPerformanceProfile *)self measurementLabel];
  v13 = [v4 measurementLabel];
  if ((v12 != 0) != (v13 == 0))
  {
    v26 = [(POMMESSchemaPOMMESFunctionPerformanceProfile *)self measurementLabel];
    if (!v26)
    {

LABEL_30:
      v31 = 1;
      goto LABEL_28;
    }

    v27 = v26;
    v28 = [(POMMESSchemaPOMMESFunctionPerformanceProfile *)self measurementLabel];
    v29 = [v4 measurementLabel];
    v30 = [v28 isEqual:v29];

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

- (void)writeTo:(id)a3
{
  v9 = a3;
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

  v5 = [(POMMESSchemaPOMMESFunctionPerformanceProfile *)self fileId];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v6 = [(POMMESSchemaPOMMESFunctionPerformanceProfile *)self callingFunction];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(POMMESSchemaPOMMESFunctionPerformanceProfile *)self measurementLabel];

  v8 = v9;
  if (v7)
  {
    PBDataWriterWriteStringField();
    v8 = v9;
  }
}

- (void)setHasLineNumber:(BOOL)a3
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

- (void)setHasDurationInMs:(BOOL)a3
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

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end