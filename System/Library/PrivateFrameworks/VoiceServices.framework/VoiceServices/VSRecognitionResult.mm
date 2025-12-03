@interface VSRecognitionResult
+ (id)recognitionResultWithModelIdentifier:(id)identifier classIdentifiers:(id)identifiers values:(id)values;
+ (void)initialize;
- (BOOL)getElementClassIdentifier:(id *)identifier value:(id *)value atIndex:(int64_t)index;
- (id)createHandler;
- (id)description;
- (id)recognitionResultByReplacingValueForClassIdentifier:(id)identifier withValue:(id)value;
- (id)valueOfFirstElementWithClassIdentifier:(id)identifier;
- (int64_t)elementCount;
@end

@implementation VSRecognitionResult

- (id)description
{
  v2 = CFCopyDescription(self);

  return v2;
}

- (id)createHandler
{
  isa = self[5].super.isa;
  if (!isa)
  {
    return 0;
  }

  aClassName = 0;
  cf = 0;
  if (!VSRecognitionPluginStringCopyInfo(isa, &cf, &aClassName))
  {
    return 0;
  }

  v3 = [MEMORY[0x277CCA8D8] bundleWithPath:{objc_msgSend(cf, "path")}];
  if (!v3)
  {
    goto LABEL_10;
  }

  [v3 load];
  v4 = NSClassFromString(aClassName);
  v5 = v4;
  if (v4)
  {
    if ([(objc_class *)v4 conformsToProtocol:&unk_2881EE538]&& (([(objc_class *)v5 instancesRespondToSelector:sel_actionForRecognitionResult_]& 1) != 0 || [(objc_class *)v5 instancesRespondToSelector:sel_actionForRecognitionResults_]))
    {
      v5 = objc_alloc_init(v5);
      goto LABEL_11;
    }

LABEL_10:
    v5 = 0;
  }

LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  if (aClassName)
  {
    CFRelease(aClassName);
  }

  return v5;
}

- (id)valueOfFirstElementWithClassIdentifier:(id)identifier
{
  elementCount = [(VSRecognitionResult *)self elementCount];
  if (elementCount >= 1)
  {
    v6 = elementCount;
    v10 = 0;
    v11 = 0;
    v7 = 1;
    while (1)
    {
      if ([(VSRecognitionResult *)self getElementClassIdentifier:&v11 value:&v10 atIndex:v7 - 1])
      {
        if ([v11 isEqualToString:identifier])
        {
          result = v10;
        }

        else
        {
          result = 0;
        }

        if (result)
        {
          return result;
        }
      }

      else
      {
        result = 0;
      }

      if (v7++ >= v6)
      {
        return result;
      }
    }
  }

  return 0;
}

- (BOOL)getElementClassIdentifier:(id *)identifier value:(id *)value atIndex:(int64_t)index
{
  VSRecognitionResultGetPhraseAtIndex(self, index, identifier, value);
  if (identifier && !*identifier)
  {
    return 0;
  }

  if (value)
  {
    return *value != 0;
  }

  return 1;
}

- (int64_t)elementCount
{
  result = self[3].super.isa;
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

- (id)recognitionResultByReplacingValueForClassIdentifier:(id)identifier withValue:(id)value
{
  isa = self[2].super.isa;
  CFRetain(isa);
  selfCopy = self;
  v8 = self[3].super.isa;
  CFRetain(v8);
  v9 = [(objc_class *)isa count];
  if ([(objc_class *)v8 count]== v9 && v9 >= 1)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    while (1)
    {
      if ([-[objc_class objectAtIndex:](isa objectAtIndex:{v12), "isEqualToString:", identifier}])
      {
        if (v14)
        {
          if (!value)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v14 = [(objc_class *)v8 mutableCopy];
          if (!value)
          {
LABEL_12:
            if (!v13)
            {
              v13 = [(objc_class *)isa mutableCopy];
            }

            [v13 removeObjectAtIndex:v12 - v11];
            [v14 removeObjectAtIndex:v12 - v11++];
            goto LABEL_15;
          }
        }

        [v14 replaceObjectAtIndex:v12 withObject:value];
      }

LABEL_15:
      if (v9 == ++v12)
      {
        goto LABEL_16;
      }
    }
  }

  v14 = 0;
  v13 = 0;
LABEL_16:

  if (v14)
  {
    v15 = objc_opt_class();
    modelIdentifier = [(VSRecognitionResult *)selfCopy modelIdentifier];
    if (v13)
    {
      v17 = v13;
    }

    else
    {
      v17 = isa;
    }

    v18 = [v15 recognitionResultWithModelIdentifier:modelIdentifier classIdentifiers:v17 values:v14];

    return v18;
  }

  else
  {
    v20 = selfCopy;

    return v20;
  }
}

+ (id)recognitionResultWithModelIdentifier:(id)identifier classIdentifiers:(id)identifiers values:(id)values
{
  v5 = VSRecognitionResultCreateWithHandlerInfo(*MEMORY[0x277CBECE8], identifier, identifiers, values, 0);

  return v5;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    pthread_once(&VSRecognitionResultGetTypeID___VSRecognitionResultRegisterOnce, _VSRecognitionResultRegisterClass);
  }
}

@end