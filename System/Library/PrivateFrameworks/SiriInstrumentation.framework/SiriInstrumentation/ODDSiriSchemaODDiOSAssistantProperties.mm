@interface ODDSiriSchemaODDiOSAssistantProperties
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODDSiriSchemaODDiOSAssistantProperties)initWithDictionary:(id)a3;
- (ODDSiriSchemaODDiOSAssistantProperties)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)activeSubscriptionsAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)addActiveSubscriptions:(int)a3;
- (void)setHasIsAllowSiriWhenLockedEnabled:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODDSiriSchemaODDiOSAssistantProperties

- (ODDSiriSchemaODDiOSAssistantProperties)initWithDictionary:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v43.receiver = self;
  v43.super_class = ODDSiriSchemaODDiOSAssistantProperties;
  v5 = [(ODDSiriSchemaODDiOSAssistantProperties *)&v43 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"isPressSideButtonForSiriEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDiOSAssistantProperties setIsPressSideButtonForSiriEnabled:](v5, "setIsPressSideButtonForSiriEnabled:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"isAllowSiriWhenLockedEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDiOSAssistantProperties setIsAllowSiriWhenLockedEnabled:](v5, "setIsAllowSiriWhenLockedEnabled:", [v7 BOOLValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"response"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ODDSiriSchemaODDiOSResponseProperties alloc] initWithDictionary:v8];
      [(ODDSiriSchemaODDiOSAssistantProperties *)v5 setResponse:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"accessibility"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[ODDSiriSchemaODDiOSAccessibilityProperties alloc] initWithDictionary:v10];
      [(ODDSiriSchemaODDiOSAssistantProperties *)v5 setAccessibility:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"carPlay"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[ODDSiriSchemaODDCarPlayProperties alloc] initWithDictionary:v12];
      [(ODDSiriSchemaODDiOSAssistantProperties *)v5 setCarPlay:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"siriInCall"];
    objc_opt_class();
    v38 = v14;
    if (objc_opt_isKindOfClass())
    {
      v15 = [[ODDSiriSchemaODDSiriInCallProperties alloc] initWithDictionary:v14];
      [(ODDSiriSchemaODDiOSAssistantProperties *)v5 setSiriInCall:v15];
    }

    v37 = v12;
    v16 = [v4 objectForKeyedSubscript:@"announce"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[ODDSiriSchemaODDAnnounceProperties alloc] initWithDictionary:v16];
      [(ODDSiriSchemaODDiOSAssistantProperties *)v5 setAnnounce:v17];
    }

    v36 = v16;
    v18 = [v4 objectForKeyedSubscript:@"autoSendMessage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[ODDSiriSchemaODDAutoSendMessageProperties alloc] initWithDictionary:v18];
      [(ODDSiriSchemaODDiOSAssistantProperties *)v5 setAutoSendMessage:v19];
    }

    v20 = [v4 objectForKeyedSubscript:@"activeSubscriptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = v10;
      v33 = v8;
      v34 = v7;
      v35 = v6;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v21 = v20;
      v22 = [v21 countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v40;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v40 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v39 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[ODDSiriSchemaODDiOSAssistantProperties addActiveSubscriptions:](v5, "addActiveSubscriptions:", [v26 intValue]);
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v39 objects:v44 count:16];
        }

        while (v23);
      }

      v7 = v34;
      v6 = v35;
      v10 = v32;
      v8 = v33;
    }

    v27 = [v4 objectForKeyedSubscript:@"headGestures"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v10;
      v29 = [[ODDSiriSchemaODDHeadGestureProperties alloc] initWithDictionary:v27];
      [(ODDSiriSchemaODDiOSAssistantProperties *)v5 setHeadGestures:v29];

      v10 = v28;
    }

    v30 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDiOSAssistantProperties)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDiOSAssistantProperties *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODDSiriSchemaODDiOSAssistantProperties *)self dictionaryRepresentation];
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
  if (self->_accessibility)
  {
    v4 = [(ODDSiriSchemaODDiOSAssistantProperties *)self accessibility];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"accessibility"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"accessibility"];
    }
  }

  if ([(NSArray *)self->_activeSubscriptions count])
  {
    v7 = [(ODDSiriSchemaODDiOSAssistantProperties *)self activeSubscriptions];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"activeSubscriptions"];
  }

  if (self->_announce)
  {
    v9 = [(ODDSiriSchemaODDiOSAssistantProperties *)self announce];
    v10 = [v9 dictionaryRepresentation];
    if (v10)
    {
      [v3 setObject:v10 forKeyedSubscript:@"announce"];
    }

    else
    {
      v11 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v11 forKeyedSubscript:@"announce"];
    }
  }

  if (self->_autoSendMessage)
  {
    v12 = [(ODDSiriSchemaODDiOSAssistantProperties *)self autoSendMessage];
    v13 = [v12 dictionaryRepresentation];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"autoSendMessage"];
    }

    else
    {
      v14 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v14 forKeyedSubscript:@"autoSendMessage"];
    }
  }

  if (self->_carPlay)
  {
    v15 = [(ODDSiriSchemaODDiOSAssistantProperties *)self carPlay];
    v16 = [v15 dictionaryRepresentation];
    if (v16)
    {
      [v3 setObject:v16 forKeyedSubscript:@"carPlay"];
    }

    else
    {
      v17 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v17 forKeyedSubscript:@"carPlay"];
    }
  }

  if (self->_headGestures)
  {
    v18 = [(ODDSiriSchemaODDiOSAssistantProperties *)self headGestures];
    v19 = [v18 dictionaryRepresentation];
    if (v19)
    {
      [v3 setObject:v19 forKeyedSubscript:@"headGestures"];
    }

    else
    {
      v20 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v20 forKeyedSubscript:@"headGestures"];
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDiOSAssistantProperties isAllowSiriWhenLockedEnabled](self, "isAllowSiriWhenLockedEnabled")}];
    [v3 setObject:v22 forKeyedSubscript:@"isAllowSiriWhenLockedEnabled"];

    has = self->_has;
  }

  if (has)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDiOSAssistantProperties isPressSideButtonForSiriEnabled](self, "isPressSideButtonForSiriEnabled")}];
    [v3 setObject:v23 forKeyedSubscript:@"isPressSideButtonForSiriEnabled"];
  }

  if (self->_response)
  {
    v24 = [(ODDSiriSchemaODDiOSAssistantProperties *)self response];
    v25 = [v24 dictionaryRepresentation];
    if (v25)
    {
      [v3 setObject:v25 forKeyedSubscript:@"response"];
    }

    else
    {
      v26 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v26 forKeyedSubscript:@"response"];
    }
  }

  if (self->_siriInCall)
  {
    v27 = [(ODDSiriSchemaODDiOSAssistantProperties *)self siriInCall];
    v28 = [v27 dictionaryRepresentation];
    if (v28)
    {
      [v3 setObject:v28 forKeyedSubscript:@"siriInCall"];
    }

    else
    {
      v29 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v29 forKeyedSubscript:@"siriInCall"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_isPressSideButtonForSiriEnabled;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v3 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = 2654435761 * self->_isAllowSiriWhenLockedEnabled;
LABEL_6:
  v5 = v4 ^ v3 ^ [(ODDSiriSchemaODDiOSResponseProperties *)self->_response hash];
  v6 = [(ODDSiriSchemaODDiOSAccessibilityProperties *)self->_accessibility hash];
  v7 = v5 ^ v6 ^ [(ODDSiriSchemaODDCarPlayProperties *)self->_carPlay hash];
  v8 = [(ODDSiriSchemaODDSiriInCallProperties *)self->_siriInCall hash];
  v9 = v8 ^ [(ODDSiriSchemaODDAnnounceProperties *)self->_announce hash];
  v10 = v7 ^ v9 ^ [(ODDSiriSchemaODDAutoSendMessageProperties *)self->_autoSendMessage hash];
  v11 = [(NSArray *)self->_activeSubscriptions hash];
  return v10 ^ v11 ^ [(ODDSiriSchemaODDHeadGestureProperties *)self->_headGestures hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_49;
  }

  has = self->_has;
  v6 = v4[80];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_49;
  }

  if (*&has)
  {
    isPressSideButtonForSiriEnabled = self->_isPressSideButtonForSiriEnabled;
    if (isPressSideButtonForSiriEnabled != [v4 isPressSideButtonForSiriEnabled])
    {
      goto LABEL_49;
    }

    has = self->_has;
    v6 = v4[80];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_49;
  }

  if (v8)
  {
    isAllowSiriWhenLockedEnabled = self->_isAllowSiriWhenLockedEnabled;
    if (isAllowSiriWhenLockedEnabled != [v4 isAllowSiriWhenLockedEnabled])
    {
      goto LABEL_49;
    }
  }

  v10 = [(ODDSiriSchemaODDiOSAssistantProperties *)self response];
  v11 = [v4 response];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_48;
  }

  v12 = [(ODDSiriSchemaODDiOSAssistantProperties *)self response];
  if (v12)
  {
    v13 = v12;
    v14 = [(ODDSiriSchemaODDiOSAssistantProperties *)self response];
    v15 = [v4 response];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_49;
    }
  }

  else
  {
  }

  v10 = [(ODDSiriSchemaODDiOSAssistantProperties *)self accessibility];
  v11 = [v4 accessibility];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_48;
  }

  v17 = [(ODDSiriSchemaODDiOSAssistantProperties *)self accessibility];
  if (v17)
  {
    v18 = v17;
    v19 = [(ODDSiriSchemaODDiOSAssistantProperties *)self accessibility];
    v20 = [v4 accessibility];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_49;
    }
  }

  else
  {
  }

  v10 = [(ODDSiriSchemaODDiOSAssistantProperties *)self carPlay];
  v11 = [v4 carPlay];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_48;
  }

  v22 = [(ODDSiriSchemaODDiOSAssistantProperties *)self carPlay];
  if (v22)
  {
    v23 = v22;
    v24 = [(ODDSiriSchemaODDiOSAssistantProperties *)self carPlay];
    v25 = [v4 carPlay];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_49;
    }
  }

  else
  {
  }

  v10 = [(ODDSiriSchemaODDiOSAssistantProperties *)self siriInCall];
  v11 = [v4 siriInCall];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_48;
  }

  v27 = [(ODDSiriSchemaODDiOSAssistantProperties *)self siriInCall];
  if (v27)
  {
    v28 = v27;
    v29 = [(ODDSiriSchemaODDiOSAssistantProperties *)self siriInCall];
    v30 = [v4 siriInCall];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_49;
    }
  }

  else
  {
  }

  v10 = [(ODDSiriSchemaODDiOSAssistantProperties *)self announce];
  v11 = [v4 announce];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_48;
  }

  v32 = [(ODDSiriSchemaODDiOSAssistantProperties *)self announce];
  if (v32)
  {
    v33 = v32;
    v34 = [(ODDSiriSchemaODDiOSAssistantProperties *)self announce];
    v35 = [v4 announce];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_49;
    }
  }

  else
  {
  }

  v10 = [(ODDSiriSchemaODDiOSAssistantProperties *)self autoSendMessage];
  v11 = [v4 autoSendMessage];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_48;
  }

  v37 = [(ODDSiriSchemaODDiOSAssistantProperties *)self autoSendMessage];
  if (v37)
  {
    v38 = v37;
    v39 = [(ODDSiriSchemaODDiOSAssistantProperties *)self autoSendMessage];
    v40 = [v4 autoSendMessage];
    v41 = [v39 isEqual:v40];

    if (!v41)
    {
      goto LABEL_49;
    }
  }

  else
  {
  }

  v10 = [(ODDSiriSchemaODDiOSAssistantProperties *)self activeSubscriptions];
  v11 = [v4 activeSubscriptions];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_48;
  }

  v42 = [(ODDSiriSchemaODDiOSAssistantProperties *)self activeSubscriptions];
  if (v42)
  {
    v43 = v42;
    v44 = [(ODDSiriSchemaODDiOSAssistantProperties *)self activeSubscriptions];
    v45 = [v4 activeSubscriptions];
    v46 = [v44 isEqual:v45];

    if (!v46)
    {
      goto LABEL_49;
    }
  }

  else
  {
  }

  v10 = [(ODDSiriSchemaODDiOSAssistantProperties *)self headGestures];
  v11 = [v4 headGestures];
  if ((v10 != 0) != (v11 == 0))
  {
    v47 = [(ODDSiriSchemaODDiOSAssistantProperties *)self headGestures];
    if (!v47)
    {

LABEL_52:
      v52 = 1;
      goto LABEL_50;
    }

    v48 = v47;
    v49 = [(ODDSiriSchemaODDiOSAssistantProperties *)self headGestures];
    v50 = [v4 headGestures];
    v51 = [v49 isEqual:v50];

    if (v51)
    {
      goto LABEL_52;
    }
  }

  else
  {
LABEL_48:
  }

