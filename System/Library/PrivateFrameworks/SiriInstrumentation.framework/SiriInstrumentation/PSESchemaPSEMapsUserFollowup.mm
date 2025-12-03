@interface PSESchemaPSEMapsUserFollowup
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PSESchemaPSEMapsUserFollowup)initWithDictionary:(id)dictionary;
- (PSESchemaPSEMapsUserFollowup)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasMapsAction:(BOOL)action;
- (void)writeTo:(id)to;
@end

@implementation PSESchemaPSEMapsUserFollowup

- (PSESchemaPSEMapsUserFollowup)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = PSESchemaPSEMapsUserFollowup;
  v5 = [(PSESchemaPSEMapsUserFollowup *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"followupType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PSESchemaPSEMapsUserFollowup setFollowupType:](v5, "setFollowupType:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"mapsAction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PSESchemaPSEMapsUserFollowup setMapsAction:](v5, "setMapsAction:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"mapsActionType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(PSESchemaPSEMapsUserFollowup *)v5 setMapsActionType:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (PSESchemaPSEMapsUserFollowup)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PSESchemaPSEMapsUserFollowup *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PSESchemaPSEMapsUserFollowup *)self dictionaryRepresentation];
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
    followupType = [(PSESchemaPSEMapsUserFollowup *)self followupType];
    v6 = @"PSEMAPSFOLLOWUP_UNKNOWN";
    if (followupType == 1)
    {
      v6 = @"PSEMAPSFOLLOWUP_SIRI_RESULT";
    }

    if (followupType == 2)
    {
      v7 = @"PSEMAPSFOLLOWUP_USER_INITIATED_NEW_SEARCH";
    }

    else
    {
      v7 = v6;
    }

    [dictionary setObject:v7 forKeyedSubscript:@"followupType"];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v8 = [(PSESchemaPSEMapsUserFollowup *)self mapsAction]- 1;
    if (v8 > 5)
    {
      v9 = @"PSEMAPSACTION_UNKNOWN";
    }

    else
    {
      v9 = off_1E78E1470[v8];
    }

    [dictionary setObject:v9 forKeyedSubscript:@"mapsAction"];
  }

  if (self->_mapsActionType)
  {
    mapsActionType = [(PSESchemaPSEMapsUserFollowup *)self mapsActionType];
    v11 = [mapsActionType copy];
    [dictionary setObject:v11 forKeyedSubscript:@"mapsActionType"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_followupType;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(NSString *)self->_mapsActionType hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_mapsAction;
  return v7 ^ v6 ^ [(NSString *)self->_mapsActionType hash:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = equalCopy[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    followupType = self->_followupType;
    if (followupType != [equalCopy followupType])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (!v8 || (mapsAction = self->_mapsAction, mapsAction == [equalCopy mapsAction]))
    {
      mapsActionType = [(PSESchemaPSEMapsUserFollowup *)self mapsActionType];
      mapsActionType2 = [equalCopy mapsActionType];
      v12 = mapsActionType2;
      if ((mapsActionType != 0) != (mapsActionType2 == 0))
      {
        mapsActionType3 = [(PSESchemaPSEMapsUserFollowup *)self mapsActionType];
        if (!mapsActionType3)
        {

LABEL_17:
          v18 = 1;
          goto LABEL_15;
        }

        v14 = mapsActionType3;
        mapsActionType4 = [(PSESchemaPSEMapsUserFollowup *)self mapsActionType];
        mapsActionType5 = [equalCopy mapsActionType];
        v17 = [mapsActionType4 isEqual:mapsActionType5];

        if (v17)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }
    }
  }

LABEL_14:
  v18 = 0;
LABEL_15:

  return v18;
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

  mapsActionType = [(PSESchemaPSEMapsUserFollowup *)self mapsActionType];

  v6 = toCopy;
  if (mapsActionType)
  {
    PBDataWriterWriteStringField();
    v6 = toCopy;
  }
}

- (void)setHasMapsAction:(BOOL)action
{
  if (action)
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