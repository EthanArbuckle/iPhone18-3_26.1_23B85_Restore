@interface ODDSiriSchemaODDUserPersonalization
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDUserPersonalization)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDUserPersonalization)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)activeSubscriptionsAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)addActiveSubscriptions:(int)subscriptions;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDUserPersonalization

- (ODDSiriSchemaODDUserPersonalization)initWithDictionary:(id)dictionary
{
  v24 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = ODDSiriSchemaODDUserPersonalization;
  v5 = [(ODDSiriSchemaODDUserPersonalization *)&v22 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"isPersonalDomainRequestsEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDUserPersonalization setIsPersonalDomainRequestsEnabled:](v5, "setIsPersonalDomainRequestsEnabled:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"activeSubscriptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v19;
        do
        {
          v12 = 0;
          do
          {
            if (*v19 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v18 + 1) + 8 * v12);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[ODDSiriSchemaODDUserPersonalization addActiveSubscriptions:](v5, "addActiveSubscriptions:", [v13 intValue]);
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
        }

        while (v10);
      }
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:{@"voiceSettings", v18}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[SISchemaVoiceSettings alloc] initWithDictionary:v14];
      [(ODDSiriSchemaODDUserPersonalization *)v5 setVoiceSettings:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDUserPersonalization)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDUserPersonalization *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDUserPersonalization *)self dictionaryRepresentation];
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
  if ([(NSArray *)self->_activeSubscriptions count])
  {
    activeSubscriptions = [(ODDSiriSchemaODDUserPersonalization *)self activeSubscriptions];
    v5 = [activeSubscriptions copy];
    [dictionary setObject:v5 forKeyedSubscript:@"activeSubscriptions"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDUserPersonalization isPersonalDomainRequestsEnabled](self, "isPersonalDomainRequestsEnabled")}];
    [dictionary setObject:v6 forKeyedSubscript:@"isPersonalDomainRequestsEnabled"];
  }

  if (self->_voiceSettings)
  {
    voiceSettings = [(ODDSiriSchemaODDUserPersonalization *)self voiceSettings];
    dictionaryRepresentation = [voiceSettings dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"voiceSettings"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"voiceSettings"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_isPersonalDomainRequestsEnabled;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSArray *)self->_activeSubscriptions hash]^ v3;
  return v4 ^ [(SISchemaVoiceSettings *)self->_voiceSettings hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    isPersonalDomainRequestsEnabled = self->_isPersonalDomainRequestsEnabled;
    if (isPersonalDomainRequestsEnabled != [equalCopy isPersonalDomainRequestsEnabled])
    {
      goto LABEL_15;
    }
  }

  activeSubscriptions = [(ODDSiriSchemaODDUserPersonalization *)self activeSubscriptions];
  activeSubscriptions2 = [equalCopy activeSubscriptions];
  if ((activeSubscriptions != 0) == (activeSubscriptions2 == 0))
  {
    goto LABEL_14;
  }

  activeSubscriptions3 = [(ODDSiriSchemaODDUserPersonalization *)self activeSubscriptions];
  if (activeSubscriptions3)
  {
    v9 = activeSubscriptions3;
    activeSubscriptions4 = [(ODDSiriSchemaODDUserPersonalization *)self activeSubscriptions];
    activeSubscriptions5 = [equalCopy activeSubscriptions];
    v12 = [activeSubscriptions4 isEqual:activeSubscriptions5];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  activeSubscriptions = [(ODDSiriSchemaODDUserPersonalization *)self voiceSettings];
  activeSubscriptions2 = [equalCopy voiceSettings];
  if ((activeSubscriptions != 0) != (activeSubscriptions2 == 0))
  {
    voiceSettings = [(ODDSiriSchemaODDUserPersonalization *)self voiceSettings];
    if (!voiceSettings)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = voiceSettings;
    voiceSettings2 = [(ODDSiriSchemaODDUserPersonalization *)self voiceSettings];
    voiceSettings3 = [equalCopy voiceSettings];
    v17 = [voiceSettings2 isEqual:voiceSettings3];

    if (v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_14:
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_activeSubscriptions;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v12 + 1) + 8 * v9) intValue];
        PBDataWriterWriteInt32Field();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  voiceSettings = [(ODDSiriSchemaODDUserPersonalization *)self voiceSettings];

  if (voiceSettings)
  {
    voiceSettings2 = [(ODDSiriSchemaODDUserPersonalization *)self voiceSettings];
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

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = ODDSiriSchemaODDUserPersonalization;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ODDSiriSchemaODDUserPersonalization *)self voiceSettings:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(ODDSiriSchemaODDUserPersonalization *)self deleteVoiceSettings];
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