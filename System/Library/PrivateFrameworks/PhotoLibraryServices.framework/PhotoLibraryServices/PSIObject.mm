@interface PSIObject
- (PSIObject)initWithUUID:(id)a3;
- (id)_initForCopy:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)objectType;
- (void)addContentString:(id)a3 identifier:(id)a4 category:(signed __int16)a5 owningCategory:(signed __int16)a6;
- (void)addSynonym:(id)a3 lookupIdentifier:(id)a4 category:(signed __int16)a5 originalContentString:(id)a6;
- (void)clear;
- (void)enumerateSynonymsForOriginalContentString:(id)a3 orOriginalLookupIdentifier:(id)a4 handler:(id)a5;
- (void)reverse;
@end

@implementation PSIObject

- (unint64_t)objectType
{
  v2 = self;
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

- (void)enumerateSynonymsForOriginalContentString:(id)a3 orOriginalLookupIdentifier:(id)a4 handler:(id)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v28 = a4;
  v8 = a5;
  v9 = [(NSMutableDictionary *)self->_synonymsByOriginalWord objectForKey:a3];
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
        v15 = [v14 synonym];
        v16 = [v14 category];
        v17 = [v14 identifier];
        v8[2](v8, v15, v16, v17);
      }

      v11 = [v9 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v11);
  }

  v18 = v28;
  if ([v28 length])
  {
    v19 = [(NSMutableDictionary *)self->_synonymsByOriginalLookupIdentifier objectForKey:v28];
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
          v25 = [v24 synonym];
          v26 = [v24 category];
          v27 = [v24 identifier];
          v8[2](v8, v25, v26, v27);
        }

        v21 = [v19 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v21);
    }

    v18 = v28;
  }
}

- (void)addSynonym:(id)a3 lookupIdentifier:(id)a4 category:(signed __int16)a5 originalContentString:(id)a6
{
  v7 = a5;
  v26 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (v7)
  {
    if ([v10 length] && objc_msgSend(v12, "length"))
    {
      v13 = [(NSMutableDictionary *)self->_synonymsByOriginalWord objectForKey:v12];
      if (!v13)
      {
        v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
        synonymsByOriginalWord = self->_synonymsByOriginalWord;
        v15 = v13;
        v16 = v12;
LABEL_10:
        [(NSMutableDictionary *)synonymsByOriginalWord setObject:v15 forKey:v16];
        goto LABEL_11;
      }

      goto LABEL_11;
    }

    if ([v10 length] && objc_msgSend(v11, "length"))
    {
      v13 = [(NSMutableDictionary *)self->_synonymsByOriginalLookupIdentifier objectForKey:v11];
      if (!v13)
      {
        v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
        synonymsByOriginalWord = self->_synonymsByOriginalLookupIdentifier;
        v15 = v13;
        v16 = v11;
        goto LABEL_10;
      }

LABEL_11:
      v17 = [[PSISynonymRecord alloc] initWithSynonym:v10 category:v7 identifier:v11];
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
      v21 = v10;
      v22 = 2112;
      v23 = v11;
      v24 = 2112;
      v25 = v12;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEBUG, "Invalid category (%hd) for synonym: %@, identifier: %@, originalContentString: %@", v19, 0x26u);
    }
  }
}

- (void)addContentString:(id)a3 identifier:(id)a4 category:(signed __int16)a5 owningCategory:(signed __int16)a6
{
  v6 = a6;
  v7 = a5;
  v21 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  if (v7)
  {
    if ([v10 length] || objc_msgSend(v11, "length"))
    {
      v12 = [[PSIIndexToken alloc] initWithText:v10 identifier:v11 category:v7 owningCategory:v6];
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
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      v19 = 1024;
      v20 = v6;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEBUG, "Invalid category (%hd) for contentString: %@, identifier: %@, owningCategory: %hd", v14, 0x22u);
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
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

- (PSIObject)initWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(PSIObject *)self _initForCopy:0];
  if (v5)
  {
    v6 = [v4 copy];
    uuid = v5->_uuid;
    v5->_uuid = v6;
  }

  return v5;
}

- (id)_initForCopy:(BOOL)a3
{
  v12.receiver = self;
  v12.super_class = PSIObject;
  v4 = [(PSIObject *)&v12 init];
  if (v4 && !a3)
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