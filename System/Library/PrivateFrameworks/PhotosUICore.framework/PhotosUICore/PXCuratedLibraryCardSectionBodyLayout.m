@interface PXCuratedLibraryCardSectionBodyLayout
- (CGRect)assetFrame;
- (CGSize)minPlayableSpriteSize;
- (CGSize)minSpriteSizeForPresentationStyle:(unint64_t)a3;
- (PXCuratedLibraryCardSectionBodyLayout)init;
- (PXCuratedLibrarySectionGeometryDescriptor)presentedGeometryDescriptor;
- (PXSimpleIndexPath)sectionIndexPath;
- (id)axContentInfoAtSpriteIndex:(unsigned int)a3;
- (id)axSelectedSpriteIndexes;
- (id)axSpriteIndexes;
- (id)axSpriteIndexesInRect:(CGRect)a3;
- (id)axVisibleSpriteIndexes;
- (id)displayAssetFetchResultForSpritesInRange:(_PXGSpriteIndexRange)a3 inLayout:(id)a4;
- (id)objectReferenceForSpriteIndex:(unsigned int)a3;
- (unsigned)axSpriteIndexClosestToSpriteIndex:(unsigned int)a3 inDirection:(unint64_t)a4;
- (void)_updateAXSprites;
- (void)_updateKeyAssetFetchResultWithDataSource:(id)a3 section:(int64_t)a4;
- (void)_updateSprites;
- (void)applySpriteChangeDetails:(id)a3 countAfterChanges:(unsigned int)a4 initialState:(id)a5 modifyState:(id)a6;
- (void)displayScaleDidChange;
- (void)enumerateVisibleAnchoringSpriteIndexesUsingBlock:(id)a3;
- (void)referenceSizeDidChange;
- (void)setCurrentSkimmingIndex:(int64_t)a3;
- (void)setDataSource:(id)a3 section:(int64_t)a4;
- (void)setIsSelected:(BOOL)a3;
- (void)setIsSkimming:(BOOL)a3;
- (void)setMaxSkimmingIndex:(int64_t)a3;
- (void)setSkimmingIndexPaths:(id)a3;
- (void)setSpec:(id)a3;
- (void)update;
@end

@implementation PXCuratedLibraryCardSectionBodyLayout

- (PXSimpleIndexPath)sectionIndexPath
{
  v3 = *&self[32].section;
  *&retstr->dataSourceIdentifier = *&self[31].subitem;
  *&retstr->item = v3;
  return self;
}

- (id)axSpriteIndexesInRect:(CGRect)a3
{
  v4 = 0u;
  v5 = 0u;
  [(PXCuratedLibraryCardSectionBodyLayout *)self geometryForSpriteAtIndex:self->_assetSpriteIndexRange.location, 0, 0, 0, 0];
  PXRectWithCenterAndSize();
}

- (unsigned)axSpriteIndexClosestToSpriteIndex:(unsigned int)a3 inDirection:(unint64_t)a4
{
  if (self->_assetSpriteIndexRange.location != a3)
  {
    return -1;
  }

  if (a4 != 6)
  {
    if (a4 == 5)
    {
      v4 = 1001;
      v5 = 1001;
      goto LABEL_7;
    }

    return -1;
  }

  v4 = 1000;
  v5 = 1000;
LABEL_7:
  if ([(NSMutableIndexSet *)self->_axSpriteIndexes containsIndex:v4])
  {
    return v5;
  }

  else
  {
    return -1;
  }
}

- (id)axContentInfoAtSpriteIndex:(unsigned int)a3
{
  if (self->_assetSpriteIndexRange.location == a3)
  {
    v7.receiver = self;
    v7.super_class = PXCuratedLibraryCardSectionBodyLayout;
    v4 = [(PXCuratedLibraryCardSectionBodyLayout *)&v7 axContentInfoAtSpriteIndex:*&a3];
  }

  else
  {
    v5 = [(PXCuratedLibraryCardSectionBodyLayout *)self displayAssetFetchResultForSpritesInRange:a3 | 0x100000000 inLayout:self];
    if ([v5 count] >= 1)
    {
      [(PXCuratedLibraryCardSectionBodyLayout *)self geometryForSpriteAtIndex:self->_assetSpriteIndexRange.location];
      PXRectWithCenterAndSize();
    }

    v4 = 0;
  }

  return v4;
}

