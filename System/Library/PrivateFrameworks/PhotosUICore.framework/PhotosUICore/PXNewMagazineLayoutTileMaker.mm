@interface PXNewMagazineLayoutTileMaker
- (BOOL)_findNextTileWithInputs:(id)inputs atIndex:(unint64_t)index baseIndex:(unint64_t)baseIndex coordinator:(id)coordinator;
- (BOOL)_generateNextChunkWithInputs:(id)inputs fromIndex:(unint64_t)index maxY:(unint64_t)y reserveNumberForPadding:(unint64_t)padding context:(id)context;
- (BOOL)_isSameRectsArray:(id)array otherArray:(id)otherArray;
- (BOOL)convertRects:(PXMagazineRect *)rects outFrames:(CGRect *)frames count:(unint64_t)count forReferenceSize:(CGSize)size;
- (CGRect)_frameFromTileFrame:(PXMagazineRect *)frame;
- (CGSize)defaultTileSize;
- (CGSize)referenceSize;
- (PXNewMagazineLayoutTileMaker)initWithReferenceSize:(CGSize)size numberOfColumns:(unint64_t)columns;
- (double)_normalizeWeightsByInputs:(id)inputs;
- (id)_generateLastTilesWithInputs:(id)inputs baseIndex:(unint64_t)index returnFallback:(BOOL)fallback;
- (id)_generateTilesWithInputs:(id)inputs;
- (id)_getAllFramesInOrder;
- (id)description;
- (int64_t)_availableFrames:(id *)frames maxReturnCount:(unint64_t)count forAspectRatio:(double)ratio weight:(double)weight maxWidth:(unint64_t)width;
- (unint64_t)_numberOfInputsForLastPadding;
- (void)_findNextChunkWithInputs:(id)inputs fromIndex:(unint64_t)index context:(id)context;
- (void)_getFrames:(CGRect *)frames magazineRects:(PXMagazineRect *)rects withInputs:(id)inputs;
- (void)_resetWithNumberOfAssets:(unint64_t)assets;
- (void)_setRandomSeedWithInputs:(id)inputs;
- (void)_updateDimensionInfos;
- (void)dealloc;
- (void)setInterTileSpacing:(double)spacing;
@end

@implementation PXNewMagazineLayoutTileMaker

