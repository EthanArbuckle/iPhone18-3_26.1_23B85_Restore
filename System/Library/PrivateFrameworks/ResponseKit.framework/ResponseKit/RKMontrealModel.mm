@interface RKMontrealModel
+ (id)modelForLanguage:(id)a3;
+ (id)pathForLanguage:(id)a3;
- (RKMontrealModel)initWithPath:(id)a3;
- (void)dealloc;
- (void)reset;
@end

@implementation RKMontrealModel

+ (id)modelForLanguage:(id)a3
{
  v4 = [a1 pathForLanguage:a3];
  pthread_mutex_lock(&+[RKMontrealModel modelForLanguage:]::lock);
  v5 = +[RKMontrealModel modelForLanguage:]::instances;
  if (!+[RKMontrealModel modelForLanguage:]::instances)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:5 capacity:1];
    v7 = +[RKMontrealModel modelForLanguage:]::instances;
    +[RKMontrealModel modelForLanguage:]::instances = v6;

    v5 = +[RKMontrealModel modelForLanguage:]::instances;
  }

  v8 = [v5 objectForKey:v4];
  if (!v8)
  {
    v9 = [[a1 alloc] initWithPath:v4];
    if (v9)
    {
      v8 = v9;
      [+[RKMontrealModel modelForLanguage:]::instances setObject:v9 forKey:v4];
    }

    else
    {
      v8 = 0;
    }
  }

  pthread_mutex_unlock(&+[RKMontrealModel modelForLanguage:]::lock);

  return v8;
}

- (RKMontrealModel)initWithPath:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    goto LABEL_10;
  }

  if ([RKMontrealModel initWithPath:]::once != -1)
  {
    [RKMontrealModel initWithPath:];
  }

  v9.receiver = self;
  v9.super_class = RKMontrealModel;
  self = [(RKMontrealModel *)&v9 init];
  if (!self || [RKMontrealModel initWithPath:]::montrealIsLoaded != 1)
  {
    goto LABEL_9;
  }

  v10 = @"fileLocation";
  v11[0] = v4;
  v5 = (weak_MRLModelCreate)([MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1]);
  self->_model = v5;
  if (!v5)
  {
LABEL_10:
    v6 = 0;
    goto LABEL_11;
  }

  if (weak_MRLModelGetOutputSize() != 5)
  {
    __assert_rtn("[RKMontrealModel initWithPath:]", "RKEventIdentifier.mm", 130, "outputSize == RKEventIDCount");
  }

  weak_MRLModelSetMaxSequenceLength(self->_model, (kMaxSequenceLength + 1));
LABEL_9:
  self = self;
  v6 = self;
LABEL_11:

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

void *__32__RKMontrealModel_initWithPath___block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/Montreal.framework/Montreal", 1);
  if (result)
  {
    v1 = result;
    weak_MRLModelCreate = dlsym(result, "MRLModelCreate");
    weak_MRLModelGetIOMappings = dlsym(v1, "MRLModelGetIOMappings");
    weak_MRLModelGetOutputSize = dlsym(v1, "MRLModelGetOutputSize");
    weak_MRLModelSetMaxSequenceLength = dlsym(v1, "MRLModelSetMaxSequenceLength");
    weak_MRLModelStateCreate = dlsym(v1, "MRLModelStateCreate");
    weak_MRLModelStateSave = dlsym(v1, "MRLModelStateSave");
    weak_MRLModelStateRestore = dlsym(v1, "MRLModelStateRestore");
    weak_MRLModelRecognizeIncremental = dlsym(v1, "MRLModelRecognizeIncremental");
    weak_MRLModelRecognize = dlsym(v1, "MRLModelRecognize");
    weak_MRLModelRecognizeSequence = dlsym(v1, "MRLModelRecognize");
    weak_MRLModelReset = dlsym(v1, "MRLModelReset");
    weak_MRLModelRelease = dlsym(v1, "MRLModelRelease");
    result = dlsym(v1, "MRLModelStateRelease");
    weak_MRLModelStateRelease = result;
    if (weak_MRLModelCreate)
    {
      v2 = weak_MRLModelReset == 0;
    }

    else
    {
      v2 = 1;
    }

    v14 = !v2 && weak_MRLModelRelease != 0 && weak_MRLModelGetIOMappings != 0 && weak_MRLModelRecognizeIncremental != 0 && weak_MRLModelRecognize != 0 && weak_MRLModelRecognizeSequence != 0 && weak_MRLModelGetOutputSize != 0 && weak_MRLModelSetMaxSequenceLength != 0 && weak_MRLModelStateCreate != 0 && weak_MRLModelStateSave != 0 && weak_MRLModelStateRestore != 0 && result != 0;
    [RKMontrealModel initWithPath:]::montrealIsLoaded = v14;
  }

  return result;
}

- (void)dealloc
{
  model = self->_model;
  if (model)
  {
    weak_MRLModelRelease(model, a2);
  }

  v4.receiver = self;
  v4.super_class = RKMontrealModel;
  [(RKMontrealModel *)&v4 dealloc];
}

- (void)reset
{
  if (self->_model)
  {
    weak_MRLModelReset();
  }
}

+ (id)pathForLanguage:(id)a3
{
  v3 = a3;
  v4 = [RKUtilities canonicalLanguageAndScriptCodeIdentifierForIdentifier:v3];

  v5 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v4];
  v6 = [@"Polarity-" stringByAppendingString:v4];
  v7 = [v6 stringByAppendingString:@".lstm"];

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__3;
  v18 = __Block_byref_object_dispose__3;
  v19 = 0;
  v12 = MEMORY[0x277D85DD0];
  v8 = v7;
  v13 = v8;
  LDEnumerateAssetDataItems();
  v9 = v15[5];
  if (v9)
  {
    v10 = [v9 path];
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v14, 8);

  return v10;
}

void __35__RKMontrealModel_pathForLanguage___block_invoke(uint64_t a1, CFURLRef url, uint64_t a3, uint64_t a4, const void *a5, _BYTE *a6)
{
  PathComponent = CFURLCopyLastPathComponent(url);
  if (PathComponent && CFEqual(a5, *MEMORY[0x277D23678]) && [(__CFString *)PathComponent isEqualToString:*(a1 + 32)])
  {
    v10 = [(__CFURL *)url copy];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    *a6 = 1;
  }
}

@end