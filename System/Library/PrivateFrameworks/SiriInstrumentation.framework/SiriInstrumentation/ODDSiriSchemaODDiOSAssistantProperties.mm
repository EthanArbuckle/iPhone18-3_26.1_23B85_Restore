@interface ODDSiriSchemaODDiOSAssistantProperties
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDiOSAssistantProperties)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDiOSAssistantProperties)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)activeSubscriptionsAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)addActiveSubscriptions:(int)subscriptions;
- (void)setHasIsAllowSiriWhenLockedEnabled:(BOOL)enabled;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDiOSAssistantProperties

- (ODDSiriSchemaODDiOSAssistantProperties)initWithDictionary:(id)dictionary
{
  v45 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v43.receiver = self;
  v43.super_class = ODDSiriSchemaODDiOSAssistantProperties;
  v5 = [(ODDSiriSchemaODDiOSAssistantProperties *)&v43 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"isPressSideButtonForSiriEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDiOSAssistantProperties setIsPressSideButtonForSiriEnabled:](v5, "setIsPressSideButtonForSiriEnabled:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"isAllowSiriWhenLockedEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDiOSAssistantProperties setIsAllowSiriWhenLockedEnabled:](v5, "setIsAllowSiriWhenLockedEnabled:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"response"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ODDSiriSchemaODDiOSResponseProperties alloc] initWithDictionary:v8];
      [(ODDSiriSchemaODDiOSAssistantProperties *)v5 setResponse:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"accessibility"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[ODDSiriSchemaODDiOSAccessibilityProperties alloc] initWithDictionary:v10];
      [(ODDSiriSchemaODDiOSAssistantProperties *)v5 setAccessibility:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"carPlay"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[ODDSiriSchemaODDCarPlayProperties alloc] initWithDictionary:v12];
      [(ODDSiriSchemaODDiOSAssistantProperties *)v5 setCarPlay:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"siriInCall"];
    objc_opt_class();
    v38 = v14;
    if (objc_opt_isKindOfClass())
    {
      v15 = [[ODDSiriSchemaODDSiriInCallProperties alloc] initWithDictionary:v14];
      [(ODDSiriSchemaODDiOSAssistantProperties *)v5 setSiriInCall:v15];
    }

    v37 = v12;
    v16 = [dictionaryCopy objectForKeyedSubscript:@"announce"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[ODDSiriSchemaODDAnnounceProperties alloc] initWithDictionary:v16];
      [(ODDSiriSchemaODDiOSAssistantProperties *)v5 setAnnounce:v17];
    }

    v36 = v16;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"autoSendMessage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[ODDSiriSchemaODDAutoSendMessageProperties alloc] initWithDictionary:v18];
      [(ODDSiriSchemaODDiOSAssistantProperties *)v5 setAutoSendMessage:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"activeSubscriptions"];
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

    v27 = [dictionaryCopy objectForKeyedSubscript:@"headGestures"];
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

