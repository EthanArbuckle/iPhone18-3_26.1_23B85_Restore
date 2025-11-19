@interface VKCaptureTextDetectionResult
- (CGRect)_imageBounds;
- (CGRect)boundingBox;
- (VKCaptureTextDetectionResult)initWithBlock:(id)a3 imageSize:(CGSize)a4;
- (VKCaptureTextDetectionResult)initWithBlocks:(id)a3 imageSize:(CGSize)a4;
- (id)boundingPathWithPadding:(double)a3 cornerRadius:(double)a4;
- (id)groupedPath;
- (id)groupedPathForLinesWithPadding:(double)a3 cornerRadius:(double)a4;
@end

@implementation VKCaptureTextDetectionResult

- (VKCaptureTextDetectionResult)initWithBlock:(id)a3 imageSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v13 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v7 = MEMORY[0x1E695DEC8];
  v8 = a3;
  v9 = [v7 arrayWithObjects:&v12 count:1];

  v10 = [(VKCaptureTextDetectionResult *)self initWithBlocks:v9 imageSize:width, height, v12, v13];
  return v10;
}

- (VKCaptureTextDetectionResult)initWithBlocks:(id)a3 imageSize:(CGSize)a4
{
  v5 = a3;
  v33.receiver = self;
  v33.super_class = VKCaptureTextDetectionResult;
  v6 = [(VKCaptureTextDetectionResult *)&v33 init];
  if (v6)
  {
    v6->__imageBounds.origin.x = VKMRectWithSize();
    v6->__imageBounds.origin.y = v7;
    v6->__imageBounds.size.width = v8;
    v6->__imageBounds.size.height = v9;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __57__VKCaptureTextDetectionResult_initWithBlocks_imageSize___block_invoke;
    v31[3] = &unk_1E7BE4458;
    v10 = v6;
    v32 = v10;
    v11 = [v5 vk_compactMap:v31];
    blockQuads = v10->_blockQuads;
    v10->_blockQuads = v11;

    v13 = [v5 vk_flatMap:&__block_literal_global_1];
    v14 = [v13 vk_compactMap:&__block_literal_global_153];
    normalizedLineQuads = v10->_normalizedLineQuads;
    v10->_normalizedLineQuads = v14;

    v16 = v10->_normalizedLineQuads;
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __57__VKCaptureTextDetectionResult_initWithBlocks_imageSize___block_invoke_4;
    v29 = &unk_1E7BE44C0;
    v17 = v10;
    v30 = v17;
    v18 = [(NSArray *)v16 vk_compactMap:&v26];
    lineQuads = v17->_lineQuads;
    v17->_lineQuads = v18;

    v21 = VKVNBaselineAngles(v13, v20);
    v22 = VKVNGlobalBaselineAngleFromAngles(v21);
    v23 = [VKQuad quadFromUnionOfQuads:v17->_lineQuads baselineAngle:v26, v27, v28, v29];
    boundingQuad = v17->_boundingQuad;
    v17->_boundingQuad = v23;

    v17->_baselineAngle = v22;
  }

  return v6;
}

VKQuad *__57__VKCaptureTextDetectionResult_initWithBlocks_imageSize___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 bottomLeft];
  VKMFlipPoint();
  v6 = VKMPointFromNormalizedRect(v4, v5, *(*(a1 + 32) + 48), *(*(a1 + 32) + 56), *(*(a1 + 32) + 64));
  v25 = v7;
  v26 = v6;
  [v3 bottomRight];
  VKMFlipPoint();
  v10 = VKMPointFromNormalizedRect(v8, v9, *(*(a1 + 32) + 48), *(*(a1 + 32) + 56), *(*(a1 + 32) + 64));
  v23 = v11;
  v24 = v10;
  [v3 topLeft];
  VKMFlipPoint();
  v14 = VKMPointFromNormalizedRect(v12, v13, *(*(a1 + 32) + 48), *(*(a1 + 32) + 56), *(*(a1 + 32) + 64));
  v16 = v15;
  [v3 topRight];

  VKMFlipPoint();
  v19 = VKMPointFromNormalizedRect(v17, v18, *(*(a1 + 32) + 48), *(*(a1 + 32) + 56), *(*(a1 + 32) + 64));
  v21 = [[VKQuad alloc] initWithBottomLeft:v26 bottomRight:v25 topLeft:v24 topRight:v23, v14, v16, v19, v20];

  return v21;
}

