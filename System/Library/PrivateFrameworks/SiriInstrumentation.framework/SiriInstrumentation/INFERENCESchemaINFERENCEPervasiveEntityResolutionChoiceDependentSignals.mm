@interface INFERENCESchemaINFERENCEPervasiveEntityResolutionChoiceDependentSignals
- (BOOL)isEqual:(id)equal;
- (INFERENCESchemaINFERENCEPervasiveEntityResolutionChoiceDependentSignals)initWithDictionary:(id)dictionary;
- (INFERENCESchemaINFERENCEPervasiveEntityResolutionChoiceDependentSignals)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasFrequencyPercentage:(BOOL)percentage;
- (void)setHasIsModelPredictedChoice:(BOOL)choice;
- (void)setHasIsUserSelectedChoice:(BOOL)choice;
- (void)setHasLastContiguousCount:(BOOL)count;
- (void)setHasLocationAffinity156Kilometers:(BOOL)kilometers;
- (void)setHasLocationAffinity2500Meters:(BOOL)meters;
- (void)setHasLocationAffinity300Meters:(BOOL)meters;
- (void)setHasLocationFrequencyCount156Kilometers:(BOOL)kilometers;
- (void)setHasLocationFrequencyCount2500Meters:(BOOL)meters;
- (void)setHasLocationFrequencyCount300Meters:(BOOL)meters;
- (void)setHasRecencyRank:(BOOL)rank;
- (void)setHasRecencySeconds:(BOOL)seconds;
- (void)writeTo:(id)to;
@end

@implementation INFERENCESchemaINFERENCEPervasiveEntityResolutionChoiceDependentSignals

