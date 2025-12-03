@interface _PASDomainSelection
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDomainSelection:(id)selection;
- (_PASDomainSelection)init;
- (_PASDomainSelection)initWithCoder:(id)coder;
- (_PASDomainSelection)initWithDomain:(id)domain;
- (_PASDomainSelection)initWithDomainsFromArray:(id)array;
- (_PASDomainSelection)initWithDomainsFromSet:(id)set;
- (id)_initWithNonOverlappingDomainSet:(id)set;
- (id)description;
- (id)globPatterns;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)count;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _PASDomainSelection

- (_PASDomainSelection)init
{
  v3.receiver = self;
  v3.super_class = _PASDomainSelection;
  return [(_PASDomainSelection *)&v3 init];
}

- (unint64_t)count
{
  if ([(_PASDomainSelection *)self isEmpty])
  {
    return 0;
  }

  allDomains = [(_PASDomainSelection *)self allDomains];
  v5 = [allDomains count];

  return v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = [(_PASDomainSelection *)self count];
  isEmpty = [(_PASDomainSelection *)self isEmpty];
  allDomains = [(_PASDomainSelection *)self allDomains];
  if (description__pasOnceToken6 != -1)
  {
    dispatch_once(&description__pasOnceToken6, &__block_literal_global_2527);
  }

  if (isEmpty)
  {
    v8 = &stru_1F1B24B60;
  }

  else
  {
    v8 = @": ";
  }

  v9 = [allDomains sortedArrayUsingDescriptors:description__pasExprOnceResult];
  v10 = [v9 _pas_componentsJoinedByString:{@", "}];
  v11 = [v3 initWithFormat:@"%@ (count=%tu%@%@)", v4, v5, v8, v10];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  allDomains = [(_PASDomainSelection *)self allDomains];
  [coderCopy encodeObject:allDomains forKey:@"d"];
}

- (_PASDomainSelection)initWithCoder:(id)coder
{
  v26 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc(MEMORY[0x1E695DFD8]);
  v7 = objc_opt_class();
  v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v5);
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"d"];

  if (!v9)
  {
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"_PASDomainSelectionErrorDomain" code:1 userInfo:0];
    [coderCopy failWithError:v20];

LABEL_16:
    selfCopy = 0;
    goto LABEL_14;
  }

  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    while (2)
    {
      v14 = 0;
      do
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * v14);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"_PASDomainSelectionErrorDomain" code:1 userInfo:0];
          [coderCopy failWithError:v17];

          selfCopy = 0;
          goto LABEL_13;
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  self = [(_PASDomainSelection *)self _initWithNonOverlappingDomainSet:v10];
  selfCopy = self;
LABEL_13:

LABEL_14:
  v18 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (BOOL)isEqualToDomainSelection:(id)selection
{
  if (selection)
  {
    return [selection isEmpty];
  }

  else
  {
    return 0;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(_PASDomainSelection *)self isEqualToDomainSelection:v5];
  }

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  [v4 addDomainsFromSelection:self];
  return v4;
}

