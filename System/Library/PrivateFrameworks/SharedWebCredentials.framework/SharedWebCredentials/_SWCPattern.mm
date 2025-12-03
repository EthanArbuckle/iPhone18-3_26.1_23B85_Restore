@interface _SWCPattern
+ (id)_debug:(BOOL)_debug descriptionOfStorage:(const SWCPatternStorage *)storage forObject:(id)object redacted:(BOOL)redacted;
+ (id)_normalizedURLPath:(id)path;
- (BOOL)isBlocking;
- (BOOL)isCaseSensitive;
- (BOOL)isEqual:(id)equal;
- (BOOL)isPercentEncoded;
- (NSString)requiredEntitlement;
- (_SWCPattern)initWithDictionary:(id)dictionary defaults:(id)defaults;
- (_SWCPattern)initWithPathPattern:(id)pattern defaults:(id)defaults;
- (id)_initWithPatternStorageNoCopy:(const SWCPatternStorage *)copy freeWhenDone:(BOOL)done;
- (id)debugDescription;
- (id)description;
- (id)redactedDescription;
- (unint64_t)evaluateWithURLComponents:(id)components substitutionVariables:(id)variables auditToken:(id *)token;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation _SWCPattern

- (_SWCPattern)initWithDictionary:(id)dictionary defaults:(id)defaults
{
  v52 = *MEMORY[0x277D85DE8];
  v7 = objc_autoreleasePoolPush();
  v8 = objc_alloc_init(MEMORY[0x277CBEB28]);
  if (!_NSIsNSDictionary())
  {
    v11 = 0;
    goto LABEL_65;
  }

  v9 = [dictionary objectForKeyedSubscript:@"/"];
  if (!v9)
  {
    v9 = [defaults objectForKeyedSubscript:@"/"];
    if (!v9)
    {
      v10 = 0;
      goto LABEL_10;
    }
  }

  if (!_NSIsNSString())
  {
    v11 = 0;
    v10 = v9;
    goto LABEL_11;
  }

  v10 = [_SWCPattern _normalizedURLPath:v9];

  SWCGetFastUTF8String<1024ul>(&v48, v10, v51);
  if (v50 != 1)
  {
LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  [v8 appendBytes:v48 length:v49];
  [v8 appendBytes:"" length:1];
  v11 = 2;
LABEL_11:

  v12 = [dictionary objectForKeyedSubscript:@"#"];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [defaults objectForKeyedSubscript:@"#"];
  }

  v15 = v14;

  if (v15)
  {
    if (_NSIsNSString())
    {
      SWCGetFastUTF8String<1024ul>(&v48, v15, v51);
      if (v50 == 1)
      {
        [v8 appendBytes:v48 length:v49];
        [v8 appendBytes:"" length:1];
        v11 |= 4u;
      }
    }
  }

  v16 = [dictionary objectForKeyedSubscript:@"?"];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = [defaults objectForKeyedSubscript:@"?"];
  }

  v19 = v18;

  if (v19)
  {
    if (_NSIsNSString())
    {
      SWCGetFastUTF8String<1024ul>(&v48, v19, v51);
      if (v50 == 1)
      {
        [v8 appendBytes:v48 length:v49];
        [v8 appendBytes:"" length:1];
        v11 |= 8u;
      }
    }

    else if (_NSIsNSDictionary())
    {
      v20 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v19 options:8 error:0];
      v21 = v20;
      if (v20)
      {
        v22 = [v20 subdataWithRange:{1, objc_msgSend(v20, "length") - 2}];

        [v8 appendData:v22];
        [v8 appendBytes:"" length:1];
        v11 |= 0x10u;
      }

      else
      {
        v22 = 0;
      }
    }
  }

  v23 = [dictionary objectForKeyedSubscript:@"requiredEntitlement"];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = [defaults objectForKeyedSubscript:@"requiredEntitlement"];
  }

  v26 = v25;

  if (v26)
  {
    if (_NSIsNSString())
    {
      SWCGetFastUTF8String<1024ul>(&v48, v26, v51);
      if (v50 == 1)
      {
        [v8 appendBytes:v48 length:v49];
        [v8 appendBytes:"" length:1];
        v11 |= 0x80u;
      }
    }
  }

  v27 = [dictionary objectForKeyedSubscript:@"exclude"];
  v28 = v27;
  if (v27)
  {
    v29 = v27;
  }

  else
  {
    v29 = [defaults objectForKeyedSubscript:@"exclude"];
  }

  v30 = v29;

  if (v30)
  {
    if (objc_opt_respondsToSelector())
    {
      bOOLValue = [v30 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    v11 = v11 & 0xFE | bOOLValue;
  }

  v32 = [dictionary objectForKeyedSubscript:@"caseSensitive"];
  v33 = v32;
  if (v32)
  {
    v34 = v32;
  }

  else
  {
    v34 = [defaults objectForKeyedSubscript:@"caseSensitive"];
  }

  v35 = v34;

  if (v35)
  {
    if (objc_opt_respondsToSelector())
    {
      if ([v35 BOOLValue])
      {
        v36 = 0;
      }

      else
      {
        v36 = 32;
      }
    }

    else
    {
      v36 = 32;
    }

    v11 = v36 | v11 & 0xDF;
  }

  v37 = [dictionary objectForKeyedSubscript:@"percentEncoded"];
  v38 = v37;
  if (v37)
  {
    v39 = v37;
  }

  else
  {
    v39 = [defaults objectForKeyedSubscript:@"percentEncoded"];
  }

  v40 = v39;

  if (v40)
  {
    if (objc_opt_respondsToSelector())
    {
      if ([v40 BOOLValue])
      {
        v41 = 0;
      }

      else
      {
        v41 = 64;
      }
    }

    else
    {
      v41 = 64;
    }

    v11 = v41 | v11 & 0xBF;
  }

LABEL_65:
  v42 = [v8 length];
  v43 = malloc_type_malloc(v42 + 1, 0x100004077774924uLL);
  v44 = v43;
  if (v43)
  {
    *v43 = v11;
    v45 = v8;
    memcpy(v44 + 1, [v8 bytes], v42);

    objc_autoreleasePoolPop(v7);
    result = [(_SWCPattern *)self _initWithPatternStorageNoCopy:v44 freeWhenDone:1];
  }

  else
  {

    objc_autoreleasePoolPop(v7);
    result = 0;
  }

  v47 = *MEMORY[0x277D85DE8];
  return result;
}

- (_SWCPattern)initWithPathPattern:(id)pattern defaults:(id)defaults
{
  patternCopy = pattern;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (_NSIsNSString())
  {
    uppercaseString = [patternCopy uppercaseString];
    v9 = [uppercaseString hasPrefix:@"NOT "];

    if (v9)
    {
      [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"exclude"];
      [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"caseSensitive"];
      v10 = [patternCopy substringFromIndex:{objc_msgSend(@"NOT ", "length")}];

      patternCopy = v10;
    }

    [v7 setObject:patternCopy forKeyedSubscript:@"/"];
  }

  v11 = [(_SWCPattern *)self initWithDictionary:v7 defaults:defaults];

  return v11;
}

- (void)dealloc
{
  if (self->_freeWhenDone)
  {
    free(self->_storage);
  }

  v3.receiver = self;
  v3.super_class = _SWCPattern;
  [(_SWCPattern *)&v3 dealloc];
}

- (BOOL)isBlocking
{
  storage = [(_SWCPattern *)self storage];
  if (storage)
  {
    v3 = *storage;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (BOOL)isCaseSensitive
{
  storage = [(_SWCPattern *)self storage];
  if (storage)
  {
    LOBYTE(storage) = (*storage & 0x20) == 0;
  }

  return storage;
}

- (BOOL)isPercentEncoded
{
  storage = [(_SWCPattern *)self storage];
  if (storage)
  {
    LOBYTE(storage) = (*storage & 0x40) == 0;
  }

  return storage;
}

- (NSString)requiredEntitlement
{
  storage = [(_SWCPattern *)self storage];
  if (storage)
  {
    cStrings = storage->cStrings;
    v4 = *storage;
    if ((v4 & 2) != 0)
    {
      cStrings += strlen(storage->cStrings) + 1;
    }

    if ((v4 & 4) != 0)
    {
      cStrings += strlen(cStrings) + 1;
    }

    if (((v4 >> 3) & 3) - 1 <= 1)
    {
      cStrings += strlen(cStrings) + 1;
    }

    if ((v4 & 0x80) != 0)
    {
      v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:cStrings length:strlen(cStrings) encoding:4 freeWhenDone:0];
    }

    else
    {
      v5 = 0;
    }

    v6 = [v5 copy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)evaluateWithURLComponents:(id)components substitutionVariables:(id)variables auditToken:(id *)token
{
  storage = [(_SWCPattern *)self storage];
  if (!storage)
  {
    return 200;
  }

  v9 = storage;
  v12[0] = 0;
  v13 = 0;
  v14 = 0;
  variablesCopy = variables;
  v16 = 0;
  memset(v17, 0, sizeof(v17));
  v18 = 1065353216;
  v19 = 0;
  ++_SWCDiagnosticStorage;
  v10 = SWCPatternStorage::evaluate(v9, components, v12, token);
  std::__hash_table<std::__hash_value_type<std::string_view,SWCSubstitutionVariable const*>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,SWCSubstitutionVariable const*>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,SWCSubstitutionVariable const*>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,SWCSubstitutionVariable const*>>>::~__hash_table(v17);

  return v10;
}

- (id)_initWithPatternStorageNoCopy:(const SWCPatternStorage *)copy freeWhenDone:(BOOL)done
{
  v7.receiver = self;
  v7.super_class = _SWCPattern;
  result = [(_SWCPattern *)&v7 init];
  if (result)
  {
    *(result + 2) = copy;
    *(result + 8) = done;
  }

  return result;
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

  storage = [(_SWCPattern *)self storage];
  storage2 = [equal storage];
  v7 = (storage | storage2) == 0;
  if (storage)
  {
    v8 = storage2;
    if (storage2)
    {
      Size = SWCPatternStorage::getSize(storage);
      if (Size == SWCPatternStorage::getSize(v8))
      {
        return memcmp(storage, v8, Size) == 0;
      }
    }
  }

  return v7;
}

- (unint64_t)hash
{
  result = [(_SWCPattern *)self storage];
  if (result)
  {
    v3 = result;
    Size = SWCPatternStorage::getSize(result);

    return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v3, Size);
  }

  return result;
}

- (id)description
{
  v2 = [_SWCPattern _debug:0 descriptionOfStorage:[(_SWCPattern *)self storage] forObject:self redacted:0];

  return v2;
}

- (id)debugDescription
{
  v2 = [_SWCPattern _debug:1 descriptionOfStorage:[(_SWCPattern *)self storage] forObject:self redacted:0];

  return v2;
}

- (id)redactedDescription
{
  v2 = [_SWCPattern _debug:0 descriptionOfStorage:[(_SWCPattern *)self storage] forObject:self redacted:1];

  return v2;
}

+ (id)_normalizedURLPath:(id)path
{
  v6 = [path mutableCopy];
  if (!v6)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SWCPattern.mm" lineNumber:979 description:{@"Invalid parameter not satisfying: %@", @"result != nil"}];
  }

  v7 = [path length];
  if (!v7)
  {
    [v6 setString:@"/"];
    return v6;
  }

  if (v7 != 1)
  {
    while (1)
    {
      v9 = [v6 rangeOfString:@"**"];
      if (v9 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      [v6 replaceCharactersInRange:v9 withString:{v8, @"*"}];
    }

    while (1)
    {
      v11 = [v6 rangeOfString:@"//"];
      if (v11 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      [v6 replaceCharactersInRange:v11 withString:{v10, @"/"}];
    }

    if ([v6 length] < 2)
    {
      v14 = 0;
    }

    else
    {
      v12 = [v6 hasPrefix:@"*"];
      v13 = v12;
      if (v12)
      {
        [v6 deleteCharactersInRange:{0, 1}];
      }

      v14 = [v6 hasSuffix:@"*"];
      if (v14)
      {
        [v6 deleteCharactersInRange:{objc_msgSend(v6, "length") - 1, 1}];
      }

      if (v13)
      {
        v15 = 1;
        if (v14)
        {
LABEL_24:
          if (v15)
          {
            [v6 insertString:@"*" atIndex:0];
          }

          if (v14)
          {
            [v6 appendString:@"*"];
          }

          return v6;
        }

LABEL_22:
        if (([v6 hasSuffix:@"/"] & 1) == 0)
        {
          [v6 appendString:@"/"];
        }

        goto LABEL_24;
      }
    }

    if (([v6 hasPrefix:@"/"] & 1) == 0)
    {
      [v6 insertString:@"/" atIndex:0];
    }

    v15 = 0;
    if (v14)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  return v6;
}

+ (id)_debug:(BOOL)_debug descriptionOfStorage:(const SWCPatternStorage *)storage forObject:(id)object redacted:(BOOL)redacted
{
  redactedCopy = redacted;
  _debugCopy = _debug;
  v10 = objc_autoreleasePoolPush();
  if (!storage)
  {
    v16 = @"(null)";
    goto LABEL_40;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  cStrings = storage->cStrings;
  v14 = *storage;
  LOBYTE(v45) = 0;
  v47 = 0;
  if ((v14 & 2) != 0)
  {
    v45 = storage->cStrings;
    v46 = strlen(storage->cStrings);
    v47 = 1;
    cStrings += v46 + 1;
  }

  LOBYTE(v42) = 0;
  v44 = 0;
  if ((v14 & 4) != 0)
  {
    v42 = cStrings;
    v43 = strlen(cStrings);
    v44 = 1;
    cStrings += v43 + 1;
  }

  LOBYTE(v39) = 0;
  v41 = 0;
  v15 = ((v14 >> 3) & 3) - 1;
  if (v15 <= 1)
  {
    v39 = cStrings;
    v40 = strlen(cStrings);
    v41 = 1;
    cStrings += v40 + 1;
  }

  LOBYTE(v37[0]) = 0;
  v38 = 0;
  if ((v14 & 0x80) == 0)
  {
    if ((v14 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_14:
    v17 = SWCGetNSStringFromStringViewNoCopy(&v45);
    [v12 setObject:v17 forKeyedSubscript:@"/"];

    if ((v14 & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v37[0] = cStrings;
  v37[1] = strlen(cStrings);
  v38 = 1;
  if ((v14 & 2) != 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  if ((v14 & 4) != 0)
  {
LABEL_15:
    v18 = SWCGetNSStringFromStringViewNoCopy(&v42);
    [v12 setObject:v18 forKeyedSubscript:@"#"];
  }

LABEL_16:
  if (v15 <= 1)
  {
    v19 = (*storage >> 3) & 3;
    if (v19 == 1)
    {
      v20 = SWCGetNSStringFromStringViewNoCopy(&v39);
      [v12 setObject:v20 forKeyedSubscript:@"?"];
LABEL_22:

      goto LABEL_23;
    }

    if (v19 == 2)
    {
      v20 = SWCPatternStorage::_ReconstituteQueryJSON(&v39);
      if (v20)
      {
        [v12 setObject:v20 forKeyedSubscript:@"?"];
      }

      goto LABEL_22;
    }
  }

LABEL_23:
  if ((v14 & 0x80) != 0)
  {
    v21 = SWCGetNSStringFromStringViewNoCopy(v37);
    [v12 setObject:v21 forKeyedSubscript:@"requiredEntitlement"];
  }

  v22 = *storage;
  if (*storage)
  {
    [v12 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"exclude"];
    v22 = *storage;
  }

  if ((v22 & 0x20) != 0)
  {
    [v12 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"caseSensitive"];
    v22 = *storage;
  }

  if ((v22 & 0x40) != 0)
  {
    [v12 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"percentEncoded"];
  }

  v23 = [v12 copy];

  objc_autoreleasePoolPop(v11);
  if (redactedCopy)
  {
    v24 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v23, "count")}];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __71___SWCPattern_Private___debug_descriptionOfStorage_forObject_redacted___block_invoke;
    v35[3] = &unk_279BBDDD0;
    v25 = v24;
    v36 = v25;
    [v23 enumerateKeysAndObjectsUsingBlock:v35];
    v26 = v25;

    v23 = v26;
  }

  if (_debugCopy)
  {
    v27 = 11;
  }

  else
  {
    v27 = 10;
  }

  v28 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v23 options:v27 error:0];
  if (v28)
  {
    v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v28 encoding:4];
  }

  else
  {
    v16 = 0;
  }

LABEL_40:
  objc_autoreleasePoolPop(v10);
  v29 = objc_autoreleasePoolPush();
  if (!_debugCopy)
  {
LABEL_44:
    v31 = v16;
    v32 = v31;
    goto LABEL_45;
  }

  v30 = [(__CFString *)v16 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n  "];

  if (!object)
  {
    v16 = v30;
    goto LABEL_44;
  }

  v31 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<%@ %p> %@", objc_opt_class(), object, v30];
  v32 = v30;
LABEL_45:
  v33 = v31;
  objc_autoreleasePoolPop(v29);

  return v33;
}

@end