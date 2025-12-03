@interface PXMagazineLayoutTileMaker
- (BOOL)_findNextTileWithInputs:(id)inputs atIndex:(unint64_t)index baseIndex:(unint64_t)baseIndex coordinator:(id)coordinator;
- (BOOL)_generateTilesWithInputs:(id)inputs atIndex:(unint64_t)index forMaxY:(unint64_t)y reserveNumberForPadding:(unint64_t)padding outArray:(id)array;
- (CGRect)_frameFromTileFrame:(PXMagazineRect *)frame;
- (CGSize)defaultTileSize;
- (CGSize)referenceSize;
- (PXMagazineLayoutTileMaker)initWithReferenceSize:(CGSize)size numberOfColumns:(unint64_t)columns;
- (double)_aspectRatioOfInput:(id)input;
- (double)_normalizeWeightsByInputs:(id)inputs;
- (id)_generateLastTilesWithInputs:(id)inputs baseIndex:(unint64_t)index returnFallback:(BOOL)fallback;
- (id)_generateTilesWithInputs:(id)inputs;
- (id)_getAllFramesInOrder;
- (id)description;
- (int64_t)_availableFrames:(id *)frames maxReturnCount:(unint64_t)count forAspectRatio:(double)ratio weight:(double)weight maxWidth:(unint64_t)width;
- (unint64_t)_numberOfInputsForLastPadding;
- (void)_findNextChunkWithInputs:(id)inputs fromIndex:(unint64_t)index outArray:(id)array;
- (void)_getFrames:(CGRect *)frames magazineRects:(PXMagazineRect *)rects withInputs:(id)inputs;
- (void)_resetWithNumberOfAssets:(unint64_t)assets;
- (void)_setRandomSeedWithInputs:(id)inputs;
- (void)_updateDimensionInfos;
- (void)dealloc;
- (void)setInterTileSpacing:(double)spacing;
@end

@implementation PXMagazineLayoutTileMaker

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
  v71 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self->_sharedTempArray removeAllObjects];
  v12 = self->_sharedTempArray;
  if (1.0 / ratio <= ratio)
  {
    ratioCopy = ratio;
  }

  else
  {
    ratioCopy = 1.0 / ratio;
  }

  _getAllFramesInOrder = [(PXMagazineLayoutTileMaker *)self _getAllFramesInOrder];
  if (![_getAllFramesInOrder count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXMagazineLayoutTileMaker.m" lineNumber:598 description:@"We should never have no frames"];
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v15 = _getAllFramesInOrder;
  v16 = [v15 countByEnumeratingWithState:&v65 objects:v70 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v66;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v66 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v65 + 1) + 8 * i);
        [v20 aspectRatio];
        v22 = v21;
        [v20 minAspectRatio];
        v24 = v23;
        [v20 maxAspectRatio];
        v26 = v25;
        width = [v20 width];
        height = [v20 height];
        if (width <= width && (self->_startLastPadding || ((width | height) & 1) == 0))
        {
          v29 = ratioCopy + -1.0;
          v30 = ratio <= 0.402;
          if (v22 >= 0.801)
          {
            v30 = 0;
          }

          v31 = v22 < 0.8 || ratioCopy + -1.0 > 0.15;
          v32 = v31 || v22 > 1.334;
          if (!v32 || v30)
          {
            goto LABEL_40;
          }

          if (v24 > ratio)
          {
            goto LABEL_43;
          }

          v29 = 0.9;
          if (ratio >= 0.9 && width == 2 && height == 2)
          {
            goto LABEL_40;
          }

          v33 = width == 2 && ratio < 0.9;
          if (v33 && height == 4)
          {
            goto LABEL_40;
          }

          if (v26 >= ratio)
          {
            v29 = 0.9;
            v35 = v22 < 0.9;
            if (ratio < 0.9)
            {
              v35 = v22 >= 1.1;
            }

            if (!v35)
            {
LABEL_40:
              [(NSMutableArray *)v12 addObject:v20, v29];
            }
          }
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v65 objects:v70 count:16];
    }

    while (v17);
  }