LABEL_49:
  v52 = 0;
LABEL_50:

  return v52;
}

- (void)writeTo:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  v6 = [(ODDSiriSchemaODDiOSAssistantProperties *)self response];

  if (v6)
  {
    v7 = [(ODDSiriSchemaODDiOSAssistantProperties *)self response];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(ODDSiriSchemaODDiOSAssistantProperties *)self accessibility];

  if (v8)
  {
    v9 = [(ODDSiriSchemaODDiOSAssistantProperties *)self accessibility];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(ODDSiriSchemaODDiOSAssistantProperties *)self carPlay];

  if (v10)
  {
    v11 = [(ODDSiriSchemaODDiOSAssistantProperties *)self carPlay];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(ODDSiriSchemaODDiOSAssistantProperties *)self siriInCall];

  if (v12)
  {
    v13 = [(ODDSiriSchemaODDiOSAssistantProperties *)self siriInCall];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(ODDSiriSchemaODDiOSAssistantProperties *)self announce];

  if (v14)
  {
    v15 = [(ODDSiriSchemaODDiOSAssistantProperties *)self announce];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(ODDSiriSchemaODDiOSAssistantProperties *)self autoSendMessage];

  if (v16)
  {
    v17 = [(ODDSiriSchemaODDiOSAssistantProperties *)self autoSendMessage];
    PBDataWriterWriteSubmessage();
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = self->_activeSubscriptions;
  v19 = [(NSArray *)v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [*(*(&v25 + 1) + 8 * i) intValue];
        PBDataWriterWriteInt32Field();
      }

      v20 = [(NSArray *)v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v20);
  }

  v23 = [(ODDSiriSchemaODDiOSAssistantProperties *)self headGestures];

  if (v23)
  {
    v24 = [(ODDSiriSchemaODDiOSAssistantProperties *)self headGestures];
    PBDataWriterWriteSubmessage();
  }
}

