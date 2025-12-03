@interface SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus)initWithDictionary:(id)dictionary;
- (SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasCurrentMode:(BOOL)mode;
- (void)setHasCurrentSubscriptionHash:(BOOL)hash;
- (void)setHasIsAppleIntelligenceAllowedThroughWaitlist:(BOOL)waitlist;
- (void)setHasIsAppleIntelligenceEligible:(BOOL)eligible;
- (void)setHasIsAppleIntelligenceToggled:(BOOL)toggled;
- (void)setHasPrevStatus:(BOOL)status;
- (void)setHasPreviousSubscriptionHash:(BOOL)hash;
- (void)setHasTimeSinceLastAppleIntelligenceToggleInSeconds:(BOOL)seconds;
- (void)setHasTimeSinceLastAvailabilityChangeInSeconds:(BOOL)seconds;
- (void)setHasTimeSinceLastBootInSeconds:(BOOL)seconds;
- (void)setHasTimeSinceLastEligibleChangeInSeconds:(BOOL)seconds;
- (void)setHasTimeSinceLastStatusChangeInSeconds:(BOOL)seconds;
- (void)setHasTimeSinceLastSubscriptionHashChangeInSeconds:(BOOL)seconds;
- (void)setHasTimeSinceLastWaitlistChangeInSeconds:(BOOL)seconds;
- (void)writeTo:(id)to;
@end

@implementation SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus

- (SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v36.receiver = self;
  v36.super_class = SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus;
  v5 = [(SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus *)&v36 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"newStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus setNewStatus:](v5, "setNewStatus:", [v6 unsignedLongLongValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"prevStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus setPrevStatus:](v5, "setPrevStatus:", [v7 unsignedLongLongValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"timeSinceLastStatusChangeInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 doubleValue];
      [(SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus *)v5 setTimeSinceLastStatusChangeInSeconds:?];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"timeSinceLastAvailabilityChangeInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 doubleValue];
      [(SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus *)v5 setTimeSinceLastAvailabilityChangeInSeconds:?];
    }

    v32 = v8;
    v10 = [dictionaryCopy objectForKeyedSubscript:@"isAppleIntelligenceEligible"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus setIsAppleIntelligenceEligible:](v5, "setIsAppleIntelligenceEligible:", [v10 BOOLValue]);
    }

    v11 = v7;
    v12 = [dictionaryCopy objectForKeyedSubscript:@"timeSinceLastEligibleChangeInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 doubleValue];
      [(SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus *)v5 setTimeSinceLastEligibleChangeInSeconds:?];
    }

    v13 = v6;
    v14 = [dictionaryCopy objectForKeyedSubscript:@"isAppleIntelligenceAllowedThroughWaitlist"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus setIsAppleIntelligenceAllowedThroughWaitlist:](v5, "setIsAppleIntelligenceAllowedThroughWaitlist:", [v14 BOOLValue]);
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"timeSinceLastWaitlistChangeInSeconds"];
    objc_opt_class();
    v35 = v15;
    if (objc_opt_isKindOfClass())
    {
      [v15 doubleValue];
      [(SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus *)v5 setTimeSinceLastWaitlistChangeInSeconds:?];
    }

    v34 = v13;
    v16 = [dictionaryCopy objectForKeyedSubscript:@"isAppleIntelligenceToggled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus setIsAppleIntelligenceToggled:](v5, "setIsAppleIntelligenceToggled:", [v16 BOOLValue]);
    }

    v27 = v16;
    v33 = v11;
    v17 = [dictionaryCopy objectForKeyedSubscript:@"timeSinceLastAppleIntelligenceToggleInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v17 doubleValue];
      [(SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus *)v5 setTimeSinceLastAppleIntelligenceToggleInSeconds:?];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"timeSinceLastBootInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v18 doubleValue];
      [(SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus *)v5 setTimeSinceLastBootInSeconds:?];
    }

    v31 = v9;
    v19 = [dictionaryCopy objectForKeyedSubscript:@"currentSubscriptionHash"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus setCurrentSubscriptionHash:](v5, "setCurrentSubscriptionHash:", [v19 unsignedIntValue]);
    }

    v30 = v10;
    v20 = [dictionaryCopy objectForKeyedSubscript:@"previousSubscriptionHash"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus setPreviousSubscriptionHash:](v5, "setPreviousSubscriptionHash:", [v20 unsignedIntValue]);
    }

    v28 = v14;
    v29 = v12;
    v21 = [dictionaryCopy objectForKeyedSubscript:@"timeSinceLastSubscriptionHashChangeInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v21 doubleValue];
      [(SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus *)v5 setTimeSinceLastSubscriptionHashChangeInSeconds:?];
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"useCaseID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [v22 copy];
      [(SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus *)v5 setUseCaseID:v23];
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"currentMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus setCurrentMode:](v5, "setCurrentMode:", [v24 intValue]);
    }

    v25 = v5;
  }

  return v5;
}