LABEL_43:

  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __92__PXMagazineLayoutTileMaker__availableFrames_maxReturnCount_forAspectRatio_weight_maxWidth___block_invoke;
  v63[3] = &__block_descriptor_41_e45_q24__0__PXMagazineFrame_8__PXMagazineFrame_16l;
  *&v63[4] = ratio;
  v64 = weight > 0.7;
  [(NSMutableArray *)v12 sortUsingComparator:v63];
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v36 = v12;
  v37 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v59 objects:v69 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = 0;
    v40 = *v60;
    framesCopy2 = frames;
LABEL_45:
    v42 = 0;
    while (1)
    {
      if (*v60 != v40)
      {
        objc_enumerationMutation(v36);
      }

      frames[v39++] = *(*(&v59 + 1) + 8 * v42);
      if (v39 >= count)
      {
        break;
      }

      if (v38 == ++v42)
      {
        v38 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v59 objects:v69 count:16];
        if (v38)
        {
          goto LABEL_45;
        }

        break;
      }
    }
  }

  else
  {
    v39 = 0;
    framesCopy2 = frames;
  }

  v43 = +[PXPhotosDetailsSettings sharedInstance];
  editorialLayoutAvoidSmallestTile = [v43 editorialLayoutAvoidSmallestTile];

  numberOfColumns = [(PXMagazineLayoutTileMaker *)self numberOfColumns];
  if (v39 >= 2 && editorialLayoutAvoidSmallestTile)
  {
    v46 = numberOfColumns;
    v47 = *framesCopy2;
    if ([v47 width] != 2 || objc_msgSend(v47, "height") != 2 && objc_msgSend(v47, "height") != 4)
    {
      goto LABEL_75;
    }

    v48 = framesCopy2[1];
    v49 = v48;
    if (v39 < 3 || v46 < 4)
    {
      v54 = v48;
      if (v46 <= 3)
      {
        v50 = 0;
        if ((rand() & 1) == 0)
        {
LABEL_74:

LABEL_75:
          goto LABEL_76;
        }
      }

      else
      {
        v50 = 0;
      }

      v52 = 1;
    }

    else
    {
      v50 = framesCopy2[2];
      if (v50)
      {
        v51 = rand();
        if (v51)
        {
          v52 = 2;
        }

        else
        {
          v52 = 1;
        }

        if (v51)
        {
          v53 = v50;
        }

        else
        {
          v53 = v49;
        }
      }

      else
      {
        v52 = 1;
        v53 = v49;
      }

      v54 = v53;
    }

    *framesCopy2 = v54;
    framesCopy2[v52] = v47;
    goto LABEL_74;
  }

LABEL_76:

  return v39;
}

