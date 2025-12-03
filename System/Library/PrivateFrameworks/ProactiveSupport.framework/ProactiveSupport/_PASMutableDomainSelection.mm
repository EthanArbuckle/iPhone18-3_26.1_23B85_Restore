@interface _PASMutableDomainSelection
- (BOOL)_addDomainsFrom:(id)from;
- (BOOL)_addDomainsFromOtherDictionary:(id)dictionary toOwnDictionary:(id)ownDictionary ownDictionaryIsPlaceholder:(BOOL)placeholder;
- (BOOL)addDomain:(id)domain;
- (BOOL)addDomainsFromSelection:(id)selection;
- (BOOL)containsDomain:(id)domain;
- (BOOL)isEqualToDomainSelection:(id)selection;
- (_PASMutableDomainSelection)init;
- (id)_initWithNonOverlappingDomainSet:(id)set;
- (id)allDomains;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_decrementCountAndMaybePruneItems:(id)items;
- (void)dealloc;
@end

@implementation _PASMutableDomainSelection

- (_PASMutableDomainSelection)init
{
  v6.receiver = self;
  v6.super_class = _PASMutableDomainSelection;
  v2 = [(_PASDomainSelection *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    domains = v2->_domains;
    v2->_domains = v3;

    v2->_count = 0;
    v2->_taintedByDeepDomain = 0;
  }

  return v2;
}

- (void)dealloc
{
  if (self->_taintedByDeepDomain)
  {
    [(_PASMutableDomainSelection *)self _decrementCountAndMaybePruneItems:self->_domains];
    if (self->_count)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_PASDomainSelection.m" lineNumber:309 description:{@"Invalid parameter not satisfying: %@", @"_count == 0"}];
    }
  }

  v5.receiver = self;
  v5.super_class = _PASMutableDomainSelection;
  [(_PASMutableDomainSelection *)&v5 dealloc];
}

- (void)_decrementCountAndMaybePruneItems:(id)items
{
  itemsCopy = items;
  count = self->_count;
  if (!count)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASDomainSelection.m" lineNumber:544 description:{@"Invalid parameter not satisfying: %@", @"beforeCount > 0"}];
  }

  v7 = objc_autoreleasePoolPush();
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{itemsCopy, 0}];
  objc_autoreleasePoolPop(v7);
  do
  {
    v9 = objc_autoreleasePoolPush();
    lastObject = [v8 lastObject];
    [v8 removeLastObject];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __64___PASMutableDomainSelection__decrementCountAndMaybePruneItems___block_invoke;
    v14[3] = &unk_1E77F21A8;
    v14[4] = self;
    v11 = v8;
    v15 = v11;
    [lastObject enumerateKeysAndObjectsUsingBlock:v14];
    if (self->_taintedByDeepDomain)
    {
      [lastObject removeAllObjects];
    }

    objc_autoreleasePoolPop(v9);
  }

  while ([v11 count]);
  if (self->_count > count)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_PASDomainSelection.m" lineNumber:564 description:{@"Invalid parameter not satisfying: %@", @"afterCount <= beforeCount"}];
  }
}

- (BOOL)isEqualToDomainSelection:(id)selection
{
  selectionCopy = selection;
  v5 = selectionCopy;
  if (selectionCopy)
  {
    count = self->_count;
    if (count == [selectionCopy count])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v5;
        allDomains = v7;
        if (!self->_taintedByDeepDomain && *(v7 + 24) != 1)
        {
          v9 = [(NSMutableDictionary *)self->_domains isEqual:*(v7 + 1)];
LABEL_10:

          goto LABEL_11;
        }
      }

      allDomains = [(_PASMutableDomainSelection *)self allDomains];
      allDomains2 = [v5 allDomains];
      v9 = [allDomains isEqual:allDomains2];

      goto LABEL_10;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_PASDomainSelection alloc];
  allDomains = [(_PASMutableDomainSelection *)self allDomains];
  v6 = [(_PASDomainSelection *)v4 _initWithNonOverlappingDomainSet:allDomains];

  return v6;
}

