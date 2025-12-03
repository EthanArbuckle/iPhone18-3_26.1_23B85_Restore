@interface TypistKeyboardCherokee
- (TypistKeyboardCherokee)initWithCoder:(id)coder;
- (id)addAccentKeyAction:(id)action;
- (id)generateBaseKeyMap:(id)map;
- (id)generateKeyplaneSwitchTable:(id)table;
- (id)getPostfixKey:(id)key;
- (id)init:(id)init options:(id)options;
- (id)setupKeyboardInfo:(id)info options:(id)options;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TypistKeyboardCherokee

- (id)init:(id)init options:(id)options
{
  v5.receiver = self;
  v5.super_class = TypistKeyboardCherokee;
  return [(TypistKeyboard *)&v5 init:init options:options locale:@"chr"];
}

- (id)setupKeyboardInfo:(id)info options:(id)options
{
  v9.receiver = self;
  v9.super_class = TypistKeyboardCherokee;
  v5 = [(TypistKeyboard *)&v9 setupKeyboardInfo:info options:options];
  if (!v5)
  {
    [(TypistKeyboardCherokee *)self setVowelKeyMap:&unk_28802A500];
    keyPlanes = [(TypistKeyboard *)self keyPlanes];
    v7 = [(TypistKeyboardCherokee *)self generateBaseKeyMap:keyPlanes];
    [(TypistKeyboardCherokee *)self setBaseCharacters:v7];
  }

  return v5;
}

- (id)generateKeyplaneSwitchTable:(id)table
{
  v18 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = TypistKeyboardCherokee;
  v3 = [(TypistKeyboard *)&v16 generateKeyplaneSwitchTable:table];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allKeys = [v3 allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 containsString:@"shift"])
        {
          [v3 removeObjectForKey:v9];
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)getPostfixKey:(id)key
{
  keyCopy = key;
  baseCharacters = [(TypistKeyboardCherokee *)self baseCharacters];
  v6 = [baseCharacters objectForKeyedSubscript:keyCopy];

  if (v6)
  {
    baseCharacters2 = [(TypistKeyboardCherokee *)self baseCharacters];
    v8 = [baseCharacters2 objectForKeyedSubscript:keyCopy];
  }

  else
  {
    v8 = keyCopy;
  }

  return v8;
}

- (id)generateBaseKeyMap:(id)map
{
  v39 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = mapCopy;
  v6 = [v5 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v34;
    v9 = 0x277CBE000uLL;
    v25 = *v34;
    v26 = v5;
    do
    {
      v10 = 0;
      v27 = v7;
      do
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [v5 objectForKeyedSubscript:{*(*(&v33 + 1) + 8 * v10), v25, v26}];
        v12 = *(v9 + 2752);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v28 = v11;
          v13 = v11;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v14 = [v13 countByEnumeratingWithState:&v29 objects:v37 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v30;
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v30 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v29 + 1) + 8 * i);
                v19 = [v13 objectForKeyedSubscript:v18];
                v20 = [v19 objectForKeyedSubscript:@"basekey"];

                if (v20)
                {
                  v21 = [v13 objectForKeyedSubscript:v18];
                  v22 = [v21 objectForKeyedSubscript:@"basekey"];

                  [dictionary setObject:v22 forKeyedSubscript:v18];
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v29 objects:v37 count:16];
            }

            while (v15);
          }

          v8 = v25;
          v5 = v26;
          v9 = 0x277CBE000;
          v7 = v27;
          v11 = v28;
        }

        ++v10;
      }

      while (v10 != v7);
      v7 = [v5 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v7);
  }

  v23 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (id)addAccentKeyAction:(id)action
{
  v16[1] = *MEMORY[0x277D85DE8];
  actionCopy = action;
  vowelKeyMap = [(TypistKeyboardCherokee *)self vowelKeyMap];
  v6 = [vowelKeyMap objectForKeyedSubscript:actionCopy];

  if (v6)
  {
    keyPlanes = [(TypistKeyboard *)self keyPlanes];
    defaultPlaneName = [(TypistKeyboard *)self defaultPlaneName];
    v9 = [keyPlanes objectForKeyedSubscript:defaultPlaneName];
    vowelKeyMap2 = [(TypistKeyboardCherokee *)self vowelKeyMap];
    v11 = [vowelKeyMap2 objectForKeyedSubscript:actionCopy];
    v12 = [v9 objectForKeyedSubscript:v11];
    v16[0] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (TypistKeyboardCherokee)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TypistKeyboardCherokee;
  v5 = [(TypistKeyboard *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vowelKeyMap"];
    vowelKeyMap = v5->_vowelKeyMap;
    v5->_vowelKeyMap = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = TypistKeyboardCherokee;
  [(TypistKeyboard *)&v6 encodeWithCoder:coderCopy];
  vowelKeyMap = self->_vowelKeyMap;
  if (vowelKeyMap)
  {
    [coderCopy encodeObject:vowelKeyMap forKey:@"vowelKeyMap"];
  }
}

@end