@interface VisionCoreE5RTExecutionContext
+ (id)newContextForFunction:(id)a3 withConfiguration:(id)a4 error:(id *)a5;
- (BOOL)executeAndReturnError:(id *)a3;
- (NSArray)inputs;
- (NSArray)outputs;
- (NSString)name;
- (VisionCoreMutableNamedObjects)_executePreflightBindingsWithInputObjects:(void *)a3 recordingIOPortHandlesIn:(void *)a4 error:;
- (id)_initWithOwnedOperationHandle:(e5rt_execution_stream_operation *)a3 function:(id)a4 inputs:(id)a5 outputs:(id)a6;
- (id)_resolvedCompletionQueue;
- (id)executeWithInputObjects:(id)a3 error:(id *)a4;
- (uint64_t)_bindIOSurface:(uint64_t)a1 toBufferInputPort:(uint64_t)a2 error:(void *)a3;
- (uint64_t)_bindIOSurface:(uint64_t)a1 toSurfaceInputPort:(uint64_t)a2 error:(void *)a3;
- (uint64_t)_bindOutput:(void *)a3 ofOutputObjects:(void *)a4 recordingPortHandleIn:(void *)a5 error:;
- (uint64_t)_validateIsPreboundAndReturnError:(uint64_t)result;
- (unint64_t)_bindData:(void *)a1 toBufferInputPort:(uint64_t)a2 error:(unint64_t)a3;
- (unint64_t)_bindInput:(void *)a3 ofInputObjects:(void *)a4 recordingPortHandleIn:(void *)a5 error:;
- (void)_reportError:(void *)a3 toCompletionHandler:;
- (void)_reportOutput:(void *)a3 toCompletionHandler:;
- (void)dealloc;
- (void)executeWithCompletionHandler:(id)a3;
- (void)executeWithInputObjects:(id)a3 completionHandler:(id)a4;
@end

@implementation VisionCoreE5RTExecutionContext

- (void)executeWithInputObjects:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(VisionCoreE5RTExecutionBoundPorts);
  v20 = 0;
  v9 = [(VisionCoreE5RTExecutionContext *)self _executePreflightBindingsWithInputObjects:v7 recordingIOPortHandlesIn:v8 error:&v20];

  v10 = v20;
  if (v9)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __76__VisionCoreE5RTExecutionContext_executeWithInputObjects_completionHandler___block_invoke;
    v15[3] = &unk_1E8698928;
    v16 = v8;
    v17 = self;
    v18 = v9;
    v11 = v6;
    v19 = v11;
    v12 = MEMORY[0x1E12C8870](v15);
    v13 = e5rt_execution_stream_submit_async();
    if (v13)
    {
      v14 = [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:v13];

      [(VisionCoreE5RTExecutionContext *)self _reportError:v14 toCompletionHandler:v11];
      v10 = v14;
    }
  }

  else
  {
    [(VisionCoreE5RTExecutionContext *)self _reportError:v10 toCompletionHandler:v6];
  }
}

- (VisionCoreMutableNamedObjects)_executePreflightBindingsWithInputObjects:(void *)a3 recordingIOPortHandlesIn:(void *)a4 error:
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    if (LOBYTE(a1[3].super.super.isa) == 1)
    {
      if (a4)
      {
        v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ has pre-bound inputs and outputs", a1];
        *a4 = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidOperationWithLocalizedDescription:v9];
      }

