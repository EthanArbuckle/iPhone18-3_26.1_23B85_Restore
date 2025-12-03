@interface PSESchemaPSEAppIntentInteractionEngagement
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PSESchemaPSEAppIntentInteractionEngagement)initWithDictionary:(id)dictionary;
- (PSESchemaPSEAppIntentInteractionEngagement)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasFollowUpEntityComparison:(BOOL)comparison;
- (void)setHasIsFirstPartyApp:(BOOL)app;
- (void)setHasIsSiriResultUseful:(BOOL)useful;
- (void)writeTo:(id)to;
@end

@implementation PSESchemaPSEAppIntentInteractionEngagement

- (PSESchemaPSEAppIntentInteractionEngagement)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = PSESchemaPSEAppIntentInteractionEngagement;
  v5 = [(PSESchemaPSEAppIntentInteractionEngagement *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"appIntentName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(PSESchemaPSEAppIntentInteractionEngagement *)v5 setAppIntentName:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"followUpActionType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PSESchemaPSEAppIntentInteractionEngagement setFollowUpActionType:](v5, "setFollowUpActionType:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"followUpEntityComparison"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PSESchemaPSEAppIntentInteractionEngagement setFollowUpEntityComparison:](v5, "setFollowUpEntityComparison:", [v9 intValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"isSiriResultUseful"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PSESchemaPSEAppIntentInteractionEngagement setIsSiriResultUseful:](v5, "setIsSiriResultUseful:", [v10 BOOLValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"isFirstPartyApp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PSESchemaPSEAppIntentInteractionEngagement setIsFirstPartyApp:](v5, "setIsFirstPartyApp:", [v11 BOOLValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (PSESchemaPSEAppIntentInteractionEngagement)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PSESchemaPSEAppIntentInteractionEngagement *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PSESchemaPSEAppIntentInteractionEngagement *)self dictionaryRepresentation];
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
  if (self->_appIntentName)
  {
    appIntentName = [(PSESchemaPSEAppIntentInteractionEngagement *)self appIntentName];
    v5 = [appIntentName copy];
    [dictionary setObject:v5 forKeyedSubscript:@"appIntentName"];
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

    [dictionary setObject:v8 forKeyedSubscript:@"followUpActionType"];
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

    [dictionary setObject:v10 forKeyedSubscript:@"followUpEntityComparison"];
    v6 = *(&self->_isFirstPartyApp + 1);
  }

  if ((v6 & 8) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[PSESchemaPSEAppIntentInteractionEngagement isFirstPartyApp](self, "isFirstPartyApp")}];
    [dictionary setObject:v11 forKeyedSubscript:@"isFirstPartyApp"];

    v6 = *(&self->_isFirstPartyApp + 1);
  }

  if ((v6 & 4) != 0)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[PSESchemaPSEAppIntentInteractionEngagement isSiriResultUseful](self, "isSiriResultUseful")}];
    [dictionary setObject:v12 forKeyedSubscript:@"isSiriResultUseful"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  appIntentName = [(PSESchemaPSEAppIntentInteractionEngagement *)self appIntentName];
  appIntentName2 = [equalCopy appIntentName];
  v7 = appIntentName2;
  if ((appIntentName != 0) == (appIntentName2 == 0))
  {

    goto LABEL_24;
  }

  appIntentName3 = [(PSESchemaPSEAppIntentInteractionEngagement *)self appIntentName];
  if (appIntentName3)
  {
    v9 = appIntentName3;
    appIntentName4 = [(PSESchemaPSEAppIntentInteractionEngagement *)self appIntentName];
    appIntentName5 = [equalCopy appIntentName];
    v12 = [appIntentName4 isEqual:appIntentName5];

    if (!v12)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  v13 = *(&self->_isFirstPartyApp + 1);
  v14 = equalCopy[26];
  if ((v13 & 1) != (v14 & 1))
  {
LABEL_24:
    v22 = 0;
    goto LABEL_25;
  }

  if (v13)
  {
    followUpActionType = self->_followUpActionType;
    if (followUpActionType != [equalCopy followUpActionType])
    {
      goto LABEL_24;
    }

    v13 = *(&self->_isFirstPartyApp + 1);
    v14 = equalCopy[26];
  }

  v16 = (v13 >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_24;
  }

  if (v16)
  {
    followUpEntityComparison = self->_followUpEntityComparison;
    if (followUpEntityComparison != [equalCopy followUpEntityComparison])
    {
      goto LABEL_24;
    }

    v13 = *(&self->_isFirstPartyApp + 1);
    v14 = equalCopy[26];
  }

  v18 = (v13 >> 2) & 1;
  if (v18 != ((v14 >> 2) & 1))
  {
    goto LABEL_24;
  }

  if (v18)
  {
    isSiriResultUseful = self->_isSiriResultUseful;
    if (isSiriResultUseful == [equalCopy isSiriResultUseful])
    {
      v13 = *(&self->_isFirstPartyApp + 1);
      v14 = equalCopy[26];
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
    if (isFirstPartyApp != [equalCopy isFirstPartyApp])
    {
      goto LABEL_24;
    }
  }

  v22 = 1;
LABEL_25:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  appIntentName = [(PSESchemaPSEAppIntentInteractionEngagement *)self appIntentName];

  if (appIntentName)
  {
    PBDataWriterWriteStringField();
  }

  v5 = *(&self->_isFirstPartyApp + 1);
  if (v5)
  {
    PBDataWriterWriteInt32Field();
    v5 = *(&self->_isFirstPartyApp + 1);
  }

  v6 = toCopy;
  if ((v5 & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v6 = toCopy;
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
  v6 = toCopy;
  if ((*(&self->_isFirstPartyApp + 1) & 8) != 0)
  {
LABEL_8:
    PBDataWriterWriteBOOLField();
    v6 = toCopy;
  }

LABEL_9:
}

- (void)setHasIsFirstPartyApp:(BOOL)app
{
  if (app)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isFirstPartyApp + 1) = *(&self->_isFirstPartyApp + 1) & 0xF7 | v3;
}

- (void)setHasIsSiriResultUseful:(BOOL)useful
{
  if (useful)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isFirstPartyApp + 1) = *(&self->_isFirstPartyApp + 1) & 0xFB | v3;
}

- (void)setHasFollowUpEntityComparison:(BOOL)comparison
{
  if (comparison)
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