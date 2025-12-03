@interface VKCImageSubjectContext
- (BOOL)allSubjectsSelected;
- (BOOL)containsSubjectAtNormalizedPoint:(CGPoint)point;
- (BOOL)subjectIndexes:(id)indexes equivalentToIndexes:(id)toIndexes;
- (CGRect)normalizedCropRect;
- (CGSize)imageSize;
- (NSIndexSet)activeMADSubjectIndexes;
- (NSIndexSet)allSubjectIndexes;
- (NSNumber)animatedStickerScore;
- (VKCImageSubjectContext)initWithMaskResult:(id)result;
- (VKCRemoveBackgroundRequest)request;
- (id)convertExternalIndexSetToInternal:(id)internal;
- (id)convertIndexSetToConcreteSubjectIndexes:(id)indexes;
- (id)indexOfSubjectAtNormalizedPoint:(CGPoint)point;
- (id)madSubjectIndexesForVKSubjectIndexes:(id)indexes;
- (id)normalizedPathForActiveSubjectsWithContentsRect:(CGRect)rect topLevelOnly:(BOOL)only;
- (id)normalizedPathForSubjectAtIndex:(id)index contentsRect:(CGRect)rect topLevelOnly:(BOOL)only;
- (id)normalizedPathForSubjectWithIndexSet:(id)set contentsRect:(CGRect)rect topLevelOnly:(BOOL)only;
- (int64_t)imageOrientation;
- (unint64_t)subjectCount;
- (void)prepareInstanceImagesWithCIContext:(id)context instance:(id)instance image:(CGImage *)image;
- (void)preparePathsAndImageMaskIfNecessaryWithContext:(id)context;
- (void)processPathForInstance:(id)instance;
@end

@implementation VKCImageSubjectContext

- (VKCImageSubjectContext)initWithMaskResult:(id)result
{
  resultCopy = result;
  v9.receiver = self;
  v9.super_class = VKCImageSubjectContext;
  v6 = [(VKCImageSubjectContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_maskResult, result);
  }

  return v7;
}

- (unint64_t)subjectCount
{
  subjectInstances = [(VKCImageSubjectContext *)self subjectInstances];
  v3 = [subjectInstances count];

  return v3;
}

- (NSNumber)animatedStickerScore
{
  maskResult = [(VKCImageSubjectContext *)self maskResult];
  animatedStickerScore = [maskResult animatedStickerScore];

  return animatedStickerScore;
}

- (BOOL)allSubjectsSelected
{
  activeSubjectIndexes = [(VKCImageSubjectContext *)self activeSubjectIndexes];
  if ([activeSubjectIndexes count])
  {
  }

  else
  {
    subjectCount = [(VKCImageSubjectContext *)self subjectCount];

    if (subjectCount)
    {
      return 1;
    }
  }

  activeSubjectIndexes2 = [(VKCImageSubjectContext *)self activeSubjectIndexes];
  v5 = [activeSubjectIndexes2 count];
  v6 = v5 == [(VKCImageSubjectContext *)self subjectCount];

  return v6;
}

- (CGSize)imageSize
{
  allSubjectsInstance = [(VKCImageSubjectContext *)self allSubjectsInstance];
  [allSubjectsInstance imageSize];
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
  maskResult = [(VKCImageSubjectContext *)self maskResult];
  imageOrientation = [maskResult imageOrientation];

  return imageOrientation;
}

- (VKCRemoveBackgroundRequest)request
{
  maskResult = [(VKCImageSubjectContext *)self maskResult];
  request = [maskResult request];

  return request;
}

- (CGRect)normalizedCropRect
{
  maskResult = [(VKCImageSubjectContext *)self maskResult];
  [maskResult normalizedCropRect];
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
  activeSubjectIndexes = [(VKCImageSubjectContext *)self activeSubjectIndexes];
  v4 = [(VKCImageSubjectContext *)self madSubjectIndexesForVKSubjectIndexes:activeSubjectIndexes];

  return v4;
}

- (id)madSubjectIndexesForVKSubjectIndexes:(id)indexes
{
  indexesCopy = indexes;
  v5 = objc_alloc_init(MEMORY[0x1E696AD50]);
  subjectInstances = [(VKCImageSubjectContext *)self subjectInstances];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__VKCImageSubjectContext_madSubjectIndexesForVKSubjectIndexes___block_invoke;
  v12[3] = &unk_1E7BE4530;
  v13 = indexesCopy;
  v7 = v5;
  v14 = v7;
  v8 = indexesCopy;
  [subjectInstances enumerateObjectsUsingBlock:v12];

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
  subjectCount = [(VKCImageSubjectContext *)self subjectCount];

  return [v2 indexSetWithIndexesInRange:{0, subjectCount}];
}

