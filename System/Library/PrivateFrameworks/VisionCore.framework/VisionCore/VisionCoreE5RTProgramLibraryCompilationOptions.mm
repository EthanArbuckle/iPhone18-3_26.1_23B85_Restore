@interface VisionCoreE5RTProgramLibraryCompilationOptions
- (BOOL)createE5RTCompilerOptions:(e5rt_e5_compiler_options *)a3 error:(id *)a4;
- (VisionCoreE5RTProgramLibraryCompilationOptions)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation VisionCoreE5RTProgramLibraryCompilationOptions

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = objc_opt_class();

  return objc_alloc_init(v3);
}

- (BOOL)createE5RTCompilerOptions:(e5rt_e5_compiler_options *)a3 error:(id *)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v5 = e5rt_e5_compiler_options_create();
  if (v5)
  {
    if (a4)
    {
      [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:v5];
      *a4 = v6 = 0;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v7 = [(VisionCoreE5RTProgramLibraryCompilationOptions *)self computeDeviceTypes];
    if (!v7)
    {
      goto LABEL_11;
    }

    if ((v7 & 7) == 4)
    {
      [(VisionCoreE5RTProgramLibraryCompilationOptions *)self fullyANEResident];
    }

    v8 = e5rt_e5_compiler_options_set_compute_device_types_mask();
    if (v8)
    {
      if (a4)
      {
        [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:v8];
        *a4 = v6 = 0;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
LABEL_11:
      v9 = [(VisionCoreE5RTProgramLibraryCompilationOptions *)self customCompilationOptions];
      v11 = v9;
      if (v9 && (v12 = v9, [v11 UTF8String], v10 = e5rt_e5_compiler_options_set_custom_ane_compiler_options(), v10))
      {
        if (a4)
        {
          [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:v10];
          *a4 = v6 = 0;
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v13 = [(VisionCoreE5RTProgramLibraryCompilationOptions *)self milEntryPoints];
        v14 = v13;
        if (!v13 || ![v13 count])
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
          if (a4)
          {
            *a4 = [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:v15];
          }

          v6 = 0;
        }

        else
        {
LABEL_25:
          *a3 = v21;
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