- (CGSize)defaultTileSize
{
  width = self->_defaultTileSize.width;
  height = self->_defaultTileSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)referenceSize
{
  width = self->_referenceSize.width;
  height = self->_referenceSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (int64_t)_availableFrames:(id *)frames maxReturnCount:(unint64_t)count forAspectRatio:(double)ratio weight:(double)weight maxWidth:(unint64_t)width
{
  v99 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self->_sharedTempArray removeAllObjects];
  v11 = self->_sharedTempArray;
  if (1.0 / ratio <= ratio)
  {
    ratioCopy = ratio;
  }

  else
  {
    ratioCopy = 1.0 / ratio;
  }

  _getAllFramesInOrder = [(PXNewMagazineLayoutTileMaker *)self _getAllFramesInOrder];
  if (![_getAllFramesInOrder count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXNewMagazineLayoutTileMaker.m" lineNumber:706 description:@"We should never have no frames"];
  }

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v14 = _getAllFramesInOrder;
  v15 = [v14 countByEnumeratingWithState:&v92 objects:v98 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v93;
    do
    {
      v18 = 0;
      do
      {
        if (*v93 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v92 + 1) + 8 * v18);
        [v19 aspectRatio];
        v21 = v20;
        [v19 minAspectRatio];
        v23 = v22;
        [v19 maxAspectRatio];
        v25 = v24;
        width = [v19 width];
        height = [v19 height];
        if (width <= width && height * width <= self->_maxTilesInFrame && (self->_startLastPadding || ((width | height) & 1) == 0))
        {
          v28 = ratioCopy + -1.0;
          v29 = ratio <= 0.402;
          if (v21 >= 0.801)
          {
            v29 = 0;
          }

          v30 = v21 < 0.8 || ratioCopy + -1.0 > 0.15;
          v31 = v30 || v21 > 1.334;
          if (!v31 || v29)
          {
            goto LABEL_35;
          }

          if (v23 > ratio)
          {
            goto LABEL_44;
          }

          v28 = 0.9;
          if (ratio >= 0.9 && width == 2 && height == 2)
          {
            goto LABEL_35;
          }

          v32 = width == 2 && ratio < 0.9;
          if (v32 && height == 4)
          {
            goto LABEL_35;
          }

          if (v25 >= ratio)
          {
            v28 = 0.9;
            v33 = v21 < 0.9;
            if (ratio < 0.9)
            {
              v33 = v21 >= 1.1;
            }

            if (!v33)
            {
LABEL_35:
              [(NSMutableArray *)v11 addObject:v19, v28];
            }
          }
        }

        ++v18;
      }

      while (v16 != v18);
      v34 = [v14 countByEnumeratingWithState:&v92 objects:v98 count:16];
      v16 = v34;
    }

    while (v34);
  }

LABEL_44:

  v35 = 1;
  if (ratio <= 0.402 || ratio >= 2.3)
  {
    framesCopy4 = frames;
  }

  else
  {
    framesCopy4 = frames;
    if (weight < 0.66)
    {
      v35 = [(PXNewMagazineLayoutTileMaker *)self numberOfColumns:0.66]>= 4 && rand() % 10 > 4;
    }
  }

  v90[0] = MEMORY[0x1E69E9820];
  v90[1] = 3221225472;
  v90[2] = __95__PXNewMagazineLayoutTileMaker__availableFrames_maxReturnCount_forAspectRatio_weight_maxWidth___block_invoke;
  v90[3] = &__block_descriptor_41_e51_q24__0__PXNewMagazineFrame_8__PXNewMagazineFrame_16l;
  *&v90[4] = ratio;
  v91 = v35;
  [(NSMutableArray *)v11 sortUsingComparator:v90];
  v37 = +[PXPhotosDetailsSettings sharedInstance];
  editorialLayoutAvoidSmallestTile = [v37 editorialLayoutAvoidSmallestTile];

  numberOfColumns = [(PXNewMagazineLayoutTileMaker *)self numberOfColumns];
  if (editorialLayoutAvoidSmallestTile)
  {
    v40 = numberOfColumns;
    if ([(NSMutableArray *)v11 count]>= 3)
    {
      v41 = 2 * v40;
      array = [MEMORY[0x1E695DF70] array];
      firstObject = [(NSMutableArray *)v11 firstObject];
      firstObject2 = firstObject;
      if (ratio < 2.3)
      {
        v45 = firstObject;
        if ([firstObject width] != v41 || v35 && rand() % 100 < 6)
        {
          v45 = 0;
        }

        else
        {
          [(NSMutableArray *)v11 removeObjectAtIndex:0];
          firstObject2 = [(NSMutableArray *)v11 firstObject];
        }

        if (v41 >= 7 && firstObject2)
        {
          v79 = v41;
          v80 = v45;
          v46 = array;
          v47 = 0;
          v48 = v41 - 2;
          v49 = 1;
          while ([firstObject2 width] == v48)
          {
            if (rand() % 100 < 51)
            {
              ++v47;
            }

            else
            {
              [(NSMutableArray *)v11 removeObjectAtIndex:v47];
              [v46 addObject:firstObject2];
            }

            if (v47 >= [(NSMutableArray *)v11 count])
            {

              firstObject2 = 0;
              break;
            }

            v50 = [(NSMutableArray *)v11 objectAtIndex:v47];

            v51 = v49 & (v50 != 0);
            firstObject2 = v50;
            v49 = 0;
            if ((v51 & 1) == 0)
            {
              firstObject2 = v50;
              break;
            }
          }

          framesCopy4 = frames;
          array = v46;
          v41 = v79;
          v45 = v80;
        }
      }

      else
      {
        v45 = 0;
      }

      if ([firstObject2 width] == 2 && (objc_msgSend(firstObject2, "height") == 2 || objc_msgSend(firstObject2, "height") == 4) && (v41 >= 7 && objc_msgSend(firstObject2, "height") == 4 || rand() % 100 <= 89))
      {
        [(NSMutableArray *)v11 removeObjectAtIndex:0];
        v52 = firstObject2;
        if (v45)
        {
          goto LABEL_81;
        }
      }

      else
      {
        v52 = 0;
        if (v45)
        {
          goto LABEL_81;
        }
      }

      v67 = [array count];
      if (!v52 && !v67)
      {
        goto LABEL_109;
      }

LABEL_81:
      if ([(NSMutableArray *)v11 count]< 2)
      {
        v53 = [(NSMutableArray *)v11 count];
        if (!array)
        {
          goto LABEL_93;
        }
      }

      else
      {
        [(PXNewMagazineLayoutTileMaker *)self numberOfColumns];
        v53 = 2;
        if (!array)
        {
          goto LABEL_93;
        }
      }

      v81 = v45;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v54 = array;
      v55 = [v54 countByEnumeratingWithState:&v86 objects:v97 count:16];
      if (v55)
      {
        v56 = v55;
        v57 = *v87;
        do
        {
          for (i = 0; i != v56; ++i)
          {
            if (*v87 != v57)
            {
              objc_enumerationMutation(v54);
            }

            [(NSMutableArray *)v11 insertObject:*(*(&v86 + 1) + 8 * i) atIndex:v53++];
          }

          v56 = [v54 countByEnumeratingWithState:&v86 objects:v97 count:16];
        }

        while (v56);
      }

      framesCopy4 = frames;
      v45 = v81;
LABEL_93:
      if (v45 && v52)
      {
        v59 = rand();
        if (v59 % 10)
        {
          v60 = v52;
        }

        else
        {
          v60 = v45;
        }

        v61 = v45;
        if (!(v59 % 10))
        {
          v45 = v52;
        }

        v62 = v60;

        v63 = v45;
        v45 = v61;
        v64 = v63;
        [(NSMutableArray *)v11 insertObject:v62 atIndex:v53];
        [(NSMutableArray *)v11 insertObject:v64 atIndex:v53 + 1];

        firstObject2 = v62;
        goto LABEL_109;
      }

      if (v45)
      {
        v65 = v11;
        v66 = v45;
      }

      else
      {
        if (!v52)
        {
LABEL_109:

          goto LABEL_110;
        }

        v65 = v11;
        v66 = v52;
      }

      [(NSMutableArray *)v65 insertObject:v66 atIndex:v53];
      goto LABEL_109;
    }
  }

LABEL_110:
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v68 = v11;
  v69 = [(NSMutableArray *)v68 countByEnumeratingWithState:&v82 objects:v96 count:16];
  if (v69)
  {
    v70 = v69;
    v71 = 0;
    v72 = *v83;
LABEL_112:
    v73 = 0;
    while (1)
    {
      if (*v83 != v72)
      {
        objc_enumerationMutation(v68);
      }

      framesCopy4[v71++] = *(*(&v82 + 1) + 8 * v73);
      if (v71 >= count)
      {
        break;
      }

      if (v70 == ++v73)
      {
        v70 = [(NSMutableArray *)v68 countByEnumeratingWithState:&v82 objects:v96 count:16];
        if (v70)
        {
          goto LABEL_112;
        }

        break;
      }
    }
  }

  else
  {
    v71 = 0;
  }

  return v71;
}

