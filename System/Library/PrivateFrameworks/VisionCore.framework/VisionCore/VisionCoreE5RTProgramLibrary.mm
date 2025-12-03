@interface VisionCoreE5RTProgramLibrary
+ (BOOL)isProgramLibraryAtURL:(id)l;
+ (id)compileFromURL:(id)l options:(id)options error:(id *)error;
+ (id)compileModelSource:(id)source options:(id)options error:(id *)error;
+ (id)programLibraryForURL:(id)l error:(id *)error;
- (NSArray)functionNames;
- (NSDictionary)buildInfo;
- (NSDictionary)segmentationAnalytics;
- (NSString)name;
- (id)_initWithURL:(id)l compilationOptions:(id)options ownedProgramLibraryHandle:(e5rt_program_library *)handle;
- (id)functionNamed:(id)named error:(id *)error;
- (id)metadataForFunctionNamed:(id)named error:(id *)error;
- (void)dealloc;
@end

@implementation VisionCoreE5RTProgramLibrary

- (id)functionNamed:(id)named error:(id *)error
{
  namedCopy = named;
  v12 = 0;
  [namedCopy UTF8String];
  v7 = e5rt_program_library_retain_program_function();
  if (v7)
  {
    if (error)
    {
      [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:v7];
      *error = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v9 = [[VisionCoreE5RTFunction alloc] initWithProgramLibrary:self name:namedCopy ownedFunctionHandle:&v12];
    v8 = v9;
    if (v9)
    {
      v10 = v9;
    }

    else if (error)
    {
      *error = [MEMORY[0x1E696ABC0] VisionCoreErrorForMemoryAllocationFailureWithLocalizedDescription:@"could not create program function"];
    }

    if (v12)
    {
      e5rt_program_function_release();
    }
  }

  return v8;
}

- (id)metadataForFunctionNamed:(id)named error:(id *)error
{
  namedCopy = named;
  [namedCopy UTF8String];
  function_metadata = e5rt_program_library_get_function_metadata();
  if (function_metadata && error)
  {
    *error = [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:function_metadata];
  }

  return 0;
}

- (NSArray)functionNames
{
  lazyFunctionNames = self->_lazyFunctionNames;
  if (!lazyFunctionNames)
  {
    v4 = [VisionCoreE5RTUtils stringsForHandle:self->_programLibraryHandle fromCountProc:MEMORY[0x1E699BD88] stringsProc:MEMORY[0x1E699BD80] error:0];
    v5 = [v4 copy];
    v6 = self->_lazyFunctionNames;
    self->_lazyFunctionNames = v5;

    lazyFunctionNames = self->_lazyFunctionNames;
  }

  return lazyFunctionNames;
}

- (NSDictionary)segmentationAnalytics
{
  e5rt_program_library_get_segmentation_analytics();

  return 0;
}

- (NSDictionary)buildInfo
{
  e5rt_program_library_get_build_info();

  return 0;
}

- (NSString)name
{
  lazyName = self->_lazyName;
  if (!lazyName)
  {
    v4 = [(VisionCoreE5RTProgramLibrary *)self URL];
    for (i = [v4 lastPathComponent];
    {

      pathExtension = [i pathExtension];
      v4 = pathExtension;
      if (!pathExtension || ([pathExtension isEqualToString:@"bundle"] & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"net") & 1) == 0 && !objc_msgSend(v4, "isEqualToString:", @"espresso"))
      {
        break;
      }

      stringByDeletingPathExtension = [i stringByDeletingPathExtension];
    }

    v8 = [i copy];
    v9 = self->_lazyName;
    self->_lazyName = v8;

    lazyName = self->_lazyName;
  }

  return lazyName;
}

- (void)dealloc
{
  if (self->_programLibraryHandle)
  {
    e5rt_program_library_release();
  }

  v3.receiver = self;
  v3.super_class = VisionCoreE5RTProgramLibrary;
  [(VisionCoreE5RTProgramLibrary *)&v3 dealloc];
}

- (id)_initWithURL:(id)l compilationOptions:(id)options ownedProgramLibraryHandle:(e5rt_program_library *)handle
{
  lCopy = l;
  optionsCopy = options;
  v16.receiver = self;
  v16.super_class = VisionCoreE5RTProgramLibrary;
  v11 = [(VisionCoreE5RTProgramLibrary *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_modelURL, l);
    v13 = [optionsCopy copy];
    compilationOptions = v12->_compilationOptions;
    v12->_compilationOptions = v13;

    v12->_programLibraryHandle = *handle;
    *handle = 0;
  }

  return v12;
}

+ (id)compileModelSource:(id)source options:(id)options error:(id *)error
{
  sourceCopy = source;
  optionsCopy = options;
  e5ModelFileURL = [sourceCopy E5ModelFileURL];
  if (![e5ModelFileURL VisionCoreE5RTPathAndReturnError:error])
  {
LABEL_5:
    v12 = 0;
    goto LABEL_20;
  }

  v18[1] = 0;
  v11 = e5rt_e5_compiler_create();
  if (v11)
  {
    if (error)
    {
      [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:v11];
      *error = v12 = 0;
      goto LABEL_20;
    }

    goto LABEL_5;
  }

  v18[0] = 0;
  if ([optionsCopy createE5RTCompilerOptions:v18 error:error])
  {
    v17 = 0;
    v13 = e5rt_e5_compiler_compile();
    if (v13)
    {
      if (error)
      {
        [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:v13];
        *error = v12 = 0;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v14 = [[self alloc] _initWithURL:e5ModelFileURL compilationOptions:optionsCopy ownedProgramLibraryHandle:&v17];
      v12 = v14;
      if (v14)
      {
        v15 = v14;
      }

      else if (error)
      {
        *error = [MEMORY[0x1E696ABC0] VisionCoreErrorForMemoryAllocationFailureWithLocalizedDescription:@"could not create program library"];
      }

      if (v17)
      {
        e5rt_program_library_release();
      }
    }

    e5rt_e5_compiler_options_release();
  }

  else
  {
    v12 = 0;
  }

  e5rt_e5_compiler_release();
LABEL_20:

  return v12;
}

+ (id)compileFromURL:(id)l options:(id)options error:(id *)error
{
  optionsCopy = options;
  v9 = [VisionCoreE5RTModelSource modelSourceFromURL:l error:error];
  if (v9)
  {
    v10 = [self compileModelSource:v9 options:optionsCopy error:error];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)programLibraryForURL:(id)l error:(id *)error
{
  lCopy = l;
  if (![lCopy VisionCoreE5RTPathAndReturnError:error])
  {
LABEL_5:
    v8 = 0;
    goto LABEL_12;
  }

  v12 = 0;
  v7 = e5rt_program_library_create();
  if (v7)
  {
    if (error)
    {
      [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:v7];
      *error = v8 = 0;
      goto LABEL_12;
    }

    goto LABEL_5;
  }

  v9 = [[self alloc] _initWithURL:lCopy compilationOptions:0 ownedProgramLibraryHandle:&v12];
  v8 = v9;
  if (v9)
  {
    v10 = v9;
  }

  else if (error)
  {
    *error = [MEMORY[0x1E696ABC0] VisionCoreErrorForMemoryAllocationFailureWithLocalizedDescription:@"could not create program library"];
  }

  if (v12)
  {
    e5rt_program_library_release();
  }

LABEL_12:

  return v8;
}

+ (BOOL)isProgramLibraryAtURL:(id)l
{
  v4 = objc_autoreleasePoolPush();
  if ([l VisionCoreE5RTPathAndReturnError:0])
  {
    v5 = e5rt_program_library_create();
    v6 = v5 == 0;
    if (!v5)
    {
      e5rt_program_library_release();
    }
  }

  else
  {
    v6 = 0;
  }

  objc_autoreleasePoolPop(v4);
  return v6;
}

@end