uint64_t __92__PXMagazineLayoutTileMaker__availableFrames_maxReturnCount_forAspectRatio_weight_maxWidth___block_invoke(uint64_t a1, void *a2, void *a3)
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

  if (v13 >= 0.005)
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
  v52 = *MEMORY[0x1E69E9840];
  allFrames = self->_allFrames;
  if (!allFrames || ![(NSMutableArray *)allFrames count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v5 = self->_allFrames;
    self->_allFrames = array;

    numberOfColumns = [(PXMagazineLayoutTileMaker *)self numberOfColumns];
    if (self->_numberOfColumns >= 2)
    {
      if (numberOfColumns >= 4)
      {
        v7 = 13;
      }

      else
      {
        v7 = 9;
      }

      v8 = 2;
      v9 = 4;
      v41 = 1000.0;
      do
      {
        v10 = v9;
        for (i = 2; i != v7; ++i)
        {
          if (v10 <= self->_maxTilesInFrame)
          {
            v12 = self->_tileAspectRatio * v8 / i;
            if (v12 <= self->_maxFrameAspectRatio && v12 >= self->_minFrameAspectRatio)
            {
              v13 = [[PXMagazineFrame alloc] initWithWidth:v8 height:i];
              [(PXMagazineFrame *)v13 setAspectRatio:v12];
              v14 = v12 + -1.0;
              if (v12 + -1.0 < 0.0)
              {
                v14 = -(v12 + -1.0);
              }

              v15 = v12 < 2.498 && v12 > 0.402;
              v16 = 1.35;
              if (!v15)
              {
                v16 = 1.25;
              }

              if (v14 >= 0.112)
              {
                v17 = v16;
              }

              else
              {
                v17 = 1.6;
              }

              [(PXMagazineFrame *)v13 setMinAspectRatio:v12 / v17, v16, *&v41];
              [(PXMagazineFrame *)v13 setMaxAspectRatio:v12 * v17];
              if (v12 >= 2.498)
              {
                [(PXMagazineFrame *)v13 setMinAspectRatio:fmin(v12 / 1.25, 2.498)];
                [(PXMagazineFrame *)v13 setMaxAspectRatio:v41];
              }

              if (v12 <= 0.402)
              {
                [(PXMagazineFrame *)v13 setMinAspectRatio:0.0];
                v18 = v12 * 1.25;
                if (v12 * 1.25 < 0.402)
                {
                  v18 = 0.402;
                }

                [(PXMagazineFrame *)v13 setMaxAspectRatio:v18];
              }

              [(NSMutableArray *)self->_allFrames addObject:v13];
            }
          }

          v10 += v8;
        }

        ++v8;
        v9 += 2;
      }

      while (v8 <= self->_numberOfColumns);
    }

    [(NSMutableArray *)self->_allFrames sortUsingComparator:&__block_literal_global_86050, *&v41];
    v19 = [(NSMutableArray *)self->_allFrames objectAtIndexedSubscript:0];
    [v19 aspectRatio];
    v21 = v20;

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v22 = self->_allFrames;
    v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v47;
LABEL_33:
      v26 = 0;
      while (1)
      {
        if (*v47 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v46 + 1) + 8 * v26);
        [v27 aspectRatio];
        if (v28 > v21)
        {
          break;
        }

        [v27 setMinAspectRatio:0.0];
        if (v24 == ++v26)
        {
          v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v46 objects:v51 count:16];
          if (v24)
          {
            goto LABEL_33;
          }

          break;
        }
      }
    }

    lastObject = [(NSMutableArray *)self->_allFrames lastObject];
    [lastObject aspectRatio];
    v31 = v30;

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    reverseObjectEnumerator = [(NSMutableArray *)self->_allFrames reverseObjectEnumerator];
    v33 = [reverseObjectEnumerator countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v43;
LABEL_41:
      v36 = 0;
      while (1)
      {
        if (*v43 != v35)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v37 = *(*(&v42 + 1) + 8 * v36);
        [v37 aspectRatio];
        if (v38 < v31)
        {
          break;
        }

        [v37 setMaxAspectRatio:1000.0];
        if (v34 == ++v36)
        {
          v34 = [reverseObjectEnumerator countByEnumeratingWithState:&v42 objects:v50 count:16];
          if (v34)
          {
            goto LABEL_41;
          }

          break;
        }
      }
    }
  }

  v39 = self->_allFrames;

  return v39;
}

