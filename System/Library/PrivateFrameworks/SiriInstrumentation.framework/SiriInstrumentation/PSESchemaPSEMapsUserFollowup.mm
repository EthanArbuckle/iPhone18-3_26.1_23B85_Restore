@interface PSESchemaPSEMapsUserFollowup
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PSESchemaPSEMapsUserFollowup)initWithDictionary:(id)a3;
- (PSESchemaPSEMapsUserFollowup)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasMapsAction:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PSESchemaPSEMapsUserFollowup

- (PSESchemaPSEMapsUserFollowup)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PSESchemaPSEMapsUserFollowup;
  v5 = [(PSESchemaPSEMapsUserFollowup *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"followupType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PSESchemaPSEMapsUserFollowup setFollowupType:](v5, "setFollowupType:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"mapsAction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PSESchemaPSEMapsUserFollowup setMapsAction:](v5, "setMapsAction:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"mapsActionType"];
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

- (PSESchemaPSEMapsUserFollowup)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PSESchemaPSEMapsUserFollowup *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PSESchemaPSEMapsUserFollowup *)self dictionaryRepresentation];
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
  if (has)
  {
    v5 = [(PSESchemaPSEMapsUserFollowup *)self followupType];
    v6 = @"PSEMAPSFOLLOWUP_UNKNOWN";
    if (v5 == 1)
    {
      v6 = @"PSEMAPSFOLLOWUP_SIRI_RESULT";
    }

    if (v5 == 2)
    {
      v7 = @"PSEMAPSFOLLOWUP_USER_INITIATED_NEW_SEARCH";
    }

    else
    {
      v7 = v6;
    }

    [v3 setObject:v7 forKeyedSubscript:@"followupType"];
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

    [v3 setObject:v9 forKeyedSubscript:@"mapsAction"];
  }

  if (self->_mapsActionType)
  {
    v10 = [(PSESchemaPSEMapsUserFollowup *)self mapsActionType];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"mapsActionType"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = v4[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    followupType = self->_followupType;
    if (followupType != [v4 followupType])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = v4[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (!v8 || (mapsAction = self->_mapsAction, mapsAction == [v4 mapsAction]))
    {
      v10 = [(PSESchemaPSEMapsUserFollowup *)self mapsActionType];
      v11 = [v4 mapsActionType];
      v12 = v11;
      if ((v10 != 0) != (v11 == 0))
      {
        v13 = [(PSESchemaPSEMapsUserFollowup *)self mapsActionType];
        if (!v13)
        {

LABEL_17:
          v18 = 1;
          goto LABEL_15;
        }

        v14 = v13;
        v15 = [(PSESchemaPSEMapsUserFollowup *)self mapsActionType];
        v16 = [v4 mapsActionType];
        v17 = [v15 isEqual:v16];

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

- (void)writeTo:(id)a3
{
  v7 = a3;
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

  v5 = [(PSESchemaPSEMapsUserFollowup *)self mapsActionType];

  v6 = v7;
  if (v5)
  {
    PBDataWriterWriteStringField();
    v6 = v7;
  }
}

- (void)setHasMapsAction:(BOOL)a3
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