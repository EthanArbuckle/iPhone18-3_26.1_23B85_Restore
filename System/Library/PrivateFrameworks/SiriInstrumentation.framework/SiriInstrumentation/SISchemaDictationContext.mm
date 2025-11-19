@interface SISchemaDictationContext
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaDictationContext)initWithDictionary:(id)a3;
- (SISchemaDictationContext)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addDictationLocalesEnabled:(id)a3;
- (void)addKeyboardLocalesEnabled:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaDictationContext

- (SISchemaDictationContext)initWithDictionary:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v51.receiver = self;
  v51.super_class = SISchemaDictationContext;
  v5 = [(SISchemaDictationContext *)&v51 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"keyboardLanguage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaDictationContext *)v5 setKeyboardLanguage:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"keyboardLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaLocaleIdentifier alloc] initWithDictionary:v8];
      [(SISchemaDictationContext *)v5 setKeyboardLocale:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"dictationLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaLocaleIdentifier alloc] initWithDictionary:v10];
      [(SISchemaDictationContext *)v5 setDictationLocale:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"userSelectedLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaLocaleIdentifier alloc] initWithDictionary:v12];
      [(SISchemaDictationContext *)v5 setUserSelectedLocale:v13];
    }

    v39 = v12;
    v14 = [v4 objectForKeyedSubscript:@"siriSelectedLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[SISchemaLocaleIdentifier alloc] initWithDictionary:v14];
      [(SISchemaDictationContext *)v5 setSiriSelectedLocale:v15];
    }

    v16 = [v4 objectForKeyedSubscript:{@"keyboardLocalesEnabled", v14}];
    objc_opt_class();
    v42 = v16;
    v41 = v6;
    v40 = v10;
    if (objc_opt_isKindOfClass())
    {
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v17 = v16;
      v18 = [v17 countByEnumeratingWithState:&v47 objects:v53 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v48;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v48 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v47 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v23 = [[SISchemaLocaleIdentifier alloc] initWithDictionary:v22];
              [(SISchemaDictationContext *)v5 addKeyboardLocalesEnabled:v23];
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v47 objects:v53 count:16];
        }

        while (v19);
      }

      v6 = v41;
      v10 = v40;
    }

    v24 = [v4 objectForKeyedSubscript:@"dictationLocalesEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v25 = v24;
      v26 = [v25 countByEnumeratingWithState:&v43 objects:v52 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v44;
        do
        {
          for (j = 0; j != v27; ++j)
          {
            if (*v44 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v43 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v31 = [[SISchemaLocaleIdentifier alloc] initWithDictionary:v30];
              [(SISchemaDictationContext *)v5 addDictationLocalesEnabled:v31];
            }
          }

          v27 = [v25 countByEnumeratingWithState:&v43 objects:v52 count:16];
        }

        while (v27);
      }

      v6 = v41;
      v10 = v40;
    }

    v32 = [v4 objectForKeyedSubscript:@"bundleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [v32 copy];
      [(SISchemaDictationContext *)v5 setBundleId:v33];
    }

    v34 = [v4 objectForKeyedSubscript:@"textInputSessionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [[SISchemaUUID alloc] initWithDictionary:v34];
      [(SISchemaDictationContext *)v5 setTextInputSessionId:v35];
    }

    v36 = v5;
  }

  return v5;
}