LABEL_8:
      a1 = 0;
      goto LABEL_35;
    }

    v10 = e5rt_execution_stream_reset();
    if (v10)
    {
      if (a4)
      {
        [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:v10];
        *a4 = a1 = 0;
        goto LABEL_35;
      }

      goto LABEL_8;
    }

    v30 = [(VisionCoreMutableNamedObjects *)a1 function];
    v11 = [v30 outputs];
    v12 = -[VisionCoreMutableNamedObjects initWithCapacity:]([VisionCoreMutableNamedObjects alloc], "initWithCapacity:", [v11 count]);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v36;
      v29 = v7;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v36 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v35 + 1) + 8 * i);
          v19 = [v30 descriptorForOutput:v18 error:a4];
          v20 = v19;
          if (!v19 || ![v19 E5RTExecutionContextAssignNewTensorInstanceToNamedObjects:v12 error:a4])
          {

LABEL_31:
            a1 = 0;
            v7 = v29;
            goto LABEL_34;
          }

          v21 = [(VisionCoreE5RTExecutionContext *)a1 _bindOutput:v18 ofOutputObjects:v12 recordingPortHandleIn:v8 error:a4];

          if (!v21)
          {
            goto LABEL_31;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v35 objects:v40 count:16];
        v7 = v29;
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v22 = v7;
    v23 = [v22 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v32;
      while (2)
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v32 != v25)
          {
            objc_enumerationMutation(v22);
          }

          if (![(VisionCoreE5RTExecutionContext *)a1 _bindInput:v22 ofInputObjects:v8 recordingPortHandleIn:a4 error:?])
          {

            goto LABEL_33;
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }
    }

    v27 = e5rt_execution_stream_encode_operation();
    if (v27)
    {
      if (a4)
      {
        [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:v27];
        *a4 = a1 = 0;
      }

      else
      {
LABEL_33:
        a1 = 0;
      }
    }

    else
    {
      a1 = v12;
    }

LABEL_34:
  }

LABEL_35:

  return a1;
}

- (void)_reportError:(void *)a3 toCompletionHandler:
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1 && v6)
  {
    v8 = [(VisionCoreE5RTExecutionContext *)a1 _resolvedCompletionQueue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __67__VisionCoreE5RTExecutionContext__reportError_toCompletionHandler___block_invoke;
    v9[3] = &unk_1E86988D8;
    v11 = v7;
    v10 = v5;
    dispatch_async(v8, v9);
  }
}

void __76__VisionCoreE5RTExecutionContext_executeWithInputObjects_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v17 = v5;
  if (a4)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = v5;
    v9 = [v7 alloc];
    v10 = [*(a1 + 40) name];
    v11 = [v9 initWithFormat:@"%@ failed execution", v10];

    v12 = [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTErrorCode:a4 localizedDescription:v11];
    [(VisionCoreE5RTExecutionContext *)*(a1 + 40) _reportError:v12 toCompletionHandler:*(a1 + 56)];
  }

  else
  {
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    v16 = v5;
    [(VisionCoreE5RTExecutionContext *)v13 _reportOutput:v14 toCompletionHandler:v15];
  }
}

- (void)_reportOutput:(void *)a3 toCompletionHandler:
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1 && v6)
  {
    v8 = [(VisionCoreE5RTExecutionContext *)a1 _resolvedCompletionQueue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __68__VisionCoreE5RTExecutionContext__reportOutput_toCompletionHandler___block_invoke;
    v9[3] = &unk_1E86988D8;
    v11 = v7;
    v10 = v5;
    dispatch_async(v8, v9);
  }
}

- (id)_resolvedCompletionQueue
{
  v1 = *(a1 + 72);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v3 = qos_class_self();
    v2 = dispatch_get_global_queue(v3, 0);
  }

  return v2;
}

