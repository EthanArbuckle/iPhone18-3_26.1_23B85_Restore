@interface VisionCoreE5RTUtils
+ (BOOL)getPixelFormatType:(unsigned int *)type forSurfaceFormat:(int)format error:(id *)error;
+ (BOOL)getTensorDataType:(unint64_t *)type forTensorDescriptor:(e5rt_tensor_desc *)descriptor error:(id *)error;
+ (BOOL)getType:(unint64_t *)type ofIOPort:(e5rt_io_port *)port error:(id *)error;
+ (id)stringsForHandle:(void *)handle fromCountProc:(void *)proc stringsProc:(void *)stringsProc error:(id *)error;
@end

@implementation VisionCoreE5RTUtils

+ (BOOL)getTensorDataType:(unint64_t *)type forTensorDescriptor:(e5rt_tensor_desc *)descriptor error:(id *)error
{
  v7 = e5rt_tensor_desc_retain_dtype();
  if (!v7)
  {
    component_size = e5rt_tensor_desc_dtype_get_component_size();
    if (component_size)
    {
      if (error)
      {
LABEL_6:
        [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:component_size];
        *error = v8 = 0;
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
        if (type)
        {
          *type = 196608;
        }

        v8 = 1;
        goto LABEL_15;
      }

      if (error)
      {
        goto LABEL_6;
      }
    }

    v8 = 0;
    goto LABEL_15;
  }

  if (!error)
  {
    return 0;
  }

  [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:v7];
  *error = v8 = 0;
  return v8;
}

+ (BOOL)getType:(unint64_t *)type ofIOPort:(e5rt_io_port *)port error:(id *)error
{
  is_tensor = e5rt_io_port_is_tensor();
  if (is_tensor || (is_tensor = e5rt_io_port_is_surface(), is_tensor))
  {
    if (error)
    {
      v7 = [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:is_tensor];
LABEL_4:
      v8 = v7;
      v9 = v7;
      result = 0;
      *error = v8;
      return result;
    }
  }

  else if (error)
  {
    v7 = [MEMORY[0x1E696ABC0] VisionCoreErrorForInternalErrorWithLocalizedDescription:@"unsupported I/O port handle type"];
    goto LABEL_4;
  }

  return 0;
}

+ (BOOL)getPixelFormatType:(unsigned int *)type forSurfaceFormat:(int)format error:(id *)error
{
  v7 = e5rt_surface_format_to_cvpb_4cc();
  if (v7)
  {
    if (error)
    {
      *error = [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:v7];
    }
  }

  else
  {
    *type = 0;
  }

  return v7 == 0;
}

+ (id)stringsForHandle:(void *)handle fromCountProc:(void *)proc stringsProc:(void *)stringsProc error:(id *)error
{
  v19 = 0;
  v9 = (proc)(handle, &v19);
  if (v9)
  {
    if (error)
    {
      [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:v9];
      *error = v10 = 0;
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
    mutableBytes = [v12 mutableBytes];
    v14 = (stringsProc)(handle, v19, mutableBytes);
    if (v14)
    {
      if (error)
      {
        [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:v14];
        *error = v10 = 0;
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
          v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:*(mutableBytes + 8 * i)];
          [v10 addObject:v17];
        }
      }
    }
  }

  return v10;
}

@end