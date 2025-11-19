@interface PXNewMagazineLayoutTileMaker
- (BOOL)_findNextTileWithInputs:(id)a3 atIndex:(unint64_t)a4 baseIndex:(unint64_t)a5 coordinator:(id)a6;
- (BOOL)_generateNextChunkWithInputs:(id)a3 fromIndex:(unint64_t)a4 maxY:(unint64_t)a5 reserveNumberForPadding:(unint64_t)a6 context:(id)a7;
- (BOOL)_isSameRectsArray:(id)a3 otherArray:(id)a4;
- (BOOL)convertRects:(PXMagazineRect *)a3 outFrames:(CGRect *)a4 count:(unint64_t)a5 forReferenceSize:(CGSize)a6;
- (CGRect)_frameFromTileFrame:(PXMagazineRect *)a3;
- (CGSize)defaultTileSize;
- (CGSize)referenceSize;
- (PXNewMagazineLayoutTileMaker)initWithReferenceSize:(CGSize)a3 numberOfColumns:(unint64_t)a4;
- (double)_normalizeWeightsByInputs:(id)a3;
- (id)_generateLastTilesWithInputs:(id)a3 baseIndex:(unint64_t)a4 returnFallback:(BOOL)a5;
- (id)_generateTilesWithInputs:(id)a3;
- (id)_getAllFramesInOrder;
- (id)description;
- (int64_t)_availableFrames:(id *)a3 maxReturnCount:(unint64_t)a4 forAspectRatio:(double)a5 weight:(double)a6 maxWidth:(unint64_t)a7;
- (unint64_t)_numberOfInputsForLastPadding;
- (void)_findNextChunkWithInputs:(id)a3 fromIndex:(unint64_t)a4 context:(id)a5;
- (void)_getFrames:(CGRect *)a3 magazineRects:(PXMagazineRect *)a4 withInputs:(id)a5;
- (void)_resetWithNumberOfAssets:(unint64_t)a3;
- (void)_setRandomSeedWithInputs:(id)a3;
- (void)_updateDimensionInfos;
- (void)dealloc;
- (void)setInterTileSpacing:(double)a3;
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

