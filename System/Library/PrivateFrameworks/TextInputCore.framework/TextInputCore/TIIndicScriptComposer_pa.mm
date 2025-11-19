@interface TIIndicScriptComposer_pa
- (NSDictionary)_modifiersToAllowedPrefixes;
- (id)_displayStringForModifier:(id)a3 withPrefix:(id)a4;
- (id)_outputForModifier:(id)a3 withPrefix:(id)a4 displayString:(id *)a5;
- (id)contextualDisplayKeys;
- (id)stringByComposingInput:(id)a3;
@end

@implementation TIIndicScriptComposer_pa

- (id)stringByComposingInput:(id)a3
{
  v4 = a3;
  v5 = [(TIIndicScriptComposer *)self context];
  v6 = [(TIIndicScriptComposer_pa *)self _outputForModifier:v4 withPrefix:v5];

  if ([v6 length])
  {
    v7 = v6;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = TIIndicScriptComposer_pa;
    v7 = [(TIIndicScriptComposer *)&v10 stringByComposingInput:v4];
  }

  v8 = v7;

  return v8;
}

- (id)contextualDisplayKeys
{
  v22 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = TIIndicScriptComposer_pa;
  v3 = [(TIIndicScriptComposer *)&v20 contextualDisplayKeys];
  v4 = [v3 mutableCopy];

  v5 = [(TIIndicScriptComposer *)self context];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(TIIndicScriptComposer_pa *)self _modifiersToAllowedPrefixes];
  v7 = [v6 allKeys];

  v8 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [(TIIndicScriptComposer_pa *)self _displayStringForModifier:v12 withPrefix:v5];
        [v4 setObject:v13 forKeyedSubscript:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_displayStringForModifier:(id)a3 withPrefix:(id)a4
{
  v6 = a3;
  v10 = v6;
  v7 = [(TIIndicScriptComposer_pa *)self _outputForModifier:v6 withPrefix:a4 displayString:&v10];
  v8 = v10;

  if (v7)
  {
    v7 = v8;
  }

  return v7;
}

- (id)_outputForModifier:(id)a3 withPrefix:(id)a4 displayString:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(TIIndicScriptComposer_pa *)self _modifiersToAllowedPrefixes];
  v11 = [v10 objectForKeyedSubscript:v8];

  if (v11)
  {
    v12 = [(TIIndicScriptComposer *)self languageIdentifier];
    v13 = [v9 _lastConjunctInLanguage:v12];

    v14 = [MEMORY[0x277CCACA8] _stringWithUnichar:{objc_msgSend(v13, "_lastLongCharacter")}];
    if ([v13 rangeOfString:@"੍" options:2] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v11, "containsObject:", v14))
    {
      if (a5)
      {
        *a5 = [v13 stringByAppendingString:v8];
      }

      v15 = v8;
    }

    else
    {
      v16 = [v11 objectAtIndexedSubscript:0];
      v17 = [v16 stringByAppendingString:v8];
      v15 = v17;
      if (a5)
      {
        v18 = v17;
        *a5 = v15;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (NSDictionary)_modifiersToAllowedPrefixes
{
  modifiersToAllowedPrefixes = self->_modifiersToAllowedPrefixes;
  if (!modifiersToAllowedPrefixes)
  {
    self->_modifiersToAllowedPrefixes = &unk_28400C310;
    modifiersToAllowedPrefixes = self->_modifiersToAllowedPrefixes;
  }

  return modifiersToAllowedPrefixes;
}

@end