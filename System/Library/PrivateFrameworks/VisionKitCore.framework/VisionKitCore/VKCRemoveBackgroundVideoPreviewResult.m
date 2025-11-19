@interface VKCRemoveBackgroundVideoPreviewResult
- ($58EB755F713D70195D081A2438463C76)timeRange;
- (CGRect)normalizedCropRect;
- (VKCRemoveBackgroundVideoPreviewResult)initWithMADVideoPreviewResult:(id)a3 error:(id)a4;
- (id)subjectMatteAtCompositionTime:(id *)a3;
- (id)subjectMatteForImage:(id)a3 atCompositionTime:(id *)a4;
@end

@implementation VKCRemoveBackgroundVideoPreviewResult

- (VKCRemoveBackgroundVideoPreviewResult)initWithMADVideoPreviewResult:(id)a3 error:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = VKCRemoveBackgroundVideoPreviewResult;
  v9 = [(VKCRemoveBackgroundVideoPreviewResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_madResult, a3);
    v10->_successful = v7 != 0;
    objc_storeStrong(&v10->_error, a4);
  }

  return v10;
}

- ($58EB755F713D70195D081A2438463C76)timeRange
{
  result = self->_madResult;
  if (result)
  {
    return [($58EB755F713D70195D081A2438463C76 *)result timeRange];
  }

  *&retstr->var0.var3 = 0u;
  *&retstr->var1.var1 = 0u;
  *&retstr->var0.var0 = 0u;
  return result;
}

- (CGRect)normalizedCropRect
{
  if (objc_opt_respondsToSelector())
  {
    [(_MADVideoRemoveBackgroundPreviewResult *)self->_madResult normalizedCropRect];
  }

  else
  {
    v3 = 0.0;
    v4 = 0.0;
    v5 = 1.0;
    v6 = 1.0;
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)subjectMatteAtCompositionTime:(id *)a3
{
  v26 = *MEMORY[0x1E69E9840];
  memset(&v24, 0, sizeof(v24));
  madResult = self->_madResult;
  if (madResult)
  {
    [(_MADVideoRemoveBackgroundPreviewResult *)madResult timeRange];
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
  }

  *&rhs.value = v20;
  rhs.epoch = v21;
  lhs = *a3;
  CMTimeSubtract(&v24, &lhs, &rhs);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(_MADVideoRemoveBackgroundPreviewResult *)self->_madResult frames];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v16;
LABEL_6:
    v11 = 0;
    while (1)
    {
      if (*v16 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v15 + 1) + 8 * v11);
      if (v12)
      {
        [*(*(&v15 + 1) + 8 * v11) presentationTimeStamp];
      }

      else
      {
        memset(&rhs, 0, sizeof(rhs));
      }

      lhs = v24;
      if (CMTimeCompare(&rhs, &lhs) == 1)
      {
        break;
      }

      v9 = [v12 pixelBuffer];
      if (v8 == ++v11)
      {
        v8 = [v6 countByEnumeratingWithState:&v15 objects:v25 count:16];
        if (v8)
        {
          goto LABEL_6;
        }

        break;
      }
    }

    if (v9)
    {
      v13 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:v9];
      goto LABEL_19;
    }
  }

  else
  {
  }

  v13 = 0;
LABEL_19:

  return v13;
}

- (id)subjectMatteForImage:(id)a3 atCompositionTime:(id *)a4
{
  v6 = a3;
  *&v16.a = *&a4->var0;
  *&v16.c = a4->var3;
  v7 = [(VKCRemoveBackgroundVideoPreviewResult *)self subjectMatteAtCompositionTime:&v16];
  if (v7)
  {
    [v6 extent];
    v9 = v8;
    v11 = v10;
    [v7 extent];
    if (v12 != 0.0 && v13 != 0.0)
    {
      CGAffineTransformMakeScale(&v16, v9 / v12, v11 / v13);
      v14 = [v7 imageByApplyingTransform:&v16];

      v7 = v14;
    }
  }

  return v7;
}

@end