uint64_t __95__PXNewMagazineLayoutTileMaker__availableFrames_maxReturnCount_forAspectRatio_weight_maxWidth___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [v5 aspectRatio];
  v8 = *(a1 + 32);
  if (v8 < v7)
  {
    v8 = 1.0 / v8;
    v7 = 1.0 / v7;
  }

  v9 = (v8 - v7) / v8;
  [v6 aspectRatio];
  v11 = *(a1 + 32);
  if (v11 < v10)
  {
    v11 = 1.0 / v11;
    v10 = 1.0 / v10;
  }

  v12 = (v11 - v10) / v11;
  v13 = v9 - v12;
  if (v9 - v12 < 0.0)
  {
    v13 = -(v9 - v12);
  }

  if (v13 >= 0.06)
  {
    if (v9 <= v12)
    {
      if (v9 >= v12)
      {
        v16 = 0;
      }

      else
      {
        v16 = -1;
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v14 = [v5 numberOfTiles];
    if (v14 <= [v6 numberOfTiles])
    {
      v15 = 1;
    }

    else
    {
      v15 = -1;
    }

    if (*(a1 + 40))
    {
      v16 = v15;
    }

    else
    {
      v16 = -v15;
    }
  }

  return v16;
}

- (id)_getAllFramesInOrder
{
  v59 = *MEMORY[0x1E69E9840];
  allFrames = self->_allFrames;
  if (!allFrames || ![(NSMutableArray *)allFrames count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v5 = self->_allFrames;
    self->_allFrames = array;

    numberOfColumns = [(PXNewMagazineLayoutTileMaker *)self numberOfColumns];
    tileAspectRatio = self->_tileAspectRatio;
    numberOfColumns2 = [(PXNewMagazineLayoutTileMaker *)self numberOfColumns];
    numberOfColumns = self->_numberOfColumns;
    if (numberOfColumns >= 2)
    {
      v10 = tileAspectRatio * numberOfColumns;
      v11 = roundf(v10);
      v12 = (v11 + v11);
      v13 = 2 * numberOfColumns2 * v12;
      v14 = 2;
      v15 = 4;
      v16 = 1.25;
      do
      {
        if (v12 >= 2)
        {
          v17 = v15;
          for (i = 2; i <= v12; ++i)
          {
            if (v17 <= v13)
            {
              v19 = self->_tileAspectRatio * v14 / i;
              if (v19 <= self->_maxFrameAspectRatio && v19 >= self->_minFrameAspectRatio)
              {
                v20 = [[PXNewMagazineFrame alloc] initWithWidth:v14 height:i];
                [(PXNewMagazineFrame *)v20 setAspectRatio:v19];
                v21 = v19 + -1.0;
                if (v19 + -1.0 < 0.0)
                {
                  v21 = -(v19 + -1.0);
                }

                if (v19 < 2.3 && v19 > 0.402)
                {
                  v23 = 1.35;
                }

                else
                {
                  v23 = v16;
                }

                if (v21 >= 0.112)
                {
                  v24 = v23;
                }

                else
                {
                  v24 = 1.6;
                }

                [(PXNewMagazineFrame *)v20 setMinAspectRatio:v19 / v24, v23];
                v25 = v19 * v24;
                v16 = 1.25;
                [(PXNewMagazineFrame *)v20 setMaxAspectRatio:v25];
                if (v19 >= 2.3)
                {
                  [(PXNewMagazineFrame *)v20 setMinAspectRatio:fmin(v19 / 1.25, 2.3)];
                  [(PXNewMagazineFrame *)v20 setMaxAspectRatio:1000.0];
                }

                if (v19 <= 0.402)
                {
                  [(PXNewMagazineFrame *)v20 setMinAspectRatio:0.0];
                  v26 = v19 * 1.25;
                  if (v19 * 1.25 < 0.402)
                  {
                    v26 = 0.402;
                  }

                  [(PXNewMagazineFrame *)v20 setMaxAspectRatio:v26];
                }

                [(NSMutableArray *)self->_allFrames addObject:v20];
              }
            }

            v17 += v14;
          }

          numberOfColumns = self->_numberOfColumns;
        }

        ++v14;
        v15 += 2;
      }

      while (v14 <= numberOfColumns);
    }

    [(NSMutableArray *)self->_allFrames sortUsingComparator:&__block_literal_global_164575];
    v27 = [(NSMutableArray *)self->_allFrames objectAtIndexedSubscript:0];
    [v27 aspectRatio];
    v29 = v28;

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v30 = self->_allFrames;
    v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v53 objects:v58 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v54;
LABEL_33:
      v34 = 0;
      while (1)
      {
        if (*v54 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v53 + 1) + 8 * v34);
        [v35 aspectRatio];
        if (v36 > v29)
        {
          break;
        }

        [v35 setMinAspectRatio:0.0];
        if (v32 == ++v34)
        {
          v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v53 objects:v58 count:16];
          if (v32)
          {
            goto LABEL_33;
          }

          break;
        }
      }
    }

    lastObject = [(NSMutableArray *)self->_allFrames lastObject];
    [lastObject aspectRatio];
    v39 = v38;

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    reverseObjectEnumerator = [(NSMutableArray *)self->_allFrames reverseObjectEnumerator];
    v41 = [reverseObjectEnumerator countByEnumeratingWithState:&v49 objects:v57 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v50;
LABEL_41:
      v44 = 0;
      while (1)
      {
        if (*v50 != v43)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v45 = *(*(&v49 + 1) + 8 * v44);
        [v45 aspectRatio];
        if (v46 < v39)
        {
          break;
        }

        [v45 setMaxAspectRatio:1000.0];
        if (v42 == ++v44)
        {
          v42 = [reverseObjectEnumerator countByEnumeratingWithState:&v49 objects:v57 count:16];
          if (v42)
          {
            goto LABEL_41;
          }

          break;
        }
      }
    }
  }

  v47 = self->_allFrames;

  return v47;
}

