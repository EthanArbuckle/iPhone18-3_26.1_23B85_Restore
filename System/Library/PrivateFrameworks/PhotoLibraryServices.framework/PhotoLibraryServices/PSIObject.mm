@interface PSIObject
- (PSIObject)initWithUUID:(id)d;
- (id)_initForCopy:(BOOL)copy;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)objectType;
- (void)addContentString:(id)string identifier:(id)identifier category:(signed __int16)category owningCategory:(signed __int16)owningCategory;
- (void)addSynonym:(id)synonym lookupIdentifier:(id)identifier category:(signed __int16)category originalContentString:(id)string;
- (void)clear;
- (void)enumerateSynonymsForOriginalContentString:(id)string orOriginalLookupIdentifier:(id)identifier handler:(id)handler;
- (void)reverse;
@end

@implementation PSIObject

- (unint64_t)objectType
{
  selfCopy = self;
  v3 = PLAbstractMethodException();
  objc_exception_throw(v3);
}

- (void)clear
{
  [(PSIObject *)self setUUID:0];
  [(NSArray *)self->_tokens removeAllObjects];
  synonymsByOriginalWord = self->_synonymsByOriginalWord;

  [(NSMutableDictionary *)synonymsByOriginalWord removeAllObjects];
}

- (void)reverse
{
  v3 = [(NSArray *)self->_tokens count];
  if (v3 >= 2)
  {
    v4 = v3 - 1;
    v5 = 1;
    do
    {
      CFArrayExchangeValuesAtIndices(self->_tokens, v5 - 1, v4--);
    }

    while (v5++ < v4);
  }
}

- (void)enumerateSynonymsForOriginalContentString:(id)string orOriginalLookupIdentifier:(id)identifier handler:(id)handler
{
  v39 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  handlerCopy = handler;
  v9 = [(NSMutableDictionary *)self->_synonymsByOriginalWord objectForKey:string];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v34;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v33 + 1) + 8 * i);
        synonym = [v14 synonym];
        category = [v14 category];
        identifier = [v14 identifier];
        handlerCopy[2](handlerCopy, synonym, category, identifier);
      }

      v11 = [v9 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v11);
  }

  v18 = identifierCopy;
  if ([identifierCopy length])
  {
    v19 = [(NSMutableDictionary *)self->_synonymsByOriginalLookupIdentifier objectForKey:identifierCopy];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v20 = [v19 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v30;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v30 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v29 + 1) + 8 * j);
          synonym2 = [v24 synonym];
          category2 = [v24 category];
          identifier2 = [v24 identifier];
          handlerCopy[2](handlerCopy, synonym2, category2, identifier2);
        }

        v21 = [v19 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v21);
    }

    v18 = identifierCopy;
  }
}

- (void)addSynonym:(id)synonym lookupIdentifier:(id)identifier category:(signed __int16)category originalContentString:(id)string
{
  categoryCopy = category;
  v26 = *MEMORY[0x1E69E9840];
  synonymCopy = synonym;
  identifierCopy = identifier;
  stringCopy = string;
  if (categoryCopy)
  {
    if ([synonymCopy length] && objc_msgSend(stringCopy, "length"))
    {
      v13 = [(NSMutableDictionary *)self->_synonymsByOriginalWord objectForKey:stringCopy];
      if (!v13)
      {
        v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
        synonymsByOriginalWord = self->_synonymsByOriginalWord;
        v15 = v13;
        v16 = stringCopy;
LABEL_10:
        [(NSMutableDictionary *)synonymsByOriginalWord setObject:v15 forKey:v16];
        goto LABEL_11;
      }

      goto LABEL_11;
    }

    if ([synonymCopy length] && objc_msgSend(identifierCopy, "length"))
    {
      v13 = [(NSMutableDictionary *)self->_synonymsByOriginalLookupIdentifier objectForKey:identifierCopy];
      if (!v13)
      {
        v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
        synonymsByOriginalWord = self->_synonymsByOriginalLookupIdentifier;
        v15 = v13;
        v16 = identifierCopy;
        goto LABEL_10;
      }

LABEL_11:
      v17 = [[PSISynonymRecord alloc] initWithSynonym:synonymCopy category:categoryCopy identifier:identifierCopy];
      [v13 addObject:v17];
    }
  }

  else
  {
    v18 = PLSearchBackendModelTranslationGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19[0] = 67109890;
      v19[1] = 0;
      v20 = 2112;
      v21 = synonymCopy;
      v22 = 2112;
      v23 = identifierCopy;
      v24 = 2112;
      v25 = stringCopy;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEBUG, "Invalid category (%hd) for synonym: %@, identifier: %@, originalContentString: %@", v19, 0x26u);
    }
  }
}

- (void)addContentString:(id)string identifier:(id)identifier category:(signed __int16)category owningCategory:(signed __int16)owningCategory
{
  owningCategoryCopy = owningCategory;
  categoryCopy = category;
  v21 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  identifierCopy = identifier;
  if (categoryCopy)
  {
    if ([stringCopy length] || objc_msgSend(identifierCopy, "length"))
    {
      v12 = [[PSIIndexToken alloc] initWithText:stringCopy identifier:identifierCopy category:categoryCopy owningCategory:owningCategoryCopy];
      [(NSArray *)self->_tokens addObject:v12];
    }
  }

  else
  {
    v13 = PLSearchBackendModelTranslationGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14[0] = 67109890;
      v14[1] = 0;
      v15 = 2112;
      v16 = stringCopy;
      v17 = 2112;
      v18 = identifierCopy;
      v19 = 1024;
      v20 = owningCategoryCopy;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEBUG, "Invalid category (%hd) for contentString: %@, identifier: %@, owningCategory: %hd", v14, 0x22u);
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_alloc(objc_opt_class()) _initForCopy:1];
  v5 = [(NSString *)self->_uuid copy];
  v6 = v4[3];
  v4[3] = v5;

  v7 = [(NSArray *)self->_tokens mutableCopy];
  v8 = v4[4];
  v4[4] = v7;

  v9 = [(NSMutableDictionary *)self->_synonymsByOriginalWord mutableCopy];
  v10 = v4[1];
  v4[1] = v9;

  v11 = [(NSMutableDictionary *)self->_synonymsByOriginalLookupIdentifier mutableCopy];
  v12 = v4[2];
  v4[2] = v11;

  return v4;
}

- (PSIObject)initWithUUID:(id)d
{
  dCopy = d;
  v5 = [(PSIObject *)self _initForCopy:0];
  if (v5)
  {
    v6 = [dCopy copy];
    uuid = v5->_uuid;
    v5->_uuid = v6;
  }

  return v5;
}

- (id)_initForCopy:(BOOL)copy
{
  v12.receiver = self;
  v12.super_class = PSIObject;
  v4 = [(PSIObject *)&v12 init];
  if (v4 && !copy)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    tokens = v4->_tokens;
    v4->_tokens = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    synonymsByOriginalWord = v4->_synonymsByOriginalWord;
    v4->_synonymsByOriginalWord = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    synonymsByOriginalLookupIdentifier = v4->_synonymsByOriginalLookupIdentifier;
    v4->_synonymsByOriginalLookupIdentifier = v9;
  }

  return v4;
}

@end