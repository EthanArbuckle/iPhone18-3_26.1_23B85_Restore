@interface PSESchemaPSECall
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PSESchemaPSECall)initWithDictionary:(id)dictionary;
- (PSESchemaPSECall)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasContactFirstNamePhoneticScore:(BOOL)score;
- (void)setHasContactFullNamePhoneticScore:(BOOL)score;
- (void)setHasContactLastNamePhoneticScore:(BOOL)score;
- (void)setHasContactMatch:(BOOL)match;
- (void)setHasDisconnectedReason:(BOOL)reason;
- (void)setHasHasUserInitiatedFollowup:(BOOL)followup;
- (void)setHasRecentCallStatus:(BOOL)status;
- (void)setHasTimeToEstablishInSeconds:(BOOL)seconds;
- (void)writeTo:(id)to;
@end

@implementation PSESchemaPSECall

- (PSESchemaPSECall)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = PSESchemaPSECall;
  v5 = [(PSESchemaPSECall *)&v20 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"callDurationInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 doubleValue];
      [(PSESchemaPSECall *)v5 setCallDurationInSeconds:?];
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"hasUserInitiatedFollowup"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PSESchemaPSECall setHasUserInitiatedFollowup:](v5, "setHasUserInitiatedFollowup:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"timeToEstablishInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 doubleValue];
      [(PSESchemaPSECall *)v5 setTimeToEstablishInSeconds:?];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:{@"recentCallStatus", v8}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PSESchemaPSECall setRecentCallStatus:](v5, "setRecentCallStatus:", [v9 intValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"disconnectedReason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PSESchemaPSECall setDisconnectedReason:](v5, "setDisconnectedReason:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"contactMatch"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PSESchemaPSECall setContactMatch:](v5, "setContactMatch:", [v11 intValue]);
    }

    v19 = v7;
    v12 = [dictionaryCopy objectForKeyedSubscript:@"contactFullNamePhoneticScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 doubleValue];
      [(PSESchemaPSECall *)v5 setContactFullNamePhoneticScore:?];
    }

    v13 = v6;
    v14 = [dictionaryCopy objectForKeyedSubscript:@"contactFirstNamePhoneticScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v14 doubleValue];
      [(PSESchemaPSECall *)v5 setContactFirstNamePhoneticScore:?];
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"contactLastNamePhoneticScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v15 doubleValue];
      [(PSESchemaPSECall *)v5 setContactLastNamePhoneticScore:?];
    }

    v16 = v5;
  }

  return v5;
}