uint64_t __52__PXNewMagazineLayoutTileMaker__getAllFramesInOrder__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 aspectRatio];
  v6 = v5;
  [v4 aspectRatio];
  v8 = v7;

  if (v6 >= v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  if (v6 > v8)
  {
    return 1;
  }

  else
  {
    return v9;
  }
}

- (CGRect)_frameFromTileFrame:(PXMagazineRect *)frame
{
  width = self->_defaultTileSize.width;
  interTileSpacing = self->_interTileSpacing;
  v5 = width + interTileSpacing;
  var0 = frame->var1.var0;
  v7 = interTileSpacing * (var0 - 1) + width * var0;
  lastTileWidthPadding = 0.0;
  if (var0 + frame->var0.var0 == self->_numberOfColumns)
  {
    lastTileWidthPadding = self->_lastTileWidthPadding;
  }

  v9 = v5 * frame->var0.var0;
  height = self->_defaultTileSize.height;
  v11 = v7 + lastTileWidthPadding;
  if (self->_layoutFromRightToLeft)
  {
    v9 = self->_referenceSize.width - v9 - v11;
  }

  v12 = interTileSpacing * (frame->var1.var1 - 1) + height * frame->var1.var1;
  v13 = (interTileSpacing + height) * frame->var0.var1;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v13;
  result.origin.x = v9;
  return result;
}

- (BOOL)_findNextTileWithInputs:(id)inputs atIndex:(unint64_t)index baseIndex:(unint64_t)baseIndex coordinator:(id)coordinator
{
  selfCopy = self;
  baseIndexCopy = baseIndex;
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = 0;
  v9 = 0;
  [inputs objectAtIndexedSubscript:index];
  [objc_claimAutoreleasedReturnValue() size];
  PXSizeGetAspectRatio();
}

