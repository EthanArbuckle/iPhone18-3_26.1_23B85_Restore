@interface PULayoutSampledSectioning
- (BOOL)hasSomeSampling;
- (PULayoutSampledSectioning)init;
- (PUSimpleIndexPath)_mainRealItemIndexPathForVisualSection:(int64_t)a3 andUnsampledItemIndex:(int64_t)a4;
- (PUSimpleIndexPath)mainRealItemIndexPathForVisualIndexPath:(PUSimpleIndexPath)a3;
- (PUSimpleIndexPath)visualIndexPathForRealIndexPath:(PUSimpleIndexPath)a3 isMainItem:(BOOL *)a4;
- (id)_sectionSamplerForVisualSection:(int64_t)a3;
- (id)visibleUnsampledIndexesForCombinedRealSections:(id)a3;
- (int64_t)__debugUnsampledIndexForRealIndexPath:(PUSimpleIndexPath)a3;
- (int64_t)_unsampledItemIndexForVisualItemIndex:(int64_t)a3 visualSection:(int64_t)a4;
- (int64_t)_visualItemIndexForUnsampledItemIndex:(int64_t)a3 visualSection:(int64_t)a4 isMainItem:(BOOL *)a5;
- (int64_t)mainRealSectionForVisualSection:(int64_t)a3;
- (int64_t)numberOfRealItemsInVisualSection:(int64_t)a3;
- (int64_t)numberOfVisualItemsInVisualSection:(int64_t)a3;
- (int64_t)visualSectionForRealSection:(int64_t)a3;
- (void)_cacheSectioningIfNeeded;
- (void)_discardSamplingCache;
- (void)_discardSectioningCache;
- (void)dealloc;
- (void)enumerateRealMainItemIndexPathsForVisualSection:(int64_t)a3 inVisualItemRange:(_NSRange)a4 usingBlock:(id)a5;
- (void)enumerateRealSectionsForVisualSection:(int64_t)a3 usingBlock:(id)a4;
- (void)invalidateSampling;
- (void)invalidateSections;
- (void)setSupportsSamplingAndSectionGrouping:(BOOL)a3;
@end

@implementation PULayoutSampledSectioning

- (int64_t)__debugUnsampledIndexForRealIndexPath:(PUSimpleIndexPath)a3
{
  if (self->_supportsSamplingAndSectionGrouping)
  {
    a3.var1 += self->_startIndexInVisualSectionForRealSection[a3.var0];
  }

  return a3.var1;
}

- (id)visibleUnsampledIndexesForCombinedRealSections:(id)a3
{
  v4 = a3;
  if (self->_hasSomeSampling)
  {
    [(PULayoutSampledSectioning *)self _cacheSectioningIfNeeded];
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x2020000000;
    v22[3] = 0x7FFFFFFFFFFFFFFFLL;
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x2020000000;
    v21[3] = 0x7FFFFFFFFFFFFFFFLL;
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x2020000000;
    v20 = 1;
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x2020000000;
    v18[3] = 0x7FFFFFFFFFFFFFFFLL;
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x2020000000;
    v17[3] = 0;
    v5 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __76__PULayoutSampledSectioning_visibleUnsampledIndexesForCombinedRealSections___block_invoke;
    v10[3] = &unk_1E7B79000;
    v10[4] = self;
    v12 = v22;
    v13 = v21;
    v14 = v19;
    v15 = v18;
    v6 = v5;
    v11 = v6;
    v16 = v17;
    [v4 enumerateIndexesUsingBlock:v10];
    v7 = v11;
    v8 = v6;

    _Block_object_dispose(v17, 8);
    _Block_object_dispose(v18, 8);
    _Block_object_dispose(v19, 8);
    _Block_object_dispose(v21, 8);
    _Block_object_dispose(v22, 8);
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"%@ has no sampling and shouldn't be used to provide sub-sampling", self}];
    v8 = 0;
  }

  return v8;
}

void *__76__PULayoutSampledSectioning_visibleUnsampledIndexesForCombinedRealSections___block_invoke(void *result, unint64_t a2)
{
  v2 = result[4];
  v3 = *(v2[8] + 8 * a2);
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = result;
    v6 = *(v2[9] + 8 * a2);
    if (v3 != *(*(result[6] + 8) + 24))
    {
      *(*(result[7] + 8) + 24) = *(v2[10] + 8 * v3);
      result = result[4];
      v7 = *(result[13] + 8 * v3);
      if (v7 >= 1 && *(*(v5[7] + 8) + 24) <= v7)
      {
        v8 = 1;
      }

      else
      {
        result = [result visualIndexPathForRealIndexPath:a2 isMainItem:{0, 0}];
        v8 = 0;
        *(*(v5[9] + 8) + 24) = v9;
        *(*(v5[7] + 8) + 24) = v7;
      }

      *(*(v5[8] + 8) + 24) = v8;
      *(*(v5[6] + 8) + 24) = v3;
    }

    if (*(*(v5[8] + 8) + 24))
    {
      result = [v5[5] addIndexesInRange:{*(*(v5[10] + 8) + 24), v6}];
    }

    else
    {
      while (*(*(v5[9] + 8) + 24) < *(*(v5[7] + 8) + 24))
      {
        result = [v5[4] mainRealItemIndexPathForVisualIndexPath:*(*(v5[6] + 8) + 24)];
        if (result > a2)
        {
          break;
        }

        if (result == a2)
        {
          result = [v5[5] addIndex:*(*(v5[10] + 8) + 24) + v10];
        }

        ++*(*(v5[9] + 8) + 24);
      }
    }

    *(*(v5[10] + 8) + 24) += v6;
  }

  return result;
}

