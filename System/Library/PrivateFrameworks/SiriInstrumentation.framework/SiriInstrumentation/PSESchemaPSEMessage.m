@interface PSESchemaPSEMessage
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PSESchemaPSEMessage)initWithDictionary:(id)a3;
- (PSESchemaPSEMessage)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasContactFirstNamePhoneticScore:(BOOL)a3;
- (void)setHasContactFullNamePhoneticScore:(BOOL)a3;
- (void)setHasContactLastNamePhoneticScore:(BOOL)a3;
- (void)setHasContactMatch:(BOOL)a3;
- (void)setHasMessageUserFollowupAction:(BOOL)a3;
- (void)setHasUserFollowupEventDonationTimeInSecondsSince2001:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PSESchemaPSEMessage

- (PSESchemaPSEMessage)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PSESchemaPSEMessage;
  v5 = [(PSESchemaPSEMessage *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"hasUserInitiatedFollowup"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PSESchemaPSEMessage setHasUserInitiatedFollowup:](v5, "setHasUserInitiatedFollowup:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"userFollowupEventDonationTimeInSecondsSince2001"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 doubleValue];
      [(PSESchemaPSEMessage *)v5 setUserFollowupEventDonationTimeInSecondsSince2001:?];
    }

    v8 = [v4 objectForKeyedSubscript:@"messageUserFollowupAction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PSESchemaPSEMessage setMessageUserFollowupAction:](v5, "setMessageUserFollowupAction:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"contactMatch"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PSESchemaPSEMessage setContactMatch:](v5, "setContactMatch:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"contactFullNamePhoneticScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 doubleValue];
      [(PSESchemaPSEMessage *)v5 setContactFullNamePhoneticScore:?];
    }

    v11 = [v4 objectForKeyedSubscript:@"contactFirstNamePhoneticScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v11 doubleValue];
      [(PSESchemaPSEMessage *)v5 setContactFirstNamePhoneticScore:?];
    }

    v12 = [v4 objectForKeyedSubscript:@"contactLastNamePhoneticScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 doubleValue];
      [(PSESchemaPSEMessage *)v5 setContactLastNamePhoneticScore:?];
    }

    v13 = v5;
  }

  return v5;
}

- (PSESchemaPSEMessage)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PSESchemaPSEMessage *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PSESchemaPSEMessage *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v8 = MEMORY[0x1E696AD98];
    [(PSESchemaPSEMessage *)self contactFirstNamePhoneticScore];
    v9 = [v8 numberWithDouble:?];
    [v3 setObject:v9 forKeyedSubscript:@"contactFirstNamePhoneticScore"];

    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v10 = MEMORY[0x1E696AD98];
  [(PSESchemaPSEMessage *)self contactFullNamePhoneticScore];
  v11 = [v10 numberWithDouble:?];
  [v3 setObject:v11 forKeyedSubscript:@"contactFullNamePhoneticScore"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v12 = MEMORY[0x1E696AD98];
  [(PSESchemaPSEMessage *)self contactLastNamePhoneticScore];
  v13 = [v12 numberWithDouble:?];
  [v3 setObject:v13 forKeyedSubscript:@"contactLastNamePhoneticScore"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_15:
  v14 = [(PSESchemaPSEMessage *)self contactMatch]- 1;
  if (v14 > 2)
  {
    v15 = @"PSEMESSAGECONTACTMATCH_UNKNOWN";
  }

  else
  {
    v15 = off_1E78E1618[v14];
  }

  [v3 setObject:v15 forKeyedSubscript:@"contactMatch"];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[PSESchemaPSEMessage hasUserInitiatedFollowup](self, "hasUserInitiatedFollowup")}];
  [v3 setObject:v16 forKeyedSubscript:@"hasUserInitiatedFollowup"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_20:
  v17 = [(PSESchemaPSEMessage *)self messageUserFollowupAction]- 1;
  if (v17 > 3)
  {
    v18 = @"PSEMESSAGEUSERFOLLOWUPACTION_UNKNOWN";
  }

  else
  {
    v18 = off_1E78E1630[v17];
  }

  [v3 setObject:v18 forKeyedSubscript:@"messageUserFollowupAction"];
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_8:
  v5 = MEMORY[0x1E696AD98];
  [(PSESchemaPSEMessage *)self userFollowupEventDonationTimeInSecondsSince2001];
  v6 = [v5 numberWithDouble:?];
  [v3 setObject:v6 forKeyedSubscript:@"userFollowupEventDonationTimeInSecondsSince2001"];

LABEL_9:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_hasUserInitiatedFollowup;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  userFollowupEventDonationTimeInSecondsSince2001 = self->_userFollowupEventDonationTimeInSecondsSince2001;
  if (userFollowupEventDonationTimeInSecondsSince2001 < 0.0)
  {
    userFollowupEventDonationTimeInSecondsSince2001 = -userFollowupEventDonationTimeInSecondsSince2001;
  }

  *v2.i64 = floor(userFollowupEventDonationTimeInSecondsSince2001 + 0.5);
  v6 = (userFollowupEventDonationTimeInSecondsSince2001 - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v7), v3, v2);
  v8 = 2654435761u * *v2.i64;
  if (v6 >= 0.0)
  {
    if (v6 > 0.0)
    {
      v8 += v6;
    }
  }

  else
  {
    v8 -= fabs(v6);
  }

LABEL_9:
  if ((*&self->_has & 4) == 0)
  {
    v9 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_11;
    }

LABEL_17:
    v10 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_12;
    }

LABEL_18:
    v14 = 0;
    goto LABEL_19;
  }

  v9 = 2654435761 * self->_messageUserFollowupAction;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  v10 = 2654435761 * self->_contactMatch;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_18;
  }

