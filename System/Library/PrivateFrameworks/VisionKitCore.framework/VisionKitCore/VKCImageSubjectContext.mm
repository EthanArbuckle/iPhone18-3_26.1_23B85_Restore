@interface VKCImageSubjectContext
- (BOOL)allSubjectsSelected;
- (BOOL)containsSubjectAtNormalizedPoint:(CGPoint)a3;
- (BOOL)subjectIndexes:(id)a3 equivalentToIndexes:(id)a4;
- (CGRect)normalizedCropRect;
- (CGSize)imageSize;
- (NSIndexSet)activeMADSubjectIndexes;
- (NSIndexSet)allSubjectIndexes;
- (NSNumber)animatedStickerScore;
- (VKCImageSubjectContext)initWithMaskResult:(id)a3;
- (VKCRemoveBackgroundRequest)request;
- (id)convertExternalIndexSetToInternal:(id)a3;
- (id)convertIndexSetToConcreteSubjectIndexes:(id)a3;
- (id)indexOfSubjectAtNormalizedPoint:(CGPoint)a3;
- (id)madSubjectIndexesForVKSubjectIndexes:(id)a3;
- (id)normalizedPathForActiveSubjectsWithContentsRect:(CGRect)a3 topLevelOnly:(BOOL)a4;
- (id)normalizedPathForSubjectAtIndex:(id)a3 contentsRect:(CGRect)a4 topLevelOnly:(BOOL)a5;
- (id)normalizedPathForSubjectWithIndexSet:(id)a3 contentsRect:(CGRect)a4 topLevelOnly:(BOOL)a5;
- (int64_t)imageOrientation;
- (unint64_t)subjectCount;
- (void)prepareInstanceImagesWithCIContext:(id)a3 instance:(id)a4 image:(CGImage *)a5;
- (void)preparePathsAndImageMaskIfNecessaryWithContext:(id)a3;
- (void)processPathForInstance:(id)a3;
@end

@implementation VKCImageSubjectContext

- (VKCImageSubjectContext)initWithMaskResult:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VKCImageSubjectContext;
  v6 = [(VKCImageSubjectContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_maskResult, a3);
  }

  return v7;
}

- (unint64_t)subjectCount
{
  v2 = [(VKCImageSubjectContext *)self subjectInstances];
  v3 = [v2 count];

  return v3;
}

- (NSNumber)animatedStickerScore
{
  v2 = [(VKCImageSubjectContext *)self maskResult];
  v3 = [v2 animatedStickerScore];

  return v3;
}

- (BOOL)allSubjectsSelected
{
  v3 = [(VKCImageSubjectContext *)self activeSubjectIndexes];
  if ([v3 count])
  {
  }

  else
  {
    v7 = [(VKCImageSubjectContext *)self subjectCount];

    if (v7)
    {
      return 1;
    }
  }

  v4 = [(VKCImageSubjectContext *)self activeSubjectIndexes];
  v5 = [v4 count];
  v6 = v5 == [(VKCImageSubjectContext *)self subjectCount];

  return v6;
}

