@interface _PXCuratedLibraryLayoutAssetsSnapshot
- ($610C715A8B7E26897ADA48D0AF0CD277)spriteSnapshotForAssetWithIdentifier:(SEL)identifier;
- (CGPoint)offset;
- (NSCopying)dominantAssetIdentifier;
- (_PXCuratedLibraryLayoutAssetsSnapshot)initWithLayout:(id)layout;
- (id)assetIdentifierForAssetReference:(id)reference;
- (int64_t)_addSpriteSnapshot:(id *)snapshot;
- (void)dealloc;
- (void)enumerateAssetIdentifiersUsingBlock:(id)block;
- (void)enumerateAssetInfoForGeometries:(id *)geometries styles:(id *)styles infos:(id *)infos count:(unsigned int)count options:(unint64_t)options usingBlock:(id)block;
- (void)setDominantAssetIdentifier:(id)identifier;
@end

@implementation _PXCuratedLibraryLayoutAssetsSnapshot

- (CGPoint)offset
{
  x = self->_offset.x;
  y = self->_offset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setDominantAssetIdentifier:(id)identifier
{
  v5 = [(NSDictionary *)self->_spriteSnapshotIndexByAssetIdentifier objectForKeyedSubscript:identifier];
  v27 = v5;
  if (!v5)
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_6;
  }

  integerValue = [v5 integerValue];
  v7 = integerValue;
  if (integerValue < 0 || (spriteSnapshotsCount = self->_spriteSnapshotsCount, integerValue >= spriteSnapshotsCount))
  {
LABEL_6:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCuratedLibraryLayoutZoomLevelChangeToOrFromAllPhotosAnimationHelper.m" lineNumber:490 description:{@"Invalid parameter not satisfying: %@", @"dominantIndex >= 0 && dominantIndex < _spriteSnapshotsCount"}];

    spriteSnapshotsCount = self->_spriteSnapshotsCount;
    if (spriteSnapshotsCount < 1)
    {
      goto LABEL_33;
    }
  }

  v10 = 0;
  v11 = vdupq_n_s64(spriteSnapshotsCount - 1);
  v12 = xmmword_1A535BCA0;
  v13 = xmmword_1A535BC90;
  v14 = xmmword_1A535BC80;
  v15 = xmmword_1A535BC70;
  v16 = xmmword_1A535BC60;
  v17 = xmmword_1A535BC50;
  v18 = xmmword_1A535BC40;
  v19 = xmmword_1A5301350;
  v20 = vdupq_n_s64(0x10uLL);
  v21 = -((spriteSnapshotsCount + 15) & 0xFFFFFFFFFFFFFFF0);
  spriteSnapshots = self->_spriteSnapshots;
  do
  {
    v23 = vmovn_s64(vcgeq_u64(v11, v19));
    if (vuzp1_s8(vuzp1_s16(v23, *v11.i8), *v11.i8).u8[0])
    {
      BYTE4(spriteSnapshots[1].var0.origin.y) = v7 + v10 == 0;
    }

    if (vuzp1_s8(vuzp1_s16(v23, *&v11), *&v11).i8[1])
    {
      BYTE4(spriteSnapshots[2].var0.size.height) = v7 + v10 == 1;
    }

    if (vuzp1_s8(vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, *&v18))), *&v11).i8[2])
    {
      BYTE4(spriteSnapshots[4].var0.origin.x) = v7 + v10 == 2;
      BYTE4(spriteSnapshots[5].var0.size.width) = v7 + v10 == 3;
    }

    v24 = vmovn_s64(vcgeq_u64(v11, v17));
    if (vuzp1_s8(*&v11, vuzp1_s16(v24, *&v11)).i32[1])
    {
      spriteSnapshots[6].var2 = v7 + v10 == 4;
    }

    if (vuzp1_s8(*&v11, vuzp1_s16(v24, *&v11)).i8[5])
    {
      BYTE4(spriteSnapshots[8].var0.origin.y) = v7 + v10 == 5;
    }

    if (vuzp1_s8(*&v11, vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, *&v16)))).i8[6])
    {
      BYTE4(spriteSnapshots[9].var0.size.height) = v7 + v10 == 6;
      BYTE4(spriteSnapshots[11].var0.origin.x) = v7 + v10 == 7;
    }

    v25 = vmovn_s64(vcgeq_u64(v11, v15));
    if (vuzp1_s8(vuzp1_s16(v25, *v11.i8), *v11.i8).u8[0])
    {
      BYTE4(spriteSnapshots[12].var0.size.width) = v7 + v10 == 8;
    }

    if (vuzp1_s8(vuzp1_s16(v25, *&v11), *&v11).i8[1])
    {
      spriteSnapshots[13].var2 = v7 + v10 == 9;
    }

    if (vuzp1_s8(vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, *&v14))), *&v11).i8[2])
    {
      BYTE4(spriteSnapshots[15].var0.origin.y) = v7 + v10 == 10;
      BYTE4(spriteSnapshots[16].var0.size.height) = v7 + v10 == 11;
    }

    v26 = vmovn_s64(vcgeq_u64(v11, v13));
    if (vuzp1_s8(*&v11, vuzp1_s16(v26, *&v11)).i32[1])
    {
      BYTE4(spriteSnapshots[18].var0.origin.x) = v7 + v10 == 12;
    }

    if (vuzp1_s8(*&v11, vuzp1_s16(v26, *&v11)).i8[5])
    {
      BYTE4(spriteSnapshots[19].var0.size.width) = v7 + v10 == 13;
    }

    if (vuzp1_s8(*&v11, vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, *&v12)))).i8[6])
    {
      spriteSnapshots[20].var2 = v7 + v10 == 14;
      BYTE4(spriteSnapshots[22].var0.origin.y) = v7 + v10 == 15;
    }

    v17 = vaddq_s64(v17, v20);
    v18 = vaddq_s64(v18, v20);
    v19 = vaddq_s64(v19, v20);
    v16 = vaddq_s64(v16, v20);
    v15 = vaddq_s64(v15, v20);
    v14 = vaddq_s64(v14, v20);
    v10 -= 16;
    v13 = vaddq_s64(v13, v20);
    spriteSnapshots = (spriteSnapshots + 896);
    v12 = vaddq_s64(v12, v20);
  }

  while (v21 != v10);