- (ODDSiriSchemaODDiOSAssistantProperties)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDiOSAssistantProperties *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDiOSAssistantProperties *)self dictionaryRepresentation];
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
  if (self->_accessibility)
  {
    accessibility = [(ODDSiriSchemaODDiOSAssistantProperties *)self accessibility];
    dictionaryRepresentation = [accessibility dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"accessibility"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"accessibility"];
    }
  }

  if ([(NSArray *)self->_activeSubscriptions count])
  {
    activeSubscriptions = [(ODDSiriSchemaODDiOSAssistantProperties *)self activeSubscriptions];
    v8 = [activeSubscriptions copy];
    [dictionary setObject:v8 forKeyedSubscript:@"activeSubscriptions"];
  }

  if (self->_announce)
  {
    announce = [(ODDSiriSchemaODDiOSAssistantProperties *)self announce];
    dictionaryRepresentation2 = [announce dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"announce"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"announce"];
    }
  }

  if (self->_autoSendMessage)
  {
    autoSendMessage = [(ODDSiriSchemaODDiOSAssistantProperties *)self autoSendMessage];
    dictionaryRepresentation3 = [autoSendMessage dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"autoSendMessage"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"autoSendMessage"];
    }
  }

  if (self->_carPlay)
  {
    carPlay = [(ODDSiriSchemaODDiOSAssistantProperties *)self carPlay];
    dictionaryRepresentation4 = [carPlay dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"carPlay"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"carPlay"];
    }
  }

  if (self->_headGestures)
  {
    headGestures = [(ODDSiriSchemaODDiOSAssistantProperties *)self headGestures];
    dictionaryRepresentation5 = [headGestures dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"headGestures"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"headGestures"];
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDiOSAssistantProperties isAllowSiriWhenLockedEnabled](self, "isAllowSiriWhenLockedEnabled")}];
    [dictionary setObject:v22 forKeyedSubscript:@"isAllowSiriWhenLockedEnabled"];

    has = self->_has;
  }

  if (has)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDiOSAssistantProperties isPressSideButtonForSiriEnabled](self, "isPressSideButtonForSiriEnabled")}];
    [dictionary setObject:v23 forKeyedSubscript:@"isPressSideButtonForSiriEnabled"];
  }

  if (self->_response)
  {
    response = [(ODDSiriSchemaODDiOSAssistantProperties *)self response];
    dictionaryRepresentation6 = [response dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"response"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"response"];
    }
  }

  if (self->_siriInCall)
  {
    siriInCall = [(ODDSiriSchemaODDiOSAssistantProperties *)self siriInCall];
    dictionaryRepresentation7 = [siriInCall dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"siriInCall"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"siriInCall"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_49;
  }

  has = self->_has;
  v6 = equalCopy[80];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_49;
  }

  if (*&has)
  {
    isPressSideButtonForSiriEnabled = self->_isPressSideButtonForSiriEnabled;
    if (isPressSideButtonForSiriEnabled != [equalCopy isPressSideButtonForSiriEnabled])
    {
      goto LABEL_49;
    }

    has = self->_has;
    v6 = equalCopy[80];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_49;
  }

  if (v8)
  {
    isAllowSiriWhenLockedEnabled = self->_isAllowSiriWhenLockedEnabled;
    if (isAllowSiriWhenLockedEnabled != [equalCopy isAllowSiriWhenLockedEnabled])
    {
      goto LABEL_49;
    }
  }

  response = [(ODDSiriSchemaODDiOSAssistantProperties *)self response];
  response2 = [equalCopy response];
  if ((response != 0) == (response2 == 0))
  {
    goto LABEL_48;
  }

  response3 = [(ODDSiriSchemaODDiOSAssistantProperties *)self response];
  if (response3)
  {
    v13 = response3;
    response4 = [(ODDSiriSchemaODDiOSAssistantProperties *)self response];
    response5 = [equalCopy response];
    v16 = [response4 isEqual:response5];

    if (!v16)
    {
      goto LABEL_49;
    }
  }

  else
  {
  }

  response = [(ODDSiriSchemaODDiOSAssistantProperties *)self accessibility];
  response2 = [equalCopy accessibility];
  if ((response != 0) == (response2 == 0))
  {
    goto LABEL_48;
  }

  accessibility = [(ODDSiriSchemaODDiOSAssistantProperties *)self accessibility];
  if (accessibility)
  {
    v18 = accessibility;
    accessibility2 = [(ODDSiriSchemaODDiOSAssistantProperties *)self accessibility];
    accessibility3 = [equalCopy accessibility];
    v21 = [accessibility2 isEqual:accessibility3];

    if (!v21)
    {
      goto LABEL_49;
    }
  }

  else
  {
  }

  response = [(ODDSiriSchemaODDiOSAssistantProperties *)self carPlay];
  response2 = [equalCopy carPlay];
  if ((response != 0) == (response2 == 0))
  {
    goto LABEL_48;
  }

  carPlay = [(ODDSiriSchemaODDiOSAssistantProperties *)self carPlay];
  if (carPlay)
  {
    v23 = carPlay;
    carPlay2 = [(ODDSiriSchemaODDiOSAssistantProperties *)self carPlay];
    carPlay3 = [equalCopy carPlay];
    v26 = [carPlay2 isEqual:carPlay3];

    if (!v26)
    {
      goto LABEL_49;
    }
  }

  else
  {
  }

  response = [(ODDSiriSchemaODDiOSAssistantProperties *)self siriInCall];
  response2 = [equalCopy siriInCall];
  if ((response != 0) == (response2 == 0))
  {
    goto LABEL_48;
  }

  siriInCall = [(ODDSiriSchemaODDiOSAssistantProperties *)self siriInCall];
  if (siriInCall)
  {
    v28 = siriInCall;
    siriInCall2 = [(ODDSiriSchemaODDiOSAssistantProperties *)self siriInCall];
    siriInCall3 = [equalCopy siriInCall];
    v31 = [siriInCall2 isEqual:siriInCall3];

    if (!v31)
    {
      goto LABEL_49;
    }
  }

  else
  {
  }

  response = [(ODDSiriSchemaODDiOSAssistantProperties *)self announce];
  response2 = [equalCopy announce];
  if ((response != 0) == (response2 == 0))
  {
    goto LABEL_48;
  }

  announce = [(ODDSiriSchemaODDiOSAssistantProperties *)self announce];
  if (announce)
  {
    v33 = announce;
    announce2 = [(ODDSiriSchemaODDiOSAssistantProperties *)self announce];
    announce3 = [equalCopy announce];
    v36 = [announce2 isEqual:announce3];

    if (!v36)
    {
      goto LABEL_49;
    }
  }

  else
  {
  }

  response = [(ODDSiriSchemaODDiOSAssistantProperties *)self autoSendMessage];
  response2 = [equalCopy autoSendMessage];
  if ((response != 0) == (response2 == 0))
  {
    goto LABEL_48;
  }

  autoSendMessage = [(ODDSiriSchemaODDiOSAssistantProperties *)self autoSendMessage];
  if (autoSendMessage)
  {
    v38 = autoSendMessage;
    autoSendMessage2 = [(ODDSiriSchemaODDiOSAssistantProperties *)self autoSendMessage];
    autoSendMessage3 = [equalCopy autoSendMessage];
    v41 = [autoSendMessage2 isEqual:autoSendMessage3];

    if (!v41)
    {
      goto LABEL_49;
    }
  }

  else
  {
  }

  response = [(ODDSiriSchemaODDiOSAssistantProperties *)self activeSubscriptions];
  response2 = [equalCopy activeSubscriptions];
  if ((response != 0) == (response2 == 0))
  {
    goto LABEL_48;
  }

  activeSubscriptions = [(ODDSiriSchemaODDiOSAssistantProperties *)self activeSubscriptions];
  if (activeSubscriptions)
  {
    v43 = activeSubscriptions;
    activeSubscriptions2 = [(ODDSiriSchemaODDiOSAssistantProperties *)self activeSubscriptions];
    activeSubscriptions3 = [equalCopy activeSubscriptions];
    v46 = [activeSubscriptions2 isEqual:activeSubscriptions3];

    if (!v46)
    {
      goto LABEL_49;
    }
  }

  else
  {
  }

  response = [(ODDSiriSchemaODDiOSAssistantProperties *)self headGestures];
  response2 = [equalCopy headGestures];
  if ((response != 0) != (response2 == 0))
  {
    headGestures = [(ODDSiriSchemaODDiOSAssistantProperties *)self headGestures];
    if (!headGestures)
    {

LABEL_52:
      v52 = 1;
      goto LABEL_50;
    }

    v48 = headGestures;
    headGestures2 = [(ODDSiriSchemaODDiOSAssistantProperties *)self headGestures];
    headGestures3 = [equalCopy headGestures];
    v51 = [headGestures2 isEqual:headGestures3];

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

- (void)writeTo:(id)to
{
  v30 = *MEMORY[0x1E69E9840];
  toCopy = to;
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

  response = [(ODDSiriSchemaODDiOSAssistantProperties *)self response];

  if (response)
  {
    response2 = [(ODDSiriSchemaODDiOSAssistantProperties *)self response];
    PBDataWriterWriteSubmessage();
  }

  accessibility = [(ODDSiriSchemaODDiOSAssistantProperties *)self accessibility];

  if (accessibility)
  {
    accessibility2 = [(ODDSiriSchemaODDiOSAssistantProperties *)self accessibility];
    PBDataWriterWriteSubmessage();
  }

  carPlay = [(ODDSiriSchemaODDiOSAssistantProperties *)self carPlay];

  if (carPlay)
  {
    carPlay2 = [(ODDSiriSchemaODDiOSAssistantProperties *)self carPlay];
    PBDataWriterWriteSubmessage();
  }

  siriInCall = [(ODDSiriSchemaODDiOSAssistantProperties *)self siriInCall];

  if (siriInCall)
  {
    siriInCall2 = [(ODDSiriSchemaODDiOSAssistantProperties *)self siriInCall];
    PBDataWriterWriteSubmessage();
  }

  announce = [(ODDSiriSchemaODDiOSAssistantProperties *)self announce];

  if (announce)
  {
    announce2 = [(ODDSiriSchemaODDiOSAssistantProperties *)self announce];
    PBDataWriterWriteSubmessage();
  }

  autoSendMessage = [(ODDSiriSchemaODDiOSAssistantProperties *)self autoSendMessage];

  if (autoSendMessage)
  {
    autoSendMessage2 = [(ODDSiriSchemaODDiOSAssistantProperties *)self autoSendMessage];
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

  headGestures = [(ODDSiriSchemaODDiOSAssistantProperties *)self headGestures];

  if (headGestures)
  {
    headGestures2 = [(ODDSiriSchemaODDiOSAssistantProperties *)self headGestures];
    PBDataWriterWriteSubmessage();
  }
}

- (int)activeSubscriptionsAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_activeSubscriptions objectAtIndexedSubscript:index];
  intValue = [v3 intValue];

  return intValue;
}