- (CGSize)imageSize
{
  v2 = [(VKCImageSubjectContext *)self allSubjectsInstance];
  [v2 imageSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (int64_t)imageOrientation
{
  v2 = [(VKCImageSubjectContext *)self maskResult];
  v3 = [v2 imageOrientation];

  return v3;
}

- (VKCRemoveBackgroundRequest)request
{
  v2 = [(VKCImageSubjectContext *)self maskResult];
  v3 = [v2 request];

  return v3;
}

- (CGRect)normalizedCropRect
{
  v2 = [(VKCImageSubjectContext *)self maskResult];
  [v2 normalizedCropRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (NSIndexSet)activeMADSubjectIndexes
{
  v3 = [(VKCImageSubjectContext *)self activeSubjectIndexes];
  v4 = [(VKCImageSubjectContext *)self madSubjectIndexesForVKSubjectIndexes:v3];

  return v4;
}

- (id)madSubjectIndexesForVKSubjectIndexes:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v6 = [(VKCImageSubjectContext *)self subjectInstances];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__VKCImageSubjectContext_madSubjectIndexesForVKSubjectIndexes___block_invoke;
  v12[3] = &unk_1E7BE4530;
  v13 = v4;
  v7 = v5;
  v14 = v7;
  v8 = v4;
  [v6 enumerateObjectsUsingBlock:v12];

  v9 = v14;
  v10 = v7;

  return v7;
}

void __63__VKCImageSubjectContext_madSubjectIndexesForVKSubjectIndexes___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([*(a1 + 32) containsIndex:a3])
  {
    [*(a1 + 40) addIndex:{objc_msgSend(v5, "madIndex")}];
  }
}

- (NSIndexSet)allSubjectIndexes
{
  v2 = MEMORY[0x1E696AC90];
  v3 = [(VKCImageSubjectContext *)self subjectCount];

  return [v2 indexSetWithIndexesInRange:{0, v3}];
}

- (void)preparePathsAndImageMaskIfNecessaryWithContext:(id)a3
{
  v4 = a3;
  v5 = [(VKCImageSubjectContext *)self maskResult];
  v6 = [v5 instanceMasks];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __73__VKCImageSubjectContext_preparePathsAndImageMaskIfNecessaryWithContext___block_invoke;
  v20[3] = &unk_1E7BE4558;
  v20[4] = self;
  v21 = v4;
  v7 = v4;
  v8 = [v6 vk_compactMap:v20];
  [(VKCImageSubjectContext *)self setSubjectInstances:v8];
  v9 = objc_alloc_init(VKCImageSubjectContextInstance);
  v10 = objc_alloc_init(MEMORY[0x1E69DC728]);
  v11 = objc_alloc_init(MEMORY[0x1E69DC728]);
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __73__VKCImageSubjectContext_preparePathsAndImageMaskIfNecessaryWithContext___block_invoke_2;
  v17 = &unk_1E7BE4530;
  v18 = v10;
  v19 = v11;
  v12 = v11;
  v13 = v10;
  [v8 enumerateObjectsUsingBlock:&v14];
  [(VKCImageSubjectContextInstance *)v9 setBaseTopLevelNormalizedSubjectPath:v13, v14, v15, v16, v17];
  [(VKCImageSubjectContextInstance *)v9 setBaseNormalizedSubjectPath:v12];
  [(VKCImageSubjectContext *)self imageSize];
  [(VKCImageSubjectContextInstance *)v9 setImageSize:?];
  [(VKCImageSubjectContext *)self setAllSubjectsInstance:v9];
}

VKCImageSubjectContextInstance *__73__VKCImageSubjectContext_preparePathsAndImageMaskIfNecessaryWithContext___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = objc_alloc_init(VKCImageSubjectContextInstance);
  [(VKCImageSubjectContextInstance *)v6 setMadIndex:a3 + 1];
  [*(a1 + 32) prepareInstanceImagesWithCIContext:*(a1 + 40) instance:v6 image:v5];

  [*(a1 + 32) processPathForInstance:v6];
  v7 = [(VKCImageSubjectContextInstance *)v6 baseNormalizedSubjectPath];
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  return v8;
}

void __73__VKCImageSubjectContext_preparePathsAndImageMaskIfNecessaryWithContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 baseTopLevelNormalizedSubjectPath];
  [v3 vk_appendBezierPath:v5];

  v6 = *(a1 + 40);
  v7 = [v4 baseNormalizedSubjectPath];

  [v6 vk_appendBezierPath:v7];
}

