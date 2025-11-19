@interface VisionCoreE5RTFunction
- (BOOL)requiresPostProcessing;
- (NSArray)inputDescriptors;
- (NSArray)inputs;
- (NSArray)outputDescriptors;
- (NSArray)outputs;
- (NSDictionary)metadata;
- (VisionCoreE5RTFunction)initWithProgramLibrary:(id)a3 name:(id)a4 ownedFunctionHandle:(e5rt_program_function *)a5;
- (e5rt_execution_stream_operation)createOperationExecutionStreamWithError:(id *)a3;
- (id)_tensorDescriptorOfClass:(uint64_t)a3 providedByBlock:(uint64_t)a4 error:;
- (id)description;
- (id)descriptorForInput:(id)a3 error:(id *)a4;
- (id)descriptorForOutput:(id)a3 error:(id *)a4;
- (id)descriptorOfClass:(Class)a3 forInput:(id)a4 error:(id *)a5;
- (id)descriptorOfClass:(Class)a3 forOutput:(id)a4 error:(id *)a5;
- (id)descriptorsForInputs:(id)a3 error:(id *)a4;
- (id)descriptorsForOutputs:(id)a3 error:(id *)a4;
- (id)prepareForExecutionWithError:(id *)a3;
- (uint64_t)_newDescriptorForIOPort:(void *)a3 named:(void *)a4 error:;
- (void)_buildDescriptorsCaches;
- (void)dealloc;
@end

@implementation VisionCoreE5RTFunction

- (BOOL)requiresPostProcessing
{
  v2 = [(VisionCoreE5RTFunction *)self name];
  v3 = [v2 containsString:@"update"];

  return v3;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = VisionCoreE5RTFunction;
  v4 = [(VisionCoreE5RTFunction *)&v8 description];
  v5 = [(VisionCoreE5RTFunction *)self name];
  v6 = [v3 initWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (e5rt_execution_stream_operation)createOperationExecutionStreamWithError:(id *)a3
{
  v4 = _VisionCoreSignpostLog();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DECDA000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "VisionCoreE5RTCreateExecutionStreamOperation", &unk_1DED1344A, buf, 2u);
  }

  *buf = 0;
  v5 = e5rt_precompiled_compute_op_create_options_create_with_program_function();
  if (v5)
  {
    if (a3)
    {
      [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:v5];
      *a3 = v6 = 0;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = 0;
    precompiled_compute_operation_with_options = e5rt_execution_stream_operation_create_precompiled_compute_operation_with_options();
    if (precompiled_compute_operation_with_options)
    {
      if (a3)
      {
        [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:precompiled_compute_operation_with_options];
        *a3 = v6 = 0;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = v10;
    }

    e5rt_precompiled_compute_op_create_options_release();
    v8 = _VisionCoreSignpostLog();
    if (os_signpost_enabled(v8))
    {
      LOWORD(v10) = 0;
      _os_signpost_emit_with_name_impl(&dword_1DECDA000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "VisionCoreE5RTCreateExecutionStreamOperation", &unk_1DED1344A, &v10, 2u);
    }
  }

  return v6;
}

- (VisionCoreE5RTFunction)initWithProgramLibrary:(id)a3 name:(id)a4 ownedFunctionHandle:(e5rt_program_function *)a5
{
  v9 = a3;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = VisionCoreE5RTFunction;
  v11 = [(VisionCoreE5RTFunction *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_programLibrary, a3);
    v13 = [v10 copy];
    name = v12->_name;
    v12->_name = v13;

    v12->_functionHandle = *a5;
    *a5 = 0;
  }

  return v12;
}

- (id)prepareForExecutionWithError:(id *)a3
{
  v3 = [[VisionCoreE5RTExecutionPrewarmedState alloc] initWithExecutionStreamOperation:[(VisionCoreE5RTFunction *)self createOperationExecutionStreamWithError:a3]];

  return v3;
}

- (NSArray)outputDescriptors
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(VisionCoreE5RTFunction *)self outputs];
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(VisionCoreE5RTFunction *)self descriptorForOutput:*(*(&v12 + 1) + 8 * i) error:0, v12];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (NSArray)inputDescriptors
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(VisionCoreE5RTFunction *)self inputs];
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(VisionCoreE5RTFunction *)self descriptorForInput:*(*(&v12 + 1) + 8 * i) error:0, v12];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)descriptorsForOutputs:(id)a3 error:(id *)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(VisionCoreE5RTFunction *)self descriptorForOutput:*(*(&v17 + 1) + 8 * i) error:a4, v17];
        if (!v13)
        {

          v15 = 0;
          goto LABEL_11;
        }

        v14 = v13;
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v15 = v7;
LABEL_11:

  return v15;
}