- (BOOL)addDomainsFromSelection:(id)selection
{
  v19 = *MEMORY[0x1E69E9840];
  selectionCopy = selection;
  if ([selectionCopy isEmpty])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) == 0 || (*(selectionCopy + 24))
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      allDomains = [selectionCopy allDomains];
      v8 = [allDomains countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        v9 = v8;
        v5 = 0;
        v10 = *v15;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(allDomains);
            }

            v5 |= [(_PASMutableDomainSelection *)self addDomain:*(*(&v14 + 1) + 8 * i)];
          }

          v9 = [allDomains countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v9);
      }

      else
      {
        LOBYTE(v5) = 0;
      }
    }

    else
    {
      v6 = objc_autoreleasePoolPush();
      LOBYTE(v5) = [(_PASMutableDomainSelection *)self _addDomainsFromOtherDictionary:*(selectionCopy + 1) toOwnDictionary:self->_domains ownDictionaryIsPlaceholder:1];
      objc_autoreleasePoolPop(v6);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5 & 1;
}

- (BOOL)_addDomainsFromOtherDictionary:(id)dictionary toOwnDictionary:(id)ownDictionary ownDictionaryIsPlaceholder:(BOOL)placeholder
{
  placeholderCopy = placeholder;
  dictionaryCopy = dictionary;
  ownDictionaryCopy = ownDictionary;
  if ([ownDictionaryCopy count] || placeholderCopy)
  {
    if ([dictionaryCopy count])
    {
      v16 = 0;
      v17 = &v16;
      v18 = 0x2020000000;
      v19 = 0;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __104___PASMutableDomainSelection__addDomainsFromOtherDictionary_toOwnDictionary_ownDictionaryIsPlaceholder___block_invoke;
      v12[3] = &unk_1E77F2180;
      selfCopy = self;
      v15 = &v16;
      v13 = ownDictionaryCopy;
      [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v12];
      v10 = *(v17 + 24);

      _Block_object_dispose(&v16, 8);
    }

    else
    {
      [(_PASMutableDomainSelection *)self _decrementCountAndMaybePruneItems:ownDictionaryCopy];
      [ownDictionaryCopy removeAllObjects];
      ++self->_count;
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

- (BOOL)_addDomainsFrom:(id)from
{
  v55 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v34 = 0;
  v3 = 1;
  while (1)
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v4 = fromCopy;
    v37 = [v4 countByEnumeratingWithState:&v50 objects:v54 count:16];
    if (!v37)
    {
      break;
    }

    v35 = *v51;
    v36 = 0x7FFFFFFFFFFFFFFFLL;
    obj = v4;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v51 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v50 + 1) + 8 * i);
        v7 = objc_autoreleasePoolPush();
        v8 = v6;
        v9 = objc_opt_self();

        if (v9)
        {
          v49 = 0;
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          *theString = 0u;
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          *buffer = 0u;
          Length = CFStringGetLength(v8);
          theString[0] = v8;
          *(&v47 + 1) = 0;
          *&v48 = Length;
          CharactersPtr = CFStringGetCharactersPtr(v8);
          CStringPtr = 0;
          theString[1] = CharactersPtr;
          if (!CharactersPtr)
          {
            CStringPtr = CFStringGetCStringPtr(v8, 0x600u);
          }

          *&v47 = CStringPtr;
          *(&v48 + 1) = 0;
          v49 = 0;
          if (Length >= 1)
          {
            v13 = 0;
            v14 = 0;
            v15 = 0;
            v16 = 64;
            v17 = 1;
            while (1)
            {
              v18 = v15 >= 4 ? 4 : v15;
              v19 = v48;
              if (v48 > v15)
              {
                break;
              }

LABEL_23:
              ++v15;
              --v13;
              ++v16;
              if (Length == v15)
              {
                goto LABEL_36;
              }
            }

            if (theString[1])
            {
              v20 = theString[1] + *(&v47 + 1);
              goto LABEL_18;
            }

            if (v47)
            {
              v21 = *(v47 + *(&v47 + 1) + v15);
            }

            else
            {
              if (v49 <= v15 || v14 > v15)
              {
                v23 = v18 + v13;
                v24 = v16 - v18;
                v25 = v15 - v18;
                v26 = v25 + 64;
                if (v25 + 64 >= v48)
                {
                  v26 = v48;
                }

                *(&v48 + 1) = v25;
                v49 = v26;
                if (v48 >= v24)
                {
                  v19 = v24;
                }

                v56.location = v25 + *(&v47 + 1);
                v56.length = v19 + v23;
                CFStringGetCharacters(theString[0], v56, buffer);
                v14 = *(&v48 + 1);
              }

              v20 = &buffer[-v14];
LABEL_18:
              v21 = v20[v15];
            }

            if (v21 == 46)
            {
              ++v17;
            }

            goto LABEL_23;
          }
        }

        v17 = 1;
LABEL_36:

        if (v17 == v3)
        {
          v34 |= [(_PASMutableDomainSelection *)self addDomain:v8];
        }

        else
        {
          v27 = v36;
          if (v17 >= v36)
          {
            v28 = v36;
          }

          else
          {
            v28 = v17;
          }

          if (v17 > v3)
          {
            v27 = v28;
          }

          v36 = v27;
        }

        objc_autoreleasePoolPop(v7);
      }

      v4 = obj;
      v37 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
    }

    while (v37);

    v3 = v36;
    if (v36 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_49;
    }
  }

