@interface SHBagContract
- (NSDictionary)defaultValues;
- (SHBagContract)initWithBaseDictionaryKey:(id)key bag:(id)bag;
- (SHBagContract)initWithBaseDictionaryKey:(id)key profile:(id)profile profileVersion:(id)version;
- (id)defaultValueForKey:(id)key;
- (id)fullyQualifiedKey:(id)key;
- (id)numberFromString:(id)string forKey:(id)key;
- (void)BOOLeanBackedByStringForKey:(id)key completionHandler:(id)handler;
- (void)addBagKey:(id)key defaultValue:(id)value;
- (void)doubleBackedByStringForKey:(id)key completionHandler:(id)handler;
- (void)integerBackedByStringForKey:(id)key completionHandler:(id)handler;
- (void)loadBaseDictionary:(id)dictionary;
- (void)stringForKey:(id)key withCompletionHandler:(id)handler;
- (void)valueForKey:(id)key bagValue:(id)value completionHandler:(id)handler;
@end

@implementation SHBagContract

- (SHBagContract)initWithBaseDictionaryKey:(id)key bag:(id)bag
{
  keyCopy = key;
  bagCopy = bag;
  v16.receiver = self;
  v16.super_class = SHBagContract;
  v8 = [(SHBagContract *)&v16 init];
  if (v8)
  {
    v9 = [keyCopy copy];
    baseDictionaryKey = v8->_baseDictionaryKey;
    v8->_baseDictionaryKey = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mutableDefaultValues = v8->_mutableDefaultValues;
    v8->_mutableDefaultValues = v11;

    v13 = objc_alloc_init(MEMORY[0x277CCABB8]);
    numberFormatter = v8->_numberFormatter;
    v8->_numberFormatter = v13;

    [(NSNumberFormatter *)v8->_numberFormatter setNumberStyle:1];
    objc_storeStrong(&v8->_bag, bag);
  }

  return v8;
}

- (SHBagContract)initWithBaseDictionaryKey:(id)key profile:(id)profile profileVersion:(id)version
{
  v8 = MEMORY[0x277CEE4D0];
  versionCopy = version;
  profileCopy = profile;
  keyCopy = key;
  [v8 setSuppressEngagement:1];
  v12 = [MEMORY[0x277CEE3F8] bagForProfile:profileCopy profileVersion:versionCopy];

  v13 = [(SHBagContract *)self initWithBaseDictionaryKey:keyCopy bag:v12];
  return v13;
}

- (void)loadBaseDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(SHBagContract *)self bag];
  baseDictionaryKey = [(SHBagContract *)self baseDictionaryKey];
  v7 = [v5 dictionaryForKey:baseDictionaryKey];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __36__SHBagContract_loadBaseDictionary___block_invoke;
  v9[3] = &unk_2788FAF88;
  v10 = dictionaryCopy;
  v8 = dictionaryCopy;
  [v7 valueWithCompletion:v9];
}

- (id)fullyQualifiedKey:(id)key
{
  v4 = MEMORY[0x277CCACA8];
  keyCopy = key;
  baseDictionaryKey = [(SHBagContract *)self baseDictionaryKey];
  keyCopy = [v4 stringWithFormat:@"%@/%@", baseDictionaryKey, keyCopy];

  return keyCopy;
}

- (NSDictionary)defaultValues
{
  v23 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [(SHBagContract *)self mutableDefaultValues];
  v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = MEMORY[0x277CCACA8];
        baseDictionaryKey = [(SHBagContract *)self baseDictionaryKey];
        v11 = [v9 stringWithFormat:@"%@/", baseDictionaryKey];
        v12 = [v8 stringByReplacingOccurrencesOfString:v11 withString:&stru_2845D1F60];

        mutableDefaultValues = [(SHBagContract *)self mutableDefaultValues];
        v14 = [mutableDefaultValues objectForKeyedSubscript:v8];
        [dictionary setObject:v14 forKeyedSubscript:v12];
      }

      v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  v15 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)addBagKey:(id)key defaultValue:(id)value
{
  valueCopy = value;
  v9 = [(SHBagContract *)self fullyQualifiedKey:key];
  mutableDefaultValues = [(SHBagContract *)self mutableDefaultValues];
  [mutableDefaultValues setValue:valueCopy forKey:v9];

  v8 = [(SHBagContract *)self bag];
  [v8 setDefaultValue:valueCopy forKey:v9];
}