- (id)descriptorOfClass:(Class)a3 forOutput:(id)a4 error:(id *)a5
{
  v8 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__VisionCoreE5RTFunction_descriptorOfClass_forOutput_error___block_invoke;
  v13[3] = &unk_1E8698BC0;
  v13[4] = self;
  v14 = v8;
  v9 = v8;
  v10 = MEMORY[0x1E12C8870](v13);
  v11 = [(VisionCoreE5RTFunction *)self _tensorDescriptorOfClass:a3 providedByBlock:v10 error:a5];

  return v11;
}

- (id)_tensorDescriptorOfClass:(uint64_t)a3 providedByBlock:(uint64_t)a4 error:
{
  if (a1)
  {
    v6 = (*(a3 + 16))(a3, a4);
    if (v6 && [VisionCoreValidationUtilities validateObject:v6 isKindOfClass:a2 basedOnClass:objc_opt_class() error:a4])
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)descriptorForOutput:(id)a3 error:(id *)a4
{
  v6 = a3;
  [(VisionCoreE5RTFunction *)self _buildDescriptorsCaches];
  v7 = [(NSDictionary *)self->_cachedOutputDescriptors objectForKey:v6];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else if (a4)
  {
    v10 = objc_alloc(MEMORY[0x1E696AEC0]);
    v11 = [(VisionCoreE5RTFunction *)self name];
    v12 = [v10 initWithFormat:@"Could not provide a descriptor for %@ output %@", v11, v6];

    *a4 = [MEMORY[0x1E696ABC0] VisionCoreErrorForUnavailableResourceWithLocalizedDescription:v12];
  }

  return v8;
}

- (void)_buildDescriptorsCaches
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    if (!v1[6])
    {
      v2 = [v1 inputs];
      v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v2, "count")}];
      v4 = [v1 outputs];
      v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v4, "count")}];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __49__VisionCoreE5RTFunction__buildDescriptorsCaches__block_invoke;
      v24[3] = &unk_1E8698B98;
      v6 = v2;
      v25 = v6;
      v26 = v1;
      v7 = v3;
      v27 = v7;
      v8 = v4;
      v28 = v8;
      v9 = v5;
      v29 = v9;
      v10 = MEMORY[0x1E12C8870](v24);
      NSStringFromSelector(sel__buildDescriptorsCaches);
      v11 = v23 = 0;
      v12 = v10;
      v13 = [v1 createOperationExecutionStreamWithError:&v23];
      v30 = v13;
      if (v13)
      {
        v14 = v12[2](v12, v13, &v23);
        e5rt_execution_stream_operation_release();
      }

      else
      {
        v14 = 0;
      }

      v15 = v23;
      if ((v14 & 1) == 0)
      {
        v22 = [MEMORY[0x1E696AAA8] currentHandler];
        v20 = [v1 name];
        v21 = [v15 localizedDescription];
        [v22 handleFailureInMethod:sel__buildDescriptorsCaches object:v1 file:@"VisionCoreE5RTFunction.m" lineNumber:305 description:{@"could not build descriptors for %@: %@", v20, v21}];
      }

      v16 = [v7 copy];
      v17 = v1[6];
      v1[6] = v16;

      v18 = [v9 copy];
      v19 = v1[7];
      v1[7] = v18;
    }

    objc_sync_exit(v1);
  }
}