- (id)_generateLastTilesWithInputs:(id)inputs baseIndex:(unint64_t)index returnFallback:(BOOL)fallback
{
  fallbackCopy = fallback;
  inputsCopy = inputs;
  self->_startLastPadding = 1;
  v9 = [PXNewMagazineLayoutCoordinator alloc];
  v10 = -[PXNewMagazineGrid initWithNumberOfColumns:size:]([PXNewMagazineGrid alloc], "initWithNumberOfColumns:size:", self->_numberOfColumns, [inputsCopy count]);
  v11 = [(PXNewMagazineLayoutCoordinator *)v9 initWithPaddingInputs:inputsCopy tileGrid:v10 tileAspectRatio:0 stopIfAnyGoodLayout:self->_tileAspectRatio];

  if ([(PXNewMagazineLayoutTileMaker *)self _findNextTileWithInputs:inputsCopy atIndex:0 baseIndex:index coordinator:v11])
  {
    goto LABEL_4;
  }

  [objc_opt_class() printInputs:inputsCopy];
  if (fallbackCopy)
  {
    v12 = [PXNewMagazineLayoutCoordinator alloc];
    v13 = -[PXNewMagazineGrid initWithNumberOfColumns:size:]([PXNewMagazineGrid alloc], "initWithNumberOfColumns:size:", self->_numberOfColumns, [inputsCopy count]);
    v14 = [(PXNewMagazineLayoutCoordinator *)v12 initWithPaddingInputs:inputsCopy tileGrid:v13 tileAspectRatio:1 stopIfAnyGoodLayout:self->_tileAspectRatio];

    [(PXNewMagazineLayoutTileMaker *)self _findNextTileWithInputs:inputsCopy atIndex:0 baseIndex:index coordinator:v14];
    v11 = v14;
LABEL_4:
    currentBestLayout = [(PXNewMagazineLayoutCoordinator *)v11 currentBestLayout];
    goto LABEL_6;
  }

  currentBestLayout = 0;
LABEL_6:

  return currentBestLayout;
}

- (BOOL)_generateNextChunkWithInputs:(id)inputs fromIndex:(unint64_t)index maxY:(unint64_t)y reserveNumberForPadding:(unint64_t)padding context:(id)context
{
  v15 = *MEMORY[0x1E69E9840];
  inputsCopy = inputs;
  contextCopy = context;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  [inputsCopy objectAtIndexedSubscript:index];
  [objc_claimAutoreleasedReturnValue() size];
  PXSizeGetAspectRatio();
}

- (void)_findNextChunkWithInputs:(id)inputs fromIndex:(unint64_t)index context:(id)context
{
  inputsCopy = inputs;
  contextCopy = context;
  v9 = +[PXPhotosDetailsSettings sharedInstance];
  editorialLayoutTargetRowsForChunk = [v9 editorialLayoutTargetRowsForChunk];
  if ([(PXNewMagazineLayoutTileMaker *)self numberOfColumns]<= 3)
  {
    v11 = editorialLayoutTargetRowsForChunk;
  }

  else
  {
    v11 = editorialLayoutTargetRowsForChunk + 1;
  }

  if (![(PXNewMagazineLayoutTileMaker *)self _generateNextChunkWithInputs:inputsCopy fromIndex:index maxY:2 * v11 reserveNumberForPadding:0 context:contextCopy])
  {
    [contextCopy setFallbackRectArray:0];
    if (![(PXNewMagazineLayoutTileMaker *)self _generateNextChunkWithInputs:inputsCopy fromIndex:index maxY:4 * v11 reserveNumberForPadding:0 context:contextCopy])
    {
      _numberOfInputsForLastPadding = [(PXNewMagazineLayoutTileMaker *)self _numberOfInputsForLastPadding];
      [contextCopy setFallbackRectArray:0];
      if (![(PXNewMagazineLayoutTileMaker *)self _generateNextChunkWithInputs:inputsCopy fromIndex:index maxY:-1 reserveNumberForPadding:_numberOfInputsForLastPadding context:contextCopy])
      {
        [contextCopy setFallbackRectArray:0];
        outRectArray = [contextCopy outRectArray];
        [outRectArray reset];
      }
    }
  }
}

