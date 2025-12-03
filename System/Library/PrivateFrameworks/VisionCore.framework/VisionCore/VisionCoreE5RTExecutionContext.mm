@interface VisionCoreE5RTExecutionContext
+ (id)newContextForFunction:(id)function withConfiguration:(id)configuration error:(id *)error;
- (BOOL)executeAndReturnError:(id *)error;
- (NSArray)inputs;
- (NSArray)outputs;
- (NSString)name;
- (VisionCoreMutableNamedObjects)_executePreflightBindingsWithInputObjects:(void *)objects recordingIOPortHandlesIn:(void *)in error:;
- (id)_initWithOwnedOperationHandle:(e5rt_execution_stream_operation *)handle function:(id)function inputs:(id)inputs outputs:(id)outputs;
- (id)_resolvedCompletionQueue;
- (id)executeWithInputObjects:(id)objects error:(id *)error;
- (uint64_t)_bindIOSurface:(uint64_t)surface toBufferInputPort:(uint64_t)port error:(void *)error;
- (uint64_t)_bindIOSurface:(uint64_t)surface toSurfaceInputPort:(uint64_t)port error:(void *)error;
- (uint64_t)_bindOutput:(void *)output ofOutputObjects:(void *)objects recordingPortHandleIn:(void *)in error:;
- (uint64_t)_validateIsPreboundAndReturnError:(uint64_t)result;
- (unint64_t)_bindData:(void *)data toBufferInputPort:(uint64_t)port error:(unint64_t)error;
- (unint64_t)_bindInput:(void *)input ofInputObjects:(void *)objects recordingPortHandleIn:(void *)in error:;
- (void)_reportError:(void *)error toCompletionHandler:;
- (void)_reportOutput:(void *)output toCompletionHandler:;
- (void)dealloc;
- (void)executeWithCompletionHandler:(id)handler;
- (void)executeWithInputObjects:(id)objects completionHandler:(id)handler;
@end

@implementation VisionCoreE5RTExecutionContext

- (void)executeWithInputObjects:(id)objects completionHandler:(id)handler
{
  handlerCopy = handler;
  objectsCopy = objects;
  v8 = objc_alloc_init(VisionCoreE5RTExecutionBoundPorts);
  v20 = 0;
  v9 = [(VisionCoreE5RTExecutionContext *)self _executePreflightBindingsWithInputObjects:objectsCopy recordingIOPortHandlesIn:v8 error:&v20];

  v10 = v20;
  if (v9)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __76__VisionCoreE5RTExecutionContext_executeWithInputObjects_completionHandler___block_invoke;
    v15[3] = &unk_1E8698928;
    v16 = v8;
    selfCopy = self;
    v18 = v9;
    v11 = handlerCopy;
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
    [(VisionCoreE5RTExecutionContext *)self _reportError:v10 toCompletionHandler:handlerCopy];
  }
}

- (VisionCoreMutableNamedObjects)_executePreflightBindingsWithInputObjects:(void *)objects recordingIOPortHandlesIn:(void *)in error:
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a2;
  objectsCopy = objects;
  if (self)
  {
    if (LOBYTE(self[3].super.super.isa) == 1)
    {
      if (in)
      {
        v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ has pre-bound inputs and outputs", self];
        *in = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidOperationWithLocalizedDescription:v9];
      }

LABEL_8:
      self = 0;
      goto LABEL_35;
    }

    v10 = e5rt_execution_stream_reset();
    if (v10)
    {
      if (in)
      {
        [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:v10];
        *in = self = 0;
        goto LABEL_35;
      }

      goto LABEL_8;
    }

    function = [(VisionCoreMutableNamedObjects *)self function];
    outputs = [function outputs];
    v12 = -[VisionCoreMutableNamedObjects initWithCapacity:]([VisionCoreMutableNamedObjects alloc], "initWithCapacity:", [outputs count]);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v13 = outputs;
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
          v19 = [function descriptorForOutput:v18 error:in];
          v20 = v19;
          if (!v19 || ![v19 E5RTExecutionContextAssignNewTensorInstanceToNamedObjects:v12 error:in])
          {

LABEL_31:
            self = 0;
            v7 = v29;
            goto LABEL_34;
          }

          v21 = [(VisionCoreE5RTExecutionContext *)self _bindOutput:v18 ofOutputObjects:v12 recordingPortHandleIn:objectsCopy error:in];

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

          if (![(VisionCoreE5RTExecutionContext *)self _bindInput:v22 ofInputObjects:objectsCopy recordingPortHandleIn:in error:?])
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
      if (in)
      {
        [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:v27];
        *in = self = 0;
      }

      else
      {
LABEL_33:
        self = 0;
      }
    }

    else
    {
      self = v12;
    }

