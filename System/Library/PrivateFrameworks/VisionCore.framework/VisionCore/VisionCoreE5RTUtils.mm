@interface VisionCoreE5RTUtils
+ (BOOL)getPixelFormatType:(unsigned int *)a3 forSurfaceFormat:(int)a4 error:(id *)a5;
+ (BOOL)getTensorDataType:(unint64_t *)a3 forTensorDescriptor:(e5rt_tensor_desc *)a4 error:(id *)a5;
+ (BOOL)getType:(unint64_t *)a3 ofIOPort:(e5rt_io_port *)a4 error:(id *)a5;
+ (id)stringsForHandle:(void *)a3 fromCountProc:(void *)a4 stringsProc:(void *)a5 error:(id *)a6;
@end

@implementation VisionCoreE5RTUtils

+ (BOOL)getTensorDataType:(unint64_t *)a3 forTensorDescriptor:(e5rt_tensor_desc *)a4 error:(id *)a5
{
  v7 = e5rt_tensor_desc_retain_dtype();
  if (!v7)
  {
    component_size = e5rt_tensor_desc_dtype_get_component_size();
    if (component_size)
    {
      if (a5)
      {
LABEL_6:
        [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:component_size];
        *a5 = v8 = 0;
LABEL_15:
        e5rt_tensor_desc_dtype_release();
        return v8;
      }
    }

    else
    {
      component_size = e5rt_tensor_desc_dtype_get_component_dtype();
      if (!component_size)
      {
        if (a3)
        {
          *a3 = 196608;
        }

        v8 = 1;
        goto LABEL_15;
      }

      if (a5)
      {
        goto LABEL_6;
      }
    }

    v8 = 0;
    goto LABEL_15;
  }

  if (!a5)
  {
    return 0;
  }

  [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:v7];
  *a5 = v8 = 0;
  return v8;
}

+ (BOOL)getType:(unint64_t *)a3 ofIOPort:(e5rt_io_port *)a4 error:(id *)a5
{
  is_tensor = e5rt_io_port_is_tensor();
  if (is_tensor || (is_tensor = e5rt_io_port_is_surface(), is_tensor))
  {
    if (a5)
    {
      v7 = [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:is_tensor];
LABEL_4:
      v8 = v7;
      v9 = v7;
      result = 0;
      *a5 = v8;
      return result;
    }
  }

  else if (a5)
  {
    v7 = [MEMORY[0x1E696ABC0] VisionCoreErrorForInternalErrorWithLocalizedDescription:@"unsupported I/O port handle type"];
    goto LABEL_4;
  }

  return 0;
}

+ (BOOL)getPixelFormatType:(unsigned int *)a3 forSurfaceFormat:(int)a4 error:(id *)a5
{
  v7 = e5rt_surface_format_to_cvpb_4cc();
  if (v7)
  {
    if (a5)
    {
      *a5 = [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:v7];
    }
  }

  else
  {
    *a3 = 0;
  }

  return v7 == 0;
}

+ (id)stringsForHandle:(void *)a3 fromCountProc:(void *)a4 stringsProc:(void *)a5 error:(id *)a6
{
  v19 = 0;
  v9 = (a4)(a3, &v19);
  if (v9)
  {
    if (a6)
    {
      [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:v9];
      *a6 = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x1E695DF88]);
    v12 = [v11 initWithLength:8 * v19];
    v13 = [v12 mutableBytes];
    v14 = (a5)(a3, v19, v13);
    if (v14)
    {
      if (a6)
      {
        [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:v14];
        *a6 = v10 = 0;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v15 = objc_alloc(MEMORY[0x1E695DF70]);
      v10 = [v15 initWithCapacity:v19];
      if (v19)
      {
        for (i = 0; i < v19; ++i)
        {
          v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:*(v13 + 8 * i)];
          [v10 addObject:v17];
        }
      }
    }
  }

  return v10;
}

@end