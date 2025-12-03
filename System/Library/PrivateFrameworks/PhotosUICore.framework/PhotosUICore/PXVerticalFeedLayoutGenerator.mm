@interface PXVerticalFeedLayoutGenerator
- (BOOL)_addRowWithContiguousTiles:(PXTileInfo *)tiles count:(int64_t)count;
- (BOOL)_addRowWithTiles:(PXTileInfo *)tiles imageFrames:(CGRect *)frames count:(int64_t)count;
- (BOOL)_addSpecialSequenceBlock:(PXTileInfo *)block;
- (BOOL)_dequeueCaption;
- (BOOL)_dequeueComments;
- (BOOL)_dequeueLikes;
- (BOOL)_hasLeftSuboptimalRow;
- (BOOL)_isAtEndOfRow;
- (BOOL)_parseSingleTile;
- (BOOL)_parseSpecialSequence;
- (BOOL)_parseSpecialSubsequenceWithRowRequired:(BOOL)required rowParsed:(BOOL *)parsed;
- (BOOL)_parseSpecialTileTriplet;
- (BOOL)_parseTilePair;
- (BOOL)_parseTileRequiringFullWidth;
- (BOOL)_parseTileTriplet;
- (BOOL)_scanNonPanoramaSequence:(PXTileInfo *)sequence count:(int64_t)count;
- (BOOL)_scanSpecialSequenceRow:(PXTileInfo *)row count:(int64_t *)count;
- (BOOL)_scanTilePair:(PXTileInfo *)pair;
- (BOOL)_scanTileRequiringNewRow:(PXTileInfo *)row;
- (BOOL)_scanTileTriplet:(PXTileInfo *)triplet;
- (BOOL)_scanTripletWithLargeLead:(PXTileInfo *)lead;
- (BOOL)_scanTripletWithRearrangment:(PXTileInfo *)rearrangment;
- (BOOL)parseNextTiles;
- (void)_enqueueCaptionWithTileInfo:(PXTileInfo *)info;
- (void)_enqueueCommentsWithTileInfo:(PXTileInfo *)info;
- (void)_enqueueLikesWithTileInfo:(PXTileInfo *)info;
- (void)_enumerateRowFramesWithContiguousTiles:(PXTileInfo *)tiles count:(int64_t)count useMagneticGuidelines:(BOOL)guidelines block:(id)block;
- (void)_willAddCaptionRowWithFirstTileInfo:(PXTileInfo *)info;
- (void)_willAddCommentRowsWithFirstTileInfo:(PXTileInfo *)info;
- (void)_willAddLikeRowWithFirstTileInfo:(PXTileInfo *)info;
- (void)didParseTiles;
- (void)willParseTiles;
@end

@implementation PXVerticalFeedLayoutGenerator

- (void)_willAddCommentRowsWithFirstTileInfo:(PXTileInfo *)info
{
  if (info->commentCount >= 1)
  {
    v8 = v3;
    v9 = v4;
    v5 = *&info->imageSize.height;
    v7[0] = *&info->index;
    v7[1] = v5;
    v6 = *&info->commentCount;
    v7[2] = *&info->minimumSize.height;
    v7[3] = v6;
    [(PXVerticalFeedLayoutGenerator *)self _enqueueCommentsWithTileInfo:v7];
  }
}

- (void)_willAddLikeRowWithFirstTileInfo:(PXTileInfo *)info
{
  if (info->hasLikes)
  {
    v8 = v3;
    v9 = v4;
    v5 = *&info->imageSize.height;
    v7[0] = *&info->index;
    v7[1] = v5;
    v6 = *&info->commentCount;
    v7[2] = *&info->minimumSize.height;
    v7[3] = v6;
    [(PXVerticalFeedLayoutGenerator *)self _enqueueLikesWithTileInfo:v7];
  }
}

- (void)_willAddCaptionRowWithFirstTileInfo:(PXTileInfo *)info
{
  if (info->isBatchStart && ![(PXVerticalFeedLayoutGenerator *)self _dequeueCaption]&& info->hasCaption && info->index >= 1)
  {
    [(PXFeedLayoutGenerator *)self noCaptionSpacing];
    self->_origin.y = v5 + self->_origin.y;
  }

  if (info->hasCaption)
  {
    v6 = *&info->imageSize.height;
    v8[0] = *&info->index;
    v8[1] = v6;
    v7 = *&info->commentCount;
    v8[2] = *&info->minimumSize.height;
    v8[3] = v7;
    [(PXVerticalFeedLayoutGenerator *)self _enqueueCaptionWithTileInfo:v8];
    if (![(PXVerticalFeedLayoutGenerator *)self shouldDisplayCaptionsBelowBatches])
    {
      [(PXVerticalFeedLayoutGenerator *)self _dequeueCaption];
    }
  }
}

- (BOOL)_addSpecialSequenceBlock:(PXTileInfo *)block
{
  scanSpecialSequenceCount = [(PXFeedLayoutGenerator *)self scanSpecialSequenceCount];
  width = block->imageSize.width;
  height = block->imageSize.height;
  [(PXFeedLayoutGenerator *)self interTileSpacing];
  v9 = v8;
  [(PXVerticalFeedLayoutGenerator *)self referenceWidth];
  [(PXFeedLayoutGenerator *)self valueByRounding:0 usingMagneticGuidelines:height * ((v10 - v9) / 3.0 / width)];
  [(PXVerticalFeedLayoutGenerator *)self referenceWidth];
  if ((scanSpecialSequenceCount & 1) == 0)
  {
    [(PXFeedLayoutGenerator *)self valueByRounding:1 usingMagneticGuidelines:(v11 + v11) / 3.0];
    PXRectWithEdges();
  }

  [(PXFeedLayoutGenerator *)self valueByRounding:1 usingMagneticGuidelines:v11 / 3.0];
  PXRectWithEdges();
}