- (void)prepareInstanceImagesWithCIContext:(id)a3 instance:(id)a4 image:(CGImage *)a5
{
  v13 = a3;
  v8 = a4;
  Width = CGImageGetWidth(a5);
  [v8 setImageSize:{Width, CGImageGetHeight(a5)}];
  [v8 setMaskImage:a5];
  if ([(VKCImageSubjectContext *)self imageOrientation])
  {
    v10 = [MEMORY[0x1E695F658] imageWithCGImage:a5];
    v11 = [v10 imageByApplyingCGOrientation:{vk_cgImagePropertyOrientationFromVKOrientation(-[VKCImageSubjectContext imageOrientation](self, "imageOrientation"))}];

    [v8 imageSize];
    v12 = [v13 createCGImage:v11 fromRect:*MEMORY[0x1E695F8A8] format:0 colorSpace:VKMRectWithSize()];
    [v8 setOrientedMaskImage:v12];
    CGImageRelease(v12);
  }

  else
  {
    [v8 setOrientedMaskImage:a5];
  }
}

- (void)processPathForInstance:(id)a3
{
  v42[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E69844A8]);
  [v5 setDetectsDarkOnLight:0];
  v6 = objc_alloc(MEMORY[0x1E69845B8]);
  v7 = [v4 orientedMaskImage];
  v8 = [v6 initWithCGImage:v7 options:MEMORY[0x1E695E0F8]];
  v42[0] = v5;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
  v41 = 0;
  [v8 performRequests:v9 error:&v41];
  v10 = v41;

  if (v10)
  {
    v11 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.RemoveBackground");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(VKCImageSubjectContext *)v10 processPathForInstance:v11];
    }
  }

  else
  {
    v12 = [v5 results];
    v11 = [v12 firstObject];

    v10 = [v11 topLevelContours];

    if (v10)
    {
      v32 = self;
      v33 = v4;
      v31 = objc_alloc_init(MEMORY[0x1E69DC728]);
      v13 = objc_alloc_init(MEMORY[0x1E69DC728]);
      if ([v11 contourCount]< 1)
      {
        v10 = 0;
      }

      else
      {
        v14 = 0;
        v15 = 0;
        do
        {
          v40 = v14;
          v16 = [v11 contourAtIndex:v15 error:&v40];
          v10 = v40;

          LODWORD(v17) = 981668463;
          v18 = [v16 polygonApproximationWithEpsilon:0 error:v17];
          v19 = [MEMORY[0x1E69DC728] vk_pathFromCGPath:{objc_msgSend(v18, "normalizedPath")}];
          [v13 vk_appendBezierPath:v19];

          ++v15;
          v14 = v10;
        }

        while (v15 < [v11 contourCount]);
      }

      v29 = *(MEMORY[0x1E695EFD0] + 16);
      *&v39.a = *MEMORY[0x1E695EFD0];
      v30 = *&v39.a;
      *&v39.c = v29;
      *&v39.tx = *(MEMORY[0x1E695EFD0] + 32);
      v28 = *&v39.tx;
      CGAffineTransformMakeScale(&t2, 1.0, -1.0);
      *&t1.a = v30;
      *&t1.c = v29;
      *&t1.tx = v28;
      CGAffineTransformConcat(&v39, &t1, &t2);
      CGAffineTransformMakeTranslation(&t1, 0.0, 1.0);
      v36 = v39;
      CGAffineTransformConcat(&t2, &v36, &t1);
      v39 = t2;
      [(VKCImageSubjectContext *)v32 normalizedCropRect];
      VKMTransformConvertingRectToRect(&t1, 0.0, 1.0, 1.0, v20, v21, v22, v23);
      v36 = v39;
      CGAffineTransformConcat(&t2, &v36, &t1);
      v39 = t2;
      [v13 vk_applyTransform:&t2];
      v4 = v33;
      if (([v13 isEmpty] & 1) == 0)
      {
        v24 = [v13 copy];
        [v33 setBaseNormalizedSubjectPath:v24];
      }

      v25 = [v11 topLevelContours:v28];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __49__VKCImageSubjectContext_processPathForInstance___block_invoke;
      v34[3] = &unk_1E7BE4580;
      v26 = v31;
      v35 = v26;
      [v25 enumerateObjectsUsingBlock:v34];

      t2 = v39;
      [v26 vk_applyTransform:&t2];
      if (([v26 isEmpty] & 1) == 0)
      {
        v27 = [v26 copy];
        [v33 setBaseTopLevelNormalizedSubjectPath:v27];
      }
    }
  }
}

