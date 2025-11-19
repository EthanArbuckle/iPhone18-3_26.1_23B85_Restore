@interface ODDSiriSchemaODDUserPersonalization
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODDSiriSchemaODDUserPersonalization)initWithDictionary:(id)a3;
- (ODDSiriSchemaODDUserPersonalization)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)activeSubscriptionsAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)addActiveSubscriptions:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODDSiriSchemaODDUserPersonalization

- (ODDSiriSchemaODDUserPersonalization)initWithDictionary:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = ODDSiriSchemaODDUserPersonalization;
  v5 = [(ODDSiriSchemaODDUserPersonalization *)&v22 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"isPersonalDomainRequestsEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDUserPersonalization setIsPersonalDomainRequestsEnabled:](v5, "setIsPersonalDomainRequestsEnabled:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"activeSubscriptions"];
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

    v14 = [v4 objectForKeyedSubscript:{@"voiceSettings", v18}];
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

- (ODDSiriSchemaODDUserPersonalization)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDUserPersonalization *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODDSiriSchemaODDUserPersonalization *)self dictionaryRepresentation];
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
  if ([(NSArray *)self->_activeSubscriptions count])
  {
    v4 = [(ODDSiriSchemaODDUserPersonalization *)self activeSubscriptions];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"activeSubscriptions"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDUserPersonalization isPersonalDomainRequestsEnabled](self, "isPersonalDomainRequestsEnabled")}];
    [v3 setObject:v6 forKeyedSubscript:@"isPersonalDomainRequestsEnabled"];
  }

  if (self->_voiceSettings)
  {
    v7 = [(ODDSiriSchemaODDUserPersonalization *)self voiceSettings];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"voiceSettings"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"voiceSettings"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (v4[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    isPersonalDomainRequestsEnabled = self->_isPersonalDomainRequestsEnabled;
    if (isPersonalDomainRequestsEnabled != [v4 isPersonalDomainRequestsEnabled])
    {
      goto LABEL_15;
    }
  }

  v6 = [(ODDSiriSchemaODDUserPersonalization *)self activeSubscriptions];
  v7 = [v4 activeSubscriptions];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_14;
  }

  v8 = [(ODDSiriSchemaODDUserPersonalization *)self activeSubscriptions];
  if (v8)
  {
    v9 = v8;
    v10 = [(ODDSiriSchemaODDUserPersonalization *)self activeSubscriptions];
    v11 = [v4 activeSubscriptions];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v6 = [(ODDSiriSchemaODDUserPersonalization *)self voiceSettings];
  v7 = [v4 voiceSettings];
  if ((v6 != 0) != (v7 == 0))
  {
    v13 = [(ODDSiriSchemaODDUserPersonalization *)self voiceSettings];
    if (!v13)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = v13;
    v15 = [(ODDSiriSchemaODDUserPersonalization *)self voiceSettings];
    v16 = [v4 voiceSettings];
    v17 = [v15 isEqual:v16];

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

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  v10 = [(ODDSiriSchemaODDUserPersonalization *)self voiceSettings];

  if (v10)
  {
    v11 = [(ODDSiriSchemaODDUserPersonalization *)self voiceSettings];
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

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = ODDSiriSchemaODDUserPersonalization;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(ODDSiriSchemaODDUserPersonalization *)self voiceSettings:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
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