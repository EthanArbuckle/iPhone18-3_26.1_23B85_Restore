@interface CRTextDetectorModelV3E5MLExecutionContext
- (BOOL)prebindInputImageSurface:(__IOSurface *)surface error:(id *)error;
- (id)predictionFromImage:(__CVBuffer *)image error:(id *)error;
- (id)predictionFromPreboundInputsWithError:(id *)error;
- (void)predictOutputFromPreboundInputsAsync:(id)async;
@end

@implementation CRTextDetectorModelV3E5MLExecutionContext

- (id)predictionFromImage:(__CVBuffer *)image error:(id *)error
{
  imageCopy = image;
  IOSurface = CVPixelBufferGetIOSurface(image);
  if (!IOSurface)
  {
    v8 = CROSLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *v16 = 0;
      _os_log_impl(&dword_1B40D2000, v8, OS_LOG_TYPE_DEBUG, "CRTextDetectorModelV3E5ML input pixel buffer is not IOSurface backed, creating IOSurface backing. Consider passing in an IOSurface-backed pixel buffer to avoid this overhead.", v16, 2u);
    }

    imageCopy = CRCreateIOSurfacePixelBufferFromPixelBuffer(imageCopy);
  }

  functionDescriptor = [(CRE5MLExecutionContext *)self functionDescriptor];
  v10 = [CRE5MLUtilities newImageInputsForFunctionDescriptor:functionDescriptor croppedPixelBuffer:imageCopy error:error];

  if (!IOSurface)
  {
    CVPixelBufferRelease(imageCopy);
  }

  v11 = [(CRE5MLExecutionContext *)self predictionFromInputObjects:v10 error:error];
  if (v11)
  {
    v12 = [CRTextDetectorModelV3OutputLazy alloc];
    functionDescriptor2 = [(CRE5MLExecutionContext *)self functionDescriptor];
    v14 = [(CRTextDetectorModelV3OutputLazy *)v12 initWithVisionCoreNamedObjects:v11 fromFunctionDescriptor:functionDescriptor2];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)prebindInputImageSurface:(__IOSurface *)surface error:(id *)error
{
  if (surface)
  {
    if (self->_preboundSurface == surface)
    {
      v9 = 0;
      if (!error)
      {
        goto LABEL_5;
      }
    }

    else
    {
      self->_preboundSurface = surface;
      functionDescriptor = [(CRE5MLExecutionContext *)self functionDescriptor];
      v13 = 0;
      v8 = [CRE5MLUtilities newInputsForFunctionDescriptor:functionDescriptor surface:surface isImage:1 error:&v13];
      v9 = v13;

      [(CRE5MLExecutionContext *)self prebindInputs:v8];
      if (!error)
      {
LABEL_5:
        v11 = v9 == 0;

        return v11;
      }
    }

    v10 = v9;
    *error = v9;
    goto LABEL_5;
  }

  if (!error)
  {
    return 0;
  }

  [CRImageReader errorWithErrorCode:-8];
  *error = v11 = 0;
  return v11;
}

- (id)predictionFromPreboundInputsWithError:(id *)error
{
  if ([(CRE5MLExecutionContext *)self predictFromPreboundInputsWithError:error])
  {
    v4 = [CRTextDetectorModelV3OutputLazy alloc];
    preboundOutputObjects = [(CRE5MLExecutionContext *)self preboundOutputObjects];
    functionDescriptor = [(CRE5MLExecutionContext *)self functionDescriptor];
    v7 = [(CRTextDetectorModelV3OutputLazy *)v4 initWithVisionCoreNamedObjects:preboundOutputObjects fromFunctionDescriptor:functionDescriptor];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)predictOutputFromPreboundInputsAsync:(id)async
{
  asyncCopy = async;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __82__CRTextDetectorModelV3E5MLExecutionContext_predictOutputFromPreboundInputsAsync___block_invoke;
  v6[3] = &unk_1E7BC2730;
  v6[4] = self;
  v7 = asyncCopy;
  v5 = asyncCopy;
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