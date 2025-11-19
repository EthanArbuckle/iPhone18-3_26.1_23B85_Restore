@interface PXConcatenatingAssetsDataSourceManager
- (BOOL)forceAccurateAllSectionsIfNeeded;
- (BOOL)includeOthersInSocialGroupAssets;
- (BOOL)isReverseSortOrder;
- (NSArray)sortDescriptors;
- (NSPredicate)filterPredicate;
- (PXConcatenatingAssetsDataSourceManager)init;
- (PXConcatenatingAssetsDataSourceManager)initWithDataSourceManagers:(id)a3 mode:(int64_t)a4;
- (id)createInitialDataSource;
- (id)pauseChangeDeliveryWithTimeout:(double)a3 identifier:(id)a4;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)refreshResultsForAssetCollection:(id)a3;
- (void)resumeChangeDeliveryAndBackgroundLoading:(id)a3;
- (void)setAllowedUUIDs:(id)a3;
- (void)setAllowedUUIDs:(id)a3 manualOrderUUIDs:(id)a4 forAssetCollections:(id)a5;
- (void)setAllowedUUIDs:(id)a3 provideIncrementalChangeDetailsForAssetCollections:(id)a4;
- (void)setCurationEnabledForAllCollections:(BOOL)a3 curationLength:(int64_t)a4 collectionsToDiff:(id)a5;
- (void)setFilterPredicate:(id)a3;
- (void)setFilterPredicate:(id)a3 provideIncrementalChangeDetailsForAssetCollections:(id)a4;
- (void)setIncludeOthersInSocialGroupAssets:(BOOL)a3;
- (void)setIncludeOthersInSocialGroupAssets:(BOOL)a3 provideIncrementalChangeDetailsForAssetCollections:(id)a4;
- (void)setReverseSortOrder:(BOOL)a3;
- (void)setSortDescriptors:(id)a3;
- (void)stopExcludingAssets:(id)a3;
@end

@implementation PXConcatenatingAssetsDataSourceManager

- (PXConcatenatingAssetsDataSourceManager)initWithDataSourceManagers:(id)a3 mode:(int64_t)a4
{
  sub_1A3C52C70(0, &qword_1EB120760);
  v5 = sub_1A524CA34();
  ConcatenatingAssetsDataSourceManager.init(dataSourceManagers:mode:)(v5, a4);
}

- (id)createInitialDataSource
{
  v2 = self;
  v3 = sub_1A49A5AA4();

  return v3;
}

- (id)pauseChangeDeliveryWithTimeout:(double)a3 identifier:(id)a4
{
  sub_1A524C674();
  v6 = self;
  sub_1A49A3DE4(v9, a3);

  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v7 = sub_1A524EA94();
  __swift_destroy_boxed_opaque_existential_0(v9);

  return v7;
}

- (void)resumeChangeDeliveryAndBackgroundLoading:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1A524E0B4();
  swift_unknownObjectRelease();
  sub_1A49A4040(v5);

  __swift_destroy_boxed_opaque_existential_0(v5);
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  if (a4)
  {
    v7 = self;
    v6 = sub_1A49A5AA4();
    [(PXSectionedDataSourceManager *)v7 setDataSource:v6 changeDetails:0];
  }
}

- (void)setCurationEnabledForAllCollections:(BOOL)a3 curationLength:(int64_t)a4 collectionsToDiff:(id)a5
{
  if (a5)
  {
    v8 = sub_1A524CF44();
  }

  else
  {
    v8 = 0;
  }

  v9 = self;
  sub_1A49A4354(a3, a4, v8);
}

- (BOOL)forceAccurateAllSectionsIfNeeded
{
  v2 = self;
  sub_1A49A4508();
  v4 = v3;

  return v4 & 1;
}

- (void)stopExcludingAssets:(id)a3
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR___PXConcatenatingAssetsDataSourceManager_dataSourceManagers);
  if (v4 >> 62)
  {
    v10 = a3;
    v11 = sub_1A524E2B4();
    a3 = v10;
    v5 = v11;
    if (!v11)
    {
      return;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
    v12 = a3;
    v6 = self;
    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1A59097F0](i, v4);
      }

      else
      {
        v8 = *(v4 + 8 * i + 32);
      }

      v9 = v8;
      [v8 stopExcludingAssets_];
    }
  }
}

