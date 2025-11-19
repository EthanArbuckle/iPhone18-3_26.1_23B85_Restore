@interface PXFeedLayoutGenerator
- (BOOL)scanTile:(PXTileInfo *)a3 ofType:(int64_t)a4;
- (BOOL)scanTile:(PXTileInfo *)a3 passingTest:(id)a4;
- (BOOL)scanTile:(PXTileInfo *)a3 type:(int64_t *)a4;
- (CGSize)captionSizeForTileAtIndex:(int64_t)a3 proposedSize:(CGSize)a4;
- (CGSize)commentSizeForTileAtIndex:(int64_t)a3 commentIndex:(int64_t)a4 proposedSize:(CGSize)a5;
- (CGSize)interTileSpacing;
- (CGSize)likesSizeForTileAtIndex:(int64_t)a3 proposedSize:(CGSize)a4;
- (CGSize)noCaptionSpacing;
- (PXFeedLayoutGenerator)init;
- (PXFeedLayoutGeneratorScanState)scanState;
- (UIEdgeInsets)captionPadding;
- (double)valueByRounding:(double)a3 usingMagneticGuidelines:(BOOL)a4;
- (void)enumerateFramesWithBlock:(id)a3;
- (void)parseTiles;
- (void)parsedFrame:(CGRect)a3 type:(int64_t)a4 forTileAtIndex:(int64_t)a5;
- (void)setScanState:(id)a3;
- (void)willParseTiles;
@end

@implementation PXFeedLayoutGenerator

- (CGSize)noCaptionSpacing
{
  width = self->_noCaptionSpacing.width;
  height = self->_noCaptionSpacing.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)captionPadding
{
  top = self->_captionPadding.top;
  left = self->_captionPadding.left;
  bottom = self->_captionPadding.bottom;
  right = self->_captionPadding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)interTileSpacing
{
  width = self->_interTileSpacing.width;
  height = self->_interTileSpacing.height;
  result.height = height;
  result.width = width;
  return result;
}

- (double)valueByRounding:(double)a3 usingMagneticGuidelines:(BOOL)a4
{
  if (a4 && [(PXFeedLayoutGenerator *)self numberOfMagneticGuidelines]>= 1)
  {
    [(PXFeedLayoutGenerator *)self referenceDistanceForMagneticGuidelines];
    v7 = v6;
    v8 = [(PXFeedLayoutGenerator *)self numberOfMagneticGuidelines]+ 1;
    a3 = v7 / v8 * round(a3 / (v7 / v8));
  }

  [(PXFeedLayoutGenerator *)self roundingScale];
  return round(a3 * v9) / v9;
}

- (void)parsedFrame:(CGRect)a3 type:(int64_t)a4 forTileAtIndex:(int64_t)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = [(PXFeedLayoutGenerator *)self parsedFrameBlock];

  if (v12)
  {
    v14 = 0;
    v13 = [(PXFeedLayoutGenerator *)self parsedFrameBlock];
    (v13)[2](v13, a5, a4, &v14, x, y, width, height);

    if (v14 == 1)
    {
      [(PXFeedLayoutGenerator *)self setShouldStop:1];
    }
  }
}

- (CGSize)commentSizeForTileAtIndex:(int64_t)a3 commentIndex:(int64_t)a4 proposedSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v10 = [(PXFeedLayoutGenerator *)self tileCommentSizeBlock];

  if (v10)
  {
    v11 = [(PXFeedLayoutGenerator *)self tileCommentSizeBlock];
    width = v11[2](v11, a3, a4, width, height);
    height = v12;
  }

  v13 = width;
  v14 = height;
  result.height = v14;
  result.width = v13;
  return result;
}

- (CGSize)likesSizeForTileAtIndex:(int64_t)a3 proposedSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v8 = [(PXFeedLayoutGenerator *)self tileLikesSizeBlock];

  if (v8)
  {
    v9 = [(PXFeedLayoutGenerator *)self tileLikesSizeBlock];
    width = v9[2](v9, a3, width, height);
    height = v10;
  }

  v11 = width;
  v12 = height;
  result.height = v12;
  result.width = v11;
  return result;
}

- (CGSize)captionSizeForTileAtIndex:(int64_t)a3 proposedSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v8 = [(PXFeedLayoutGenerator *)self tileCaptionSizeBlock];

  if (v8)
  {
    v9 = [(PXFeedLayoutGenerator *)self tileCaptionSizeBlock];
    width = v9[2](v9, a3, width, height);
    height = v10;
  }

  v11 = width;
  v12 = height;
  result.height = v12;
  result.width = v11;
  return result;
}

- (BOOL)scanTile:(PXTileInfo *)a3 ofType:(int64_t)a4
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__PXFeedLayoutGenerator_scanTile_ofType___block_invoke;
  v5[3] = &__block_descriptor_40_e47_B72__0_PXTileInfo_q_CGSize_dd__CGSize_dd_BBqB_8l;
  v5[4] = a4;
  return [(PXFeedLayoutGenerator *)self scanTile:a3 passingTest:v5];
}