void __49__VKCImageSubjectContext_processPathForInstance___block_invoke(uint64_t a1, void *a2, double a3)
{
  LODWORD(a3) = 981668463;
  v7 = [a2 polygonApproximationWithEpsilon:0 error:a3];
  v4 = MEMORY[0x1E69DC728];
  v5 = v7;
  v6 = [v4 vk_pathFromCGPath:{objc_msgSend(v7, "normalizedPath")}];
  [*(a1 + 32) vk_appendBezierPath:v6];
}

- (id)convertIndexSetToConcreteSubjectIndexes:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    if (![v4 count])
    {
      v6 = [(VKCImageSubjectContext *)self allSubjectIndexes];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)convertExternalIndexSetToInternal:(id)a3
{
  v4 = a3;
  v5 = [(VKCImageSubjectContext *)self allSubjectIndexes];
  if (v4)
  {
    v6 = v4;
    if ([v4 count])
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __60__VKCImageSubjectContext_convertExternalIndexSetToInternal___block_invoke;
      v8[3] = &unk_1E7BE45A8;
      v9 = v5;
      v6 = [v4 indexesPassingTest:v8];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)normalizedPathForSubjectWithIndexSet:(id)a3 contentsRect:(CGRect)a4 topLevelOnly:(BOOL)a5
{
  v5 = a5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3;
  if ([v11 count])
  {
    v12 = [(VKCImageSubjectContext *)self convertExternalIndexSetToInternal:v11];
    v13 = [v12 count];
    if (v13 == [v11 count])
    {
LABEL_11:
      if ([v12 count])
      {
        v19 = objc_alloc_init(MEMORY[0x1E69DC728]);
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __89__VKCImageSubjectContext_normalizedPathForSubjectWithIndexSet_contentsRect_topLevelOnly___block_invoke;
        v22[3] = &unk_1E7BE45D0;
        v18 = v19;
        v23 = v18;
        v24 = self;
        v25 = x;
        v26 = y;
        v27 = width;
        v28 = height;
        v29 = v5;
        [v11 enumerateIndexesUsingBlock:v22];
      }

      else
      {
        v18 = 0;
      }

      goto LABEL_15;
    }

    v14 = [v12 count];
    v15 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.RemoveBackground");
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v16)
      {
        *buf = 0;
        v17 = "Indexes contain one or more indexes that are invalid, ignoring invalid indexes.";
LABEL_9:
        _os_log_impl(&dword_1B4335000, v15, OS_LOG_TYPE_DEFAULT, v17, buf, 2u);
      }
    }

    else if (v16)
    {
      *buf = 0;
      v17 = "Indexes contain no valid indexes, ignoring.";
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  v18 = [(VKCImageSubjectContext *)self normalizedPathForSubjectAtIndex:0 contentsRect:v5 topLevelOnly:x, y, width, height];
LABEL_15:
  v20 = [v18 copy];

  return v20;
}

void __89__VKCImageSubjectContext_normalizedPathForSubjectWithIndexSet_contentsRect_topLevelOnly___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v5 = [v4 normalizedPathForSubjectAtIndex:v6 contentsRect:*(a1 + 80) topLevelOnly:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  [v3 vk_appendBezierPath:v5];
}

- (id)normalizedPathForSubjectAtIndex:(id)a3 contentsRect:(CGRect)a4 topLevelOnly:(BOOL)a5
{
  v5 = a5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3;
  if (v11)
  {
    v12 = [(VKCImageSubjectContext *)self subjectInstances];
    v13 = [v12 vk_safeObjectAtIndex:{objc_msgSend(v11, "integerValue")}];

    if (!v13)
    {
      +[VKAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](VKAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "instance != ((void*)0)", "-[VKCImageSubjectContext normalizedPathForSubjectAtIndex:contentsRect:topLevelOnly:]", 0, 0, @"Trying to get subject at index: %ld, but the index is out of range, returning nil", [v11 integerValue]);
      v13 = 0;
    }
  }

  else
  {
    v13 = [(VKCImageSubjectContext *)self allSubjectsInstance];
  }

  v14 = [v13 normalizedSubjectPathWithContentsRect:v5 topLevelOnly:{x, y, width, height}];
  v15 = [v14 copy];

  return v15;
}

- (id)normalizedPathForActiveSubjectsWithContentsRect:(CGRect)a3 topLevelOnly:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [(VKCImageSubjectContext *)self activeSubjectIndexes];
  v11 = [v10 count];

  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x1E69DC728]);
    v13 = [(VKCImageSubjectContext *)self activeSubjectIndexes];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __87__VKCImageSubjectContext_normalizedPathForActiveSubjectsWithContentsRect_topLevelOnly___block_invoke;
    v17[3] = &unk_1E7BE45D0;
    v14 = v12;
    v18 = v14;
    v19 = self;
    v20 = x;
    v21 = y;
    v22 = width;
    v23 = height;
    v24 = v4;
    [v13 enumerateIndexesUsingBlock:v17];
  }

  else
  {
    v14 = [(VKCImageSubjectContext *)self normalizedPathForSubjectAtIndex:0 contentsRect:v4 topLevelOnly:x, y, width, height];
  }

  v15 = [v14 copy];

  return v15;
}