- (int64_t)_availableFrames:(id *)a3 maxReturnCount:(unint64_t)a4 forAspectRatio:(double)a5 weight:(double)a6 maxWidth:(unint64_t)a7
{
  v99 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self->_sharedTempArray removeAllObjects];
  v11 = self->_sharedTempArray;
  if (1.0 / a5 <= a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = 1.0 / a5;
  }

  v13 = [(PXNewMagazineLayoutTileMaker *)self _getAllFramesInOrder];
  if (![v13 count])
  {
    v75 = [MEMORY[0x1E696AAA8] currentHandler];
    [v75 handleFailureInMethod:a2 object:self file:@"PXNewMagazineLayoutTileMaker.m" lineNumber:706 description:@"We should never have no frames"];
  }

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v14 = v13;
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
        v26 = [v19 width];
        v27 = [v19 height];
        if (v26 <= a7 && v27 * v26 <= self->_maxTilesInFrame && (self->_startLastPadding || ((v26 | v27) & 1) == 0))
        {
          v28 = v12 + -1.0;
          v29 = a5 <= 0.402;
          if (v21 >= 0.801)
          {
            v29 = 0;
          }

          v30 = v21 < 0.8 || v12 + -1.0 > 0.15;
          v31 = v30 || v21 > 1.334;
          if (!v31 || v29)
          {
            goto LABEL_35;
          }

          if (v23 > a5)
          {
            goto LABEL_44;
          }

          v28 = 0.9;
          if (a5 >= 0.9 && v26 == 2 && v27 == 2)
          {
            goto LABEL_35;
          }

          v32 = v26 == 2 && a5 < 0.9;
          if (v32 && v27 == 4)
          {
            goto LABEL_35;
          }

          if (v25 >= a5)
          {
            v28 = 0.9;
            v33 = v21 < 0.9;
            if (a5 < 0.9)
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
  if (a5 <= 0.402 || a5 >= 2.3)
  {
    v36 = a3;
  }

  else
  {
    v36 = a3;
    if (a6 < 0.66)
    {
      v35 = [(PXNewMagazineLayoutTileMaker *)self numberOfColumns:0.66]>= 4 && rand() % 10 > 4;
    }
  }

  v90[0] = MEMORY[0x1E69E9820];
  v90[1] = 3221225472;
  v90[2] = __95__PXNewMagazineLayoutTileMaker__availableFrames_maxReturnCount_forAspectRatio_weight_maxWidth___block_invoke;
  v90[3] = &__block_descriptor_41_e51_q24__0__PXNewMagazineFrame_8__PXNewMagazineFrame_16l;
  *&v90[4] = a5;
  v91 = v35;
  [(NSMutableArray *)v11 sortUsingComparator:v90];
  v37 = +[PXPhotosDetailsSettings sharedInstance];
  v38 = [v37 editorialLayoutAvoidSmallestTile];

  v39 = [(PXNewMagazineLayoutTileMaker *)self numberOfColumns];
  if (v38)
  {
    v40 = v39;
    if ([(NSMutableArray *)v11 count]>= 3)
    {
      v41 = 2 * v40;
      v42 = [MEMORY[0x1E695DF70] array];
      v43 = [(NSMutableArray *)v11 firstObject];
      v44 = v43;
      if (a5 < 2.3)
      {
        v45 = v43;
        if ([v43 width] != v41 || v35 && rand() % 100 < 6)
        {
          v45 = 0;
        }

        else
        {
          [(NSMutableArray *)v11 removeObjectAtIndex:0];
          v44 = [(NSMutableArray *)v11 firstObject];
        }

        if (v41 >= 7 && v44)
        {
          v79 = v41;
          v80 = v45;
          v46 = v42;
          v47 = 0;
          v48 = v41 - 2;
          v49 = 1;
          while ([v44 width] == v48)
          {
            if (rand() % 100 < 51)
            {
              ++v47;
            }

            else
            {
              [(NSMutableArray *)v11 removeObjectAtIndex:v47];
              [v46 addObject:v44];
            }

            if (v47 >= [(NSMutableArray *)v11 count])
            {

              v44 = 0;
              break;
            }

            v50 = [(NSMutableArray *)v11 objectAtIndex:v47];

            v51 = v49 & (v50 != 0);
            v44 = v50;
            v49 = 0;
            if ((v51 & 1) == 0)
            {
              v44 = v50;
              break;
            }
          }

          v36 = a3;
          v42 = v46;
          v41 = v79;
          v45 = v80;
        }
      }

      else
      {
        v45 = 0;
      }

      if ([v44 width] == 2 && (objc_msgSend(v44, "height") == 2 || objc_msgSend(v44, "height") == 4) && (v41 >= 7 && objc_msgSend(v44, "height") == 4 || rand() % 100 <= 89))
      {
        [(NSMutableArray *)v11 removeObjectAtIndex:0];
        v52 = v44;
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

      v67 = [v42 count];
      if (!v52 && !v67)
      {
        goto LABEL_109;
      }

LABEL_81:
      if ([(NSMutableArray *)v11 count]< 2)
      {
        v53 = [(NSMutableArray *)v11 count];
        if (!v42)
        {
          goto LABEL_93;
        }
      }

      else
      {
        [(PXNewMagazineLayoutTileMaker *)self numberOfColumns];
        v53 = 2;
        if (!v42)
        {
          goto LABEL_93;
        }
      }

      v81 = v45;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v54 = v42;
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

      v36 = a3;
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

        v44 = v62;
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

      v36[v71++] = *(*(&v82 + 1) + 8 * v73);
      if (v71 >= a4)
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
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = self->_allFrames;
    self->_allFrames = v4;

    v6 = [(PXNewMagazineLayoutTileMaker *)self numberOfColumns];
    tileAspectRatio = self->_tileAspectRatio;
    v8 = [(PXNewMagazineLayoutTileMaker *)self numberOfColumns];
    numberOfColumns = self->_numberOfColumns;
    if (numberOfColumns >= 2)
    {
      v10 = tileAspectRatio * v6;
      v11 = roundf(v10);
      v12 = (v11 + v11);
      v13 = 2 * v8 * v12;
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

    v37 = [(NSMutableArray *)self->_allFrames lastObject];
    [v37 aspectRatio];
    v39 = v38;

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v40 = [(NSMutableArray *)self->_allFrames reverseObjectEnumerator];
    v41 = [v40 countByEnumeratingWithState:&v49 objects:v57 count:16];
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
          objc_enumerationMutation(v40);
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
          v42 = [v40 countByEnumeratingWithState:&v49 objects:v57 count:16];
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
  v7 = self;
  v8 = a5;
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = 0;
  v9 = 0;
  [a3 objectAtIndexedSubscript:a4];
  [objc_claimAutoreleasedReturnValue() size];
  PXSizeGetAspectRatio();
}

- (id)_generateLastTilesWithInputs:(id)a3 baseIndex:(unint64_t)a4 returnFallback:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  self->_startLastPadding = 1;
  v9 = [PXNewMagazineLayoutCoordinator alloc];
  v10 = -[PXNewMagazineGrid initWithNumberOfColumns:size:]([PXNewMagazineGrid alloc], "initWithNumberOfColumns:size:", self->_numberOfColumns, [v8 count]);
  v11 = [(PXNewMagazineLayoutCoordinator *)v9 initWithPaddingInputs:v8 tileGrid:v10 tileAspectRatio:0 stopIfAnyGoodLayout:self->_tileAspectRatio];

  if ([(PXNewMagazineLayoutTileMaker *)self _findNextTileWithInputs:v8 atIndex:0 baseIndex:a4 coordinator:v11])
  {
    goto LABEL_4;
  }

  [objc_opt_class() printInputs:v8];
  if (v5)
  {
    v12 = [PXNewMagazineLayoutCoordinator alloc];
    v13 = -[PXNewMagazineGrid initWithNumberOfColumns:size:]([PXNewMagazineGrid alloc], "initWithNumberOfColumns:size:", self->_numberOfColumns, [v8 count]);
    v14 = [(PXNewMagazineLayoutCoordinator *)v12 initWithPaddingInputs:v8 tileGrid:v13 tileAspectRatio:1 stopIfAnyGoodLayout:self->_tileAspectRatio];

    [(PXNewMagazineLayoutTileMaker *)self _findNextTileWithInputs:v8 atIndex:0 baseIndex:a4 coordinator:v14];
    v11 = v14;
LABEL_4:
    v15 = [(PXNewMagazineLayoutCoordinator *)v11 currentBestLayout];
    goto LABEL_6;
  }

  v15 = 0;
LABEL_6:

  return v15;
}

- (BOOL)_generateNextChunkWithInputs:(id)a3 fromIndex:(unint64_t)a4 maxY:(unint64_t)a5 reserveNumberForPadding:(unint64_t)a6 context:(id)a7
{
  v15 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a7;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  [v9 objectAtIndexedSubscript:a4];
  [objc_claimAutoreleasedReturnValue() size];
  PXSizeGetAspectRatio();
}

- (void)_findNextChunkWithInputs:(id)a3 fromIndex:(unint64_t)a4 context:(id)a5
{
  v14 = a3;
  v8 = a5;
  v9 = +[PXPhotosDetailsSettings sharedInstance];
  v10 = [v9 editorialLayoutTargetRowsForChunk];
  if ([(PXNewMagazineLayoutTileMaker *)self numberOfColumns]<= 3)
  {
    v11 = v10;
  }

  else
  {
    v11 = v10 + 1;
  }

  if (![(PXNewMagazineLayoutTileMaker *)self _generateNextChunkWithInputs:v14 fromIndex:a4 maxY:2 * v11 reserveNumberForPadding:0 context:v8])
  {
    [v8 setFallbackRectArray:0];
    if (![(PXNewMagazineLayoutTileMaker *)self _generateNextChunkWithInputs:v14 fromIndex:a4 maxY:4 * v11 reserveNumberForPadding:0 context:v8])
    {
      v12 = [(PXNewMagazineLayoutTileMaker *)self _numberOfInputsForLastPadding];
      [v8 setFallbackRectArray:0];
      if (![(PXNewMagazineLayoutTileMaker *)self _generateNextChunkWithInputs:v14 fromIndex:a4 maxY:-1 reserveNumberForPadding:v12 context:v8])
      {
        [v8 setFallbackRectArray:0];
        v13 = [v8 outRectArray];
        [v13 reset];
      }
    }
  }
}

- (id)_generateTilesWithInputs:(id)a3
{
  v33 = a3;
  v4 = [v33 count];
  v5 = [PXNewMagazineRectArray alloc];
  v6 = [[PXNewMagazineGrid alloc] initWithNumberOfColumns:self->_numberOfColumns size:50];
  v7 = [(PXNewMagazineRectArray *)v5 initWithSize:50 tileGrid:v6];

  v8 = [MEMORY[0x1E695DF70] array];
  v9 = objc_opt_new();
  [v9 setGeneratedChunks:v8];
  [v9 setOutRectArray:v7];
  [v9 setFallbackRectArray:0];
  v32 = [(PXNewMagazineLayoutTileMaker *)self _numberOfInputsForLastPadding];
  if (v4)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    maxTilesInFrame = self->_maxTilesInFrame;
    while (1)
    {
      v13 = [v9 outRectArray];
      [v13 reset];

      [v9 setFallbackRectArray:0];
      [(PXNewMagazineLayoutTileMaker *)self _findNextChunkWithInputs:v33 fromIndex:v12 context:v9];
      if (![(PXNewMagazineRectArray *)v7 count])
      {
        v14 = [v9 fallbackRectArray];

        if (!v14)
        {
          break;
        }
      }

      if (v11)
      {
        if (![(PXNewMagazineRectArray *)v7 count])
        {
          v15 = v4 - v12;
          if (v4 - v12 < v32)
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
      [v8 addObject:v17];
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
    v18 = [v33 subarrayWithRange:{v12, v15}];
    if (v12)
    {
      v19 = v15 >= v32;
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
      v23 = [[PXNewMagazineChunk alloc] initWithStartY:v10 startIndexOfInputs:v12 rectsArray:v21];
      [v8 addObject:v23];
    }

    else
    {
      if (v20)
      {
        goto LABEL_36;
      }

      [v8 count];
      while (1)
      {
        v24 = v18;
        v23 = [v8 lastObject];
        [v8 removeLastObject];
        v25 = [(PXNewMagazineChunk *)v23 startIndexOfInputs];
        v18 = [v33 subarrayWithRange:{v25, v4 - v25}];

        v26 = !v25 || v4 - v25 >= v32;
        v27 = v26;
        v28 = [(PXNewMagazineLayoutTileMaker *)self _generateLastTilesWithInputs:v18 baseIndex:v25 returnFallback:v27];
        if (v28)
        {
          break;
        }

        if (!v25)
        {
          goto LABEL_36;
        }
      }

      v22 = v28;
      v30 = [[PXNewMagazineChunk alloc] initWithStartY:[(PXNewMagazineChunk *)v23 startY] startIndexOfInputs:v25 rectsArray:v28];
      [v8 addObject:v30];
    }

LABEL_36:
  }

LABEL_37:

  return v8;
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

- (BOOL)_isSameRectsArray:(id)a3 otherArray:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = ([v5 isEqualToRectArray:v6] & 1) != 0 || objc_msgSend(v5, "count") == 1 && objc_msgSend(v6, "count") == 1;

  return v7;
}

- (void)_resetWithNumberOfAssets:(unint64_t)a3
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

- (void)_getFrames:(CGRect *)a3 magazineRects:(PXMagazineRect *)a4 withInputs:(id)a5
{
  v9 = a5;
  if (self->_normalizedWeights)
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"PXNewMagazineLayoutTileMaker.m" lineNumber:204 description:@"normalizedWeights Memory leak."];
  }

  -[PXNewMagazineLayoutTileMaker _resetWithNumberOfAssets:](self, "_resetWithNumberOfAssets:", [v9 count]);
  [(PXNewMagazineLayoutTileMaker *)self _setRandomSeedWithInputs:v9];
  v10 = [(PXNewMagazineLayoutTileMaker *)self _normalizeWeightsByInputs:v9];
  self->_normalizedWeights = v10;
  if (!v10)
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"PXNewMagazineLayoutTileMaker.m" lineNumber:208 description:@"Allocate normalizedWeights memory faill."];
  }

  self->_isPerfectEnding = 0;
  v11 = [(PXNewMagazineLayoutTileMaker *)self _generateTilesWithInputs:v9];
  if ([v11 count])
  {
    v12 = [v11 lastObject];
    v13 = [v12 rectsArray];
    self->_isPerfectEnding = [v13 isPerfectEnding];
  }

  if (a3 | a4)
  {
    v35 = v9;
    if ([v11 count])
    {
      v14 = 0;
      v15 = 0;
      p_size = &a3->size;
      v33 = v11;
      MaxY = 0.0;
      do
      {
        v34 = v15;
        v17 = [v11 objectAtIndex:{v15, p_size}];
        v18 = [v17 rectsArray];
        if ([v18 count])
        {
          v19 = 0;
          v20 = &a4[v14];
          p_width = &p_size[2 * v14].width;
          do
          {
            v37 = 0;
            v38 = 0;
            if (v18)
            {
              [v18 rectAtIndex:v19];
            }

            v22 = [v17 startY];
            v37.var1 += v22;
            if (a4)
            {
              v23 = v38;
              v20->var0 = v37;
              v20->var1 = v23;
            }

            if (a3)
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

          while (v19 < [v18 count]);
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
    v9 = v35;
  }

  normalizedWeights = self->_normalizedWeights;
  if (normalizedWeights)
  {
    free(normalizedWeights);
    self->_normalizedWeights = 0;
  }
}

- (BOOL)convertRects:(PXMagazineRect *)a3 outFrames:(CGRect *)a4 count:(unint64_t)a5 forReferenceSize:(CGSize)a6
{
  self->_referenceSize = a6;
  [(PXNewMagazineLayoutTileMaker *)self _updateDimensionInfos];
  if (a4)
  {
    if (a5)
    {
      v10 = 0;
      p_size = &a4->size;
      MaxY = 0.0;
      do
      {
        var1 = a3->var1;
        v23[0] = a3->var0;
        v23[1] = var1;
        [(PXNewMagazineLayoutTileMaker *)self _frameFromTileFrame:v23];
        p_size[-1].width = v14;
        p_size[-1].height = v15;
        p_size->width = v16;
        p_size->height = v17;
        if (v10 + self->_numberOfColumns >= a5)
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
        ++a3;
      }

      while (a5 != v10);
    }

    else
    {
      MaxY = 0.0;
    }

    self->_height = MaxY;
  }

  return 1;
}

- (void)setInterTileSpacing:(double)a3
{
  if (self->_interTileSpacing != a3)
  {
    self->_interTileSpacing = a3;
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

- (PXNewMagazineLayoutTileMaker)initWithReferenceSize:(CGSize)a3 numberOfColumns:(unint64_t)a4
{
  height = a3.height;
  width = a3.width;
  v13.receiver = self;
  v13.super_class = PXNewMagazineLayoutTileMaker;
  v7 = [(PXNewMagazineLayoutTileMaker *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v7->_referenceSize.width = width;
    v7->_referenceSize.height = height;
    v9 = 80;
    if (a4 < 5)
    {
      v9 = 48;
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

    v8->_isPerfectEnding = 0;
    [(PXNewMagazineLayoutTileMaker *)v8 _updateDimensionInfos];
  }

  return v8;
}

@end