- (BOOL)_addRowWithTiles:(PXTileInfo *)tiles imageFrames:(CGRect *)frames count:(int64_t)count
{
  countCopy = count;
  tilesCopy = tiles;
  if (count < 2)
  {
LABEL_6:
    v12 = *&tiles->imageSize.height;
    v32 = *&tiles->index;
    v33 = v12;
    v13 = *&tiles->commentCount;
    v34 = *&tiles->minimumSize.height;
    v35 = v13;
    [(PXVerticalFeedLayoutGenerator *)self _willAddCaptionRowWithFirstTileInfo:&v32];
    v14 = *&tilesCopy->imageSize.height;
    v32 = *&tilesCopy->index;
    v33 = v14;
    v15 = *&tilesCopy->commentCount;
    v34 = *&tilesCopy->minimumSize.height;
    v35 = v15;
    [(PXVerticalFeedLayoutGenerator *)self _willAddLikeRowWithFirstTileInfo:&v32];
    v16 = *&tilesCopy->imageSize.height;
    v32 = *&tilesCopy->index;
    v33 = v16;
    v17 = *&tilesCopy->commentCount;
    v34 = *&tilesCopy->minimumSize.height;
    v35 = v17;
    [(PXVerticalFeedLayoutGenerator *)self _willAddCommentRowsWithFirstTileInfo:&v32];
    x = self->_origin.x;
    y = self->_origin.y;
    if (y > 0.0)
    {
      [(PXFeedLayoutGenerator *)self interTileSpacing];
      y = y + v20;
    }

    if (countCopy >= 1)
    {
      p_size = &frames->size;
      do
      {
        index = tilesCopy->index;
        ++tilesCopy;
        width = p_size[-1].width;
        height = p_size[-1].height;
        v25 = p_size->width;
        v26 = p_size->height;
        p_size += 2;
        v27 = x + width;
        v28 = y + height;
        [(PXFeedLayoutGenerator *)self parsedFrame:0 type:index forTileAtIndex:x + width, y + height, v25, v26];
        v29 = self->_origin.y;
        v36.origin.x = v27;
        v36.origin.y = v28;
        v36.size.width = v25;
        v36.size.height = v26;
        MaxY = CGRectGetMaxY(v36);
        if (v29 >= MaxY)
        {
          MaxY = v29;
        }

        self->_origin.y = MaxY;
        --countCopy;
      }

      while (countCopy);
    }

    return 1;
  }

  else
  {
    p_height = &tiles->minimumSize.height;
    v10 = &frames->size.height;
    countCopy2 = count;
    while (*(v10 - 1) >= *(p_height - 1) && *v10 >= *p_height)
    {
      p_height += 8;
      v10 += 4;
      if (!--countCopy2)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }
}

- (void)_enumerateRowFramesWithContiguousTiles:(PXTileInfo *)tiles count:(int64_t)count useMagneticGuidelines:(BOOL)guidelines block:(id)block
{
  guidelinesCopy = guidelines;
  blockCopy = block;
  [(PXFeedLayoutGenerator *)self interTileSpacing];
  v12 = v11;
  v14 = v13;
  if (count < 1)
  {
    v16 = 0.0;
  }

  else
  {
    p_height = &tiles->imageSize.height;
    v16 = 0.0;
    countCopy = count;
    do
    {
      v16 = v16 + *(p_height - 1) / *p_height;
      p_height += 8;
      --countCopy;
    }

    while (countCopy);
  }

  [(PXVerticalFeedLayoutGenerator *)self referenceWidth];
  v19 = (v18 - (count - 1) * v12) / v16;
  [(PXFeedLayoutGenerator *)self valueByRounding:0 usingMagneticGuidelines:v19];
  v21 = v20;
  p_origin = &self->_origin;
  y = self->_origin.y;
  if (y <= 0.0)
  {
    v24 = self->_origin.y;
  }

  else
  {
    v24 = v14 + y;
  }

  if (count >= 1)
  {
    v25 = 0;
    x = p_origin->x;
    v27 = &tiles->imageSize.height;
    v28 = p_origin->x;
    do
    {
      v29 = x + *(v27 - 1) / *v27 * v19;
      if (v25 >= count - 1)
      {
        v30 = 0.0;
      }

      else
      {
        v30 = v12 * 0.5;
      }

      [(PXFeedLayoutGenerator *)self valueByRounding:guidelinesCopy usingMagneticGuidelines:v30 + v29];
      v32 = v31 - v30;
      [(PXVerticalFeedLayoutGenerator *)self referenceWidth];
      if (v32 >= v33)
      {
        v32 = v33;
      }

      v34 = 0;
      blockCopy[2](blockCopy, v25, &v34, v28, v24, v32 - v28, v21);
      if (v34)
      {
        break;
      }

      x = v12 + v29;
      v28 = v12 + v32;
      ++v25;
      v27 += 8;
    }

    while (count != v25);
  }
}

- (BOOL)_addRowWithContiguousTiles:(PXTileInfo *)tiles count:(int64_t)count
{
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 1;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = [(PXFeedLayoutGenerator *)self numberOfMagneticGuidelines]> 0;
  if (*(v28 + 24) == 1)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __66__PXVerticalFeedLayoutGenerator__addRowWithContiguousTiles_count___block_invoke;
    v26[3] = &unk_1E774B568;
    v26[4] = &v27;
    [(PXVerticalFeedLayoutGenerator *)self _enumerateRowFramesWithContiguousTiles:tiles count:count useMagneticGuidelines:1 block:v26];
  }

  if (count >= 2)
  {
    p_height = &tiles->minimumSize.height;
    countCopy = count;
    while (*(p_height - 1) == *MEMORY[0x1E695F060] && *p_height == *(MEMORY[0x1E695F060] + 8))
    {
      p_height += 8;
      if (!--countCopy)
      {
        goto LABEL_11;
      }
    }

    v10 = *(v28 + 24);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __66__PXVerticalFeedLayoutGenerator__addRowWithContiguousTiles_count___block_invoke_2;
    v25[3] = &unk_1E774B590;
    v25[4] = &v31;
    v25[5] = tiles;
    [(PXVerticalFeedLayoutGenerator *)self _enumerateRowFramesWithContiguousTiles:tiles count:count useMagneticGuidelines:v10 block:v25];
  }

LABEL_11:
  if (*(v32 + 24) == 1)
  {
    v11 = *&tiles->imageSize.height;
    v21 = *&tiles->index;
    v22 = v11;
    v12 = *&tiles->commentCount;
    v23 = *&tiles->minimumSize.height;
    v24 = v12;
    [(PXVerticalFeedLayoutGenerator *)self _willAddCaptionRowWithFirstTileInfo:&v21];
    v13 = *&tiles->imageSize.height;
    v21 = *&tiles->index;
    v22 = v13;
    v14 = *&tiles->commentCount;
    v23 = *&tiles->minimumSize.height;
    v24 = v14;
    [(PXVerticalFeedLayoutGenerator *)self _willAddLikeRowWithFirstTileInfo:&v21];
    v15 = *&tiles->imageSize.height;
    v21 = *&tiles->index;
    v22 = v15;
    v16 = *&tiles->commentCount;
    v23 = *&tiles->minimumSize.height;
    v24 = v16;
    [(PXVerticalFeedLayoutGenerator *)self _willAddCommentRowsWithFirstTileInfo:&v21];
    v17 = *(v28 + 24);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __66__PXVerticalFeedLayoutGenerator__addRowWithContiguousTiles_count___block_invoke_3;
    v20[3] = &unk_1E774B5B8;
    v20[4] = self;
    v20[5] = tiles;
    [(PXVerticalFeedLayoutGenerator *)self _enumerateRowFramesWithContiguousTiles:tiles count:count useMagneticGuidelines:v17 block:v20];
    v18 = *(v32 + 24);
  }

  else
  {
    v18 = 0;
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);
  return v18 & 1;
}