- (uint64_t)_bindOutput:(void *)a3 ofOutputObjects:(void *)a4 recordingPortHandleIn:(void *)a5 error:
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v22 = 0;
  [v8 UTF8String];
  v11 = e5rt_execution_stream_operation_retain_output_port();
  if (!v11)
  {
    if (([v10 recordPort:v22 named:v8 error:a5] & 1) == 0)
    {
      e5rt_io_port_release();
      goto LABEL_16;
    }

    v21 = 0;
    if ([VisionCoreE5RTUtils getType:&v21 ofIOPort:v22 error:a5])
    {
      if (v21 == 2)
      {
        v14 = v8;
        v15 = v9;
        if (![v15 surfaceAssociatedWithName:v14 error:a5])
        {
          goto LABEL_22;
        }

        v23 = 0;
        v16 = e5rt_surface_object_create_from_iosurface();
        if (!v16)
        {
          v20 = e5rt_io_port_bind_surface_object();
          if (v20)
          {
            if (a5)
            {
              *a5 = [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:v20];
            }

            v18 = 0;
            v24 = 0;
          }

          else
          {
            v18 = 1;
          }

          e5rt_surface_object_release();
          goto LABEL_33;
        }

        goto LABEL_20;
      }

      if (v21 == 1)
      {
        v14 = v8;
        v15 = v9;
        if (![v15 surfaceAssociatedWithName:v14 error:a5])
        {
          goto LABEL_22;
        }

        v23 = 0;
        v16 = e5rt_buffer_object_create_from_iosurface();
        if (!v16)
        {
          v17 = e5rt_io_port_bind_buffer_object();
          if (v17)
          {
            if (a5)
            {
              *a5 = [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:v17];
            }

            v18 = 0;
            v24 = 0;
          }

          else
          {
            v18 = 1;
          }

          e5rt_buffer_object_release();
LABEL_33:
          v13 = v18 | v24;
          goto LABEL_34;
        }

LABEL_20:
        if (a5)
        {
          [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:v16];
          *a5 = v13 = 0;
LABEL_34:

          goto LABEL_17;
        }

LABEL_22:
        v13 = 0;
        goto LABEL_34;
      }

      if (a5)
      {
        v12 = [MEMORY[0x1E696ABC0] VisionCoreErrorForUnsupportedE5RTIOPortType:?];
        goto LABEL_4;
      }
    }

LABEL_16:
    v13 = 0;
    goto LABEL_17;
  }

  if (!a5)
  {
    goto LABEL_16;
  }

  v12 = [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:v11];
LABEL_4:
  v13 = 0;
  *a5 = v12;
LABEL_17:

  return v13 & 1;
}

- (unint64_t)_bindInput:(void *)a3 ofInputObjects:(void *)a4 recordingPortHandleIn:(void *)a5 error:
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v21 = 0;
  [v8 UTF8String];
  v11 = e5rt_execution_stream_operation_retain_input_port();
  if (v11)
  {
    if (a5)
    {
      v12 = [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:v11];
LABEL_4:
      v13 = 0;
      *a5 = v12;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (([v10 recordPort:v21 named:v8 error:a5] & 1) == 0)
  {
    e5rt_io_port_release();
    goto LABEL_12;
  }

  v20 = 0;
  if (![VisionCoreE5RTUtils getType:&v20 ofIOPort:v21 error:a5])
  {
    goto LABEL_12;
  }

  if (v20 != 1)
  {
    if (v20 == 2)
    {
      v14 = [v9 surfaceAssociatedWithName:v8 error:a5];
      if (!v14)
      {
        goto LABEL_12;
      }

      v15 = [VisionCoreE5RTExecutionContext _bindIOSurface:v14 toSurfaceInputPort:v21 error:a5];
LABEL_16:
      v13 = v15;
      goto LABEL_13;
    }

    if (a5)
    {
      v12 = [MEMORY[0x1E696ABC0] VisionCoreErrorForUnsupportedE5RTIOPortType:?];
      goto LABEL_4;
    }

LABEL_12:
    v13 = 0;
    goto LABEL_13;
  }

  v17 = [v9 surfaceAssociatedWithName:v8 error:a5];
  if (v17)
  {
    v15 = [VisionCoreE5RTExecutionContext _bindIOSurface:v17 toBufferInputPort:v21 error:a5];
    goto LABEL_16;
  }

  v18 = [v9 dataForName:v8 error:a5];
  v19 = v18;
  if (v18)
  {
    v13 = [VisionCoreE5RTExecutionContext _bindData:v18 toBufferInputPort:v21 error:a5];
  }

  else
  {
    v13 = 0;
  }

LABEL_13:
  return v13;
}

- (uint64_t)_bindIOSurface:(uint64_t)a1 toSurfaceInputPort:(uint64_t)a2 error:(void *)a3
{
  v4 = e5rt_surface_object_create_from_iosurface();
  if (v4)
  {
    if (a3)
    {
      v5 = [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:{v4, 0}];
      v6 = 0;
      *a3 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v7 = e5rt_io_port_bind_surface_object();
    if (v7)
    {
      if (a3)
      {
        *a3 = [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:{v7, 0}];
      }

      v8 = 0;
      v10 = 0;
    }

    else
    {
      v8 = 1;
    }

    e5rt_surface_object_release();
    v6 = v8 | v10;
  }

  return v6 & 1;
}

- (uint64_t)_bindIOSurface:(uint64_t)a1 toBufferInputPort:(uint64_t)a2 error:(void *)a3
{
  v4 = e5rt_buffer_object_create_from_iosurface();
  if (v4)
  {
    if (a3)
    {
      v5 = [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:{v4, 0}];
      v6 = 0;
      *a3 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v7 = e5rt_io_port_bind_buffer_object();
    if (v7)
    {
      if (a3)
      {
        *a3 = [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:{v7, 0}];
      }

      v8 = 0;
      v10 = 0;
    }

    else
    {
      v8 = 1;
    }

    e5rt_buffer_object_release();
    v6 = v8 | v10;
  }

  return v6 & 1;
}

- (unint64_t)_bindData:(void *)a1 toBufferInputPort:(uint64_t)a2 error:(unint64_t)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [v5 length];
  v18 = *MEMORY[0x1E696CE30];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6];
  v19[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];

  v9 = IOSurfaceCreate(v8);
  if (v9)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __68__VisionCoreE5RTExecutionContext__bindData_toBufferInputPort_error___block_invoke;
    v14[3] = &unk_1E86988B0;
    v15 = v5;
    v16 = v6;
    v10 = MEMORY[0x1E12C8870](v14);
    if (VisionCorePerformWithLockedIOSurface(v9, 0, v10, a3))
    {
      v11 = [VisionCoreE5RTExecutionContext _bindIOSurface:v9 toBufferInputPort:a2 error:a3];
    }

    else
    {
      v11 = 0;
    }

    v17 = v11;

    CFRelease(v9);
    a3 = v17;
  }

  else if (a3)
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Could not create IOSurfaceRef with properties %@", v8];
    *a3 = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidOperationWithLocalizedDescription:v12];

    a3 = 0;
  }

  return a3;
}