- (id)defaultValueForKey:(id)key
{
  keyCopy = key;
  mutableDefaultValues = [(SHBagContract *)self mutableDefaultValues];
  v6 = [(SHBagContract *)self fullyQualifiedKey:keyCopy];

  v7 = [mutableDefaultValues objectForKeyedSubscript:v6];

  return v7;
}

- (void)integerBackedByStringForKey:(id)key completionHandler:(id)handler
{
  keyCopy = key;
  handlerCopy = handler;
  v8 = [(SHBagContract *)self bag];
  v9 = [(SHBagContract *)self fullyQualifiedKey:keyCopy];
  v10 = [v8 stringForKey:v9];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __63__SHBagContract_integerBackedByStringForKey_completionHandler___block_invoke;
  v16[3] = &unk_2788FAFB0;
  v16[4] = self;
  v17 = keyCopy;
  v11 = keyCopy;
  v12 = [v10 transformWithBlock:v16];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__SHBagContract_integerBackedByStringForKey_completionHandler___block_invoke_2;
  v14[3] = &unk_2788FAFD8;
  v15 = handlerCopy;
  v13 = handlerCopy;
  [(SHBagContract *)self valueForKey:v11 bagValue:v12 completionHandler:v14];
}

id __63__SHBagContract_integerBackedByStringForKey_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277CEE630];
  v3 = [*(a1 + 32) numberFromString:a2 forKey:*(a1 + 40)];
  v4 = [v2 promiseWithResult:v3];

  return v4;
}

void __63__SHBagContract_integerBackedByStringForKey_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  (*(v4 + 16))(v4, [a2 integerValue], v5);
}

- (void)doubleBackedByStringForKey:(id)key completionHandler:(id)handler
{
  keyCopy = key;
  handlerCopy = handler;
  v8 = [(SHBagContract *)self bag];
  v9 = [(SHBagContract *)self fullyQualifiedKey:keyCopy];
  v10 = [v8 stringForKey:v9];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __62__SHBagContract_doubleBackedByStringForKey_completionHandler___block_invoke;
  v16[3] = &unk_2788FAFB0;
  v16[4] = self;
  v17 = keyCopy;
  v11 = keyCopy;
  v12 = [v10 transformWithBlock:v16];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __62__SHBagContract_doubleBackedByStringForKey_completionHandler___block_invoke_2;
  v14[3] = &unk_2788FAFD8;
  v15 = handlerCopy;
  v13 = handlerCopy;
  [(SHBagContract *)self valueForKey:v11 bagValue:v12 completionHandler:v14];
}

id __62__SHBagContract_doubleBackedByStringForKey_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277CEE630];
  v3 = [*(a1 + 32) numberFromString:a2 forKey:*(a1 + 40)];
  v4 = [v2 promiseWithResult:v3];

  return v4;
}

void __62__SHBagContract_doubleBackedByStringForKey_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [a2 doubleValue];
  (*(v4 + 16))(v4, v5);
}

- (void)BOOLeanBackedByStringForKey:(id)key completionHandler:(id)handler
{
  handlerCopy = handler;
  keyCopy = key;
  v8 = [(SHBagContract *)self bag];
  v9 = [(SHBagContract *)self fullyQualifiedKey:keyCopy];
  v10 = [v8 stringForKey:v9];
  v11 = [v10 transformWithBlock:&__block_literal_global];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__SHBagContract_BOOLeanBackedByStringForKey_completionHandler___block_invoke_2;
  v13[3] = &unk_2788FAFD8;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [(SHBagContract *)self valueForKey:keyCopy bagValue:v11 completionHandler:v13];
}

id __63__SHBagContract_BOOLeanBackedByStringForKey_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CEE630];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a2, "BOOLValue")}];
  v4 = [v2 promiseWithResult:v3];

  return v4;
}

void __63__SHBagContract_BOOLeanBackedByStringForKey_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  (*(v4 + 16))(v4, [a2 BOOLValue], v5);
}