- (id)_generateTilesWithInputs:(id)inputs
{
  inputsCopy = inputs;
  v4 = [inputsCopy count];
  v5 = [PXNewMagazineRectArray alloc];
  v6 = [[PXNewMagazineGrid alloc] initWithNumberOfColumns:self->_numberOfColumns size:50];
  v7 = [(PXNewMagazineRectArray *)v5 initWithSize:50 tileGrid:v6];

  array = [MEMORY[0x1E695DF70] array];
  v9 = objc_opt_new();
  [v9 setGeneratedChunks:array];
  [v9 setOutRectArray:v7];
  [v9 setFallbackRectArray:0];
  _numberOfInputsForLastPadding = [(PXNewMagazineLayoutTileMaker *)self _numberOfInputsForLastPadding];
  if (v4)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    maxTilesInFrame = self->_maxTilesInFrame;
    while (1)
    {
      outRectArray = [v9 outRectArray];
      [outRectArray reset];

      [v9 setFallbackRectArray:0];
      [(PXNewMagazineLayoutTileMaker *)self _findNextChunkWithInputs:inputsCopy fromIndex:v12 context:v9];
      if (![(PXNewMagazineRectArray *)v7 count])
      {
        fallbackRectArray = [v9 fallbackRectArray];

        if (!fallbackRectArray)
        {
          break;
        }
      }

      if (v11)
      {
        if (![(PXNewMagazineRectArray *)v7 count])
        {
          v15 = v4 - v12;
          if (v4 - v12 < _numberOfInputsForLastPadding)
          {
            goto LABEL_17;
          }
        }
      }

      if ([(PXNewMagazineRectArray *)v7 count])
      {
        v11 = 0;
      }

      else
      {
        ++v11;
      }

      if ([(PXNewMagazineRectArray *)v7 count])
      {
        [(PXNewMagazineRectArray *)v7 immutableCopyForCurrentRectsCount];
      }

      else
      {
        [v9 fallbackRectArray];
      }
      v16 = ;
      v17 = [[PXNewMagazineChunk alloc] initWithStartY:v10 startIndexOfInputs:v12 rectsArray:v16];
      [array addObject:v17];
      v10 += [(PXNewMagazineChunk *)v17 height];
      v12 += [v16 count];

      if (v12 >= v4)
      {
        goto LABEL_37;
      }
    }

    v15 = v4 - v12;
LABEL_17:
    self->_maxTilesInFrame = maxTilesInFrame;
    v18 = [inputsCopy subarrayWithRange:{v12, v15}];
    if (v12)
    {
      v19 = v15 >= _numberOfInputsForLastPadding;
    }

    else
    {
      v19 = 1;
    }

    v20 = v19;
    v21 = [(PXNewMagazineLayoutTileMaker *)self _generateLastTilesWithInputs:v18 baseIndex:v12 returnFallback:v20];
    if (v21)
    {
      v22 = v21;
      lastObject = [[PXNewMagazineChunk alloc] initWithStartY:v10 startIndexOfInputs:v12 rectsArray:v21];
      [array addObject:lastObject];
    }

    else
    {
      if (v20)
      {
        goto LABEL_36;
      }

      [array count];
      while (1)
      {
        v24 = v18;
        lastObject = [array lastObject];
        [array removeLastObject];
        startIndexOfInputs = [(PXNewMagazineChunk *)lastObject startIndexOfInputs];
        v18 = [inputsCopy subarrayWithRange:{startIndexOfInputs, v4 - startIndexOfInputs}];

        v26 = !startIndexOfInputs || v4 - startIndexOfInputs >= _numberOfInputsForLastPadding;
        v27 = v26;
        v28 = [(PXNewMagazineLayoutTileMaker *)self _generateLastTilesWithInputs:v18 baseIndex:startIndexOfInputs returnFallback:v27];
        if (v28)
        {
          break;
        }

        if (!startIndexOfInputs)
        {
          goto LABEL_36;
        }
      }

      v22 = v28;
      v30 = [[PXNewMagazineChunk alloc] initWithStartY:[(PXNewMagazineChunk *)lastObject startY] startIndexOfInputs:startIndexOfInputs rectsArray:v28];
      [array addObject:v30];
    }

LABEL_36:
  }

LABEL_37:

  return array;
}

- (unint64_t)_numberOfInputsForLastPadding
{
  if ([(PXNewMagazineLayoutTileMaker *)self numberOfColumns]< 5)
  {
    return 9;
  }

  else
  {
    return 10;
  }
}

- (BOOL)_isSameRectsArray:(id)array otherArray:(id)otherArray
{
  arrayCopy = array;
  otherArrayCopy = otherArray;
  v7 = ([arrayCopy isEqualToRectArray:otherArrayCopy] & 1) != 0 || objc_msgSend(arrayCopy, "count") == 1 && objc_msgSend(otherArrayCopy, "count") == 1;

  return v7;
}

- (void)_resetWithNumberOfAssets:(unint64_t)assets
{
  allFrames = self->_allFrames;
  self->_allFrames = 0;

  self->_startLastPadding = 0;
}

