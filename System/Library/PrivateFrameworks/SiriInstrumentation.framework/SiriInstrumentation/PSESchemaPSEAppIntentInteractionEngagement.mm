@interface PSESchemaPSEAppIntentInteractionEngagement
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PSESchemaPSEAppIntentInteractionEngagement)initWithDictionary:(id)a3;
- (PSESchemaPSEAppIntentInteractionEngagement)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasFollowUpEntityComparison:(BOOL)a3;
- (void)setHasIsFirstPartyApp:(BOOL)a3;
- (void)setHasIsSiriResultUseful:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PSESchemaPSEAppIntentInteractionEngagement

- (PSESchemaPSEAppIntentInteractionEngagement)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PSESchemaPSEAppIntentInteractionEngagement;
  v5 = [(PSESchemaPSEAppIntentInteractionEngagement *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"appIntentName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(PSESchemaPSEAppIntentInteractionEngagement *)v5 setAppIntentName:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"followUpActionType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PSESchemaPSEAppIntentInteractionEngagement setFollowUpActionType:](v5, "setFollowUpActionType:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"followUpEntityComparison"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PSESchemaPSEAppIntentInteractionEngagement setFollowUpEntityComparison:](v5, "setFollowUpEntityComparison:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"isSiriResultUseful"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PSESchemaPSEAppIntentInteractionEngagement setIsSiriResultUseful:](v5, "setIsSiriResultUseful:", [v10 BOOLValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"isFirstPartyApp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PSESchemaPSEAppIntentInteractionEngagement setIsFirstPartyApp:](v5, "setIsFirstPartyApp:", [v11 BOOLValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (PSESchemaPSEAppIntentInteractionEngagement)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PSESchemaPSEAppIntentInteractionEngagement *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PSESchemaPSEAppIntentInteractionEngagement *)self dictionaryRepresentation];
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
  if (self->_appIntentName)
  {
    v4 = [(PSESchemaPSEAppIntentInteractionEngagement *)self appIntentName];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"appIntentName"];
  }

  v6 = *(&self->_isFirstPartyApp + 1);
  if (v6)
  {
    v7 = [(PSESchemaPSEAppIntentInteractionEngagement *)self followUpActionType]- 1;
    if (v7 > 0x21)
    {
      v8 = @"PSEAPPINTENTFOLLOWUPACTIONTYPE_UNKNOWN";
    }

    else
    {
      v8 = off_1E78E1188[v7];
    }

    [v3 setObject:v8 forKeyedSubscript:@"followUpActionType"];
    v6 = *(&self->_isFirstPartyApp + 1);
  }

  if ((v6 & 2) != 0)
  {
    v9 = [(PSESchemaPSEAppIntentInteractionEngagement *)self followUpEntityComparison]- 1;
    if (v9 > 2)
    {
      v10 = @"PSEAPPINTENTFOLLOWUPENTITYCOMPARISON_UNKNOWN";
    }

    else
    {
      v10 = off_1E78E1298[v9];
    }

    [v3 setObject:v10 forKeyedSubscript:@"followUpEntityComparison"];
    v6 = *(&self->_isFirstPartyApp + 1);
  }

  if ((v6 & 8) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[PSESchemaPSEAppIntentInteractionEngagement isFirstPartyApp](self, "isFirstPartyApp")}];
    [v3 setObject:v11 forKeyedSubscript:@"isFirstPartyApp"];

    v6 = *(&self->_isFirstPartyApp + 1);
  }

  if ((v6 & 4) != 0)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[PSESchemaPSEAppIntentInteractionEngagement isSiriResultUseful](self, "isSiriResultUseful")}];
    [v3 setObject:v12 forKeyedSubscript:@"isSiriResultUseful"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_appIntentName hash];
  if (*(&self->_isFirstPartyApp + 1))
  {
    v4 = 2654435761 * self->_followUpActionType;
    if ((*(&self->_isFirstPartyApp + 1) & 2) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_followUpEntityComparison;
      if ((*(&self->_isFirstPartyApp + 1) & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v6 = 0;
      if ((*(&self->_isFirstPartyApp + 1) & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v7 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7;
    }
  }

  else
  {
    v4 = 0;
    if ((*(&self->_isFirstPartyApp + 1) & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((*(&self->_isFirstPartyApp + 1) & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v6 = 2654435761 * self->_isSiriResultUseful;
  if ((*(&self->_isFirstPartyApp + 1) & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v7 = 2654435761 * self->_isFirstPartyApp;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  v5 = [(PSESchemaPSEAppIntentInteractionEngagement *)self appIntentName];
  v6 = [v4 appIntentName];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

    goto LABEL_24;
  }

  v8 = [(PSESchemaPSEAppIntentInteractionEngagement *)self appIntentName];
  if (v8)
  {
    v9 = v8;
    v10 = [(PSESchemaPSEAppIntentInteractionEngagement *)self appIntentName];
    v11 = [v4 appIntentName];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  v13 = *(&self->_isFirstPartyApp + 1);
  v14 = v4[26];
  if ((v13 & 1) != (v14 & 1))
  {
LABEL_24:
    v22 = 0;
    goto LABEL_25;
  }

  if (v13)
  {
    followUpActionType = self->_followUpActionType;
    if (followUpActionType != [v4 followUpActionType])
    {
      goto LABEL_24;
    }

    v13 = *(&self->_isFirstPartyApp + 1);
    v14 = v4[26];
  }

  v16 = (v13 >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_24;
  }

  if (v16)
  {
    followUpEntityComparison = self->_followUpEntityComparison;
    if (followUpEntityComparison != [v4 followUpEntityComparison])
    {
      goto LABEL_24;
    }

    v13 = *(&self->_isFirstPartyApp + 1);
    v14 = v4[26];
  }

  v18 = (v13 >> 2) & 1;
  if (v18 != ((v14 >> 2) & 1))
  {
    goto LABEL_24;
  }

  if (v18)
  {
    isSiriResultUseful = self->_isSiriResultUseful;
    if (isSiriResultUseful == [v4 isSiriResultUseful])
    {
      v13 = *(&self->_isFirstPartyApp + 1);
      v14 = v4[26];
      goto LABEL_20;
    }

    goto LABEL_24;
  }

LABEL_20:
  v20 = (v13 >> 3) & 1;
  if (v20 != ((v14 >> 3) & 1))
  {
    goto LABEL_24;
  }

  if (v20)
  {
    isFirstPartyApp = self->_isFirstPartyApp;
    if (isFirstPartyApp != [v4 isFirstPartyApp])
    {
      goto LABEL_24;
    }
  }

  v22 = 1;
LABEL_25:

  return v22;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  v4 = [(PSESchemaPSEAppIntentInteractionEngagement *)self appIntentName];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = *(&self->_isFirstPartyApp + 1);
  if (v5)
  {
    PBDataWriterWriteInt32Field();
    v5 = *(&self->_isFirstPartyApp + 1);
  }

  v6 = v7;
  if ((v5 & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v6 = v7;
    v5 = *(&self->_isFirstPartyApp + 1);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_7;
  }

  PBDataWriterWriteBOOLField();
  v6 = v7;
  if ((*(&self->_isFirstPartyApp + 1) & 8) != 0)
  {
LABEL_8:
    PBDataWriterWriteBOOLField();
    v6 = v7;
  }

LABEL_9:
}

- (void)setHasIsFirstPartyApp:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isFirstPartyApp + 1) = *(&self->_isFirstPartyApp + 1) & 0xF7 | v3;
}

- (void)setHasIsSiriResultUseful:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isFirstPartyApp + 1) = *(&self->_isFirstPartyApp + 1) & 0xFB | v3;
}

- (void)setHasFollowUpEntityComparison:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isFirstPartyApp + 1) = *(&self->_isFirstPartyApp + 1) & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end