- (void)stringForKey:(id)key withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  keyCopy = key;
  v8 = [(SHBagContract *)self bag];
  v9 = [(SHBagContract *)self fullyQualifiedKey:keyCopy];
  v10 = [v8 stringForKey:v9];

  [(SHBagContract *)self valueForKey:keyCopy bagValue:v10 completionHandler:handlerCopy];
}

- (void)valueForKey:(id)key bagValue:(id)value completionHandler:(id)handler
{
  v22 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  valueCopy = value;
  handlerCopy = handler;
  if ([valueCopy isLoaded])
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __56__SHBagContract_valueForKey_bagValue_completionHandler___block_invoke;
    v17[3] = &unk_2788FB020;
    v17[4] = self;
    v18 = keyCopy;
    v19 = handlerCopy;
    [valueCopy valueWithCompletion:v17];
  }

  else
  {
    v11 = shcore_log_object();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [(SHBagContract *)self fullyQualifiedKey:keyCopy];
      *buf = 138412290;
      v21 = v12;
      _os_log_impl(&dword_231025000, v11, OS_LOG_TYPE_ERROR, "%@ was not loaded when we tried to access it, attempting to return default...", buf, 0xCu);
    }

    v13 = [(SHBagContract *)self defaultValueForKey:keyCopy];
    if (!v13)
    {
      v14 = shcore_log_object();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = [(SHBagContract *)self fullyQualifiedKey:keyCopy];
        *buf = 138412290;
        v21 = v15;
        _os_log_impl(&dword_231025000, v14, OS_LOG_TYPE_ERROR, "NO DEFAULT SUPPLIED for %@", buf, 0xCu);
      }
    }

    (*(handlerCopy + 2))(handlerCopy, v13, 0);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __56__SHBagContract_valueForKey_bagValue_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (v7 && [*(a1 + 32) throwOnError])
    {
      v15 = MEMORY[0x277CBEAD8];
      v16 = *MEMORY[0x277CBE658];
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to fetch key %@ with error %@", *(a1 + 40), v8];
      v18 = [v15 exceptionWithName:v16 reason:v17 userInfo:0];
      v19 = v18;

      objc_exception_throw(v18);
    }

    v6 = [*(a1 + 32) defaultValueForKey:*(a1 + 40)];
    v9 = shcore_log_object();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      if (v10)
      {
        v11 = [*(a1 + 32) fullyQualifiedKey:*(a1 + 40)];
        *buf = 138412546;
        v21 = v11;
        v22 = 2112;
        v23 = v8;
        _os_log_impl(&dword_231025000, v9, OS_LOG_TYPE_ERROR, "Failed to fetch key %@ from bag with error %@, using default", buf, 0x16u);
      }

      v6;
      v12 = *(*(a1 + 48) + 16);
    }

    else
    {
      if (v10)
      {
        v13 = [*(a1 + 32) fullyQualifiedKey:*(a1 + 40)];
        *buf = 138412546;
        v21 = v13;
        v22 = 2112;
        v23 = v8;
        _os_log_impl(&dword_231025000, v9, OS_LOG_TYPE_ERROR, "Failed to fetch key %@ from bag with error %@, NO DEFAULT SUPPLIED", buf, 0x16u);
      }

      v12 = *(*(a1 + 48) + 16);
    }

    v12();
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)numberFromString:(id)string forKey:(id)key
{
  v18 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  keyCopy = key;
  numberFormatter = [(SHBagContract *)self numberFormatter];
  v9 = [numberFormatter numberFromString:stringCopy];

  if (v9)
  {
    v10 = v9;
    goto LABEL_10;
  }

  v10 = [(SHBagContract *)self defaultValueForKey:keyCopy];
  v11 = shcore_log_object();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
  if (v10)
  {
    if (v12)
    {
      v16 = 138412290;
      v17 = stringCopy;
      v13 = "Failed to convert string %@, to number using default";
LABEL_8:
      _os_log_impl(&dword_231025000, v11, OS_LOG_TYPE_ERROR, v13, &v16, 0xCu);
    }
  }

  else if (v12)
  {
    v16 = 138412290;
    v17 = stringCopy;
    v13 = "Failed to convert string %@, to number using default, NO DEFAULT SUPPLIED";
    goto LABEL_8;
  }

LABEL_10:
  v14 = *MEMORY[0x277D85DE8];

  return v10;
}

@end