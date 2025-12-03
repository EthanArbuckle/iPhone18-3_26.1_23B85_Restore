@interface FLOWSchemaFLOWPhoneCallContext
- (BOOL)isEqual:(id)equal;
- (FLOWSchemaFLOWPhoneCallContext)initWithDictionary:(id)dictionary;
- (FLOWSchemaFLOWPhoneCallContext)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)personTypeAtIndex:(unint64_t)index;
- (int)recipientTypeAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)addPersonType:(int)type;
- (void)addRecipientType:(int)type;
- (void)setHasIsThirdPartyFaceTime:(BOOL)time;
- (void)setHasPhoneCallAppType:(BOOL)type;
- (void)setHasSearchCallHistoryIntent:(BOOL)intent;
- (void)setHasUserPersona:(BOOL)persona;
- (void)writeTo:(id)to;
@end

@implementation FLOWSchemaFLOWPhoneCallContext

- (FLOWSchemaFLOWPhoneCallContext)initWithDictionary:(id)dictionary
{
  v46 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v43.receiver = self;
  v43.super_class = FLOWSchemaFLOWPhoneCallContext;
  v5 = [(FLOWSchemaFLOWPhoneCallContext *)&v43 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"phoneCallType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWPhoneCallContext setPhoneCallType:](v5, "setPhoneCallType:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"recipientType"];
    objc_opt_class();
    v34 = v7;
    if (objc_opt_isKindOfClass())
    {
      v8 = v6;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v39 objects:v45 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v40;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v40 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v39 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[FLOWSchemaFLOWPhoneCallContext addRecipientType:](v5, "addRecipientType:", [v14 intValue]);
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v39 objects:v45 count:16];
        }

        while (v11);
      }

      v6 = v8;
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"phoneCallAppType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWPhoneCallContext setPhoneCallAppType:](v5, "setPhoneCallAppType:", [v15 intValue]);
    }

    v33 = v15;
    v16 = [dictionaryCopy objectForKeyedSubscript:@"emergencyContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[FLOWSchemaFLOWPhoneCallEmergencyContext alloc] initWithDictionary:v16];
      [(FLOWSchemaFLOWPhoneCallContext *)v5 setEmergencyContext:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"personType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = v6;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v19 = v18;
      v20 = [v19 countByEnumeratingWithState:&v35 objects:v44 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v36;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v36 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v35 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[FLOWSchemaFLOWPhoneCallContext addPersonType:](v5, "addPersonType:", [v24 intValue]);
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v35 objects:v44 count:16];
        }

        while (v21);
      }

      v6 = v32;
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"isThirdPartyFaceTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWPhoneCallContext setIsThirdPartyFaceTime:](v5, "setIsThirdPartyFaceTime:", [v25 BOOLValue]);
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"searchCallHistoryIntent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWPhoneCallContext setSearchCallHistoryIntent:](v5, "setSearchCallHistoryIntent:", [v26 intValue]);
    }

    v27 = [dictionaryCopy objectForKeyedSubscript:@"userPersona"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWPhoneCallContext setUserPersona:](v5, "setUserPersona:", [v27 intValue]);
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"contact"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [[FLOWSchemaFLOWContact alloc] initWithDictionary:v28];
      [(FLOWSchemaFLOWPhoneCallContext *)v5 setContact:v29];
    }

    v30 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWPhoneCallContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWPhoneCallContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWSchemaFLOWPhoneCallContext *)self dictionaryRepresentation];
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
  if (self->_contact)
  {
    contact = [(FLOWSchemaFLOWPhoneCallContext *)self contact];
    dictionaryRepresentation = [contact dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"contact"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"contact"];
    }
  }

  if (self->_emergencyContext)
  {
    emergencyContext = [(FLOWSchemaFLOWPhoneCallContext *)self emergencyContext];
    dictionaryRepresentation2 = [emergencyContext dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"emergencyContext"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"emergencyContext"];
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWPhoneCallContext isThirdPartyFaceTime](self, "isThirdPartyFaceTime")}];
    [dictionary setObject:v10 forKeyedSubscript:@"isThirdPartyFaceTime"];
  }

  if ([(NSArray *)self->_personTypes count])
  {
    personTypes = [(FLOWSchemaFLOWPhoneCallContext *)self personTypes];
    v12 = [personTypes copy];
    [dictionary setObject:v12 forKeyedSubscript:@"personType"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v14 = [(FLOWSchemaFLOWPhoneCallContext *)self phoneCallAppType]- 1;
    if (v14 > 3)
    {
      v15 = @"FLOWPHONECALLAPPTYPE_UNKNOWN";
    }

    else
    {
      v15 = off_1E78D6038[v14];
    }

    [dictionary setObject:v15 forKeyedSubscript:@"phoneCallAppType"];
    has = self->_has;
  }

  if (has)
  {
    phoneCallType = [(FLOWSchemaFLOWPhoneCallContext *)self phoneCallType];
    v17 = @"FLOWPHONECALLTYPE_UNKNOWN";
    if (phoneCallType == 1)
    {
      v17 = @"FLOWPHONECALLTYPE_AUDIO";
    }

    if (phoneCallType == 2)
    {
      v18 = @"FLOWPHONECALLTYPE_VIDEO";
    }

    else
    {
      v18 = v17;
    }

    [dictionary setObject:v18 forKeyedSubscript:@"phoneCallType"];
  }

  if ([(NSArray *)self->_recipientTypes count])
  {
    recipientTypes = [(FLOWSchemaFLOWPhoneCallContext *)self recipientTypes];
    v20 = [recipientTypes copy];
    [dictionary setObject:v20 forKeyedSubscript:@"recipientType"];
  }

  v21 = self->_has;
  if ((v21 & 8) != 0)
  {
    searchCallHistoryIntent = [(FLOWSchemaFLOWPhoneCallContext *)self searchCallHistoryIntent];
    v23 = @"FLOWSEARCHCALLHISTORYINTENT_UNKNOWN";
    if (searchCallHistoryIntent == 1)
    {
      v23 = @"FLOWSEARCHCALLHISTORYINTENT_VOICEMAIL";
    }

    if (searchCallHistoryIntent == 2)
    {
      v24 = @"FLOWSEARCHCALLHISTORYINTENT_SEARCH_CALL_HISTORY";
    }

    else
    {
      v24 = v23;
    }

    [dictionary setObject:v24 forKeyedSubscript:@"searchCallHistoryIntent"];
    v21 = self->_has;
  }

  if ((v21 & 0x10) != 0)
  {
    v25 = [(FLOWSchemaFLOWPhoneCallContext *)self userPersona]- 1;
    if (v25 > 5)
    {
      v26 = @"INFERENCEAPPSELECTIONUSERPERSONA_UNKNOWN";
    }

    else
    {
      v26 = off_1E78D6058[v25];
    }

    [dictionary setObject:v26 forKeyedSubscript:@"userPersona"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_phoneCallType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSArray *)self->_recipientTypes hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_phoneCallAppType;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(FLOWSchemaFLOWPhoneCallEmergencyContext *)self->_emergencyContext hash];
  v7 = [(NSArray *)self->_personTypes hash];
  if ((*&self->_has & 4) == 0)
  {
    v8 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    v9 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_10;
    }

LABEL_13:
    v10 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ [(FLOWSchemaFLOWContact *)self->_contact hash];
  }

  v8 = 2654435761 * self->_isThirdPartyFaceTime;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v9 = 2654435761 * self->_searchCallHistoryIntent;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v10 = 2654435761 * self->_userPersona;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ [(FLOWSchemaFLOWContact *)self->_contact hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_39;
  }

  if ((*&self->_has & 1) != (equalCopy[72] & 1))
  {
    goto LABEL_39;
  }

  if (*&self->_has)
  {
    phoneCallType = self->_phoneCallType;
    if (phoneCallType != [equalCopy phoneCallType])
    {
      goto LABEL_39;
    }
  }

  recipientTypes = [(FLOWSchemaFLOWPhoneCallContext *)self recipientTypes];
  recipientTypes2 = [equalCopy recipientTypes];
  if ((recipientTypes != 0) == (recipientTypes2 == 0))
  {
    goto LABEL_38;
  }

  recipientTypes3 = [(FLOWSchemaFLOWPhoneCallContext *)self recipientTypes];
  if (recipientTypes3)
  {
    v9 = recipientTypes3;
    recipientTypes4 = [(FLOWSchemaFLOWPhoneCallContext *)self recipientTypes];
    recipientTypes5 = [equalCopy recipientTypes];
    v12 = [recipientTypes4 isEqual:recipientTypes5];

    if (!v12)
    {
      goto LABEL_39;
    }
  }

  else
  {
  }

  v13 = (*&self->_has >> 1) & 1;
  if (v13 != ((equalCopy[72] >> 1) & 1))
  {
    goto LABEL_39;
  }

  if (v13)
  {
    phoneCallAppType = self->_phoneCallAppType;
    if (phoneCallAppType != [equalCopy phoneCallAppType])
    {
      goto LABEL_39;
    }
  }

  recipientTypes = [(FLOWSchemaFLOWPhoneCallContext *)self emergencyContext];
  recipientTypes2 = [equalCopy emergencyContext];
  if ((recipientTypes != 0) == (recipientTypes2 == 0))
  {
    goto LABEL_38;
  }

  emergencyContext = [(FLOWSchemaFLOWPhoneCallContext *)self emergencyContext];
  if (emergencyContext)
  {
    v16 = emergencyContext;
    emergencyContext2 = [(FLOWSchemaFLOWPhoneCallContext *)self emergencyContext];
    emergencyContext3 = [equalCopy emergencyContext];
    v19 = [emergencyContext2 isEqual:emergencyContext3];

    if (!v19)
    {
      goto LABEL_39;
    }
  }

  else
  {
  }

  recipientTypes = [(FLOWSchemaFLOWPhoneCallContext *)self personTypes];
  recipientTypes2 = [equalCopy personTypes];
  if ((recipientTypes != 0) == (recipientTypes2 == 0))
  {
    goto LABEL_38;
  }

  personTypes = [(FLOWSchemaFLOWPhoneCallContext *)self personTypes];
  if (personTypes)
  {
    v21 = personTypes;
    personTypes2 = [(FLOWSchemaFLOWPhoneCallContext *)self personTypes];
    personTypes3 = [equalCopy personTypes];
    v24 = [personTypes2 isEqual:personTypes3];

    if (!v24)
    {
      goto LABEL_39;
    }
  }

  else
  {
  }

  has = self->_has;
  v26 = (*&has >> 2) & 1;
  v27 = equalCopy[72];
  if (v26 != ((v27 >> 2) & 1))
  {
    goto LABEL_39;
  }

  if (v26)
  {
    isThirdPartyFaceTime = self->_isThirdPartyFaceTime;
    if (isThirdPartyFaceTime != [equalCopy isThirdPartyFaceTime])
    {
      goto LABEL_39;
    }

    has = self->_has;
    v27 = equalCopy[72];
  }

  v29 = (*&has >> 3) & 1;
  if (v29 != ((v27 >> 3) & 1))
  {
    goto LABEL_39;
  }

  if (v29)
  {
    searchCallHistoryIntent = self->_searchCallHistoryIntent;
    if (searchCallHistoryIntent != [equalCopy searchCallHistoryIntent])
    {
      goto LABEL_39;
    }

    has = self->_has;
    v27 = equalCopy[72];
  }

  v31 = (*&has >> 4) & 1;
  if (v31 != ((v27 >> 4) & 1))
  {
    goto LABEL_39;
  }

  if (v31)
  {
    userPersona = self->_userPersona;
    if (userPersona != [equalCopy userPersona])
    {
      goto LABEL_39;
    }
  }

  recipientTypes = [(FLOWSchemaFLOWPhoneCallContext *)self contact];
  recipientTypes2 = [equalCopy contact];
  if ((recipientTypes != 0) == (recipientTypes2 == 0))
  {
LABEL_38:

    goto LABEL_39;
  }

  contact = [(FLOWSchemaFLOWPhoneCallContext *)self contact];
  if (!contact)
  {

LABEL_42:
    v38 = 1;
    goto LABEL_40;
  }

  v34 = contact;
  contact2 = [(FLOWSchemaFLOWPhoneCallContext *)self contact];
  contact3 = [equalCopy contact];
  v37 = [contact2 isEqual:contact3];

  if (v37)
  {
    goto LABEL_42;
  }