- (id)axSelectedSpriteIndexes
{
  if ([(PXCuratedLibraryCardSectionBodyLayout *)self isSelected])
  {
    v3 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndex:self->_assetSpriteIndexRange.location];
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AC90]);
  }

  return v3;
}

- (id)axSpriteIndexes
{
  v2 = [(NSMutableIndexSet *)self->_axSpriteIndexes copy];

  return v2;
}

- (id)displayAssetFetchResultForSpritesInRange:(_PXGSpriteIndexRange)a3 inLayout:(id)a4
{
  location = a3.location;
  v6 = a4;
  if (v6 != self || (location & 0xFFFFFFFE) != 0x3E8)
  {
LABEL_18:
    v16 = [(PXCuratedLibraryCardSectionBodyLayout *)self keyAssetsFetchResult];
    goto LABEL_19;
  }

  v7 = [(PXCuratedLibraryCardSectionBodyLayout *)self skimmingIndexPaths];
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v30[3] = [(PXCuratedLibraryCardSectionBodyLayout *)self currentSkimmingIndex];
  v24 = 0;
  v25 = &v24;
  v26 = 0x4010000000;
  v27 = &unk_1A561E057;
  v8 = *(off_1E7722228 + 1);
  v28 = *off_1E7722228;
  v29 = v8;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __91__PXCuratedLibraryCardSectionBodyLayout_displayAssetFetchResultForSpritesInRange_inLayout___block_invoke;
  v23[3] = &unk_1E7733060;
  v23[4] = v30;
  v23[5] = &v24;
  [v7 enumerateSectionIndexPathsUsingBlock:v23];
  v21 = *(off_1E7722228 + 8);
  v22 = *(off_1E7722228 + 3);
  v9 = (v25 + 4);
  v10 = *off_1E7721F68;
  if (v25[4] != *off_1E7721F68)
  {
    if (location == 1000)
    {
      if (v7)
      {
        v12 = *(v25 + 3);
        v18 = *v9;
        v19 = v12;
        [v7 indexPathLessThanIndexPath:&v18];
LABEL_10:
        v11 = *&v20[0];
LABEL_12:
        v21 = *(v20 + 8);
        v22 = *(&v20[1] + 1);
        goto LABEL_13;
      }
    }

    else if (v7)
    {
      v13 = *(v25 + 3);
      v18 = *v9;
      v19 = v13;
      [v7 indexPathGreaterThanIndexPath:&v18];
      goto LABEL_10;
    }

    v11 = 0;
    memset(v20, 0, sizeof(v20));
    goto LABEL_12;
  }

  v11 = *off_1E7722228;
LABEL_13:
  v14 = [(PXCuratedLibraryCardSectionBodyLayout *)self dataSource];
  v15 = v14;
  if (v11 == v10 || [v14 identifier] != v11)
  {
    v16 = 0;
  }

  else
  {
    *&v20[0] = v11;
    *(v20 + 8) = v21;
    *(&v20[1] + 1) = v22;
    v16 = [v15 keyAssetsInSectionIndexPath:v20];
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(v30, 8);

  if (!v16)
  {
    goto LABEL_18;
  }

LABEL_19:

  return v16;
}

uint64_t __91__PXCuratedLibraryCardSectionBodyLayout_displayAssetFetchResultForSpritesInRange_inLayout___block_invoke(uint64_t result, _OWORD *a2, _BYTE *a3)
{
  v3 = *(*(result + 32) + 8);
  v4 = *(v3 + 24);
  if (!v4)
  {
    v5 = *(*(result + 40) + 8);
    v6 = a2[1];
    *(v5 + 32) = *a2;
    *(v5 + 48) = v6;
    *a3 = 1;
    v3 = *(*(result + 32) + 8);
    v4 = *(v3 + 24);
  }

  *(v3 + 24) = v4 - 1;
  return result;
}

- (CGSize)minSpriteSizeForPresentationStyle:(unint64_t)a3
{
  if (a3 == 16 || a3 == 2)
  {
    [(PXCuratedLibraryCardSectionBodyLayout *)self minPlayableSpriteSize:v3];
  }

  else
  {
    v5 = *MEMORY[0x1E695F060];
    v6 = *(MEMORY[0x1E695F060] + 8);
  }

  result.height = v6;
  result.width = v5;
  return result;
}

- (CGSize)minPlayableSpriteSize
{
  v3 = [(PXCuratedLibraryCardSectionBodyLayout *)self spec];
  v4 = [v3 allowsVideoPlaybackAtAnySize];

  if (v4)
  {
    v5 = *MEMORY[0x1E695F060];
    v6 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    [(PXCuratedLibraryCardSectionBodyLayout *)self assetFrame];
    v5 = v7;
    v6 = v8;
  }

  result.height = v6;
  result.width = v5;
  return result;
}

- (id)objectReferenceForSpriteIndex:(unsigned int)a3
{
  p_assetSpriteIndexRange = &self->_assetSpriteIndexRange;
  if (self->_assetSpriteIndexRange.length)
  {
    v5 = [(PXCuratedLibraryCardSectionBodyLayout *)self dataSource];
    v6 = [v5 identifier];
    v7 = [(PXCuratedLibraryCardSectionBodyLayout *)self section];
    location = p_assetSpriteIndexRange->location;
    v11[0] = v6;
    v11[1] = v7;
    v11[2] = location;
    v11[3] = 0x7FFFFFFFFFFFFFFFLL;
    v9 = [v5 assetReferenceAtItemIndexPath:v11];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)enumerateVisibleAnchoringSpriteIndexesUsingBlock:(id)a3
{
  if (self->_assetSpriteIndexRange.length)
  {
    v3 = 0;
    (*(a3 + 2))(a3, self->_assetSpriteIndexRange.location, 1, &v3);
  }
}

- (void)displayScaleDidChange
{
  v8.receiver = self;
  v8.super_class = PXCuratedLibraryCardSectionBodyLayout;
  [(PXCuratedLibraryCardSectionBodyLayout *)&v8 displayScaleDidChange];
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 1;
      return;
    }

LABEL_5:
    if (self->_updateFlags.updated)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryCardSectionBodyLayout displayScaleDidChange]"];
      [v6 handleFailureInFunction:v7 file:@"PXCuratedLibraryCardSectionBodyLayout.m" lineNumber:259 description:{@"invalidating %lu after it already has been updated", 1}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 1;
  if (!willPerformUpdate)
  {
    [(PXCuratedLibraryCardSectionBodyLayout *)self setNeedsUpdate];
  }
}

- (void)referenceSizeDidChange
{
  v8.receiver = self;
  v8.super_class = PXCuratedLibraryCardSectionBodyLayout;
  [(PXCuratedLibraryCardSectionBodyLayout *)&v8 referenceSizeDidChange];
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 1;
      return;
    }

LABEL_5:
    if (self->_updateFlags.updated)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryCardSectionBodyLayout referenceSizeDidChange]"];
      [v6 handleFailureInFunction:v7 file:@"PXCuratedLibraryCardSectionBodyLayout.m" lineNumber:254 description:{@"invalidating %lu after it already has been updated", 1}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 1;
  if (!willPerformUpdate)
  {
    [(PXCuratedLibraryCardSectionBodyLayout *)self setNeedsUpdate];
  }
}

