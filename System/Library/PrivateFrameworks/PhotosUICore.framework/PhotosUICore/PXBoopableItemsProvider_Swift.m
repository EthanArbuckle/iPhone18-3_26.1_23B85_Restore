@interface PXBoopableItemsProvider_Swift
- (NSArray)assets;
- (NSArray)itemProvidersForActivityItemsConfiguration;
- (PXMediaProvider)imagePreviewMediaProvider;
- (PXSectionedSelectionManager)selectionManager;
- (id)activityItemsConfigurationMetadataForItemAtIndex:(int64_t)a3 key:(id)a4;
- (id)activityItemsConfigurationMetadataForKey:(id)a3;
- (id)activityItemsConfigurationPreviewForItemAtIndex:(int64_t)a3 intent:(id)a4 suggestedSize:(CGSize)a5;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setAssets:(id)a3;
- (void)setImagePreviewMediaProvider:(id)a3;
- (void)setSelectionManager:(id)a3;
@end

@implementation PXBoopableItemsProvider_Swift

- (PXSectionedSelectionManager)selectionManager
{
  v3 = OBJC_IVAR___PXBoopableItemsProvider_Swift_selectionManager;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSelectionManager:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1A49245D8();
  v7 = OBJC_IVAR___PXBoopableItemsProvider_Swift_selectionManager;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = a3;
  v9 = v5;

  sub_1A492150C();
}

- (NSArray)assets
{
  swift_beginAccess();
  sub_1A3C52C70(0, &qword_1EB126660);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

- (void)setAssets:(id)a3
{
  sub_1A3C52C70(0, &qword_1EB126660);
  v4 = sub_1A524CA34();
  v5 = self;
  sub_1A4921A98(v4);
  v6 = OBJC_IVAR___PXBoopableItemsProvider_Swift_assets;
  swift_beginAccess();
  *(v5 + v6) = v4;
}

- (PXMediaProvider)imagePreviewMediaProvider
{
  v3 = OBJC_IVAR___PXBoopableItemsProvider_Swift_imagePreviewMediaProvider;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setImagePreviewMediaProvider:(id)a3
{
  v5 = OBJC_IVAR___PXBoopableItemsProvider_Swift_imagePreviewMediaProvider;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (NSArray)itemProvidersForActivityItemsConfiguration
{
  v2 = self;
  sub_1A4922444();

  sub_1A3C52C70(0, &qword_1EB120AD0);
  v3 = sub_1A524CA14();

  return v3;
}

- (id)activityItemsConfigurationMetadataForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1A4922A38();
}

- (id)activityItemsConfigurationMetadataForItemAtIndex:(int64_t)a3 key:(id)a4
{
  v5 = *((*MEMORY[0x1E69E7D40] & *self) + 0xC0);
  v6 = a4;
  v7 = self;
  v5(v16, v6);

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

- (id)activityItemsConfigurationPreviewForItemAtIndex:(int64_t)a3 intent:(id)a4 suggestedSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v9 = a4;
  v10 = self;
  v11 = sub_1A492479C(a3, width, height);

  return v11;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v5 = a4;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    if (v5)
    {
      v9 = v8;
      v10 = a3;
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