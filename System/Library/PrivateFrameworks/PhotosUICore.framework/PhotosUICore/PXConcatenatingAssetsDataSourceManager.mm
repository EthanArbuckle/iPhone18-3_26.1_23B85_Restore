@interface PXConcatenatingAssetsDataSourceManager
- (BOOL)forceAccurateAllSectionsIfNeeded;
- (BOOL)includeOthersInSocialGroupAssets;
- (BOOL)isReverseSortOrder;
- (NSArray)sortDescriptors;
- (NSPredicate)filterPredicate;
- (PXConcatenatingAssetsDataSourceManager)init;
- (PXConcatenatingAssetsDataSourceManager)initWithDataSourceManagers:(id)managers mode:(int64_t)mode;
- (id)createInitialDataSource;
- (id)pauseChangeDeliveryWithTimeout:(double)timeout identifier:(id)identifier;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)refreshResultsForAssetCollection:(id)collection;
- (void)resumeChangeDeliveryAndBackgroundLoading:(id)loading;
- (void)setAllowedUUIDs:(id)ds;
- (void)setAllowedUUIDs:(id)ds manualOrderUUIDs:(id)iDs forAssetCollections:(id)collections;
- (void)setAllowedUUIDs:(id)ds provideIncrementalChangeDetailsForAssetCollections:(id)collections;
- (void)setCurationEnabledForAllCollections:(BOOL)collections curationLength:(int64_t)length collectionsToDiff:(id)diff;
- (void)setFilterPredicate:(id)predicate;
- (void)setFilterPredicate:(id)predicate provideIncrementalChangeDetailsForAssetCollections:(id)collections;
- (void)setIncludeOthersInSocialGroupAssets:(BOOL)assets;
- (void)setIncludeOthersInSocialGroupAssets:(BOOL)assets provideIncrementalChangeDetailsForAssetCollections:(id)collections;
- (void)setReverseSortOrder:(BOOL)order;
- (void)setSortDescriptors:(id)descriptors;
- (void)stopExcludingAssets:(id)assets;
@end

@implementation PXConcatenatingAssetsDataSourceManager

- (PXConcatenatingAssetsDataSourceManager)initWithDataSourceManagers:(id)managers mode:(int64_t)mode
{
  sub_1A3C52C70(0, &qword_1EB120760);
  v5 = sub_1A524CA34();
  ConcatenatingAssetsDataSourceManager.init(dataSourceManagers:mode:)(v5, mode);
}

- (id)createInitialDataSource
{
  selfCopy = self;
  v3 = sub_1A49A5AA4();

  return v3;
}

- (id)pauseChangeDeliveryWithTimeout:(double)timeout identifier:(id)identifier
{
  sub_1A524C674();
  selfCopy = self;
  sub_1A49A3DE4(v9, timeout);

  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v7 = sub_1A524EA94();
  __swift_destroy_boxed_opaque_existential_0(v9);

  return v7;
}

- (void)resumeChangeDeliveryAndBackgroundLoading:(id)loading
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1A524E0B4();
  swift_unknownObjectRelease();
  sub_1A49A4040(v5);

  __swift_destroy_boxed_opaque_existential_0(v5);
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  if (change)
  {
    selfCopy = self;
    v6 = sub_1A49A5AA4();
    [(PXSectionedDataSourceManager *)selfCopy setDataSource:v6 changeDetails:0];
  }
}

- (void)setCurationEnabledForAllCollections:(BOOL)collections curationLength:(int64_t)length collectionsToDiff:(id)diff
{
  if (diff)
  {
    v8 = sub_1A524CF44();
  }

  else
  {
    v8 = 0;
  }

  selfCopy = self;
  sub_1A49A4354(collections, length, v8);
}

- (BOOL)forceAccurateAllSectionsIfNeeded
{
  selfCopy = self;
  sub_1A49A4508();
  v4 = v3;

  return v4 & 1;
}

- (void)stopExcludingAssets:(id)assets
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR___PXConcatenatingAssetsDataSourceManager_dataSourceManagers);
  if (v4 >> 62)
  {
    assetsCopy = assets;
    v11 = sub_1A524E2B4();
    assets = assetsCopy;
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
    assetsCopy2 = assets;
    selfCopy = self;
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

- (void)refreshResultsForAssetCollection:(id)collection
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
    selfCopy = self;
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
    selfCopy = self;
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
    selfCopy2 = self;
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
    selfCopy3 = self;
    v7 = v5;
  }

  v8 = v7;
LABEL_9:
  filterPredicate = [v8 filterPredicate];

  return filterPredicate;
}

- (void)setFilterPredicate:(id)predicate
{
  predicateCopy = predicate;
  selfCopy = self;
  sub_1A49A5E60(predicate);
}

- (BOOL)includeOthersInSocialGroupAssets
{
  selfCopy = self;
  v3 = sub_1A49A4D68(&selRef_includeOthersInSocialGroupAssets);

  return v3;
}

- (void)setIncludeOthersInSocialGroupAssets:(BOOL)assets
{
  selfCopy = self;
  sub_1A49A4F64(assets, &selRef_setIncludeOthersInSocialGroupAssets_);
}

- (NSArray)sortDescriptors
{
  selfCopy = self;
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

- (void)setSortDescriptors:(id)descriptors
{
  if (descriptors)
  {
    sub_1A3C52C70(0, &qword_1EB126B60);
    v4 = sub_1A524CA34();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  sub_1A49A5F2C(v4);
}

- (BOOL)isReverseSortOrder
{
  selfCopy = self;
  v3 = sub_1A49A4D68(&selRef_isReverseSortOrder);

  return v3;
}

- (void)setReverseSortOrder:(BOOL)order
{
  orderCopy = order;
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR___PXConcatenatingAssetsDataSourceManager_dataSourceManagers);
  if (v4 >> 62)
  {
    selfCopy = self;
    v5 = sub_1A524E2B4();
    self = selfCopy;
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
    selfCopy2 = self;
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

- (void)setFilterPredicate:(id)predicate provideIncrementalChangeDetailsForAssetCollections:(id)collections
{
  if (collections)
  {
    v6 = sub_1A524CF44();
  }

  else
  {
    v6 = 0;
  }

  predicateCopy = predicate;
  selfCopy = self;
  sub_1A49A5030(predicate, v6);
}

- (void)setIncludeOthersInSocialGroupAssets:(BOOL)assets provideIncrementalChangeDetailsForAssetCollections:(id)collections
{
  if (collections)
  {
    v6 = sub_1A524CF44();
  }

  else
  {
    v6 = 0;
  }

  selfCopy = self;
  sub_1A49A51D4(assets, v6);
}

- (void)setAllowedUUIDs:(id)ds
{
  if (ds)
  {
    v4 = sub_1A524CF44();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  sub_1A49A549C(v4);
}

- (void)setAllowedUUIDs:(id)ds manualOrderUUIDs:(id)iDs forAssetCollections:(id)collections
{
  sub_1A4892848();
  sub_1A524C3E4();
  sub_1A3FC306C(0, &qword_1EB126ED0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1A524C3E4();
  sub_1A3C5D0E8(0, &qword_1EB120790);
  sub_1A524CA34();
  selfCopy = self;
  sub_1A49A562C();
}

- (void)setAllowedUUIDs:(id)ds provideIncrementalChangeDetailsForAssetCollections:(id)collections
{
  v6 = sub_1A524CF44();
  if (collections)
  {
    collections = sub_1A524CF44();
  }

  selfCopy = self;
  sub_1A49A58D8(v6, collections);
}

- (PXConcatenatingAssetsDataSourceManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end