LABEL_33:
}

- (NSCopying)dominantAssetIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__127489;
  v10 = __Block_byref_object_dispose__127490;
  v11 = 0;
  spriteSnapshotIndexByAssetIdentifier = self->_spriteSnapshotIndexByAssetIdentifier;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64___PXCuratedLibraryLayoutAssetsSnapshot_dominantAssetIdentifier__block_invoke;
  v5[3] = &unk_1E773B7F0;
  v5[5] = &v6;
  v5[6] = a2;
  v5[4] = self;
  [(NSDictionary *)spriteSnapshotIndexByAssetIdentifier enumerateKeysAndObjectsUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)enumerateAssetIdentifiersUsingBlock:(id)block
{
  blockCopy = block;
  spriteSnapshotIndexByAssetIdentifier = self->_spriteSnapshotIndexByAssetIdentifier;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77___PXCuratedLibraryLayoutAssetsSnapshot_enumerateAssetIdentifiersUsingBlock___block_invoke;
  v7[3] = &unk_1E773B7C8;
  v8 = blockCopy;
  v6 = blockCopy;
  [(NSDictionary *)spriteSnapshotIndexByAssetIdentifier enumerateKeysAndObjectsUsingBlock:v7];
}

- ($610C715A8B7E26897ADA48D0AF0CD277)spriteSnapshotForAssetWithIdentifier:(SEL)identifier
{
  v7 = a4;
  if (v7)
  {
    v15 = v7;
    v8 = [(NSDictionary *)self->_spriteSnapshotIndexByAssetIdentifier objectForKeyedSubscript:v7];
    v7 = v15;
    if (v8)
    {
      integerValue = [v8 integerValue];
      v10 = integerValue;
      if (integerValue < 0 || integerValue >= self->_spriteSnapshotsCount)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:identifier object:self file:@"PXCuratedLibraryLayoutZoomLevelChangeToOrFromAllPhotosAnimationHelper.m" lineNumber:461 description:{@"Invalid parameter not satisfying: %@", @"index >= 0 && index < _spriteSnapshotsCount"}];
      }

      v11 = self->_spriteSnapshots + 56 * v10;
      v12 = *(v11 + 1);
      retstr->var0.origin = *v11;
      retstr->var0.size = v12;
      *&retstr->var1 = *(v11 + 2);
      retstr[1].var0.origin.y = *(v11 + 6);
      [(_PXCuratedLibraryLayoutAssetsSnapshot *)self offset];
      PXPointAdd();
    }
  }

  retstr[1].var0.origin.y = 0.0;
  retstr->var0.origin = PXCuratedLibrarySpriteSnapshotNull;
  retstr->var0.size = unk_1A5381E48;
  *&retstr->var1 = xmmword_1A5381E58;

  return result;
}

- (id)assetIdentifierForAssetReference:(id)reference
{
  referenceCopy = reference;
  v11 = 0u;
  v12 = 0u;
  dataSource = self->_dataSource;
  if (dataSource)
  {
    [(PXAssetsDataSource *)dataSource indexPathForAssetReference:referenceCopy];
    v6 = v11;
  }

  else
  {
    v6 = 0;
  }

  if (v6 == *off_1E7721F68)
  {
    v7 = 0;
  }

  else
  {
    v8 = self->_dataSource;
    v10[0] = v11;
    v10[1] = v12;
    v7 = [(PXAssetsDataSource *)v8 assetIdentifierAtItemIndexPath:v10];
  }

  return v7;
}

- (void)enumerateAssetInfoForGeometries:(id *)geometries styles:(id *)styles infos:(id *)infos count:(unsigned int)count options:(unint64_t)options usingBlock:(id)block
{
  optionsCopy = options;
  blockCopy = block;
  [(PXAssetsDataSource *)self->_dataSource identifier];
  if (count)
  {
    v13 = 0;
    v14 = infos + 1;
    do
    {
      if ((optionsCopy & 1) != 0 || v14[-1].var1 == 2)
      {
        PXGSectionedSpriteTagDecompose();
      }

      ++v13;
      v14 = (v14 + 40);
    }

    while (count != v13);
  }
}