- (void)setSpec:(id)a3
{
  v5 = a3;
  if (self->_spec != v5)
  {
    v11 = v5;
    objc_storeStrong(&self->_spec, a3);
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 1;
LABEL_8:
        v5 = v11;
        goto LABEL_9;
      }

LABEL_6:
      if (self->_updateFlags.updated)
      {
        v9 = [MEMORY[0x1E696AAA8] currentHandler];
        v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryCardSectionBodyLayout setSpec:]"];
        [v9 handleFailureInFunction:v10 file:@"PXCuratedLibraryCardSectionBodyLayout.m" lineNumber:247 description:{@"invalidating %lu after it already has been updated", 1}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 1;
    v5 = v11;
    if (!willPerformUpdate)
    {
      [(PXCuratedLibraryCardSectionBodyLayout *)self setNeedsUpdate];
      goto LABEL_8;
    }
  }

LABEL_9:
}

- (void)setIsSelected:(BOOL)a3
{
  if (self->_isSelected != a3)
  {
    self->_isSelected = a3;
    [(PXCuratedLibraryCardSectionBodyLayout *)self setNeedsUpdate];
    v5 = [(PXCuratedLibraryCardSectionBodyLayout *)self axGroup];
    [v5 invalidateLeafs];
  }
}

- (void)setCurrentSkimmingIndex:(int64_t)a3
{
  if (self->_currentSkimmingIndex != a3)
  {
    self->_currentSkimmingIndex = a3;
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
        v6 = needsUpdate | 1;
LABEL_8:
        p_updateFlags->needsUpdate = v6 | 2;
        return;
      }

      goto LABEL_6;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      updated = self->_updateFlags.updated;
      if (updated)
      {
        v10 = [MEMORY[0x1E696AAA8] currentHandler];
        v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryCardSectionBodyLayout setCurrentSkimmingIndex:]"];
        [v10 handleFailureInFunction:v11 file:@"PXCuratedLibraryCardSectionBodyLayout.m" lineNumber:229 description:{@"invalidating %lu after it already has been updated", 1}];
LABEL_21:

        abort();
      }

      v6 = needsUpdate | 1;
      p_updateFlags->needsUpdate = v6;
      if ((updated & 2) == 0)
      {
        goto LABEL_8;
      }

