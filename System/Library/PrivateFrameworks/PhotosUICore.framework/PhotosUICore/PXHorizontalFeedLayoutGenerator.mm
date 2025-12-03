@interface PXHorizontalFeedLayoutGenerator
- (BOOL)_addColumnWithContiguousTiles:(PXTileInfo *)tiles count:(int64_t)count;
- (BOOL)_addColumnWithTiles:(PXTileInfo *)tiles imageFrames:(CGRect *)frames count:(int64_t)count;
- (BOOL)_addSpecialSequenceBlock:(PXTileInfo *)block;
- (BOOL)_hasLeftSuboptimalColumn;
- (BOOL)_parseSingleTile;
- (BOOL)_parseSpecialSequence;
- (BOOL)_parseSpecialSubsequenceWithColumnRequired:(BOOL)required columnParsed:(BOOL *)parsed;
- (BOOL)_parseSpecialTileTriplet;
- (BOOL)_parseTilePair;
- (BOOL)_parseTileTriplet;
- (BOOL)_scanNonPanoramaSequence:(PXTileInfo *)sequence count:(int64_t)count;
- (BOOL)_scanSpecialSequenceColumn:(PXTileInfo *)column count:(int64_t *)count;
- (BOOL)_scanTripletWithLargeLead:(PXTileInfo *)lead;
- (BOOL)parseNextTiles;
- (void)_enumerateColumnFramesWithContiguousTiles:(PXTileInfo *)tiles count:(int64_t)count useMagneticGuidelines:(BOOL)guidelines block:(id)block;
- (void)willParseTiles;
@end

@implementation PXHorizontalFeedLayoutGenerator

- (BOOL)_addSpecialSequenceBlock:(PXTileInfo *)block
{
  scanSpecialSequenceCount = [(PXFeedLayoutGenerator *)self scanSpecialSequenceCount];
  width = block->imageSize.width;
  height = block->imageSize.height;
  [(PXFeedLayoutGenerator *)self interTileSpacing];
  v9 = v8;
  [(PXHorizontalFeedLayoutGenerator *)self referenceHeight];
  [(PXFeedLayoutGenerator *)self valueByRounding:0 usingMagneticGuidelines:width * ((v10 - v9) / 3.0 / height)];
  [(PXHorizontalFeedLayoutGenerator *)self referenceHeight];
  if ((scanSpecialSequenceCount & 1) == 0)
  {
    [(PXFeedLayoutGenerator *)self valueByRounding:1 usingMagneticGuidelines:(v11 + v11) / 3.0];
    PXRectWithEdges();
  }

  [(PXFeedLayoutGenerator *)self valueByRounding:1 usingMagneticGuidelines:v11 / 3.0];
  PXRectWithEdges();
}