- (void)refreshResultsForAssetCollection:(id)a3
{
  v5 = *(&self->super.super.super.super.isa + OBJC_IVAR___PXConcatenatingAssetsDataSourceManager_dataSourceManagers);
  if (v5 >> 62)
  {
    v6 = sub_1A524E2B4();
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
  }

  else
  {
    swift_unknownObjectRetain();
    v7 = self;
    for (i = 0; i != v6; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1A59097F0](i, v5);
      }

      else
      {
        v9 = *(v5 + 8 * i + 32);
      }

      v10 = v9;
      [v9 refreshResultsForAssetCollection_];
    }

    swift_unknownObjectRelease();
  }
}

- (NSPredicate)filterPredicate
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR___PXConcatenatingAssetsDataSourceManager_dataSourceManagers);
  if (v3 >> 62)
  {
    result = sub_1A524E2B4();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v9 = self;
    v8 = 0;
    goto LABEL_9;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v11 = self;
    v7 = MEMORY[0x1A59097F0](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(v3 + 32);
    v6 = self;
    v7 = v5;
  }

  v8 = v7;
LABEL_9:
  v10 = [v8 filterPredicate];

  return v10;
}

- (void)setFilterPredicate:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1A49A5E60(a3);
}

- (BOOL)includeOthersInSocialGroupAssets
{
  v2 = self;
  v3 = sub_1A49A4D68(&selRef_includeOthersInSocialGroupAssets);

  return v3;
}

- (void)setIncludeOthersInSocialGroupAssets:(BOOL)a3
{
  v4 = self;
  sub_1A49A4F64(a3, &selRef_setIncludeOthersInSocialGroupAssets_);
}

- (NSArray)sortDescriptors
{
  v2 = self;
  v3 = sub_1A49A4BC4();

  if (v3)
  {
    sub_1A3C52C70(0, &qword_1EB126B60);
    v4 = sub_1A524CA14();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setSortDescriptors:(id)a3
{
  if (a3)
  {
    sub_1A3C52C70(0, &qword_1EB126B60);
    v4 = sub_1A524CA34();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  sub_1A49A5F2C(v4);
}

- (BOOL)isReverseSortOrder
{
  v2 = self;
  v3 = sub_1A49A4D68(&selRef_isReverseSortOrder);

  return v3;
}

- (void)setReverseSortOrder:(BOOL)a3
{
  v3 = a3;
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR___PXConcatenatingAssetsDataSourceManager_dataSourceManagers);
  if (v4 >> 62)
  {
    v9 = self;
    v5 = sub_1A524E2B4();
    self = v9;
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
    v10 = self;
    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1A59097F0](i, v4);
      }

      else
      {
        v7 = *(v4 + 8 * i + 32);
      }

      v8 = v7;
      [v7 setReverseSortOrder_];
    }
  }
}

- (void)setFilterPredicate:(id)a3 provideIncrementalChangeDetailsForAssetCollections:(id)a4
{
  if (a4)
  {
    v6 = sub_1A524CF44();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v8 = self;
  sub_1A49A5030(a3, v6);
}

- (void)setIncludeOthersInSocialGroupAssets:(BOOL)a3 provideIncrementalChangeDetailsForAssetCollections:(id)a4
{
  if (a4)
  {
    v6 = sub_1A524CF44();
  }

  else
  {
    v6 = 0;
  }

  v7 = self;
  sub_1A49A51D4(a3, v6);
}

- (void)setAllowedUUIDs:(id)a3
{
  if (a3)
  {
    v4 = sub_1A524CF44();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  sub_1A49A549C(v4);
}

- (void)setAllowedUUIDs:(id)a3 manualOrderUUIDs:(id)a4 forAssetCollections:(id)a5
{
  sub_1A4892848();
  sub_1A524C3E4();
  sub_1A3FC306C(0, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1A524C3E4();
  sub_1A3C5D0E8(0, &qword_1EB120790);
  sub_1A524CA34();
  v6 = self;
  sub_1A49A562C();
}

- (void)setAllowedUUIDs:(id)a3 provideIncrementalChangeDetailsForAssetCollections:(id)a4
{
  v6 = sub_1A524CF44();
  if (a4)
  {
    a4 = sub_1A524CF44();
  }

  v7 = self;
  sub_1A49A58D8(v6, a4);
}

- (PXConcatenatingAssetsDataSourceManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end