LABEL_19:
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryCardSectionBodyLayout setCurrentSkimmingIndex:]"];
      [v10 handleFailureInFunction:v11 file:@"PXCuratedLibraryCardSectionBodyLayout.m" lineNumber:230 description:{@"invalidating %lu after it already has been updated", 2}];
      goto LABEL_21;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    v6 = 1;
    p_updateFlags->needsUpdate = 1;
    if (willPerformUpdate)
    {
      goto LABEL_8;
    }

    [(PXCuratedLibraryCardSectionBodyLayout *)self setNeedsUpdate];
    v6 = p_updateFlags->needsUpdate;
    if (p_updateFlags->needsUpdate || p_updateFlags->isPerformingUpdate)
    {
      if (!p_updateFlags->isPerformingUpdate || (p_updateFlags->updated & 2) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_19;
    }

    v9 = p_updateFlags->willPerformUpdate;
    p_updateFlags->needsUpdate = 2;
    if (!v9)
    {

      [(PXCuratedLibraryCardSectionBodyLayout *)self setNeedsUpdate];
    }
  }
}

- (void)setMaxSkimmingIndex:(int64_t)a3
{
  if (self->_maxSkimmingIndex != a3)
  {
    self->_maxSkimmingIndex = a3;
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 1;
        return;
      }

LABEL_6:
      if (self->_updateFlags.updated)
      {
        v7 = [MEMORY[0x1E696AAA8] currentHandler];
        v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryCardSectionBodyLayout setMaxSkimmingIndex:]"];
        [v7 handleFailureInFunction:v8 file:@"PXCuratedLibraryCardSectionBodyLayout.m" lineNumber:221 description:{@"invalidating %lu after it already has been updated", 1}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 1;
    if (!willPerformUpdate)
    {

      [(PXCuratedLibraryCardSectionBodyLayout *)self setNeedsUpdate];
    }
  }
}

- (void)setSkimmingIndexPaths:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_skimmingIndexPaths != v5)
  {
    v13 = v5;
    v7 = [(PXIndexPathSet *)v5 isEqual:?];
    v6 = v13;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_skimmingIndexPaths, a3);
      p_updateFlags = &self->_updateFlags;
      needsUpdate = self->_updateFlags.needsUpdate;
      if (needsUpdate)
      {
        if (!self->_updateFlags.isPerformingUpdate)
        {
LABEL_8:
          p_updateFlags->needsUpdate = needsUpdate | 2;
LABEL_9:
          v6 = v13;
          goto LABEL_10;
        }

LABEL_7:
        if ((self->_updateFlags.updated & 2) != 0)
        {
          v11 = [MEMORY[0x1E696AAA8] currentHandler];
          v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryCardSectionBodyLayout setSkimmingIndexPaths:]"];
          [v11 handleFailureInFunction:v12 file:@"PXCuratedLibraryCardSectionBodyLayout.m" lineNumber:213 description:{@"invalidating %lu after it already has been updated", 2}];

          abort();
        }

        goto LABEL_8;
      }

      if (self->_updateFlags.isPerformingUpdate)
      {
        goto LABEL_7;
      }

      willPerformUpdate = self->_updateFlags.willPerformUpdate;
      p_updateFlags->needsUpdate = 2;
      v6 = v13;
      if (!willPerformUpdate)
      {
        [(PXCuratedLibraryCardSectionBodyLayout *)self setNeedsUpdate];
        goto LABEL_9;
      }
    }
  }

