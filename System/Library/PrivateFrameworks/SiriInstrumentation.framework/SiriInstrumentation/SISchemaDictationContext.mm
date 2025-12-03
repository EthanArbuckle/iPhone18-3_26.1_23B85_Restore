@interface SISchemaDictationContext
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaDictationContext)initWithDictionary:(id)dictionary;
- (SISchemaDictationContext)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addDictationLocalesEnabled:(id)enabled;
- (void)addKeyboardLocalesEnabled:(id)enabled;
- (void)writeTo:(id)to;
@end

@implementation SISchemaDictationContext

- (SISchemaDictationContext)initWithDictionary:(id)dictionary
{
  v54 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v51.receiver = self;
  v51.super_class = SISchemaDictationContext;
  v5 = [(SISchemaDictationContext *)&v51 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"keyboardLanguage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaDictationContext *)v5 setKeyboardLanguage:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"keyboardLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaLocaleIdentifier alloc] initWithDictionary:v8];
      [(SISchemaDictationContext *)v5 setKeyboardLocale:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"dictationLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaLocaleIdentifier alloc] initWithDictionary:v10];
      [(SISchemaDictationContext *)v5 setDictationLocale:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"userSelectedLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaLocaleIdentifier alloc] initWithDictionary:v12];
      [(SISchemaDictationContext *)v5 setUserSelectedLocale:v13];
    }

    v39 = v12;
    v14 = [dictionaryCopy objectForKeyedSubscript:@"siriSelectedLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[SISchemaLocaleIdentifier alloc] initWithDictionary:v14];
      [(SISchemaDictationContext *)v5 setSiriSelectedLocale:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:{@"keyboardLocalesEnabled", v14}];
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

    v24 = [dictionaryCopy objectForKeyedSubscript:@"dictationLocalesEnabled"];
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

    v32 = [dictionaryCopy objectForKeyedSubscript:@"bundleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [v32 copy];
      [(SISchemaDictationContext *)v5 setBundleId:v33];
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"textInputSessionId"];
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

- (SISchemaDictationContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaDictationContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaDictationContext *)self dictionaryRepresentation];
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
  v50 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_bundleId)
  {
    bundleId = [(SISchemaDictationContext *)self bundleId];
    v5 = [bundleId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"bundleId"];
  }

  if (self->_dictationLocale)
  {
    dictationLocale = [(SISchemaDictationContext *)self dictationLocale];
    dictionaryRepresentation = [dictationLocale dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"dictationLocale"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"dictationLocale"];
    }
  }

  if ([(NSArray *)self->_dictationLocalesEnableds count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation2 = [*(*(&v44 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation2)
          {
            [array addObject:dictionaryRepresentation2];
          }

          else
          {
            null2 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null2];
          }
        }

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v12);
    }

    [dictionary setObject:array forKeyedSubscript:@"dictationLocalesEnabled"];
  }

  if (self->_keyboardLanguage)
  {
    keyboardLanguage = [(SISchemaDictationContext *)self keyboardLanguage];
    v18 = [keyboardLanguage copy];
    [dictionary setObject:v18 forKeyedSubscript:@"keyboardLanguage"];
  }

  if (self->_keyboardLocale)
  {
    keyboardLocale = [(SISchemaDictationContext *)self keyboardLocale];
    dictionaryRepresentation3 = [keyboardLocale dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"keyboardLocale"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"keyboardLocale"];
    }
  }

  if ([(NSArray *)self->_keyboardLocalesEnableds count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation4 = [*(*(&v40 + 1) + 8 * j) dictionaryRepresentation];
          if (dictionaryRepresentation4)
          {
            [array2 addObject:dictionaryRepresentation4];
          }

          else
          {
            null4 = [MEMORY[0x1E695DFB0] null];
            [array2 addObject:null4];
          }
        }

        v25 = [(NSArray *)v23 countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v25);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"keyboardLocalesEnabled"];
  }

  if (self->_siriSelectedLocale)
  {
    siriSelectedLocale = [(SISchemaDictationContext *)self siriSelectedLocale];
    dictionaryRepresentation5 = [siriSelectedLocale dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"siriSelectedLocale"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"siriSelectedLocale"];
    }
  }

  if (self->_textInputSessionId)
  {
    textInputSessionId = [(SISchemaDictationContext *)self textInputSessionId];
    dictionaryRepresentation6 = [textInputSessionId dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"textInputSessionId"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"textInputSessionId"];
    }
  }

  if (self->_userSelectedLocale)
  {
    userSelectedLocale = [(SISchemaDictationContext *)self userSelectedLocale];
    dictionaryRepresentation7 = [userSelectedLocale dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"userSelectedLocale"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"userSelectedLocale"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v40];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_47;
  }

  keyboardLanguage = [(SISchemaDictationContext *)self keyboardLanguage];
  keyboardLanguage2 = [equalCopy keyboardLanguage];
  if ((keyboardLanguage != 0) == (keyboardLanguage2 == 0))
  {
    goto LABEL_46;
  }

  keyboardLanguage3 = [(SISchemaDictationContext *)self keyboardLanguage];
  if (keyboardLanguage3)
  {
    v8 = keyboardLanguage3;
    keyboardLanguage4 = [(SISchemaDictationContext *)self keyboardLanguage];
    keyboardLanguage5 = [equalCopy keyboardLanguage];
    v11 = [keyboardLanguage4 isEqual:keyboardLanguage5];

    if (!v11)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  keyboardLanguage = [(SISchemaDictationContext *)self keyboardLocale];
  keyboardLanguage2 = [equalCopy keyboardLocale];
  if ((keyboardLanguage != 0) == (keyboardLanguage2 == 0))
  {
    goto LABEL_46;
  }

  keyboardLocale = [(SISchemaDictationContext *)self keyboardLocale];
  if (keyboardLocale)
  {
    v13 = keyboardLocale;
    keyboardLocale2 = [(SISchemaDictationContext *)self keyboardLocale];
    keyboardLocale3 = [equalCopy keyboardLocale];
    v16 = [keyboardLocale2 isEqual:keyboardLocale3];

    if (!v16)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  keyboardLanguage = [(SISchemaDictationContext *)self dictationLocale];
  keyboardLanguage2 = [equalCopy dictationLocale];
  if ((keyboardLanguage != 0) == (keyboardLanguage2 == 0))
  {
    goto LABEL_46;
  }

  dictationLocale = [(SISchemaDictationContext *)self dictationLocale];
  if (dictationLocale)
  {
    v18 = dictationLocale;
    dictationLocale2 = [(SISchemaDictationContext *)self dictationLocale];
    dictationLocale3 = [equalCopy dictationLocale];
    v21 = [dictationLocale2 isEqual:dictationLocale3];

    if (!v21)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  keyboardLanguage = [(SISchemaDictationContext *)self userSelectedLocale];
  keyboardLanguage2 = [equalCopy userSelectedLocale];
  if ((keyboardLanguage != 0) == (keyboardLanguage2 == 0))
  {
    goto LABEL_46;
  }

  userSelectedLocale = [(SISchemaDictationContext *)self userSelectedLocale];
  if (userSelectedLocale)
  {
    v23 = userSelectedLocale;
    userSelectedLocale2 = [(SISchemaDictationContext *)self userSelectedLocale];
    userSelectedLocale3 = [equalCopy userSelectedLocale];
    v26 = [userSelectedLocale2 isEqual:userSelectedLocale3];

    if (!v26)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  keyboardLanguage = [(SISchemaDictationContext *)self siriSelectedLocale];
  keyboardLanguage2 = [equalCopy siriSelectedLocale];
  if ((keyboardLanguage != 0) == (keyboardLanguage2 == 0))
  {
    goto LABEL_46;
  }

  siriSelectedLocale = [(SISchemaDictationContext *)self siriSelectedLocale];
  if (siriSelectedLocale)
  {
    v28 = siriSelectedLocale;
    siriSelectedLocale2 = [(SISchemaDictationContext *)self siriSelectedLocale];
    siriSelectedLocale3 = [equalCopy siriSelectedLocale];
    v31 = [siriSelectedLocale2 isEqual:siriSelectedLocale3];

    if (!v31)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  keyboardLanguage = [(SISchemaDictationContext *)self keyboardLocalesEnableds];
  keyboardLanguage2 = [equalCopy keyboardLocalesEnableds];
  if ((keyboardLanguage != 0) == (keyboardLanguage2 == 0))
  {
    goto LABEL_46;
  }

  keyboardLocalesEnableds = [(SISchemaDictationContext *)self keyboardLocalesEnableds];
  if (keyboardLocalesEnableds)
  {
    v33 = keyboardLocalesEnableds;
    keyboardLocalesEnableds2 = [(SISchemaDictationContext *)self keyboardLocalesEnableds];
    keyboardLocalesEnableds3 = [equalCopy keyboardLocalesEnableds];
    v36 = [keyboardLocalesEnableds2 isEqual:keyboardLocalesEnableds3];

    if (!v36)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  keyboardLanguage = [(SISchemaDictationContext *)self dictationLocalesEnableds];
  keyboardLanguage2 = [equalCopy dictationLocalesEnableds];
  if ((keyboardLanguage != 0) == (keyboardLanguage2 == 0))
  {
    goto LABEL_46;
  }

  dictationLocalesEnableds = [(SISchemaDictationContext *)self dictationLocalesEnableds];
  if (dictationLocalesEnableds)
  {
    v38 = dictationLocalesEnableds;
    dictationLocalesEnableds2 = [(SISchemaDictationContext *)self dictationLocalesEnableds];
    dictationLocalesEnableds3 = [equalCopy dictationLocalesEnableds];
    v41 = [dictationLocalesEnableds2 isEqual:dictationLocalesEnableds3];

    if (!v41)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  keyboardLanguage = [(SISchemaDictationContext *)self bundleId];
  keyboardLanguage2 = [equalCopy bundleId];
  if ((keyboardLanguage != 0) == (keyboardLanguage2 == 0))
  {
    goto LABEL_46;
  }

  bundleId = [(SISchemaDictationContext *)self bundleId];
  if (bundleId)
  {
    v43 = bundleId;
    bundleId2 = [(SISchemaDictationContext *)self bundleId];
    bundleId3 = [equalCopy bundleId];
    v46 = [bundleId2 isEqual:bundleId3];

    if (!v46)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  keyboardLanguage = [(SISchemaDictationContext *)self textInputSessionId];
  keyboardLanguage2 = [equalCopy textInputSessionId];
  if ((keyboardLanguage != 0) != (keyboardLanguage2 == 0))
  {
    textInputSessionId = [(SISchemaDictationContext *)self textInputSessionId];
    if (!textInputSessionId)
    {

LABEL_50:
      v52 = 1;
      goto LABEL_48;
    }

    v48 = textInputSessionId;
    textInputSessionId2 = [(SISchemaDictationContext *)self textInputSessionId];
    textInputSessionId3 = [equalCopy textInputSessionId];
    v51 = [textInputSessionId2 isEqual:textInputSessionId3];

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

- (void)writeTo:(id)to
{
  v37 = *MEMORY[0x1E69E9840];
  toCopy = to;
  keyboardLanguage = [(SISchemaDictationContext *)self keyboardLanguage];

  if (keyboardLanguage)
  {
    PBDataWriterWriteStringField();
  }

  keyboardLocale = [(SISchemaDictationContext *)self keyboardLocale];

  if (keyboardLocale)
  {
    keyboardLocale2 = [(SISchemaDictationContext *)self keyboardLocale];
    PBDataWriterWriteSubmessage();
  }

  dictationLocale = [(SISchemaDictationContext *)self dictationLocale];

  if (dictationLocale)
  {
    dictationLocale2 = [(SISchemaDictationContext *)self dictationLocale];
    PBDataWriterWriteSubmessage();
  }

  userSelectedLocale = [(SISchemaDictationContext *)self userSelectedLocale];

  if (userSelectedLocale)
  {
    userSelectedLocale2 = [(SISchemaDictationContext *)self userSelectedLocale];
    PBDataWriterWriteSubmessage();
  }

  siriSelectedLocale = [(SISchemaDictationContext *)self siriSelectedLocale];

  if (siriSelectedLocale)
  {
    siriSelectedLocale2 = [(SISchemaDictationContext *)self siriSelectedLocale];
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

  bundleId = [(SISchemaDictationContext *)self bundleId];

  if (bundleId)
  {
    PBDataWriterWriteStringField();
  }

  textInputSessionId = [(SISchemaDictationContext *)self textInputSessionId];

  if (textInputSessionId)
  {
    textInputSessionId2 = [(SISchemaDictationContext *)self textInputSessionId];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addDictationLocalesEnabled:(id)enabled
{
  enabledCopy = enabled;
  dictationLocalesEnableds = self->_dictationLocalesEnableds;
  v8 = enabledCopy;
  if (!dictationLocalesEnableds)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_dictationLocalesEnableds;
    self->_dictationLocalesEnableds = array;

    enabledCopy = v8;
    dictationLocalesEnableds = self->_dictationLocalesEnableds;
  }

  [(NSArray *)dictationLocalesEnableds addObject:enabledCopy];
}

- (void)addKeyboardLocalesEnabled:(id)enabled
{
  enabledCopy = enabled;
  keyboardLocalesEnableds = self->_keyboardLocalesEnableds;
  v8 = enabledCopy;
  if (!keyboardLocalesEnableds)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_keyboardLocalesEnableds;
    self->_keyboardLocalesEnableds = array;

    enabledCopy = v8;
    keyboardLocalesEnableds = self->_keyboardLocalesEnableds;
  }

  [(NSArray *)keyboardLocalesEnableds addObject:enabledCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v26.receiver = self;
  v26.super_class = SISchemaDictationContext;
  v5 = [(SISchemaInstrumentationMessage *)&v26 applySensitiveConditionsPolicy:policyCopy];
  keyboardLocale = [(SISchemaDictationContext *)self keyboardLocale];
  v7 = [keyboardLocale applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(SISchemaDictationContext *)self deleteKeyboardLocale];
  }

  dictationLocale = [(SISchemaDictationContext *)self dictationLocale];
  v10 = [dictationLocale applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(SISchemaDictationContext *)self deleteDictationLocale];
  }

  userSelectedLocale = [(SISchemaDictationContext *)self userSelectedLocale];
  v13 = [userSelectedLocale applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(SISchemaDictationContext *)self deleteUserSelectedLocale];
  }

  siriSelectedLocale = [(SISchemaDictationContext *)self siriSelectedLocale];
  v16 = [siriSelectedLocale applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(SISchemaDictationContext *)self deleteSiriSelectedLocale];
  }

  keyboardLocalesEnableds = [(SISchemaDictationContext *)self keyboardLocalesEnableds];
  v19 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:keyboardLocalesEnableds underConditions:policyCopy];
  [(SISchemaDictationContext *)self setKeyboardLocalesEnableds:v19];

  dictationLocalesEnableds = [(SISchemaDictationContext *)self dictationLocalesEnableds];
  v21 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:dictationLocalesEnableds underConditions:policyCopy];
  [(SISchemaDictationContext *)self setDictationLocalesEnableds:v21];

  textInputSessionId = [(SISchemaDictationContext *)self textInputSessionId];
  v23 = [textInputSessionId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v23 suppressMessage];

  if (suppressMessage5)
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