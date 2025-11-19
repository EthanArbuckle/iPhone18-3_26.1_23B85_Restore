@interface ODDSiriSchemaODDVoiceProperties
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODDSiriSchemaODDVoiceProperties)initWithDictionary:(id)a3;
- (ODDSiriSchemaODDVoiceProperties)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)installedVoicesAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)addInstalledVoices:(int)a3;
- (void)setHasName:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODDSiriSchemaODDVoiceProperties

- (ODDSiriSchemaODDVoiceProperties)initWithDictionary:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = ODDSiriSchemaODDVoiceProperties;
  v5 = [(ODDSiriSchemaODDVoiceProperties *)&v25 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"gender"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDVoiceProperties setGender:](v5, "setGender:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"accent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[SISchemaISOLocale alloc] initWithDictionary:v7];
      [(ODDSiriSchemaODDVoiceProperties *)v5 setAccent:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDVoiceProperties setName:](v5, "setName:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"installedVoices"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v7;
      v20 = v6;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v22;
        do
        {
          v15 = 0;
          do
          {
            if (*v22 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v21 + 1) + 8 * v15);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[ODDSiriSchemaODDVoiceProperties addInstalledVoices:](v5, "addInstalledVoices:", [v16 intValue]);
            }

            ++v15;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v13);
      }

      v7 = v19;
      v6 = v20;
    }

    v17 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDVoiceProperties)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDVoiceProperties *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODDSiriSchemaODDVoiceProperties *)self dictionaryRepresentation];
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
  if (self->_accent)
  {
    v4 = [(ODDSiriSchemaODDVoiceProperties *)self accent];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"accent"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"accent"];
    }
  }

  if (*&self->_has)
  {
    v7 = [(ODDSiriSchemaODDVoiceProperties *)self gender]- 1;
    if (v7 > 2)
    {
      v8 = @"VOICEGENDER_UNKNOWN_VOICE_GENDER";
    }

    else
    {
      v8 = off_1E78DDB08[v7];
    }

    [v3 setObject:v8 forKeyedSubscript:@"gender"];
  }

  if ([(NSArray *)self->_installedVoices count])
  {
    v9 = [(ODDSiriSchemaODDVoiceProperties *)self installedVoices];
    v10 = [v9 copy];
    [v3 setObject:v10 forKeyedSubscript:@"installedVoices"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v11 = [(ODDSiriSchemaODDVoiceProperties *)self name]- 1;
    if (v11 > 0x68)
    {
      v12 = @"VOICENAME_UNKNOWN";
    }

    else
    {
      v12 = off_1E78DDB20[v11];
    }

    [v3 setObject:v12 forKeyedSubscript:@"name"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_gender;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(SISchemaISOLocale *)self->_accent hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_name;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ [(NSArray *)self->_installedVoices hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  if ((*&self->_has & 1) != (v4[40] & 1))
  {
    goto LABEL_18;
  }

  if (*&self->_has)
  {
    gender = self->_gender;
    if (gender != [v4 gender])
    {
      goto LABEL_18;
    }
  }

  v6 = [(ODDSiriSchemaODDVoiceProperties *)self accent];
  v7 = [v4 accent];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v8 = [(ODDSiriSchemaODDVoiceProperties *)self accent];
  if (v8)
  {
    v9 = v8;
    v10 = [(ODDSiriSchemaODDVoiceProperties *)self accent];
    v11 = [v4 accent];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v13 = (*&self->_has >> 1) & 1;
  if (v13 != ((v4[40] >> 1) & 1))
  {
    goto LABEL_18;
  }

  if (v13)
  {
    name = self->_name;
    if (name != [v4 name])
    {
      goto LABEL_18;
    }
  }

  v6 = [(ODDSiriSchemaODDVoiceProperties *)self installedVoices];
  v7 = [v4 installedVoices];
  if ((v6 != 0) != (v7 == 0))
  {
    v15 = [(ODDSiriSchemaODDVoiceProperties *)self installedVoices];
    if (!v15)
    {

LABEL_21:
      v20 = 1;
      goto LABEL_19;
    }

    v16 = v15;
    v17 = [(ODDSiriSchemaODDVoiceProperties *)self installedVoices];
    v18 = [v4 installedVoices];
    v19 = [v17 isEqual:v18];

    if (v19)
    {
      goto LABEL_21;
    }
  }

  else
  {
LABEL_17:
  }

LABEL_18:
  v20 = 0;
LABEL_19:

  return v20;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v5 = [(ODDSiriSchemaODDVoiceProperties *)self accent];

  if (v5)
  {
    v6 = [(ODDSiriSchemaODDVoiceProperties *)self accent];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = self->_installedVoices;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11) intValue];
        PBDataWriterWriteInt32Field();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (int)installedVoicesAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_installedVoices objectAtIndexedSubscript:a3];
  v4 = [v3 intValue];

  return v4;
}

- (void)addInstalledVoices:(int)a3
{
  v3 = *&a3;
  installedVoices = self->_installedVoices;
  if (!installedVoices)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_installedVoices;
    self->_installedVoices = v6;

    installedVoices = self->_installedVoices;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)installedVoices addObject:v8];
}

- (void)setHasName:(BOOL)a3
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
  v9.receiver = self;
  v9.super_class = ODDSiriSchemaODDVoiceProperties;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(ODDSiriSchemaODDVoiceProperties *)self accent:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(ODDSiriSchemaODDVoiceProperties *)self deleteAccent];
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