- (void)addActiveSubscriptions:(int)subscriptions
{
  v3 = *&subscriptions;
  activeSubscriptions = self->_activeSubscriptions;
  if (!activeSubscriptions)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_activeSubscriptions;
    self->_activeSubscriptions = array;

    activeSubscriptions = self->_activeSubscriptions;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)activeSubscriptions addObject:v8];
}

- (void)setHasIsAllowSiriWhenLockedEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v28.receiver = self;
  v28.super_class = ODDSiriSchemaODDiOSAssistantProperties;
  v5 = [(SISchemaInstrumentationMessage *)&v28 applySensitiveConditionsPolicy:policyCopy];
  response = [(ODDSiriSchemaODDiOSAssistantProperties *)self response];
  v7 = [response applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ODDSiriSchemaODDiOSAssistantProperties *)self deleteResponse];
  }

  accessibility = [(ODDSiriSchemaODDiOSAssistantProperties *)self accessibility];
  v10 = [accessibility applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ODDSiriSchemaODDiOSAssistantProperties *)self deleteAccessibility];
  }

  carPlay = [(ODDSiriSchemaODDiOSAssistantProperties *)self carPlay];
  v13 = [carPlay applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(ODDSiriSchemaODDiOSAssistantProperties *)self deleteCarPlay];
  }

  siriInCall = [(ODDSiriSchemaODDiOSAssistantProperties *)self siriInCall];
  v16 = [siriInCall applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(ODDSiriSchemaODDiOSAssistantProperties *)self deleteSiriInCall];
  }

  announce = [(ODDSiriSchemaODDiOSAssistantProperties *)self announce];
  v19 = [announce applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(ODDSiriSchemaODDiOSAssistantProperties *)self deleteAnnounce];
  }

  autoSendMessage = [(ODDSiriSchemaODDiOSAssistantProperties *)self autoSendMessage];
  v22 = [autoSendMessage applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(ODDSiriSchemaODDiOSAssistantProperties *)self deleteAutoSendMessage];
  }

  headGestures = [(ODDSiriSchemaODDiOSAssistantProperties *)self headGestures];
  v25 = [headGestures applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
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