- (SISchemaDictationContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaDictationContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaDictationContext *)self dictionaryRepresentation];
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
  v50 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_bundleId)
  {
    v4 = [(SISchemaDictationContext *)self bundleId];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"bundleId"];
  }

  if (self->_dictationLocale)
  {
    v6 = [(SISchemaDictationContext *)self dictationLocale];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"dictationLocale"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"dictationLocale"];
    }
  }

  if ([(NSArray *)self->_dictationLocalesEnableds count])
  {
    v9 = [MEMORY[0x1E695DF70] array];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v10 = self->_dictationLocalesEnableds;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v45;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v45 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v44 + 1) + 8 * i) dictionaryRepresentation];
          if (v15)
          {
            [v9 addObject:v15];
          }

          else
          {
            v16 = [MEMORY[0x1E695DFB0] null];
            [v9 addObject:v16];
          }
        }

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v12);
    }

    [v3 setObject:v9 forKeyedSubscript:@"dictationLocalesEnabled"];
  }

  if (self->_keyboardLanguage)
  {
    v17 = [(SISchemaDictationContext *)self keyboardLanguage];
    v18 = [v17 copy];
    [v3 setObject:v18 forKeyedSubscript:@"keyboardLanguage"];
  }

  if (self->_keyboardLocale)
  {
    v19 = [(SISchemaDictationContext *)self keyboardLocale];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"keyboardLocale"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"keyboardLocale"];
    }
  }

  if ([(NSArray *)self->_keyboardLocalesEnableds count])
  {
    v22 = [MEMORY[0x1E695DF70] array];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v23 = self->_keyboardLocalesEnableds;
    v24 = [(NSArray *)v23 countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v41;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v41 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = [*(*(&v40 + 1) + 8 * j) dictionaryRepresentation];
          if (v28)
          {
            [v22 addObject:v28];
          }

          else
          {
            v29 = [MEMORY[0x1E695DFB0] null];
            [v22 addObject:v29];
          }
        }

        v25 = [(NSArray *)v23 countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v25);
    }

    [v3 setObject:v22 forKeyedSubscript:@"keyboardLocalesEnabled"];
  }

  if (self->_siriSelectedLocale)
  {
    v30 = [(SISchemaDictationContext *)self siriSelectedLocale];
    v31 = [v30 dictionaryRepresentation];
    if (v31)
    {
      [v3 setObject:v31 forKeyedSubscript:@"siriSelectedLocale"];
    }

    else
    {
      v32 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v32 forKeyedSubscript:@"siriSelectedLocale"];
    }
  }

  if (self->_textInputSessionId)
  {
    v33 = [(SISchemaDictationContext *)self textInputSessionId];
    v34 = [v33 dictionaryRepresentation];
    if (v34)
    {
      [v3 setObject:v34 forKeyedSubscript:@"textInputSessionId"];
    }

    else
    {
      v35 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v35 forKeyedSubscript:@"textInputSessionId"];
    }
  }

  if (self->_userSelectedLocale)
  {
    v36 = [(SISchemaDictationContext *)self userSelectedLocale];
    v37 = [v36 dictionaryRepresentation];
    if (v37)
    {
      [v3 setObject:v37 forKeyedSubscript:@"userSelectedLocale"];
    }

    else
    {
      v38 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v38 forKeyedSubscript:@"userSelectedLocale"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v40];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_keyboardLanguage hash];
  v4 = [(SISchemaLocaleIdentifier *)self->_keyboardLocale hash]^ v3;
  v5 = [(SISchemaLocaleIdentifier *)self->_dictationLocale hash];
  v6 = v4 ^ v5 ^ [(SISchemaLocaleIdentifier *)self->_userSelectedLocale hash];
  v7 = [(SISchemaLocaleIdentifier *)self->_siriSelectedLocale hash];
  v8 = v7 ^ [(NSArray *)self->_keyboardLocalesEnableds hash];
  v9 = v6 ^ v8 ^ [(NSArray *)self->_dictationLocalesEnableds hash];
  v10 = [(NSString *)self->_bundleId hash];
  return v9 ^ v10 ^ [(SISchemaUUID *)self->_textInputSessionId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_47;
  }

  v5 = [(SISchemaDictationContext *)self keyboardLanguage];
  v6 = [v4 keyboardLanguage];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v7 = [(SISchemaDictationContext *)self keyboardLanguage];
  if (v7)
  {
    v8 = v7;
    v9 = [(SISchemaDictationContext *)self keyboardLanguage];
    v10 = [v4 keyboardLanguage];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(SISchemaDictationContext *)self keyboardLocale];
  v6 = [v4 keyboardLocale];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v12 = [(SISchemaDictationContext *)self keyboardLocale];
  if (v12)
  {
    v13 = v12;
    v14 = [(SISchemaDictationContext *)self keyboardLocale];
    v15 = [v4 keyboardLocale];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(SISchemaDictationContext *)self dictationLocale];
  v6 = [v4 dictationLocale];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v17 = [(SISchemaDictationContext *)self dictationLocale];
  if (v17)
  {
    v18 = v17;
    v19 = [(SISchemaDictationContext *)self dictationLocale];
    v20 = [v4 dictationLocale];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(SISchemaDictationContext *)self userSelectedLocale];
  v6 = [v4 userSelectedLocale];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v22 = [(SISchemaDictationContext *)self userSelectedLocale];
  if (v22)
  {
    v23 = v22;
    v24 = [(SISchemaDictationContext *)self userSelectedLocale];
    v25 = [v4 userSelectedLocale];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(SISchemaDictationContext *)self siriSelectedLocale];
  v6 = [v4 siriSelectedLocale];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v27 = [(SISchemaDictationContext *)self siriSelectedLocale];
  if (v27)
  {
    v28 = v27;
    v29 = [(SISchemaDictationContext *)self siriSelectedLocale];
    v30 = [v4 siriSelectedLocale];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(SISchemaDictationContext *)self keyboardLocalesEnableds];
  v6 = [v4 keyboardLocalesEnableds];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v32 = [(SISchemaDictationContext *)self keyboardLocalesEnableds];
  if (v32)
  {
    v33 = v32;
    v34 = [(SISchemaDictationContext *)self keyboardLocalesEnableds];
    v35 = [v4 keyboardLocalesEnableds];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(SISchemaDictationContext *)self dictationLocalesEnableds];
  v6 = [v4 dictationLocalesEnableds];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v37 = [(SISchemaDictationContext *)self dictationLocalesEnableds];
  if (v37)
  {
    v38 = v37;
    v39 = [(SISchemaDictationContext *)self dictationLocalesEnableds];
    v40 = [v4 dictationLocalesEnableds];
    v41 = [v39 isEqual:v40];

    if (!v41)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(SISchemaDictationContext *)self bundleId];
  v6 = [v4 bundleId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v42 = [(SISchemaDictationContext *)self bundleId];
  if (v42)
  {
    v43 = v42;
    v44 = [(SISchemaDictationContext *)self bundleId];
    v45 = [v4 bundleId];
    v46 = [v44 isEqual:v45];

    if (!v46)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(SISchemaDictationContext *)self textInputSessionId];
  v6 = [v4 textInputSessionId];
  if ((v5 != 0) != (v6 == 0))
  {
    v47 = [(SISchemaDictationContext *)self textInputSessionId];
    if (!v47)
    {

LABEL_50:
      v52 = 1;
      goto LABEL_48;
    }

    v48 = v47;
    v49 = [(SISchemaDictationContext *)self textInputSessionId];
    v50 = [v4 textInputSessionId];
    v51 = [v49 isEqual:v50];

    if (v51)
    {
      goto LABEL_50;
    }
  }

  else
  {
LABEL_46:
  }

LABEL_47:
  v52 = 0;
LABEL_48:

  return v52;
}

