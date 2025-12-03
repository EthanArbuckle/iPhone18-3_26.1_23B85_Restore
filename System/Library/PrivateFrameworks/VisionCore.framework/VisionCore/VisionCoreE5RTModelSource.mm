@interface VisionCoreE5RTModelSource
+ (Class)_classForModelAtURL:(id)l error:(id *)error;
+ (id)modelSourceFromURL:(id)l error:(id *)error;
- (VisionCoreE5RTModelSource)initWithURL:(id)l;
@end

@implementation VisionCoreE5RTModelSource

- (VisionCoreE5RTModelSource)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = VisionCoreE5RTModelSource;
  v6 = [(VisionCoreE5RTModelSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, l);
  }

  return v7;
}

+ (id)modelSourceFromURL:(id)l error:(id *)error
{
  lCopy = l;
  v7 = [self _classForModelAtURL:lCopy error:error];
  if (v7)
  {
    v8 = [[v7 alloc] initWithURL:lCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (Class)_classForModelAtURL:(id)l error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  lCopy = l;
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
        if ([v11 isModelSourceURL:lCopy])
        {
          error = v11;
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

  if (error)
  {
    v12 = objc_alloc(MEMORY[0x1E696AEC0]);
    lastPathComponent = [lCopy lastPathComponent];
    v6 = [v12 initWithFormat:@"%@ is not a supported model file", lastPathComponent];

    v14 = *MEMORY[0x1E696A998];
    v21[0] = *MEMORY[0x1E696A578];
    v21[1] = v14;
    v22[0] = v6;
    v22[1] = lCopy;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
    *error = [MEMORY[0x1E696ABC0] VisionCoreErrorWithCode:6 userInfo:v15];

    error = 0;
LABEL_14:
  }

  return error;
}

void __55__VisionCoreE5RTModelSource__classForModelAtURL_error___block_invoke()
{
  v2 = [VisionCoreRuntimeUtilities leafSubclassesOfClass:objc_opt_class() excludingRootClass:1];
  v0 = [v2 copy];
  v1 = _classForModelAtURL_error__modelSourceClasses;
  _classForModelAtURL_error__modelSourceClasses = v0;
}

@end