- (void)_updateDimensionInfos
{
  width = self->_referenceSize.width;
  numberOfColumns = self->_numberOfColumns;
  interTileSpacing = self->_interTileSpacing;
  v5 = (width - (numberOfColumns - 1) * interTileSpacing) / numberOfColumns;
  v6 = v5 / self->_tileAspectRatio;
  self->_defaultTileSize.width = v5;
  self->_defaultTileSize.height = v6;
  self->_lastTileWidthPadding = width - -(interTileSpacing - (interTileSpacing + v5) * numberOfColumns);
}

- (void)_setRandomSeedWithInputs:(id)inputs
{
  inputsCopy = inputs;
  if ([inputsCopy count])
  {
    v3 = [inputsCopy objectAtIndexedSubscript:0];
    [v3 size];
    v5 = v4;

    srand(v5);
  }
}

- (double)_normalizeWeightsByInputs:(id)inputs
{
  v40 = *MEMORY[0x1E69E9840];
  inputsCopy = inputs;
  v4 = inputsCopy;
  if (inputsCopy && [inputsCopy count])
  {
    v5 = malloc_type_calloc([v4 count], 8uLL, 0x100004000313F17uLL);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v31;
      v10 = 0.0;
      v11 = 1.0;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v31 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v30 + 1) + 8 * i) weight];
          if (v13 > v10)
          {
            v10 = v13;
          }

          if (v13 < v11)
          {
            v11 = v13;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v30 objects:v39 count:16];
      }

      while (v8);
    }

    else
    {
      v10 = 0.0;
      v11 = 1.0;
    }

    if (v10 - v11 >= 0.0)
    {
      v14 = v10 - v11;
    }

    else
    {
      v14 = -(v10 - v11);
    }

    if (v14 < 0.01)
    {
      v15 = PLUIGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        v36 = v11;
        v37 = 2048;
        v38 = v10;
        _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_DEBUG, "No weights !!!  %.3f ~ %.3f", buf, 0x16u);
      }

      v11 = 1.0;
      v10 = 1.0;
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v16 = v6;
    v17 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = 0;
      v20 = *v27;
      do
      {
        v21 = 0;
        v22 = v19;
        do
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(v16);
          }

          v23 = v10;
          if (v14 >= 0.01)
          {
            [*(*(&v26 + 1) + 8 * v21) weight];
            v23 = v11 + (v24 - v11) * ((1.0 - v11) / (v10 - v11));
            if (v23 > 1.0)
            {
              v23 = 1.0;
            }
          }

          v19 = v22 + 1;
          v5[v22] = v23;
          ++v21;
          ++v22;
        }

        while (v18 != v21);
        v18 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v18);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_getFrames:(CGRect *)frames magazineRects:(PXMagazineRect *)rects withInputs:(id)inputs
{
  inputsCopy = inputs;
  if (self->_normalizedWeights)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXNewMagazineLayoutTileMaker.m" lineNumber:204 description:@"normalizedWeights Memory leak."];
  }

  -[PXNewMagazineLayoutTileMaker _resetWithNumberOfAssets:](self, "_resetWithNumberOfAssets:", [inputsCopy count]);
  [(PXNewMagazineLayoutTileMaker *)self _setRandomSeedWithInputs:inputsCopy];
  v10 = [(PXNewMagazineLayoutTileMaker *)self _normalizeWeightsByInputs:inputsCopy];
  self->_normalizedWeights = v10;
  if (!v10)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXNewMagazineLayoutTileMaker.m" lineNumber:208 description:@"Allocate normalizedWeights memory faill."];
  }

  self->_isPerfectEnding = 0;
  v11 = [(PXNewMagazineLayoutTileMaker *)self _generateTilesWithInputs:inputsCopy];
  if ([v11 count])
  {
    lastObject = [v11 lastObject];
    rectsArray = [lastObject rectsArray];
    self->_isPerfectEnding = [rectsArray isPerfectEnding];
  }

  if (frames | rects)
  {
    v35 = inputsCopy;
    if ([v11 count])
    {
      v14 = 0;
      v15 = 0;
      p_size = &frames->size;
      v33 = v11;
      MaxY = 0.0;
      do
      {
        v34 = v15;
        v17 = [v11 objectAtIndex:{v15, p_size}];
        rectsArray2 = [v17 rectsArray];
        if ([rectsArray2 count])
        {
          v19 = 0;
          v20 = &rects[v14];
          p_width = &p_size[2 * v14].width;
          do
          {
            v37 = 0;
            v38 = 0;
            if (rectsArray2)
            {
              [rectsArray2 rectAtIndex:v19];
            }

            startY = [v17 startY];
            v37.var1 += startY;
            if (rects)
            {
              v23 = v38;
              v20->var0 = v37;
              v20->var1 = v23;
            }

            if (frames)
            {
              v36[0] = v37;
              v36[1] = v38;
              [(PXNewMagazineLayoutTileMaker *)self _frameFromTileFrame:v36];
              *(p_width - 2) = v24;
              *(p_width - 1) = v25;
              *p_width = v26;
              p_width[1] = v27;
              v28 = v14 + self->_numberOfColumns;
              if (v28 >= [v35 count] && CGRectGetMaxY(*(p_width - 2)) > MaxY)
              {
                MaxY = CGRectGetMaxY(*(p_width - 2));
              }
            }

            ++v14;
            ++v19;
            ++v20;
            p_width += 4;
          }

          while (v19 < [rectsArray2 count]);
        }

        v11 = v33;
        v15 = v34 + 1;
      }

      while (v34 + 1 < [v33 count]);
    }

    else
    {
      MaxY = 0.0;
    }

    self->_height = MaxY;
    inputsCopy = v35;
  }

  normalizedWeights = self->_normalizedWeights;
  if (normalizedWeights)
  {
    free(normalizedWeights);
    self->_normalizedWeights = 0;
  }
}