uint64_t __49__PXMagazineLayoutTileMaker__getAllFramesInOrder__block_invoke(uint64_t a1, void *a2, void *a3)
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
  v50[1] = *MEMORY[0x1E69E9840];
  v49 = 0;
  v50[0] = 0;
  v48 = 0;
  v11 = [inputs objectAtIndexedSubscript:index];
  [(PXMagazineLayoutTileMaker *)self _aspectRatioOfInput:v11];
  v13 = v12;
  v14 = [inputs count];
  if ([(PXMagazineGrid *)self->_tileGrid nextEmptyTileX:v50 Y:&v49 maxWidth:&v48])
  {
    v37 = v11;
    inputsCopy = inputs;
    v15 = [inputs count];
    v36[1] = v36;
    v16 = 10;
    if (v15 == 6)
    {
      v16 = 8;
    }

    if (v15 == 7)
    {
      v16 = 6;
    }

    if (v15 <= 7)
    {
      v17 = v16;
    }

    else
    {
      v17 = 5;
    }

    MEMORY[0x1EEE9AC00](v15);
    v19 = (v36 - v18);
    bzero(v36 - v18, v20);
    normalizedWeights = self->_normalizedWeights;
    baseIndexCopy = baseIndex;
    v42 = baseIndex + index;
    indexCopy = index;
    v22 = [(PXMagazineLayoutTileMaker *)self _availableFrames:v19 maxReturnCount:v17 forAspectRatio:v48 weight:v13 maxWidth:normalizedWeights[baseIndex + index]];
    v36[0] = objc_autoreleasePoolPush();
    currentLayout = [coordinator currentLayout];
    stopIfAnyGoodLayout = [coordinator stopIfAnyGoodLayout];
    if (v22 >= 1)
    {
      v41 = v14 - 1;
      do
      {
        v24 = *v19;
        v25 = v49;
        v26 = v50[0];
        width = [v24 width];
        height = [v24 height];
        tileGrid = self->_tileGrid;
        v44 = v26;
        v45 = v25;
        v46 = width;
        v47 = height;
        [(PXMagazineGrid *)tileGrid setTileIdentifier:v42 forArea:&v44];
        v44 = v26;
        v45 = v25;
        v46 = width;
        v47 = height;
        [currentLayout addRect:&v44];
        if (v41 == indexCopy)
        {
          endingType = [(PXMagazineGrid *)self->_tileGrid endingType];
          if (endingType == 1)
          {
            v31 = stopIfAnyGoodLayout;
          }

          else
          {
            v31 = 0;
          }

          if (endingType == 2 || v31)
          {
            [coordinator validateCurrentLayout];
          }

          else if (stopIfAnyGoodLayout && ![coordinator currentLayoutsCount])
          {
            [coordinator validateCurrentLayoutAsFallback];
          }

          if ([coordinator stop])
          {
LABEL_29:

            objc_autoreleasePoolPop(v36[0]);
            goto LABEL_33;
          }

          v33 = self->_tileGrid;
          v44 = v26;
          v45 = v25;
          v46 = width;
          v47 = height;
          [(PXMagazineGrid *)v33 clearArea:&v44];
          [currentLayout removeLastRect];
        }

        else
        {
          if ([(PXMagazineLayoutTileMaker *)self _findNextTileWithInputs:inputsCopy atIndex:indexCopy + 1 baseIndex:baseIndexCopy coordinator:coordinator])
          {
            goto LABEL_29;
          }

          v32 = self->_tileGrid;
          v44 = v26;
          v45 = v25;
          v46 = width;
          v47 = height;
          [(PXMagazineGrid *)v32 clearArea:&v44];
          [currentLayout removeLastRect];
          if ([coordinator stop])
          {

            break;
          }
        }

        ++v19;
        --v22;
      }

      while (v22);
    }

    objc_autoreleasePoolPop(v36[0]);
    if (indexCopy || ![coordinator currentLayoutsCount])
    {
      v34 = 0;
    }

    else
    {
LABEL_33:
      v34 = 1;
    }

    v11 = v37;
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

- (id)_generateLastTilesWithInputs:(id)inputs baseIndex:(unint64_t)index returnFallback:(BOOL)fallback
{
  fallbackCopy = fallback;
  inputsCopy = inputs;
  self->_startLastPadding = 1;
  v9 = [[PXMagazineLayoutCoordinator alloc] initWithPaddingInputs:inputsCopy tileAspectRatio:0 stopIfAnyGoodLayout:self->_tileAspectRatio];
  if ([(PXMagazineLayoutTileMaker *)self _findNextTileWithInputs:inputsCopy atIndex:0 baseIndex:index coordinator:v9])
  {
    goto LABEL_4;
  }

  [objc_opt_class() printInputs:inputsCopy];
  if (fallbackCopy)
  {
    v10 = [[PXMagazineLayoutCoordinator alloc] initWithPaddingInputs:inputsCopy tileAspectRatio:1 stopIfAnyGoodLayout:self->_tileAspectRatio];

    [(PXMagazineLayoutTileMaker *)self _findNextTileWithInputs:inputsCopy atIndex:0 baseIndex:index coordinator:v10];
    v9 = v10;
LABEL_4:
    currentBestLayout = [(PXMagazineLayoutCoordinator *)v9 currentBestLayout];
    goto LABEL_6;
  }

  currentBestLayout = 0;
LABEL_6:

  return currentBestLayout;
}

- (BOOL)_generateTilesWithInputs:(id)inputs atIndex:(unint64_t)index forMaxY:(unint64_t)y reserveNumberForPadding:(unint64_t)padding outArray:(id)array
{
  v54 = *MEMORY[0x1E69E9840];
  inputsCopy = inputs;
  arrayCopy = array;
  v51 = 0;
  v52 = 0;
  v50 = 0;
  v12 = [inputsCopy objectAtIndexedSubscript:index];
  [(PXMagazineLayoutTileMaker *)self _aspectRatioOfInput:v12];
  v14 = v13;
  indexCopy = index;
  v15 = self->_normalizedWeights[index];
  v40 = inputsCopy;
  v16 = [inputsCopy count];
  selfCopy = self;
  v17 = 0;
  if (![(PXMagazineGrid *)self->_tileGrid nextEmptyTileX:&v52 Y:&v51 maxWidth:&v50]|| v51 > y)
  {
    goto LABEL_27;
  }

  v36 = v12;
  memset(v53, 0, sizeof(v53));
  v18 = [(PXMagazineLayoutTileMaker *)self _availableFrames:v53 maxReturnCount:12 forAspectRatio:v50 weight:v14 maxWidth:v15];
  if (v18 < 1)
  {
    v17 = 0;
    goto LABEL_26;
  }

  v19 = v18;
  v39 = v16 - 1;
  v20 = v14 >= 2.498;
  if (v15 >= 0.7)
  {
    v20 = 1;
  }

  v41 = v20;
  v21 = 1;
  v22 = v53;
  v23 = v18;
  v17 = 1;
  yCopy = y;
  v37 = v18;
  while (1)
  {
    v24 = *v22;
    if ([v24 height] == 2)
    {
      width = [v24 width];
      v26 = y != -1 && width == 2;
      v27 = v26;
      if (v27 && v41)
      {
        goto LABEL_22;
      }
    }

    v28 = v51;
    if ([v24 height] + v28 > y)
    {
      goto LABEL_22;
    }

    v30 = v51;
    v29 = v52;
    width2 = [v24 width];
    height = [v24 height];
    tileGrid = selfCopy->_tileGrid;
    v46 = v29;
    v47 = v30;
    v48 = width2;
    v49 = height;
    [(PXMagazineGrid *)tileGrid setTileIdentifier:indexCopy forArea:&v46];
    v46 = v29;
    v47 = v30;
    v48 = width2;
    v49 = height;
    [arrayCopy addRect:&v46];
    if ([(PXMagazineGrid *)selfCopy->_tileGrid isPerfectEnding])
    {
      break;
    }

    if (padding + indexCopy == v39)
    {
      if (yCopy == -1)
      {
        break;
      }

      goto LABEL_21;
    }

    if ([(PXMagazineLayoutTileMaker *)selfCopy _generateTilesWithInputs:v40 atIndex:indexCopy + 1 forMaxY:yCopy reserveNumberForPadding:padding outArray:arrayCopy])
    {
      break;
    }

LABEL_21:
    v34 = selfCopy->_tileGrid;
    v46 = v29;
    v47 = v30;
    v48 = width2;
    v49 = height;
    [(PXMagazineGrid *)v34 clearArea:&v46];
    [arrayCopy removeLastRect];
    y = yCopy;
    v19 = v37;
LABEL_22:

    v17 = v21++ < v19;
    ++v22;
    if (!--v23)
    {
      goto LABEL_26;
    }
  }

LABEL_26:
  v12 = v36;
LABEL_27:

  return v17;
}

- (void)_findNextChunkWithInputs:(id)inputs fromIndex:(unint64_t)index outArray:(id)array
{
  inputsCopy = inputs;
  arrayCopy = array;
  v9 = +[PXPhotosDetailsSettings sharedInstance];
  editorialLayoutTargetRowsForChunk = [v9 editorialLayoutTargetRowsForChunk];

  currentRowsUsed = [(PXMagazineGrid *)self->_tileGrid currentRowsUsed];
  if (![(PXMagazineLayoutTileMaker *)self _generateTilesWithInputs:inputsCopy atIndex:index forMaxY:currentRowsUsed + 2 * editorialLayoutTargetRowsForChunk reserveNumberForPadding:0 outArray:arrayCopy]&& ![(PXMagazineLayoutTileMaker *)self _generateTilesWithInputs:inputsCopy atIndex:index forMaxY:currentRowsUsed + 6 * editorialLayoutTargetRowsForChunk reserveNumberForPadding:0 outArray:arrayCopy])
  {
    [(PXMagazineLayoutTileMaker *)self _generateTilesWithInputs:inputsCopy atIndex:index forMaxY:-1 reserveNumberForPadding:[(PXMagazineLayoutTileMaker *)self _numberOfInputsForLastPadding] outArray:arrayCopy];
  }
}

- (unint64_t)_numberOfInputsForLastPadding
{
  if ([(PXMagazineLayoutTileMaker *)self numberOfColumns]>= 6)
  {
    return 2 * [(PXMagazineLayoutTileMaker *)self numberOfColumns];
  }

  else
  {
    return 10;
  }
}

- (id)_generateTilesWithInputs:(id)inputs
{
  inputsCopy = inputs;
  v5 = [inputsCopy count];
  v6 = [[PXMagazineRectArray alloc] initWithSize:v5];
  _numberOfInputsForLastPadding = [(PXMagazineLayoutTileMaker *)self _numberOfInputsForLastPadding];
  v8 = 0;
  while (v8 < v5)
  {
    v9 = v8 + _numberOfInputsForLastPadding;
    if (v8 + _numberOfInputsForLastPadding < v5)
    {
      [(PXMagazineLayoutTileMaker *)self _findNextChunkWithInputs:inputsCopy fromIndex:v8 outArray:v6];
      v10 = [(PXMagazineRectArray *)v6 count];
      v11 = v8 == v10;
      if (v8 != v10)
      {
        v8 = [(PXMagazineRectArray *)v6 count];
      }

      if (v8 >= v5)
      {
        break;
      }

      v9 = v8 + _numberOfInputsForLastPadding;
      if (v11)
      {
        goto LABEL_9;
      }
    }

    if (v9 >= v5)
    {
LABEL_9:
      v12 = [inputsCopy subarrayWithRange:{v8, v5 - v8}];
      if (v8)
      {
        v13 = v5 - v8 >= _numberOfInputsForLastPadding;
      }

      else
      {
        v13 = 1;
      }

      v14 = v13;
      v15 = [(PXMagazineLayoutTileMaker *)self _generateLastTilesWithInputs:v12 baseIndex:v8 returnFallback:v14];
      if ([v15 count])
      {
        v16 = 0;
        do
        {
          v27 = 0u;
          v28 = 0u;
          if (v15)
          {
            [v15 rectAtIndex:v16];
          }

          v25 = v27;
          v26 = v28;
          [(PXMagazineRectArray *)v6 addRect:&v25];
          ++v16;
        }

        while (v16 < [v15 count]);
      }

      if (v15)
      {
        v17 = 1;
      }

      else
      {
        v17 = v14;
      }

      if (v17)
      {
        v18 = v12;
      }

      else
      {
        if (_numberOfInputsForLastPadding >= v5)
        {
          v19 = v5;
        }

        else
        {
          v19 = _numberOfInputsForLastPadding;
        }

        v20 = v5 - v19;
        v18 = [inputsCopy subarrayWithRange:v5 - v19];

        for (i = [(PXMagazineRectArray *)v6 count]- 1; i >= v20; --i)
        {
          v27 = 0u;
          v28 = 0u;
          if (v6)
          {
            [(PXMagazineRectArray *)v6 rectAtIndex:i];
          }

          tileGrid = self->_tileGrid;
          v25 = v27;
          v26 = v28;
          [(PXMagazineGrid *)tileGrid clearArea:&v25];
          [(PXMagazineRectArray *)v6 removeLastRect];
        }

        v15 = [(PXMagazineLayoutTileMaker *)self _generateLastTilesWithInputs:v18 baseIndex:v20 returnFallback:1];
        if ([v15 count])
        {
          v23 = 0;
          do
          {
            v27 = 0u;
            v28 = 0u;
            if (v15)
            {
              [v15 rectAtIndex:v23];
            }

            v25 = v27;
            v26 = v28;
            [(PXMagazineRectArray *)v6 addRect:&v25];
            ++v23;
          }

          while (v23 < [v15 count]);
        }
      }

      break;
    }
  }

  return v6;
}

- (void)_resetWithNumberOfAssets:(unint64_t)assets
{
  v5 = [[PXMagazineGrid alloc] initWithNumberOfColumns:self->_numberOfColumns size:assets];
  tileGrid = self->_tileGrid;
  self->_tileGrid = v5;

  v7 = [[PXMagazineRectArray alloc] initWithSize:assets];
  cachedTileRects = self->_cachedTileRects;
  self->_cachedTileRects = v7;

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
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXMagazineLayoutTileMaker.m" lineNumber:162 description:@"normalizedWeights Memory leak."];
  }

  -[PXMagazineLayoutTileMaker _resetWithNumberOfAssets:](self, "_resetWithNumberOfAssets:", [inputsCopy count]);
  [(PXMagazineLayoutTileMaker *)self _setRandomSeedWithInputs:inputsCopy];
  v10 = [(PXMagazineLayoutTileMaker *)self _normalizeWeightsByInputs:inputsCopy];
  self->_normalizedWeights = v10;
  if (!v10)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXMagazineLayoutTileMaker.m" lineNumber:166 description:@"Allocate normalizedWeights memory faill."];
  }

  v11 = [(PXMagazineLayoutTileMaker *)self _generateTilesWithInputs:inputsCopy];
  cachedTileRects = self->_cachedTileRects;
  self->_cachedTileRects = v11;

  v13 = [inputsCopy count];
  if (v13 != [(PXMagazineRectArray *)self->_cachedTileRects count])
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXMagazineLayoutTileMaker.m" lineNumber:170 description:@"The number of cached tiles cannot be != to the number of inputs"];
  }

  if (frames | rects)
  {
    if ([(PXMagazineRectArray *)self->_cachedTileRects count])
    {
      v14 = 0;
      p_size = &frames->size;
      MaxY = 0.0;
      rectsCopy = rects;
      do
      {
        v34 = 0;
        v35 = 0;
        v18 = self->_cachedTileRects;
        if (v18)
        {
          [(PXMagazineRectArray *)v18 rectAtIndex:v14];
        }

        v33[0] = v34;
        v33[1] = v35;
        [(PXMagazineLayoutTileMaker *)self _frameFromTileFrame:v33];
        v23 = v19;
        v24 = v20;
        v25 = v21;
        v26 = v22;
        if (frames)
        {
          p_size[-1].width = v19;
          p_size[-1].height = v20;
          p_size->width = v21;
          p_size->height = v22;
        }

        if (rects)
        {
          v27 = v35;
          rectsCopy->var0 = v34;
          rectsCopy->var1 = v27;
        }

        v28 = v14 + self->_numberOfColumns;
        if (v28 >= [(PXMagazineRectArray *)self->_cachedTileRects count])
        {
          v36.origin.x = v23;
          v36.origin.y = v24;
          v36.size.width = v25;
          v36.size.height = v26;
          if (CGRectGetMaxY(v36) > MaxY)
          {
            v37.origin.x = v23;
            v37.origin.y = v24;
            v37.size.width = v25;
            v37.size.height = v26;
            MaxY = CGRectGetMaxY(v37);
          }
        }

        ++v14;
        ++rectsCopy;
        p_size += 2;
      }

      while (v14 < [(PXMagazineRectArray *)self->_cachedTileRects count]);
    }

    else
    {
      MaxY = 0.0;
    }

    self->_height = MaxY;
  }

  normalizedWeights = self->_normalizedWeights;
  if (normalizedWeights)
  {
    free(normalizedWeights);
    self->_normalizedWeights = 0;
  }
}