- (BOOL)_addColumnWithTiles:(PXTileInfo *)tiles imageFrames:(CGRect *)frames count:(int64_t)count
{
  countCopy = count;
  tilesCopy = tiles;
  if (count < 2)
  {
LABEL_6:
    p_origin = &self->_origin;
    x = self->_origin.x;
    y = self->_origin.y;
    if (x > 0.0)
    {
      [(PXFeedLayoutGenerator *)self interTileSpacing];
      x = x + v15;
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
        v20 = p_size->width;
        v21 = p_size->height;
        p_size += 2;
        v22 = x + width;
        v23 = y + height;
        [(PXFeedLayoutGenerator *)self parsedFrame:0 type:index forTileAtIndex:x + width, y + height, v20, v21];
        v24 = p_origin->x;
        v27.origin.x = v22;
        v27.origin.y = v23;
        v27.size.width = v20;
        v27.size.height = v21;
        MaxX = CGRectGetMaxX(v27);
        if (v24 >= MaxX)
        {
          MaxX = v24;
        }

        p_origin->x = MaxX;
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

- (void)_enumerateColumnFramesWithContiguousTiles:(PXTileInfo *)tiles count:(int64_t)count useMagneticGuidelines:(BOOL)guidelines block:(id)block
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
      v16 = v16 + *p_height / *(p_height - 1);
      p_height += 8;
      --countCopy;
    }

    while (countCopy);
  }

  [(PXHorizontalFeedLayoutGenerator *)self referenceHeight];
  v19 = (v18 - (count - 1) * v14) / v16;
  [(PXFeedLayoutGenerator *)self valueByRounding:0 usingMagneticGuidelines:v19];
  if (count >= 1)
  {
    v21 = v20;
    v22 = 0;
    x = self->_origin.x;
    y = self->_origin.y;
    if (x <= 0.0)
    {
      v25 = self->_origin.x;
    }

    else
    {
      v25 = v12 + x;
    }

    v26 = &tiles->imageSize.height;
    v27 = self->_origin.y;
    do
    {
      v28 = y + *v26 / *(v26 - 1) * v19;
      if (v22 >= count - 1)
      {
        v29 = 0.0;
      }

      else
      {
        v29 = v14 * 0.5;
      }

      [(PXFeedLayoutGenerator *)self valueByRounding:guidelinesCopy usingMagneticGuidelines:v29 + v28];
      v31 = v30 - v29;
      [(PXHorizontalFeedLayoutGenerator *)self referenceHeight];
      if (v31 >= v32)
      {
        v31 = v32;
      }

      v33 = 0;
      blockCopy[2](blockCopy, v22, &v33, v25, v27, v21, v31 - v27);
      if (v33)
      {
        break;
      }

      y = v14 + v28;
      v27 = v14 + v31;
      ++v22;
      v26 += 8;
    }

    while (count != v22);
  }
}

- (BOOL)_addColumnWithContiguousTiles:(PXTileInfo *)tiles count:(int64_t)count
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = [(PXFeedLayoutGenerator *)self numberOfMagneticGuidelines]> 0;
  if (*(v18 + 24) == 1)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __71__PXHorizontalFeedLayoutGenerator__addColumnWithContiguousTiles_count___block_invoke;
    v16[3] = &unk_1E774B568;
    v16[4] = &v17;
    [(PXHorizontalFeedLayoutGenerator *)self _enumerateColumnFramesWithContiguousTiles:tiles count:count useMagneticGuidelines:1 block:v16];
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

    v10 = *(v18 + 24);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __71__PXHorizontalFeedLayoutGenerator__addColumnWithContiguousTiles_count___block_invoke_2;
    v15[3] = &unk_1E774B590;
    v15[4] = &v21;
    v15[5] = tiles;
    [(PXHorizontalFeedLayoutGenerator *)self _enumerateColumnFramesWithContiguousTiles:tiles count:count useMagneticGuidelines:v10 block:v15];
  }

LABEL_11:
  if (*(v22 + 24) == 1)
  {
    v11 = *(v18 + 24);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __71__PXHorizontalFeedLayoutGenerator__addColumnWithContiguousTiles_count___block_invoke_3;
    v14[3] = &unk_1E774B5B8;
    v14[4] = self;
    v14[5] = tiles;
    [(PXHorizontalFeedLayoutGenerator *)self _enumerateColumnFramesWithContiguousTiles:tiles count:count useMagneticGuidelines:v11 block:v14];
    v12 = *(v22 + 24);
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  return v12 & 1;
}

uint64_t __71__PXHorizontalFeedLayoutGenerator__addColumnWithContiguousTiles_count___block_invoke(uint64_t result, double a2, double a3, double a4, double a5, uint64_t a6, _BYTE *a7)
{
  if (a5 < 0.0)
  {
    *(*(*(result + 32) + 8) + 24) = 0;
    *a7 = 1;
  }

  return result;
}

void __71__PXHorizontalFeedLayoutGenerator__addColumnWithContiguousTiles_count___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
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

