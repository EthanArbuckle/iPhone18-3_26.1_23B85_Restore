@interface SICSchemaSICInvocationStarted
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SICSchemaSICInvocationStarted)initWithDictionary:(id)dictionary;
- (SICSchemaSICInvocationStarted)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasCallAppType:(BOOL)type;
- (void)setHasCallState:(BOOL)state;
- (void)setHasCallType:(BOOL)type;
- (void)setHasParticipantCountBucket:(BOOL)bucket;
- (void)writeTo:(id)to;
@end

@implementation SICSchemaSICInvocationStarted

- (SICSchemaSICInvocationStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = SICSchemaSICInvocationStarted;
  v5 = [(SICSchemaSICInvocationStarted *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"isMuted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SICSchemaSICInvocationStarted setIsMuted:](v5, "setIsMuted:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"callType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SICSchemaSICInvocationStarted setCallType:](v5, "setCallType:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"callState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SICSchemaSICInvocationStarted setCallState:](v5, "setCallState:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"callAppType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SICSchemaSICInvocationStarted setCallAppType:](v5, "setCallAppType:", [v9 intValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"participantCountBucket"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SICSchemaSICInvocationStarted setParticipantCountBucket:](v5, "setParticipantCountBucket:", [v10 intValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (SICSchemaSICInvocationStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SICSchemaSICInvocationStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SICSchemaSICInvocationStarted *)self dictionaryRepresentation];
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
  if ((has & 8) != 0)
  {
    v5 = [(SICSchemaSICInvocationStarted *)self callAppType]- 1;
    if (v5 > 2)
    {
      v6 = @"CALLAPPTYPE_UNKNOWN";
    }

    else
    {
      v6 = off_1E78E2BB8[v5];
    }

    [dictionary setObject:v6 forKeyedSubscript:@"callAppType"];
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v7 = [(SICSchemaSICInvocationStarted *)self callState]- 1;
  if (v7 > 4)
  {
    v8 = @"CALLSTATE_UNKNOWN";
  }

  else
  {
    v8 = off_1E78E2BD0[v7];
  }

  [dictionary setObject:v8 forKeyedSubscript:@"callState"];
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_21:
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[SICSchemaSICInvocationStarted isMuted](self, "isMuted")}];
    [dictionary setObject:v12 forKeyedSubscript:@"isMuted"];

    if ((*&self->_has & 0x10) == 0)
    {
      goto LABEL_26;
    }

LABEL_22:
    v13 = [(SICSchemaSICInvocationStarted *)self participantCountBucket]- 1;
    if (v13 > 5)
    {
      v14 = @"SICPARTICIPANTCOUNTBUCKET_UNKNOWN";
    }

    else
    {
      v14 = off_1E78E2BF8[v13];
    }

    [dictionary setObject:v14 forKeyedSubscript:@"participantCountBucket"];
    goto LABEL_26;
  }

LABEL_15:
  callType = [(SICSchemaSICInvocationStarted *)self callType];
  v10 = @"CALLTYPE_UNKNOWN";
  if (callType == 1)
  {
    v10 = @"CALLTYPE_AUDIO";
  }

  if (callType == 2)
  {
    v11 = @"CALLTYPE_VIDEO";
  }

  else
  {
    v11 = v10;
  }

  [dictionary setObject:v11 forKeyedSubscript:@"callType"];
  has = self->_has;
  if (has)
  {
    goto LABEL_21;
  }

LABEL_5:
  if ((has & 0x10) != 0)
  {
    goto LABEL_22;
  }

LABEL_26:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_isMuted;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_callType;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_callState;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v5 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v6 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6;
  }

LABEL_9:
  v4 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v5 = 2654435761 * self->_callAppType;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v6 = 2654435761 * self->_participantCountBucket;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  has = self->_has;
  v6 = equalCopy[28];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_22;
  }

  if (*&has)
  {
    isMuted = self->_isMuted;
    if (isMuted != [equalCopy isMuted])
    {
      goto LABEL_22;
    }

    has = self->_has;
    v6 = equalCopy[28];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_22;
  }

  if (v8)
  {
    callType = self->_callType;
    if (callType != [equalCopy callType])
    {
      goto LABEL_22;
    }

    has = self->_has;
    v6 = equalCopy[28];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_22;
  }

  if (v10)
  {
    callState = self->_callState;
    if (callState != [equalCopy callState])
    {
      goto LABEL_22;
    }

    has = self->_has;
    v6 = equalCopy[28];
  }

  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_22;
  }

  if (v12)
  {
    callAppType = self->_callAppType;
    if (callAppType == [equalCopy callAppType])
    {
      has = self->_has;
      v6 = equalCopy[28];
      goto LABEL_18;
    }

LABEL_22:
    v16 = 0;
    goto LABEL_23;
  }

LABEL_18:
  v14 = (*&has >> 4) & 1;
  if (v14 != ((v6 >> 4) & 1))
  {
    goto LABEL_22;
  }

  if (v14)
  {
    participantCountBucket = self->_participantCountBucket;
    if (participantCountBucket != [equalCopy participantCountBucket])
    {
      goto LABEL_22;
    }
  }

  v16 = 1;
LABEL_23:

  return v16;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 2) == 0)
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

    goto LABEL_13;
  }

LABEL_12:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    PBDataWriterWriteInt32Field();
  }

LABEL_7:
}

- (void)setHasParticipantCountBucket:(BOOL)bucket
{
  if (bucket)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasCallAppType:(BOOL)type
{
  if (type)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasCallState:(BOOL)state
{
  if (state)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasCallType:(BOOL)type
{
  if (type)
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