LABEL_10:
}

- (void)setIsSkimming:(BOOL)a3
{
  if (self->_isSkimming != a3)
  {
    self->_isSkimming = a3;
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
        v6 = needsUpdate | 1;
LABEL_8:
        p_updateFlags->needsUpdate = v6 | 2;
        return;
      }

      goto LABEL_6;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      updated = self->_updateFlags.updated;
      if (updated)
      {
        v10 = [MEMORY[0x1E696AAA8] currentHandler];
        v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryCardSectionBodyLayout setIsSkimming:]"];
        [v10 handleFailureInFunction:v11 file:@"PXCuratedLibraryCardSectionBodyLayout.m" lineNumber:204 description:{@"invalidating %lu after it already has been updated", 1}];
LABEL_21:

        abort();
      }

      v6 = needsUpdate | 1;
      p_updateFlags->needsUpdate = v6;
      if ((updated & 2) == 0)
      {
        goto LABEL_8;
      }

LABEL_19:
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryCardSectionBodyLayout setIsSkimming:]"];
      [v10 handleFailureInFunction:v11 file:@"PXCuratedLibraryCardSectionBodyLayout.m" lineNumber:205 description:{@"invalidating %lu after it already has been updated", 2}];
      goto LABEL_21;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    v6 = 1;
    p_updateFlags->needsUpdate = 1;
    if (willPerformUpdate)
    {
      goto LABEL_8;
    }

    [(PXCuratedLibraryCardSectionBodyLayout *)self setNeedsUpdate];
    v6 = p_updateFlags->needsUpdate;
    if (p_updateFlags->needsUpdate || p_updateFlags->isPerformingUpdate)
    {
      if (!p_updateFlags->isPerformingUpdate || (p_updateFlags->updated & 2) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_19;
    }

    v9 = p_updateFlags->willPerformUpdate;
    p_updateFlags->needsUpdate = 2;
    if (!v9)
    {

      [(PXCuratedLibraryCardSectionBodyLayout *)self setNeedsUpdate];
    }
  }
}

- (void)_updateKeyAssetFetchResultWithDataSource:(id)a3 section:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 identifier];
  v27 = v7;
  v28 = a4;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v26 = vnegq_f64(v8);
  v29 = v26;
  v9 = [v6 keyAssetsInSectionIndexPath:&v27];
  if (![v9 count])
  {
    v27 = v7;
    v28 = a4;
    v29 = v26;
    v10 = [v6 assetsInSectionIndexPath:&v27];

    v9 = v10;
  }

  v11 = [v9 firstObject];
  v12 = [(PXDisplayAssetFetchResult *)self->_keyAssetsFetchResult firstObject];
  v13 = v11;
  v14 = v12;
  v15 = v14;
  if (v13 == v14)
  {

    goto LABEL_13;
  }

  if (!v13 || !v14)
  {

LABEL_12:
    ++self->_assetVersion;
    goto LABEL_13;
  }

  v16 = [v13 isContentEqualTo:v14];
  if (!v16)
  {
    v16 = [v15 isContentEqualTo:v13];
  }

  if (v16 != 2)
  {
    goto LABEL_12;
  }

LABEL_13:
  self->_sectionIndexPath.dataSourceIdentifier = v7;
  self->_sectionIndexPath.section = a4;
  v17.f64[0] = NAN;
  v17.f64[1] = NAN;
  *&self->_sectionIndexPath.item = vnegq_f64(v17);
  objc_storeStrong(&self->_keyAssetsFetchResult, v9);
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
      v20 = needsUpdate | 1;
LABEL_19:
      p_updateFlags->needsUpdate = v20 | 2;
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
LABEL_17:
    updated = self->_updateFlags.updated;
    if (updated)
    {
      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryCardSectionBodyLayout _updateKeyAssetFetchResultWithDataSource:section:]"];
      [v24 handleFailureInFunction:v25 file:@"PXCuratedLibraryCardSectionBodyLayout.m" lineNumber:195 description:{@"invalidating %lu after it already has been updated", 1}];