uint64_t __68__VisionCoreE5RTExecutionContext__bindData_toBufferInputPort_error___block_invoke(uint64_t a1, IOSurfaceRef buffer)
{
  BaseAddress = IOSurfaceGetBaseAddress(buffer);
  memcpy(BaseAddress, [*(a1 + 32) bytes], *(a1 + 40));
  return 1;
}

- (id)executeWithInputObjects:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(VisionCoreE5RTExecutionBoundPorts);
  v8 = [(VisionCoreE5RTExecutionContext *)self _executePreflightBindingsWithInputObjects:v6 recordingIOPortHandlesIn:v7 error:a4];
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = e5rt_execution_stream_execute_sync();
  if (a4 && v9)
  {
    [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:v9];
    *a4 = v10 = 0;
    goto LABEL_7;
  }

  if (!v9)
  {
    v10 = v8;
  }

  else
  {
LABEL_6:
    v10 = 0;
  }

LABEL_7:

  return v10;
}

- (void)executeWithCompletionHandler:(id)a3
{
  v4 = a3;
  v20 = 0;
  v5 = [(VisionCoreE5RTExecutionContext *)self _validateIsPreboundAndReturnError:?];
  v6 = v20;
  if (v5)
  {
    v7 = [(VisionCoreNamedObjects *)self->_boundOutputObjects copy];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __63__VisionCoreE5RTExecutionContext_executeWithCompletionHandler___block_invoke;
    v16 = &unk_1E8698900;
    v17 = self;
    v8 = v7;
    v18 = v8;
    v9 = v4;
    v19 = v9;
    v10 = MEMORY[0x1E12C8870](&v13);
    v11 = e5rt_execution_stream_submit_async();
    if (v11)
    {
      v12 = [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:{v11, v13, v14, v15, v16, v17, v18}];

      [(VisionCoreE5RTExecutionContext *)self _reportError:v12 toCompletionHandler:v9];
      v6 = v12;
    }
  }

  else
  {
    [(VisionCoreE5RTExecutionContext *)self _reportError:v6 toCompletionHandler:v4];
  }
}

- (uint64_t)_validateIsPreboundAndReturnError:(uint64_t)result
{
  if (result)
  {
    if (*(result + 48))
    {
      return 1;
    }

    else
    {
      if (a2)
      {
        v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ does not have pre-bound inputs and outputs", result];
        *a2 = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidOperationWithLocalizedDescription:v3];
      }

      return 0;
    }
  }

  return result;
}

