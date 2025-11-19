@interface PSESchemaPSECommonSignal
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PSESchemaPSECommonSignal)initWithDictionary:(id)a3;
- (PSESchemaPSECommonSignal)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAppFollowup:(BOOL)a3;
- (void)setHasAppLaunchReason:(BOOL)a3;
- (void)setHasAppLaunchTimeInSecondsSince2001:(BOOL)a3;
- (void)setHasHasUserInitiatedFollowup:(BOOL)a3;
- (void)setHasIsDonatedBySiri:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PSESchemaPSECommonSignal

- (PSESchemaPSECommonSignal)initWithDictionary:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PSESchemaPSECommonSignal;
  v5 = [(PSESchemaPSECommonSignal *)&v19 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventDonationTimeInSecondsSince2001"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 doubleValue];
      [(PSESchemaPSECommonSignal *)v5 setEventDonationTimeInSecondsSince2001:?];
    }

    v18 = v6;
    v7 = [v4 objectForKeyedSubscript:@"domain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(PSESchemaPSECommonSignal *)v5 setDomain:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"action"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(PSESchemaPSECommonSignal *)v5 setAction:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"isDonatedBySiri"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PSESchemaPSECommonSignal setIsDonatedBySiri:](v5, "setIsDonatedBySiri:", [v11 intValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"hasUserInitiatedFollowup"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PSESchemaPSECommonSignal setHasUserInitiatedFollowup:](v5, "setHasUserInitiatedFollowup:", [v12 BOOLValue]);
    }

    v13 = [v4 objectForKeyedSubscript:@"appFollowup"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PSESchemaPSECommonSignal setAppFollowup:](v5, "setAppFollowup:", [v13 intValue]);
    }

    v14 = [v4 objectForKeyedSubscript:@"appLaunchTimeInSecondsSince2001"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v14 doubleValue];
      [(PSESchemaPSECommonSignal *)v5 setAppLaunchTimeInSecondsSince2001:?];
    }

    v15 = [v4 objectForKeyedSubscript:@"appLaunchReason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PSESchemaPSECommonSignal setAppLaunchReason:](v5, "setAppLaunchReason:", [v15 intValue]);
    }

    v16 = v5;
  }

  return v5;
}

- (PSESchemaPSECommonSignal)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PSESchemaPSECommonSignal *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PSESchemaPSECommonSignal *)self dictionaryRepresentation];
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
  if (self->_action)
  {
    v4 = [(PSESchemaPSECommonSignal *)self action];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"action"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v7 = [(PSESchemaPSECommonSignal *)self appFollowup]- 1;
    if (v7 > 3)
    {
      v8 = @"PSEAPPFOLLOWUP_UNKNOWN";
    }

    else
    {
      v8 = off_1E78E13D8[v7];
    }

    [v3 setObject:v8 forKeyedSubscript:@"appFollowup"];
    has = self->_has;
  }

  if ((has & 0x20) != 0)
  {
    v9 = [(PSESchemaPSECommonSignal *)self appLaunchReason]- 1;
    if (v9 > 3)
    {
      v10 = @"PSEAPPLAUNCHREASON_UNKNOWN";
    }

    else
    {
      v10 = off_1E78E13F8[v9];
    }

    [v3 setObject:v10 forKeyedSubscript:@"appLaunchReason"];
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    v11 = MEMORY[0x1E696AD98];
    [(PSESchemaPSECommonSignal *)self appLaunchTimeInSecondsSince2001];
    v12 = [v11 numberWithDouble:?];
    [v3 setObject:v12 forKeyedSubscript:@"appLaunchTimeInSecondsSince2001"];
  }

  if (self->_domain)
  {
    v13 = [(PSESchemaPSECommonSignal *)self domain];
    v14 = [v13 copy];
    [v3 setObject:v14 forKeyedSubscript:@"domain"];
  }

  v15 = self->_has;
  if ((v15 & 1) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_19;
    }

LABEL_22:
    v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[PSESchemaPSECommonSignal hasUserInitiatedFollowup](self, "hasUserInitiatedFollowup")}];
    [v3 setObject:v18 forKeyedSubscript:@"hasUserInitiatedFollowup"];

    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_27;
    }

LABEL_23:
    v19 = [(PSESchemaPSECommonSignal *)self isDonatedBySiri]- 1;
    if (v19 > 2)
    {
      v20 = @"PSEDONATIONSOURCE_UNKNOWN";
    }

    else
    {
      v20 = off_1E78E1418[v19];
    }

    [v3 setObject:v20 forKeyedSubscript:@"isDonatedBySiri"];
    goto LABEL_27;
  }

  v16 = MEMORY[0x1E696AD98];
  [(PSESchemaPSECommonSignal *)self eventDonationTimeInSecondsSince2001];
  v17 = [v16 numberWithDouble:?];
  [v3 setObject:v17 forKeyedSubscript:@"eventDonationTimeInSecondsSince2001"];

  v15 = self->_has;
  if ((v15 & 4) != 0)
  {
    goto LABEL_22;
  }

LABEL_19:
  if ((v15 & 2) != 0)
  {
    goto LABEL_23;
  }

LABEL_27:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    eventDonationTimeInSecondsSince2001 = self->_eventDonationTimeInSecondsSince2001;
    if (eventDonationTimeInSecondsSince2001 < 0.0)
    {
      eventDonationTimeInSecondsSince2001 = -eventDonationTimeInSecondsSince2001;
    }

    *v2.i64 = floor(eventDonationTimeInSecondsSince2001 + 0.5);
    v7 = (eventDonationTimeInSecondsSince2001 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v5 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v3, v2).i64;
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

  v9 = [(NSString *)self->_domain hash];
  v10 = [(NSString *)self->_action hash];
  if ((*&self->_has & 2) != 0)
  {
    v13 = 2654435761 * self->_isDonatedBySiri;
    if ((*&self->_has & 4) != 0)
    {
LABEL_11:
      v14 = 2654435761 * self->_hasUserInitiatedFollowup;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_12;
      }

LABEL_19:
      v15 = 0;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_13;
      }