void __71__PXHorizontalFeedLayoutGenerator__addColumnWithContiguousTiles_count___block_invoke_3(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  [*(a1 + 32) parsedFrame:0 type:*(*(a1 + 40) + (a2 << 6)) forTileAtIndex:?];
  v11 = *(*(a1 + 32) + 1664);
  v13.origin.x = a3;
  v13.origin.y = a4;
  v13.size.width = a5;
  v13.size.height = a6;
  MaxX = CGRectGetMaxX(v13);
  if (v11 >= MaxX)
  {
    MaxX = v11;
  }

  *(*(a1 + 32) + 1664) = MaxX;
}

- (BOOL)_hasLeftSuboptimalColumn
{
  scanState = [(PXFeedLayoutGenerator *)self scanState];
  if ([(PXFeedLayoutGenerator *)self scanTileWithLandscapeImage:0])
  {
    isAtEnd = [(PXFeedLayoutGenerator *)self isAtEnd];
  }

  else
  {
    isAtEnd = 0;
  }

  [(PXFeedLayoutGenerator *)self setScanState:scanState];

  return isAtEnd;
}

- (BOOL)_scanNonPanoramaSequence:(PXTileInfo *)sequence count:(int64_t)count
{
  v7 = count - 1;
  if (count <= 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXHorizontalFeedLayoutGenerator.m" lineNumber:461 description:{@"Invalid parameter not satisfying: %@", @"count >= 2"}];
  }

  scanState = [(PXFeedLayoutGenerator *)self scanState];
  v15 = 0;
  if (![(PXFeedLayoutGenerator *)self scanTile:sequence type:&v15]|| (v15 - 5) > 0xFFFFFFFFFFFFFFFDLL)
  {
LABEL_13:
    [(PXFeedLayoutGenerator *)self setScanState:scanState];
    v11 = 0;
    goto LABEL_14;
  }

  if (count >= 2)
  {
    v9 = sequence + 1;
    do
    {
      v10 = sequence ? v9 : 0;
      if (![(PXFeedLayoutGenerator *)self scanTile:v10 ofType:v15])
      {
        goto LABEL_13;
      }

      ++v9;
    }

    while (--v7);
  }

  v11 = 1;
LABEL_14:

  return v11;
}

