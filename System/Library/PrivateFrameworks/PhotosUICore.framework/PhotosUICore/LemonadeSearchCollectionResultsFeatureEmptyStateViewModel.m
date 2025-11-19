@interface LemonadeSearchCollectionResultsFeatureEmptyStateViewModel
- (NSNumber)numberOfAssetResults;
- (_TtC12PhotosUICore57LemonadeSearchCollectionResultsFeatureEmptyStateViewModel)init;
- (_TtC12PhotosUICore57LemonadeSearchCollectionResultsFeatureEmptyStateViewModel)initWithTitle:(id)a3 message:(id)a4 numberOfAssetResults:(int64_t)a5 actionHandler:(id)a6;
- (id)actionHandler;
- (void)setActionHandler:(id)a3;
- (void)setNumberOfAssetResults:(id)a3;
@end

@implementation LemonadeSearchCollectionResultsFeatureEmptyStateViewModel

- (NSNumber)numberOfAssetResults
{
  KeyPath = swift_getKeyPath();
  v4 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x140);
  v5 = self;
  v4(KeyPath);

  v6 = OBJC_IVAR____TtC12PhotosUICore57LemonadeSearchCollectionResultsFeatureEmptyStateViewModel__numberOfAssetResults;
  swift_beginAccess();
  v7 = *(&v5->super.isa + v6);
  v8 = v7;

  return v7;
}

- (void)setNumberOfAssetResults:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1A3F3BB74(a3);
}

- (id)actionHandler
{
  KeyPath = swift_getKeyPath();
  v4 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x140);
  v5 = self;
  v4(KeyPath);

  v6 = v5 + OBJC_IVAR____TtC12PhotosUICore57LemonadeSearchCollectionResultsFeatureEmptyStateViewModel__actionHandler;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 1);
  sub_1A3C66EE8(v7);

  if (v7)
  {
    aBlock[4] = v7;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_49;
    v7 = _Block_copy(aBlock);
  }

  return v7;
}

- (void)setActionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1A3F3D540;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v11[2] = self;
  v11[3] = v7;
  v11[4] = v6;
  v9 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x148);
  v10 = self;
  v9(KeyPath, sub_1A3F3D544, v11, MEMORY[0x1E69E7CA8] + 8);

  sub_1A3C784D4(v7, v6);
}

- (_TtC12PhotosUICore57LemonadeSearchCollectionResultsFeatureEmptyStateViewModel)initWithTitle:(id)a3 message:(id)a4 numberOfAssetResults:(int64_t)a5 actionHandler:(id)a6
{
  v9 = _Block_copy(a6);
  if (a3)
  {
    a3 = sub_1A524C674();
    v11 = v10;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v13 = 0;
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }

  v11 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  a4 = sub_1A524C674();
  v13 = v12;
  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_4:
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  v9 = sub_1A3F3D4CC;
LABEL_8:
  v15 = sub_1A3F3D1B4(a3, v11, a4, v13, a5, v9, v14);
  sub_1A3C784D4(v9, v14);
  return v15;
}

- (_TtC12PhotosUICore57LemonadeSearchCollectionResultsFeatureEmptyStateViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end