- (PSESchemaPSECall)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PSESchemaPSECall *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PSESchemaPSECall *)self dictionaryRepresentation];
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
    v8 = MEMORY[0x1E696AD98];
    [(PSESchemaPSECall *)self callDurationInSeconds];
    v9 = [v8 numberWithDouble:?];
    [dictionary setObject:v9 forKeyedSubscript:@"callDurationInSeconds"];

    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  v10 = MEMORY[0x1E696AD98];
  [(PSESchemaPSECall *)self contactFirstNamePhoneticScore];
  v11 = [v10 numberWithDouble:?];
  [dictionary setObject:v11 forKeyedSubscript:@"contactFirstNamePhoneticScore"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v12 = MEMORY[0x1E696AD98];
  [(PSESchemaPSECall *)self contactFullNamePhoneticScore];
  v13 = [v12 numberWithDouble:?];
  [dictionary setObject:v13 forKeyedSubscript:@"contactFullNamePhoneticScore"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v14 = MEMORY[0x1E696AD98];
  [(PSESchemaPSECall *)self contactLastNamePhoneticScore];
  v15 = [v14 numberWithDouble:?];
  [dictionary setObject:v15 forKeyedSubscript:@"contactLastNamePhoneticScore"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_18:
  v16 = [(PSESchemaPSECall *)self contactMatch]- 1;
  if (v16 > 2)
  {
    v17 = @"PSEMESSAGECONTACTMATCH_UNKNOWN";
  }

  else
  {
    v17 = off_1E78E12B0[v16];
  }

  [dictionary setObject:v17 forKeyedSubscript:@"contactMatch"];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_65;
  }

LABEL_22:
  disconnectedReason = [(PSESchemaPSECall *)self disconnectedReason];
  switch(disconnectedReason)
  {
    case 1:
      v19 = @"PSECALLDISCONNECTEDREASON_REMOTEHANGUP";
      break;
    case 2:
      v19 = @"PSECALLDISCONNECTEDREASON_DECLINED";
      break;
    case 3:
      v19 = @"PSECALLDISCONNECTEDREASON_DECLINED_ELSEWHERE";
      break;
    case 4:
      v19 = @"PSECALLDISCONNECTEDREASON_ANSWERED_ELSEWHERE";
      break;
    case 5:
      v19 = @"PSECALLDISCONNECTEDREASON_RELAY_FAILED_RELAY_DEVICE_RELAY_NOT_ENABLED";
      break;
    case 6:
      v19 = @"PSECALLDISCONNECTEDREASON_REMOTE_UNAVAILABLE";
      break;
    case 7:
      v19 = @"PSECALLDISCONNECTEDREASON_REMOTE_BUSY";
      break;
    case 8:
      v19 = @"PSECALLDISCONNECTEDREASON_NO_LOCAL_LINK";
      break;
    case 9:
      v19 = @"PSECALLDISCONNECTEDREASON_ACCOUNT_UNSUPPORTED";
      break;
    case 10:
      v19 = @"PSECALLDISCONNECTEDREASON_NETWORK_UNSUPPORTED";
      break;
    case 11:
      v19 = @"PSECALLDISCONNECTEDREASON_CALL_FAILED";
      break;
    case 12:
      v19 = @"PSECALLDISCONNECTEDREASON_DIAL_FAILED";
      break;
    case 13:
      v19 = @"PSECALLDISCONNECTEDREASON_COMPONENT_CRASHED";
      break;
    case 14:
      v19 = @"PSECALLDISCONNECTEDREASON_RELAY_FAILED_CONFERENCE_FAILED";
      break;
    case 15:
      v19 = @"PSECALLDISCONNECTEDREASON_RELAY_FAILED_NO_RELAY_DEVICE";
      break;
    case 16:
      v19 = @"PSECALLDISCONNECTEDREASON_HOST_DEVICE_BUSY";
      break;
    case 17:
      v19 = @"PSECALLDISCONNECTEDREASON_CLIENT_DEVICE_BUSY";
      break;
    case 18:
      v19 = @"PSECALLDISCONNECTEDREASON_DECLINED_WITH_TEXT";
      break;
    case 19:
      v19 = @"PSECALLDISCONNECTEDREASON_HANDED_OFF";
      break;
    case 20:
      v19 = @"PSECALLDISCONNECTEDREASON_MMI_OR_USSD_LIKELY";
      break;
    case 21:
      v19 = @"PSECALLDISCONNECTEDREASON_FILTERED_OUT";
      break;
    case 22:
      v19 = @"PSECALLDISCONNECTEDREASON_PROVIDER_CRASHED";
      break;
    case 23:
      v19 = @"PSECALLDISCONNECTEDREASON_MEDIA_START_FAILED";
      break;
    case 24:
      v19 = @"PSECALLDISCONNECTEDREASON_MEDIA_SERVER_CRASHED";
      break;
    case 25:
      v19 = @"PSECALLDISCONNECTEDREASON_MANAGED_DEVICE_POLICY_RESTRICTED";
      break;
    case 26:
      v19 = @"PSECALLDISCONNECTEDREASON_KICKED";
      break;
    case 27:
      v19 = @"PSECALLDISCONNECTEDREASON_LET_ME_IN_REQUEST_REJECTED";
      break;
    case 28:
      v19 = @"PSECALLDISCONNECTEDREASON_INVALID_CONVERSATION_LINK";
      break;
    case 29:
      v19 = @"PSECALLDISCONNECTEDREASON_CONVERSATION_LINKS_DISABLED";
      break;
    case 30:
      v19 = @"PSECALLDISCONNECTEDREASON_NO_DESTINATIONS_AVAILABLE";
      break;
    case 31:
      v19 = @"PSECALLDISCONNECTEDREASON_CALL_FAILED_NIL_CALL_PROVIDER";
      break;
    case 32:
      v19 = @"PSECALLDISCONNECTEDREASON_APPLICATION_NOT_FOREGROUNDED";
      break;
    case 33:
      v19 = @"PSECALLDISCONNECTEDREASON_AVCONFERENCED_CRASHED";
      break;
    case 34:
      v19 = @"PSECALLDISCONNECTEDREASON_CALL_AGAIN";
      break;
    case 35:
      v19 = @"PSECALLDISCONNECTEDREASON_UNKNOWN_PARTICIPANT_ADDED";
      break;
    case 36:
      v19 = @"PSECALLDISCONNECTEDREASON_CALL_SCREENING_TIMEOUT";
      break;
    default:
      v20 = @"PSECALLDISCONNECTEDREASON_UNKNOWN";
      if (disconnectedReason == 1001)
      {
        v20 = @"PSECALLDISCONNECTEDREASON_IDS_QUERY_RATE_LIMITED";
      }

      if (disconnectedReason == 1000)
      {
        v19 = @"PSECALLDISCONNECTEDREASON_DECRYPTION_TIMEOUT";
      }

      else
      {
        v19 = v20;
      }

      break;
  }

  [dictionary setObject:v19 forKeyedSubscript:@"disconnectedReason"];
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_66;
  }

LABEL_65:
  v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[PSESchemaPSECall hasUserInitiatedFollowup](self, "hasUserInitiatedFollowup")}];
  [dictionary setObject:v21 forKeyedSubscript:@"hasUserInitiatedFollowup"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_66:
  v22 = [(PSESchemaPSECall *)self recentCallStatus]- 1;
  if (v22 > 9)
  {
    v23 = @"PSECALLSTATUS_UNKNOWN";
  }

  else
  {
    v23 = off_1E78E12C8[v22];
  }

  [dictionary setObject:v23 forKeyedSubscript:@"recentCallStatus"];
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_10:
  v5 = MEMORY[0x1E696AD98];
  [(PSESchemaPSECall *)self timeToEstablishInSeconds];
  v6 = [v5 numberWithDouble:?];
  [dictionary setObject:v6 forKeyedSubscript:@"timeToEstablishInSeconds"];

LABEL_11:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    callDurationInSeconds = self->_callDurationInSeconds;
    if (callDurationInSeconds < 0.0)
    {
      callDurationInSeconds = -callDurationInSeconds;
    }

    *v2.i64 = floor(callDurationInSeconds + 0.5);
    v7 = (callDurationInSeconds - *v2.i64) * 1.84467441e19;
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

  if ((has & 2) != 0)
  {
    v9 = 2654435761 * self->_hasUserInitiatedFollowup;
    if ((has & 4) != 0)
    {
      goto LABEL_11;
    }

LABEL_16:
    v13 = 0;
    goto LABEL_17;
  }

  v9 = 0;
  if ((has & 4) == 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  timeToEstablishInSeconds = self->_timeToEstablishInSeconds;
  if (timeToEstablishInSeconds < 0.0)
  {
    timeToEstablishInSeconds = -timeToEstablishInSeconds;
  }

  *v2.i64 = floor(timeToEstablishInSeconds + 0.5);
  v11 = (timeToEstablishInSeconds - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v12), v3, v2);
  v13 = 2654435761u * *v2.i64;
  if (v11 >= 0.0)
  {
    if (v11 > 0.0)
    {
      v13 += v11;
    }
  }

  else
  {
    v13 -= fabs(v11);
  }

LABEL_17:
  if ((has & 8) != 0)
  {
    v14 = 2654435761 * self->_recentCallStatus;
    if ((has & 0x10) != 0)
    {
LABEL_19:
      v15 = 2654435761 * self->_disconnectedReason;
      if ((has & 0x20) != 0)
      {
        goto LABEL_20;
      }

LABEL_27:
      v16 = 0;
      if ((has & 0x40) != 0)
      {
        goto LABEL_21;
      }

LABEL_28:
      v20 = 0;
      goto LABEL_29;
    }
  }

  else
  {
    v14 = 0;
    if ((has & 0x10) != 0)
    {
      goto LABEL_19;
    }
  }

  v15 = 0;
  if ((has & 0x20) == 0)
  {
    goto LABEL_27;
  }

LABEL_20:
  v16 = 2654435761 * self->_contactMatch;
  if ((has & 0x40) == 0)
  {
    goto LABEL_28;
  }

LABEL_21:
  contactFullNamePhoneticScore = self->_contactFullNamePhoneticScore;
  if (contactFullNamePhoneticScore < 0.0)
  {
    contactFullNamePhoneticScore = -contactFullNamePhoneticScore;
  }

  *v2.i64 = floor(contactFullNamePhoneticScore + 0.5);
  v18 = (contactFullNamePhoneticScore - *v2.i64) * 1.84467441e19;
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

LABEL_29:
  if ((has & 0x80) != 0)
  {
    contactFirstNamePhoneticScore = self->_contactFirstNamePhoneticScore;
    if (contactFirstNamePhoneticScore < 0.0)
    {
      contactFirstNamePhoneticScore = -contactFirstNamePhoneticScore;
    }

    *v2.i64 = floor(contactFirstNamePhoneticScore + 0.5);
    v23 = (contactFirstNamePhoneticScore - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v24.f64[0] = NAN;
    v24.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v24), v3, v2);
    v21 = 2654435761u * *v2.i64;
    if (v23 >= 0.0)
    {
      if (v23 > 0.0)
      {
        v21 += v23;
      }
    }

    else
    {
      v21 -= fabs(v23);
    }
  }

  else
  {
    v21 = 0;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    contactLastNamePhoneticScore = self->_contactLastNamePhoneticScore;
    if (contactLastNamePhoneticScore < 0.0)
    {
      contactLastNamePhoneticScore = -contactLastNamePhoneticScore;
    }

    *v2.i64 = floor(contactLastNamePhoneticScore + 0.5);
    v27 = (contactLastNamePhoneticScore - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v28.f64[0] = NAN;
    v28.f64[1] = NAN;
    v25 = 2654435761u * *vbslq_s8(vnegq_f64(v28), v3, v2).i64;
    if (v27 >= 0.0)
    {
      if (v27 > 0.0)
      {
        v25 += v27;
      }
    }

    else
    {
      v25 -= fabs(v27);
    }
  }

  else
  {
    v25 = 0;
  }

  return v9 ^ v5 ^ v13 ^ v14 ^ v15 ^ v16 ^ v20 ^ v21 ^ v25;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  has = self->_has;
  v6 = equalCopy[36];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_37;
  }

  if (*&has)
  {
    callDurationInSeconds = self->_callDurationInSeconds;
    [equalCopy callDurationInSeconds];
    if (callDurationInSeconds != v8)
    {
      goto LABEL_37;
    }

    has = self->_has;
    v6 = equalCopy[36];
  }

  v9 = (*&has >> 1) & 1;
  if (v9 == ((v6 >> 1) & 1))
  {
    if (v9)
    {
      hasUserInitiatedFollowup = self->_hasUserInitiatedFollowup;
      if (hasUserInitiatedFollowup != [equalCopy hasUserInitiatedFollowup])
      {
        goto LABEL_37;
      }

      has = self->_has;
      v6 = equalCopy[36];
    }

    v11 = (*&has >> 2) & 1;
    if (v11 == ((v6 >> 2) & 1))
    {
      if (v11)
      {
        timeToEstablishInSeconds = self->_timeToEstablishInSeconds;
        [equalCopy timeToEstablishInSeconds];
        if (timeToEstablishInSeconds != v13)
        {
          goto LABEL_37;
        }

        has = self->_has;
        v6 = equalCopy[36];
      }

      v14 = (*&has >> 3) & 1;
      if (v14 == ((v6 >> 3) & 1))
      {
        if (v14)
        {
          recentCallStatus = self->_recentCallStatus;
          if (recentCallStatus != [equalCopy recentCallStatus])
          {
            goto LABEL_37;
          }

          has = self->_has;
          v6 = equalCopy[36];
        }

        v16 = (*&has >> 4) & 1;
        if (v16 == ((v6 >> 4) & 1))
        {
          if (v16)
          {
            disconnectedReason = self->_disconnectedReason;
            if (disconnectedReason != [equalCopy disconnectedReason])
            {
              goto LABEL_37;
            }

            has = self->_has;
            v6 = equalCopy[36];
          }

          v18 = (*&has >> 5) & 1;
          if (v18 == ((v6 >> 5) & 1))
          {
            if (v18)
            {
              contactMatch = self->_contactMatch;
              if (contactMatch != [equalCopy contactMatch])
              {
                goto LABEL_37;
              }

              has = self->_has;
              v6 = equalCopy[36];
            }

            v20 = (*&has >> 6) & 1;
            if (v20 == ((v6 >> 6) & 1))
            {
              if (v20)
              {
                contactFullNamePhoneticScore = self->_contactFullNamePhoneticScore;
                [equalCopy contactFullNamePhoneticScore];
                if (contactFullNamePhoneticScore != v22)
                {
                  goto LABEL_37;
                }

                has = self->_has;
                v6 = equalCopy[36];
              }

              v23 = (*&has >> 7) & 1;
              if (v23 == ((v6 >> 7) & 1))
              {
                if (v23)
                {
                  contactFirstNamePhoneticScore = self->_contactFirstNamePhoneticScore;
                  [equalCopy contactFirstNamePhoneticScore];
                  if (contactFirstNamePhoneticScore != v25)
                  {
                    goto LABEL_37;
                  }

                  has = self->_has;
                  v6 = equalCopy[36];
                }

                v26 = (*&has >> 8) & 1;
                if (v26 == ((v6 >> 8) & 1))
                {
                  if (!v26 || (contactLastNamePhoneticScore = self->_contactLastNamePhoneticScore, [equalCopy contactLastNamePhoneticScore], contactLastNamePhoneticScore == v28))
                  {
                    v29 = 1;
                    goto LABEL_38;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_37:
  v29 = 0;
LABEL_38:

  return v29;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_10:
    PBDataWriterWriteDoubleField();
  }

LABEL_11:
}

- (void)setHasContactLastNamePhoneticScore:(BOOL)score
{
  if (score)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasContactFirstNamePhoneticScore:(BOOL)score
{
  if (score)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasContactFullNamePhoneticScore:(BOOL)score
{
  if (score)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasContactMatch:(BOOL)match
{
  if (match)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasDisconnectedReason:(BOOL)reason
{
  if (reason)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasRecentCallStatus:(BOOL)status
{
  if (status)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasTimeToEstablishInSeconds:(BOOL)seconds
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

- (void)setHasHasUserInitiatedFollowup:(BOOL)followup
{
  if (followup)
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