@interface CRE5MLUtilities
+ (id)E5RTProgramLibraryCompilationOptionsForModelSource:(id)a3;
+ (id)E5RTProgramLibraryForModelURL:(id)a3 error:(id *)a4;
+ (id)newE5RTExecutionOutputsForFunctionDescriptor:(id)a3 error:(id *)a4;
+ (id)newImageInputsForFunctionDescriptor:(id)a3 croppedPixelBuffer:(__CVBuffer *)a4 error:(id *)a5;
+ (id)newInputsForFunctionDescriptor:(id)a3 surface:(__IOSurface *)a4 isImage:(BOOL)a5 error:(id *)a6;
@end

@implementation CRE5MLUtilities

+ (id)E5RTProgramLibraryForModelURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([MEMORY[0x1E69DF8F0] isProgramLibraryAtURL:v6])
  {
    v7 = [MEMORY[0x1E69DF8F0] programLibraryForURL:v6 error:a4];
  }

  else if ([MEMORY[0x1E69DF8E8] isModelSourceURL:v6])
  {
    v8 = [MEMORY[0x1E69DF8E8] modelSourceFromURL:v6 error:a4];
    if (v8)
    {
      v9 = [a1 E5RTProgramLibraryCompilationOptionsForModelSource:v8];
      if (v9)
      {
        v7 = [MEMORY[0x1E69DF8F0] compileModelSource:v8 options:v9 error:a4];
      }

      else if (a4)
      {
        [CRImageReader errorWithErrorCode:-8];
        *a4 = v7 = 0;
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

+ (id)E5RTProgramLibraryCompilationOptionsForModelSource:(id)a3
{
  v3 = objc_alloc_init(MEMORY[0x1E69DF8F8]);

  return v3;
}

+ (id)newImageInputsForFunctionDescriptor:(id)a3 croppedPixelBuffer:(__CVBuffer *)a4 error:(id *)a5
{
  v7 = a3;
  v8 = objc_alloc_init(MEMORY[0x1E69DF940]);
  if (!a4)
  {
    goto LABEL_4;
  }

  v9 = [v7 onlyInputImage];
  if (!v9)
  {
    if (a5)
    {
      [CRImageReader errorWithErrorCode:-8];
      *a5 = v13 = 0;
      goto LABEL_8;
    }

LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  v10 = v9;
  v11 = [v9 name];
  v12 = [v8 assignPixelBuffer:a4 toName:v11 error:a5];

  if (!v12)
  {
    goto LABEL_7;
  }

LABEL_4:
  v13 = v8;
LABEL_8:

  return v13;
}

+ (id)newInputsForFunctionDescriptor:(id)a3 surface:(__IOSurface *)a4 isImage:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v9 = a3;
  v10 = objc_alloc_init(MEMORY[0x1E69DF940]);
  if (a4)
  {
    if (v7)
    {
      v11 = [v9 onlyInputImage];
      if (!v11)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v12 = [v9 allInputs];
      v13 = [v12 count];

      if (v13 != 1 || ([v9 allInputs], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "firstObject"), v11 = objc_claimAutoreleasedReturnValue(), v14, !v11))
      {
LABEL_9:
        if (a6)
        {
          [CRImageReader errorWithErrorCode:-8];
          *a6 = v17 = 0;
          goto LABEL_12;
        }

LABEL_11:
        v17 = 0;
        goto LABEL_12;
      }
    }

    v15 = [v11 name];
    v16 = [v10 assignSurface:a4 toName:v15 error:a6];

    if (!v16)
    {
      goto LABEL_11;
    }
  }

  v17 = v10;
LABEL_12:

  return v17;
}

+ (id)newE5RTExecutionOutputsForFunctionDescriptor:(id)a3 error:(id *)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E69DF940]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v5 allOutputs];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v7);
        }

        if (![*(*(&v14 + 1) + 8 * v11) E5RTExecutionContextAssignNewTensorInstanceToNamedObjects:v6 error:a4])
        {

          v12 = 0;
          goto LABEL_11;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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