@interface VisionCoreE5RTModelSource
+ (Class)_classForModelAtURL:(id)a3 error:(id *)a4;
+ (id)modelSourceFromURL:(id)a3 error:(id *)a4;
- (VisionCoreE5RTModelSource)initWithURL:(id)a3;
@end

@implementation VisionCoreE5RTModelSource

- (VisionCoreE5RTModelSource)initWithURL:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VisionCoreE5RTModelSource;
  v6 = [(VisionCoreE5RTModelSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, a3);
  }

  return v7;
}

+ (id)modelSourceFromURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [a1 _classForModelAtURL:v6 error:a4];
  if (v7)
  {
    v8 = [[v7 alloc] initWithURL:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (Class)_classForModelAtURL:(id)a3 error:(id *)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (_classForModelAtURL_error__onceToken != -1)
  {
    dispatch_once(&_classForModelAtURL_error__onceToken, &__block_literal_global_871);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = _classForModelAtURL_error__modelSourceClasses;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if ([v11 isModelSourceURL:v5])
        {
          a4 = v11;
          goto LABEL_14;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  if (a4)
  {
    v12 = objc_alloc(MEMORY[0x1E696AEC0]);
    v13 = [v5 lastPathComponent];
    v6 = [v12 initWithFormat:@"%@ is not a supported model file", v13];

    v14 = *MEMORY[0x1E696A998];
    v21[0] = *MEMORY[0x1E696A578];
    v21[1] = v14;
    v22[0] = v6;
    v22[1] = v5;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
    *a4 = [MEMORY[0x1E696ABC0] VisionCoreErrorWithCode:6 userInfo:v15];

    a4 = 0;
LABEL_14:
  }

  return a4;
}

void __55__VisionCoreE5RTModelSource__classForModelAtURL_error___block_invoke()
{
  v2 = [VisionCoreRuntimeUtilities leafSubclassesOfClass:objc_opt_class() excludingRootClass:1];
  v0 = [v2 copy];
  v1 = _classForModelAtURL_error__modelSourceClasses;
  _classForModelAtURL_error__modelSourceClasses = v0;
}

@end