LABEL_30:

      abort();
    }

    v20 = needsUpdate | 1;
    p_updateFlags->needsUpdate = v20;
    if ((updated & 2) == 0)
    {
      goto LABEL_19;
    }

LABEL_28:
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryCardSectionBodyLayout _updateKeyAssetFetchResultWithDataSource:section:]"];
    [v24 handleFailureInFunction:v25 file:@"PXCuratedLibraryCardSectionBodyLayout.m" lineNumber:196 description:{@"invalidating %lu after it already has been updated", 2}];
    goto LABEL_30;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  v20 = 1;
  p_updateFlags->needsUpdate = 1;
  if (willPerformUpdate)
  {
    goto LABEL_19;
  }

  [(PXCuratedLibraryCardSectionBodyLayout *)self setNeedsUpdate];
  v20 = p_updateFlags->needsUpdate;
  if (p_updateFlags->needsUpdate || self->_updateFlags.isPerformingUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate || (self->_updateFlags.updated & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  v23 = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 2;
  if (!v23)
  {
    [(PXCuratedLibraryCardSectionBodyLayout *)self setNeedsUpdate];
  }

LABEL_20:
}

- (void)setDataSource:(id)a3 section:(int64_t)a4
{
  v7 = a3;
  if (*&self->_section != __PAIR128__(v7, a4))
  {
    v8 = v7;
    objc_storeStrong(&self->_dataSource, a3);
    self->_section = a4;
    [(PXCuratedLibraryCardSectionBodyLayout *)self _updateKeyAssetFetchResultWithDataSource:v8 section:a4];
    v7 = v8;
  }
}

- (void)applySpriteChangeDetails:(id)a3 countAfterChanges:(unsigned int)a4 initialState:(id)a5 modifyState:(id)a6
{
  v8 = *&a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [v10 removedIndexes];
  v14 = [v10 insertedIndexes];
  if (![v13 isEqualToIndexSet:v14])
  {
    goto LABEL_6;
  }

  v15 = [v10 changedIndexes];
  if ([v15 count])
  {

LABEL_6:
    goto LABEL_7;
  }

  v16 = [v10 removedIndexes];
  v17 = [v16 count];

  if (v17 == 1)
  {
    v13 = [v10 insertedIndexes];
    [off_1E7721450 changeDetailsWithChangedIndexes:v13];
    v10 = v14 = v10;
    goto LABEL_6;
  }

LABEL_7:
  v18.receiver = self;
  v18.super_class = PXCuratedLibraryCardSectionBodyLayout;
  [(PXCuratedLibraryCardSectionBodyLayout *)&v18 applySpriteChangeDetails:v10 countAfterChanges:v8 initialState:v11 modifyState:v12];
}

- (PXCuratedLibrarySectionGeometryDescriptor)presentedGeometryDescriptor
{
  [(PXCuratedLibraryCardSectionBodyLayout *)self contentSize];
  [(PXCuratedLibraryCardSectionBodyLayout *)self spec];
  [objc_claimAutoreleasedReturnValue() padding];
  PXEdgeInsetsInsetRect();
}

- (id)axVisibleSpriteIndexes
{
  v3 = [(PXCuratedLibraryCardSectionBodyLayout *)self axSpriteIndexes];
  v4 = [v3 mutableCopy];

  [v4 removeIndex:1000];
  [v4 removeIndex:1001];
  v5 = [(PXCuratedLibraryCardSectionBodyLayout *)self spriteDataStore];
  if ([v4 lastIndex] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [v4 lastIndex];
    if (v6 > [v5 count])
    {
      PXAssertGetLog();
    }
  }

  [(PXCuratedLibraryCardSectionBodyLayout *)self visibleRect];
  v7 = [v5 spriteAtIndexes:v4 inRect:?];

  return v7;
}

- (void)_updateAXSprites
{
  if ([(PXCuratedLibraryCardSectionBodyLayout *)self zoomLevel]== 1 && [(PXCuratedLibraryCardSectionBodyLayout *)self isSkimming])
  {
    v3 = [(PXCuratedLibraryCardSectionBodyLayout *)self currentSkimmingIndex];
    axSpriteIndexes = self->_axSpriteIndexes;
    if (v3 < 1)
    {
      [(NSMutableIndexSet *)axSpriteIndexes removeIndex:1000];
    }

    else
    {
      [(NSMutableIndexSet *)axSpriteIndexes addIndex:1000];
    }

    v5 = [(PXCuratedLibraryCardSectionBodyLayout *)self maxSkimmingIndex];
    v6 = self->_axSpriteIndexes;
    if (v3 >= v5)
    {

      [(NSMutableIndexSet *)v6 removeIndex:1001];
    }

    else
    {

      [(NSMutableIndexSet *)v6 addIndex:1001];
    }
  }
}

- (void)_updateSprites
{
  v12 = *MEMORY[0x1E69E9840];
  [(PXCuratedLibraryCardSectionBodyLayout *)self spec];
  if (!objc_claimAutoreleasedReturnValue())
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryCardSectionBodyLayout.m" lineNumber:76 description:{@"missing spec on %@", self}];
  }

  [(PXCuratedLibraryCardSectionBodyLayout *)self displayScale];
  [(PXCuratedLibraryCardSectionBodyLayout *)self referenceSize];
  [(PXCuratedLibraryCardSectionBodyLayout *)self assetFrame];
  v4 = [(PXCuratedLibraryCardSectionBodyLayout *)self keyAssetsFetchResult];
  v5 = [v4 firstObject];
  keyAsset = self->_keyAsset;
  self->_keyAsset = v5;

  if (!self->_keyAsset)
  {
    v7 = [(PXCuratedLibraryCardSectionBodyLayout *)self dataSource];
    [(PXCuratedLibraryCardSectionBodyLayout *)self sectionIndexPath];
    v8 = [v7 assetCollectionAtSectionIndexPath:buf];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v11 = v8;
      _os_log_fault_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Empty key asset fetch result for asset collection: %@", buf, 0xCu);
    }
  }

  PXSizeGetAspectRatio();
}

