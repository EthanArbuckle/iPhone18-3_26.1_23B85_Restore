@interface PXFeedLayoutGenerator
- (BOOL)scanTile:(PXTileInfo *)tile ofType:(int64_t)type;
- (BOOL)scanTile:(PXTileInfo *)tile passingTest:(id)test;
- (BOOL)scanTile:(PXTileInfo *)tile type:(int64_t *)type;
- (CGSize)captionSizeForTileAtIndex:(int64_t)index proposedSize:(CGSize)size;
- (CGSize)commentSizeForTileAtIndex:(int64_t)index commentIndex:(int64_t)commentIndex proposedSize:(CGSize)size;
- (CGSize)interTileSpacing;
- (CGSize)likesSizeForTileAtIndex:(int64_t)index proposedSize:(CGSize)size;
- (CGSize)noCaptionSpacing;
- (PXFeedLayoutGenerator)init;
- (PXFeedLayoutGeneratorScanState)scanState;
- (UIEdgeInsets)captionPadding;
- (double)valueByRounding:(double)rounding usingMagneticGuidelines:(BOOL)guidelines;
- (void)enumerateFramesWithBlock:(id)block;
- (void)parseTiles;
- (void)parsedFrame:(CGRect)frame type:(int64_t)type forTileAtIndex:(int64_t)index;
- (void)setScanState:(id)state;
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

- (double)valueByRounding:(double)rounding usingMagneticGuidelines:(BOOL)guidelines
{
  if (guidelines && [(PXFeedLayoutGenerator *)self numberOfMagneticGuidelines]>= 1)
  {
    [(PXFeedLayoutGenerator *)self referenceDistanceForMagneticGuidelines];
    v7 = v6;
    v8 = [(PXFeedLayoutGenerator *)self numberOfMagneticGuidelines]+ 1;
    rounding = v7 / v8 * round(rounding / (v7 / v8));
  }

  [(PXFeedLayoutGenerator *)self roundingScale];
  return round(rounding * v9) / v9;
}

- (void)parsedFrame:(CGRect)frame type:(int64_t)type forTileAtIndex:(int64_t)index
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  parsedFrameBlock = [(PXFeedLayoutGenerator *)self parsedFrameBlock];

  if (parsedFrameBlock)
  {
    v14 = 0;
    parsedFrameBlock2 = [(PXFeedLayoutGenerator *)self parsedFrameBlock];
    (parsedFrameBlock2)[2](parsedFrameBlock2, index, type, &v14, x, y, width, height);

    if (v14 == 1)
    {
      [(PXFeedLayoutGenerator *)self setShouldStop:1];
    }
  }
}

- (CGSize)commentSizeForTileAtIndex:(int64_t)index commentIndex:(int64_t)commentIndex proposedSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  tileCommentSizeBlock = [(PXFeedLayoutGenerator *)self tileCommentSizeBlock];

  if (tileCommentSizeBlock)
  {
    tileCommentSizeBlock2 = [(PXFeedLayoutGenerator *)self tileCommentSizeBlock];
    width = tileCommentSizeBlock2[2](tileCommentSizeBlock2, index, commentIndex, width, height);
    height = v12;
  }

  v13 = width;
  v14 = height;
  result.height = v14;
  result.width = v13;
  return result;
}

- (CGSize)likesSizeForTileAtIndex:(int64_t)index proposedSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  tileLikesSizeBlock = [(PXFeedLayoutGenerator *)self tileLikesSizeBlock];

  if (tileLikesSizeBlock)
  {
    tileLikesSizeBlock2 = [(PXFeedLayoutGenerator *)self tileLikesSizeBlock];
    width = tileLikesSizeBlock2[2](tileLikesSizeBlock2, index, width, height);
    height = v10;
  }

  v11 = width;
  v12 = height;
  result.height = v12;
  result.width = v11;
  return result;
}