void __87__VKCImageSubjectContext_normalizedPathForActiveSubjectsWithContentsRect_topLevelOnly___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v5 = [v4 normalizedPathForSubjectAtIndex:v6 contentsRect:*(a1 + 80) topLevelOnly:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  [v3 vk_appendBezierPath:v5];
}

- (BOOL)containsSubjectAtNormalizedPoint:(CGPoint)a3
{
  v3 = [(VKCImageSubjectContext *)self indexOfSubjectAtNormalizedPoint:a3.x, a3.y];
  v4 = v3 != 0;

  return v4;
}

- (id)indexOfSubjectAtNormalizedPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__1;
  v13 = __Block_byref_object_dispose__1;
  v14 = 0;
  v5 = [(VKCImageSubjectContext *)self subjectInstances];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__VKCImageSubjectContext_indexOfSubjectAtNormalizedPoint___block_invoke;
  v8[3] = &unk_1E7BE45F8;
  *&v8[5] = x;
  *&v8[6] = y;
  v8[4] = &v9;
  [v5 enumerateObjectsUsingBlock:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __58__VKCImageSubjectContext_indexOfSubjectAtNormalizedPoint___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = a2;
  v7 = [v13 baseTopLevelNormalizedSubjectPath];
  [v7 bounds];
  if (CGRectContainsPoint(v15, *(a1 + 40)))
  {
    v8 = [v13 baseTopLevelNormalizedSubjectPath];
    v9 = [v8 containsPoint:{*(a1 + 40), *(a1 + 48)}];

    if (v9)
    {
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
      v11 = *(*(a1 + 32) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      *a4 = 1;
    }
  }
}

- (BOOL)subjectIndexes:(id)a3 equivalentToIndexes:(id)a4
{
  v6 = a4;
  v7 = [(VKCImageSubjectContext *)self convertIndexSetToConcreteSubjectIndexes:a3];
  v8 = [(VKCImageSubjectContext *)self convertIndexSetToConcreteSubjectIndexes:v6];

  LOBYTE(v6) = [v7 isEqualToIndexSet:v8];
  return v6;
}

- (void)processPathForInstance:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B4335000, a2, OS_LOG_TYPE_ERROR, "Error generating path from subject mask instance: %@", &v2, 0xCu);
}

@end