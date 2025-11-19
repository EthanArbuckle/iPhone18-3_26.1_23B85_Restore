@interface VisionCoreE5RTProgramLibrary
+ (BOOL)isProgramLibraryAtURL:(id)a3;
+ (id)compileFromURL:(id)a3 options:(id)a4 error:(id *)a5;
+ (id)compileModelSource:(id)a3 options:(id)a4 error:(id *)a5;
+ (id)programLibraryForURL:(id)a3 error:(id *)a4;
- (NSArray)functionNames;
- (NSDictionary)buildInfo;
- (NSDictionary)segmentationAnalytics;
- (NSString)name;
- (id)_initWithURL:(id)a3 compilationOptions:(id)a4 ownedProgramLibraryHandle:(e5rt_program_library *)a5;
- (id)functionNamed:(id)a3 error:(id *)a4;
- (id)metadataForFunctionNamed:(id)a3 error:(id *)a4;
- (void)dealloc;
@end

@implementation VisionCoreE5RTProgramLibrary

- (id)functionNamed:(id)a3 error:(id *)a4
{
  v6 = a3;
  v12 = 0;
  [v6 UTF8String];
  v7 = e5rt_program_library_retain_program_function();
  if (v7)
  {
    if (a4)
    {
      [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:v7];
      *a4 = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v9 = [[VisionCoreE5RTFunction alloc] initWithProgramLibrary:self name:v6 ownedFunctionHandle:&v12];
    v8 = v9;
    if (v9)
    {
      v10 = v9;
    }

    else if (a4)
    {
      *a4 = [MEMORY[0x1E696ABC0] VisionCoreErrorForMemoryAllocationFailureWithLocalizedDescription:@"could not create program function"];
    }

    if (v12)
    {
      e5rt_program_function_release();
    }
  }

  return v8;
}

- (id)metadataForFunctionNamed:(id)a3 error:(id *)a4
{
  v5 = a3;
  [v5 UTF8String];
  function_metadata = e5rt_program_library_get_function_metadata();
  if (function_metadata && a4)
  {
    *a4 = [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:function_metadata];
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

      v6 = [i pathExtension];
      v4 = v6;
      if (!v6 || ([v6 isEqualToString:@"bundle"] & 1) == 0 && (objc_msgSend(v4, "isEqualToString:", @"net") & 1) == 0 && !objc_msgSend(v4, "isEqualToString:", @"espresso"))
      {
        break;
      }

      v7 = [i stringByDeletingPathExtension];
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

- (id)_initWithURL:(id)a3 compilationOptions:(id)a4 ownedProgramLibraryHandle:(e5rt_program_library *)a5
{
  v9 = a3;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = VisionCoreE5RTProgramLibrary;
  v11 = [(VisionCoreE5RTProgramLibrary *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_modelURL, a3);
    v13 = [v10 copy];
    compilationOptions = v12->_compilationOptions;
    v12->_compilationOptions = v13;

    v12->_programLibraryHandle = *a5;
    *a5 = 0;
  }

  return v12;
}

+ (id)compileModelSource:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 E5ModelFileURL];
  if (![v10 VisionCoreE5RTPathAndReturnError:a5])
  {
LABEL_5:
    v12 = 0;
    goto LABEL_20;
  }

  v18[1] = 0;
  v11 = e5rt_e5_compiler_create();
  if (v11)
  {
    if (a5)
    {
      [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:v11];
      *a5 = v12 = 0;
      goto LABEL_20;
    }

    goto LABEL_5;
  }

  v18[0] = 0;
  if ([v9 createE5RTCompilerOptions:v18 error:a5])
  {
    v17 = 0;
    v13 = e5rt_e5_compiler_compile();
    if (v13)
    {
      if (a5)
      {
        [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:v13];
        *a5 = v12 = 0;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v14 = [[a1 alloc] _initWithURL:v10 compilationOptions:v9 ownedProgramLibraryHandle:&v17];
      v12 = v14;
      if (v14)
      {
        v15 = v14;
      }

      else if (a5)
      {
        *a5 = [MEMORY[0x1E696ABC0] VisionCoreErrorForMemoryAllocationFailureWithLocalizedDescription:@"could not create program library"];
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

+ (id)compileFromURL:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [VisionCoreE5RTModelSource modelSourceFromURL:a3 error:a5];
  if (v9)
  {
    v10 = [a1 compileModelSource:v9 options:v8 error:a5];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)programLibraryForURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (![v6 VisionCoreE5RTPathAndReturnError:a4])
  {
LABEL_5:
    v8 = 0;
    goto LABEL_12;
  }

  v12 = 0;
  v7 = e5rt_program_library_create();
  if (v7)
  {
    if (a4)
    {
      [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:v7];
      *a4 = v8 = 0;
      goto LABEL_12;
    }

    goto LABEL_5;
  }

  v9 = [[a1 alloc] _initWithURL:v6 compilationOptions:0 ownedProgramLibraryHandle:&v12];
  v8 = v9;
  if (v9)
  {
    v10 = v9;
  }

  else if (a4)
  {
    *a4 = [MEMORY[0x1E696ABC0] VisionCoreErrorForMemoryAllocationFailureWithLocalizedDescription:@"could not create program library"];
  }

  if (v12)
  {
    e5rt_program_library_release();
  }

LABEL_12:

  return v8;
}

+ (BOOL)isProgramLibraryAtURL:(id)a3
{
  v4 = objc_autoreleasePoolPush();
  if ([a3 VisionCoreE5RTPathAndReturnError:0])
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