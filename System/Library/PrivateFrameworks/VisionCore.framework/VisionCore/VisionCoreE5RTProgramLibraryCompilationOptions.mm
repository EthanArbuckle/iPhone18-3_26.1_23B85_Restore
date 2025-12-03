@interface VisionCoreE5RTProgramLibraryCompilationOptions
- (BOOL)createE5RTCompilerOptions:(e5rt_e5_compiler_options *)options error:(id *)error;
- (VisionCoreE5RTProgramLibraryCompilationOptions)init;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation VisionCoreE5RTProgramLibraryCompilationOptions

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = objc_opt_class();

  return objc_alloc_init(v3);
}

- (BOOL)createE5RTCompilerOptions:(e5rt_e5_compiler_options *)options error:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v5 = e5rt_e5_compiler_options_create();
  if (v5)
  {
    if (error)
    {
      [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:v5];
      *error = v6 = 0;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    computeDeviceTypes = [(VisionCoreE5RTProgramLibraryCompilationOptions *)self computeDeviceTypes];
    if (!computeDeviceTypes)
    {
      goto LABEL_11;
    }

    if ((computeDeviceTypes & 7) == 4)
    {
      [(VisionCoreE5RTProgramLibraryCompilationOptions *)self fullyANEResident];
    }

    v8 = e5rt_e5_compiler_options_set_compute_device_types_mask();
    if (v8)
    {
      if (error)
      {
        [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:v8];
        *error = v6 = 0;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
LABEL_11:
      customCompilationOptions = [(VisionCoreE5RTProgramLibraryCompilationOptions *)self customCompilationOptions];
      v11 = customCompilationOptions;
      if (customCompilationOptions && (v12 = customCompilationOptions, [v11 UTF8String], v10 = e5rt_e5_compiler_options_set_custom_ane_compiler_options(), v10))
      {
        if (error)
        {
          [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:v10];
          *error = v6 = 0;
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        milEntryPoints = [(VisionCoreE5RTProgramLibraryCompilationOptions *)self milEntryPoints];
        v14 = milEntryPoints;
        if (!milEntryPoints || ![milEntryPoints count])
        {
          goto LABEL_25;
        }

        memset(v20, 0, sizeof(v20));
        obj = v14;
        if ([obj countByEnumeratingWithState:v20 objects:v22 count:16])
        {
          [**(&v20[0] + 1) UTF8String];
          operator new();
        }

        v15 = e5rt_e5_compiler_options_set_mil_entry_points();
        if (v15)
        {
          if (error)
          {
            *error = [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:v15];
          }

          v6 = 0;
        }

        else
        {
LABEL_25:
          *options = v21;
          v21 = 0;
          v6 = 1;
        }
      }
    }

    if (v21)
    {
      e5rt_e5_compiler_options_release();
    }
  }

  return v6;
}

- (VisionCoreE5RTProgramLibraryCompilationOptions)init
{
  v6.receiver = self;
  v6.super_class = VisionCoreE5RTProgramLibraryCompilationOptions;
  v2 = [(VisionCoreE5RTProgramLibraryCompilationOptions *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_computeDeviceTypes = 0;
    v2->_fullyANEResident = 1;
    v4 = v2;
  }

  return v3;
}

@end