uint64_t __66__PXVerticalFeedLayoutGenerator__addRowWithContiguousTiles_count___block_invoke(uint64_t result, double a2, double a3, double a4, uint64_t a5, _BYTE *a6)
{
  if (a4 < 0.0)
  {
    *(*(*(result + 32) + 8) + 24) = 0;
    *a6 = 1;
  }

  return result;
}

void __66__PXVerticalFeedLayoutGenerator__addRowWithContiguousTiles_count___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v13 = *(a1 + 40) + (a2 << 6);
  v15 = *(v13 + 24);
  v14 = *(v13 + 32);
  if (CGRectGetWidth(*&a4) < v15 || (v16.origin.x = a4, v16.origin.y = a5, v16.size.width = a6, v16.size.height = a7, CGRectGetHeight(v16) < v14))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a3 = 1;
  }
}

void __66__PXVerticalFeedLayoutGenerator__addRowWithContiguousTiles_count___block_invoke_3(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  [*(a1 + 32) parsedFrame:0 type:*(*(a1 + 40) + (a2 << 6)) forTileAtIndex:?];
  v11 = *(*(a1 + 32) + 1672);
  v13.origin.x = a3;
  v13.origin.y = a4;
  v13.size.width = a5;
  v13.size.height = a6;
  MaxY = CGRectGetMaxY(v13);
  if (v11 >= MaxY)
  {
    MaxY = v11;
  }

  *(*(a1 + 32) + 1672) = MaxY;
}

- (BOOL)_dequeueComments
{
  _hasEnqueuedComments = [(PXVerticalFeedLayoutGenerator *)self _hasEnqueuedComments];
  if (_hasEnqueuedComments)
  {
    p_enqueuedCommentsTileInfo = &self->_enqueuedCommentsTileInfo;
    commentCount = self->_enqueuedCommentsTileInfo.commentCount;
    if (commentCount >= 1)
    {
      for (i = 0; i != commentCount; ++i)
      {
        [(PXVerticalFeedLayoutGenerator *)self referenceWidth];
        [(PXFeedLayoutGenerator *)self commentSizeForTileAtIndex:p_enqueuedCommentsTileInfo->index commentIndex:i proposedSize:?];
        v8 = v7;
        v10 = v9;
        x = self->_origin.x;
        y = self->_origin.y;
        [(PXFeedLayoutGenerator *)self parsedFrame:3 type:i forCommentAtIndex:x, y, v7, v9];
        v14.origin.x = x;
        v14.origin.y = y;
        v14.size.width = v8;
        v14.size.height = v10;
        self->_origin.y = CGRectGetMaxY(v14);
      }
    }

    p_enqueuedCommentsTileInfo->index = 0x7FFFFFFFFFFFFFFFLL;
  }

  return _hasEnqueuedComments;
}

- (void)_enqueueCommentsWithTileInfo:(PXTileInfo *)info
{
  [(PXVerticalFeedLayoutGenerator *)self _dequeueComments];
  v5 = *&info->commentCount;
  v7 = *&info->index;
  v6 = *&info->imageSize.height;
  *&self->_enqueuedCommentsTileInfo.minimumSize.height = *&info->minimumSize.height;
  *&self->_enqueuedCommentsTileInfo.commentCount = v5;
  *&self->_enqueuedCommentsTileInfo.index = v7;
  *&self->_enqueuedCommentsTileInfo.imageSize.height = v6;
}

- (BOOL)_dequeueLikes
{
  _hasEnqueuedLikes = [(PXVerticalFeedLayoutGenerator *)self _hasEnqueuedLikes];
  if (_hasEnqueuedLikes)
  {
    [(PXVerticalFeedLayoutGenerator *)self referenceWidth];
    [(PXFeedLayoutGenerator *)self likesSizeForTileAtIndex:self->_enqueuedLikesTileInfo.index proposedSize:?];
    v5 = v4;
    v7 = v6;
    x = self->_origin.x;
    y = self->_origin.y;
    [(PXFeedLayoutGenerator *)self parsedFrame:2 type:self->_enqueuedLikesTileInfo.index forLikesAtIndex:x, y, v4, v6];
    v11.origin.x = x;
    v11.origin.y = y;
    v11.size.width = v5;
    v11.size.height = v7;
    self->_origin.y = CGRectGetMaxY(v11);
    self->_enqueuedLikesTileInfo.index = 0x7FFFFFFFFFFFFFFFLL;
  }

  return _hasEnqueuedLikes;
}