BOOL __41__PXFeedLayoutGenerator_scanTile_ofType___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8) / *(a2 + 16);
  if (v2 >= 2.5)
  {
    v3 = 3;
  }

  else if (v2 <= 1.04999995)
  {
    if (v2 >= 0.952380996)
    {
      v3 = 0;
    }

    else
    {
      v3 = 4;
      if (v2 > 0.4)
      {
        v3 = 2;
      }
    }
  }

  else
  {
    v3 = 1;
  }

  return v3 == *(a1 + 32);
}

- (BOOL)scanTile:(PXTileInfo *)a3 type:(int64_t *)a4
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__PXFeedLayoutGenerator_scanTile_type___block_invoke;
  v7[3] = &unk_1E77348E8;
  v7[4] = &v8;
  v5 = [(PXFeedLayoutGenerator *)self scanTile:a3 passingTest:v7];
  if (a4)
  {
    *a4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __39__PXFeedLayoutGenerator_scanTile_type___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8) / *(a2 + 16);
  if (v2 >= 2.5)
  {
    v3 = 3;
  }

  else if (v2 <= 1.04999995)
  {
    if (v2 >= 0.952380996)
    {
      v3 = 0;
    }

    else
    {
      v3 = 4;
      if (v2 > 0.4)
      {
        v3 = 2;
      }
    }
  }

  else
  {
    v3 = 1;
  }

  *(*(*(a1 + 32) + 8) + 24) = v3;
  return 1;
}

- (BOOL)scanTile:(PXTileInfo *)a3 passingTest:(id)a4
{
  v6 = a4;
  if ([(PXFeedLayoutGenerator *)self isAtEnd])
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v8 = [(PXFeedLayoutGenerator *)self scanLocation];
    v43 = [(PXFeedLayoutGenerator *)self scannedBatchID];
    v54 = 0;
    v55 = 0;
    v53[0] = 0;
    *(v53 + 3) = 0;
    v9 = v8 % 20;
    v41 = a3;
    if (v8 < self->_cacheTailLocation || v8 >= self->_cacheHeadLocation)
    {
      v42 = v8 % 20;
      v20 = [(PXFeedLayoutGenerator *)self tileImageSizeBlock];
      v12 = v20[2](v20, v8);
      v13 = v21;

      v22 = [(PXFeedLayoutGenerator *)self tileMinimumSizeBlock];
      if (v22)
      {
        v23 = [(PXFeedLayoutGenerator *)self tileMinimumSizeBlock];
        v14 = v23[2](v23, v8);
        v15 = v24;
      }

      else
      {
        v14 = *MEMORY[0x1E695F060];
        v15 = *(MEMORY[0x1E695F060] + 8);
      }

      v25 = [(PXFeedLayoutGenerator *)self tileHasCaptionBlock];
      if (v25)
      {
        v26 = [(PXFeedLayoutGenerator *)self tileHasCaptionBlock];
        v16 = v26[2](v26, v8);
      }

      else
      {
        v16 = 0;
      }

      v27 = [(PXFeedLayoutGenerator *)self tileHasLikesBlock];
      if (v27)
      {
        v28 = [(PXFeedLayoutGenerator *)self tileHasLikesBlock];
        v29 = v28[2](v28, v8);
      }

      else
      {
        v29 = 0;
      }

      v30 = v29;

      v31 = [(PXFeedLayoutGenerator *)self tileCommentCountBlock];
      if (v31)
      {
        v32 = [(PXFeedLayoutGenerator *)self tileCommentCountBlock];
        v44 = v32[2](v32, v8);
      }

      else
      {
        v44 = 0;
      }

      v33 = [(PXFeedLayoutGenerator *)self tileBatchIDBlock];
      if (v33)
      {
        v34 = [(PXFeedLayoutGenerator *)self tileBatchIDBlock];
        v19 = v34[2](v34, v8);
      }

      else
      {
        v19 = 0;
      }

      if (v8)
      {
        v17 = v30;
        if (v43 == v19)
        {
          v18 = 0;
        }

        else
        {
          v18 = [v43 isEqual:v19] ^ 1;
        }
      }

      else
      {
        v18 = 1;
        v17 = v30;
      }

      v35 = self + 64 * v42;
      *(v35 + 3) = v8;
      *(v35 + 4) = v12;
      *(v35 + 5) = v13;
      *(v35 + 6) = v14;
      *(v35 + 7) = v15;
      v35[64] = v16;
      v35[65] = v17;
      *(v35 + 66) = 0;
      *(v35 + 35) = 0;
      *(v35 + 9) = v44;
      v35[80] = v18;
      *(v35 + 81) = 0;
      *(v35 + 21) = 0;
      objc_storeStrong(&self->_cachedBatchID[v42], v19);
      self->_cacheHeadLocation = v8 + 1;
      cacheTailLocation = self->_cacheTailLocation;
      if (v8 >= cacheTailLocation)
      {
        if (cacheTailLocation <= v8 - 19)
        {
          cacheTailLocation = v8 - 19;
        }

        self->_cacheTailLocation = cacheTailLocation;
      }

      else
      {
        self->_cacheTailLocation = v8;
      }

      v11 = v8;
    }

    else
    {
      v10 = self + 64 * v9;
      v11 = *(v10 + 3);
      v12 = *(v10 + 4);
      v13 = *(v10 + 5);
      v14 = *(v10 + 6);
      v15 = *(v10 + 7);
      v16 = v10[64];
      v17 = v10[65];
      v54 = *(v10 + 66);
      v55 = *(v10 + 35);
      v44 = *(v10 + 9);
      v18 = v10[80];
      *(v53 + 3) = *(v10 + 21);
      v53[0] = *(v10 + 81);
      v19 = self->_cachedBatchID[v9];
    }

    v37 = v6[2];
    v45[0] = v11;
    *&v45[1] = v12;
    *&v45[2] = v13;
    *&v45[3] = v14;
    *&v45[4] = v15;
    v38 = v16;
    v46 = v16;
    v39 = v17;
    v47 = v17;
    v48 = v54;
    v49 = v55;
    v50 = v44;
    v51 = v18;
    *v52 = v53[0];
    *&v52[3] = *(v53 + 3);
    v7 = v37(v6, v45);
    if (v7)
    {
      if (v41)
      {
        v41->index = v11;
        v41->imageSize.width = v12;
        v41->imageSize.height = v13;
        v41->minimumSize.width = v14;
        v41->minimumSize.height = v15;
        v41->hasCaption = v38;
        v41->hasLikes = v39;
        *(&v41->hasLikes + 1) = v54;
        *(&v41->hasLikes + 5) = v55;
        v41->commentCount = v44;
        v41->isBatchStart = v18;
        *(&v41->isBatchStart + 1) = v53[0];
        *(&v41->isBatchStart + 1) = *(v53 + 3);
      }

      [(PXFeedLayoutGenerator *)self setScanLocation:v8 + 1, v41];
      [(PXFeedLayoutGenerator *)self setScannedBatchID:v19];
      if (v38 || (v18 & 1) != 0)
      {
        [(PXFeedLayoutGenerator *)self setScannedBatchHasCaption:v38];
      }
    }
  }

  return v7;
}