void __55__PXCuratedLibraryCardSectionBodyLayout__updateSprites__block_invoke(uint64_t a1, uint64_t a2, float32x2_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  v31.origin.x = v9;
  v31.origin.y = v10;
  v31.size.width = v11;
  v31.size.height = v12;
  MidX = CGRectGetMidX(v31);
  v32.origin.x = v9;
  v32.origin.y = v10;
  v32.size.width = v11;
  v32.size.height = v12;
  MidY = CGRectGetMidY(v32);
  v33.origin.x = v9;
  v33.origin.y = v10;
  v33.size.width = v11;
  v33.size.height = v12;
  Width = CGRectGetWidth(v33);
  v34.origin.x = v9;
  v34.origin.y = v10;
  v34.size.width = v11;
  v34.size.height = v12;
  Height = CGRectGetHeight(v34);
  v16.f64[0] = Width;
  v16.f64[1] = Height;
  *a3 = MidX;
  *&a3[1] = MidY;
  a3[2] = 0xBFD99999A0000000;
  a3[3] = vcvt_f32_f64(v16);
  v17 = *(off_1E7722048 + 1);
  *a4 = *off_1E7722048;
  *(a4 + 16) = v17;
  v18 = *(off_1E7722048 + 5);
  *(a4 + 64) = *(off_1E7722048 + 4);
  *(a4 + 80) = v18;
  v19 = *(off_1E7722048 + 3);
  *(a4 + 32) = *(off_1E7722048 + 2);
  *(a4 + 48) = v19;
  v20 = *(off_1E7722048 + 9);
  *(a4 + 128) = *(off_1E7722048 + 8);
  *(a4 + 144) = v20;
  v21 = *(off_1E7722048 + 7);
  *(a4 + 96) = *(off_1E7722048 + 6);
  *(a4 + 112) = v21;
  *(a4 + 4) = vcvt_hight_f32_f64(vcvt_f32_f64(*(a1 + 80)), *(a1 + 96));
  [*(a1 + 32) cornerRadius];
  *(a4 + 36) = v22;
  *(a4 + 40) = v23;
  *(a4 + 44) = v24;
  *(a4 + 48) = v25;
  *(a5 + 32) = *(off_1E7722040 + 4);
  v26 = *(off_1E7722040 + 1);
  *a5 = *off_1E7722040;
  *(a5 + 16) = v26;
  if (*(*(a1 + 40) + 856))
  {
    v27 = 2;
  }

  else
  {
    v27 = 5;
  }

  *(a5 + 1) = v27;
  *(a5 + 32) = *(*(a1 + 40) + 848);
  v28 = *(a1 + 112);
  *(a5 + 8) = vmul_n_f32(a3[3], v28);
  v29 = *(a1 + 40);
  if (v29)
  {
    [v29 sectionIndexPath];
  }

  PXGSectionedSpriteTagMake();
}