- (int)activeSubscriptionsAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_activeSubscriptions objectAtIndexedSubscript:a3];
  v4 = [v3 intValue];

  return v4;
}

- (void)addActiveSubscriptions:(int)a3
{
  v3 = *&a3;
  activeSubscriptions = self->_activeSubscriptions;
  if (!activeSubscriptions)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_activeSubscriptions;
    self->_activeSubscriptions = v6;

    activeSubscriptions = self->_activeSubscriptions;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)activeSubscriptions addObject:v8];
}

- (void)setHasIsAllowSiriWhenLockedEnabled:(BOOL)a3
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

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = ODDSiriSchemaODDiOSAssistantProperties;
  v5 = [(SISchemaInstrumentationMessage *)&v28 applySensitiveConditionsPolicy:v4];
  v6 = [(ODDSiriSchemaODDiOSAssistantProperties *)self response];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ODDSiriSchemaODDiOSAssistantProperties *)self deleteResponse];
  }

  v9 = [(ODDSiriSchemaODDiOSAssistantProperties *)self accessibility];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(ODDSiriSchemaODDiOSAssistantProperties *)self deleteAccessibility];
  }

  v12 = [(ODDSiriSchemaODDiOSAssistantProperties *)self carPlay];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(ODDSiriSchemaODDiOSAssistantProperties *)self deleteCarPlay];
  }

  v15 = [(ODDSiriSchemaODDiOSAssistantProperties *)self siriInCall];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(ODDSiriSchemaODDiOSAssistantProperties *)self deleteSiriInCall];
  }

  v18 = [(ODDSiriSchemaODDiOSAssistantProperties *)self announce];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(ODDSiriSchemaODDiOSAssistantProperties *)self deleteAnnounce];
  }

  v21 = [(ODDSiriSchemaODDiOSAssistantProperties *)self autoSendMessage];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(ODDSiriSchemaODDiOSAssistantProperties *)self deleteAutoSendMessage];
  }

  v24 = [(ODDSiriSchemaODDiOSAssistantProperties *)self headGestures];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(ODDSiriSchemaODDiOSAssistantProperties *)self deleteHeadGestures];
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