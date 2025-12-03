@interface _UIASCIIArtFramesRenderer
- (CGRect)scaledRectForRect:(CGRect)rect scaleSize:(CGSize)size;
- (_UIASCIIArtFramesRenderer)initWithFrames:(id)frames outputLineWidth:(double)width;
- (id)_normalizeFrames:(id)frames;
- (id)renderedLines;
- (id)visualDescription;
@end

@implementation _UIASCIIArtFramesRenderer

- (_UIASCIIArtFramesRenderer)initWithFrames:(id)frames outputLineWidth:(double)width
{
  framesCopy = frames;
  v12.receiver = self;
  v12.super_class = _UIASCIIArtFramesRenderer;
  v7 = [(_UIASCIIArtFramesRenderer *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v9 = [(_UIASCIIArtFramesRenderer *)v7 _normalizeFrames:framesCopy];
    frames = v8->_frames;
    v8->_frames = v9;

    v8->_outputLineWidth = width;
  }

  return v8;
}

- (id)visualDescription
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  renderedLines = [(_UIASCIIArtFramesRenderer *)self renderedLines];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46___UIASCIIArtFramesRenderer_visualDescription__block_invoke;
  v7[3] = &unk_1E70FA6E8;
  v5 = v3;
  v8 = v5;
  [renderedLines enumerateObjectsUsingBlock:v7];

  return v5;
}

- (id)renderedLines
{
  v83 = *MEMORY[0x1E69E9840];
  v74 = 0;
  v75 = &v74;
  v76 = 0x4010000000;
  v77 = "";
  v3 = *(MEMORY[0x1E695F058] + 16);
  v78 = *MEMORY[0x1E695F058];
  v79 = v3;
  frames = self->_frames;
  v73[0] = MEMORY[0x1E69E9820];
  v73[1] = 3221225472;
  v73[2] = __42___UIASCIIArtFramesRenderer_renderedLines__block_invoke;
  v73[3] = &unk_1E70FA710;
  v73[4] = &v74;
  [(NSArray *)frames enumerateObjectsUsingBlock:v73];
  [(_UIASCIIArtFramesRenderer *)self outputLineWidth];
  v6 = v5 / CGRectGetWidth(v75[1]);
  [(_UIASCIIArtFramesRenderer *)self scaledRectForRect:v75[1].origin.x scaleSize:v75[1].origin.y, v75[1].size.width, v75[1].size.height, v6, v6 * 0.5];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  frames = [(_UIASCIIArtFramesRenderer *)self frames];
  v17 = [frames countByEnumeratingWithState:&v69 objects:v82 count:16];
  if (v17)
  {
    v18 = *v70;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v70 != v18)
        {
          objc_enumerationMutation(frames);
        }

        [*(*(&v69 + 1) + 8 * i) CGRectValue];
        [_UIASCIIArtFramesRenderer scaledRectForRect:"scaledRectForRect:scaleSize:" scaleSize:?];
        v20 = [MEMORY[0x1E696B098] valueWithCGRect:?];
        [v15 addObject:v20];
      }

      v17 = [frames countByEnumeratingWithState:&v69 objects:v82 count:16];
    }

    while (v17);
  }

  v85.origin.x = v8;
  v85.origin.y = v10;
  v85.size.width = v12;
  v85.size.height = v14;
  MaxY = CGRectGetMaxY(v85);
  v86.origin.x = v8;
  v86.origin.y = v10;
  v86.size.width = v12;
  v86.size.height = v14;
  MaxX = CGRectGetMaxX(v86);
  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = (MaxY + 1.0);
  if ((v24 & 0x8000000000000000) == 0)
  {
    v25 = v24 + 1;
    do
    {
      v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [v23 addObject:v26];

      --v25;
    }

    while (v25);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __42___UIASCIIArtFramesRenderer_renderedLines__block_invoke_2;
  aBlock[3] = &unk_1E70FA738;
  v47 = v23;
  v68 = v47;
  v27 = _Block_copy(aBlock);
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v15;
  v28 = [obj countByEnumeratingWithState:&v63 objects:v81 count:16];
  if (v28)
  {
    v29 = *v64;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v64 != v29)
        {
          objc_enumerationMutation(obj);
        }

        [*(*(&v63 + 1) + 8 * j) CGRectValue];
        x = v87.origin.x;
        y = v87.origin.y;
        width = v87.size.width;
        height = v87.size.height;
        MinY = CGRectGetMinY(v87);
        v88.origin.x = x;
        v88.origin.y = y;
        v88.size.width = width;
        v88.size.height = height;
        v36 = MinY;
        v37 = CGRectGetMaxY(v88);
        if (MinY <= v37)
        {
          v38 = 0;
          do
          {
            if (!v38 || v37 == v36)
            {
              v91.origin.x = x;
              v91.origin.y = y;
              v91.size.width = width;
              v91.size.height = height;
              CGRectGetMinX(v91);
              v92.origin.x = x;
              v92.origin.y = y;
              v92.size.width = width;
              v92.size.height = height;
              CGRectGetMaxX(v92);
              v27[2](v27);
            }

            else
            {
              v89.origin.x = x;
              v89.origin.y = y;
              v89.size.width = width;
              v89.size.height = height;
              MinX = CGRectGetMinX(v89);
              v90.origin.x = x;
              v90.origin.y = y;
              v90.size.width = width;
              v90.size.height = height;
              v40 = CGRectGetMaxX(v90);
              (v27[2])(v27, MinX, 1, v36);
              (v27[2])(v27, v40, 1, v36);
            }

            ++v36;
            --v38;
          }

          while (v37 + 1 != v36);
        }
      }

      v28 = [obj countByEnumeratingWithState:&v63 objects:v81 count:16];
    }

    while (v28);
  }

  v49 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v48 = v47;
  v41 = [v48 countByEnumeratingWithState:&v59 objects:v80 count:16];
  if (v41)
  {
    v42 = *v60;
    do
    {
      for (k = 0; k != v41; ++k)
      {
        if (*v60 != v42)
        {
          objc_enumerationMutation(v48);
        }

        v44 = *(*(&v59 + 1) + 8 * k);
        v53 = 0;
        v54 = &v53;
        v55 = 0x3032000000;
        v56 = __Block_byref_object_copy__27;
        v57 = __Block_byref_object_dispose__27;
        v58 = [&stru_1EFB14550 stringByPaddingToLength:(MaxX + 1.0) withString:@" " startingAtIndex:0];
        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = __42___UIASCIIArtFramesRenderer_renderedLines__block_invoke_24;
        v50[3] = &unk_1E70FA7A8;
        v51 = &__block_literal_global_103;
        v52 = &v53;
        [v44 enumerateObjectsUsingBlock:v50];
        [v49 addObject:v54[5]];

        _Block_object_dispose(&v53, 8);
      }

      v41 = [v48 countByEnumeratingWithState:&v59 objects:v80 count:16];
    }

    while (v41);
  }

  _Block_object_dispose(&v74, 8);

  return v49;
}

