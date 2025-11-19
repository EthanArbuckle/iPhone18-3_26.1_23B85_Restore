@interface _UIImageContent
+ (BOOL)content:(void *)a3 isEqualToContent:;
+ (_UIImageContent)empty;
+ (void)_cachePreparedContent:(void *)a3 forDisplayOfContent:;
- (BOOL)_isSameSymbolImageContentExceptVariableValue:(id)a3;
- (BOOL)addContentToDestination:(CGImageDestination *)a3 properties:(id)a4;
- (CGSize)CGPDFPageSize;
- (CGSize)CGSVGDocumentSize;
- (CGSize)size;
- (CGSize)sizeInPixels;
- (_UIImageContent)init;
- (_UIImageContent)initWithScale:(double)a3;
- (double)imageMaximumHeadroom;
- (id)_existingPreparedContentForDisplay;
- (id)debugDescription;
- (id)debugQuickLookObject;
- (id)renditionWithSize:(CGSize)a3 scale:(double)a4 renditionContext:(id)a5;
- (void)_prepareForDrawingWithSize:(CGSize)a3 scale:(double)a4 inContext:(CGContext *)a5;
@end

@implementation _UIImageContent

- (CGSize)size
{
  [(_UIImageContent *)self sizeInPixels];
  scale = self->_scale;
  v5 = v4 / scale;
  v7 = v6 / scale;
  result.height = v7;
  result.width = v5;
  return result;
}

+ (_UIImageContent)empty
{
  if (qword_1ED4996B0 != -1)
  {
    dispatch_once(&qword_1ED4996B0, &__block_literal_global_199);
  }

  v3 = qword_1ED4996A8;

  return v3;
}

- (id)_existingPreparedContentForDisplay
{
  v1 = a1;
  if (a1)
  {
    os_unfair_lock_lock(&_MergedGlobals_51);
    v1 = [qword_1ED4996C8 objectForKey:v1];
    os_unfair_lock_unlock(&_MergedGlobals_51);
  }

  return v1;
}

- (_UIImageContent)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UIImageContent.m" lineNumber:87 description:@"You can't just init an _UIImageContent!"];

  return 0;
}

- (_UIImageContent)initWithScale:(double)a3
{
  v6.receiver = self;
  v6.super_class = _UIImageContent;
  result = [(_UIImageContent *)&v6 init];
  if (result)
  {
    v5 = 1.0;
    if (a3 > 0.0)
    {
      v5 = a3;
    }

    result->_scale = v5;
  }

  return result;
}

- (double)imageMaximumHeadroom
{
  v2 = [(_UIImageContent *)self isHDR];
  result = 1.0;
  if (v2)
  {
    return 8.0;
  }

  return result;
}