- (void)_enqueueLikesWithTileInfo:(PXTileInfo *)info
{
  [(PXVerticalFeedLayoutGenerator *)self _dequeueLikes];
  v5 = *&info->commentCount;
  v7 = *&info->index;
  v6 = *&info->imageSize.height;
  *&self->_enqueuedLikesTileInfo.minimumSize.height = *&info->minimumSize.height;
  *&self->_enqueuedLikesTileInfo.commentCount = v5;
  *&self->_enqueuedLikesTileInfo.index = v7;
  *&self->_enqueuedLikesTileInfo.imageSize.height = v6;
}

- (BOOL)_dequeueCaption
{
  _hasEnqueuedCaption = [(PXVerticalFeedLayoutGenerator *)self _hasEnqueuedCaption];
  if (_hasEnqueuedCaption)
  {
    if ([(PXVerticalFeedLayoutGenerator *)self shouldDisplayCaptionsBelowBatches]|| self->_enqueuedCaptionTileInfo.index >= 1)
    {
      [(PXFeedLayoutGenerator *)self captionPadding];
      self->_origin.y = v4 + self->_origin.y;
    }

    [(PXVerticalFeedLayoutGenerator *)self referenceWidth];
    [(PXFeedLayoutGenerator *)self captionSizeForTileAtIndex:self->_enqueuedCaptionTileInfo.index proposedSize:?];
    v6 = v5;
    v8 = v7;
    x = self->_origin.x;
    y = self->_origin.y;
    [(PXFeedLayoutGenerator *)self parsedFrame:1 type:self->_enqueuedCaptionTileInfo.index forTileAtIndex:x, y, v5, v7];
    v13.origin.x = x;
    v13.origin.y = y;
    v13.size.width = v6;
    v13.size.height = v8;
    self->_origin.y = CGRectGetMaxY(v13);
    if ([(PXVerticalFeedLayoutGenerator *)self shouldDisplayCaptionsBelowBatches]|| self->_enqueuedCaptionTileInfo.index >= 1)
    {
      [(PXFeedLayoutGenerator *)self captionPadding];
      self->_origin.y = self->_origin.y + v11;
    }

    self->_enqueuedCaptionTileInfo.index = 0x7FFFFFFFFFFFFFFFLL;
  }

  return _hasEnqueuedCaption;
}

- (void)_enqueueCaptionWithTileInfo:(PXTileInfo *)info
{
  [(PXVerticalFeedLayoutGenerator *)self _dequeueCaption];
  v5 = *&info->commentCount;
  v7 = *&info->index;
  v6 = *&info->imageSize.height;
  *&self->_enqueuedCaptionTileInfo.minimumSize.height = *&info->minimumSize.height;
  *&self->_enqueuedCaptionTileInfo.commentCount = v5;
  *&self->_enqueuedCaptionTileInfo.index = v7;
  *&self->_enqueuedCaptionTileInfo.imageSize.height = v6;
}

