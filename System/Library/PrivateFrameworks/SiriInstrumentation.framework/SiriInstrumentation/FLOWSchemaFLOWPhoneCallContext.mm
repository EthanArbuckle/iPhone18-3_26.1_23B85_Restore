@interface FLOWSchemaFLOWPhoneCallContext
- (BOOL)isEqual:(id)a3;
- (FLOWSchemaFLOWPhoneCallContext)initWithDictionary:(id)a3;
- (FLOWSchemaFLOWPhoneCallContext)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)personTypeAtIndex:(unint64_t)a3;
- (int)recipientTypeAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)addPersonType:(int)a3;
- (void)addRecipientType:(int)a3;
- (void)setHasIsThirdPartyFaceTime:(BOOL)a3;
- (void)setHasPhoneCallAppType:(BOOL)a3;
- (void)setHasSearchCallHistoryIntent:(BOOL)a3;
- (void)setHasUserPersona:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation FLOWSchemaFLOWPhoneCallContext

- (FLOWSchemaFLOWPhoneCallContext)initWithDictionary:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v43.receiver = self;
  v43.super_class = FLOWSchemaFLOWPhoneCallContext;
  v5 = [(FLOWSchemaFLOWPhoneCallContext *)&v43 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"phoneCallType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWPhoneCallContext setPhoneCallType:](v5, "setPhoneCallType:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"recipientType"];
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

    v15 = [v4 objectForKeyedSubscript:@"phoneCallAppType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWPhoneCallContext setPhoneCallAppType:](v5, "setPhoneCallAppType:", [v15 intValue]);
    }

    v33 = v15;
    v16 = [v4 objectForKeyedSubscript:@"emergencyContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[FLOWSchemaFLOWPhoneCallEmergencyContext alloc] initWithDictionary:v16];
      [(FLOWSchemaFLOWPhoneCallContext *)v5 setEmergencyContext:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"personType"];
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

    v25 = [v4 objectForKeyedSubscript:@"isThirdPartyFaceTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWPhoneCallContext setIsThirdPartyFaceTime:](v5, "setIsThirdPartyFaceTime:", [v25 BOOLValue]);
    }

    v26 = [v4 objectForKeyedSubscript:@"searchCallHistoryIntent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWPhoneCallContext setSearchCallHistoryIntent:](v5, "setSearchCallHistoryIntent:", [v26 intValue]);
    }

    v27 = [v4 objectForKeyedSubscript:@"userPersona"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWPhoneCallContext setUserPersona:](v5, "setUserPersona:", [v27 intValue]);
    }

    v28 = [v4 objectForKeyedSubscript:@"contact"];
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

- (FLOWSchemaFLOWPhoneCallContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWPhoneCallContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(FLOWSchemaFLOWPhoneCallContext *)self dictionaryRepresentation];
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
  if (self->_contact)
  {
    v4 = [(FLOWSchemaFLOWPhoneCallContext *)self contact];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"contact"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"contact"];
    }
  }

  if (self->_emergencyContext)
  {
    v7 = [(FLOWSchemaFLOWPhoneCallContext *)self emergencyContext];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"emergencyContext"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"emergencyContext"];
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWPhoneCallContext isThirdPartyFaceTime](self, "isThirdPartyFaceTime")}];
    [v3 setObject:v10 forKeyedSubscript:@"isThirdPartyFaceTime"];
  }

  if ([(NSArray *)self->_personTypes count])
  {
    v11 = [(FLOWSchemaFLOWPhoneCallContext *)self personTypes];
    v12 = [v11 copy];
    [v3 setObject:v12 forKeyedSubscript:@"personType"];
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

    [v3 setObject:v15 forKeyedSubscript:@"phoneCallAppType"];
    has = self->_has;
  }

  if (has)
  {
    v16 = [(FLOWSchemaFLOWPhoneCallContext *)self phoneCallType];
    v17 = @"FLOWPHONECALLTYPE_UNKNOWN";
    if (v16 == 1)
    {
      v17 = @"FLOWPHONECALLTYPE_AUDIO";
    }

    if (v16 == 2)
    {
      v18 = @"FLOWPHONECALLTYPE_VIDEO";
    }

    else
    {
      v18 = v17;
    }

    [v3 setObject:v18 forKeyedSubscript:@"phoneCallType"];
  }

  if ([(NSArray *)self->_recipientTypes count])
  {
    v19 = [(FLOWSchemaFLOWPhoneCallContext *)self recipientTypes];
    v20 = [v19 copy];
    [v3 setObject:v20 forKeyedSubscript:@"recipientType"];
  }

  v21 = self->_has;
  if ((v21 & 8) != 0)
  {
    v22 = [(FLOWSchemaFLOWPhoneCallContext *)self searchCallHistoryIntent];
    v23 = @"FLOWSEARCHCALLHISTORYINTENT_UNKNOWN";
    if (v22 == 1)
    {
      v23 = @"FLOWSEARCHCALLHISTORYINTENT_VOICEMAIL";
    }

    if (v22 == 2)
    {
      v24 = @"FLOWSEARCHCALLHISTORYINTENT_SEARCH_CALL_HISTORY";
    }

    else
    {
      v24 = v23;
    }

    [v3 setObject:v24 forKeyedSubscript:@"searchCallHistoryIntent"];
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

    [v3 setObject:v26 forKeyedSubscript:@"userPersona"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_39;
  }

  if ((*&self->_has & 1) != (v4[72] & 1))
  {
    goto LABEL_39;
  }

  if (*&self->_has)
  {
    phoneCallType = self->_phoneCallType;
    if (phoneCallType != [v4 phoneCallType])
    {
      goto LABEL_39;
    }
  }

  v6 = [(FLOWSchemaFLOWPhoneCallContext *)self recipientTypes];
  v7 = [v4 recipientTypes];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_38;
  }

  v8 = [(FLOWSchemaFLOWPhoneCallContext *)self recipientTypes];
  if (v8)
  {
    v9 = v8;
    v10 = [(FLOWSchemaFLOWPhoneCallContext *)self recipientTypes];
    v11 = [v4 recipientTypes];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_39;
    }
  }

  else
  {
  }

  v13 = (*&self->_has >> 1) & 1;
  if (v13 != ((v4[72] >> 1) & 1))
  {
    goto LABEL_39;
  }

  if (v13)
  {
    phoneCallAppType = self->_phoneCallAppType;
    if (phoneCallAppType != [v4 phoneCallAppType])
    {
      goto LABEL_39;
    }
  }

  v6 = [(FLOWSchemaFLOWPhoneCallContext *)self emergencyContext];
  v7 = [v4 emergencyContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_38;
  }

  v15 = [(FLOWSchemaFLOWPhoneCallContext *)self emergencyContext];
  if (v15)
  {
    v16 = v15;
    v17 = [(FLOWSchemaFLOWPhoneCallContext *)self emergencyContext];
    v18 = [v4 emergencyContext];
    v19 = [v17 isEqual:v18];

    if (!v19)
    {
      goto LABEL_39;
    }
  }

  else
  {
  }

  v6 = [(FLOWSchemaFLOWPhoneCallContext *)self personTypes];
  v7 = [v4 personTypes];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_38;
  }

  v20 = [(FLOWSchemaFLOWPhoneCallContext *)self personTypes];
  if (v20)
  {
    v21 = v20;
    v22 = [(FLOWSchemaFLOWPhoneCallContext *)self personTypes];
    v23 = [v4 personTypes];
    v24 = [v22 isEqual:v23];

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
  v27 = v4[72];
  if (v26 != ((v27 >> 2) & 1))
  {
    goto LABEL_39;
  }

  if (v26)
  {
    isThirdPartyFaceTime = self->_isThirdPartyFaceTime;
    if (isThirdPartyFaceTime != [v4 isThirdPartyFaceTime])
    {
      goto LABEL_39;
    }

    has = self->_has;
    v27 = v4[72];
  }

  v29 = (*&has >> 3) & 1;
  if (v29 != ((v27 >> 3) & 1))
  {
    goto LABEL_39;
  }

  if (v29)
  {
    searchCallHistoryIntent = self->_searchCallHistoryIntent;
    if (searchCallHistoryIntent != [v4 searchCallHistoryIntent])
    {
      goto LABEL_39;
    }

    has = self->_has;
    v27 = v4[72];
  }

  v31 = (*&has >> 4) & 1;
  if (v31 != ((v27 >> 4) & 1))
  {
    goto LABEL_39;
  }

  if (v31)
  {
    userPersona = self->_userPersona;
    if (userPersona != [v4 userPersona])
    {
      goto LABEL_39;
    }
  }

  v6 = [(FLOWSchemaFLOWPhoneCallContext *)self contact];
  v7 = [v4 contact];
  if ((v6 != 0) == (v7 == 0))
  {
LABEL_38:

    goto LABEL_39;
  }

  v33 = [(FLOWSchemaFLOWPhoneCallContext *)self contact];
  if (!v33)
  {

LABEL_42:
    v38 = 1;
    goto LABEL_40;
  }

  v34 = v33;
  v35 = [(FLOWSchemaFLOWPhoneCallContext *)self contact];
  v36 = [v4 contact];
  v37 = [v35 isEqual:v36];

  if (v37)
  {
    goto LABEL_42;
  }

LABEL_39:
  v38 = 0;
LABEL_40:

  return v38;
}

- (void)writeTo:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  v10 = [(FLOWSchemaFLOWPhoneCallContext *)self emergencyContext];

  if (v10)
  {
    v11 = [(FLOWSchemaFLOWPhoneCallContext *)self emergencyContext];
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
  v18 = [(FLOWSchemaFLOWPhoneCallContext *)self contact];

  if (v18)
  {
    v19 = [(FLOWSchemaFLOWPhoneCallContext *)self contact];
    PBDataWriterWriteSubmessage();
  }
}

- (void)setHasUserPersona:(BOOL)a3
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

- (void)setHasSearchCallHistoryIntent:(BOOL)a3
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

- (void)setHasIsThirdPartyFaceTime:(BOOL)a3
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

- (int)personTypeAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_personTypes objectAtIndexedSubscript:a3];
  v4 = [v3 intValue];

  return v4;
}

- (void)addPersonType:(int)a3
{
  v3 = *&a3;
  personTypes = self->_personTypes;
  if (!personTypes)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_personTypes;
    self->_personTypes = v6;

    personTypes = self->_personTypes;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)personTypes addObject:v8];
}

- (void)setHasPhoneCallAppType:(BOOL)a3
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

- (int)recipientTypeAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_recipientTypes objectAtIndexedSubscript:a3];
  v4 = [v3 intValue];

  return v4;
}

- (void)addRecipientType:(int)a3
{
  v3 = *&a3;
  recipientTypes = self->_recipientTypes;
  if (!recipientTypes)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_recipientTypes;
    self->_recipientTypes = v6;

    recipientTypes = self->_recipientTypes;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)recipientTypes addObject:v8];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = FLOWSchemaFLOWPhoneCallContext;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(FLOWSchemaFLOWPhoneCallContext *)self emergencyContext];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(FLOWSchemaFLOWPhoneCallContext *)self deleteEmergencyContext];
  }

  v9 = [(FLOWSchemaFLOWPhoneCallContext *)self contact];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
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