void __63__VisionCoreE5RTExecutionContext_executeWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = [*(a1 + 32) name];
    v12 = [v6 initWithFormat:@"%@ failed execution", v7];

    v8 = [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTErrorCode:a4 localizedDescription:v12];
    [(VisionCoreE5RTExecutionContext *)*(a1 + 32) _reportError:v8 toCompletionHandler:*(a1 + 48)];
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);

    [(VisionCoreE5RTExecutionContext *)v9 _reportOutput:v10 toCompletionHandler:v11];
  }
}

- (BOOL)executeAndReturnError:(id *)a3
{
  LODWORD(v4) = [(VisionCoreE5RTExecutionContext *)self _validateIsPreboundAndReturnError:a3];
  if (v4)
  {
    v5 = e5rt_execution_stream_execute_sync();
    LOBYTE(v4) = v5 == 0;
    if (a3)
    {
      if (v5)
      {
        v6 = [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:?];
        v4 = v6;
        LOBYTE(v4) = 0;
        *a3 = v6;
      }
    }
  }

  return v4;
}

- (NSArray)outputs
{
  v2 = [(VisionCoreE5RTExecutionContext *)self function];
  v3 = [v2 outputs];

  return v3;
}

- (NSArray)inputs
{
  v2 = [(VisionCoreE5RTExecutionContext *)self function];
  v3 = [v2 inputs];

  return v3;
}

- (NSString)name
{
  v2 = [(VisionCoreE5RTExecutionContext *)self function];
  v3 = [v2 programLibrary];
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = [v3 URL];
  v6 = [v5 path];
  v7 = [v2 name];
  v8 = [v4 initWithFormat:@"%@.%@", v6, v7];

  return v8;
}

- (void)dealloc
{
  if (self->_executionStreamHandle)
  {
    e5rt_execution_stream_reset();
    e5rt_execution_stream_release();
  }

  if (self->_executionStreamOperationHandle)
  {
    e5rt_execution_stream_operation_release();
  }

  v3.receiver = self;
  v3.super_class = VisionCoreE5RTExecutionContext;
  [(VisionCoreE5RTExecutionContext *)&v3 dealloc];
}

- (id)_initWithOwnedOperationHandle:(e5rt_execution_stream_operation *)a3 function:(id)a4 inputs:(id)a5 outputs:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v21.receiver = self;
  v21.super_class = VisionCoreE5RTExecutionContext;
  v14 = [(VisionCoreE5RTExecutionContext *)&v21 init];
  if (v14)
  {
    v15 = [v12 copy];
    boundInputObjects = v14->_boundInputObjects;
    v14->_boundInputObjects = v15;

    v17 = [v13 copy];
    boundOutputObjects = v14->_boundOutputObjects;
    v14->_boundOutputObjects = v17;

    v19 = v14->_boundInputObjects;
    if (v19)
    {
      LOBYTE(v19) = v14->_boundOutputObjects != 0;
    }

    v14->_isPrebound = v19;
    objc_storeStrong(&v14->_function, a4);
    v14->_executionStreamOperationHandle = *a3;
    *a3 = 0;
  }

  return v14;
}

