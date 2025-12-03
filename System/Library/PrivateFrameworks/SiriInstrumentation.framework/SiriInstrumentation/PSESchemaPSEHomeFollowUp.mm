@interface PSESchemaPSEHomeFollowUp
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PSESchemaPSEHomeFollowUp)initWithDictionary:(id)dictionary;
- (PSESchemaPSEHomeFollowUp)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasFollowUpDayOfWeek:(BOOL)week;
- (void)setHasFollowUpDurationSinceSiriRequestInSeconds:(BOOL)seconds;
- (void)setHasFollowUpHourOfDay:(BOOL)day;
- (void)setHasFollowUpSource:(BOOL)source;
- (void)setHasIsFollowUpInSameContainerAsSiriRequest:(BOOL)request;
- (void)writeTo:(id)to;
@end

@implementation PSESchemaPSEHomeFollowUp

- (PSESchemaPSEHomeFollowUp)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = PSESchemaPSEHomeFollowUp;
  v5 = [(PSESchemaPSEHomeFollowUp *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"followUpType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PSESchemaPSEHomeFollowUp setFollowUpType:](v5, "setFollowUpType:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"followUpSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PSESchemaPSEHomeFollowUp setFollowUpSource:](v5, "setFollowUpSource:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"followUpAccessoryType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(PSESchemaPSEHomeFollowUp *)v5 setFollowUpAccessoryType:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"isFollowUpInSameContainerAsSiriRequest"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PSESchemaPSEHomeFollowUp setIsFollowUpInSameContainerAsSiriRequest:](v5, "setIsFollowUpInSameContainerAsSiriRequest:", [v10 BOOLValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"followUpDayOfWeek"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PSESchemaPSEHomeFollowUp setFollowUpDayOfWeek:](v5, "setFollowUpDayOfWeek:", [v11 unsignedIntValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"followUpHourOfDay"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PSESchemaPSEHomeFollowUp setFollowUpHourOfDay:](v5, "setFollowUpHourOfDay:", [v12 unsignedIntValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"followUpDurationSinceSiriRequestInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PSESchemaPSEHomeFollowUp setFollowUpDurationSinceSiriRequestInSeconds:](v5, "setFollowUpDurationSinceSiriRequestInSeconds:", [v13 unsignedIntValue]);
    }

    v14 = v5;
  }

  return v5;
}

- (PSESchemaPSEHomeFollowUp)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PSESchemaPSEHomeFollowUp *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PSESchemaPSEHomeFollowUp *)self dictionaryRepresentation];
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
  if (self->_followUpAccessoryType)
  {
    followUpAccessoryType = [(PSESchemaPSEHomeFollowUp *)self followUpAccessoryType];
    v5 = [followUpAccessoryType copy];
    [dictionary setObject:v5 forKeyedSubscript:@"followUpAccessoryType"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PSESchemaPSEHomeFollowUp followUpDayOfWeek](self, "followUpDayOfWeek")}];
    [dictionary setObject:v9 forKeyedSubscript:@"followUpDayOfWeek"];

    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_5:
      if ((has & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_5;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PSESchemaPSEHomeFollowUp followUpDurationSinceSiriRequestInSeconds](self, "followUpDurationSinceSiriRequestInSeconds")}];
  [dictionary setObject:v10 forKeyedSubscript:@"followUpDurationSinceSiriRequestInSeconds"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PSESchemaPSEHomeFollowUp followUpHourOfDay](self, "followUpHourOfDay")}];
  [dictionary setObject:v11 forKeyedSubscript:@"followUpHourOfDay"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_16:
  v12 = [(PSESchemaPSEHomeFollowUp *)self followUpSource]- 1;
  if (v12 > 3)
  {
    v13 = @"PSEHOMEFOLLOWUPSOURCE_UNKNOWN";
  }

  else
  {
    v13 = off_1E78E1430[v12];
  }

  [dictionary setObject:v13 forKeyedSubscript:@"followUpSource"];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_20:
  v14 = [(PSESchemaPSEHomeFollowUp *)self followUpType]- 1;
  if (v14 > 3)
  {
    v15 = @"PSEHOMEFOLLOWUPTYPE_UNKNOWN";
  }

  else
  {
    v15 = off_1E78E1450[v14];
  }

  [dictionary setObject:v15 forKeyedSubscript:@"followUpType"];
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_9:
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[PSESchemaPSEHomeFollowUp isFollowUpInSameContainerAsSiriRequest](self, "isFollowUpInSameContainerAsSiriRequest")}];
  [dictionary setObject:v7 forKeyedSubscript:@"isFollowUpInSameContainerAsSiriRequest"];