- (CGRect)scaledRectForRect:(CGRect)rect scaleSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = rect.size.height;
  v7 = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = size.width * CGRectGetMinX(rect);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = v7;
  v18.size.height = v6;
  v11 = height * CGRectGetMinY(v18);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = v7;
  v19.size.height = v6;
  v12 = width * CGRectGetWidth(v19);
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = v7;
  v20.size.height = v6;
  v13 = height * CGRectGetHeight(v20);
  v14 = v10;
  v15 = v11;
  v16 = v12;

  return NSIntegralRectWithOptions(*&v14, 0xF0000uLL);
}

- (id)_normalizeFrames:(id)frames
{
  framesCopy = frames;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3010000000;
  v14 = "";
  v15 = *MEMORY[0x1E695EFF8];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46___UIASCIIArtFramesRenderer__normalizeFrames___block_invoke;
  v10[3] = &unk_1E70FA710;
  v10[4] = &v11;
  [framesCopy enumerateObjectsUsingBlock:v10];
  v16 = *(v12 + 2);
  _Block_object_dispose(&v11, 8);
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46___UIASCIIArtFramesRenderer__normalizeFrames___block_invoke_2;
  v7[3] = &unk_1E70FA7D0;
  v9 = v16;
  v5 = v4;
  v8 = v5;
  [framesCopy enumerateObjectsUsingBlock:v7];

  return v5;
}

@end