LABEL_49:
  v29 = *MEMORY[0x1E69E9840];
  return v34 & 1;
}

- (BOOL)addDomain:(id)domain
{
  domainCopy = domain;
  selfCopy = self;
  v5 = self->_domains;
  v6 = [domainCopy length];
  v7 = objc_autoreleasePoolPush();
  v32 = domainCopy;
  v8 = [domainCopy rangeOfString:@"." options:2 range:{0, v6}];
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    v12 = v7;
    v13 = 0;
    v14 = 0;
    _pas_distilledString2 = 0;
    v16 = 0;
    v17 = v32;
    do
    {
      v18 = objc_autoreleasePoolPush();
      v19 = [v17 substringWithRange:{v13, v10 - v13}];
      objc_autoreleasePoolPop(v18);
      _pas_distilledString = [v19 _pas_distilledString];

      _pas_distilledString2 = _pas_distilledString;
      v21 = [(NSMutableDictionary *)v5 objectForKeyedSubscript:_pas_distilledString];

      if (v21)
      {
        if (![v21 count])
        {
          v28 = 0;
          v29 = v32;
          v7 = v12;
          goto LABEL_17;
        }
      }

      else
      {
        v21 = objc_opt_new();
        [(NSMutableDictionary *)v5 setObject:v21 forKeyedSubscript:_pas_distilledString];
      }

      v14 = v21;

      v13 = v10 + v11;
      v17 = v32;
      v6 = [v32 length] - (v10 + v11);
      ++v16;
      objc_autoreleasePoolPop(v12);
      v12 = objc_autoreleasePoolPush();
      v10 = [v32 rangeOfString:@"." options:2 range:{v10 + v11, v6}];
      v11 = v22;
      v5 = v14;
    }

    while (v22);
    if (v16 >= 0x65)
    {
      v23 = selfCopy;
      v29 = v32;
      selfCopy->_taintedByDeepDomain = 1;
      v5 = v14;
    }

    else
    {
      v5 = v14;
      v23 = selfCopy;
      v29 = v32;
    }

    v7 = v12;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    _pas_distilledString2 = 0;
    v23 = selfCopy;
    v29 = domainCopy;
  }

  v24 = _pas_distilledString2;
  v25 = objc_autoreleasePoolPush();
  v26 = [v29 substringWithRange:{v13, v6}];
  objc_autoreleasePoolPop(v25);
  _pas_distilledString2 = [v26 _pas_distilledString];

  v21 = [(NSMutableDictionary *)v5 objectForKeyedSubscript:_pas_distilledString2];

  if (v21)
  {
    if (![v21 count])
    {
      v28 = 0;
      goto LABEL_17;
    }

    [(_PASMutableDomainSelection *)v23 _decrementCountAndMaybePruneItems:v21];
  }

  v27 = objc_opt_new();
  [(NSMutableDictionary *)v5 setObject:v27 forKeyedSubscript:_pas_distilledString2];

  ++v23->_count;
  v28 = 1;