LABEL_39:
  v38 = 0;
LABEL_40:

  return v38;
}

- (void)writeTo:(id)to
{
  v30 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = self->_recipientTypes;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v24 + 1) + 8 * i) intValue];
        PBDataWriterWriteInt32Field();
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  emergencyContext = [(FLOWSchemaFLOWPhoneCallContext *)self emergencyContext];

  if (emergencyContext)
  {
    emergencyContext2 = [(FLOWSchemaFLOWPhoneCallContext *)self emergencyContext];
    PBDataWriterWriteSubmessage();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = self->_personTypes;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v20 + 1) + 8 * j) intValue];
        PBDataWriterWriteInt32Field();
      }

      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v14);
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_23:
      if ((has & 0x10) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_23;
  }

  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_24:
    PBDataWriterWriteInt32Field();
  }

LABEL_25:
  contact = [(FLOWSchemaFLOWPhoneCallContext *)self contact];

  if (contact)
  {
    contact2 = [(FLOWSchemaFLOWPhoneCallContext *)self contact];
    PBDataWriterWriteSubmessage();
  }
}

- (void)setHasUserPersona:(BOOL)persona
{
  if (persona)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasSearchCallHistoryIntent:(BOOL)intent
{
  if (intent)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsThirdPartyFaceTime:(BOOL)time
{
  if (time)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)personTypeAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_personTypes objectAtIndexedSubscript:index];
  intValue = [v3 intValue];

  return intValue;
}

- (void)addPersonType:(int)type
{
  v3 = *&type;
  personTypes = self->_personTypes;
  if (!personTypes)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_personTypes;
    self->_personTypes = array;

    personTypes = self->_personTypes;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)personTypes addObject:v8];
}

- (void)setHasPhoneCallAppType:(BOOL)type
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

- (int)recipientTypeAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_recipientTypes objectAtIndexedSubscript:index];
  intValue = [v3 intValue];

  return intValue;
}

- (void)addRecipientType:(int)type
{
  v3 = *&type;
  recipientTypes = self->_recipientTypes;
  if (!recipientTypes)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_recipientTypes;
    self->_recipientTypes = array;

    recipientTypes = self->_recipientTypes;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)recipientTypes addObject:v8];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = FLOWSchemaFLOWPhoneCallContext;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  emergencyContext = [(FLOWSchemaFLOWPhoneCallContext *)self emergencyContext];
  v7 = [emergencyContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(FLOWSchemaFLOWPhoneCallContext *)self deleteEmergencyContext];
  }

  contact = [(FLOWSchemaFLOWPhoneCallContext *)self contact];
  v10 = [contact applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(FLOWSchemaFLOWPhoneCallContext *)self deleteContact];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end