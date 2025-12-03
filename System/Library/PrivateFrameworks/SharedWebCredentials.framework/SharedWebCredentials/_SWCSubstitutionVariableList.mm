@interface _SWCSubstitutionVariableList
+ (_SWCSubstitutionVariableList)cheapBuiltInSubstitutionVariableList;
+ (_SWCSubstitutionVariableList)expensiveBuiltInSubstitutionVariableList;
+ (_SWCSubstitutionVariableList)substitutionVariableListWithDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (_SWCSubstitutionVariableList)initWithCoder:(id)coder;
- (id)_descriptionDebug:(BOOL)debug redacted:(BOOL)redacted;
- (unint64_t)count;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateSubstitutionVariablesWithBlock:(id)block;
@end

@implementation _SWCSubstitutionVariableList

+ (_SWCSubstitutionVariableList)cheapBuiltInSubstitutionVariableList
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68___SWCSubstitutionVariableList_cheapBuiltInSubstitutionVariableList__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_280B217C8 != -1)
  {
    dispatch_once(&qword_280B217C8, block);
  }

  v2 = qword_280B217C0;

  return v2;
}

+ (_SWCSubstitutionVariableList)expensiveBuiltInSubstitutionVariableList
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72___SWCSubstitutionVariableList_expensiveBuiltInSubstitutionVariableList__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_280B217D8 != -1)
  {
    dispatch_once(&qword_280B217D8, block);
  }

  v2 = qword_280B217D0;

  return v2;
}

+ (_SWCSubstitutionVariableList)substitutionVariableListWithDictionary:(id)dictionary
{
  v5 = objc_autoreleasePoolPush();
  if (_NSIsNSDictionary())
  {
    v6 = [dictionary objectForKeyedSubscript:@"substitutionVariables"];
    if (_NSIsNSDictionary())
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB28]);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __71___SWCSubstitutionVariableList_substitutionVariableListWithDictionary___block_invoke;
      v12[3] = &unk_279BBDDA8;
      v8 = v7;
      v13 = v8;
      [v6 enumerateKeysAndObjectsUsingBlock:v12];
      if (qword_280B217E8 != -1)
      {
        dispatch_once(&qword_280B217E8, &__block_literal_global_250);
      }

      [v8 appendBytes:&byte_280B217B9 length:SWCSubstitutionVariable::getSize(&byte_280B217B9)];
      Instance = class_createInstance(self, [v8 length]);
      memcpy(Instance + 8, [v8 bytes], objc_msgSend(v8, "length"));
    }

    else
    {
      Instance = 0;
    }

    v10 = Instance;
  }

  else
  {
    v10 = 0;
  }

  objc_autoreleasePoolPop(v5);

  return v10;
}

- (unint64_t)count
{
  variables = self->_variables;
  if (*self->_variables)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    ++v3;
    variables = (variables + SWCSubstitutionVariable::getSize(variables));
  }

  while ((*variables & 1) == 0);
  return v3;
}

- (void)enumerateSubstitutionVariablesWithBlock:(id)block
{
  v4 = 0;
  variables = self->_variables;
  v9 = 0;
  do
  {
    if (*variables)
    {
      break;
    }

    v6 = objc_autoreleasePoolPush();
    v7 = SWCSubstitutionVariable::getNameNoCopy(variables);
    v8 = SWCSubstitutionVariable::getValuesNoCopy(variables);
    (*(block + 2))(block, v7, v8, v4, &v9);

    objc_autoreleasePoolPop(v6);
    ++v4;
    variables = (variables + SWCSubstitutionVariable::getSize(variables));
  }

  while (v9 != 1);
}

- (id)_descriptionDebug:(BOOL)debug redacted:(BOOL)redacted
{
  redactedCopy = redacted;
  debugCopy = debug;
  v25[1] = *MEMORY[0x277D85DE8];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  selfCopy = self;
  v8 = self->_variables[0];
  variables = self->_variables;
  if ((v8 & 1) == 0)
  {
    if (debugCopy)
    {
      v9 = 11;
    }

    else
    {
      v9 = 10;
    }

    do
    {
      if (redactedCopy)
      {
        [v6 addObject:@"<private>"];
      }

      else
      {
        v10 = objc_autoreleasePoolPush();
        v11 = SWCSubstitutionVariable::getNameNoCopy(variables);
        v24 = v11;
        v12 = SWCSubstitutionVariable::getValuesNoCopy(variables);
        v25[0] = v12;
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];

        v14 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v13 options:v9 error:0];
        if (v14)
        {
          v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v14 encoding:4];
          [v6 addObject:v15];
        }

        else
        {
          [v6 addObject:@"?"];
        }

        objc_autoreleasePoolPop(v10);
      }

      variables = (variables + SWCSubstitutionVariable::getSize(variables));
    }

    while ((*variables & 1) == 0);
  }

  if (debugCopy)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = objc_opt_class();
    v18 = [v6 componentsJoinedByString:{@", "}];
    v19 = [v16 initWithFormat:@"<%@ %p> %@", v17, selfCopy, v18];
  }

  else
  {
    v19 = [v6 componentsJoinedByString:{@", "}];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v19;
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

  v6 = self->_variables[0];
  variables = self->_variables;
  v7 = (equal + 8);
  v8 = 0;
  if ((v6 & 1) == 0)
  {
    v9 = variables;
    do
    {
      Size = SWCSubstitutionVariable::getSize(v9);
      v8 += Size;
      v9 = (v9 + Size);
    }

    while ((*v9 & 1) == 0);
  }

  if (*v7)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0;
    v13 = v7;
    do
    {
      v14 = SWCSubstitutionVariable::getSize(v13);
      v11 += v14;
      v13 = (v13 + v14);
    }

    while ((*v13 & 1) == 0);
  }

  return v8 == v11 && memcmp(variables, v7, v8) == 0;
}