VKQuad *__57__VKCaptureTextDetectionResult_initWithBlocks_imageSize___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 bottomLeft];
  VKMFlipPoint();
  v17 = v4;
  v18 = v3;
  [v2 bottomRight];
  VKMFlipPoint();
  v15 = v6;
  v16 = v5;
  [v2 topLeft];
  VKMFlipPoint();
  v8 = v7;
  v10 = v9;
  [v2 topRight];

  VKMFlipPoint();
  v13 = [[VKQuad alloc] initWithBottomLeft:v18 bottomRight:v17 topLeft:v16 topRight:v15, v8, v10, v11, v12];

  return v13;
}

VKQuad *__57__VKCaptureTextDetectionResult_initWithBlocks_imageSize___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 bottomLeft];
  v6 = VKMPointFromNormalizedRect(v4, v5, *(*(a1 + 32) + 48), *(*(a1 + 32) + 56), *(*(a1 + 32) + 64));
  v8 = v7;
  [v3 bottomRight];
  v11 = VKMPointFromNormalizedRect(v9, v10, *(*(a1 + 32) + 48), *(*(a1 + 32) + 56), *(*(a1 + 32) + 64));
  v13 = v12;
  [v3 topLeft];
  v16 = VKMPointFromNormalizedRect(v14, v15, *(*(a1 + 32) + 48), *(*(a1 + 32) + 56), *(*(a1 + 32) + 64));
  v18 = v17;
  [v3 topRight];
  v20 = v19;
  v22 = v21;

  v23 = VKMPointFromNormalizedRect(v20, v22, *(*(a1 + 32) + 48), *(*(a1 + 32) + 56), *(*(a1 + 32) + 64));
  v25 = [[VKQuad alloc] initWithBottomLeft:v6 bottomRight:v8 topLeft:v11 topRight:v13, v16, v18, v23, v24];

  return v25;
}

- (CGRect)boundingBox
{
  v2 = [(VKCaptureTextDetectionResult *)self boundingQuad];
  [v2 boundingBox];
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

- (id)groupedPath
{
  [(VKCaptureTextDetectionResult *)self _imageBounds];
  v4 = v3;
  v6 = v5;
  v7 = VKMAspectRatio(v3, v5);
  v8 = MEMORY[0x1E69DC728];
  v9 = [(VKCaptureTextDetectionResult *)self normalizedLineQuads];
  v10 = [v8 vk_roundAndGroupNormalizedQuadsForHighlight:v9 aspectRatio:v7 expansionScale:0.3 radiusToAvgHeightRatio:0.35];

  CGAffineTransformMakeScale(&v12, v4, v6);
  [v10 applyTransform:&v12];

  return v10;
}

- (id)boundingPathWithPadding:(double)a3 cornerRadius:(double)a4
{
  v7 = [(VKCaptureTextDetectionResult *)self boundingQuad];
  v8 = [v7 path];

  v9 = [v8 vk_expandWithOffset:a3];
  v10 = MEMORY[0x1E69DC728];
  [(VKCaptureTextDetectionResult *)self _imageBounds];
  v11 = [v10 bezierPathWithRect:?];
  v12 = [v9 vk_intersectAndFlattenWithPath:v11];
  v13 = MEMORY[0x1E69DC728];
  v14 = [v12 vk_allPoints];
  v15 = [v13 vk_newRoundedPathWithRadius:v14 points:a4];

  v16 = [MEMORY[0x1E69DC728] bezierPathWithCGPath:v15];
  CGPathRelease(v15);

  return v16;
}

- (id)groupedPathForLinesWithPadding:(double)a3 cornerRadius:(double)a4
{
  v38 = *MEMORY[0x1E69E9840];
  [(VKCaptureTextDetectionResult *)self _imageBounds];
  x = v40.origin.x;
  y = v40.origin.y;
  width = v40.size.width;
  height = v40.size.height;
  MinX = CGRectGetMinX(v40);
  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  MaxX = CGRectGetMaxX(v41);
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  MinY = CGRectGetMinY(v42);
  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  MaxY = CGRectGetMaxY(v43);
  v14 = [(VKCaptureTextDetectionResult *)self lineQuads];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __76__VKCaptureTextDetectionResult_groupedPathForLinesWithPadding_cornerRadius___block_invoke;
  v36[3] = &__block_descriptor_72_e22__32__0__VKQuad_8q16q24l;
  *&v36[4] = MinX;
  *&v36[5] = a3;
  *&v36[6] = MinY;
  *&v36[7] = MaxX;
  *&v36[8] = MaxY;
  v15 = [v14 vk_compactMap:v36];

  v16 = [MEMORY[0x1E69DC728] bezierPath];
  [v16 setUsesEvenOddFillRule:0];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v15;
  v17 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v33;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v33 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v32 + 1) + 8 * i);
        v22 = [MEMORY[0x1E695DF70] array];
        v23 = [v21 CGPath];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __76__VKCaptureTextDetectionResult_groupedPathForLinesWithPadding_cornerRadius___block_invoke_2;
        block[3] = &unk_1E7BE4508;
        v31 = v22;
        v24 = v22;
        CGPathApplyWithBlock(v23, block);
        v25 = [MEMORY[0x1E69DC728] vk_newRoundedPathWithRadius:v24 points:a4];
        v26 = [MEMORY[0x1E69DC728] bezierPathWithCGPath:v25];
        [v16 appendPath:v26];

        CGPathRelease(v25);
      }

      v18 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v18);
  }

  return v16;
}