- (void)enumerateRealMainItemIndexPathsForVisualSection:(int64_t)a3 inVisualItemRange:(_NSRange)a4 usingBlock:(id)a5
{
  length = a4.length;
  location = a4.location;
  v10 = a5;
  v11 = location + length;
  if (self->_supportsSamplingAndSectionGrouping)
  {
    if (self->_numberOfVisualSections <= a3 || v11 > [(PULayoutSampledSectioning *)self numberOfVisualItemsInVisualSection:a3])
    {
      v38 = [MEMORY[0x1E696AAA8] currentHandler];
      v59.location = location;
      v59.length = length;
      v39 = NSStringFromRange(v59);
      [v38 handleFailureInMethod:a2 object:self file:@"PULayoutSectioning.m" lineNumber:1428 description:{@"Invalid visual item range %@ for visual section %ld containing %ld visual items", v39, a3, -[PULayoutSampledSectioning numberOfVisualItemsInVisualSection:](self, "numberOfVisualItemsInVisualSection:", a3)}];

      if (!length)
      {
        goto LABEL_46;
      }
    }

    else if (!length)
    {
      goto LABEL_46;
    }

    if (self->_hasSomeSampling)
    {
      v12 = self->_maximumNumberOfVisibleItemsForVisualSection[a3];
      v13 = v12 - 1;
      if (v12 >= 1)
      {
        v14 = self->_numberOfRealItemsForVisualSection[a3];
        if (v14 > v12)
        {
          if (self->_sectionSamplers && ([(PULayoutSampledSectioning *)self _sectionSamplerForVisualSection:a3], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v16 = v15;
            v17 = [v15 unsampledIndexForIndex:location];
            v43 = 0;
            v18 = v16;
          }

          else if (v13 <= location)
          {
            v18 = 0;
            v17 = v14 - 1;
            v43 = 1;
          }

          else
          {
            v35 = v13 + v14 * location;
            v18 = 0;
            v43 = 1;
            v17 = v35 / v12;
          }

          goto LABEL_20;
        }

        v18 = 0;
        v12 = 0;
LABEL_19:
        v43 = 1;
        v17 = location;
LABEL_20:
        v21 = [(PULayoutSampledSectioning *)self _mainRealItemIndexPathForVisualSection:a3 andUnsampledItemIndex:v17];
        v58[0] = 0;
        v10[2](v10, location, v21, v22, v58);
        if (length != 1 && (v58[0] & 1) == 0)
        {
          v42 = v18;
          v23 = location + 1;
          v24 = [(NSArray *)self->_realSectionIndexesForVisualSection objectAtIndex:a3];
          v25 = [v24 rangeAtIndex:self->_lastHitRangeIndex];
          v57[0] = 0;
          v57[1] = v57;
          v57[2] = 0x2020000000;
          v57[3] = v25 + v26;
          v55[0] = 0;
          v55[1] = v55;
          v55[2] = 0x2020000000;
          lastHitRealSectionIndex = self->_lastHitRealSectionIndex;
          v56 = self->_startIndexInVisualSectionForRealSection[lastHitRealSectionIndex];
          v54[0] = 0;
          v54[1] = v54;
          v54[2] = 0x2020000000;
          v54[3] = self->_numberOfItemsForRealSection[lastHitRealSectionIndex] + v56;
          v53[0] = 0;
          v53[1] = v53;
          v53[2] = 0x3010000000;
          v53[3] = &unk_1B3DBEC63;
          v53[4] = lastHitRealSectionIndex;
          v53[5] = 0;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __106__PULayoutSampledSectioning_enumerateRealMainItemIndexPathsForVisualSection_inVisualItemRange_usingBlock___block_invoke;
          aBlock[3] = &unk_1E7B78FD8;
          v49 = v54;
          v50 = v57;
          aBlock[4] = self;
          v28 = v24;
          v47 = v28;
          v51 = v55;
          v52 = v53;
          v48 = v10;
          v29 = _Block_copy(aBlock);
          if (v43)
          {
            v30 = v12 - 1;
            if (v12 < 1)
            {
              v45 = 0;
              if (v23 < v11)
              {
                v36 = length - 2;
                do
                {
                  v37 = v36;
                  v29[2](v29, v23, v23, &v45);
                  if (v45)
                  {
                    break;
                  }

                  ++v23;
                  v36 = v37 - 1;
                }

                while (v37);
              }

              v18 = v42;
            }

            else
            {
              v44 = v28;
              v45 = 0;
              if (v23 < v11)
              {
                v31 = v30 + v14 * v23;
                v32 = length - 2;
                do
                {
                  v33 = v32;
                  if (v14 <= v12)
                  {
                    v41 = [MEMORY[0x1E696AAA8] currentHandler];
                    v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger _unsampledIndexForIndex(NSInteger, NSInteger, NSInteger)"}];
                    [v41 handleFailureInFunction:v40 file:@"PULayoutSectioning.m" lineNumber:374 description:@"Invalid use"];
                  }

                  v34 = v14 - 1;
                  if (v30 > v23)
                  {
                    v34 = v31 / v12;
                  }

                  v29[2](v29, v23, v34, &v45);
                  if (v45)
                  {
                    break;
                  }

                  ++v23;
                  v31 += v14;
                  v32 = v33 - 1;
                }

                while (v33);
              }

              v18 = v42;
              v28 = v44;
            }
          }

          else
          {
            [v18 enumerateUnsampledIndexesForSampledIndexInRange:v23 usingBlock:{length - 1, v29}];
          }

          _Block_object_dispose(v53, 8);
          _Block_object_dispose(v54, 8);
          _Block_object_dispose(v55, 8);
          _Block_object_dispose(v57, 8);
        }

        goto LABEL_46;
      }

      v18 = 0;
    }

    else
    {
      v18 = 0;
      v12 = 0;
    }

    v14 = 0;
    goto LABEL_19;
  }

  LOBYTE(v53[0]) = 0;
  if (location < v11)
  {
    v19 = length - 1;
    do
    {
      v20 = v19;
      v10[2](v10, location, a3, location, v53);
      if (v53[0])
      {
        break;
      }

      ++location;
      v19 = v20 - 1;
    }

    while (v20);
  }

LABEL_46:
}

uint64_t __106__PULayoutSampledSectioning_enumerateRealMainItemIndexPathsForVisualSection_inVisualItemRange_usingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(*(a1 + 56) + 8) + 24) <= a3)
  {
    do
    {
      ++*(*(a1 + 32) + 120);
      v5 = *(a1 + 32);
      v6 = v5[15];
      if (v6 >= *(*(*(a1 + 64) + 8) + 24))
      {
        do
        {
          while (1)
          {
            ++v5[17];
            v7 = [*(a1 + 40) rangeAtIndex:*(*(a1 + 32) + 136)];
            if (v8)
            {
              break;
            }

            v5 = *(a1 + 32);
          }

          *(*(*(a1 + 64) + 8) + 24) = v7 + v8;
          v5 = *(a1 + 32);
          v9 = 8 * *(*(*(a1 + 64) + 8) + 24) - 8;
        }

        while (*(v5[9] + v9) + *(v5[11] + v9) <= a3);
        v5[15] = v7;
        v5 = *(a1 + 32);
        v6 = v5[15];
      }

      *(*(*(a1 + 72) + 8) + 24) = *(v5[11] + 8 * v6);
      *(*(*(a1 + 56) + 8) + 24) = *(*(*(a1 + 32) + 72) + 8 * *(*(a1 + 32) + 120)) + *(*(*(a1 + 72) + 8) + 24);
    }

    while (*(*(*(a1 + 56) + 8) + 24) <= a3);
    *(*(*(a1 + 80) + 8) + 32) = *(*(a1 + 32) + 120);
  }

  *(*(*(a1 + 80) + 8) + 40) = a3 - *(*(*(a1 + 72) + 8) + 24);
  v10 = *(*(a1 + 48) + 16);

  return v10();
}

