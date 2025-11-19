@interface PXMagazineLayoutTileMaker
- (BOOL)_findNextTileWithInputs:(id)a3 atIndex:(unint64_t)a4 baseIndex:(unint64_t)a5 coordinator:(id)a6;
- (BOOL)_generateTilesWithInputs:(id)a3 atIndex:(unint64_t)a4 forMaxY:(unint64_t)a5 reserveNumberForPadding:(unint64_t)a6 outArray:(id)a7;
- (CGRect)_frameFromTileFrame:(PXMagazineRect *)a3;
- (CGSize)defaultTileSize;
- (CGSize)referenceSize;
- (PXMagazineLayoutTileMaker)initWithReferenceSize:(CGSize)a3 numberOfColumns:(unint64_t)a4;
- (double)_aspectRatioOfInput:(id)a3;
- (double)_normalizeWeightsByInputs:(id)a3;
- (id)_generateLastTilesWithInputs:(id)a3 baseIndex:(unint64_t)a4 returnFallback:(BOOL)a5;
- (id)_generateTilesWithInputs:(id)a3;
- (id)_getAllFramesInOrder;
- (id)description;
- (int64_t)_availableFrames:(id *)a3 maxReturnCount:(unint64_t)a4 forAspectRatio:(double)a5 weight:(double)a6 maxWidth:(unint64_t)a7;
- (unint64_t)_numberOfInputsForLastPadding;
- (void)_findNextChunkWithInputs:(id)a3 fromIndex:(unint64_t)a4 outArray:(id)a5;
- (void)_getFrames:(CGRect *)a3 magazineRects:(PXMagazineRect *)a4 withInputs:(id)a5;
- (void)_resetWithNumberOfAssets:(unint64_t)a3;
- (void)_setRandomSeedWithInputs:(id)a3;
- (void)_updateDimensionInfos;
- (void)dealloc;
- (void)setInterTileSpacing:(double)a3;
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