- (id)globPatterns
{
  v63 = *MEMORY[0x1E69E9840];
  if ([(_PASDomainSelection *)self isEmpty])
  {
    v3 = MEMORY[0x1E695E0F0];
    goto LABEL_52;
  }

  allDomains = [(_PASDomainSelection *)self allDomains];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{2 * objc_msgSend(allDomains, "count")}];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = allDomains;
  v43 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
  if (!v43)
  {
    goto LABEL_51;
  }

  v5 = *v59;
  v40 = *v59;
  v41 = v3;
  do
  {
    for (i = 0; i != v43; ++i)
    {
      if (*v59 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v58 + 1) + 8 * i);
      context = objc_autoreleasePoolPush();
      v8 = v7;
      v9 = objc_opt_self();

      if (!v9)
      {
        goto LABEL_47;
      }

      v44 = i;
      v57 = 0;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      *theString = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      *buffer = 0u;
      Length = CFStringGetLength(v8);
      theString[0] = v8;
      *(&v55 + 1) = 0;
      *&v56 = Length;
      CharactersPtr = CFStringGetCharactersPtr(v8);
      CStringPtr = 0;
      theString[1] = CharactersPtr;
      if (!CharactersPtr)
      {
        CStringPtr = CFStringGetCStringPtr(v8, 0x600u);
      }

      *&v55 = CStringPtr;
      *(&v56 + 1) = 0;
      v57 = 0;
      if (Length < 1)
      {
        i = v44;
LABEL_47:

LABEL_48:
        [v3 addObject:v8];
        v37 = objc_autoreleasePoolPush();
        v14 = [(__CFString *)v8 stringByAppendingString:@".*"];
        objc_autoreleasePoolPop(v37);
        goto LABEL_49;
      }

      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 64;
      do
      {
        if (v17 >= 4)
        {
          v19 = 4;
        }

        else
        {
          v19 = v17;
        }

        v20 = v56;
        if (v56 <= v17)
        {
LABEL_29:
          ++v16;
          goto LABEL_30;
        }

        if (theString[1])
        {
          v21 = theString[1] + *(&v55 + 1);
LABEL_19:
          v22 = v21[v17];
          goto LABEL_22;
        }

        if (!v55)
        {
          v28 = *(&v56 + 1);
          if (v57 <= v17 || *(&v56 + 1) > v17)
          {
            v30 = v19 + v13;
            v31 = v18 - v19;
            v32 = v17 - v19;
            v33 = v32 + 64;
            if (v32 + 64 >= v56)
            {
              v33 = v56;
            }

            *(&v56 + 1) = v32;
            v57 = v33;
            if (v56 >= v31)
            {
              v20 = v31;
            }

            v65.location = v32 + *(&v55 + 1);
            v65.length = v20 + v30;
            CFStringGetCharacters(theString[0], v65, buffer);
            v28 = *(&v56 + 1);
          }

          v21 = &buffer[-v28];
          goto LABEL_19;
        }

        v22 = *(v55 + *(&v55 + 1) + v17);
LABEL_22:
        v23 = v22;
        v24 = (1 << (v22 - 42)) & 0x2000000200001;
        if ((v23 - 42) > 0x31 || v24 == 0)
        {
          goto LABEL_29;
        }

        if (!v14)
        {
          v14 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:{-[__CFString length](v8, "length")}];
        }

        v26 = [(__CFString *)v8 substringWithRange:v15, v16];
        [v14 appendFormat:@"%@[%c]", v26, v23];

        v27 = v16 + v15;
        v16 = 0;
        v15 = v27 + 1;
LABEL_30:
        ++v17;
        --v13;
        ++v18;
      }

      while (Length != v17);

      v5 = v40;
      v3 = v41;
      i = v44;
      if (!v14)
      {
        goto LABEL_48;
      }

      if (v16)
      {
        v34 = objc_autoreleasePoolPush();
        v35 = [(__CFString *)v8 substringWithRange:v15, v16];
        [v14 appendString:v35];

        objc_autoreleasePoolPop(v34);
      }

      v36 = [v14 copy];
      [v41 addObject:v36];

      [v14 appendString:@".*"];
LABEL_49:
      [v3 addObject:v14];

      objc_autoreleasePoolPop(context);
    }

    v43 = [obj countByEnumeratingWithState:&v58 objects:v62 count:16];
  }

  while (v43);
LABEL_51:

LABEL_52:
  v38 = *MEMORY[0x1E69E9840];

  return v3;
}

- (_PASDomainSelection)initWithDomainsFromSet:(id)set
{
  setCopy = set;
  if ([setCopy count] > 1)
  {
    selfCopy = objc_opt_new();
    [(_PASDomainSelection *)selfCopy addDomainsFromSet:setCopy];
  }

  else
  {
    v5 = [setCopy copy];
    self = [(_PASDomainSelection *)self _initWithNonOverlappingDomainSet:v5];

    selfCopy = self;
  }

  return selfCopy;
}

- (_PASDomainSelection)initWithDomainsFromArray:(id)array
{
  arrayCopy = array;
  if ([arrayCopy count] > 1)
  {
    selfCopy = objc_opt_new();
    [(_PASDomainSelection *)selfCopy addDomainsFromArray:arrayCopy];
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:arrayCopy];

    self = [(_PASDomainSelection *)self _initWithNonOverlappingDomainSet:v5];
    arrayCopy = v5;
    selfCopy = self;
  }

  return selfCopy;
}

- (_PASDomainSelection)initWithDomain:(id)domain
{
  domainCopy = domain;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc(MEMORY[0x1E695DFD8]);
  v7 = [domainCopy copy];
  v8 = [v6 initWithObjects:{v7, 0}];

  objc_autoreleasePoolPop(v5);
  v9 = [(_PASDomainSelection *)self _initWithNonOverlappingDomainSet:v8];

  return v9;
}

- (id)_initWithNonOverlappingDomainSet:(id)set
{
  setCopy = set;
  if ([setCopy count])
  {
    v5 = [[_PASImmutableDomainSelection alloc] _initWithNonOverlappingDomainSet:setCopy];
  }

  else
  {
    v5 = objc_opt_new();
  }

  v6 = v5;

  return v6;
}

@end