- (void)enumerateRealSectionsForVisualSection:(int64_t)a3 usingBlock:(id)a4
{
  if (self->_supportsSamplingAndSectionGrouping)
  {
    v7 = a4;
    [(PULayoutSampledSectioning *)self _cacheSectioningIfNeeded];
    if (a3 < 0 || self->_numberOfVisualSections <= a3)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"PULayoutSectioning.m" lineNumber:1408 description:{@"Invalid visual section %ld for %ld visual sections", a3, self->_numberOfVisualSections}];
    }

    v11 = [(NSArray *)self->_realSectionIndexesForVisualSection objectAtIndex:a3];
    [v11 enumerateIndexesUsingBlock:v7];
  }

  else
  {
    v8 = *(a4 + 2);
    v9 = a4;
    v8();
  }
}

- (int64_t)visualSectionForRealSection:(int64_t)a3
{
  if (self->_supportsSamplingAndSectionGrouping)
  {
    [(PULayoutSampledSectioning *)self _cacheSectioningIfNeeded];
    if (a3 < 0 || self->_numberOfRealSections <= a3)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:a2 object:self file:@"PULayoutSectioning.m" lineNumber:1394 description:{@"Invalid real section %ld for %ld real sections", a3, self->_numberOfRealSections}];
    }

    return self->_visualSectionForRealSection[a3];
  }

  return a3;
}

- (int64_t)mainRealSectionForVisualSection:(int64_t)a3
{
  if (!self->_supportsSamplingAndSectionGrouping)
  {
    return a3;
  }

  [(PULayoutSampledSectioning *)self _cacheSectioningIfNeeded];
  if (a3 < 0 || self->_numberOfVisualSections <= a3)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PULayoutSectioning.m" lineNumber:1380 description:{@"Invalid visual section %ld for %ld visual sections", a3, self->_numberOfVisualSections}];
  }

  v6 = [(NSArray *)self->_realSectionIndexesForVisualSection objectAtIndex:a3];
  v7 = [v6 firstIndex];

  return v7;
}

- (PUSimpleIndexPath)visualIndexPathForRealIndexPath:(PUSimpleIndexPath)a3 isMainItem:(BOOL *)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  if (self->_supportsSamplingAndSectionGrouping)
  {
    [(PULayoutSampledSectioning *)self _cacheSectioningIfNeeded];
    if (var0 < 0 || var0 >= self->_numberOfRealSections)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"PULayoutSectioning.m" lineNumber:1350 description:{@"Invalid real section index %ld for %ld real sections", var0, self->_numberOfRealSections}];
    }

    if (var1 < 0 || var1 >= self->_numberOfItemsForRealSection[var0])
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:a2 object:self file:@"PULayoutSectioning.m" lineNumber:1351 description:{@"Invalid real item index %ld for real section %ld containing %ld items", var1, var0, self->_numberOfItemsForRealSection[var0]}];
    }

    v9 = self->_visualSectionForRealSection[var0];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      var0 = 0x7FFFFFFFFFFFFFFFLL;
      var1 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      var1 = [(PULayoutSampledSectioning *)self _visualItemIndexForUnsampledItemIndex:self->_startIndexInVisualSectionForRealSection[var0] + var1 visualSection:self->_visualSectionForRealSection[var0] isMainItem:a4];
      var0 = v9;
    }
  }

  else if (a4)
  {
    *a4 = 1;
  }

  v10 = var0;
  v11 = var1;
  result.var1 = v11;
  result.var0 = v10;
  return result;
}