+ (id)newContextForFunction:(id)a3 withConfiguration:(id)a4 error:(id *)a5
{
  v50 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = _VisionCoreSignpostLog();
  if (os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DECDA000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "VisionCoreE5RTCreateFunctionExecutionContext", &unk_1DED1344A, buf, 2u);
  }

  v11 = [v9 boundInputObjects];
  v12 = [v9 boundOutputObjects];
  v13 = v12;
  if (!v11 && v12 || v11 && !v12)
  {
    if (a5)
    {
      [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:@"bound input and output objects must be both defined or both nil"];
      *a5 = v14 = 0;
      goto LABEL_51;
    }

LABEL_35:
    v14 = 0;
    goto LABEL_51;
  }

  v39 = 0;
  v15 = [v9 prewarmedState];
  v16 = v15 == 0;

  if (!v16)
  {
    v17 = [v9 prewarmedState];
    v39 = [v17 acquireExecutionStreamOperationHandle];
  }

  if (!v39)
  {
    v39 = [v8 createOperationExecutionStreamWithError:a5];
    if (!v39)
    {
      goto LABEL_35;
    }
  }

  v18 = [[a1 alloc] _initWithOwnedOperationHandle:&v39 function:v8 inputs:v11 outputs:v13];
  if (!v18)
  {
    if (a5)
    {
      v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unable to create execution context for %@", v8];
      *a5 = [MEMORY[0x1E696ABC0] VisionCoreErrorForMemoryAllocationFailureWithLocalizedDescription:v34];
    }

    goto LABEL_45;
  }

  v19 = v9;
  v20 = [v19 completionQueue];
  v21 = *(v18 + 72);
  *(v18 + 72) = v20;

  if (*(v18 + 48) == 1)
  {
    v22 = objc_alloc_init(VisionCoreE5RTExecutionBoundPorts);
    v23 = *(v18 + 56);
    *(v18 + 56) = v22;

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v24 = *(v18 + 32);
    v25 = [v24 countByEnumeratingWithState:&v44 objects:buf count:16];
    v37 = v19;
    if (v25)
    {
      v26 = *v45;
LABEL_17:
      v27 = 0;
      while (1)
      {
        if (*v45 != v26)
        {
          objc_enumerationMutation(v24);
        }

        if (([(VisionCoreE5RTExecutionContext *)v18 _bindInput:*(v18 + 32) ofInputObjects:*(v18 + 56) recordingPortHandleIn:a5 error:?]& 1) == 0)
        {
          goto LABEL_43;
        }

        if (v25 == ++v27)
        {
          v25 = [v24 countByEnumeratingWithState:&v44 objects:buf count:16];
          if (v25)
          {
            goto LABEL_17;
          }

          break;
        }
      }
    }

    v28 = objc_alloc_init(VisionCoreE5RTExecutionBoundPorts);
    v29 = *(v18 + 64);
    *(v18 + 64) = v28;

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v24 = *(v18 + 40);
    v30 = [v24 countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v30)
    {
      v31 = *v41;
LABEL_25:
      v32 = 0;
      while (1)
      {
        if (*v41 != v31)
        {
          objc_enumerationMutation(v24);
        }

        if (([(VisionCoreE5RTExecutionContext *)v18 _bindOutput:*(v18 + 40) ofOutputObjects:*(v18 + 64) recordingPortHandleIn:a5 error:?]& 1) == 0)
        {
          break;
        }

        if (v30 == ++v32)
        {
          v30 = [v24 countByEnumeratingWithState:&v40 objects:v48 count:16];
          if (v30)
          {
            goto LABEL_25;
          }

          goto LABEL_31;
        }
      }

LABEL_43:

      v19 = v37;
      goto LABEL_44;
    }

LABEL_31:

    v19 = v37;
  }

  v33 = e5rt_execution_stream_create();
  if (!v33)
  {
    if (*(v18 + 48) != 1)
    {
      goto LABEL_56;
    }

    v33 = e5rt_execution_stream_encode_operation();
    if (v33)
    {
      if (!a5)
      {
        goto LABEL_44;
      }

      goto LABEL_34;
    }

    if (![v19 prewireInUseAllocations] || (v33 = e5rt_execution_stream_prewire_in_use_allocations(), !v33))
    {
LABEL_56:

      v14 = v18;
      goto LABEL_46;
    }

    if (!a5)
    {
      goto LABEL_44;
    }

LABEL_34:
    *a5 = [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:v33];
    goto LABEL_44;
  }

  if (a5)
  {
    goto LABEL_34;
  }

LABEL_44:

LABEL_45:
  v14 = 0;
LABEL_46:

  if (v39)
  {
    e5rt_execution_stream_operation_release();
  }

  v35 = _VisionCoreSignpostLog();
  if (os_signpost_enabled(v35))
  {
    *v38 = 0;
    _os_signpost_emit_with_name_impl(&dword_1DECDA000, v35, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "VisionCoreE5RTCreateFunctionExecutionContext", &unk_1DED1344A, v38, 2u);
  }

LABEL_51:
  return v14;
}

@end