LABEL_34:
  }

LABEL_35:

  return self;
}

- (void)_reportError:(void *)error toCompletionHandler:
{
  v5 = a2;
  errorCopy = error;
  v7 = errorCopy;
  if (self && errorCopy)
  {
    _resolvedCompletionQueue = [(VisionCoreE5RTExecutionContext *)self _resolvedCompletionQueue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __67__VisionCoreE5RTExecutionContext__reportError_toCompletionHandler___block_invoke;
    v9[3] = &unk_1E86988D8;
    v11 = v7;
    v10 = v5;
    dispatch_async(_resolvedCompletionQueue, v9);
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

- (void)_reportOutput:(void *)output toCompletionHandler:
{
  v5 = a2;
  outputCopy = output;
  v7 = outputCopy;
  if (self && outputCopy)
  {
    _resolvedCompletionQueue = [(VisionCoreE5RTExecutionContext *)self _resolvedCompletionQueue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __68__VisionCoreE5RTExecutionContext__reportOutput_toCompletionHandler___block_invoke;
    v9[3] = &unk_1E86988D8;
    v11 = v7;
    v10 = v5;
    dispatch_async(_resolvedCompletionQueue, v9);
  }
}

- (id)_resolvedCompletionQueue
{
  v1 = *(self + 72);
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

- (uint64_t)_bindOutput:(void *)output ofOutputObjects:(void *)objects recordingPortHandleIn:(void *)in error:
{
  v8 = a2;
  outputCopy = output;
  objectsCopy = objects;
  v22 = 0;
  [v8 UTF8String];
  v11 = e5rt_execution_stream_operation_retain_output_port();
  if (!v11)
  {
    if (([objectsCopy recordPort:v22 named:v8 error:in] & 1) == 0)
    {
      e5rt_io_port_release();
      goto LABEL_16;
    }

    v21 = 0;
    if ([VisionCoreE5RTUtils getType:&v21 ofIOPort:v22 error:in])
    {
      if (v21 == 2)
      {
        v14 = v8;
        v15 = outputCopy;
        if (![v15 surfaceAssociatedWithName:v14 error:in])
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
            if (in)
            {
              *in = [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:v20];
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
        v15 = outputCopy;
        if (![v15 surfaceAssociatedWithName:v14 error:in])
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
            if (in)
            {
              *in = [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:v17];
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
        if (in)
        {
          [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:v16];
          *in = v13 = 0;
LABEL_34:

          goto LABEL_17;
        }

LABEL_22:
        v13 = 0;
        goto LABEL_34;
      }

      if (in)
      {
        v12 = [MEMORY[0x1E696ABC0] VisionCoreErrorForUnsupportedE5RTIOPortType:?];
        goto LABEL_4;
      }
    }

LABEL_16:
    v13 = 0;
    goto LABEL_17;
  }

  if (!in)
  {
    goto LABEL_16;
  }

  v12 = [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:v11];
LABEL_4:
  v13 = 0;
  *in = v12;
LABEL_17:

  return v13 & 1;
}

- (unint64_t)_bindInput:(void *)input ofInputObjects:(void *)objects recordingPortHandleIn:(void *)in error:
{
  v8 = a2;
  inputCopy = input;
  objectsCopy = objects;
  v21 = 0;
  [v8 UTF8String];
  v11 = e5rt_execution_stream_operation_retain_input_port();
  if (v11)
  {
    if (in)
    {
      v12 = [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:v11];
LABEL_4:
      v13 = 0;
      *in = v12;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (([objectsCopy recordPort:v21 named:v8 error:in] & 1) == 0)
  {
    e5rt_io_port_release();
    goto LABEL_12;
  }

  v20 = 0;
  if (![VisionCoreE5RTUtils getType:&v20 ofIOPort:v21 error:in])
  {
    goto LABEL_12;
  }

  if (v20 != 1)
  {
    if (v20 == 2)
    {
      v14 = [inputCopy surfaceAssociatedWithName:v8 error:in];
      if (!v14)
      {
        goto LABEL_12;
      }

      v15 = [VisionCoreE5RTExecutionContext _bindIOSurface:v14 toSurfaceInputPort:v21 error:in];
LABEL_16:
      v13 = v15;
      goto LABEL_13;
    }

    if (in)
    {
      v12 = [MEMORY[0x1E696ABC0] VisionCoreErrorForUnsupportedE5RTIOPortType:?];
      goto LABEL_4;
    }

LABEL_12:
    v13 = 0;
    goto LABEL_13;
  }

  v17 = [inputCopy surfaceAssociatedWithName:v8 error:in];
  if (v17)
  {
    v15 = [VisionCoreE5RTExecutionContext _bindIOSurface:v17 toBufferInputPort:v21 error:in];
    goto LABEL_16;
  }

  v18 = [inputCopy dataForName:v8 error:in];
  v19 = v18;
  if (v18)
  {
    v13 = [VisionCoreE5RTExecutionContext _bindData:v18 toBufferInputPort:v21 error:in];
  }

  else
  {
    v13 = 0;
  }

LABEL_13:
  return v13;
}

- (uint64_t)_bindIOSurface:(uint64_t)surface toSurfaceInputPort:(uint64_t)port error:(void *)error
{
  v4 = e5rt_surface_object_create_from_iosurface();
  if (v4)
  {
    if (error)
    {
      v5 = [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:{v4, 0}];
      v6 = 0;
      *error = v5;
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
      if (error)
      {
        *error = [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:{v7, 0}];
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

- (uint64_t)_bindIOSurface:(uint64_t)surface toBufferInputPort:(uint64_t)port error:(void *)error
{
  v4 = e5rt_buffer_object_create_from_iosurface();
  if (v4)
  {
    if (error)
    {
      v5 = [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:{v4, 0}];
      v6 = 0;
      *error = v5;
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
      if (error)
      {
        *error = [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:{v7, 0}];
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

- (unint64_t)_bindData:(void *)data toBufferInputPort:(uint64_t)port error:(unint64_t)error
{
  v19[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v6 = [dataCopy length];
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
    v15 = dataCopy;
    v16 = v6;
    v10 = MEMORY[0x1E12C8870](v14);
    if (VisionCorePerformWithLockedIOSurface(v9, 0, v10, error))
    {
      v11 = [VisionCoreE5RTExecutionContext _bindIOSurface:v9 toBufferInputPort:port error:error];
    }

    else
    {
      v11 = 0;
    }

    v17 = v11;

    CFRelease(v9);
    error = v17;
  }

  else if (error)
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Could not create IOSurfaceRef with properties %@", v8];
    *error = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidOperationWithLocalizedDescription:v12];

    error = 0;
  }

  return error;
}

uint64_t __68__VisionCoreE5RTExecutionContext__bindData_toBufferInputPort_error___block_invoke(uint64_t a1, IOSurfaceRef buffer)
{
  BaseAddress = IOSurfaceGetBaseAddress(buffer);
  memcpy(BaseAddress, [*(a1 + 32) bytes], *(a1 + 40));
  return 1;
}

- (id)executeWithInputObjects:(id)objects error:(id *)error
{
  objectsCopy = objects;
  v7 = objc_alloc_init(VisionCoreE5RTExecutionBoundPorts);
  v8 = [(VisionCoreE5RTExecutionContext *)self _executePreflightBindingsWithInputObjects:objectsCopy recordingIOPortHandlesIn:v7 error:error];
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = e5rt_execution_stream_execute_sync();
  if (error && v9)
  {
    [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:v9];
    *error = v10 = 0;
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

- (void)executeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
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
    selfCopy = self;
    v8 = v7;
    v18 = v8;
    v9 = handlerCopy;
    v19 = v9;
    v10 = MEMORY[0x1E12C8870](&v13);
    v11 = e5rt_execution_stream_submit_async();
    if (v11)
    {
      v12 = [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:{v11, v13, v14, v15, v16, selfCopy, v18}];

      [(VisionCoreE5RTExecutionContext *)self _reportError:v12 toCompletionHandler:v9];
      v6 = v12;
    }
  }

  else
  {
    [(VisionCoreE5RTExecutionContext *)self _reportError:v6 toCompletionHandler:handlerCopy];
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
        result = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ does not have pre-bound inputs and outputs", result];
        *a2 = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidOperationWithLocalizedDescription:result];
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

- (BOOL)executeAndReturnError:(id *)error
{
  LODWORD(v4) = [(VisionCoreE5RTExecutionContext *)self _validateIsPreboundAndReturnError:error];
  if (v4)
  {
    v5 = e5rt_execution_stream_execute_sync();
    LOBYTE(v4) = v5 == 0;
    if (error)
    {
      if (v5)
      {
        v6 = [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:?];
        v4 = v6;
        LOBYTE(v4) = 0;
        *error = v6;
      }
    }
  }

  return v4;
}

- (NSArray)outputs
{
  function = [(VisionCoreE5RTExecutionContext *)self function];
  outputs = [function outputs];

  return outputs;
}

- (NSArray)inputs
{
  function = [(VisionCoreE5RTExecutionContext *)self function];
  inputs = [function inputs];

  return inputs;
}

- (NSString)name
{
  function = [(VisionCoreE5RTExecutionContext *)self function];
  programLibrary = [function programLibrary];
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = [programLibrary URL];
  path = [v5 path];
  name = [function name];
  v8 = [v4 initWithFormat:@"%@.%@", path, name];

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

- (id)_initWithOwnedOperationHandle:(e5rt_execution_stream_operation *)handle function:(id)function inputs:(id)inputs outputs:(id)outputs
{
  functionCopy = function;
  inputsCopy = inputs;
  outputsCopy = outputs;
  v21.receiver = self;
  v21.super_class = VisionCoreE5RTExecutionContext;
  v14 = [(VisionCoreE5RTExecutionContext *)&v21 init];
  if (v14)
  {
    v15 = [inputsCopy copy];
    boundInputObjects = v14->_boundInputObjects;
    v14->_boundInputObjects = v15;

    v17 = [outputsCopy copy];
    boundOutputObjects = v14->_boundOutputObjects;
    v14->_boundOutputObjects = v17;

    v19 = v14->_boundInputObjects;
    if (v19)
    {
      LOBYTE(v19) = v14->_boundOutputObjects != 0;
    }

    v14->_isPrebound = v19;
    objc_storeStrong(&v14->_function, function);
    v14->_executionStreamOperationHandle = *handle;
    *handle = 0;
  }

  return v14;
}

+ (id)newContextForFunction:(id)function withConfiguration:(id)configuration error:(id *)error
{
  v50 = *MEMORY[0x1E69E9840];
  functionCopy = function;
  configurationCopy = configuration;
  v10 = _VisionCoreSignpostLog();
  if (os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DECDA000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "VisionCoreE5RTCreateFunctionExecutionContext", &unk_1DED1344A, buf, 2u);
  }

  boundInputObjects = [configurationCopy boundInputObjects];
  boundOutputObjects = [configurationCopy boundOutputObjects];
  v13 = boundOutputObjects;
  if (!boundInputObjects && boundOutputObjects || boundInputObjects && !boundOutputObjects)
  {
    if (error)
    {
      [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:@"bound input and output objects must be both defined or both nil"];
      *error = v14 = 0;
      goto LABEL_51;
    }

LABEL_35:
    v14 = 0;
    goto LABEL_51;
  }

  acquireExecutionStreamOperationHandle = 0;
  prewarmedState = [configurationCopy prewarmedState];
  v16 = prewarmedState == 0;

  if (!v16)
  {
    prewarmedState2 = [configurationCopy prewarmedState];
    acquireExecutionStreamOperationHandle = [prewarmedState2 acquireExecutionStreamOperationHandle];
  }

  if (!acquireExecutionStreamOperationHandle)
  {
    acquireExecutionStreamOperationHandle = [functionCopy createOperationExecutionStreamWithError:error];
    if (!acquireExecutionStreamOperationHandle)
    {
      goto LABEL_35;
    }
  }

  v18 = [[self alloc] _initWithOwnedOperationHandle:&acquireExecutionStreamOperationHandle function:functionCopy inputs:boundInputObjects outputs:v13];
  if (!v18)
  {
    if (error)
    {
      functionCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unable to create execution context for %@", functionCopy];
      *error = [MEMORY[0x1E696ABC0] VisionCoreErrorForMemoryAllocationFailureWithLocalizedDescription:functionCopy];
    }

    goto LABEL_45;
  }

  v19 = configurationCopy;
  completionQueue = [v19 completionQueue];
  v21 = *(v18 + 72);
  *(v18 + 72) = completionQueue;

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

        if (([(VisionCoreE5RTExecutionContext *)v18 _bindInput:*(v18 + 32) ofInputObjects:*(v18 + 56) recordingPortHandleIn:error error:?]& 1) == 0)
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

        if (([(VisionCoreE5RTExecutionContext *)v18 _bindOutput:*(v18 + 40) ofOutputObjects:*(v18 + 64) recordingPortHandleIn:error error:?]& 1) == 0)
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
      if (!error)
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

    if (!error)
    {
      goto LABEL_44;
    }

LABEL_34:
    *error = [MEMORY[0x1E696ABC0] VisionCoreErrorForE5RTLastErrorMessageAndCode:v33];
    goto LABEL_44;
  }

  if (error)
  {
    goto LABEL_34;
  }

LABEL_44:

LABEL_45:
  v14 = 0;
LABEL_46:

  if (acquireExecutionStreamOperationHandle)
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