- (PUSimpleIndexPath)mainRealItemIndexPathForVisualIndexPath:(PUSimpleIndexPath)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  if (!self->_supportsSamplingAndSectionGrouping)
  {
    goto LABEL_11;
  }

  [(PULayoutSampledSectioning *)self _cacheSectioningIfNeeded];
  if (var0 < 0 || var0 >= self->_numberOfVisualSections)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PULayoutSectioning.m" lineNumber:1327 description:{@"Invalid visual section %ld for %ld visual sections", var0, self->_numberOfVisualSections}];

    if ((var1 & 0x8000000000000000) == 0)
    {
LABEL_5:
      if (var1 < [(PULayoutSampledSectioning *)self numberOfVisualItemsInVisualSection:var0])
      {
        goto LABEL_6;
      }
    }
  }

  else if ((var1 & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v11 = [MEMORY[0x1E696AAA8] currentHandler];
  [v11 handleFailureInMethod:a2 object:self file:@"PULayoutSectioning.m" lineNumber:1328 description:{@"Invalid visual item %ld for %ld visual items in visual section #%ld", var1, -[PULayoutSampledSectioning numberOfVisualItemsInVisualSection:](self, "numberOfVisualItemsInVisualSection:", var0), var0}];

LABEL_6:
  if (!self->_numberOfRealItemsForVisualSection[var0])
  {
    var0 = 0x7FFFFFFFFFFFFFFFLL;
    var1 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_11:
    v8 = var0;
    v9 = var1;
    goto LABEL_14;
  }

  v7 = [(PULayoutSampledSectioning *)self _unsampledItemIndexForVisualItemIndex:var1 visualSection:var0];

  v8 = [(PULayoutSampledSectioning *)self _mainRealItemIndexPathForVisualSection:var0 andUnsampledItemIndex:v7];
LABEL_14:
  result.var1 = v9;
  result.var0 = v8;
  return result;
}

- (PUSimpleIndexPath)_mainRealItemIndexPathForVisualSection:(int64_t)a3 andUnsampledItemIndex:(int64_t)a4
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0x7FFFFFFFFFFFFFFFLL;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if (self->_lastHitVisualSectionIndex != a3)
  {
    goto LABEL_8;
  }

  lastHitRealSectionIndex = self->_lastHitRealSectionIndex;
  v8 = self->_startIndexInVisualSectionForRealSection[lastHitRealSectionIndex];
  v9 = a4 - v8;
  if (a4 >= v8 && self->_numberOfItemsForRealSection[lastHitRealSectionIndex] + v8 > a4)
  {
    v23 = self->_lastHitRealSectionIndex;
    v19 = a4 - v8;
    if (lastHitRealSectionIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (a4 <= v8)
  {
LABEL_8:
    v10 = 0;
    lastHitRangeIndex = 0;
    goto LABEL_9;
  }

  v10 = lastHitRealSectionIndex + 1;
  lastHitRangeIndex = self->_lastHitRangeIndex;
LABEL_9:
  v12 = [(NSArray *)self->_realSectionIndexesForVisualSection objectAtIndex:a3];
  self->_lastHitRangeIndex = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __90__PULayoutSampledSectioning__mainRealItemIndexPathForVisualSection_andUnsampledItemIndex___block_invoke;
  v15[3] = &unk_1E7B78FB0;
  v15[8] = v10;
  v15[9] = a4;
  v15[4] = self;
  v15[5] = &v20;
  v15[6] = &v16;
  v15[7] = lastHitRangeIndex;
  [v12 enumerateRangesWithOptions:0 usingBlock:v15];
  self->_lastHitRealSectionIndex = v21[3];
  self->_lastHitVisualSectionIndex = a3;

  v9 = v17[3];
  lastHitRealSectionIndex = v21[3];
LABEL_10:
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  v13 = lastHitRealSectionIndex;
  v14 = v9;
  result.var1 = v14;
  result.var0 = v13;
  return result;
}

void *__90__PULayoutSampledSectioning__mainRealItemIndexPathForVisualSection_andUnsampledItemIndex___block_invoke(void *result, unint64_t a2, uint64_t a3, _BYTE *a4)
{
  v4 = result[4];
  if (v4[17] >= result[7])
  {
    v5 = a2 + a3;
    v6 = result[8];
    if ((a2 + a3) > v6)
    {
      v7 = v4[11];
      v8 = v4[9];
      v9 = result[9];
      if (v9 < *(v8 + 8 * v5 - 8) + *(v7 + 8 * v5 - 8))
      {
        if (v6 <= a2)
        {
          v6 = a2;
        }

        if (v6 < v5)
        {
          while (1)
          {
            v10 = *(v7 + 8 * v6);
            if (v9 < *(v8 + 8 * v6) + v10)
            {
              break;
            }

            if (v5 == ++v6)
            {
              goto LABEL_11;
            }
          }

          *(*(result[5] + 8) + 24) = v6;
          *(*(result[6] + 8) + 24) = result[9] - v10;
        }

LABEL_11:
        *a4 = 1;
      }
    }
  }

  if ((*a4 & 1) == 0)
  {
    ++*(result[4] + 136);
  }

  return result;
}

- (int64_t)_unsampledItemIndexForVisualItemIndex:(int64_t)a3 visualSection:(int64_t)a4
{
  v4 = a3;
  if (self->_hasSomeSampling)
  {
    v5 = self->_maximumNumberOfVisibleItemsForVisualSection[a4];
    v6 = v5 - 1;
    if (v5 >= 1)
    {
      v7 = self->_numberOfRealItemsForVisualSection[a4];
      if (v7 > v5)
      {
        if (self->_sectionSamplers)
        {
          v8 = [(PULayoutSampledSectioning *)self _sectionSamplerForVisualSection:a4];
          v4 = [v8 unsampledIndexForIndex:v4];
        }

        else if (v6 <= a3)
        {
          return v7 - 1;
        }

        else
        {
          return (v6 + v7 * a3) / v5;
        }
      }
    }
  }

  return v4;
}

- (int64_t)_visualItemIndexForUnsampledItemIndex:(int64_t)a3 visualSection:(int64_t)a4 isMainItem:(BOOL *)a5
{
  if (a5)
  {
    *a5 = 1;
  }

  if (!self->_hasSomeSampling)
  {
    return a3;
  }

  v7 = self->_maximumNumberOfVisibleItemsForVisualSection[a4];
  v8 = v7 - 1;
  if (v7 < 1)
  {
    return a3;
  }

  v9 = self->_numberOfRealItemsForVisualSection[a4];
  if (v9 <= v7)
  {
    return a3;
  }

  if (self->_sectionSamplers)
  {
    v10 = [(PULayoutSampledSectioning *)self _sectionSamplerForVisualSection:a4];
    v11 = [v10 indexForUnsampledIndex:a3 isMainItem:a5];

    return v11;
  }

  else
  {
    result = v7 * a3 / v9;
    if (a5)
    {
      if (v8 <= result)
      {
        v13 = v9 - 1;
      }

      else
      {
        v13 = (v8 + result * v9) / v7;
      }

      *a5 = v13 == a3;
    }
  }

  return result;
}

- (id)_sectionSamplerForVisualSection:(int64_t)a3
{
  v5 = self->_sectionSamplers[a3];
  if (!v5)
  {
    v6 = self->_maximumNumberOfVisibleItemsForVisualSection[a3];
    v7 = self->_numberOfRealItemsForVisualSection[a3];
    v8 = [(NSArray *)self->_realSectionIndexesForVisualSection objectAtIndexedSubscript:a3];
    v9 = [(PULayoutSectioning *)self->super._baseSectioning visibleUnsampledIndexesForCombinedRealSections:v8];
    v10 = [v9 count];
    if (v10 == v7 || v10 == 0)
    {
      v5 = [[PULayoutSectionSimpleSampler alloc] initWithNumberOfVisibleItems:v6 numberOfRealItems:v7];
LABEL_43:
      objc_storeStrong(&self->_sectionSamplers[a3], v5);

      goto LABEL_44;
    }

    v36 = v8;
    v5 = [[PULayoutSectionListSampler alloc] initWithNumberOfVisibleItems:v6 numberOfRealItems:v7];
    v37 = [(PULayoutSectionSimpleSampler *)v5 visibleItemIndexes];
    v12 = v9;
    v13 = v12;
    if (v6 >= v7)
    {
      v25 = [MEMORY[0x1E696AAA8] currentHandler];
      v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _spreadIndexesInBuffer(NSInteger *, NSInteger, NSInteger, NSIndexSet *__strong)"}];
      [v25 handleFailureInFunction:v26 file:@"PULayoutSectioning.m" lineNumber:409 description:{@"Invalid count for visible indexes buffer (%ld) compared to maximum index (%ld)", v6, v7}];
    }

    v14 = [v13 count];
    if (v14 <= 0)
    {
      v34 = [MEMORY[0x1E696AAA8] currentHandler];
      v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _spreadIndexesInBuffer(NSInteger *, NSInteger, NSInteger, NSIndexSet *__strong)"}];
      [v34 handleFailureInFunction:v27 file:@"PULayoutSectioning.m" lineNumber:412 description:@"Invalid empty hinting from base sectioning"];
    }

    if ([v13 lastIndex] >= v7)
    {
      v35 = [MEMORY[0x1E696AAA8] currentHandler];
      v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _spreadIndexesInBuffer(NSInteger *, NSInteger, NSInteger, NSIndexSet *__strong)"}];
      [v35 handleFailureInFunction:v28 file:@"PULayoutSectioning.m" lineNumber:413 description:{@"Invalid last index for visible indexes hint (%ld) compared to maximum index (%ld)", objc_msgSend(v13, "lastIndex"), v7}];
    }

    if (v6 == v14)
    {
      [v13 getIndexes:v37 maxCount:v6 inIndexRange:0];
LABEL_42:

      v8 = v36;
      goto LABEL_43;
    }

    if (v6 < v14)
    {
      v15 = malloc_type_malloc(8 * v14, 0x100004000313F17uLL);
      [v13 getIndexes:v15 maxCount:v14 inIndexRange:0];
      v38 = MEMORY[0x1E69E9820];
      v39 = 3221225472;
      v40 = ___spreadIndexesInBuffer_block_invoke;
      v41 = &__block_descriptor_48_e11_v24__0q8q16l;
      v42 = v37;
      v43 = v15;
      _iterateBySpreadingIndexes(v6, v14, &v38);
      free(v15);
      goto LABEL_42;
    }

    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v50 = v6 - v14;
    v16 = [v13 containsIndex:0];
    v17 = v16;
    v18 = v48[3];
    if ((v16 & 1) == 0)
    {
      v48[3] = --v18;
    }

    v32 = v7 - 1;
    if (v18 < 1 || (v19 = [v13 containsIndex:?], v18 = v48[3], (v19 & 1) != 0))
    {
      v33 = 0;
      if (v18)
      {
LABEL_24:
        v31 = v14 + (v17 ^ 1u);
        if (v33)
        {
          v20 = v14 + (v17 ^ 1u) + 1;
        }

        else
        {
          v20 = v14 + (v17 ^ 1u);
        }

        v21 = malloc_type_malloc(8 * v20, 0x100004000313F17uLL);
        if (v17)
        {
          v22 = v21;
          [v13 getIndexes:v21 maxCount:v14 inIndexRange:0];
        }

        else
        {
          v22 = v21;
          *v21 = 0;
          [v13 getIndexes:v21 + 1 maxCount:v14 inIndexRange:0];
        }

        if (v33)
        {
          v22[v31] = v32;
        }

        v46[0] = 0;
        v46[1] = v46;
        v46[2] = 0x2020000000;
        v46[3] = 0;
        v38 = MEMORY[0x1E69E9820];
        v39 = 3221225472;
        v40 = ___spreadIndexesInBuffer_block_invoke_2;
        v41 = &unk_1E7B79048;
        v42 = v46;
        v43 = &v47;
        v44 = v22;
        v45 = v37;
        _iterateBySpreadingIndexes(v6, v7, &v38);
        free(v22);
        if (v48[3])
        {
          v29 = [MEMORY[0x1E696AAA8] currentHandler];
          v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _spreadIndexesInBuffer(NSInteger *, NSInteger, NSInteger, NSIndexSet *__strong)"}];
          [v29 handleFailureInFunction:v30 file:@"PULayoutSectioning.m" lineNumber:485 description:{@"Did not properly fill up buffer. We still need %ld indexes", v48[3]}];
        }

        _Block_object_dispose(v46, 8);
LABEL_41:
        _Block_object_dispose(&v47, 8);
        goto LABEL_42;
      }
    }

    else
    {
      v23 = v18 - 1;
      v48[3] = v23;
      v33 = 1;
      if (v23)
      {
        goto LABEL_24;
      }
    }

    if (v17)
    {
      [v13 getIndexes:v37 maxCount:v14 inIndexRange:0];
    }

    else
    {
      *v37 = 0;
      [v13 getIndexes:v37 + 1 maxCount:v14 inIndexRange:0];
    }

    if (v33)
    {
      v37[v6 - 1] = v32;
    }

    goto LABEL_41;
  }

LABEL_44:

  return v5;
}

- (int64_t)numberOfRealItemsInVisualSection:(int64_t)a3
{
  if (self->_supportsSamplingAndSectionGrouping)
  {
    [(PULayoutSampledSectioning *)self _cacheSectioningIfNeeded];
    if (a3 < 0 || self->_numberOfVisualSections <= a3)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:a2 object:self file:@"PULayoutSectioning.m" lineNumber:1110 description:{@"Invalid visual section %ld for %ld visual sections", a3, self->_numberOfVisualSections}];
    }

    return self->_numberOfRealItemsForVisualSection[a3];
  }

  else
  {

    return [(PULayoutSampledSectioning *)self numberOfVisualItemsInVisualSection:?];
  }
}