- (BOOL)addContentToDestination:(CGImageDestination *)a3 properties:(id)a4
{
  v6 = a4;
  if ([(_UIImageContent *)self canWriteToImageIO]&& (v7 = [(_UIImageContent *)self CGImage]) != 0)
  {
    CGImageDestinationAddImage(a3, v7, v6);
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (void)_cachePreparedContent:(void *)a3 forDisplayOfContent:
{
  v8 = a3;
  v4 = a2;
  objc_opt_self();
  os_unfair_lock_lock(&_MergedGlobals_51);
  v5 = qword_1ED4996C8;
  if (!qword_1ED4996C8)
  {
    v6 = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
    v7 = qword_1ED4996C8;
    qword_1ED4996C8 = v6;

    v5 = qword_1ED4996C8;
  }

  [v5 setObject:v4 forKey:v8];
  [qword_1ED4996C8 setObject:v4 forKey:v4];

  os_unfair_lock_unlock(&_MergedGlobals_51);
}

- (CGSize)CGPDFPageSize
{
  if ([(_UIImageContent *)self isCGPDFPage])
  {
    BoxRect = CGPDFPageGetBoxRect([(_UIImageContent *)self CGPDFPage], kCGPDFMediaBox);
    width = BoxRect.size.width;
    height = BoxRect.size.height;
    [(_UIImageContent *)self vectorScale:BoxRect.origin.x];
    v6 = width / v5;
    [(_UIImageContent *)self vectorScale];
    v8 = height / v7;
  }

  else
  {
    v6 = *MEMORY[0x1E695F060];
    v8 = *(MEMORY[0x1E695F060] + 8);
  }

  v9 = v6;
  result.height = v8;
  result.width = v9;
  return result;
}

- (CGSize)CGSVGDocumentSize
{
  if ([(_UIImageContent *)self isCGSVGDocument])
  {
    [(_UIImageContent *)self CGSVGDocument];
    CGSVGDocumentGetCanvasSize();
    v4 = v3;
    v6 = v5;
    [(_UIImageContent *)self vectorScale];
    v8 = v4 / v7;
    [(_UIImageContent *)self vectorScale];
    v10 = v6 / v9;
  }

  else
  {
    v8 = *MEMORY[0x1E695F060];
    v10 = *(MEMORY[0x1E695F060] + 8);
  }

  v11 = v8;
  result.height = v10;
  result.width = v11;
  return result;
}

+ (BOOL)content:(void *)a3 isEqualToContent:
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  if (v4 == v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = 0;
    if (v4 && v5)
    {
      v7 = objc_opt_class();
      if (v7 == objc_opt_class())
      {
        [v4 scale];
        v9 = v8;
        [v5 scale];
        v6 = v9 == v10;
      }

      else
      {
        v6 = 0;
      }
    }
  }

  return v6;
}

- (BOOL)_isSameSymbolImageContentExceptVariableValue:(id)a3
{
  v4 = a3;
  v5 = [(_UIImageContent *)self vectorGlyph];
  [v5 variableMinValue];
  if (v6 != INFINITY || ([v5 variableMaxValue], v7 != INFINITY))
  {
    v8 = [v5 copy];

    [v8 setVariableMinValue:INFINITY];
    [v8 setVariableMaxValue:INFINITY];
    v5 = v8;
  }

  v9 = [v4 vectorGlyph];
  [v9 variableMinValue];
  if (v10 != INFINITY || ([v9 variableMaxValue], v11 != INFINITY))
  {
    v12 = [v9 copy];

    [v12 setVariableMinValue:INFINITY];
    [v12 setVariableMaxValue:INFINITY];
    v9 = v12;
  }

  v13 = 0;
  if (v5 && v9)
  {
    v13 = [v5 isEqual:v9];
  }

  return v13;
}

- (id)renditionWithSize:(CGSize)a3 scale:(double)a4 renditionContext:(id)a5
{
  height = a3.height;
  width = a3.width;
  v9 = a5;
  if (a4 <= 0.0)
  {
    [(_UIImageContent *)self scale];
    a4 = v10;
  }

  if (_UIImageDummyImageContentRendering())
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __60___UIImageContent_renditionWithSize_scale_renditionContext___block_invoke;
    aBlock[3] = &unk_1E7106CF0;
    aBlock[4] = self;
    *&aBlock[5] = a4;
    *&aBlock[6] = width;
    *&aBlock[7] = height;
    v11 = _Block_copy(aBlock);
    v12 = [(_UIImageContentRenditionContext *)v9 _renderingEffectsWithSize:height];
    v13 = 0;
    v14 = 0;
LABEL_19:
    v38[0] = 0;
    v38[1] = v38;
    v38[2] = 0x3032000000;
    v38[3] = __Block_byref_object_copy__74;
    v38[4] = __Block_byref_object_dispose__74;
    v39 = 0;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __60___UIImageContent_renditionWithSize_scale_renditionContext___block_invoke_38;
    v32[3] = &unk_1E7106E98;
    v34 = v38;
    v35 = a4;
    v36 = width;
    v37 = height;
    v11 = v11;
    v33 = v11;
    v19 = _Block_copy(v32);

    _Block_object_dispose(v38, 8);
    v27 = v13;
    goto LABEL_20;
  }

  v12 = [(_UIImageContentRenditionContext *)v9 _renderingEffectsWithSize:height];
  [(_UIImageContent *)self size];
  if (v16 == width && v15 == height && ([(_UIImageContent *)self scale], a4 == v17) && [(_UIImageContent *)self hasCGImage])
  {
    v18 = [(_UIImageContent *)self CGImage];
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __60___UIImageContent_renditionWithSize_scale_renditionContext___block_invoke_2;
    v62[3] = &__block_descriptor_40_e15___CGImage__8__0l;
    v62[4] = v18;
    v19 = _Block_copy(v62);
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __60___UIImageContent_renditionWithSize_scale_renditionContext___block_invoke_3;
    v61[3] = &unk_1E7106CF0;
    v61[4] = self;
    *&v61[5] = width;
    *&v61[6] = height;
    *&v61[7] = a4;
    v11 = _Block_copy(v61);
    v14 = 0;
  }

  else
  {
    if (![(_UIImageContent *)self _canProvideCGImageDirectly])
    {
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __60___UIImageContent_renditionWithSize_scale_renditionContext___block_invoke_3_37;
      v40[3] = &unk_1E7106E48;
      v40[4] = self;
      v42 = width;
      v43 = height;
      v44 = a4;
      v41 = v9;
      v11 = _Block_copy(v40);

      v14 = 0;
      v13 = 1;
      goto LABEL_19;
    }

    if (v12)
    {
      v20 = v12[2];
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;
    if ([(_UIImageContentRenditionContext *)v9 _shouldResolveTemplateColor:v21])
    {
      [(UIBackgroundConfiguration *)v12 _setCustomView:?];
    }

    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __60___UIImageContent_renditionWithSize_scale_renditionContext___block_invoke_4;
    v54[3] = &unk_1E7106D88;
    v22 = v9;
    v55 = v22;
    v56 = self;
    v58 = width;
    v59 = height;
    v60 = a4;
    v23 = v21;
    v57 = v23;
    v19 = _Block_copy(v54);
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __60___UIImageContent_renditionWithSize_scale_renditionContext___block_invoke_7;
    v48[3] = &unk_1E7106DB0;
    v48[4] = self;
    v51 = width;
    v52 = height;
    v53 = a4;
    v24 = v22;
    v49 = v24;
    v25 = v23;
    v50 = v25;
    v11 = _Block_copy(v48);
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __60___UIImageContent_renditionWithSize_scale_renditionContext___block_invoke_10;
    v45[3] = &unk_1E7106E20;
    v46 = v24;
    v47 = v25;
    v26 = v25;
    v14 = _Block_copy(v45);
  }

  v13 = 0;
  v27 = 0;
  if (!v19)
  {
    goto LABEL_19;
  }

LABEL_20:
  v28 = [_UIImageContentProvider providerWithDrawingProvider:v11 CGImageProvider:v19 rbSymbolConfigurationProvider:v14];
  if (!v9 || (v27 & 1) != 0)
  {
    v29 = [_UIImageContentRendition renditionWithContentProvider:v28];
  }

  else
  {
    v29 = [(_UIImageContentRenditionContext *)v9 _renditionWithContentProvider:v28 effects:v12 size:width, height];
  }

  v30 = v29;

  return v30;
}

- (void)_prepareForDrawingWithSize:(CGSize)a3 scale:(double)a4 inContext:(CGContext *)a5
{
  [(_UIImageContent *)self scale:a3.width];
  v8 = a4 / v7;

  CGContextScaleCTM(a5, v8, v8);
}

- (id)debugDescription
{
  [(_UIImageContent *)self size];
  v4 = v3;
  v6 = v5;
  v7 = MEMORY[0x1E696AEC0];
  v8 = objc_opt_class();
  v9 = [(_UIImageContent *)self description];
  v10 = [v7 stringWithFormat:@"<%@:%p (%g, %g) [%@]>", v8, self, v4, v6, v9];

  return v10;
}

- (id)debugQuickLookObject
{
  v2 = [[UIImage alloc] _initWithContent:self orientation:0];

  return v2;
}

- (CGSize)sizeInPixels
{
  width = self->_sizeInPixels.width;
  height = self->_sizeInPixels.height;
  result.height = height;
  result.width = width;
  return result;
}

@end