- (void)update
{
  p_updateFlags = &self->_updateFlags;
  self->_updateFlags.willPerformUpdate = 0;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (self->_updateFlags.isPerformingUpdate)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryCardSectionBodyLayout update]"];
      [v9 handleFailureInFunction:v10 file:@"PXCuratedLibraryCardSectionBodyLayout.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 1;
    p_updateFlags->updated = 1;
    if (needsUpdate)
    {
      p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
      [(PXCuratedLibraryCardSectionBodyLayout *)self _updateSprites];
      if (!p_updateFlags->isPerformingUpdate)
      {
        v11 = [MEMORY[0x1E696AAA8] currentHandler];
        v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryCardSectionBodyLayout update]"];
        [v11 handleFailureInFunction:v12 file:@"PXCuratedLibraryCardSectionBodyLayout.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
      }
    }

    v5 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 2uLL;
    if ((v5 & 2) != 0)
    {
      p_updateFlags->needsUpdate = v5 & 0xFFFFFFFFFFFFFFFDLL;
      [(PXCuratedLibraryCardSectionBodyLayout *)self _updateAXSprites];
      v5 = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 0;
    if (v5)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryCardSectionBodyLayout update]"];
      [v13 handleFailureInFunction:v14 file:@"PXCuratedLibraryCardSectionBodyLayout.m" lineNumber:67 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }

  v18.receiver = self;
  v18.super_class = PXCuratedLibraryCardSectionBodyLayout;
  [(PXCuratedLibraryCardSectionBodyLayout *)&v18 update];
  p_postUpdateFlags = &self->_postUpdateFlags;
  self->_postUpdateFlags.willPerformUpdate = 0;
  if (self->_postUpdateFlags.needsUpdate)
  {
    if (!self->_postUpdateFlags.isPerformingUpdate)
    {
      self->_postUpdateFlags.updated = 0;
      self->_postUpdateFlags.isPerformingUpdate = 0;
LABEL_14:
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryCardSectionBodyLayout update]"];
      [v7 handleFailureInFunction:v8 file:@"PXCuratedLibraryCardSectionBodyLayout.m" lineNumber:71 description:{@"still needing to update %lu after update pass", p_postUpdateFlags->needsUpdate}];

      return;
    }

    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXCuratedLibraryCardSectionBodyLayout update]"];
    [v15 handleFailureInFunction:v16 file:@"PXCuratedLibraryCardSectionBodyLayout.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"!_postUpdateFlags.isPerformingUpdate"}];

    v17 = p_postUpdateFlags->needsUpdate;
    p_postUpdateFlags->updated = 0;
    p_postUpdateFlags->isPerformingUpdate = 0;
    if (v17)
    {
      goto LABEL_14;
    }
  }
}

- (CGRect)assetFrame
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  [(PXCuratedLibraryCardSectionBodyLayout *)self referenceSize];
  v5 = v4;
  v7 = v6;
  v8 = v2;
  v9 = v3;
  result.size.height = v7;
  result.size.width = v5;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (PXCuratedLibraryCardSectionBodyLayout)init
{
  v8.receiver = self;
  v8.super_class = PXCuratedLibraryCardSectionBodyLayout;
  v2 = [(PXCuratedLibraryCardSectionBodyLayout *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(off_1E7721630);
    assetLayoutGuide = v2->_assetLayoutGuide;
    v2->_assetLayoutGuide = v3;

    v2->_assetSpriteIndexRange = 0x100000000;
    v5 = [objc_alloc(MEMORY[0x1E696AD50]) initWithIndex:v2->_assetSpriteIndexRange.location];
    axSpriteIndexes = v2->_axSpriteIndexes;
    v2->_axSpriteIndexes = v5;
  }

  return v2;
}

@end