- (int64_t)numberOfVisualItemsInVisualSection:(int64_t)a3
{
  if (self->_supportsSamplingAndSectionGrouping)
  {
    [(PULayoutSampledSectioning *)self _cacheSectioningIfNeeded];
    if (a3 < 0 || self->_numberOfVisualSections <= a3)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"PULayoutSectioning.m" lineNumber:1088 description:{@"Invalid visual section %ld for %ld visual sections", a3, self->_numberOfVisualSections}];
    }

    result = self->_numberOfRealItemsForVisualSection[a3];
    if (self->_hasSomeSampling)
    {
      v7 = self->_maximumNumberOfVisibleItemsForVisualSection[a3];
      if (result >= v7)
      {
        v8 = self->_maximumNumberOfVisibleItemsForVisualSection[a3];
      }

      else
      {
        v8 = self->_numberOfRealItemsForVisualSection[a3];
      }

      if (v7)
      {
        return v8;
      }
    }
  }

  else
  {
    v9 = [(PULayoutSectioning *)self delegate];
    v10 = [v9 numberOfItemsInRealSection:a3 forSectioning:self];

    return v10;
  }

  return result;
}

- (void)_cacheSectioningIfNeeded
{
  if (self->_sectioningIsValid)
  {
    if (!self->_samplingIsValid)
    {
      self->_hasSomeSampling = 0;
      self->_maximumNumberOfVisibleItemsForVisualSection = malloc_type_malloc(8 * self->_numberOfVisualSections, 0x100004000313F17uLL);
      obj = [(PULayoutSectioning *)self delegate];
      if (self->_numberOfVisualSections >= 1)
      {
        v3 = 0;
        do
        {
          v4 = [obj maximumNumberOfItemsInVisualSection:v3 withNumberOfRealItems:self->_numberOfRealItemsForVisualSection[v3] forSectioning:self];
          self->_maximumNumberOfVisibleItemsForVisualSection[v3] = v4;
          if (v4 >= 1 && self->_numberOfRealItemsForVisualSection[v3] > v4)
          {
            self->_hasSomeSampling = 1;
          }

          ++v3;
        }

        while (v3 < self->_numberOfVisualSections);
      }

      baseSectioning = self->super._baseSectioning;
      if (baseSectioning)
      {
        if ([(PULayoutSectioning *)baseSectioning hasSomeSampling])
        {
          numberOfRealSections = self->_numberOfRealSections;
          if (numberOfRealSections >= 1)
          {
            self->_sectionSamplers = malloc_type_calloc(numberOfRealSections, 8uLL, 0x80040B8603338uLL);
          }
        }
      }

      self->_samplingIsValid = 1;
      self->_lastHitRealSectionIndex = 0x7FFFFFFFFFFFFFFFLL;
      self->_lastHitVisualSectionIndex = 0x7FFFFFFFFFFFFFFFLL;
      self->_lastHitRangeIndex = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v7 = [(PULayoutSectioning *)self delegate];
    v8 = [v7 numberOfRealSectionsForSectioning:self];
    self->_numberOfRealSections = v8;
    self->_numberOfItemsForRealSection = malloc_type_malloc(8 * v8, 0x100004000313F17uLL);
    v9 = self->_numberOfRealSections;
    if (v9 >= 1)
    {
      for (i = 0; i < v9; ++i)
      {
        self->_numberOfItemsForRealSection[i] = [v7 numberOfItemsInRealSection:i forSectioning:self];
        v9 = self->_numberOfRealSections;
      }
    }

    self->_startIndexInVisualSectionForRealSection = malloc_type_malloc(8 * v9, 0x100004000313F17uLL);
    self->_visualSectionForRealSection = malloc_type_calloc(self->_numberOfRealSections, 8uLL, 0x100004000313F17uLL);
    v11 = [v7 numberOfVisualSectionsForSectioning:self];
    obja = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v11];
    self->_hasSomeSampling = 0;
    self->_numberOfRealItemsForVisualSection = malloc_type_malloc(8 * v11, 0x100004000313F17uLL);
    self->_maximumNumberOfVisibleItemsForVisualSection = malloc_type_malloc(8 * v11, 0x100004000313F17uLL);
    v56 = 0;
    v57 = &v56;
    v58 = 0x3032000000;
    v59 = __Block_byref_object_copy__39071;
    v60 = __Block_byref_object_dispose__39072;
    v61 = 0;
    v12 = self->_numberOfRealSections;
    v34 = objc_alloc_init(MEMORY[0x1E696AD50]);
    if (v11 < 1)
    {
      v32 = 0;
    }

    else
    {
      v32 = 0;
      v13 = 0;
      v33 = v11;
      do
      {
        v14 = [v7 realSectionsForVisualSection:v13 forSectioning:self];
        if ([v14 count] && objc_msgSend(v14, "lastIndex") >= self->_numberOfRealSections)
        {
          v15 = [v14 mutableCopy];
          [v15 removeIndexesInRange:{self->_numberOfRealSections, objc_msgSend(v14, "lastIndex") - self->_numberOfRealSections + 1}];
          ++v32;

          v11 = v33;
        }

        else
        {
          v15 = v14;
        }

        v50 = 0;
        v51 = &v50;
        v52 = 0x3032000000;
        v53 = __Block_byref_object_copy__39071;
        v54 = __Block_byref_object_dispose__39072;
        v55 = 0;
        v46 = 0;
        v47 = &v46;
        v48 = 0x2020000000;
        v49 = 0;
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __53__PULayoutSampledSectioning__cacheSectioningIfNeeded__block_invoke;
        v38[3] = &unk_1E7B78F88;
        v16 = v34;
        v39 = v16;
        v42 = &v50;
        v17 = v15;
        v40 = v17;
        v41 = self;
        v44 = &v46;
        v45 = v13;
        v43 = &v56;
        [v17 enumerateIndexesUsingBlock:v38];
        v18 = v51[5];
        if (v18)
        {
          v19 = v18;

          v17 = v19;
          v11 = v33;
        }

        [obja addObject:v17];
        [v16 addIndexes:v17];
        self->_numberOfRealItemsForVisualSection[v13] = v47[3];
        v20 = [v7 maximumNumberOfItemsInVisualSection:v13 withNumberOfRealItems:? forSectioning:?];
        self->_maximumNumberOfVisibleItemsForVisualSection[v13] = v20;
        if (v20 >= 1 && self->_numberOfRealItemsForVisualSection[v13] > v20)
        {
          self->_hasSomeSampling = 1;
        }

        v12 -= [v17 count];

        _Block_object_dispose(&v46, 8);
        _Block_object_dispose(&v50, 8);

        ++v13;
      }

      while (v11 != v13);
    }

    if (v57[5] || v12 || v32)
    {
      v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (v12)
      {
        v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld real section(s) in no visual sections", v12];
        [v21 addObject:v22];
      }

      v23 = v57[5];
      if (v23)
      {
        v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld real section(s) in several visual sections", objc_msgSend(v23, "count")];
        [v21 addObject:v24];
      }

      if (v32)
      {
        v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld visual section(s) with unknown real sections", v32];
        [v21 addObject:v25];
      }

      v26 = [v21 componentsJoinedByString:{@", "}];
      NSLog(&cfstr_FoundHopefully.isa, v26);
    }

    objc_storeStrong(&self->_realSectionIndexesForVisualSection, obja);
    self->_numberOfVisualSections = v11;
    if (v12)
    {
      v27 = [MEMORY[0x1E696AD50] indexSetWithIndexesInRange:{0, self->_numberOfRealSections}];
      if (self->_numberOfVisualSections >= 1)
      {
        v28 = 0;
        do
        {
          v29 = [(NSArray *)self->_realSectionIndexesForVisualSection objectAtIndexedSubscript:v28];
          [v27 removeIndexes:v29];

          ++v28;
        }

        while (v28 < self->_numberOfVisualSections);
      }

      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __53__PULayoutSampledSectioning__cacheSectioningIfNeeded__block_invoke_2;
      v37[3] = &unk_1E7B78F60;
      v37[4] = self;
      [v27 enumerateIndexesUsingBlock:v37];
    }

    v30 = self->super._baseSectioning;
    if (v30)
    {
      if ([(PULayoutSectioning *)v30 hasSomeSampling])
      {
        v31 = self->_numberOfRealSections;
        if (v31 >= 1)
        {
          self->_sectionSamplers = malloc_type_calloc(v31, 8uLL, 0x80040B8603338uLL);
        }
      }
    }

    self->_samplingIsValid = 1;
    self->_sectioningIsValid = 1;
    self->_lastHitRealSectionIndex = 0x7FFFFFFFFFFFFFFFLL;
    self->_lastHitVisualSectionIndex = 0x7FFFFFFFFFFFFFFFLL;
    self->_lastHitRangeIndex = 0x7FFFFFFFFFFFFFFFLL;

    _Block_object_dispose(&v56, 8);
  }
}

