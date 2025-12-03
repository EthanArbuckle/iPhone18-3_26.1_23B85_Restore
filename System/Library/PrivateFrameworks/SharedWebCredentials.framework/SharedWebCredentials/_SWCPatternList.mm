@interface _SWCPatternList
+ (id)patternListWithArray:(id)array;
+ (id)patternListWithDetailsDictionary:(id)dictionary defaults:(id)defaults;
- (BOOL)isEqual:(id)equal;
- (_SWCPatternList)initWithCoder:(id)coder;
- (unint64_t)count;
- (unint64_t)evaluateWithURLComponents:(id)components substitutionVariables:(id)variables auditToken:(id *)token matchingPattern:(id *)pattern index:(unint64_t *)index;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)enumeratePatternsWithBlock:(id)block;
@end

@implementation _SWCPatternList

+ (id)patternListWithDetailsDictionary:(id)dictionary defaults:(id)defaults
{
  v36 = *MEMORY[0x277D85DE8];
  defaultsCopy = defaults;
  v6 = objc_autoreleasePoolPush();
  if ((_NSIsNSDictionary() & 1) == 0)
  {
    goto LABEL_28;
  }

  v7 = [dictionary objectForKeyedSubscript:@"defaults"];
  if (_NSIsNSDictionary())
  {
    if ([defaultsCopy count])
    {
      v8 = [defaultsCopy mutableCopy];
      [v8 addEntriesFromDictionary:v7];
    }

    else
    {
      v8 = v7;
    }

    defaultsCopy = v8;
  }

  v9 = [dictionary objectForKeyedSubscript:@"components"];
  if (_NSIsNSArray())
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB40]);
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v12)
    {
      v13 = *v31;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = [[_SWCPattern alloc] initWithDictionary:*(*(&v30 + 1) + 8 * i) defaults:defaultsCopy];
          [v10 addObject:v15];
        }

        v12 = [v11 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v16 = [dictionary objectForKeyedSubscript:@"paths"];
    if ((_NSIsNSArray() & 1) == 0)
    {

      goto LABEL_28;
    }

    v10 = objc_alloc_init(MEMORY[0x277CBEB40]);
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = v16;
    v17 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:{16, v16}];
    if (v17)
    {
      v18 = *v27;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v27 != v18)
          {
            objc_enumerationMutation(v11);
          }

          v20 = [[_SWCPattern alloc] initWithPathPattern:*(*(&v26 + 1) + 8 * j) defaults:defaultsCopy];
          [v10 addObject:v20];
        }

        v17 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v17);
    }
  }

  if (v10)
  {
    array = [v10 array];
    v22 = [self patternListWithArray:array];

    goto LABEL_29;
  }

LABEL_28:
  v22 = 0;
LABEL_29:
  objc_autoreleasePoolPop(v6);

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)patternListWithArray:(id)array
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  arrayCopy = array;
  v8 = [arrayCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(arrayCopy);
        }

        storage = [*(*(&v16 + 1) + 8 * i) storage];
        [v6 appendBytes:storage length:SWCPatternStorage::getSize(storage)];
      }

      v8 = [arrayCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  if (qword_280B217E0 != -1)
  {
    dispatch_once(&qword_280B217E0, &__block_literal_global);
  }

  [v6 appendBytes:&_MergedGlobals length:SWCPatternStorage::getSize(&_MergedGlobals)];
  Instance = class_createInstance(self, [v6 length]);
  if (!Instance)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SWCPattern.mm" lineNumber:489 description:{@"Failed to allocate pattern list object with %lu extra bytes.", objc_msgSend(v6, "length")}];
  }

  [v6 getBytes:Instance + 8 range:{0, objc_msgSend(v6, "length")}];

  v13 = *MEMORY[0x277D85DE8];

  return Instance;
}

- (unint64_t)count
{
  storage = self->_storage;
  if ((~*self->_storage & 0x18) == 0)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    ++v3;
    storage = (storage + SWCPatternStorage::getSize(storage));
  }

  while ((~*storage & 0x18) != 0);
  return v3;
}

- (void)enumeratePatternsWithBlock:(id)block
{
  v5 = [[_SWCPattern alloc] _initWithPatternStorageNoCopy:0 freeWhenDone:0];
  v6 = 0;
  storage = self->_storage;
  v9 = 0;
  do
  {
    if ((~*storage & 0x18) == 0)
    {
      break;
    }

    v8 = objc_autoreleasePoolPush();
    [v5 setStorage:storage];
    (*(block + 2))(block, v5, v6, &v9);
    objc_autoreleasePoolPop(v8);
    ++v6;
    storage = (storage + SWCPatternStorage::getSize(storage));
  }

  while (v9 != 1);
}