- (int64_t)_addSpriteSnapshot:(id *)snapshot
{
  spriteSnapshotsCount = self->_spriteSnapshotsCount;
  spriteSnapshotsCapacity = self->_spriteSnapshotsCapacity;
  self->_spriteSnapshotsCount = spriteSnapshotsCount + 1;
  if (spriteSnapshotsCount >= spriteSnapshotsCapacity)
  {
    if (spriteSnapshotsCapacity)
    {
      do
      {
        v5 = 2 * spriteSnapshotsCapacity;
        v6 = spriteSnapshotsCount < 2 * spriteSnapshotsCapacity;
        spriteSnapshotsCapacity *= 2;
      }

      while (!v6);
    }

    else
    {
      v5 = 32;
    }

    self->_spriteSnapshotsCapacity = v5;
    _PXGArrayResize();
  }

  v7 = self->_spriteSnapshots + 56 * spriteSnapshotsCount;
  origin = snapshot->var0.origin;
  size = snapshot->var0.size;
  v10 = *&snapshot->var1;
  *(v7 + 6) = *&snapshot[1].var0.origin.y;
  *(v7 + 1) = size;
  *(v7 + 2) = v10;
  *v7 = origin;
  return spriteSnapshotsCount;
}

- (void)dealloc
{
  free(self->_spriteSnapshots);
  v3.receiver = self;
  v3.super_class = _PXCuratedLibraryLayoutAssetsSnapshot;
  [(_PXCuratedLibraryLayoutAssetsSnapshot *)&v3 dealloc];
}

- (_PXCuratedLibraryLayoutAssetsSnapshot)initWithLayout:(id)layout
{
  layoutCopy = layout;
  v5 = [(_PXCuratedLibraryLayoutAssetsSnapshot *)self init];
  if (v5)
  {
    [layoutCopy visibleRect];
    v5->_visibleRect.origin.x = v6;
    v5->_visibleRect.origin.y = v7;
    v5->_visibleRect.size.width = v8;
    v5->_visibleRect.size.height = v9;
    [layoutCopy fullyVisibleRect];
    v5->_fullyVisibleRect.origin.x = v10;
    v5->_fullyVisibleRect.origin.y = v11;
    v5->_fullyVisibleRect.size.width = v12;
    v5->_fullyVisibleRect.size.height = v13;
    presentedZoomLevel = [layoutCopy presentedZoomLevel];
    v5->_zoomLevel = presentedZoomLevel;
    if (presentedZoomLevel == 4)
    {
      [layoutCopy allPhotosLayout];
    }

    else
    {
      [layoutCopy libraryBodyLayout];
    }
    v15 = ;
    presentedDataSource = [v15 presentedDataSource];
    dataSource = v5->_dataSource;
    v5->_dataSource = presentedDataSource;

    v43 = 0;
    v44 = &v43;
    v45 = 0x3032000000;
    v46 = __Block_byref_object_copy__127489;
    v47 = __Block_byref_object_dispose__127490;
    v48 = 0;
    zoomLevel = v5->_zoomLevel;
    if ((zoomLevel - 1) >= 2)
    {
      if (zoomLevel != 3)
      {
LABEL_10:
        v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v26 = [layoutCopy numberOfSprites] << 32;
        v32 = MEMORY[0x1E69E9820];
        v33 = 3221225472;
        v34 = __56___PXCuratedLibraryLayoutAssetsSnapshot_initWithLayout___block_invoke_4;
        v35 = &unk_1E773B7A0;
        v27 = v5;
        v36 = v27;
        v38 = &v43;
        v28 = v25;
        v37 = v28;
        [layoutCopy enumerateSpritesInRange:v26 options:1 usingBlock:&v32];
        v29 = [v28 copy];
        spriteSnapshotIndexByAssetIdentifier = v27->_spriteSnapshotIndexByAssetIdentifier;
        v27->_spriteSnapshotIndexByAssetIdentifier = v29;

        _Block_object_dispose(&v43, 8);
        goto LABEL_11;
      }

      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __56___PXCuratedLibraryLayoutAssetsSnapshot_initWithLayout___block_invoke;
      v39[3] = &unk_1E773B750;
      v40 = layoutCopy;
      v41 = v5;
      v42 = &v43;
      [v40 enumerateVisibleAnchoringSpriteIndexesUsingBlock:v39];

      keyAssetReference = v40;
    }

    else
    {
      libraryBodyLayout = [layoutCopy libraryBodyLayout];
      dominantSectionLayout = [libraryBodyLayout dominantSectionLayout];
      assetCollectionReference = [dominantSectionLayout assetCollectionReference];
      keyAssetReference = [assetCollectionReference keyAssetReference];

      v23 = [(_PXCuratedLibraryLayoutAssetsSnapshot *)v5 assetIdentifierForAssetReference:keyAssetReference];
      v24 = v44[5];
      v44[5] = v23;
    }

    goto LABEL_10;
  }

LABEL_11:

  return v5;
}

@end