- (void)preparePathsAndImageMaskIfNecessaryWithContext:(id)context
{
  contextCopy = context;
  maskResult = [(VKCImageSubjectContext *)self maskResult];
  instanceMasks = [maskResult instanceMasks];

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __73__VKCImageSubjectContext_preparePathsAndImageMaskIfNecessaryWithContext___block_invoke;
  v20[3] = &unk_1E7BE4558;
  v20[4] = self;
  v21 = contextCopy;
  v7 = contextCopy;
  v8 = [instanceMasks vk_compactMap:v20];
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

- (void)prepareInstanceImagesWithCIContext:(id)context instance:(id)instance image:(CGImage *)image
{
  contextCopy = context;
  instanceCopy = instance;
  Width = CGImageGetWidth(image);
  [instanceCopy setImageSize:{Width, CGImageGetHeight(image)}];
  [instanceCopy setMaskImage:image];
  if ([(VKCImageSubjectContext *)self imageOrientation])
  {
    v10 = [MEMORY[0x1E695F658] imageWithCGImage:image];
    v11 = [v10 imageByApplyingCGOrientation:{vk_cgImagePropertyOrientationFromVKOrientation(-[VKCImageSubjectContext imageOrientation](self, "imageOrientation"))}];

    [instanceCopy imageSize];
    v12 = [contextCopy createCGImage:v11 fromRect:*MEMORY[0x1E695F8A8] format:0 colorSpace:VKMRectWithSize()];
    [instanceCopy setOrientedMaskImage:v12];
    CGImageRelease(v12);
  }

  else
  {
    [instanceCopy setOrientedMaskImage:image];
  }
}

- (void)processPathForInstance:(id)instance
{
  v42[1] = *MEMORY[0x1E69E9840];
  instanceCopy = instance;
  v5 = objc_alloc_init(MEMORY[0x1E69844A8]);
  [v5 setDetectsDarkOnLight:0];
  v6 = objc_alloc(MEMORY[0x1E69845B8]);
  orientedMaskImage = [instanceCopy orientedMaskImage];
  v8 = [v6 initWithCGImage:orientedMaskImage options:MEMORY[0x1E695E0F8]];
  v42[0] = v5;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
  v41 = 0;
  [v8 performRequests:v9 error:&v41];
  topLevelContours = v41;

  if (topLevelContours)
  {
    firstObject = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.RemoveBackground");
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
    {
      [(VKCImageSubjectContext *)topLevelContours processPathForInstance:firstObject];
    }
  }

  else
  {
    results = [v5 results];
    firstObject = [results firstObject];

    topLevelContours = [firstObject topLevelContours];

    if (topLevelContours)
    {
      selfCopy = self;
      v33 = instanceCopy;
      v31 = objc_alloc_init(MEMORY[0x1E69DC728]);
      v13 = objc_alloc_init(MEMORY[0x1E69DC728]);
      if ([firstObject contourCount]< 1)
      {
        topLevelContours = 0;
      }

      else
      {
        v14 = 0;
        v15 = 0;
        do
        {
          v40 = v14;
          v16 = [firstObject contourAtIndex:v15 error:&v40];
          topLevelContours = v40;

          LODWORD(v17) = 981668463;
          v18 = [v16 polygonApproximationWithEpsilon:0 error:v17];
          v19 = [MEMORY[0x1E69DC728] vk_pathFromCGPath:{objc_msgSend(v18, "normalizedPath")}];
          [v13 vk_appendBezierPath:v19];

          ++v15;
          v14 = topLevelContours;
        }

        while (v15 < [firstObject contourCount]);
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
      [(VKCImageSubjectContext *)selfCopy normalizedCropRect];
      VKMTransformConvertingRectToRect(&t1, 0.0, 1.0, 1.0, v20, v21, v22, v23);
      v36 = v39;
      CGAffineTransformConcat(&t2, &v36, &t1);
      v39 = t2;
      [v13 vk_applyTransform:&t2];
      instanceCopy = v33;
      if (([v13 isEmpty] & 1) == 0)
      {
        v24 = [v13 copy];
        [v33 setBaseNormalizedSubjectPath:v24];
      }

      v25 = [firstObject topLevelContours:v28];
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

- (id)convertIndexSetToConcreteSubjectIndexes:(id)indexes
{
  indexesCopy = indexes;
  v5 = indexesCopy;
  if (indexesCopy)
  {
    allSubjectIndexes = indexesCopy;
    if (![indexesCopy count])
    {
      allSubjectIndexes = [(VKCImageSubjectContext *)self allSubjectIndexes];
    }
  }

  else
  {
    allSubjectIndexes = 0;
  }

  return allSubjectIndexes;
}

- (id)convertExternalIndexSetToInternal:(id)internal
{
  internalCopy = internal;
  allSubjectIndexes = [(VKCImageSubjectContext *)self allSubjectIndexes];
  if (internalCopy)
  {
    v6 = internalCopy;
    if ([internalCopy count])
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __60__VKCImageSubjectContext_convertExternalIndexSetToInternal___block_invoke;
      v8[3] = &unk_1E7BE45A8;
      v9 = allSubjectIndexes;
      v6 = [internalCopy indexesPassingTest:v8];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)normalizedPathForSubjectWithIndexSet:(id)set contentsRect:(CGRect)rect topLevelOnly:(BOOL)only
{
  onlyCopy = only;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  setCopy = set;
  if ([setCopy count])
  {
    v12 = [(VKCImageSubjectContext *)self convertExternalIndexSetToInternal:setCopy];
    v13 = [v12 count];
    if (v13 == [setCopy count])
    {
LABEL_11:
      if ([v12 count])
      {
        v19 = objc_alloc_init(MEMORY[0x1E69DC728]);
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __89__VKCImageSubjectContext_normalizedPathForSubjectWithIndexSet_contentsRect_topLevelOnly___block_invoke;
        v22[3] = &unk_1E7BE45D0;
        height = v19;
        v23 = height;
        selfCopy = self;
        v25 = x;
        v26 = y;
        v27 = width;
        v28 = height;
        v29 = onlyCopy;
        [setCopy enumerateIndexesUsingBlock:v22];
      }

      else
      {
        height = 0;
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

  height = [(VKCImageSubjectContext *)self normalizedPathForSubjectAtIndex:0 contentsRect:onlyCopy topLevelOnly:x, y, width, height];
LABEL_15:
  v20 = [height copy];

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

- (id)normalizedPathForSubjectAtIndex:(id)index contentsRect:(CGRect)rect topLevelOnly:(BOOL)only
{
  onlyCopy = only;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  indexCopy = index;
  if (indexCopy)
  {
    subjectInstances = [(VKCImageSubjectContext *)self subjectInstances];
    allSubjectsInstance = [subjectInstances vk_safeObjectAtIndex:{objc_msgSend(indexCopy, "integerValue")}];

    if (!allSubjectsInstance)
    {
      +[VKAssert handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:](VKAssert, "handleFailedAssertWithCondition:functionName:simulateCrash:showAlert:format:", "instance != ((void*)0)", "-[VKCImageSubjectContext normalizedPathForSubjectAtIndex:contentsRect:topLevelOnly:]", 0, 0, @"Trying to get subject at index: %ld, but the index is out of range, returning nil", [indexCopy integerValue]);
      allSubjectsInstance = 0;
    }
  }

  else
  {
    allSubjectsInstance = [(VKCImageSubjectContext *)self allSubjectsInstance];
  }

  v14 = [allSubjectsInstance normalizedSubjectPathWithContentsRect:onlyCopy topLevelOnly:{x, y, width, height}];
  v15 = [v14 copy];

  return v15;
}

- (id)normalizedPathForActiveSubjectsWithContentsRect:(CGRect)rect topLevelOnly:(BOOL)only
{
  onlyCopy = only;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  activeSubjectIndexes = [(VKCImageSubjectContext *)self activeSubjectIndexes];
  v11 = [activeSubjectIndexes count];

  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x1E69DC728]);
    activeSubjectIndexes2 = [(VKCImageSubjectContext *)self activeSubjectIndexes];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __87__VKCImageSubjectContext_normalizedPathForActiveSubjectsWithContentsRect_topLevelOnly___block_invoke;
    v17[3] = &unk_1E7BE45D0;
    height = v12;
    v18 = height;
    selfCopy = self;
    v20 = x;
    v21 = y;
    v22 = width;
    v23 = height;
    v24 = onlyCopy;
    [activeSubjectIndexes2 enumerateIndexesUsingBlock:v17];
  }

  else
  {
    height = [(VKCImageSubjectContext *)self normalizedPathForSubjectAtIndex:0 contentsRect:onlyCopy topLevelOnly:x, y, width, height];
  }

  v15 = [height copy];

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

- (BOOL)containsSubjectAtNormalizedPoint:(CGPoint)point
{
  v3 = [(VKCImageSubjectContext *)self indexOfSubjectAtNormalizedPoint:point.x, point.y];
  v4 = v3 != 0;

  return v4;
}

- (id)indexOfSubjectAtNormalizedPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__1;
  v13 = __Block_byref_object_dispose__1;
  v14 = 0;
  subjectInstances = [(VKCImageSubjectContext *)self subjectInstances];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__VKCImageSubjectContext_indexOfSubjectAtNormalizedPoint___block_invoke;
  v8[3] = &unk_1E7BE45F8;
  *&v8[5] = x;
  *&v8[6] = y;
  v8[4] = &v9;
  [subjectInstances enumerateObjectsUsingBlock:v8];

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

- (BOOL)subjectIndexes:(id)indexes equivalentToIndexes:(id)toIndexes
{
  toIndexesCopy = toIndexes;
  v7 = [(VKCImageSubjectContext *)self convertIndexSetToConcreteSubjectIndexes:indexes];
  v8 = [(VKCImageSubjectContext *)self convertIndexSetToConcreteSubjectIndexes:toIndexesCopy];

  LOBYTE(toIndexesCopy) = [v7 isEqualToIndexSet:v8];
  return toIndexesCopy;
}

- (void)processPathForInstance:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B4335000, a2, OS_LOG_TYPE_ERROR, "Error generating path from subject mask instance: %@", &v2, 0xCu);
}

@end