- (INFERENCESchemaINFERENCEPervasiveEntityResolutionChoiceDependentSignals)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v28.receiver = self;
  v28.super_class = INFERENCESchemaINFERENCEPervasiveEntityResolutionChoiceDependentSignals;
  v5 = [(INFERENCESchemaINFERENCEPervasiveEntityResolutionChoiceDependentSignals *)&v28 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"choice"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEPervasiveEntityResolutionChoiceDependentSignals setChoice:](v5, "setChoice:", [v6 longLongValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"isUserSelectedChoice"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEPervasiveEntityResolutionChoiceDependentSignals setIsUserSelectedChoice:](v5, "setIsUserSelectedChoice:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"isModelPredictedChoice"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEPervasiveEntityResolutionChoiceDependentSignals setIsModelPredictedChoice:](v5, "setIsModelPredictedChoice:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"frequencyPercentage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 floatValue];
      [(INFERENCESchemaINFERENCEPervasiveEntityResolutionChoiceDependentSignals *)v5 setFrequencyPercentage:?];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"recencySeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEPervasiveEntityResolutionChoiceDependentSignals setRecencySeconds:](v5, "setRecencySeconds:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"recencyRank"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEPervasiveEntityResolutionChoiceDependentSignals setRecencyRank:](v5, "setRecencyRank:", [v11 intValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"lastContiguousCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEPervasiveEntityResolutionChoiceDependentSignals setLastContiguousCount:](v5, "setLastContiguousCount:", [v12 intValue]);
    }

    v27 = v6;
    v13 = [dictionaryCopy objectForKeyedSubscript:{@"locationAffinity300Meters", v12}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v13 floatValue];
      [(INFERENCESchemaINFERENCEPervasiveEntityResolutionChoiceDependentSignals *)v5 setLocationAffinity300Meters:?];
    }

    v26 = v7;
    v14 = [dictionaryCopy objectForKeyedSubscript:@"locationAffinity2500Meters"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v14 floatValue];
      [(INFERENCESchemaINFERENCEPervasiveEntityResolutionChoiceDependentSignals *)v5 setLocationAffinity2500Meters:?];
    }

    v25 = v8;
    v15 = [dictionaryCopy objectForKeyedSubscript:@"locationAffinity156Kilometers"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v15 floatValue];
      [(INFERENCESchemaINFERENCEPervasiveEntityResolutionChoiceDependentSignals *)v5 setLocationAffinity156Kilometers:?];
    }

    v23 = v11;
    v24 = v9;
    v16 = [dictionaryCopy objectForKeyedSubscript:@"locationFrequencyCount300Meters"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEPervasiveEntityResolutionChoiceDependentSignals setLocationFrequencyCount300Meters:](v5, "setLocationFrequencyCount300Meters:", [v16 longLongValue]);
    }

    v17 = v10;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"locationFrequencyCount2500Meters"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEPervasiveEntityResolutionChoiceDependentSignals setLocationFrequencyCount2500Meters:](v5, "setLocationFrequencyCount2500Meters:", [v18 longLongValue]);
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"locationFrequencyCount156Kilometers"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEPervasiveEntityResolutionChoiceDependentSignals setLocationFrequencyCount156Kilometers:](v5, "setLocationFrequencyCount156Kilometers:", [v19 longLongValue]);
    }

    v20 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCEPervasiveEntityResolutionChoiceDependentSignals)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEPervasiveEntityResolutionChoiceDependentSignals *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(INFERENCESchemaINFERENCEPervasiveEntityResolutionChoiceDependentSignals *)self dictionaryRepresentation];
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
  if (has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[INFERENCESchemaINFERENCEPervasiveEntityResolutionChoiceDependentSignals choice](self, "choice")}];
    [dictionary setObject:v7 forKeyedSubscript:@"choice"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  v8 = MEMORY[0x1E696AD98];
  [(INFERENCESchemaINFERENCEPervasiveEntityResolutionChoiceDependentSignals *)self frequencyPercentage];
  v9 = [v8 numberWithFloat:?];
  [dictionary setObject:v9 forKeyedSubscript:@"frequencyPercentage"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEPervasiveEntityResolutionChoiceDependentSignals isModelPredictedChoice](self, "isModelPredictedChoice")}];
  [dictionary setObject:v10 forKeyedSubscript:@"isModelPredictedChoice"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEPervasiveEntityResolutionChoiceDependentSignals isUserSelectedChoice](self, "isUserSelectedChoice")}];
  [dictionary setObject:v11 forKeyedSubscript:@"isUserSelectedChoice"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEPervasiveEntityResolutionChoiceDependentSignals lastContiguousCount](self, "lastContiguousCount")}];
  [dictionary setObject:v12 forKeyedSubscript:@"lastContiguousCount"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v13 = MEMORY[0x1E696AD98];
  [(INFERENCESchemaINFERENCEPervasiveEntityResolutionChoiceDependentSignals *)self locationAffinity156Kilometers];
  v14 = [v13 numberWithFloat:?];
  [dictionary setObject:v14 forKeyedSubscript:@"locationAffinity156Kilometers"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v15 = MEMORY[0x1E696AD98];
  [(INFERENCESchemaINFERENCEPervasiveEntityResolutionChoiceDependentSignals *)self locationAffinity2500Meters];
  v16 = [v15 numberWithFloat:?];
  [dictionary setObject:v16 forKeyedSubscript:@"locationAffinity2500Meters"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  v17 = MEMORY[0x1E696AD98];
  [(INFERENCESchemaINFERENCEPervasiveEntityResolutionChoiceDependentSignals *)self locationAffinity300Meters];
  v18 = [v17 numberWithFloat:?];
  [dictionary setObject:v18 forKeyedSubscript:@"locationAffinity300Meters"];

  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_10:
    if ((has & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  v19 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[INFERENCESchemaINFERENCEPervasiveEntityResolutionChoiceDependentSignals locationFrequencyCount156Kilometers](self, "locationFrequencyCount156Kilometers")}];
  [dictionary setObject:v19 forKeyedSubscript:@"locationFrequencyCount156Kilometers"];

  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_11:
    if ((has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  v20 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[INFERENCESchemaINFERENCEPervasiveEntityResolutionChoiceDependentSignals locationFrequencyCount2500Meters](self, "locationFrequencyCount2500Meters")}];
  [dictionary setObject:v20 forKeyedSubscript:@"locationFrequencyCount2500Meters"];

  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_12:
    if ((has & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  v21 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[INFERENCESchemaINFERENCEPervasiveEntityResolutionChoiceDependentSignals locationFrequencyCount300Meters](self, "locationFrequencyCount300Meters")}];
  [dictionary setObject:v21 forKeyedSubscript:@"locationFrequencyCount300Meters"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_13:
    if ((has & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_29:
  v22 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEPervasiveEntityResolutionChoiceDependentSignals recencyRank](self, "recencyRank")}];
  [dictionary setObject:v22 forKeyedSubscript:@"recencyRank"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_14:
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[INFERENCESchemaINFERENCEPervasiveEntityResolutionChoiceDependentSignals recencySeconds](self, "recencySeconds")}];
    [dictionary setObject:v5 forKeyedSubscript:@"recencySeconds"];
  }

LABEL_15:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v5 = 2654435761 * self->_choice;
    if ((has & 2) != 0)
    {
LABEL_3:
      v6 = 2654435761 * self->_isUserSelectedChoice;
      if ((has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v5 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
  if ((has & 4) != 0)
  {
LABEL_4:
    v7 = 2654435761 * self->_isModelPredictedChoice;
    if ((has & 8) != 0)
    {
      goto LABEL_5;
    }

LABEL_13:
    v12 = 0;
    goto LABEL_14;
  }

LABEL_12:
  v7 = 0;
  if ((has & 8) == 0)
  {
    goto LABEL_13;
  }

LABEL_5:
  frequencyPercentage = self->_frequencyPercentage;
  if (frequencyPercentage >= 0.0)
  {
    v9 = frequencyPercentage;
  }

  else
  {
    v9 = -frequencyPercentage;
  }

  *v2.i64 = floor(v9 + 0.5);
  v10 = (v9 - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v11), v3, v2);
  v12 = 2654435761u * *v2.i64;
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

LABEL_14:
  if ((has & 0x10) != 0)
  {
    v13 = 2654435761 * self->_recencySeconds;
    if ((has & 0x20) != 0)
    {
LABEL_16:
      v14 = 2654435761 * self->_recencyRank;
      if ((has & 0x40) != 0)
      {
        goto LABEL_17;
      }

      goto LABEL_25;
    }
  }

  else
  {
    v13 = 0;
    if ((has & 0x20) != 0)
    {
      goto LABEL_16;
    }
  }

  v14 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_17:
    v15 = 2654435761 * self->_lastContiguousCount;
    if ((has & 0x80) != 0)
    {
      goto LABEL_18;
    }

LABEL_26:
    v20 = 0;
    goto LABEL_27;
  }

LABEL_25:
  v15 = 0;
  if ((has & 0x80) == 0)
  {
    goto LABEL_26;
  }

LABEL_18:
  locationAffinity300Meters = self->_locationAffinity300Meters;
  if (locationAffinity300Meters >= 0.0)
  {
    v17 = locationAffinity300Meters;
  }

  else
  {
    v17 = -locationAffinity300Meters;
  }

  *v2.i64 = floor(v17 + 0.5);
  v18 = (v17 - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v19.f64[0] = NAN;
  v19.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v19), v3, v2);
  v20 = 2654435761u * *v2.i64;
  if (v18 >= 0.0)
  {
    if (v18 > 0.0)
    {
      v20 += v18;
    }
  }

  else
  {
    v20 -= fabs(v18);
  }

LABEL_27:
  if ((*&self->_has & 0x100) != 0)
  {
    locationAffinity2500Meters = self->_locationAffinity2500Meters;
    if (locationAffinity2500Meters >= 0.0)
    {
      v23 = locationAffinity2500Meters;
    }

    else
    {
      v23 = -locationAffinity2500Meters;
    }

    *v2.i64 = floor(v23 + 0.5);
    v24 = (v23 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v25.f64[0] = NAN;
    v25.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v25), v3, v2);
    v21 = 2654435761u * *v2.i64;
    if (v24 >= 0.0)
    {
      if (v24 > 0.0)
      {
        v21 += v24;
      }
    }

    else
    {
      v21 -= fabs(v24);
    }
  }

  else
  {
    v21 = 0;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    locationAffinity156Kilometers = self->_locationAffinity156Kilometers;
    if (locationAffinity156Kilometers >= 0.0)
    {
      v28 = locationAffinity156Kilometers;
    }

    else
    {
      v28 = -locationAffinity156Kilometers;
    }

    *v2.i64 = floor(v28 + 0.5);
    v29 = (v28 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v30.f64[0] = NAN;
    v30.f64[1] = NAN;
    v26 = 2654435761u * *vbslq_s8(vnegq_f64(v30), v3, v2).i64;
    if (v29 >= 0.0)
    {
      if (v29 > 0.0)
      {
        v26 += v29;
      }
    }

    else
    {
      v26 -= fabs(v29);
    }
  }

  else
  {
    v26 = 0;
  }

  if ((*&self->_has & 0x400) == 0)
  {
    v31 = 0;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_51;
    }

LABEL_54:
    v32 = 0;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_52;
    }