- (unint64_t)hash
{
  variables = self->_variables;
  if (*self->_variables)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    Size = SWCSubstitutionVariable::getSize(variables);
    v3 ^= std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](variables, Size);
    variables = (variables + Size);
  }

  while ((*variables & 1) == 0);
  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = self->_variables[0];
  variables = self->_variables;
  if ((v8 & 1) == 0)
  {
    do
    {
      v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:variables length:SWCSubstitutionVariable::getSize(variables) freeWhenDone:0];
      if (v9)
      {
        [v6 addObject:v9];
      }

      variables = (variables + SWCSubstitutionVariable::getSize(variables));
    }

    while ((*variables & 1) == 0);
  }

  v10 = [MEMORY[0x277CCAC58] dataWithPropertyList:v6 format:200 options:0 error:0];
  if (v10)
  {
    [coder encodeObject:v10 forKey:@"substitutionVariableData"];
  }

  objc_autoreleasePoolPop(v5);
}

- (_SWCSubstitutionVariableList)initWithCoder:(id)coder
{
  v47 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v4 = [coder swc_decodeObjectOfClass:objc_opt_class() forKey:@"substitutionVariableData"];
  v33 = v4;
  if (!v4)
  {

    v23 = objc_alloc(MEMORY[0x277CCA9B8]);
    v39[0] = @"Line";
    v39[1] = @"Function";
    v40[0] = &unk_2877A7300;
    v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"-[_SWCSubstitutionVariableList initWithCoder:]", context}];
    v40[1] = v29;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
    v32 = [v23 initWithDomain:*MEMORY[0x277CCA050] code:4865 userInfo:?];
    [coder failWithError:?];
    v22 = 0;
LABEL_27:

    goto LABEL_28;
  }

  v38 = 0;
  v5 = [MEMORY[0x277CCAC58] propertyListWithData:v4 options:0 format:0 error:{&v38, context}];
  v29 = v38;
  v30 = v5;
  if (v5)
  {
    if (_NSIsNSArray())
    {
      v32 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v5, "count")}];
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v6 = v5;
      v7 = [v6 countByEnumeratingWithState:&v34 objects:v45 count:16];
      if (!v7)
      {
        goto LABEL_22;
      }

      v8 = *v35;
      while (1)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v35 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v34 + 1) + 8 * i);
          if (_NSIsNSData())
          {
            v11 = [v10 length];
            v12 = v10;
            bytes = [v10 bytes];
            if (v11)
            {
              v14 = bytes;
              if (v11 + 2 < 0x401)
              {
                v15 = v46;
              }

              else
              {
                v15 = malloc_type_malloc(v11 + 2, 0x100004011D3A922uLL);
                if (!v15)
                {
                  continue;
                }
              }

              memcpy(v15, v14, v11);
              *(v15 + v11) = 0;
              Size = SWCSubstitutionVariable::getSize(v15);
              if (v15 != v46)
              {
                free(v15);
              }

              v17 = Size == v11;
              v4 = v33;
              if (v17)
              {
                v18 = SWCSubstitutionVariable::getValuesNoCopy(v14);
                v19 = SWCSubstitutionVariable::getNameNoCopy(v14);
                [v32 setObject:v18 forKeyedSubscript:v19];
              }
            }
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v34 objects:v45 count:16];
        if (!v7)
        {
LABEL_22:

          v20 = objc_opt_class();
          v43 = @"substitutionVariables";
          v44 = v32;
          v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
          v22 = [v20 substitutionVariableListWithDictionary:v21];
          goto LABEL_26;
        }
      }
    }

    v24 = objc_alloc(MEMORY[0x277CCA9B8]);
    v41[0] = @"Line";
    v41[1] = @"Function";
    v42[0] = &unk_2877A72E8;
    v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_SWCSubstitutionVariableList initWithCoder:]"];
    v42[1] = v32;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];
    self = [v24 initWithDomain:*MEMORY[0x277CCA050] code:4864 userInfo:v21];
    [coder failWithError:?];
    v22 = 0;
LABEL_26:

    goto LABEL_27;
  }

  [coder failWithError:v29];
  v22 = 0;

LABEL_28:
  objc_autoreleasePoolPop(contexta);
  v25 = *MEMORY[0x277D85DE8];
  return v22;
}

@end