- (BOOL)_scanSpecialSequenceColumn:(PXTileInfo *)column count:(int64_t *)count
{
  scanState = [(PXFeedLayoutGenerator *)self scanState];
  if ([(PXFeedLayoutGenerator *)self scanTile:column ofType:4])
  {
    v8 = 1;
  }

  else
  {
    [(PXFeedLayoutGenerator *)self setScanState:scanState];
    if ([(PXHorizontalFeedLayoutGenerator *)self _scanNonPanoramaSequence:column count:3]&& ![(PXHorizontalFeedLayoutGenerator *)self _hasLeftSuboptimalColumn])
    {
      v8 = 3;
    }

    else
    {
      [(PXFeedLayoutGenerator *)self setScanState:scanState];
      if (![(PXHorizontalFeedLayoutGenerator *)self _scanNonPanoramaSequence:column count:2]|| [(PXHorizontalFeedLayoutGenerator *)self _hasLeftSuboptimalColumn])
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

- (BOOL)_scanTripletWithLargeLead:(PXTileInfo *)lead
{
  if (!lead)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXHorizontalFeedLayoutGenerator.m" lineNumber:300 description:{@"Invalid parameter not satisfying: %@", @"tileInfos != NULL"}];
  }

  scanState = [(PXFeedLayoutGenerator *)self scanState];
  if ([(PXFeedLayoutGenerator *)self scanTileWithLandscapeImage:lead]&& [(PXFeedLayoutGenerator *)self scanTileWithLandscapeImage:&lead[1]]&& [(PXFeedLayoutGenerator *)self scanTileWithLandscapeImage:&lead[2]]&& [(PXHorizontalFeedLayoutGenerator *)self _isAtEndOfColumn]
    || ([(PXFeedLayoutGenerator *)self setScanState:scanState], [(PXFeedLayoutGenerator *)self scanTileWithLandscapeImage:lead]) && [(PXFeedLayoutGenerator *)self scanTileWithSquareImage:&lead[1]]&& [(PXFeedLayoutGenerator *)self scanTileWithLandscapeImage:&lead[2]]&& [(PXHorizontalFeedLayoutGenerator *)self _isAtEndOfColumn]
    || ([(PXFeedLayoutGenerator *)self setScanState:scanState], [(PXFeedLayoutGenerator *)self scanTileWithLandscapeImage:lead]) && [(PXFeedLayoutGenerator *)self scanTileWithSquareImage:&lead[1]]&& [(PXFeedLayoutGenerator *)self scanTileWithSquareImage:&lead[2]]&& [(PXHorizontalFeedLayoutGenerator *)self _isAtEndOfColumn]
    || ([(PXFeedLayoutGenerator *)self setScanState:scanState], [(PXFeedLayoutGenerator *)self scanTileWithPortraitImage:lead]) && [(PXFeedLayoutGenerator *)self scanTileWithLandscapeImage:&lead[1]]&& [(PXFeedLayoutGenerator *)self scanTileWithLandscapeImage:&lead[2]]&& [(PXHorizontalFeedLayoutGenerator *)self _isAtEndOfColumn]
    || ([(PXFeedLayoutGenerator *)self setScanState:scanState], [(PXFeedLayoutGenerator *)self scanTileWithPortraitImage:lead]) && [(PXFeedLayoutGenerator *)self scanTileWithPortraitImage:&lead[1]]&& [(PXFeedLayoutGenerator *)self scanTileWithPortraitImage:&lead[2]]&& [(PXHorizontalFeedLayoutGenerator *)self _isAtEndOfColumn]
    || ([(PXFeedLayoutGenerator *)self setScanState:scanState], [(PXFeedLayoutGenerator *)self scanTileWithPortraitImage:lead]) && [(PXFeedLayoutGenerator *)self scanTileWithSquareImage:&lead[1]]&& [(PXFeedLayoutGenerator *)self scanTileWithPortraitImage:&lead[2]]&& [(PXHorizontalFeedLayoutGenerator *)self _isAtEndOfColumn]
    || ([(PXFeedLayoutGenerator *)self setScanState:scanState], [(PXFeedLayoutGenerator *)self scanTileWithPortraitImage:lead]) && [(PXFeedLayoutGenerator *)self scanTileWithSquareImage:&lead[1]]&& [(PXFeedLayoutGenerator *)self scanTileWithSquareImage:&lead[2]]&& [(PXHorizontalFeedLayoutGenerator *)self _isAtEndOfColumn]
    || ([(PXFeedLayoutGenerator *)self setScanState:scanState], [(PXFeedLayoutGenerator *)self scanTileWithSquareImage:lead]) && [(PXFeedLayoutGenerator *)self scanTileWithLandscapeImage:&lead[1]]&& [(PXFeedLayoutGenerator *)self scanTileWithLandscapeImage:&lead[2]]&& [(PXHorizontalFeedLayoutGenerator *)self _isAtEndOfColumn]
    || ([(PXFeedLayoutGenerator *)self setScanState:scanState], [(PXFeedLayoutGenerator *)self scanTileWithSquareImage:lead]) && [(PXFeedLayoutGenerator *)self scanTileWithLandscapeImage:&lead[1]]&& [(PXFeedLayoutGenerator *)self scanTileWithSquareImage:&lead[2]]&& [(PXHorizontalFeedLayoutGenerator *)self _isAtEndOfColumn]
    || ([(PXFeedLayoutGenerator *)self setScanState:scanState], [(PXFeedLayoutGenerator *)self scanTileWithSquareImage:lead]) && [(PXFeedLayoutGenerator *)self scanTileWithSquareImage:&lead[1]]&& [(PXFeedLayoutGenerator *)self scanTileWithSquareImage:&lead[2]]&& [(PXHorizontalFeedLayoutGenerator *)self _isAtEndOfColumn])
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

- (BOOL)_parseSpecialSubsequenceWithColumnRequired:(BOOL)required columnParsed:(BOOL *)parsed
{
  v15 = *MEMORY[0x1E69E9840];
  scanState = [(PXFeedLayoutGenerator *)self scanState];
  if ([(PXHorizontalFeedLayoutGenerator *)self _scanSpecialSequenceBlock:v14])
  {
    scanState2 = [(PXFeedLayoutGenerator *)self scanState];
    v12 = 0;
    if ([(PXHorizontalFeedLayoutGenerator *)self _scanSpecialSequenceColumn:v13 count:&v12])
    {
      if ([(PXHorizontalFeedLayoutGenerator *)self _addSpecialSequenceBlock:v14])
      {
        if ([(PXHorizontalFeedLayoutGenerator *)self _addColumnWithContiguousTiles:v13 count:v12])
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

    else if (!required && ![(PXHorizontalFeedLayoutGenerator *)self _hasLeftSuboptimalColumn])
    {
      v10 = [(PXHorizontalFeedLayoutGenerator *)self _addSpecialSequenceBlock:v14];
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
  v3 = [(PXHorizontalFeedLayoutGenerator *)self _parseSpecialSubsequenceWithColumnRequired:1 columnParsed:&v5];
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

    while ([(PXHorizontalFeedLayoutGenerator *)self _parseSpecialSubsequenceWithColumnRequired:0 columnParsed:&v5]);
  }

  return v3;
}

- (BOOL)_parseSpecialTileTriplet
{
  v8[8] = *MEMORY[0x1E69E9840];
  scanState = [(PXFeedLayoutGenerator *)self scanState];
  v4 = [(PXHorizontalFeedLayoutGenerator *)self _scanTripletWithLargeLead:v6];
  if (v4)
  {
    [(PXHorizontalFeedLayoutGenerator *)self _addColumnWithContiguousTiles:v6 count:1];
    if (![(PXHorizontalFeedLayoutGenerator *)self _addColumnWithContiguousTiles:v7 count:2])
    {
      [(PXHorizontalFeedLayoutGenerator *)self _addColumnWithContiguousTiles:v7 count:1];
      [(PXHorizontalFeedLayoutGenerator *)self _addColumnWithContiguousTiles:v8 count:1];
    }
  }

  else
  {
    [(PXFeedLayoutGenerator *)self setScanState:scanState];
  }

  return v4;
}

- (BOOL)_parseTileTriplet
{
  v65[8] = *MEMORY[0x1E69E9840];
  scanState = [(PXFeedLayoutGenerator *)self scanState];
  if ([(PXFeedLayoutGenerator *)self scanTileWithPortraitImage:v63]&& [(PXFeedLayoutGenerator *)self scanTileWithPortraitImage:v64]&& [(PXFeedLayoutGenerator *)self scanTileWithLandscapeImage:v65]&& ![(PXHorizontalFeedLayoutGenerator *)self _hasLeftSuboptimalColumn]&& ([(PXFeedLayoutGenerator *)self interTileSpacing], v5 = v4, v7 = v6, [(PXHorizontalFeedLayoutGenerator *)self referenceHeight], v9 = v8 - v7, [(PXFeedLayoutGenerator *)self valueByRounding:0 usingMagneticGuidelines:(v8 - v7) * 0.75 * 0.5], v11 = v10 + v10, [(PXFeedLayoutGenerator *)self valueByRounding:0 usingMagneticGuidelines:v9 * 0.5], v51 = 0, v52 = 0, v53 = v11 * 0.5, v54 = (v12 + v12) * 0.5, v55 = v5 + v11 * 0.5, v56 = 0.0, v57 = v11 * 0.5, v58 = v54, [(PXHorizontalFeedLayoutGenerator *)self referenceHeight], v59 = 0.0, v60 = v7 + v54, v61 = v5 + v11, v62 = v13 - (v7 + v54), [(PXHorizontalFeedLayoutGenerator *)self _addColumnWithTiles:v63 imageFrames:&v51 count:3])
    || ([(PXFeedLayoutGenerator *)self setScanState:scanState], [(PXFeedLayoutGenerator *)self scanTileWithLandscapeImage:v63]) && [(PXFeedLayoutGenerator *)self scanTileWithPortraitImage:v64]&& [(PXFeedLayoutGenerator *)self scanTileWithPortraitImage:v65]&& ![(PXHorizontalFeedLayoutGenerator *)self _hasLeftSuboptimalColumn]&& ([(PXFeedLayoutGenerator *)self interTileSpacing], v15 = v14, v17 = v16, [(PXHorizontalFeedLayoutGenerator *)self referenceHeight], v19 = v18 - v17, [(PXFeedLayoutGenerator *)self valueByRounding:0 usingMagneticGuidelines:(v18 - v17) * 0.75 * 0.5], v21 = v20 + v20, [(PXFeedLayoutGenerator *)self valueByRounding:0 usingMagneticGuidelines:v19 * 0.5], v51 = 0, v52 = 0, v53 = v15 + v21, v54 = (v22 + v22) * 0.5, v23 = v17 + v54, [(PXHorizontalFeedLayoutGenerator *)self referenceHeight], v55 = 0.0, v56 = v23, v57 = v21 * 0.5, v58 = v24 - v23, [(PXHorizontalFeedLayoutGenerator *)self referenceHeight], v59 = v15 + v21 * 0.5, v60 = v23, v61 = v21 * 0.5, v62 = v25 - v23, [(PXHorizontalFeedLayoutGenerator *)self _addColumnWithTiles:v63 imageFrames:&v51 count:3])
    || ([(PXFeedLayoutGenerator *)self setScanState:scanState], [(PXFeedLayoutGenerator *)self scanTileWithPortraitImage:v63]) && [(PXFeedLayoutGenerator *)self scanTileWithLandscapeImage:v64]&& [(PXFeedLayoutGenerator *)self scanTileWithPortraitImage:v65]&& ![(PXHorizontalFeedLayoutGenerator *)self _hasLeftSuboptimalColumn]&& ([(PXFeedLayoutGenerator *)self interTileSpacing], v27 = v26, v29 = v28, [(PXHorizontalFeedLayoutGenerator *)self referenceHeight], v31 = v30 - v29, [(PXFeedLayoutGenerator *)self valueByRounding:0 usingMagneticGuidelines:(v30 - v29) * 0.75 * 0.5], v33 = v32 + v32, [(PXFeedLayoutGenerator *)self valueByRounding:0 usingMagneticGuidelines:v31 * 0.5], v35 = (v34 + v34) * 0.5, v51 = 0, v52 = 0, v53 = v33 * 0.5, v54 = v35, [(PXHorizontalFeedLayoutGenerator *)self referenceHeight], v55 = 0.0, v56 = v29 + v35, v57 = v27 + v33, v58 = v36 - (v29 + v35), v59 = v27 + v33 * 0.5, v60 = 0.0, v61 = v33 * 0.5, v62 = v35, [(PXHorizontalFeedLayoutGenerator *)self _addColumnWithTiles:v63 imageFrames:&v51 count:3])
    || ([(PXFeedLayoutGenerator *)self setScanState:scanState], [(PXFeedLayoutGenerator *)self scanTileWithLandscapeImage:v63]) && [(PXFeedLayoutGenerator *)self scanTileWithPortraitImage:v64]&& [(PXFeedLayoutGenerator *)self scanTileWithLandscapeImage:v65]&& ![(PXHorizontalFeedLayoutGenerator *)self _hasLeftSuboptimalColumn]&& ([(PXFeedLayoutGenerator *)self interTileSpacing], v38 = v37, v40 = v39, [(PXHorizontalFeedLayoutGenerator *)self referenceHeight], v42 = v41 - v40, [(PXFeedLayoutGenerator *)self valueByRounding:0 usingMagneticGuidelines:(v41 - v40) * 1.33333337 * 0.5], v44 = v43 + v43, [(PXFeedLayoutGenerator *)self valueByRounding:0 usingMagneticGuidelines:v42 * 0.5], v46 = v45 + v45, v51 = 0, v52 = 0, v53 = v44 * 0.5, v54 = (v45 + v45) * 0.5, [(PXHorizontalFeedLayoutGenerator *)self referenceHeight], v55 = v38 + v44 * 0.5, v56 = 0.0, v57 = v44 * 0.5, v58 = v47, [(PXHorizontalFeedLayoutGenerator *)self referenceHeight], v59 = 0.0, v60 = v40 + v46 * 0.5, v61 = v44 * 0.5, v62 = v48 - v60, [(PXHorizontalFeedLayoutGenerator *)self _addColumnWithTiles:v63 imageFrames:&v51 count:3]))
  {
    v49 = 1;
  }

  else
  {
    [(PXFeedLayoutGenerator *)self setScanState:scanState];
    v49 = 0;
  }

  return v49;
}

- (BOOL)_parseTilePair
{
  v7[8] = *MEMORY[0x1E69E9840];
  scanState = [(PXFeedLayoutGenerator *)self scanState];
  if (![(PXFeedLayoutGenerator *)self scanLocation]&& [(PXFeedLayoutGenerator *)self scanTileWithPortraitImage:v6]&& [(PXFeedLayoutGenerator *)self scanTileWithPortraitImage:v7]&& [(PXFeedLayoutGenerator *)self isAtEnd])
  {
    v4 = 1;
    [(PXHorizontalFeedLayoutGenerator *)self _addColumnWithContiguousTiles:v6 count:1];
    [(PXHorizontalFeedLayoutGenerator *)self _addColumnWithContiguousTiles:v7 count:1];
  }

  else
  {
    [(PXFeedLayoutGenerator *)self setScanState:scanState];
    if ([(PXFeedLayoutGenerator *)self scanAnyTile:v6]&& [(PXFeedLayoutGenerator *)self scanAnyTile:v7]&& [(PXHorizontalFeedLayoutGenerator *)self _addColumnWithContiguousTiles:v6 count:2])
    {
      v4 = 1;
    }

    else
    {
      [(PXFeedLayoutGenerator *)self setScanState:scanState];
      v4 = 0;
    }
  }

  return v4;
}

- (BOOL)_parseSingleTile
{
  scanState = [(PXFeedLayoutGenerator *)self scanState];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [(PXFeedLayoutGenerator *)self scanAnyTile:&v10];
  if (v4)
  {
    [(PXHorizontalFeedLayoutGenerator *)self referenceHeight];
    v6 = v5;
    [(PXFeedLayoutGenerator *)self valueByRounding:0 usingMagneticGuidelines:v5 * (*(&v10 + 1) / *&v11)];
    v9[0] = 0;
    v9[1] = 0;
    v9[2] = v7;
    *&v9[3] = v6;
    [(PXHorizontalFeedLayoutGenerator *)self _addColumnWithTiles:&v10 imageFrames:v9 count:1];
  }

  else
  {
    [(PXFeedLayoutGenerator *)self setScanState:scanState];
  }

  return v4;
}

- (BOOL)parseNextTiles
{
  if ([(PXHorizontalFeedLayoutGenerator *)self _parseSpecialSequence]|| [(PXHorizontalFeedLayoutGenerator *)self _parseSpecialTileTriplet]|| [(PXHorizontalFeedLayoutGenerator *)self _parseTileTriplet]|| [(PXHorizontalFeedLayoutGenerator *)self _parseTilePair])
  {
    return 1;
  }

  return [(PXHorizontalFeedLayoutGenerator *)self _parseSingleTile];
}

- (void)willParseTiles
{
  v3.receiver = self;
  v3.super_class = PXHorizontalFeedLayoutGenerator;
  [(PXFeedLayoutGenerator *)&v3 willParseTiles];
  self->_origin = *MEMORY[0x1E695EFF8];
}

@end