- (unint64_t)evaluateWithURLComponents:(id)components substitutionVariables:(id)variables auditToken:(id *)token matchingPattern:(id *)pattern index:(unint64_t *)index
{
  v18[0] = 0;
  v19 = 0;
  v20 = 0;
  variablesCopy = variables;
  v22 = 0;
  memset(v23, 0, sizeof(v23));
  v24 = 1065353216;
  v25 = 0;
  ++_SWCDiagnosticStorage;
  v13 = self->_storage[0];
  storage = self->_storage;
  if ((~*&v13 & 0x18) != 0)
  {
    v14 = 0;
    while (1)
    {
      v15 = SWCPatternStorage::evaluate(storage, components, v18, token);
      if (v15)
      {
        break;
      }

      ++v14;
      storage = (storage + SWCPatternStorage::getSize(storage));
      if ((~*storage & 0x18) == 0)
      {
        goto LABEL_5;
      }
    }

    if (pattern)
    {
      v16 = [[_SWCPattern alloc] _initWithPatternStorageNoCopy:storage freeWhenDone:0];
      goto LABEL_9;
    }
  }

  else
  {
LABEL_5:
    v16 = 0;
    v15 = 0;
    v14 = 0x7FFFFFFFFFFFFFFFLL;
    if (pattern)
    {
LABEL_9:
      *pattern = v16;
    }
  }

  if (index)
  {
    *index = v14;
  }

  std::__hash_table<std::__hash_value_type<std::string_view,SWCSubstitutionVariable const*>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,SWCSubstitutionVariable const*>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,SWCSubstitutionVariable const*>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,SWCSubstitutionVariable const*>>>::~__hash_table(v23);

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v6 = self->_storage[0];
  storage = self->_storage;
  v7 = (equal + 8);
  if ((~*&v6 & 0x18) != 0)
  {
    v8 = 0;
    v10 = storage;
    do
    {
      Size = SWCPatternStorage::getSize(v10);
      v8 += Size;
      v10 = (v10 + Size);
    }

    while ((~*v10 & 0x18) != 0);
  }

  else
  {
    v8 = 0;
  }

  if ((~*v7 & 0x18) != 0)
  {
    v12 = 0;
    v13 = v7;
    do
    {
      v14 = SWCPatternStorage::getSize(v13);
      v12 += v14;
      v13 = (v13 + v14);
    }

    while ((~*v13 & 0x18) != 0);
  }

  else
  {
    v12 = 0;
  }

  return v8 == v12 && memcmp(storage, v7, v8) == 0;
}

- (unint64_t)hash
{
  storage = self->_storage;
  if ((~*self->_storage & 0x18) == 0)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    Size = SWCPatternStorage::getSize(storage);
    v3 ^= std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](storage, Size);
    storage = (storage + Size);
  }

  while ((~*storage & 0x18) != 0);
  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = self->_storage[0];
  storage = self->_storage;
  if ((~*&v8 & 0x18) != 0)
  {
    do
    {
      v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:storage length:SWCPatternStorage::getSize(storage) freeWhenDone:0];
      if (v9)
      {
        [v6 addObject:v9];
      }

      storage = (storage + SWCPatternStorage::getSize(storage));
    }

    while ((~*storage & 0x18) != 0);
  }

  v10 = [MEMORY[0x277CCAC58] dataWithPropertyList:v6 format:200 options:0 error:0];
  if (v10)
  {
    [coder encodeObject:v10 forKey:@"patternData"];
  }

  objc_autoreleasePoolPop(v5);
}

- (_SWCPatternList)initWithCoder:(id)coder
{
  v44 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v4 = [coder swc_decodeObjectOfClass:objc_opt_class() forKey:@"patternData"];
  v32 = v4;
  if (!v4)
  {

    v22 = objc_alloc(MEMORY[0x277CCA9B8]);
    v38[0] = @"Line";
    v38[1] = @"Function";
    v39[0] = &unk_2877A72D0;
    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"-[_SWCPatternList initWithCoder:]", context}];
    v39[1] = v28;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
    v31 = [v22 initWithDomain:*MEMORY[0x277CCA050] code:4865 userInfo:?];
    [coder failWithError:?];
    v21 = 0;
LABEL_29:

    goto LABEL_30;
  }

  v37 = 0;
  v5 = [MEMORY[0x277CCAC58] propertyListWithData:v4 options:0 format:0 error:{&v37, context}];
  v28 = v37;
  v29 = v5;
  if (v5)
  {
    if (_NSIsNSArray())
    {
      v31 = [objc_alloc(MEMORY[0x277CBEB40]) initWithCapacity:{objc_msgSend(v5, "count")}];
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v6 = v5;
      v7 = [v6 countByEnumeratingWithState:&v33 objects:v42 count:16];
      if (!v7)
      {
        goto LABEL_24;
      }

      v8 = *v34;
      while (1)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v34 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v33 + 1) + 8 * i);
          if (_NSIsNSData())
          {
            v11 = [v10 length];
            v12 = v10;
            bytes = [v10 bytes];
            if (v11)
            {
              v14 = bytes;
              if (v11 + 4 < 0x401)
              {
                v15 = v43;
              }

              else
              {
                v15 = malloc_type_malloc(v11 + 4, 0x100004077774924uLL);
                if (!v15)
                {
                  continue;
                }
              }

              memcpy(v15, v14, v11);
              *(v15 + v11) = 0;
              Size = SWCPatternStorage::getSize(v15);
              if (v15 != v43)
              {
                free(v15);
              }

              v17 = Size == v11;
              v4 = v32;
              if (v17)
              {
                v18 = [[_SWCPattern alloc] _initWithPatternStorageNoCopy:v14 freeWhenDone:0];
                if (v18)
                {
                  [v31 addObject:v18];
                }
              }
            }
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v33 objects:v42 count:16];
        if (!v7)
        {
LABEL_24:

          v19 = objc_opt_class();
          array = [v31 array];
          v21 = [v19 patternListWithArray:array];
          goto LABEL_28;
        }
      }
    }

    v23 = objc_alloc(MEMORY[0x277CCA9B8]);
    v40[0] = @"Line";
    v40[1] = @"Function";
    v41[0] = &unk_2877A72B8;
    v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_SWCPatternList initWithCoder:]"];
    v41[1] = v31;
    array = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];
    self = [v23 initWithDomain:*MEMORY[0x277CCA050] code:4864 userInfo:array];
    [coder failWithError:?];
    v21 = 0;
LABEL_28:

    goto LABEL_29;
  }

  [coder failWithError:v28];
  v21 = 0;

LABEL_30:
  objc_autoreleasePoolPop(contexta);
  v24 = *MEMORY[0x277D85DE8];
  return v21;
}

@end