uint64_t __49__VisionCoreE5RTFunction__buildDescriptorsCaches__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v6)
  {
    v7 = *v38;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v38 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v37 + 1) + 8 * v8);
      v36 = 0;
      v10 = v9;
      [v9 UTF8String];
      v11 = e5rt_execution_stream_operation_retain_input_port();
      if (v11)
      {
        break;
      }

      v12 = [(VisionCoreE5RTFunction *)*(a1 + 40) _newDescriptorForIOPort:v36 named:v9 error:a3];
      if (v12)
      {
        [*(a1 + 48) setObject:v12 forKey:v9];
      }

      e5rt_io_port_release();
      if (!v12)
      {
        goto LABEL_32;
      }

      if (v6 == ++v8)
      {
        v6 = [v5 countByEnumeratingWithState:&v37 objects:v42 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    if (!a3)
    {
      goto LABEL_32;
    }

    v30 = [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:v11];
  }

  else
  {
LABEL_12:

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v5 = *(a1 + 56);
    v13 = [v5 countByEnumeratingWithState:&v32 objects:v41 count:16];
    if (!v13)
    {
      v29 = 1;
      goto LABEL_33;
    }

    v14 = *v33;
LABEL_14:
    v15 = 0;
    while (1)
    {
      if (*v33 != v14)
      {
        objc_enumerationMutation(v5);
      }

      v16 = *(*(&v32 + 1) + 8 * v15);
      v36 = 0;
      v17 = v16;
      [v16 UTF8String];
      v18 = e5rt_execution_stream_operation_retain_output_port();
      if (v18)
      {
        break;
      }

      v19 = [(VisionCoreE5RTFunction *)*(a1 + 40) _newDescriptorForIOPort:v36 named:v16 error:a3];
      v26 = v19;
      v27 = v19 != 0;
      v28 = @"NULL";
      if (v19)
      {
        v28 = v19;
      }

      VisionCoreValidatedLog(1, @"Output descriptor: %@", v20, v21, v22, v23, v24, v25, v28);
      if (v26)
      {
        [*(a1 + 64) setObject:v26 forKey:v16];
      }

      e5rt_io_port_release();
      if (!v27)
      {
        goto LABEL_32;
      }

      if (v13 == ++v15)
      {
        v13 = [v5 countByEnumeratingWithState:&v32 objects:v41 count:16];
        v29 = 1;
        if (v13)
        {
          goto LABEL_14;
        }

        goto LABEL_33;
      }
    }

    if (!a3)
    {
      goto LABEL_32;
    }

    v30 = [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:v18];
  }

  *a3 = v30;
LABEL_32:
  v29 = 0;
LABEL_33:

  return v29;
}

- (uint64_t)_newDescriptorForIOPort:(void *)a3 named:(void *)a4 error:
{
  v7 = a3;
  if (!a1)
  {
    goto LABEL_19;
  }

  v27 = 0;
  if (![VisionCoreE5RTUtils getType:&v27 ofIOPort:a2 error:a4])
  {
    goto LABEL_19;
  }

  if (v27 == 2)
  {
    v8 = v7;
    v33 = 0;
    v9 = e5rt_io_port_retain_surface_desc();
    if (v9)
    {
      if (a4)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    v32 = 0;
    width = e5rt_surface_desc_get_width();
    if (width)
    {
      if (a4)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v31 = 0;
      width = e5rt_surface_desc_get_height();
      if (width)
      {
        if (a4)
        {
          goto LABEL_36;
        }
      }

      else
      {
        LODWORD(v30) = 0;
        width = e5rt_surface_desc_get_format();
        if (width)
        {
          if (a4)
          {
LABEL_36:
            [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:width];
            *a4 = v11 = 0;
LABEL_43:
            e5rt_surface_desc_release();
            goto LABEL_50;
          }
        }

        else
        {
          LODWORD(v29) = 0;
          if ([VisionCoreE5RTUtils getPixelFormatType:&v29 forSurfaceFormat:v30 error:a4])
          {
            v24 = [VisionCoreImageTensorDescriptor alloc];
            v11 = [(VisionCoreImageTensorDescriptor *)v24 initWithName:v8 pixelFormatType:v29 pixelWidth:v32 pixelHeight:v31];
            goto LABEL_43;
          }
        }
      }
    }

    v11 = 0;
    goto LABEL_43;
  }

  if (v27 == 1)
  {
    v8 = v7;
    v33 = 0;
    v9 = e5rt_io_port_retain_tensor_desc();
    if (v9)
    {
      if (a4)
      {
LABEL_7:
        v10 = [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:v9];
LABEL_18:
        v11 = 0;
        *a4 = v10;
        goto LABEL_50;
      }

LABEL_10:
      v11 = 0;
LABEL_50:

      goto LABEL_51;
    }

    v32 = 0;
    if (![VisionCoreE5RTUtils getTensorDataType:&v32 forTensorDescriptor:v33 error:a4])
    {
      goto LABEL_27;
    }

    v30 = 0;
    v31 = 0;
    shape = e5rt_tensor_desc_get_shape();
    if (!shape)
    {
      v18 = [VisionCoreTensorShape alloc];
      v19 = [(VisionCoreTensorShape *)v18 initWithSizes:v30 rank:v31];
      v29 = 0;
      strides = e5rt_tensor_desc_get_strides();
      if (strides)
      {
        if (a4)
        {
          [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:strides];
          *a4 = v11 = 0;
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v21 = [VisionCoreTensorStrides alloc];
        v22 = [(VisionCoreTensorStrides *)v21 initWithByteOffsets:v29 rank:v31];
        v28 = 0;
        size = e5rt_tensor_desc_get_size();
        if (size)
        {
          if (a4)
          {
            [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:size];
            *a4 = v11 = 0;
          }

          else
          {
            v11 = 0;
          }
        }

        else
        {
          v25 = [VisionCoreTensorDescriptor alloc];
          v11 = [(VisionCoreTensorDescriptor *)v25 initWithName:v8 dataType:v32 shape:v19 strides:v22 storageByteCount:v28];
        }
      }

      goto LABEL_49;
    }

    if (a4)
    {
      [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:shape];
      *a4 = v11 = 0;
    }

    else
    {
LABEL_27:
      v11 = 0;
    }

LABEL_49:
    e5rt_tensor_desc_release();
    goto LABEL_50;
  }

  if (a4)
  {
    v12 = objc_alloc(MEMORY[0x1E696AEC0]);
    v13 = @"VisionCoreE5RTIOPortTypeUnknown";
    if (v27 == 1)
    {
      v13 = @"VisionCoreE5RTIOPortTypeTensor";
    }

    if (v27 == 2)
    {
      v14 = @"VisionCoreE5RTIOPortTypeSurface";
    }

    else
    {
      v14 = v13;
    }

    v15 = v14;
    v8 = [v12 initWithFormat:@"unsupported I/O port handle type %@", v15];

    v10 = [MEMORY[0x1E696ABC0] VisionCoreErrorForInternalErrorWithLocalizedDescription:v8];
    goto LABEL_18;
  }

LABEL_19:
  v11 = 0;
LABEL_51:

  return v11;
}

- (id)descriptorsForInputs:(id)a3 error:(id *)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(VisionCoreE5RTFunction *)self descriptorForInput:*(*(&v17 + 1) + 8 * i) error:a4, v17];
        if (!v13)
        {

          v15 = 0;
          goto LABEL_11;
        }

        v14 = v13;
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v15 = v7;
LABEL_11:

  return v15;
}