- (void)setInterTileSpacing:(double)spacing
{
  if (self->_interTileSpacing != spacing)
  {
    self->_interTileSpacing = spacing;
    [(PXMagazineLayoutTileMaker *)self _updateDimensionInfos];
  }
}

- (double)_aspectRatioOfInput:(id)input
{
  [input size];
  if (v4 > 0.0 && v3 > 0.0)
  {

    PXSizeGetAspectRatio();
  }

  return 1.0;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PXMagazineLayoutTileMaker numberOfColumns](self, "numberOfColumns")}];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_interTileSpacing];
  [(PXMagazineLayoutTileMaker *)self tileAspectRatio];
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
  v4.super_class = PXMagazineLayoutTileMaker;
  [(PXMagazineLayoutTileMaker *)&v4 dealloc];
}

- (PXMagazineLayoutTileMaker)initWithReferenceSize:(CGSize)size numberOfColumns:(unint64_t)columns
{
  height = size.height;
  width = size.width;
  v13.receiver = self;
  v13.super_class = PXMagazineLayoutTileMaker;
  v7 = [(PXMagazineLayoutTileMaker *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v7->_referenceSize.width = width;
    v7->_referenceSize.height = height;
    v9 = 36;
    if (columns < 5)
    {
      v9 = 24;
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

    [(PXMagazineLayoutTileMaker *)v8 _updateDimensionInfos];
  }

  return v8;
}

@end