LABEL_20:
      v19 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v13 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_11;
    }
  }

  v14 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_19;
  }

LABEL_12:
  v15 = 2654435761 * self->_appFollowup;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_20;
  }

LABEL_13:
  appLaunchTimeInSecondsSince2001 = self->_appLaunchTimeInSecondsSince2001;
  if (appLaunchTimeInSecondsSince2001 < 0.0)
  {
    appLaunchTimeInSecondsSince2001 = -appLaunchTimeInSecondsSince2001;
  }

  *v11.i64 = floor(appLaunchTimeInSecondsSince2001 + 0.5);
  v17 = (appLaunchTimeInSecondsSince2001 - *v11.i64) * 1.84467441e19;
  *v12.i64 = *v11.i64 - trunc(*v11.i64 * 5.42101086e-20) * 1.84467441e19;
  v18.f64[0] = NAN;
  v18.f64[1] = NAN;
  v19 = 2654435761u * *vbslq_s8(vnegq_f64(v18), v12, v11).i64;
  if (v17 >= 0.0)
  {
    if (v17 > 0.0)
    {
      v19 += v17;
    }
  }

  else
  {
    v19 -= fabs(v17);
  }

LABEL_21:
  if ((*&self->_has & 0x20) != 0)
  {
    v20 = 2654435761 * self->_appLaunchReason;
  }

  else
  {
    v20 = 0;
  }

  return v9 ^ v5 ^ v10 ^ v13 ^ v14 ^ v15 ^ v19 ^ v20;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (v4[60] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    eventDonationTimeInSecondsSince2001 = self->_eventDonationTimeInSecondsSince2001;
    [v4 eventDonationTimeInSecondsSince2001];
    if (eventDonationTimeInSecondsSince2001 != v6)
    {
      goto LABEL_15;
    }
  }

  v7 = [(PSESchemaPSECommonSignal *)self domain];
  v8 = [v4 domain];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_14;
  }

  v9 = [(PSESchemaPSECommonSignal *)self domain];
  if (v9)
  {
    v10 = v9;
    v11 = [(PSESchemaPSECommonSignal *)self domain];
    v12 = [v4 domain];
    v13 = [v11 isEqual:v12];

    if (!v13)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v7 = [(PSESchemaPSECommonSignal *)self action];
  v8 = [v4 action];
  if ((v7 != 0) == (v8 == 0))
  {
LABEL_14:

    goto LABEL_15;
  }

  v14 = [(PSESchemaPSECommonSignal *)self action];
  if (v14)
  {
    v15 = v14;
    v16 = [(PSESchemaPSECommonSignal *)self action];
    v17 = [v4 action];
    v18 = [v16 isEqual:v17];

    if (!v18)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  has = self->_has;
  v22 = (*&has >> 1) & 1;
  v23 = v4[60];
  if (v22 == ((v23 >> 1) & 1))
  {
    if (v22)
    {
      isDonatedBySiri = self->_isDonatedBySiri;
      if (isDonatedBySiri != [v4 isDonatedBySiri])
      {
        goto LABEL_15;
      }

      has = self->_has;
      v23 = v4[60];
    }

    v25 = (*&has >> 2) & 1;
    if (v25 == ((v23 >> 2) & 1))
    {
      if (v25)
      {
        hasUserInitiatedFollowup = self->_hasUserInitiatedFollowup;
        if (hasUserInitiatedFollowup != [v4 hasUserInitiatedFollowup])
        {
          goto LABEL_15;
        }

        has = self->_has;
        v23 = v4[60];
      }

      v27 = (*&has >> 3) & 1;
      if (v27 == ((v23 >> 3) & 1))
      {
        if (v27)
        {
          appFollowup = self->_appFollowup;
          if (appFollowup != [v4 appFollowup])
          {
            goto LABEL_15;
          }

          has = self->_has;
          v23 = v4[60];
        }

        v29 = (*&has >> 4) & 1;
        if (v29 == ((v23 >> 4) & 1))
        {
          if (v29)
          {
            appLaunchTimeInSecondsSince2001 = self->_appLaunchTimeInSecondsSince2001;
            [v4 appLaunchTimeInSecondsSince2001];
            if (appLaunchTimeInSecondsSince2001 != v31)
            {
              goto LABEL_15;
            }

            has = self->_has;
            v23 = v4[60];
          }

          v32 = (*&has >> 5) & 1;
          if (v32 == ((v23 >> 5) & 1))
          {
            if (!v32 || (appLaunchReason = self->_appLaunchReason, appLaunchReason == [v4 appLaunchReason]))
            {
              v19 = 1;
              goto LABEL_16;
            }
          }
        }
      }
    }
  }

LABEL_15:
  v19 = 0;
LABEL_16:

  return v19;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
  }

  v4 = [(PSESchemaPSECommonSignal *)self domain];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(PSESchemaPSECommonSignal *)self action];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_9:
      if ((has & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_11:
    if ((has & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_19:
  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_12:
    PBDataWriterWriteInt32Field();
  }

LABEL_13:
}

- (void)setHasAppLaunchReason:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasAppLaunchTimeInSecondsSince2001:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasAppFollowup:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasHasUserInitiatedFollowup:(BOOL)a3
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

- (void)setHasIsDonatedBySiri:(BOOL)a3
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