- (id)descriptorOfClass:(Class)a3 forInput:(id)a4 error:(id *)a5
{
  v8 = a4;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__VisionCoreE5RTFunction_descriptorOfClass_forInput_error___block_invoke;
  v13[3] = &unk_1E8698BC0;
  v13[4] = self;
  v14 = v8;
  v9 = v8;
  v10 = MEMORY[0x1E12C8870](v13);
  v11 = [(VisionCoreE5RTFunction *)self _tensorDescriptorOfClass:a3 providedByBlock:v10 error:a5];

  return v11;
}

- (id)descriptorForInput:(id)a3 error:(id *)a4
{
  v6 = a3;
  [(VisionCoreE5RTFunction *)self _buildDescriptorsCaches];
  v7 = [(NSDictionary *)self->_cachedInputDescriptors objectForKey:v6];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else if (a4)
  {
    v10 = objc_alloc(MEMORY[0x1E696AEC0]);
    v11 = [(VisionCoreE5RTFunction *)self name];
    v12 = [v10 initWithFormat:@"Could not provide a descriptor for %@ input %@", v11, v6];

    *a4 = [MEMORY[0x1E696ABC0] VisionCoreErrorForUnavailableResourceWithLocalizedDescription:v12];
  }

  return v8;
}

- (NSArray)outputs
{
  lazyOutputNames = self->_lazyOutputNames;
  if (!lazyOutputNames)
  {
    v4 = [VisionCoreE5RTUtils stringsForHandle:self->_functionHandle fromCountProc:MEMORY[0x1E699BD38] stringsProc:MEMORY[0x1E699BD28] error:0];
    v5 = [v4 copy];
    v6 = self->_lazyOutputNames;
    self->_lazyOutputNames = v5;

    lazyOutputNames = self->_lazyOutputNames;
  }

  return lazyOutputNames;
}

- (NSArray)inputs
{
  lazyInputNames = self->_lazyInputNames;
  if (!lazyInputNames)
  {
    v4 = [VisionCoreE5RTUtils stringsForHandle:self->_functionHandle fromCountProc:MEMORY[0x1E699BD30] stringsProc:MEMORY[0x1E699BD20] error:0];
    v5 = [v4 copy];
    v6 = self->_lazyInputNames;
    self->_lazyInputNames = v5;

    lazyInputNames = self->_lazyInputNames;
  }

  return lazyInputNames;
}

- (NSDictionary)metadata
{
  v3 = [(VisionCoreE5RTFunction *)self programLibrary];
  v4 = [(VisionCoreE5RTFunction *)self name];
  v5 = [v3 metadataForFunctionNamed:v4 error:0];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F8];
  }

  v7 = v6;

  return v6;
}

- (void)dealloc
{
  if (self->_functionHandle)
  {
    e5rt_program_function_release();
  }

  v3.receiver = self;
  v3.super_class = VisionCoreE5RTFunction;
  [(VisionCoreE5RTFunction *)&v3 dealloc];
}

@end