- (BOOL)convertRects:(PXMagazineRect *)rects outFrames:(CGRect *)frames count:(unint64_t)count forReferenceSize:(CGSize)size
{
  self->_referenceSize = size;
  [(PXNewMagazineLayoutTileMaker *)self _updateDimensionInfos];
  if (frames)
  {
    if (count)
    {
      v10 = 0;
      p_size = &frames->size;
      MaxY = 0.0;
      do
      {
        var1 = rects->var1;
        v23[0] = rects->var0;
        v23[1] = var1;
        [(PXNewMagazineLayoutTileMaker *)self _frameFromTileFrame:v23];
        p_size[-1].width = v14;
        p_size[-1].height = v15;
        p_size->width = v16;
        p_size->height = v17;
        if (v10 + self->_numberOfColumns >= count)
        {
          v18 = v14;
          v19 = v15;
          v20 = v16;
          v21 = v17;
          if (CGRectGetMaxY(*&v14) > MaxY)
          {
            v24.origin.x = v18;
            v24.origin.y = v19;
            v24.size.width = v20;
            v24.size.height = v21;
            MaxY = CGRectGetMaxY(v24);
          }
        }

        ++v10;
        p_size += 2;
        ++rects;
      }

      while (count != v10);
    }

    else
    {
      MaxY = 0.0;
    }

    self->_height = MaxY;
  }

  return 1;
}

- (void)setInterTileSpacing:(double)spacing
{
  if (self->_interTileSpacing != spacing)
  {
    self->_interTileSpacing = spacing;
    [(PXNewMagazineLayoutTileMaker *)self _updateDimensionInfos];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PXNewMagazineLayoutTileMaker numberOfColumns](self, "numberOfColumns")}];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_interTileSpacing];
  [(PXNewMagazineLayoutTileMaker *)self tileAspectRatio];
  v7 = v6;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_maxTilesInFrame >> 1];
  v9 = [v3 stringWithFormat:@"Tile Maker = {Columns: %@, InterTileSpacing: %@, TileASP: %.2f, MaxTiles: %@, MaxASP: %.2f, MinASP: %.2f}", v4, v5, v7, v8, *&self->_maxFrameAspectRatio, *&self->_minFrameAspectRatio];

  return v9;
}

- (void)dealloc
{
  normalizedWeights = self->_normalizedWeights;
  if (normalizedWeights)
  {
    free(normalizedWeights);
  }

  v4.receiver = self;
  v4.super_class = PXNewMagazineLayoutTileMaker;
  [(PXNewMagazineLayoutTileMaker *)&v4 dealloc];
}

- (PXNewMagazineLayoutTileMaker)initWithReferenceSize:(CGSize)size numberOfColumns:(unint64_t)columns
{
  height = size.height;
  width = size.width;
  v13.receiver = self;
  v13.super_class = PXNewMagazineLayoutTileMaker;
  v7 = [(PXNewMagazineLayoutTileMaker *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v7->_referenceSize.width = width;
    v7->_referenceSize.height = height;
    v9 = 80;
    if (columns < 5)
    {
      v9 = 48;
    }

    v7->_interTileSpacing = 2.0;
    v7->_maxTilesInFrame = v9;
    v7->_numberOfColumns = 2 * columns;
    v7->_tileAspectRatio = 1.33333333;
    v7->_maxFrameAspectRatio = columns * 1.33333333;
    v7->_minFrameAspectRatio = 0.25;
    v7->_startLastPadding = 0;
    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:60];
    sharedTempArray = v8->_sharedTempArray;
    v8->_sharedTempArray = v10;

    v8->_isPerfectEnding = 0;
    [(PXNewMagazineLayoutTileMaker *)v8 _updateDimensionInfos];
  }

  return v8;
}

@end