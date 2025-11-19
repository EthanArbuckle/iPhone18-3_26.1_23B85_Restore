@interface _PXStoryConcreteCompanionTimelineAsset
- ($AD15B6C785738E514ABCC493A298F7F8)finalContentsRect;
- ($AD15B6C785738E514ABCC493A298F7F8)initialContentsRect;
- ($E59C7DEBCD57E98EE3F0104B12BEB13C)videoTimeRange;
- (CGRect)frame;
- (PHAsset)photoLibraryAsset;
- (PXStoryCompanionColorEffect)colorNormalizationEffect;
- (_PXStoryConcreteCompanionTimelineAsset)initWithFrame:(CGRect)a3 clip:(id)a4;
- (int64_t)playbackStyle;
@end

@implementation _PXStoryConcreteCompanionTimelineAsset

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (PXStoryCompanionColorEffect)colorNormalizationEffect
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__116758;
  v21 = __Block_byref_object_dispose__116759;
  v22 = 0;
  v3 = dispatch_semaphore_create(0);
  v4 = +[PXStoryColorNormalizationCubeLibrary sharedInstance];
  v5 = [(_PXStoryConcreteCompanionTimelineAsset *)self clip];
  v6 = [v5 colorNormalization];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __66___PXStoryConcreteCompanionTimelineAsset_colorNormalizationEffect__block_invoke;
  v14 = &unk_1E773A450;
  v16 = &v17;
  v7 = v3;
  v15 = v7;
  [v4 requestColorCubeForAssetNormalization:v6 completionHandler:&v11];

  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v8 = [_PXStoryConcreteCompanionColorEffect alloc];
  v9 = [(_PXStoryConcreteCompanionColorEffect *)v8 initWithColorLookupCube:v18[5], v11, v12, v13, v14];

  _Block_object_dispose(&v17, 8);

  return v9;
}

- ($AD15B6C785738E514ABCC493A298F7F8)finalContentsRect
{
  v3 = [(_PXStoryConcreteCompanionTimelineAsset *)self clip];
  if (v3)
  {
    [v3 info];
  }

  else
  {
    bzero(v5, 0x300uLL);
  }

  v8 = *&v5[600];
  v9 = v6;
  v10 = v7;
  PXStoryCompanionRectFromPXStoryContentsRect();
}

- ($AD15B6C785738E514ABCC493A298F7F8)initialContentsRect
{
  v3 = [(_PXStoryConcreteCompanionTimelineAsset *)self clip];
  if (v3)
  {
    [v3 info];
  }

  else
  {
    bzero(v5, 0x300uLL);
  }

  v8 = *&v5[552];
  v9 = v6;
  v10 = v7;
  PXStoryCompanionRectFromPXStoryContentsRect();
}

- ($E59C7DEBCD57E98EE3F0104B12BEB13C)videoTimeRange
{
  v4 = [(_PXStoryConcreteCompanionTimelineAsset *)self clip];
  v5 = v4;
  if (v4)
  {
    [v4 videoTimeRange];
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
  }

  *&retstr->var0.var0 = v7;
  *&retstr->var0.var3 = v8;
  *&retstr->var1.var1 = v9;

  return result;
}

- (int64_t)playbackStyle
{
  v2 = [(_PXStoryConcreteCompanionTimelineAsset *)self clip];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  [v2 info];
  v4 = v6;

  if ((v4 - 1) >= 5)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

- (PHAsset)photoLibraryAsset
{
  v4 = [(_PXStoryConcreteCompanionTimelineAsset *)self clip];
  v5 = [v4 resource];

  v6 = [v5 px_storyResourceDisplayAsset];

  v7 = v6;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = objc_opt_class();
    v11 = NSStringFromClass(v12);
    v13 = [v7 px_descriptionForAssertionMessage];
    [v9 handleFailureInMethod:a2 object:self file:@"PXStoryConcreteCompanionTimeline.m" lineNumber:171 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"asset", v11, v13}];
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [v9 handleFailureInMethod:a2 object:self file:@"PXStoryConcreteCompanionTimeline.m" lineNumber:171 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"asset", v11}];
  }

LABEL_3:

  return v7;
}

- (_PXStoryConcreteCompanionTimelineAsset)initWithFrame:(CGRect)a3 clip:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = _PXStoryConcreteCompanionTimelineAsset;
  v11 = [(_PXStoryConcreteCompanionTimelineAsset *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_frame.origin.x = x;
    v11->_frame.origin.y = y;
    v11->_frame.size.width = width;
    v11->_frame.size.height = height;
    objc_storeStrong(&v11->_clip, a4);
  }

  return v12;
}

@end