id __76__VKCaptureTextDetectionResult_groupedPathForLinesWithPadding_cornerRadius___block_invoke(double *a1, void *a2)
{
  v3 = a2;
  [v3 bottomLeft];
  v5 = v4;
  v7 = v6;
  [v3 bottomRight];
  v9 = v8;
  v11 = v10;
  [v3 topLeft];
  v13 = v12;
  v15 = v14;
  [v3 topRight];
  v17 = v16;
  v19 = v18;

  v20 = a1[4];
  v21 = a1[5];
  if (v20 >= v13 - v21)
  {
    v22 = a1[4];
  }

  else
  {
    v22 = v13 - v21;
  }

  v23 = a1[6];
  v24 = a1[7];
  if (v23 >= v15 - v21)
  {
    v25 = a1[6];
  }

  else
  {
    v25 = v15 - v21;
  }

  if (v24 >= v17 + v21)
  {
    v26 = v17 + v21;
  }

  else
  {
    v26 = a1[7];
  }

  if (v23 >= v19 - v21)
  {
    v27 = a1[6];
  }

  else
  {
    v27 = v19 - v21;
  }

  if (v20 >= v5 - v21)
  {
    v28 = a1[4];
  }

  else
  {
    v28 = v5 - v21;
  }

  v29 = a1[8];
  if (v29 >= v7 + v21)
  {
    v30 = v7 + v21;
  }

  else
  {
    v30 = a1[8];
  }

  if (v24 >= v9 + v21)
  {
    v31 = v9 + v21;
  }

  else
  {
    v31 = a1[7];
  }

  v32 = v11 + v21;
  if (v29 >= v32)
  {
    v33 = v32;
  }

  else
  {
    v33 = a1[8];
  }

  v34 = [MEMORY[0x1E69DC728] bezierPath];
  [v34 moveToPoint:{v22, v25}];
  [v34 addLineToPoint:{v26, v27}];
  [v34 addLineToPoint:{v31, v33}];
  [v34 addLineToPoint:{v28, v30}];
  [v34 closePath];

  return v34;
}

void __76__VKCaptureTextDetectionResult_groupedPathForLinesWithPadding_cornerRadius___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) count] != 4)
  {
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x1E696B098] valueWithCGPoint:{**(a2 + 8), *(*(a2 + 8) + 8)}];
    [v4 addObject:v5];
  }
}

- (CGRect)_imageBounds
{
  x = self->__imageBounds.origin.x;
  y = self->__imageBounds.origin.y;
  width = self->__imageBounds.size.width;
  height = self->__imageBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end