LABEL_55:
    v33 = 0;
    return v6 ^ v5 ^ v7 ^ v12 ^ v13 ^ v14 ^ v15 ^ v20 ^ v21 ^ v26 ^ v31 ^ v32 ^ v33;
  }

  v31 = 2654435761 * self->_locationFrequencyCount300Meters;
  if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_54;
  }

LABEL_51:
  v32 = 2654435761 * self->_locationFrequencyCount2500Meters;
  if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_55;
  }

LABEL_52:
  v33 = 2654435761 * self->_locationFrequencyCount156Kilometers;
  return v6 ^ v5 ^ v7 ^ v12 ^ v13 ^ v14 ^ v15 ^ v20 ^ v21 ^ v26 ^ v31 ^ v32 ^ v33;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_54;
  }

  has = self->_has;
  v6 = equalCopy[40];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_54;
  }

  if (*&has)
  {
    choice = self->_choice;
    if (choice != [equalCopy choice])
    {
      goto LABEL_54;
    }

    has = self->_has;
    v6 = equalCopy[40];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_54;
  }

  if (v8)
  {
    isUserSelectedChoice = self->_isUserSelectedChoice;
    if (isUserSelectedChoice != [equalCopy isUserSelectedChoice])
    {
      goto LABEL_54;
    }

    has = self->_has;
    v6 = equalCopy[40];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_54;
  }

  if (v10)
  {
    isModelPredictedChoice = self->_isModelPredictedChoice;
    if (isModelPredictedChoice != [equalCopy isModelPredictedChoice])
    {
      goto LABEL_54;
    }

    has = self->_has;
    v6 = equalCopy[40];
  }

  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_54;
  }

  if (v12)
  {
    frequencyPercentage = self->_frequencyPercentage;
    [equalCopy frequencyPercentage];
    if (frequencyPercentage != v14)
    {
      goto LABEL_54;
    }

    has = self->_has;
    v6 = equalCopy[40];
  }

  v15 = (*&has >> 4) & 1;
  if (v15 != ((v6 >> 4) & 1))
  {
    goto LABEL_54;
  }

  if (v15)
  {
    recencySeconds = self->_recencySeconds;
    if (recencySeconds != [equalCopy recencySeconds])
    {
      goto LABEL_54;
    }

    has = self->_has;
    v6 = equalCopy[40];
  }

  v17 = (*&has >> 5) & 1;
  if (v17 != ((v6 >> 5) & 1))
  {
    goto LABEL_54;
  }

  if (v17)
  {
    recencyRank = self->_recencyRank;
    if (recencyRank != [equalCopy recencyRank])
    {
      goto LABEL_54;
    }

    has = self->_has;
    v6 = equalCopy[40];
  }

  v19 = (*&has >> 6) & 1;
  if (v19 != ((v6 >> 6) & 1))
  {
    goto LABEL_54;
  }

  if (v19)
  {
    lastContiguousCount = self->_lastContiguousCount;
    if (lastContiguousCount != [equalCopy lastContiguousCount])
    {
      goto LABEL_54;
    }

    has = self->_has;
    v6 = equalCopy[40];
  }

  v21 = (*&has >> 7) & 1;
  if (v21 != ((v6 >> 7) & 1))
  {
    goto LABEL_54;
  }

  if (v21)
  {
    locationAffinity300Meters = self->_locationAffinity300Meters;
    [equalCopy locationAffinity300Meters];
    if (locationAffinity300Meters != v23)
    {
      goto LABEL_54;
    }

    has = self->_has;
    v6 = equalCopy[40];
  }

  v24 = (*&has >> 8) & 1;
  if (v24 != ((v6 >> 8) & 1))
  {
    goto LABEL_54;
  }

  if (v24)
  {
    locationAffinity2500Meters = self->_locationAffinity2500Meters;
    [equalCopy locationAffinity2500Meters];
    if (locationAffinity2500Meters != v26)
    {
      goto LABEL_54;
    }

    has = self->_has;
    v6 = equalCopy[40];
  }

  v27 = (*&has >> 9) & 1;
  if (v27 != ((v6 >> 9) & 1))
  {
    goto LABEL_54;
  }

  if (v27)
  {
    locationAffinity156Kilometers = self->_locationAffinity156Kilometers;
    [equalCopy locationAffinity156Kilometers];
    if (locationAffinity156Kilometers != v29)
    {
      goto LABEL_54;
    }

    has = self->_has;
    v6 = equalCopy[40];
  }

  v30 = (*&has >> 10) & 1;
  if (v30 != ((v6 >> 10) & 1))
  {
    goto LABEL_54;
  }

  if (v30)
  {
    locationFrequencyCount300Meters = self->_locationFrequencyCount300Meters;
    if (locationFrequencyCount300Meters != [equalCopy locationFrequencyCount300Meters])
    {
      goto LABEL_54;
    }

    has = self->_has;
    v6 = equalCopy[40];
  }

  v32 = (*&has >> 11) & 1;
  if (v32 != ((v6 >> 11) & 1))
  {
    goto LABEL_54;
  }

  if (v32)
  {
    locationFrequencyCount2500Meters = self->_locationFrequencyCount2500Meters;
    if (locationFrequencyCount2500Meters == [equalCopy locationFrequencyCount2500Meters])
    {
      has = self->_has;
      v6 = equalCopy[40];
      goto LABEL_50;
    }

LABEL_54:
    v36 = 0;
    goto LABEL_55;
  }