uint64_t __53__PULayoutSampledSectioning__cacheSectioningIfNeeded__block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) containsIndex:a2];
  if (result)
  {
    v5 = *(*(*(a1 + 56) + 8) + 40);
    if (!v5)
    {
      v6 = [*(a1 + 40) mutableCopy];
      v7 = *(*(a1 + 56) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v5 = *(*(*(a1 + 56) + 8) + 40);
    }

    [v5 removeIndex:a2];
    v9 = *(*(*(a1 + 64) + 8) + 40);
    if (!v9)
    {
      v10 = objc_alloc_init(MEMORY[0x1E696AD50]);
      v11 = *(*(a1 + 64) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      v9 = *(*(*(a1 + 64) + 8) + 40);
    }

    return [v9 addIndex:a2];
  }

  else
  {
    *(*(*(a1 + 48) + 64) + 8 * a2) = *(a1 + 80);
    *(*(*(a1 + 48) + 88) + 8 * a2) = *(*(*(a1 + 72) + 8) + 24);
    *(*(*(a1 + 72) + 8) + 24) += *(*(*(a1 + 48) + 72) + 8 * a2);
  }

  return result;
}

uint64_t __53__PULayoutSampledSectioning__cacheSectioningIfNeeded__block_invoke_2(uint64_t result, uint64_t a2)
{
  *(*(*(result + 32) + 64) + 8 * a2) = 0x7FFFFFFFFFFFFFFFLL;
  *(*(*(result + 32) + 88) + 8 * a2) = 0x7FFFFFFFFFFFFFFFLL;
  return result;
}

- (void)invalidateSections
{
  [(PULayoutSampledSectioning *)self _discardSectioningCache];
  self->_sectioningIsValid = 0;
  v3.receiver = self;
  v3.super_class = PULayoutSampledSectioning;
  [(PULayoutSectioning *)&v3 invalidateSections];
}

- (BOOL)hasSomeSampling
{
  if (self->_supportsSamplingAndSectionGrouping)
  {
    [(PULayoutSampledSectioning *)self _cacheSectioningIfNeeded];
    return self->_hasSomeSampling;
  }

  else
  {
    return 0;
  }
}

- (void)invalidateSampling
{
  [(PULayoutSampledSectioning *)self _discardSamplingCache];
  self->_samplingIsValid = 0;
  v3.receiver = self;
  v3.super_class = PULayoutSampledSectioning;
  [(PULayoutSectioning *)&v3 invalidateSampling];
}

- (void)dealloc
{
  [(PULayoutSampledSectioning *)self _discardSamplingCache];
  [(PULayoutSampledSectioning *)self _discardSectioningCache];
  v3.receiver = self;
  v3.super_class = PULayoutSampledSectioning;
  [(PULayoutSectioning *)&v3 dealloc];
}

- (void)_discardSectioningCache
{
  numberOfItemsForRealSection = self->_numberOfItemsForRealSection;
  if (numberOfItemsForRealSection)
  {
    free(numberOfItemsForRealSection);
    self->_numberOfItemsForRealSection = 0;
  }

  startIndexInVisualSectionForRealSection = self->_startIndexInVisualSectionForRealSection;
  if (startIndexInVisualSectionForRealSection)
  {
    free(startIndexInVisualSectionForRealSection);
    self->_startIndexInVisualSectionForRealSection = 0;
  }

  visualSectionForRealSection = self->_visualSectionForRealSection;
  if (visualSectionForRealSection)
  {
    free(visualSectionForRealSection);
    self->_visualSectionForRealSection = 0;
  }

  numberOfRealItemsForVisualSection = self->_numberOfRealItemsForVisualSection;
  if (numberOfRealItemsForVisualSection)
  {
    free(numberOfRealItemsForVisualSection);
    self->_numberOfRealItemsForVisualSection = 0;
  }

  realSectionIndexesForVisualSection = self->_realSectionIndexesForVisualSection;
  self->_realSectionIndexesForVisualSection = 0;
}

- (void)_discardSamplingCache
{
  maximumNumberOfVisibleItemsForVisualSection = self->_maximumNumberOfVisibleItemsForVisualSection;
  if (maximumNumberOfVisibleItemsForVisualSection)
  {
    free(maximumNumberOfVisibleItemsForVisualSection);
    self->_maximumNumberOfVisibleItemsForVisualSection = 0;
  }

  sectionSamplers = self->_sectionSamplers;
  if (sectionSamplers)
  {
    if (self->_numberOfVisualSections >= 1)
    {
      v5 = 0;
      do
      {
        v6 = self->_sectionSamplers;
        v7 = v6[v5];
        v6[v5] = 0;

        ++v5;
      }

      while (v5 < self->_numberOfVisualSections);
      sectionSamplers = self->_sectionSamplers;
    }

    free(sectionSamplers);
    self->_sectionSamplers = 0;
  }
}

- (void)setSupportsSamplingAndSectionGrouping:(BOOL)a3
{
  if (self->_supportsSamplingAndSectionGrouping != a3)
  {
    self->_supportsSamplingAndSectionGrouping = a3;
    if (!a3)
    {
      self->_hasSomeSampling = 0;
    }

    [(PULayoutSampledSectioning *)self invalidateSections];
  }
}

- (PULayoutSampledSectioning)init
{
  v3.receiver = self;
  v3.super_class = PULayoutSampledSectioning;
  result = [(PULayoutSampledSectioning *)&v3 init];
  if (result)
  {
    result->_supportsSamplingAndSectionGrouping = 1;
  }

  return result;
}

@end