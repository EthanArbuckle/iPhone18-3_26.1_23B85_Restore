@interface VSRecognitionResult
+ (id)recognitionResultWithModelIdentifier:(id)a3 classIdentifiers:(id)a4 values:(id)a5;
+ (void)initialize;
- (BOOL)getElementClassIdentifier:(id *)a3 value:(id *)a4 atIndex:(int64_t)a5;
- (id)createHandler;
- (id)description;
- (id)recognitionResultByReplacingValueForClassIdentifier:(id)a3 withValue:(id)a4;
- (id)valueOfFirstElementWithClassIdentifier:(id)a3;
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

- (id)valueOfFirstElementWithClassIdentifier:(id)a3
{
  v5 = [(VSRecognitionResult *)self elementCount];
  if (v5 >= 1)
  {
    v6 = v5;
    v10 = 0;
    v11 = 0;
    v7 = 1;
    while (1)
    {
      if ([(VSRecognitionResult *)self getElementClassIdentifier:&v11 value:&v10 atIndex:v7 - 1])
      {
        if ([v11 isEqualToString:a3])
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

- (BOOL)getElementClassIdentifier:(id *)a3 value:(id *)a4 atIndex:(int64_t)a5
{
  VSRecognitionResultGetPhraseAtIndex(self, a5, a3, a4);
  if (a3 && !*a3)
  {
    return 0;
  }

  if (a4)
  {
    return *a4 != 0;
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

- (id)recognitionResultByReplacingValueForClassIdentifier:(id)a3 withValue:(id)a4
{
  isa = self[2].super.isa;
  CFRetain(isa);
  v21 = self;
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
      if ([-[objc_class objectAtIndex:](isa objectAtIndex:{v12), "isEqualToString:", a3}])
      {
        if (v14)
        {
          if (!a4)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v14 = [(objc_class *)v8 mutableCopy];
          if (!a4)
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

        [v14 replaceObjectAtIndex:v12 withObject:a4];
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
    v16 = [(VSRecognitionResult *)v21 modelIdentifier];
    if (v13)
    {
      v17 = v13;
    }

    else
    {
      v17 = isa;
    }

    v18 = [v15 recognitionResultWithModelIdentifier:v16 classIdentifiers:v17 values:v14];

    return v18;
  }

  else
  {
    v20 = v21;

    return v20;
  }
}

+ (id)recognitionResultWithModelIdentifier:(id)a3 classIdentifiers:(id)a4 values:(id)a5
{
  v5 = VSRecognitionResultCreateWithHandlerInfo(*MEMORY[0x277CBECE8], a3, a4, a5, 0);

  return v5;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    pthread_once(&VSRecognitionResultGetTypeID___VSRecognitionResultRegisterOnce, _VSRecognitionResultRegisterClass);
  }
}

@end