LABEL_10:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_followUpType;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_followUpSource;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSString *)self->_followUpAccessoryType hash];
  if ((*&self->_has & 4) != 0)
  {
    v6 = 2654435761 * self->_isFollowUpInSameContainerAsSiriRequest;
    if ((*&self->_has & 8) != 0)
    {
LABEL_8:
      v7 = 2654435761 * self->_followUpDayOfWeek;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_9;
      }

LABEL_13:
      v8 = 0;
      if ((*&self->_has & 0x20) != 0)
      {
        goto LABEL_10;
      }

LABEL_14:
      v9 = 0;
      return v4 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v5;
    }
  }

  else
  {
    v6 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_8;
    }
  }

  v7 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  v8 = 2654435761 * self->_followUpHourOfDay;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  v9 = 2654435761 * self->_followUpDurationSinceSiriRequestInSeconds;
  return v4 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  has = self->_has;
  v6 = equalCopy[40];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_31;
  }

  if (*&has)
  {
    followUpType = self->_followUpType;
    if (followUpType != [equalCopy followUpType])
    {
      goto LABEL_31;
    }

    has = self->_has;
    v6 = equalCopy[40];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_31;
  }

  if (v8)
  {
    followUpSource = self->_followUpSource;
    if (followUpSource != [equalCopy followUpSource])
    {
      goto LABEL_31;
    }
  }

  followUpAccessoryType = [(PSESchemaPSEHomeFollowUp *)self followUpAccessoryType];
  followUpAccessoryType2 = [equalCopy followUpAccessoryType];
  v12 = followUpAccessoryType2;
  if ((followUpAccessoryType != 0) == (followUpAccessoryType2 == 0))
  {

    goto LABEL_31;
  }

  followUpAccessoryType3 = [(PSESchemaPSEHomeFollowUp *)self followUpAccessoryType];
  if (followUpAccessoryType3)
  {
    v14 = followUpAccessoryType3;
    followUpAccessoryType4 = [(PSESchemaPSEHomeFollowUp *)self followUpAccessoryType];
    followUpAccessoryType5 = [equalCopy followUpAccessoryType];
    v17 = [followUpAccessoryType4 isEqual:followUpAccessoryType5];

    if (!v17)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  v18 = self->_has;
  v19 = (*&v18 >> 2) & 1;
  v20 = equalCopy[40];
  if (v19 != ((v20 >> 2) & 1))
  {
LABEL_31:
    v28 = 0;
    goto LABEL_32;
  }

  if (v19)
  {
    isFollowUpInSameContainerAsSiriRequest = self->_isFollowUpInSameContainerAsSiriRequest;
    if (isFollowUpInSameContainerAsSiriRequest != [equalCopy isFollowUpInSameContainerAsSiriRequest])
    {
      goto LABEL_31;
    }

    v18 = self->_has;
    v20 = equalCopy[40];
  }

  v22 = (*&v18 >> 3) & 1;
  if (v22 != ((v20 >> 3) & 1))
  {
    goto LABEL_31;
  }

  if (v22)
  {
    followUpDayOfWeek = self->_followUpDayOfWeek;
    if (followUpDayOfWeek != [equalCopy followUpDayOfWeek])
    {
      goto LABEL_31;
    }

    v18 = self->_has;
    v20 = equalCopy[40];
  }

  v24 = (*&v18 >> 4) & 1;
  if (v24 != ((v20 >> 4) & 1))
  {
    goto LABEL_31;
  }

  if (v24)
  {
    followUpHourOfDay = self->_followUpHourOfDay;
    if (followUpHourOfDay == [equalCopy followUpHourOfDay])
    {
      v18 = self->_has;
      v20 = equalCopy[40];
      goto LABEL_27;
    }

    goto LABEL_31;
  }

LABEL_27:
  v26 = (*&v18 >> 5) & 1;
  if (v26 != ((v20 >> 5) & 1))
  {
    goto LABEL_31;
  }

  if (v26)
  {
    followUpDurationSinceSiriRequestInSeconds = self->_followUpDurationSinceSiriRequestInSeconds;
    if (followUpDurationSinceSiriRequestInSeconds != [equalCopy followUpDurationSinceSiriRequestInSeconds])
    {
      goto LABEL_31;
    }
  }

  v28 = 1;
LABEL_32:

  return v28;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  followUpAccessoryType = [(PSESchemaPSEHomeFollowUp *)self followUpAccessoryType];

  if (followUpAccessoryType)
  {
    PBDataWriterWriteStringField();
  }

  v6 = self->_has;
  if ((v6 & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
    v6 = self->_has;
    if ((v6 & 8) == 0)
    {
LABEL_9:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

  PBDataWriterWriteUint32Field();
  v6 = self->_has;
  if ((v6 & 0x10) == 0)
  {
LABEL_10:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_17:
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_11:
    PBDataWriterWriteUint32Field();
  }

LABEL_12:
}

- (void)setHasFollowUpDurationSinceSiriRequestInSeconds:(BOOL)seconds
{
  if (seconds)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasFollowUpHourOfDay:(BOOL)day
{
  if (day)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasFollowUpDayOfWeek:(BOOL)week
{
  if (week)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsFollowUpInSameContainerAsSiriRequest:(BOOL)request
{
  if (request)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasFollowUpSource:(BOOL)source
{
  if (source)
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