LABEL_17:
  objc_autoreleasePoolPop(v7);

  return v28;
}

- (id)allDomains
{
  v23[1] = *MEMORY[0x1E69E9840];
  if ([(NSMutableDictionary *)self->_domains count])
  {
    v18 = a2;
    v4 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:self->_count];
    v5 = [_PASTuple2 tupleWithFirst:self->_domains second:&stru_1F1B24B60];
    v23[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    v7 = [v6 mutableCopy];

    do
    {
      v8 = objc_autoreleasePoolPush();
      lastObject = [v7 lastObject];
      [v7 removeLastObject];
      first = [lastObject first];
      second = [lastObject second];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __40___PASMutableDomainSelection_allDomains__block_invoke;
      v19[3] = &unk_1E77F2158;
      v12 = v4;
      v20 = v12;
      v21 = second;
      v13 = v7;
      v22 = v13;
      v14 = second;
      [first enumerateKeysAndObjectsUsingBlock:v19];

      objc_autoreleasePoolPop(v8);
    }

    while ([v13 count]);
    if ([v12 count] != self->_count)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:v18 object:self file:@"_PASDomainSelection.m" lineNumber:367 description:{@"Invalid parameter not satisfying: %@", @"allDomainsSet.count == _count"}];
    }
  }

  else
  {
    v12 = [MEMORY[0x1E695DFD8] set];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v12;
}

- (BOOL)containsDomain:(id)domain
{
  domainCopy = domain;
  v5 = self->_domains;
  v6 = [domainCopy length];
  v7 = objc_autoreleasePoolPush();
  v8 = [domainCopy rangeOfString:@"." options:2 range:{0, v6}];
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    v12 = 0;
    v13 = 0;
    _pas_distilledString = 0;
    while (1)
    {
      v15 = _pas_distilledString;
      v16 = [domainCopy substringWithRange:{v12, v10 - v12}];
      _pas_distilledString = [v16 _pas_distilledString];

      v17 = [(NSMutableDictionary *)v5 objectForKeyedSubscript:_pas_distilledString];

      v18 = v17 != 0;
      if (!v17)
      {
        break;
      }

      if (![v17 count])
      {
        goto LABEL_11;
      }

      v13 = v17;

      v12 = v10 + v11;
      v6 = [domainCopy length] - (v10 + v11);
      objc_autoreleasePoolPop(v7);
      v7 = objc_autoreleasePoolPush();
      v10 = [domainCopy rangeOfString:@"." options:2 range:{v10 + v11, v6}];
      v11 = v19;
      v5 = v13;
      if (!v19)
      {

        v5 = v13;
        goto LABEL_8;
      }
    }
  }

  else
  {
    v13 = 0;
    v12 = 0;
LABEL_8:
    v20 = objc_autoreleasePoolPush();
    v21 = [domainCopy substringWithRange:{v12, v6}];
    objc_autoreleasePoolPop(v20);
    _pas_distilledString = [v21 _pas_distilledString];

    v17 = [(NSMutableDictionary *)v5 objectForKeyedSubscript:_pas_distilledString];

    if (v17 && ![v17 count])
    {
LABEL_11:
      v18 = 1;
    }

    else
    {
      v18 = 0;
    }
  }

  objc_autoreleasePoolPop(v7);

  return v18;
}

- (id)_initWithNonOverlappingDomainSet:(id)set
{
  setCopy = set;
  v6 = [(_PASMutableDomainSelection *)self init];
  if (v6)
  {
    v7 = [[_PASDomainSelection alloc] _initWithNonOverlappingDomainSet:setCopy];
    [(_PASMutableDomainSelection *)v6 addDomainsFromSelection:v7];

    v8 = [(_PASMutableDomainSelection *)v6 count];
    if (v8 != [setCopy count])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v6 file:@"_PASDomainSelection.m" lineNumber:298 description:@"-[_PASMutableDomainSelection _initWithNonOverlappingDomainSet:] was invoked with overlapping domains"];
    }
  }

  return v6;
}

@end