@interface CRE5MLUtilities
+ (id)E5RTProgramLibraryCompilationOptionsForModelSource:(id)source;
+ (id)E5RTProgramLibraryForModelURL:(id)l error:(id *)error;
+ (id)newE5RTExecutionOutputsForFunctionDescriptor:(id)descriptor error:(id *)error;
+ (id)newImageInputsForFunctionDescriptor:(id)descriptor croppedPixelBuffer:(__CVBuffer *)buffer error:(id *)error;
+ (id)newInputsForFunctionDescriptor:(id)descriptor surface:(__IOSurface *)surface isImage:(BOOL)image error:(id *)error;
@end

@implementation CRE5MLUtilities

+ (id)E5RTProgramLibraryForModelURL:(id)l error:(id *)error
{
  lCopy = l;
  if ([MEMORY[0x1E69DF8F0] isProgramLibraryAtURL:lCopy])
  {
    v7 = [MEMORY[0x1E69DF8F0] programLibraryForURL:lCopy error:error];
  }

  else if ([MEMORY[0x1E69DF8E8] isModelSourceURL:lCopy])
  {
    v8 = [MEMORY[0x1E69DF8E8] modelSourceFromURL:lCopy error:error];
    if (v8)
    {
      v9 = [self E5RTProgramLibraryCompilationOptionsForModelSource:v8];
      if (v9)
      {
        v7 = [MEMORY[0x1E69DF8F0] compileModelSource:v8 options:v9 error:error];
      }

      else if (error)
      {
        [CRImageReader errorWithErrorCode:-8];
        *error = v7 = 0;
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
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)E5RTProgramLibraryCompilationOptionsForModelSource:(id)source
{
  v3 = objc_alloc_init(MEMORY[0x1E69DF8F8]);

  return v3;
}

+ (id)newImageInputsForFunctionDescriptor:(id)descriptor croppedPixelBuffer:(__CVBuffer *)buffer error:(id *)error
{
  descriptorCopy = descriptor;
  v8 = objc_alloc_init(MEMORY[0x1E69DF940]);
  if (!buffer)
  {
    goto LABEL_4;
  }

  onlyInputImage = [descriptorCopy onlyInputImage];
  if (!onlyInputImage)
  {
    if (error)
    {
      [CRImageReader errorWithErrorCode:-8];
      *error = v13 = 0;
      goto LABEL_8;
    }

LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  v10 = onlyInputImage;
  name = [onlyInputImage name];
  v12 = [v8 assignPixelBuffer:buffer toName:name error:error];

  if (!v12)
  {
    goto LABEL_7;
  }

LABEL_4:
  v13 = v8;
LABEL_8:

  return v13;
}

+ (id)newInputsForFunctionDescriptor:(id)descriptor surface:(__IOSurface *)surface isImage:(BOOL)image error:(id *)error
{
  imageCopy = image;
  descriptorCopy = descriptor;
  v10 = objc_alloc_init(MEMORY[0x1E69DF940]);
  if (surface)
  {
    if (imageCopy)
    {
      onlyInputImage = [descriptorCopy onlyInputImage];
      if (!onlyInputImage)
      {
        goto LABEL_9;
      }
    }

    else
    {
      allInputs = [descriptorCopy allInputs];
      v13 = [allInputs count];

      if (v13 != 1 || ([descriptorCopy allInputs], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "firstObject"), onlyInputImage = objc_claimAutoreleasedReturnValue(), v14, !onlyInputImage))
      {
LABEL_9:
        if (error)
        {
          [CRImageReader errorWithErrorCode:-8];
          *error = v17 = 0;
          goto LABEL_12;
        }

LABEL_11:
        v17 = 0;
        goto LABEL_12;
      }
    }

    name = [onlyInputImage name];
    v16 = [v10 assignSurface:surface toName:name error:error];

    if (!v16)
    {
      goto LABEL_11;
    }
  }

  v17 = v10;
LABEL_12:

  return v17;
}

+ (id)newE5RTExecutionOutputsForFunctionDescriptor:(id)descriptor error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  v6 = objc_alloc_init(MEMORY[0x1E69DF940]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allOutputs = [descriptorCopy allOutputs];
  v8 = [allOutputs countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(allOutputs);
        }

        if (![*(*(&v14 + 1) + 8 * v11) E5RTExecutionContextAssignNewTensorInstanceToNamedObjects:v6 error:error])
        {

          v12 = 0;
          goto LABEL_11;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [allOutputs countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = v6;
LABEL_11:

  return v12;
}

@end