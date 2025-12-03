@interface PXBoopableItemsProvider_Swift
- (NSArray)assets;
- (NSArray)itemProvidersForActivityItemsConfiguration;
- (PXMediaProvider)imagePreviewMediaProvider;
- (PXSectionedSelectionManager)selectionManager;
- (id)activityItemsConfigurationMetadataForItemAtIndex:(int64_t)index key:(id)key;
- (id)activityItemsConfigurationMetadataForKey:(id)key;
- (id)activityItemsConfigurationPreviewForItemAtIndex:(int64_t)index intent:(id)intent suggestedSize:(CGSize)size;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setAssets:(id)assets;
- (void)setImagePreviewMediaProvider:(id)provider;
- (void)setSelectionManager:(id)manager;
@end

@implementation PXBoopableItemsProvider_Swift

- (PXSectionedSelectionManager)selectionManager
{
  v3 = OBJC_IVAR___PXBoopableItemsProvider_Swift_selectionManager;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSelectionManager:(id)manager
{
  managerCopy = manager;
  selfCopy = self;
  sub_1A49245D8();
  v7 = OBJC_IVAR___PXBoopableItemsProvider_Swift_selectionManager;
  swift_beginAccess();
  v8 = *(selfCopy + v7);
  *(selfCopy + v7) = manager;
  v9 = managerCopy;

  sub_1A492150C();
}

- (NSArray)assets
{
  swift_beginAccess();
  sub_1A3C52C70(0, &qword_1EB126660);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

- (void)setAssets:(id)assets
{
  sub_1A3C52C70(0, &qword_1EB126660);
  v4 = sub_1A524CA34();
  selfCopy = self;
  sub_1A4921A98(v4);
  v6 = OBJC_IVAR___PXBoopableItemsProvider_Swift_assets;
  swift_beginAccess();
  *(selfCopy + v6) = v4;
}

- (PXMediaProvider)imagePreviewMediaProvider
{
  v3 = OBJC_IVAR___PXBoopableItemsProvider_Swift_imagePreviewMediaProvider;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setImagePreviewMediaProvider:(id)provider
{
  v5 = OBJC_IVAR___PXBoopableItemsProvider_Swift_imagePreviewMediaProvider;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = provider;
  providerCopy = provider;
}

- (NSArray)itemProvidersForActivityItemsConfiguration
{
  selfCopy = self;
  sub_1A4922444();

  sub_1A3C52C70(0, &qword_1EB120AD0);
  v3 = sub_1A524CA14();

  return v3;
}

- (id)activityItemsConfigurationMetadataForKey:(id)key
{
  keyCopy = key;
  selfCopy = self;
  sub_1A4922A38();
}

- (id)activityItemsConfigurationMetadataForItemAtIndex:(int64_t)index key:(id)key
{
  v5 = *((*MEMORY[0x1E69E7D40] & *self) + 0xC0);
  keyCopy = key;
  selfCopy = self;
  v5(v16, keyCopy);

  v8 = v17;
  if (v17)
  {
    v9 = __swift_project_boxed_opaque_existential_1(v16, v17);
    v10 = *(v8 - 8);
    v11 = MEMORY[0x1EEE9AC00](v9);
    v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v11);
    v14 = sub_1A524EA94();
    (*(v10 + 8))(v13, v8);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)activityItemsConfigurationPreviewForItemAtIndex:(int64_t)index intent:(id)intent suggestedSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  intentCopy = intent;
  selfCopy = self;
  v11 = sub_1A492479C(index, width, height);

  return v11;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    if (changeCopy)
    {
      v9 = v8;
      observableCopy = observable;
      self;
      sub_1A4923284([v9 selectionSnapshot]);
    }
  }

  else
  {
    sub_1A524E6E4();
    __break(1u);
  }
}

@end