- (CGSize)captionSizeForTileAtIndex:(int64_t)index proposedSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  tileCaptionSizeBlock = [(PXFeedLayoutGenerator *)self tileCaptionSizeBlock];

  if (tileCaptionSizeBlock)
  {
    tileCaptionSizeBlock2 = [(PXFeedLayoutGenerator *)self tileCaptionSizeBlock];
    width = tileCaptionSizeBlock2[2](tileCaptionSizeBlock2, index, width, height);
    height = v10;
  }

  v11 = width;
  v12 = height;
  result.height = v12;
  result.width = v11;
  return result;
}

- (BOOL)scanTile:(PXTileInfo *)tile ofType:(int64_t)type
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__PXFeedLayoutGenerator_scanTile_ofType___block_invoke;
  v5[3] = &__block_descriptor_40_e47_B72__0_PXTileInfo_q_CGSize_dd__CGSize_dd_BBqB_8l;
  v5[4] = type;
  return [(PXFeedLayoutGenerator *)self scanTile:tile passingTest:v5];
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

- (BOOL)scanTile:(PXTileInfo *)tile type:(int64_t *)type
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
  v5 = [(PXFeedLayoutGenerator *)self scanTile:tile passingTest:v7];
  if (type)
  {
    *type = v9[3];
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

- (BOOL)scanTile:(PXTileInfo *)tile passingTest:(id)test
{
  testCopy = test;
  if ([(PXFeedLayoutGenerator *)self isAtEnd])
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    scanLocation = [(PXFeedLayoutGenerator *)self scanLocation];
    scannedBatchID = [(PXFeedLayoutGenerator *)self scannedBatchID];
    v54 = 0;
    v55 = 0;
    v53[0] = 0;
    *(v53 + 3) = 0;
    v9 = scanLocation % 20;
    tileCopy = tile;
    if (scanLocation < self->_cacheTailLocation || scanLocation >= self->_cacheHeadLocation)
    {
      v42 = scanLocation % 20;
      tileImageSizeBlock = [(PXFeedLayoutGenerator *)self tileImageSizeBlock];
      v12 = tileImageSizeBlock[2](tileImageSizeBlock, scanLocation);
      v13 = v21;

      tileMinimumSizeBlock = [(PXFeedLayoutGenerator *)self tileMinimumSizeBlock];
      if (tileMinimumSizeBlock)
      {
        tileMinimumSizeBlock2 = [(PXFeedLayoutGenerator *)self tileMinimumSizeBlock];
        v14 = tileMinimumSizeBlock2[2](tileMinimumSizeBlock2, scanLocation);
        v15 = v24;
      }

      else
      {
        v14 = *MEMORY[0x1E695F060];
        v15 = *(MEMORY[0x1E695F060] + 8);
      }

      tileHasCaptionBlock = [(PXFeedLayoutGenerator *)self tileHasCaptionBlock];
      if (tileHasCaptionBlock)
      {
        tileHasCaptionBlock2 = [(PXFeedLayoutGenerator *)self tileHasCaptionBlock];
        v16 = tileHasCaptionBlock2[2](tileHasCaptionBlock2, scanLocation);
      }

      else
      {
        v16 = 0;
      }

      tileHasLikesBlock = [(PXFeedLayoutGenerator *)self tileHasLikesBlock];
      if (tileHasLikesBlock)
      {
        tileHasLikesBlock2 = [(PXFeedLayoutGenerator *)self tileHasLikesBlock];
        v29 = tileHasLikesBlock2[2](tileHasLikesBlock2, scanLocation);
      }

      else
      {
        v29 = 0;
      }

      v30 = v29;

      tileCommentCountBlock = [(PXFeedLayoutGenerator *)self tileCommentCountBlock];
      if (tileCommentCountBlock)
      {
        tileCommentCountBlock2 = [(PXFeedLayoutGenerator *)self tileCommentCountBlock];
        v44 = tileCommentCountBlock2[2](tileCommentCountBlock2, scanLocation);
      }

      else
      {
        v44 = 0;
      }

      tileBatchIDBlock = [(PXFeedLayoutGenerator *)self tileBatchIDBlock];
      if (tileBatchIDBlock)
      {
        tileBatchIDBlock2 = [(PXFeedLayoutGenerator *)self tileBatchIDBlock];
        v19 = tileBatchIDBlock2[2](tileBatchIDBlock2, scanLocation);
      }

      else
      {
        v19 = 0;
      }

      if (scanLocation)
      {
        v17 = v30;
        if (scannedBatchID == v19)
        {
          v18 = 0;
        }

        else
        {
          v18 = [scannedBatchID isEqual:v19] ^ 1;
        }
      }

      else
      {
        v18 = 1;
        v17 = v30;
      }

      v35 = self + 64 * v42;
      *(v35 + 3) = scanLocation;
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
      self->_cacheHeadLocation = scanLocation + 1;
      cacheTailLocation = self->_cacheTailLocation;
      if (scanLocation >= cacheTailLocation)
      {
        if (cacheTailLocation <= scanLocation - 19)
        {
          cacheTailLocation = scanLocation - 19;
        }

        self->_cacheTailLocation = cacheTailLocation;
      }

      else
      {
        self->_cacheTailLocation = scanLocation;
      }

      v11 = scanLocation;
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

    v37 = testCopy[2];
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
    v7 = v37(testCopy, v45);
    if (v7)
    {
      if (tileCopy)
      {
        tileCopy->index = v11;
        tileCopy->imageSize.width = v12;
        tileCopy->imageSize.height = v13;
        tileCopy->minimumSize.width = v14;
        tileCopy->minimumSize.height = v15;
        tileCopy->hasCaption = v38;
        tileCopy->hasLikes = v39;
        *(&tileCopy->hasLikes + 1) = v54;
        *(&tileCopy->hasLikes + 5) = v55;
        tileCopy->commentCount = v44;
        tileCopy->isBatchStart = v18;
        *(&tileCopy->isBatchStart + 1) = v53[0];
        *(&tileCopy->isBatchStart + 1) = *(v53 + 3);
      }

      [(PXFeedLayoutGenerator *)self setScanLocation:scanLocation + 1, tileCopy];
      [(PXFeedLayoutGenerator *)self setScannedBatchID:v19];
      if (v38 || (v18 & 1) != 0)
      {
        [(PXFeedLayoutGenerator *)self setScannedBatchHasCaption:v38];
      }
    }
  }

  return v7;
}

- (void)setScanState:(id)state
{
  stateCopy = state;
  -[PXFeedLayoutGenerator setScanLocation:](self, "setScanLocation:", [stateCopy scanLocation]);
  scannedBatchID = [stateCopy scannedBatchID];
  [(PXFeedLayoutGenerator *)self setScannedBatchID:scannedBatchID];

  -[PXFeedLayoutGenerator setScannedBatchHasCaption:](self, "setScannedBatchHasCaption:", [stateCopy scannedBatchHasCaption]);
  scanSpecialSequenceCount = [stateCopy scanSpecialSequenceCount];

  [(PXFeedLayoutGenerator *)self setScanSpecialSequenceCount:scanSpecialSequenceCount];
}

- (PXFeedLayoutGeneratorScanState)scanState
{
  v3 = objc_alloc_init(PXFeedLayoutGeneratorScanState);
  [(PXFeedLayoutGeneratorScanState *)v3 setScanLocation:[(PXFeedLayoutGenerator *)self scanLocation]];
  scannedBatchID = [(PXFeedLayoutGenerator *)self scannedBatchID];
  [(PXFeedLayoutGeneratorScanState *)v3 setScannedBatchID:scannedBatchID];

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

- (void)enumerateFramesWithBlock:(id)block
{
  [(PXFeedLayoutGenerator *)self setParsedFrameBlock:block];
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