LABEL_12:
  contactFullNamePhoneticScore = self->_contactFullNamePhoneticScore;
  if (contactFullNamePhoneticScore < 0.0)
  {
    contactFullNamePhoneticScore = -contactFullNamePhoneticScore;
  }

  *v2.i64 = floor(contactFullNamePhoneticScore + 0.5);
  v12 = (contactFullNamePhoneticScore - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v13.f64[0] = NAN;
  v13.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v13), v3, v2);
  v14 = 2654435761u * *v2.i64;
  if (v12 >= 0.0)
  {
    if (v12 > 0.0)
    {
      v14 += v12;
    }
  }

  else
  {
    v14 -= fabs(v12);
  }

LABEL_19:
  if ((*&self->_has & 0x20) != 0)
  {
    contactFirstNamePhoneticScore = self->_contactFirstNamePhoneticScore;
    if (contactFirstNamePhoneticScore < 0.0)
    {
      contactFirstNamePhoneticScore = -contactFirstNamePhoneticScore;
    }

    *v2.i64 = floor(contactFirstNamePhoneticScore + 0.5);
    v17 = (contactFirstNamePhoneticScore - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v18.f64[0] = NAN;
    v18.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v18), v3, v2);
    v15 = 2654435761u * *v2.i64;
    if (v17 >= 0.0)
    {
      if (v17 > 0.0)
      {
        v15 += v17;
      }
    }

    else
    {
      v15 -= fabs(v17);
    }
  }

  else
  {
    v15 = 0;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    contactLastNamePhoneticScore = self->_contactLastNamePhoneticScore;
    if (contactLastNamePhoneticScore < 0.0)
    {
      contactLastNamePhoneticScore = -contactLastNamePhoneticScore;
    }

    *v2.i64 = floor(contactLastNamePhoneticScore + 0.5);
    v21 = (contactLastNamePhoneticScore - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v22.f64[0] = NAN;
    v22.f64[1] = NAN;
    v19 = 2654435761u * *vbslq_s8(vnegq_f64(v22), v3, v2).i64;
    if (v21 >= 0.0)
    {
      if (v21 > 0.0)
      {
        v19 += v21;
      }
    }

    else
    {
      v19 -= fabs(v21);
    }
  }

  else
  {
    v19 = 0;
  }

  return v8 ^ v4 ^ v9 ^ v10 ^ v14 ^ v15 ^ v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  has = self->_has;
  v6 = v4[56];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_29;
  }

  if (*&has)
  {
    hasUserInitiatedFollowup = self->_hasUserInitiatedFollowup;
    if (hasUserInitiatedFollowup != [v4 hasUserInitiatedFollowup])
    {
      goto LABEL_29;
    }

    has = self->_has;
    v6 = v4[56];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      userFollowupEventDonationTimeInSecondsSince2001 = self->_userFollowupEventDonationTimeInSecondsSince2001;
      [v4 userFollowupEventDonationTimeInSecondsSince2001];
      if (userFollowupEventDonationTimeInSecondsSince2001 != v10)
      {
        goto LABEL_29;
      }

      has = self->_has;
      v6 = v4[56];
    }

    v11 = (*&has >> 2) & 1;
    if (v11 == ((v6 >> 2) & 1))
    {
      if (v11)
      {
        messageUserFollowupAction = self->_messageUserFollowupAction;
        if (messageUserFollowupAction != [v4 messageUserFollowupAction])
        {
          goto LABEL_29;
        }

        has = self->_has;
        v6 = v4[56];
      }

      v13 = (*&has >> 3) & 1;
      if (v13 == ((v6 >> 3) & 1))
      {
        if (v13)
        {
          contactMatch = self->_contactMatch;
          if (contactMatch != [v4 contactMatch])
          {
            goto LABEL_29;
          }

          has = self->_has;
          v6 = v4[56];
        }

        v15 = (*&has >> 4) & 1;
        if (v15 == ((v6 >> 4) & 1))
        {
          if (v15)
          {
            contactFullNamePhoneticScore = self->_contactFullNamePhoneticScore;
            [v4 contactFullNamePhoneticScore];
            if (contactFullNamePhoneticScore != v17)
            {
              goto LABEL_29;
            }

            has = self->_has;
            v6 = v4[56];
          }

          v18 = (*&has >> 5) & 1;
          if (v18 == ((v6 >> 5) & 1))
          {
            if (v18)
            {
              contactFirstNamePhoneticScore = self->_contactFirstNamePhoneticScore;
              [v4 contactFirstNamePhoneticScore];
              if (contactFirstNamePhoneticScore != v20)
              {
                goto LABEL_29;
              }

              has = self->_has;
              v6 = v4[56];
            }

            v21 = (*&has >> 6) & 1;
            if (v21 == ((v6 >> 6) & 1))
            {
              if (!v21 || (contactLastNamePhoneticScore = self->_contactLastNamePhoneticScore, [v4 contactLastNamePhoneticScore], contactLastNamePhoneticScore == v23))
              {
                v24 = 1;
                goto LABEL_30;
              }
            }
          }
        }
      }
    }
  }

LABEL_29:
  v24 = 0;
LABEL_30:

  return v24;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_8:
    PBDataWriterWriteDoubleField();
  }

LABEL_9:
}

- (void)setHasContactLastNamePhoneticScore:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasContactFirstNamePhoneticScore:(BOOL)a3
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

- (void)setHasContactFullNamePhoneticScore:(BOOL)a3
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

- (void)setHasContactMatch:(BOOL)a3
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

- (void)setHasMessageUserFollowupAction:(BOOL)a3
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

- (void)setHasUserFollowupEventDonationTimeInSecondsSince2001:(BOOL)a3
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