- (SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus *)self dictionaryRepresentation];
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
  if ((has & 0x4000) != 0)
  {
    v5 = [(SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus *)self currentMode]- 1;
    if (v5 > 3)
    {
      v6 = @"SADSIRIMODE_UNKNOWN";
    }

    else
    {
      v6 = off_1E78E25F8[v5];
    }

    [dictionary setObject:v6 forKeyedSubscript:@"currentMode"];
    has = self->_has;
  }

  if ((has & 0x800) != 0)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus currentSubscriptionHash](self, "currentSubscriptionHash")}];
    [dictionary setObject:v12 forKeyedSubscript:@"currentSubscriptionHash"];

    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_8:
      if ((has & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_28;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_8;
  }

  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus isAppleIntelligenceAllowedThroughWaitlist](self, "isAppleIntelligenceAllowedThroughWaitlist")}];
  [dictionary setObject:v13 forKeyedSubscript:@"isAppleIntelligenceAllowedThroughWaitlist"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus isAppleIntelligenceEligible](self, "isAppleIntelligenceEligible")}];
  [dictionary setObject:v14 forKeyedSubscript:@"isAppleIntelligenceEligible"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus isAppleIntelligenceToggled](self, "isAppleIntelligenceToggled")}];
  [dictionary setObject:v15 forKeyedSubscript:@"isAppleIntelligenceToggled"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_11:
    if ((has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus newStatus](self, "newStatus")}];
  [dictionary setObject:v16 forKeyedSubscript:@"newStatus"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_12:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus prevStatus](self, "prevStatus")}];
  [dictionary setObject:v17 forKeyedSubscript:@"prevStatus"];

  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_13:
    if ((has & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus previousSubscriptionHash](self, "previousSubscriptionHash")}];
  [dictionary setObject:v18 forKeyedSubscript:@"previousSubscriptionHash"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_14:
    if ((has & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  v19 = MEMORY[0x1E696AD98];
  [(SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus *)self timeSinceLastAppleIntelligenceToggleInSeconds];
  v20 = [v19 numberWithDouble:?];
  [dictionary setObject:v20 forKeyedSubscript:@"timeSinceLastAppleIntelligenceToggleInSeconds"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_15:
    if ((has & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  v21 = MEMORY[0x1E696AD98];
  [(SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus *)self timeSinceLastAvailabilityChangeInSeconds];
  v22 = [v21 numberWithDouble:?];
  [dictionary setObject:v22 forKeyedSubscript:@"timeSinceLastAvailabilityChangeInSeconds"];

  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_16:
    if ((has & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  v23 = MEMORY[0x1E696AD98];
  [(SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus *)self timeSinceLastBootInSeconds];
  v24 = [v23 numberWithDouble:?];
  [dictionary setObject:v24 forKeyedSubscript:@"timeSinceLastBootInSeconds"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_17:
    if ((has & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  v25 = MEMORY[0x1E696AD98];
  [(SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus *)self timeSinceLastEligibleChangeInSeconds];
  v26 = [v25 numberWithDouble:?];
  [dictionary setObject:v26 forKeyedSubscript:@"timeSinceLastEligibleChangeInSeconds"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_18:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_38;
  }

LABEL_37:
  v27 = MEMORY[0x1E696AD98];
  [(SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus *)self timeSinceLastStatusChangeInSeconds];
  v28 = [v27 numberWithDouble:?];
  [dictionary setObject:v28 forKeyedSubscript:@"timeSinceLastStatusChangeInSeconds"];

  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_19:
    if ((has & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_38:
  v29 = MEMORY[0x1E696AD98];
  [(SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus *)self timeSinceLastSubscriptionHashChangeInSeconds];
  v30 = [v29 numberWithDouble:?];
  [dictionary setObject:v30 forKeyedSubscript:@"timeSinceLastSubscriptionHashChangeInSeconds"];

  if ((*&self->_has & 0x80) != 0)
  {
LABEL_20:
    v7 = MEMORY[0x1E696AD98];
    [(SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus *)self timeSinceLastWaitlistChangeInSeconds];
    v8 = [v7 numberWithDouble:?];
    [dictionary setObject:v8 forKeyedSubscript:@"timeSinceLastWaitlistChangeInSeconds"];
  }

LABEL_21:
  if (self->_useCaseID)
  {
    useCaseID = [(SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus *)self useCaseID];
    v10 = [useCaseID copy];
    [dictionary setObject:v10 forKeyedSubscript:@"useCaseID"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 1) == 0)
  {
    v43 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v42 = 0;
    if ((has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  v43 = 2654435761u * self->_newStatus;
  if ((has & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v42 = 2654435761u * self->_prevStatus;
  if ((has & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  timeSinceLastStatusChangeInSeconds = self->_timeSinceLastStatusChangeInSeconds;
  if (timeSinceLastStatusChangeInSeconds < 0.0)
  {
    timeSinceLastStatusChangeInSeconds = -timeSinceLastStatusChangeInSeconds;
  }

  *v2.i64 = floor(timeSinceLastStatusChangeInSeconds + 0.5);
  v7 = (timeSinceLastStatusChangeInSeconds - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v8), v3, v2);
  v9 = 2654435761u * *v2.i64;
  if (v7 >= 0.0)
  {
    if (v7 > 0.0)
    {
      v9 += v7;
    }
  }

  else
  {
    v9 -= fabs(v7);
  }

LABEL_11:
  if ((has & 8) != 0)
  {
    timeSinceLastAvailabilityChangeInSeconds = self->_timeSinceLastAvailabilityChangeInSeconds;
    if (timeSinceLastAvailabilityChangeInSeconds < 0.0)
    {
      timeSinceLastAvailabilityChangeInSeconds = -timeSinceLastAvailabilityChangeInSeconds;
    }

    *v2.i64 = floor(timeSinceLastAvailabilityChangeInSeconds + 0.5);
    v12 = (timeSinceLastAvailabilityChangeInSeconds - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v13), v3, v2);
    v10 = 2654435761u * *v2.i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabs(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  if ((has & 0x10) != 0)
  {
    v41 = 2654435761 * self->_isAppleIntelligenceEligible;
    if ((has & 0x20) != 0)
    {
      goto LABEL_23;
    }

LABEL_28:
    v17 = 0;
    goto LABEL_29;
  }

  v41 = 0;
  if ((has & 0x20) == 0)
  {
    goto LABEL_28;
  }

LABEL_23:
  timeSinceLastEligibleChangeInSeconds = self->_timeSinceLastEligibleChangeInSeconds;
  if (timeSinceLastEligibleChangeInSeconds < 0.0)
  {
    timeSinceLastEligibleChangeInSeconds = -timeSinceLastEligibleChangeInSeconds;
  }

  *v2.i64 = floor(timeSinceLastEligibleChangeInSeconds + 0.5);
  v15 = (timeSinceLastEligibleChangeInSeconds - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v16.f64[0] = NAN;
  v16.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v16), v3, v2);
  v17 = 2654435761u * *v2.i64;
  if (v15 >= 0.0)
  {
    if (v15 > 0.0)
    {
      v17 += v15;
    }
  }

  else
  {
    v17 -= fabs(v15);
  }

LABEL_29:
  if ((has & 0x40) != 0)
  {
    v40 = 2654435761 * self->_isAppleIntelligenceAllowedThroughWaitlist;
    if ((has & 0x80) != 0)
    {
      goto LABEL_31;
    }

LABEL_36:
    v21 = 0;
    goto LABEL_37;
  }

  v40 = 0;
  if ((has & 0x80) == 0)
  {
    goto LABEL_36;
  }

LABEL_31:
  timeSinceLastWaitlistChangeInSeconds = self->_timeSinceLastWaitlistChangeInSeconds;
  if (timeSinceLastWaitlistChangeInSeconds < 0.0)
  {
    timeSinceLastWaitlistChangeInSeconds = -timeSinceLastWaitlistChangeInSeconds;
  }

  *v2.i64 = floor(timeSinceLastWaitlistChangeInSeconds + 0.5);
  v19 = (timeSinceLastWaitlistChangeInSeconds - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v20.f64[0] = NAN;
  v20.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v20), v3, v2);
  v21 = 2654435761u * *v2.i64;
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

LABEL_37:
  if ((*&self->_has & 0x100) != 0)
  {
    v39 = 2654435761 * self->_isAppleIntelligenceToggled;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_39;
    }

LABEL_44:
    v25 = 0;
    goto LABEL_45;
  }

  v39 = 0;
  if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_44;
  }

LABEL_39:
  timeSinceLastAppleIntelligenceToggleInSeconds = self->_timeSinceLastAppleIntelligenceToggleInSeconds;
  if (timeSinceLastAppleIntelligenceToggleInSeconds < 0.0)
  {
    timeSinceLastAppleIntelligenceToggleInSeconds = -timeSinceLastAppleIntelligenceToggleInSeconds;
  }

  *v2.i64 = floor(timeSinceLastAppleIntelligenceToggleInSeconds + 0.5);
  v23 = (timeSinceLastAppleIntelligenceToggleInSeconds - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v24.f64[0] = NAN;
  v24.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v24), v3, v2);
  v25 = 2654435761u * *v2.i64;
  if (v23 >= 0.0)
  {
    if (v23 > 0.0)
    {
      v25 += v23;
    }
  }

  else
  {
    v25 -= fabs(v23);
  }

LABEL_45:
  if ((*&self->_has & 0x400) != 0)
  {
    timeSinceLastBootInSeconds = self->_timeSinceLastBootInSeconds;
    if (timeSinceLastBootInSeconds < 0.0)
    {
      timeSinceLastBootInSeconds = -timeSinceLastBootInSeconds;
    }

    *v2.i64 = floor(timeSinceLastBootInSeconds + 0.5);
    v28 = (timeSinceLastBootInSeconds - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v29.f64[0] = NAN;
    v29.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v29), v3, v2);
    v26 = 2654435761u * *v2.i64;
    if (v28 >= 0.0)
    {
      if (v28 > 0.0)
      {
        v26 += v28;
      }
    }

    else
    {
      v26 -= fabs(v28);
    }
  }

  else
  {
    v26 = 0;
  }

  if ((*&self->_has & 0x800) == 0)
  {
    v38 = 0;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_61;
    }

LABEL_67:
    v30 = 0;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_62;
    }

LABEL_68:
    v34 = 0;
    goto LABEL_69;
  }

  v38 = 2654435761 * self->_currentSubscriptionHash;
  if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_67;
  }

LABEL_61:
  v30 = 2654435761 * self->_previousSubscriptionHash;
  if ((*&self->_has & 0x2000) == 0)
  {
    goto LABEL_68;
  }

LABEL_62:
  timeSinceLastSubscriptionHashChangeInSeconds = self->_timeSinceLastSubscriptionHashChangeInSeconds;
  if (timeSinceLastSubscriptionHashChangeInSeconds < 0.0)
  {
    timeSinceLastSubscriptionHashChangeInSeconds = -timeSinceLastSubscriptionHashChangeInSeconds;
  }

  *v2.i64 = floor(timeSinceLastSubscriptionHashChangeInSeconds + 0.5);
  v32 = (timeSinceLastSubscriptionHashChangeInSeconds - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v33.f64[0] = NAN;
  v33.f64[1] = NAN;
  v34 = 2654435761u * *vbslq_s8(vnegq_f64(v33), v3, v2).i64;
  if (v32 >= 0.0)
  {
    if (v32 > 0.0)
    {
      v34 += v32;
    }
  }

  else
  {
    v34 -= fabs(v32);
  }

LABEL_69:
  v35 = [(NSString *)self->_useCaseID hash];
  if ((*&self->_has & 0x4000) != 0)
  {
    v36 = 2654435761 * self->_currentMode;
  }

  else
  {
    v36 = 0;
  }

  return v42 ^ v43 ^ v9 ^ v10 ^ v41 ^ v17 ^ v40 ^ v21 ^ v39 ^ v25 ^ v26 ^ v38 ^ v30 ^ v34 ^ v36 ^ v35;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_67;
  }

  has = self->_has;
  v6 = equalCopy[62];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_67;
  }

  if (*&has)
  {
    newStatus = self->_newStatus;
    if (newStatus != [equalCopy newStatus])
    {
      goto LABEL_67;
    }

    has = self->_has;
    v6 = equalCopy[62];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_67;
  }

  if (v8)
  {
    prevStatus = self->_prevStatus;
    if (prevStatus != [equalCopy prevStatus])
    {
      goto LABEL_67;
    }

    has = self->_has;
    v6 = equalCopy[62];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_67;
  }

  if (v10)
  {
    timeSinceLastStatusChangeInSeconds = self->_timeSinceLastStatusChangeInSeconds;
    [equalCopy timeSinceLastStatusChangeInSeconds];
    if (timeSinceLastStatusChangeInSeconds != v12)
    {
      goto LABEL_67;
    }

    has = self->_has;
    v6 = equalCopy[62];
  }

  v13 = (*&has >> 3) & 1;
  if (v13 != ((v6 >> 3) & 1))
  {
    goto LABEL_67;
  }

  if (v13)
  {
    timeSinceLastAvailabilityChangeInSeconds = self->_timeSinceLastAvailabilityChangeInSeconds;
    [equalCopy timeSinceLastAvailabilityChangeInSeconds];
    if (timeSinceLastAvailabilityChangeInSeconds != v15)
    {
      goto LABEL_67;
    }

    has = self->_has;
    v6 = equalCopy[62];
  }

  v16 = (*&has >> 4) & 1;
  if (v16 != ((v6 >> 4) & 1))
  {
    goto LABEL_67;
  }

  if (v16)
  {
    isAppleIntelligenceEligible = self->_isAppleIntelligenceEligible;
    if (isAppleIntelligenceEligible != [equalCopy isAppleIntelligenceEligible])
    {
      goto LABEL_67;
    }

    has = self->_has;
    v6 = equalCopy[62];
  }

  v18 = (*&has >> 5) & 1;
  if (v18 != ((v6 >> 5) & 1))
  {
    goto LABEL_67;
  }

  if (v18)
  {
    timeSinceLastEligibleChangeInSeconds = self->_timeSinceLastEligibleChangeInSeconds;
    [equalCopy timeSinceLastEligibleChangeInSeconds];
    if (timeSinceLastEligibleChangeInSeconds != v20)
    {
      goto LABEL_67;
    }

    has = self->_has;
    v6 = equalCopy[62];
  }

  v21 = (*&has >> 6) & 1;
  if (v21 != ((v6 >> 6) & 1))
  {
    goto LABEL_67;
  }

  if (v21)
  {
    isAppleIntelligenceAllowedThroughWaitlist = self->_isAppleIntelligenceAllowedThroughWaitlist;
    if (isAppleIntelligenceAllowedThroughWaitlist != [equalCopy isAppleIntelligenceAllowedThroughWaitlist])
    {
      goto LABEL_67;
    }

    has = self->_has;
    v6 = equalCopy[62];
  }

  v23 = (*&has >> 7) & 1;
  if (v23 != ((v6 >> 7) & 1))
  {
    goto LABEL_67;
  }

  if (v23)
  {
    timeSinceLastWaitlistChangeInSeconds = self->_timeSinceLastWaitlistChangeInSeconds;
    [equalCopy timeSinceLastWaitlistChangeInSeconds];
    if (timeSinceLastWaitlistChangeInSeconds != v25)
    {
      goto LABEL_67;
    }

    has = self->_has;
    v6 = equalCopy[62];
  }

  v26 = (*&has >> 8) & 1;
  if (v26 != ((v6 >> 8) & 1))
  {
    goto LABEL_67;
  }

  if (v26)
  {
    isAppleIntelligenceToggled = self->_isAppleIntelligenceToggled;
    if (isAppleIntelligenceToggled != [equalCopy isAppleIntelligenceToggled])
    {
      goto LABEL_67;
    }

    has = self->_has;
    v6 = equalCopy[62];
  }

  v28 = (*&has >> 9) & 1;
  if (v28 != ((v6 >> 9) & 1))
  {
    goto LABEL_67;
  }

  if (v28)
  {
    timeSinceLastAppleIntelligenceToggleInSeconds = self->_timeSinceLastAppleIntelligenceToggleInSeconds;
    [equalCopy timeSinceLastAppleIntelligenceToggleInSeconds];
    if (timeSinceLastAppleIntelligenceToggleInSeconds != v30)
    {
      goto LABEL_67;
    }

    has = self->_has;
    v6 = equalCopy[62];
  }

  v31 = (*&has >> 10) & 1;
  if (v31 != ((v6 >> 10) & 1))
  {
    goto LABEL_67;
  }

  if (v31)
  {
    timeSinceLastBootInSeconds = self->_timeSinceLastBootInSeconds;
    [equalCopy timeSinceLastBootInSeconds];
    if (timeSinceLastBootInSeconds != v33)
    {
      goto LABEL_67;
    }

    has = self->_has;
    v6 = equalCopy[62];
  }

  v34 = (*&has >> 11) & 1;
  if (v34 != ((v6 >> 11) & 1))
  {
    goto LABEL_67;
  }

  if (v34)
  {
    currentSubscriptionHash = self->_currentSubscriptionHash;
    if (currentSubscriptionHash != [equalCopy currentSubscriptionHash])
    {
      goto LABEL_67;
    }

    has = self->_has;
    v6 = equalCopy[62];
  }

  v36 = (*&has >> 12) & 1;
  if (v36 != ((v6 >> 12) & 1))
  {
    goto LABEL_67;
  }

  if (v36)
  {
    previousSubscriptionHash = self->_previousSubscriptionHash;
    if (previousSubscriptionHash == [equalCopy previousSubscriptionHash])
    {
      has = self->_has;
      v6 = equalCopy[62];
      goto LABEL_54;
    }

LABEL_67:
    v51 = 0;
    goto LABEL_68;
  }

LABEL_54:
  v38 = (*&has >> 13) & 1;
  if (v38 != ((v6 >> 13) & 1))
  {
    goto LABEL_67;
  }

  if (v38)
  {
    timeSinceLastSubscriptionHashChangeInSeconds = self->_timeSinceLastSubscriptionHashChangeInSeconds;
    [equalCopy timeSinceLastSubscriptionHashChangeInSeconds];
    if (timeSinceLastSubscriptionHashChangeInSeconds != v40)
    {
      goto LABEL_67;
    }
  }

  useCaseID = [(SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus *)self useCaseID];
  useCaseID2 = [equalCopy useCaseID];
  v43 = useCaseID2;
  if ((useCaseID != 0) == (useCaseID2 == 0))
  {

    goto LABEL_67;
  }

  useCaseID3 = [(SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus *)self useCaseID];
  if (useCaseID3)
  {
    v45 = useCaseID3;
    useCaseID4 = [(SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus *)self useCaseID];
    useCaseID5 = [equalCopy useCaseID];
    v48 = [useCaseID4 isEqual:useCaseID5];

    if (!v48)
    {
      goto LABEL_67;
    }
  }

  else
  {
  }

  v49 = (*&self->_has >> 14) & 1;
  if (v49 != ((equalCopy[62] >> 14) & 1))
  {
    goto LABEL_67;
  }

  if (v49)
  {
    currentMode = self->_currentMode;
    if (currentMode != [equalCopy currentMode])
    {
      goto LABEL_67;
    }
  }

  v51 = 1;
LABEL_68:

  return v51;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_11:
    if ((has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_12:
    if ((has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_13:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_14:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_35:
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_15:
    PBDataWriterWriteDoubleField();
  }

LABEL_16:
  useCaseID = [(SADSchemaSADIntelligenceFeatureAvailabilityChangeStatus *)self useCaseID];

  if (useCaseID)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x4000) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setHasCurrentMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFF | v3;
}

- (void)setHasTimeSinceLastSubscriptionHashChangeInSeconds:(BOOL)seconds
{
  if (seconds)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasPreviousSubscriptionHash:(BOOL)hash
{
  if (hash)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasCurrentSubscriptionHash:(BOOL)hash
{
  if (hash)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasTimeSinceLastBootInSeconds:(BOOL)seconds
{
  if (seconds)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasTimeSinceLastAppleIntelligenceToggleInSeconds:(BOOL)seconds
{
  if (seconds)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasIsAppleIntelligenceToggled:(BOOL)toggled
{
  if (toggled)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasTimeSinceLastWaitlistChangeInSeconds:(BOOL)seconds
{
  if (seconds)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasIsAppleIntelligenceAllowedThroughWaitlist:(BOOL)waitlist
{
  if (waitlist)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasTimeSinceLastEligibleChangeInSeconds:(BOOL)seconds
{
  if (seconds)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasIsAppleIntelligenceEligible:(BOOL)eligible
{
  if (eligible)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasTimeSinceLastAvailabilityChangeInSeconds:(BOOL)seconds
{
  if (seconds)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasTimeSinceLastStatusChangeInSeconds:(BOOL)seconds
{
  if (seconds)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasPrevStatus:(BOOL)status
{
  if (status)
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