- (BOOL)_isAtEndOfRow
{
  scanState = [(PXFeedLayoutGenerator *)self scanState];
  v4 = [(PXFeedLayoutGenerator *)self isAtEnd]|| [(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringNewRow:0];
  [(PXFeedLayoutGenerator *)self setScanState:scanState];

  return v4;
}

- (BOOL)_hasLeftSuboptimalRow
{
  scanState = [(PXFeedLayoutGenerator *)self scanState];
  if ([(PXFeedLayoutGenerator *)self scanTileWithPortraitImage:0])
  {
    _isAtEndOfRow = [(PXVerticalFeedLayoutGenerator *)self _isAtEndOfRow];
  }

  else
  {
    _isAtEndOfRow = 0;
  }

  [(PXFeedLayoutGenerator *)self setScanState:scanState];

  return _isAtEndOfRow;
}

- (BOOL)_scanTripletWithRearrangment:(PXTileInfo *)rearrangment
{
  if (!rearrangment)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXVerticalFeedLayoutGenerator.m" lineNumber:598 description:{@"Invalid parameter not satisfying: %@", @"tileInfos != NULL"}];
  }

  scanState = [(PXFeedLayoutGenerator *)self scanState];
  if (![(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringFullWidth:0]&& [(PXFeedLayoutGenerator *)self scanTileWithPortraitImage:rearrangment]&& ![(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringNewRow:0]&& [(PXFeedLayoutGenerator *)self scanTileWithLandscapeImage:&rearrangment[1]]&& ![(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringNewRow:0]&& [(PXFeedLayoutGenerator *)self scanTileWithPortraitImage:&rearrangment[2]]&& [(PXVerticalFeedLayoutGenerator *)self _isAtEndOfRow]|| ([(PXFeedLayoutGenerator *)self setScanState:scanState], ![(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringFullWidth:0]) && [(PXFeedLayoutGenerator *)self scanTileWithPortraitImage:rearrangment]&& ![(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringNewRow:0]&& [(PXFeedLayoutGenerator *)self scanTileWithSquareImage:&rearrangment[1]]&& ![(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringNewRow:0]&& [(PXFeedLayoutGenerator *)self scanTileWithPortraitImage:&rearrangment[2]]&& [(PXVerticalFeedLayoutGenerator *)self _isAtEndOfRow])
  {
    v6 = 1;
  }

  else
  {
    [(PXFeedLayoutGenerator *)self setScanState:scanState];
    v6 = 0;
  }

  return v6;
}

- (BOOL)_scanTripletWithLargeLead:(PXTileInfo *)lead
{
  if (!lead)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXVerticalFeedLayoutGenerator.m" lineNumber:469 description:{@"Invalid parameter not satisfying: %@", @"tileInfos != NULL"}];
  }

  scanState = [(PXFeedLayoutGenerator *)self scanState];
  if (![(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringFullWidth:0]&& [(PXFeedLayoutGenerator *)self scanTileWithLandscapeImage:lead]&& ![(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringNewRow:0]&& [(PXFeedLayoutGenerator *)self scanTileWithLandscapeImage:&lead[1]]&& ![(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringNewRow:0]&& [(PXFeedLayoutGenerator *)self scanTileWithLandscapeImage:&lead[2]]&& [(PXVerticalFeedLayoutGenerator *)self _isAtEndOfRow]
    || ([(PXFeedLayoutGenerator *)self setScanState:scanState], ![(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringFullWidth:0]) && [(PXFeedLayoutGenerator *)self scanTileWithLandscapeImage:lead]&& ![(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringNewRow:0]&& [(PXFeedLayoutGenerator *)self scanTileWithPortraitImage:&lead[1]]&& ![(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringNewRow:0]&& [(PXFeedLayoutGenerator *)self scanTileWithPortraitImage:&lead[2]]&& [(PXVerticalFeedLayoutGenerator *)self _isAtEndOfRow]
    || ([(PXFeedLayoutGenerator *)self setScanState:scanState], ![(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringFullWidth:0]) && [(PXFeedLayoutGenerator *)self scanTileWithLandscapeImage:lead]&& ![(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringNewRow:0]&& [(PXFeedLayoutGenerator *)self scanTileWithPortraitImage:&lead[1]]&& ![(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringNewRow:0]&& [(PXFeedLayoutGenerator *)self scanTileWithSquareImage:&lead[2]]&& [(PXVerticalFeedLayoutGenerator *)self _isAtEndOfRow]
    || ([(PXFeedLayoutGenerator *)self setScanState:scanState], ![(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringFullWidth:0]) && [(PXFeedLayoutGenerator *)self scanTileWithLandscapeImage:lead]&& ![(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringNewRow:0]&& [(PXFeedLayoutGenerator *)self scanTileWithSquareImage:&lead[1]]&& ![(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringNewRow:0]&& [(PXFeedLayoutGenerator *)self scanTileWithSquareImage:&lead[2]]&& [(PXVerticalFeedLayoutGenerator *)self _isAtEndOfRow]
    || ([(PXFeedLayoutGenerator *)self setScanState:scanState], ![(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringFullWidth:0]) && [(PXFeedLayoutGenerator *)self scanTileWithSquareImage:lead]&& ![(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringNewRow:0]&& [(PXFeedLayoutGenerator *)self scanTileWithLandscapeImage:&lead[1]]&& ![(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringNewRow:0]&& [(PXFeedLayoutGenerator *)self scanTileWithLandscapeImage:&lead[2]]&& [(PXVerticalFeedLayoutGenerator *)self _isAtEndOfRow]
    || ([(PXFeedLayoutGenerator *)self setScanState:scanState], ![(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringFullWidth:0]) && [(PXFeedLayoutGenerator *)self scanTileWithSquareImage:lead]&& ![(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringNewRow:0]&& [(PXFeedLayoutGenerator *)self scanTileWithLandscapeImage:&lead[1]]&& ![(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringNewRow:0]&& [(PXFeedLayoutGenerator *)self scanTileWithPortraitImage:&lead[2]]&& [(PXVerticalFeedLayoutGenerator *)self _isAtEndOfRow]
    || ([(PXFeedLayoutGenerator *)self setScanState:scanState], ![(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringFullWidth:0]) && [(PXFeedLayoutGenerator *)self scanTileWithSquareImage:lead]&& ![(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringNewRow:0]&& [(PXFeedLayoutGenerator *)self scanTileWithLandscapeImage:&lead[1]]&& ![(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringNewRow:0]&& [(PXFeedLayoutGenerator *)self scanTileWithSquareImage:&lead[2]]&& [(PXVerticalFeedLayoutGenerator *)self _isAtEndOfRow]
    || ([(PXFeedLayoutGenerator *)self setScanState:scanState], ![(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringFullWidth:0]) && [(PXFeedLayoutGenerator *)self scanTileWithSquareImage:lead]&& ![(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringNewRow:0]&& [(PXFeedLayoutGenerator *)self scanTileWithPortraitImage:&lead[1]]&& ![(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringNewRow:0]&& [(PXFeedLayoutGenerator *)self scanTileWithPortraitImage:&lead[2]]&& [(PXVerticalFeedLayoutGenerator *)self _isAtEndOfRow]
    || ([(PXFeedLayoutGenerator *)self setScanState:scanState], ![(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringFullWidth:0]) && [(PXFeedLayoutGenerator *)self scanTileWithSquareImage:lead]&& ![(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringNewRow:0]&& [(PXFeedLayoutGenerator *)self scanTileWithPortraitImage:&lead[1]]&& ![(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringNewRow:0]&& [(PXFeedLayoutGenerator *)self scanTileWithLandscapeImage:&lead[2]]&& [(PXVerticalFeedLayoutGenerator *)self _isAtEndOfRow]
    || ([(PXFeedLayoutGenerator *)self setScanState:scanState], ![(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringFullWidth:0]) && [(PXFeedLayoutGenerator *)self scanTileWithSquareImage:lead]&& ![(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringNewRow:0]&& [(PXFeedLayoutGenerator *)self scanTileWithPortraitImage:&lead[1]]&& ![(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringNewRow:0]&& [(PXFeedLayoutGenerator *)self scanTileWithSquareImage:&lead[2]]&& [(PXVerticalFeedLayoutGenerator *)self _isAtEndOfRow]
    || ([(PXFeedLayoutGenerator *)self setScanState:scanState], ![(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringFullWidth:0]) && [(PXFeedLayoutGenerator *)self scanTileWithSquareImage:lead]&& ![(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringNewRow:0]&& [(PXFeedLayoutGenerator *)self scanTileWithSquareImage:&lead[1]]&& ![(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringNewRow:0]&& [(PXFeedLayoutGenerator *)self scanTileWithSquareImage:&lead[2]]&& [(PXVerticalFeedLayoutGenerator *)self _isAtEndOfRow])
  {
    v6 = 1;
  }

  else
  {
    [(PXFeedLayoutGenerator *)self setScanState:scanState];
    v6 = 0;
  }

  return v6;
}

- (BOOL)_scanNonPanoramaSequence:(PXTileInfo *)sequence count:(int64_t)count
{
  v7 = count - 1;
  if (count <= 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXVerticalFeedLayoutGenerator.m" lineNumber:443 description:{@"Invalid parameter not satisfying: %@", @"count >= 2"}];
  }

  scanState = [(PXFeedLayoutGenerator *)self scanState];
  if ([(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringFullWidth:0]|| (v15 = 0, ![(PXFeedLayoutGenerator *)self scanTile:sequence type:&v15]) || (v15 - 5) > 0xFFFFFFFFFFFFFFFDLL)
  {
LABEL_15:
    [(PXFeedLayoutGenerator *)self setScanState:scanState];
    v11 = 0;
    goto LABEL_16;
  }

  if (count >= 2)
  {
    v9 = sequence + 1;
    while (![(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringNewRow:0])
    {
      v10 = sequence ? v9 : 0;
      if (![(PXFeedLayoutGenerator *)self scanTile:v10 ofType:v15])
      {
        break;
      }

      ++v9;
      if (!--v7)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_15;
  }

LABEL_14:
  v11 = 1;
LABEL_16:

  return v11;
}

- (BOOL)_scanSpecialSequenceRow:(PXTileInfo *)row count:(int64_t *)count
{
  scanState = [(PXFeedLayoutGenerator *)self scanState];
  if ([(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringFullWidth:row])
  {
    v8 = 1;
  }

  else
  {
    [(PXFeedLayoutGenerator *)self setScanState:scanState];
    if ([(PXVerticalFeedLayoutGenerator *)self _scanNonPanoramaSequence:row count:3]&& ![(PXVerticalFeedLayoutGenerator *)self _hasLeftSuboptimalRow])
    {
      v8 = 3;
    }

    else
    {
      [(PXFeedLayoutGenerator *)self setScanState:scanState];
      if (![(PXVerticalFeedLayoutGenerator *)self _scanNonPanoramaSequence:row count:2]|| [(PXVerticalFeedLayoutGenerator *)self _hasLeftSuboptimalRow])
      {
        [(PXFeedLayoutGenerator *)self setScanState:scanState];
        v9 = 0;
        goto LABEL_11;
      }

      v8 = 2;
    }
  }

  if (count)
  {
    *count = v8;
  }

  v9 = 1;
LABEL_11:

  return v9;
}

- (BOOL)_scanTileTriplet:(PXTileInfo *)triplet
{
  scanState = [(PXFeedLayoutGenerator *)self scanState];
  if ([(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringFullWidth:0]|| ![(PXFeedLayoutGenerator *)self scanTileWithPortraitImage:triplet]|| [(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringNewRow:0]|| (triplet ? (v6 = triplet + 1) : (v6 = 0), ![(PXFeedLayoutGenerator *)self scanTileWithPortraitImage:v6]|| [(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringNewRow:0]|| (triplet ? (v7 = triplet + 2) : (v7 = 0), ![(PXFeedLayoutGenerator *)self scanTileWithPortraitImage:v7]|| [(PXVerticalFeedLayoutGenerator *)self _hasLeftSuboptimalRow])))
  {
    [(PXFeedLayoutGenerator *)self setScanState:scanState];
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)_scanTilePair:(PXTileInfo *)pair
{
  scanState = [(PXFeedLayoutGenerator *)self scanState];
  if ([(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringFullWidth:0]|| ![(PXFeedLayoutGenerator *)self scanAnyTile:pair]|| [(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringNewRow:0]|| (pair ? (v6 = pair + 1) : (v6 = 0), ![(PXFeedLayoutGenerator *)self scanAnyTile:v6]))
  {
    [(PXFeedLayoutGenerator *)self setScanState:scanState];
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)_scanTileRequiringNewRow:(PXTileInfo *)row
{
  scanState = [(PXFeedLayoutGenerator *)self scanState];
  if ([(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringFullWidth:row])
  {
    goto LABEL_2;
  }

  v9 = 0u;
  v10 = 0u;
  memset(v8, 0, sizeof(v8));
  if (![(PXFeedLayoutGenerator *)self scanAnyTile:v8])
  {
LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  if ((BYTE8(v9) & 1) == 0 && (![scanState scannedBatchHasCaption] || (BYTE8(v10) & 1) == 0))
  {
    [(PXFeedLayoutGenerator *)self setScanState:scanState];
    goto LABEL_8;
  }

LABEL_2:
  v6 = 1;
LABEL_9:

  return v6;
}

- (BOOL)_parseSpecialSubsequenceWithRowRequired:(BOOL)required rowParsed:(BOOL *)parsed
{
  v15 = *MEMORY[0x1E69E9840];
  scanState = [(PXFeedLayoutGenerator *)self scanState];
  if ([(PXVerticalFeedLayoutGenerator *)self _scanSpecialSequenceBlock:v14])
  {
    scanState2 = [(PXFeedLayoutGenerator *)self scanState];
    v12 = 0;
    if ([(PXVerticalFeedLayoutGenerator *)self _scanSpecialSequenceRow:v13 count:&v12])
    {
      if ([(PXVerticalFeedLayoutGenerator *)self _addSpecialSequenceBlock:v14])
      {
        if ([(PXVerticalFeedLayoutGenerator *)self _addRowWithContiguousTiles:v13 count:v12])
        {
          v9 = 1;
        }

        else
        {
          [(PXFeedLayoutGenerator *)self setScanState:scanState2];
          v9 = 0;
        }

        v10 = 1;
LABEL_14:

        if (!parsed)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }
    }

    else if (!required && ![(PXVerticalFeedLayoutGenerator *)self _hasLeftSuboptimalRow])
    {
      v10 = [(PXVerticalFeedLayoutGenerator *)self _addSpecialSequenceBlock:v14];
      v9 = 0;
      goto LABEL_14;
    }

    v9 = 0;
    v10 = 0;
    goto LABEL_14;
  }

  v9 = 0;
  v10 = 0;
  if (parsed)
  {
LABEL_15:
    *parsed = v9;
  }

LABEL_16:
  if (!v10)
  {
    [(PXFeedLayoutGenerator *)self setScanState:scanState];
  }

  return v10;
}

- (BOOL)_parseSpecialSequence
{
  v5 = 0;
  v3 = [(PXVerticalFeedLayoutGenerator *)self _parseSpecialSubsequenceWithRowRequired:1 rowParsed:&v5];
  if (v3)
  {
    do
    {
      if (v5 != 1)
      {
        break;
      }

      if ([(PXFeedLayoutGenerator *)self shouldStop])
      {
        break;
      }

      v5 = 0;
    }

    while ([(PXVerticalFeedLayoutGenerator *)self _parseSpecialSubsequenceWithRowRequired:0 rowParsed:&v5]);
  }

  return v3;
}

- (BOOL)_parseSpecialTileTriplet
{
  v60 = *MEMORY[0x1E69E9840];
  scanState = [(PXFeedLayoutGenerator *)self scanState];
  if ([(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringFullWidth:0]|| ![(PXFeedLayoutGenerator *)self scanTileWithPortraitImage:v57]|| [(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringNewRow:0]|| ![(PXFeedLayoutGenerator *)self scanTileWithLandscapeImage:v58]|| [(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringNewRow:0]|| ![(PXFeedLayoutGenerator *)self scanTileWithLandscapeImage:v59]|| [(PXVerticalFeedLayoutGenerator *)self _hasLeftSuboptimalRow]|| ([(PXFeedLayoutGenerator *)self interTileSpacing], v5 = v4, v7 = v6, [(PXVerticalFeedLayoutGenerator *)self referenceWidth], v9 = v8 - v5, v10 = v9 * 0.75, [(PXFeedLayoutGenerator *)self valueByRounding:0 usingMagneticGuidelines:v9 * 0.5], v12 = v11 + v11, [(PXFeedLayoutGenerator *)self valueByRounding:0 usingMagneticGuidelines:v10 * 0.5], v14 = v13 + v13, v15 = v5 + v12 * 0.5, [(PXVerticalFeedLayoutGenerator *)self referenceWidth:0], v51 = *&v15, *&v52 = v16 - v15, *(&v52 + 1) = v14 * 0.5, [(PXVerticalFeedLayoutGenerator *)self referenceWidth], *&v53 = v15, *(&v53 + 1) = v7 + v14 * 0.5, *&v54 = v17 - v15, *(&v54 + 1) = v14 * 0.5, ![(PXVerticalFeedLayoutGenerator *)self _addRowWithTiles:v57 imageFrames:&v49 count:3]))
  {
    [(PXFeedLayoutGenerator *)self setScanState:scanState];
    if ([(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringFullWidth:0]|| ![(PXFeedLayoutGenerator *)self scanTileWithLandscapeImage:v57]|| [(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringNewRow:0]|| ![(PXFeedLayoutGenerator *)self scanTileWithPortraitImage:v58]|| [(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringNewRow:0]|| ![(PXFeedLayoutGenerator *)self scanTileWithLandscapeImage:v59]|| [(PXVerticalFeedLayoutGenerator *)self _hasLeftSuboptimalRow]|| ([(PXFeedLayoutGenerator *)self interTileSpacing], v19 = v18, v21 = v20, [(PXVerticalFeedLayoutGenerator *)self referenceWidth], v23 = v22 - v19, v24 = v23 * 0.75, [(PXFeedLayoutGenerator *)self valueByRounding:0 usingMagneticGuidelines:v23 * 0.5], v26 = v25 + v25, [(PXFeedLayoutGenerator *)self valueByRounding:0 usingMagneticGuidelines:v24 * 0.5], v28 = v27 + v27, v29 = v26 * 0.5, v30 = (v27 + v27) * 0.5, *&v50 = v26 * 0.5, *(&v50 + 1) = v30, *&v31 = v19 + v26 * 0.5, [(PXVerticalFeedLayoutGenerator *)self referenceWidth:0], v51 = v31, *&v52 = v32 - *&v31, *(&v52 + 1) = v21 + v28, *&v53 = 0, *(&v53 + 1) = v19 + v28 * 0.5, *&v54 = v29, *(&v54 + 1) = v30, ![(PXVerticalFeedLayoutGenerator *)self _addRowWithTiles:v57 imageFrames:&v49 count:3]))
    {
      [(PXFeedLayoutGenerator *)self setScanState:scanState];
      if ([(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringFullWidth:0]|| ![(PXFeedLayoutGenerator *)self scanTileWithLandscapeImage:v57]|| [(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringNewRow:0]|| ![(PXFeedLayoutGenerator *)self scanTileWithLandscapeImage:v58]|| [(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringNewRow:0]|| ![(PXFeedLayoutGenerator *)self scanTileWithPortraitImage:v59]|| [(PXVerticalFeedLayoutGenerator *)self _hasLeftSuboptimalRow]|| ([(PXFeedLayoutGenerator *)self interTileSpacing], v34 = v33, v36 = v35, [(PXVerticalFeedLayoutGenerator *)self referenceWidth], v38 = v37 - v34, v39 = v38 * 0.75, [(PXFeedLayoutGenerator *)self valueByRounding:0 usingMagneticGuidelines:v38 * 0.5], v41 = v40 + v40, [(PXFeedLayoutGenerator *)self valueByRounding:0 usingMagneticGuidelines:v39 * 0.5], v43 = v42 + v42, *(&v51 + 1) = v34 + (v42 + v42) * 0.5, *(&v52 + 1) = (v42 + v42) * 0.5, *&v44 = v34 + v41 * 0.5, [(PXVerticalFeedLayoutGenerator *)self referenceWidth:0], v53 = v44, *&v54 = v45 - *&v44, *(&v54 + 1) = v36 + v43, ![(PXVerticalFeedLayoutGenerator *)self _addRowWithTiles:v57 imageFrames:&v49 count:3]))
      {
        [(PXFeedLayoutGenerator *)self setScanState:scanState];
        if ([(PXVerticalFeedLayoutGenerator *)self _scanTripletWithLargeLead:v57])
        {
          v46 = 1;
          [(PXVerticalFeedLayoutGenerator *)self _addRowWithContiguousTiles:v57 count:1];
          if ([(PXVerticalFeedLayoutGenerator *)self _addRowWithContiguousTiles:v58 count:2])
          {
            goto LABEL_34;
          }

          v46 = 1;
          [(PXVerticalFeedLayoutGenerator *)self _addRowWithContiguousTiles:v58 count:1];
          v47 = v59;
        }

        else
        {
          [(PXFeedLayoutGenerator *)self setScanState:scanState];
          if (![(PXVerticalFeedLayoutGenerator *)self _scanTripletWithRearrangment:v57]|| (v49 = v57[0], v50 = v57[1], v51 = v57[2], v52 = v57[3], v53 = v59[0], v54 = v59[1], v55 = v59[2], v56 = v59[3], ![(PXVerticalFeedLayoutGenerator *)self _addRowWithContiguousTiles:&v49 count:2]))
          {
            [(PXFeedLayoutGenerator *)self setScanState:scanState];
            v46 = 0;
            goto LABEL_34;
          }

          v46 = 1;
          v47 = v58;
        }

        [(PXVerticalFeedLayoutGenerator *)self _addRowWithContiguousTiles:v47 count:1];
        goto LABEL_34;
      }
    }
  }

  v46 = 1;
LABEL_34:

  return v46;
}

- (BOOL)_parseTileRequiringFullWidth
{
  memset(v5, 0, sizeof(v5));
  v3 = [(PXVerticalFeedLayoutGenerator *)self _scanTileRequiringFullWidth:v5];
  if (v3)
  {
    [(PXVerticalFeedLayoutGenerator *)self _addRowWithContiguousTiles:v5 count:1];
  }

  return v3;
}

- (BOOL)_parseTileTriplet
{
  v7 = *MEMORY[0x1E69E9840];
  scanState = [(PXFeedLayoutGenerator *)self scanState];
  if (![(PXVerticalFeedLayoutGenerator *)self _scanTileTriplet:v6])
  {
    goto LABEL_5;
  }

  if (![(PXVerticalFeedLayoutGenerator *)self _addRowWithContiguousTiles:v6 count:3])
  {
    [(PXFeedLayoutGenerator *)self setScanState:scanState];
LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v4 = 1;
LABEL_6:

  return v4;
}

- (BOOL)_parseTilePair
{
  v7 = *MEMORY[0x1E69E9840];
  scanState = [(PXFeedLayoutGenerator *)self scanState];
  if (![(PXVerticalFeedLayoutGenerator *)self _scanTilePair:v6])
  {
    goto LABEL_5;
  }

  if (![(PXVerticalFeedLayoutGenerator *)self _addRowWithContiguousTiles:v6 count:2])
  {
    [(PXFeedLayoutGenerator *)self setScanState:scanState];
LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v4 = 1;
LABEL_6:

  return v4;
}

- (BOOL)_parseSingleTile
{
  memset(v5, 0, sizeof(v5));
  v3 = [(PXFeedLayoutGenerator *)self scanAnyTile:v5];
  if (v3)
  {
    [(PXVerticalFeedLayoutGenerator *)self _addRowWithContiguousTiles:v5 count:1];
  }

  return v3;
}

- (void)didParseTiles
{
  v3.receiver = self;
  v3.super_class = PXVerticalFeedLayoutGenerator;
  [(PXFeedLayoutGenerator *)&v3 didParseTiles];
  [(PXVerticalFeedLayoutGenerator *)self _dequeueCaption];
  [(PXVerticalFeedLayoutGenerator *)self _dequeueLikes];
  [(PXVerticalFeedLayoutGenerator *)self _dequeueComments];
}

- (BOOL)parseNextTiles
{
  if ([(PXVerticalFeedLayoutGenerator *)self _parseTileRequiringFullWidth]|| [(PXVerticalFeedLayoutGenerator *)self _parseSpecialSequence]|| [(PXVerticalFeedLayoutGenerator *)self _parseSpecialTileTriplet]|| [(PXVerticalFeedLayoutGenerator *)self _parseTileTriplet]|| [(PXVerticalFeedLayoutGenerator *)self _parseTilePair])
  {
    return 1;
  }

  return [(PXVerticalFeedLayoutGenerator *)self _parseSingleTile];
}

- (void)willParseTiles
{
  v3.receiver = self;
  v3.super_class = PXVerticalFeedLayoutGenerator;
  [(PXFeedLayoutGenerator *)&v3 willParseTiles];
  self->_origin = *MEMORY[0x1E695EFF8];
  self->_enqueuedCaptionTileInfo.index = 0x7FFFFFFFFFFFFFFFLL;
  self->_enqueuedLikesTileInfo.index = 0x7FFFFFFFFFFFFFFFLL;
  self->_enqueuedCommentsTileInfo.index = 0x7FFFFFFFFFFFFFFFLL;
}

@end