- (void)writeTo:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SISchemaDictationContext *)self keyboardLanguage];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(SISchemaDictationContext *)self keyboardLocale];

  if (v6)
  {
    v7 = [(SISchemaDictationContext *)self keyboardLocale];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(SISchemaDictationContext *)self dictationLocale];

  if (v8)
  {
    v9 = [(SISchemaDictationContext *)self dictationLocale];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(SISchemaDictationContext *)self userSelectedLocale];

  if (v10)
  {
    v11 = [(SISchemaDictationContext *)self userSelectedLocale];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(SISchemaDictationContext *)self siriSelectedLocale];

  if (v12)
  {
    v13 = [(SISchemaDictationContext *)self siriSelectedLocale];
    PBDataWriterWriteSubmessage();
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v14 = self->_keyboardLocalesEnableds;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v32;
    do
    {
      v18 = 0;
      do
      {
        if (*v32 != v17)
        {
          objc_enumerationMutation(v14);
        }

        PBDataWriterWriteSubmessage();
        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSArray *)v14 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v16);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v19 = self->_dictationLocalesEnableds;
  v20 = [(NSArray *)v19 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v28;
    do
    {
      v23 = 0;
      do
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(v19);
        }

        PBDataWriterWriteSubmessage();
        ++v23;
      }

      while (v21 != v23);
      v21 = [(NSArray *)v19 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v21);
  }

  v24 = [(SISchemaDictationContext *)self bundleId];

  if (v24)
  {
    PBDataWriterWriteStringField();
  }

  v25 = [(SISchemaDictationContext *)self textInputSessionId];

  if (v25)
  {
    v26 = [(SISchemaDictationContext *)self textInputSessionId];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addDictationLocalesEnabled:(id)a3
{
  v4 = a3;
  dictationLocalesEnableds = self->_dictationLocalesEnableds;
  v8 = v4;
  if (!dictationLocalesEnableds)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_dictationLocalesEnableds;
    self->_dictationLocalesEnableds = v6;

    v4 = v8;
    dictationLocalesEnableds = self->_dictationLocalesEnableds;
  }

  [(NSArray *)dictationLocalesEnableds addObject:v4];
}

- (void)addKeyboardLocalesEnabled:(id)a3
{
  v4 = a3;
  keyboardLocalesEnableds = self->_keyboardLocalesEnableds;
  v8 = v4;
  if (!keyboardLocalesEnableds)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_keyboardLocalesEnableds;
    self->_keyboardLocalesEnableds = v6;

    v4 = v8;
    keyboardLocalesEnableds = self->_keyboardLocalesEnableds;
  }

  [(NSArray *)keyboardLocalesEnableds addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = SISchemaDictationContext;
  v5 = [(SISchemaInstrumentationMessage *)&v26 applySensitiveConditionsPolicy:v4];
  v6 = [(SISchemaDictationContext *)self keyboardLocale];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(SISchemaDictationContext *)self deleteKeyboardLocale];
  }

  v9 = [(SISchemaDictationContext *)self dictationLocale];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(SISchemaDictationContext *)self deleteDictationLocale];
  }

  v12 = [(SISchemaDictationContext *)self userSelectedLocale];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(SISchemaDictationContext *)self deleteUserSelectedLocale];
  }

  v15 = [(SISchemaDictationContext *)self siriSelectedLocale];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(SISchemaDictationContext *)self deleteSiriSelectedLocale];
  }

  v18 = [(SISchemaDictationContext *)self keyboardLocalesEnableds];
  v19 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v18 underConditions:v4];
  [(SISchemaDictationContext *)self setKeyboardLocalesEnableds:v19];

  v20 = [(SISchemaDictationContext *)self dictationLocalesEnableds];
  v21 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v20 underConditions:v4];
  [(SISchemaDictationContext *)self setDictationLocalesEnableds:v21];

  v22 = [(SISchemaDictationContext *)self textInputSessionId];
  v23 = [v22 applySensitiveConditionsPolicy:v4];
  v24 = [v23 suppressMessage];

  if (v24)
  {
    [(SISchemaDictationContext *)self deleteTextInputSessionId];
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