- (int64_t)_availableFrames:(id *)a3 maxReturnCount:(unint64_t)a4 forAspectRatio:(double)a5 weight:(double)a6 maxWidth:(unint64_t)a7
{
  v71 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self->_sharedTempArray removeAllObjects];
  v12 = self->_sharedTempArray;
  if (1.0 / a5 <= a5)
  {
    v13 = a5;
  }

  else
  {
    v13 = 1.0 / a5;
  }

  v14 = [(PXMagazineLayoutTileMaker *)self _getAllFramesInOrder];
  if (![v14 count])
  {
    v56 = [MEMORY[0x1E696AAA8] currentHandler];
    [v56 handleFailureInMethod:a2 object:self file:@"PXMagazineLayoutTileMaker.m" lineNumber:598 description:@"We should never have no frames"];
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v15 = v14;
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
        v27 = [v20 width];
        v28 = [v20 height];
        if (v27 <= a7 && (self->_startLastPadding || ((v27 | v28) & 1) == 0))
        {
          v29 = v13 + -1.0;
          v30 = a5 <= 0.402;
          if (v22 >= 0.801)
          {
            v30 = 0;
          }

          v31 = v22 < 0.8 || v13 + -1.0 > 0.15;
          v32 = v31 || v22 > 1.334;
          if (!v32 || v30)
          {
            goto LABEL_40;
          }

          if (v24 > a5)
          {
            goto LABEL_43;
          }

          v29 = 0.9;
          if (a5 >= 0.9 && v27 == 2 && v28 == 2)
          {
            goto LABEL_40;
          }

          v33 = v27 == 2 && a5 < 0.9;
          if (v33 && v28 == 4)
          {
            goto LABEL_40;
          }

          if (v26 >= a5)
          {
            v29 = 0.9;
            v35 = v22 < 0.9;
            if (a5 < 0.9)
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
  *&v63[4] = a5;
  v64 = a6 > 0.7;
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
    v41 = a3;
LABEL_45:
    v42 = 0;
    while (1)
    {
      if (*v60 != v40)
      {
        objc_enumerationMutation(v36);
      }

      a3[v39++] = *(*(&v59 + 1) + 8 * v42);
      if (v39 >= a4)
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
    v41 = a3;
  }

  v43 = +[PXPhotosDetailsSettings sharedInstance];
  v44 = [v43 editorialLayoutAvoidSmallestTile];

  v45 = [(PXMagazineLayoutTileMaker *)self numberOfColumns];
  if (v39 >= 2 && v44)
  {
    v46 = v45;
    v47 = *v41;
    if ([v47 width] != 2 || objc_msgSend(v47, "height") != 2 && objc_msgSend(v47, "height") != 4)
    {
      goto LABEL_75;
    }

    v48 = v41[1];
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
      v50 = v41[2];
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

    *v41 = v54;
    v41[v52] = v47;
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
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = self->_allFrames;
    self->_allFrames = v4;

    v6 = [(PXMagazineLayoutTileMaker *)self numberOfColumns];
    if (self->_numberOfColumns >= 2)
    {
      if (v6 >= 4)
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

    v29 = [(NSMutableArray *)self->_allFrames lastObject];
    [v29 aspectRatio];
    v31 = v30;

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v32 = [(NSMutableArray *)self->_allFrames reverseObjectEnumerator];
    v33 = [v32 countByEnumeratingWithState:&v42 objects:v50 count:16];
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
          objc_enumerationMutation(v32);
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
          v34 = [v32 countByEnumeratingWithState:&v42 objects:v50 count:16];
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

- (CGRect)_frameFromTileFrame:(PXMagazineRect *)a3
{
  width = self->_defaultTileSize.width;
  interTileSpacing = self->_interTileSpacing;
  v5 = width + interTileSpacing;
  var0 = a3->var1.var0;
  v7 = interTileSpacing * (var0 - 1) + width * var0;
  lastTileWidthPadding = 0.0;
  if (var0 + a3->var0.var0 == self->_numberOfColumns)
  {
    lastTileWidthPadding = self->_lastTileWidthPadding;
  }

  v9 = v5 * a3->var0.var0;
  height = self->_defaultTileSize.height;
  v11 = v7 + lastTileWidthPadding;
  if (self->_layoutFromRightToLeft)
  {
    v9 = self->_referenceSize.width - v9 - v11;
  }

  v12 = interTileSpacing * (a3->var1.var1 - 1) + height * a3->var1.var1;
  v13 = (interTileSpacing + height) * a3->var0.var1;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v13;
  result.origin.x = v9;
  return result;
}

- (BOOL)_findNextTileWithInputs:(id)a3 atIndex:(unint64_t)a4 baseIndex:(unint64_t)a5 coordinator:(id)a6
{
  v50[1] = *MEMORY[0x1E69E9840];
  v49 = 0;
  v50[0] = 0;
  v48 = 0;
  v11 = [a3 objectAtIndexedSubscript:a4];
  [(PXMagazineLayoutTileMaker *)self _aspectRatioOfInput:v11];
  v13 = v12;
  v14 = [a3 count];
  if ([(PXMagazineGrid *)self->_tileGrid nextEmptyTileX:v50 Y:&v49 maxWidth:&v48])
  {
    v37 = v11;
    v38 = a3;
    v15 = [a3 count];
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
    v39 = a5;
    v42 = a5 + a4;
    v43 = a4;
    v22 = [(PXMagazineLayoutTileMaker *)self _availableFrames:v19 maxReturnCount:v17 forAspectRatio:v48 weight:v13 maxWidth:normalizedWeights[a5 + a4]];
    v36[0] = objc_autoreleasePoolPush();
    v23 = [a6 currentLayout];
    v40 = [a6 stopIfAnyGoodLayout];
    if (v22 >= 1)
    {
      v41 = v14 - 1;
      do
      {
        v24 = *v19;
        v25 = v49;
        v26 = v50[0];
        v27 = [v24 width];
        v28 = [v24 height];
        tileGrid = self->_tileGrid;
        v44 = v26;
        v45 = v25;
        v46 = v27;
        v47 = v28;
        [(PXMagazineGrid *)tileGrid setTileIdentifier:v42 forArea:&v44];
        v44 = v26;
        v45 = v25;
        v46 = v27;
        v47 = v28;
        [v23 addRect:&v44];
        if (v41 == v43)
        {
          v30 = [(PXMagazineGrid *)self->_tileGrid endingType];
          if (v30 == 1)
          {
            v31 = v40;
          }

          else
          {
            v31 = 0;
          }

          if (v30 == 2 || v31)
          {
            [a6 validateCurrentLayout];
          }

          else if (v40 && ![a6 currentLayoutsCount])
          {
            [a6 validateCurrentLayoutAsFallback];
          }

          if ([a6 stop])
          {
LABEL_29:

            objc_autoreleasePoolPop(v36[0]);
            goto LABEL_33;
          }

          v33 = self->_tileGrid;
          v44 = v26;
          v45 = v25;
          v46 = v27;
          v47 = v28;
          [(PXMagazineGrid *)v33 clearArea:&v44];
          [v23 removeLastRect];
        }

        else
        {
          if ([(PXMagazineLayoutTileMaker *)self _findNextTileWithInputs:v38 atIndex:v43 + 1 baseIndex:v39 coordinator:a6])
          {
            goto LABEL_29;
          }

          v32 = self->_tileGrid;
          v44 = v26;
          v45 = v25;
          v46 = v27;
          v47 = v28;
          [(PXMagazineGrid *)v32 clearArea:&v44];
          [v23 removeLastRect];
          if ([a6 stop])
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
    if (v43 || ![a6 currentLayoutsCount])
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

- (id)_generateLastTilesWithInputs:(id)a3 baseIndex:(unint64_t)a4 returnFallback:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  self->_startLastPadding = 1;
  v9 = [[PXMagazineLayoutCoordinator alloc] initWithPaddingInputs:v8 tileAspectRatio:0 stopIfAnyGoodLayout:self->_tileAspectRatio];
  if ([(PXMagazineLayoutTileMaker *)self _findNextTileWithInputs:v8 atIndex:0 baseIndex:a4 coordinator:v9])
  {
    goto LABEL_4;
  }

  [objc_opt_class() printInputs:v8];
  if (v5)
  {
    v10 = [[PXMagazineLayoutCoordinator alloc] initWithPaddingInputs:v8 tileAspectRatio:1 stopIfAnyGoodLayout:self->_tileAspectRatio];

    [(PXMagazineLayoutTileMaker *)self _findNextTileWithInputs:v8 atIndex:0 baseIndex:a4 coordinator:v10];
    v9 = v10;
LABEL_4:
    v11 = [(PXMagazineLayoutCoordinator *)v9 currentBestLayout];
    goto LABEL_6;
  }

  v11 = 0;
LABEL_6:

  return v11;
}

- (BOOL)_generateTilesWithInputs:(id)a3 atIndex:(unint64_t)a4 forMaxY:(unint64_t)a5 reserveNumberForPadding:(unint64_t)a6 outArray:(id)a7
{
  v54 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v45 = a7;
  v51 = 0;
  v52 = 0;
  v50 = 0;
  v12 = [v11 objectAtIndexedSubscript:a4];
  [(PXMagazineLayoutTileMaker *)self _aspectRatioOfInput:v12];
  v14 = v13;
  v43 = a4;
  v15 = self->_normalizedWeights[a4];
  v40 = v11;
  v16 = [v11 count];
  v44 = self;
  v17 = 0;
  if (![(PXMagazineGrid *)self->_tileGrid nextEmptyTileX:&v52 Y:&v51 maxWidth:&v50]|| v51 > a5)
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
  v42 = a5;
  v37 = v18;
  while (1)
  {
    v24 = *v22;
    if ([v24 height] == 2)
    {
      v25 = [v24 width];
      v26 = a5 != -1 && v25 == 2;
      v27 = v26;
      if (v27 && v41)
      {
        goto LABEL_22;
      }
    }

    v28 = v51;
    if ([v24 height] + v28 > a5)
    {
      goto LABEL_22;
    }

    v30 = v51;
    v29 = v52;
    v31 = [v24 width];
    v32 = [v24 height];
    tileGrid = v44->_tileGrid;
    v46 = v29;
    v47 = v30;
    v48 = v31;
    v49 = v32;
    [(PXMagazineGrid *)tileGrid setTileIdentifier:v43 forArea:&v46];
    v46 = v29;
    v47 = v30;
    v48 = v31;
    v49 = v32;
    [v45 addRect:&v46];
    if ([(PXMagazineGrid *)v44->_tileGrid isPerfectEnding])
    {
      break;
    }

    if (a6 + v43 == v39)
    {
      if (v42 == -1)
      {
        break;
      }

      goto LABEL_21;
    }

    if ([(PXMagazineLayoutTileMaker *)v44 _generateTilesWithInputs:v40 atIndex:v43 + 1 forMaxY:v42 reserveNumberForPadding:a6 outArray:v45])
    {
      break;
    }

LABEL_21:
    v34 = v44->_tileGrid;
    v46 = v29;
    v47 = v30;
    v48 = v31;
    v49 = v32;
    [(PXMagazineGrid *)v34 clearArea:&v46];
    [v45 removeLastRect];
    a5 = v42;
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

- (void)_findNextChunkWithInputs:(id)a3 fromIndex:(unint64_t)a4 outArray:(id)a5
{
  v12 = a3;
  v8 = a5;
  v9 = +[PXPhotosDetailsSettings sharedInstance];
  v10 = [v9 editorialLayoutTargetRowsForChunk];

  v11 = [(PXMagazineGrid *)self->_tileGrid currentRowsUsed];
  if (![(PXMagazineLayoutTileMaker *)self _generateTilesWithInputs:v12 atIndex:a4 forMaxY:v11 + 2 * v10 reserveNumberForPadding:0 outArray:v8]&& ![(PXMagazineLayoutTileMaker *)self _generateTilesWithInputs:v12 atIndex:a4 forMaxY:v11 + 6 * v10 reserveNumberForPadding:0 outArray:v8])
  {
    [(PXMagazineLayoutTileMaker *)self _generateTilesWithInputs:v12 atIndex:a4 forMaxY:-1 reserveNumberForPadding:[(PXMagazineLayoutTileMaker *)self _numberOfInputsForLastPadding] outArray:v8];
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

- (id)_generateTilesWithInputs:(id)a3
{
  v4 = a3;
  v5 = [v4 count];
  v6 = [[PXMagazineRectArray alloc] initWithSize:v5];
  v7 = [(PXMagazineLayoutTileMaker *)self _numberOfInputsForLastPadding];
  v8 = 0;
  while (v8 < v5)
  {
    v9 = v8 + v7;
    if (v8 + v7 < v5)
    {
      [(PXMagazineLayoutTileMaker *)self _findNextChunkWithInputs:v4 fromIndex:v8 outArray:v6];
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

      v9 = v8 + v7;
      if (v11)
      {
        goto LABEL_9;
      }
    }

    if (v9 >= v5)
    {
LABEL_9:
      v12 = [v4 subarrayWithRange:{v8, v5 - v8}];
      if (v8)
      {
        v13 = v5 - v8 >= v7;
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
        if (v7 >= v5)
        {
          v19 = v5;
        }

        else
        {
          v19 = v7;
        }

        v20 = v5 - v19;
        v18 = [v4 subarrayWithRange:v5 - v19];

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

- (void)_resetWithNumberOfAssets:(unint64_t)a3
{
  v5 = [[PXMagazineGrid alloc] initWithNumberOfColumns:self->_numberOfColumns size:a3];
  tileGrid = self->_tileGrid;
  self->_tileGrid = v5;

  v7 = [[PXMagazineRectArray alloc] initWithSize:a3];
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

- (void)_setRandomSeedWithInputs:(id)a3
{
  v6 = a3;
  if ([v6 count])
  {
    v3 = [v6 objectAtIndexedSubscript:0];
    [v3 size];
    v5 = v4;

    srand(v5);
  }
}

- (double)_normalizeWeightsByInputs:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 count])
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

- (void)_getFrames:(CGRect *)a3 magazineRects:(PXMagazineRect *)a4 withInputs:(id)a5
{
  v9 = a5;
  if (self->_normalizedWeights)
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"PXMagazineLayoutTileMaker.m" lineNumber:162 description:@"normalizedWeights Memory leak."];
  }

  -[PXMagazineLayoutTileMaker _resetWithNumberOfAssets:](self, "_resetWithNumberOfAssets:", [v9 count]);
  [(PXMagazineLayoutTileMaker *)self _setRandomSeedWithInputs:v9];
  v10 = [(PXMagazineLayoutTileMaker *)self _normalizeWeightsByInputs:v9];
  self->_normalizedWeights = v10;
  if (!v10)
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"PXMagazineLayoutTileMaker.m" lineNumber:166 description:@"Allocate normalizedWeights memory faill."];
  }

  v11 = [(PXMagazineLayoutTileMaker *)self _generateTilesWithInputs:v9];
  cachedTileRects = self->_cachedTileRects;
  self->_cachedTileRects = v11;

  v13 = [v9 count];
  if (v13 != [(PXMagazineRectArray *)self->_cachedTileRects count])
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"PXMagazineLayoutTileMaker.m" lineNumber:170 description:@"The number of cached tiles cannot be != to the number of inputs"];
  }

  if (a3 | a4)
  {
    if ([(PXMagazineRectArray *)self->_cachedTileRects count])
    {
      v14 = 0;
      p_size = &a3->size;
      MaxY = 0.0;
      v17 = a4;
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
        if (a3)
        {
          p_size[-1].width = v19;
          p_size[-1].height = v20;
          p_size->width = v21;
          p_size->height = v22;
        }

        if (a4)
        {
          v27 = v35;
          v17->var0 = v34;
          v17->var1 = v27;
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
        ++v17;
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

- (void)setInterTileSpacing:(double)a3
{
  if (self->_interTileSpacing != a3)
  {
    self->_interTileSpacing = a3;
    [(PXMagazineLayoutTileMaker *)self _updateDimensionInfos];
  }
}

- (double)_aspectRatioOfInput:(id)a3
{
  [a3 size];
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

- (PXMagazineLayoutTileMaker)initWithReferenceSize:(CGSize)a3 numberOfColumns:(unint64_t)a4
{
  height = a3.height;
  width = a3.width;
  v13.receiver = self;
  v13.super_class = PXMagazineLayoutTileMaker;
  v7 = [(PXMagazineLayoutTileMaker *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v7->_referenceSize.width = width;
    v7->_referenceSize.height = height;
    v9 = 36;
    if (a4 < 5)
    {
      v9 = 24;
    }

    v7->_interTileSpacing = 2.0;
    v7->_maxTilesInFrame = v9;
    v7->_numberOfColumns = 2 * a4;
    v7->_tileAspectRatio = 1.33333333;
    v7->_maxFrameAspectRatio = a4 * 1.33333333;
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