- (void)setScanState:(id)a3
{
  v4 = a3;
  -[PXFeedLayoutGenerator setScanLocation:](self, "setScanLocation:", [v4 scanLocation]);
  v5 = [v4 scannedBatchID];
  [(PXFeedLayoutGenerator *)self setScannedBatchID:v5];

  -[PXFeedLayoutGenerator setScannedBatchHasCaption:](self, "setScannedBatchHasCaption:", [v4 scannedBatchHasCaption]);
  v6 = [v4 scanSpecialSequenceCount];

  [(PXFeedLayoutGenerator *)self setScanSpecialSequenceCount:v6];
}

- (PXFeedLayoutGeneratorScanState)scanState
{
  v3 = objc_alloc_init(PXFeedLayoutGeneratorScanState);
  [(PXFeedLayoutGeneratorScanState *)v3 setScanLocation:[(PXFeedLayoutGenerator *)self scanLocation]];
  v4 = [(PXFeedLayoutGenerator *)self scannedBatchID];
  [(PXFeedLayoutGeneratorScanState *)v3 setScannedBatchID:v4];

  [(PXFeedLayoutGeneratorScanState *)v3 setScannedBatchHasCaption:[(PXFeedLayoutGenerator *)self scannedBatchHasCaption]];
  [(PXFeedLayoutGeneratorScanState *)v3 setScanSpecialSequenceCount:[(PXFeedLayoutGenerator *)self scanSpecialSequenceCount]];

  return v3;
}

- (void)willParseTiles
{
  self->_cacheTailLocation = 0;
  self->_cacheHeadLocation = 0;
  [(PXFeedLayoutGenerator *)self setScanLocation:0];
  [(PXFeedLayoutGenerator *)self setScannedBatchID:0];

  [(PXFeedLayoutGenerator *)self setScannedBatchHasCaption:0];
}

- (void)parseTiles
{
    ;
  }
}

- (void)enumerateFramesWithBlock:(id)a3
{
  [(PXFeedLayoutGenerator *)self setParsedFrameBlock:a3];
  [(PXFeedLayoutGenerator *)self willParseTiles];
  [(PXFeedLayoutGenerator *)self parseTiles];
  [(PXFeedLayoutGenerator *)self didParseTiles];

  [(PXFeedLayoutGenerator *)self setParsedFrameBlock:0];
}

- (PXFeedLayoutGenerator)init
{
  v3.receiver = self;
  v3.super_class = PXFeedLayoutGenerator;
  result = [(PXFeedLayoutGenerator *)&v3 init];
  if (result)
  {
    result->_roundingScale = 1.0;
  }

  return result;
}

@end