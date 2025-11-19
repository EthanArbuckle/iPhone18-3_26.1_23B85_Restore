@interface CRTextDetectorModelV3E5MLExecutionContext
- (BOOL)prebindInputImageSurface:(__IOSurface *)a3 error:(id *)a4;
- (id)predictionFromImage:(__CVBuffer *)a3 error:(id *)a4;
- (id)predictionFromPreboundInputsWithError:(id *)a3;
- (void)predictOutputFromPreboundInputsAsync:(id)a3;
@end

@implementation CRTextDetectorModelV3E5MLExecutionContext

- (id)predictionFromImage:(__CVBuffer *)a3 error:(id *)a4
{
  v5 = a3;
  IOSurface = CVPixelBufferGetIOSurface(a3);
  if (!IOSurface)
  {
    v8 = CROSLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *v16 = 0;
      _os_log_impl(&dword_1B40D2000, v8, OS_LOG_TYPE_DEBUG, "CRTextDetectorModelV3E5ML input pixel buffer is not IOSurface backed, creating IOSurface backing. Consider passing in an IOSurface-backed pixel buffer to avoid this overhead.", v16, 2u);
    }

    v5 = CRCreateIOSurfacePixelBufferFromPixelBuffer(v5);
  }

  v9 = [(CRE5MLExecutionContext *)self functionDescriptor];
  v10 = [CRE5MLUtilities newImageInputsForFunctionDescriptor:v9 croppedPixelBuffer:v5 error:a4];

  if (!IOSurface)
  {
    CVPixelBufferRelease(v5);
  }

  v11 = [(CRE5MLExecutionContext *)self predictionFromInputObjects:v10 error:a4];
  if (v11)
  {
    v12 = [CRTextDetectorModelV3OutputLazy alloc];
    v13 = [(CRE5MLExecutionContext *)self functionDescriptor];
    v14 = [(CRTextDetectorModelV3OutputLazy *)v12 initWithVisionCoreNamedObjects:v11 fromFunctionDescriptor:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)prebindInputImageSurface:(__IOSurface *)a3 error:(id *)a4
{
  if (a3)
  {
    if (self->_preboundSurface == a3)
    {
      v9 = 0;
      if (!a4)
      {
        goto LABEL_5;
      }
    }

    else
    {
      self->_preboundSurface = a3;
      v7 = [(CRE5MLExecutionContext *)self functionDescriptor];
      v13 = 0;
      v8 = [CRE5MLUtilities newInputsForFunctionDescriptor:v7 surface:a3 isImage:1 error:&v13];
      v9 = v13;

      [(CRE5MLExecutionContext *)self prebindInputs:v8];
      if (!a4)
      {
LABEL_5:
        v11 = v9 == 0;

        return v11;
      }
    }

    v10 = v9;
    *a4 = v9;
    goto LABEL_5;
  }

  if (!a4)
  {
    return 0;
  }

  [CRImageReader errorWithErrorCode:-8];
  *a4 = v11 = 0;
  return v11;
}

- (id)predictionFromPreboundInputsWithError:(id *)a3
{
  if ([(CRE5MLExecutionContext *)self predictFromPreboundInputsWithError:a3])
  {
    v4 = [CRTextDetectorModelV3OutputLazy alloc];
    v5 = [(CRE5MLExecutionContext *)self preboundOutputObjects];
    v6 = [(CRE5MLExecutionContext *)self functionDescriptor];
    v7 = [(CRTextDetectorModelV3OutputLazy *)v4 initWithVisionCoreNamedObjects:v5 fromFunctionDescriptor:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)predictOutputFromPreboundInputsAsync:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __82__CRTextDetectorModelV3E5MLExecutionContext_predictOutputFromPreboundInputsAsync___block_invoke;
  v6[3] = &unk_1E7BC2730;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(CRE5MLExecutionContext *)self predictFromPreboundInputsAsync:v6];
}

void __82__CRTextDetectorModelV3E5MLExecutionContext_predictOutputFromPreboundInputsAsync___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [CRTextDetectorModelV3OutputLazy alloc];
  v8 = [*(a1 + 32) functionDescriptor];
  v9 = [(CRTextDetectorModelV3OutputLazy *)v7 initWithVisionCoreNamedObjects:v6 fromFunctionDescriptor:v8];

  (*(*(a1 + 40) + 16))();
}

@end