LABEL_50:
  v34 = (*&has >> 12) & 1;
  if (v34 != ((v6 >> 12) & 1))
  {
    goto LABEL_54;
  }

  if (v34)
  {
    locationFrequencyCount156Kilometers = self->_locationFrequencyCount156Kilometers;
    if (locationFrequencyCount156Kilometers != [equalCopy locationFrequencyCount156Kilometers])
    {
      goto LABEL_54;
    }
  }

  v36 = 1;
LABEL_55:

  return v36;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((has & 2) == 0)
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
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_11:
    if ((has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_12:
    if ((has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_13:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_29:
  PBDataWriterWriteInt64Field();
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_14:
    PBDataWriterWriteInt64Field();
  }

LABEL_15:
}

- (void)setHasLocationFrequencyCount156Kilometers:(BOOL)kilometers
{
  if (kilometers)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasLocationFrequencyCount2500Meters:(BOOL)meters
{
  if (meters)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasLocationFrequencyCount300Meters:(BOOL)meters
{
  if (meters)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasLocationAffinity156Kilometers:(BOOL)kilometers
{
  if (kilometers)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasLocationAffinity2500Meters:(BOOL)meters
{
  if (meters)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasLocationAffinity300Meters:(BOOL)meters
{
  if (meters)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasLastContiguousCount:(BOOL)count
{
  if (count)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasRecencyRank:(BOOL)rank
{
  if (rank)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasRecencySeconds:(BOOL)seconds
{
  if (seconds)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasFrequencyPercentage:(BOOL)percentage
{
  if (percentage)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasIsModelPredictedChoice:(BOOL)choice
{
  if (choice)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasIsUserSelectedChoice:(BOOL)choice
{
  if (choice)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end