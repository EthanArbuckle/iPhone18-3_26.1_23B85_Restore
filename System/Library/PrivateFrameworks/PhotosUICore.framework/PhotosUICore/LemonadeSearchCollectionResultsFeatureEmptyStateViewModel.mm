@interface LemonadeSearchCollectionResultsFeatureEmptyStateViewModel
- (NSNumber)numberOfAssetResults;
- (_TtC12PhotosUICore57LemonadeSearchCollectionResultsFeatureEmptyStateViewModel)init;
- (_TtC12PhotosUICore57LemonadeSearchCollectionResultsFeatureEmptyStateViewModel)initWithTitle:(id)title message:(id)message numberOfAssetResults:(int64_t)results actionHandler:(id)handler;
- (id)actionHandler;
- (void)setActionHandler:(id)handler;
- (void)setNumberOfAssetResults:(id)results;
@end

@implementation LemonadeSearchCollectionResultsFeatureEmptyStateViewModel

- (NSNumber)numberOfAssetResults
{
  KeyPath = swift_getKeyPath();
  v4 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x140);
  selfCopy = self;
  v4(KeyPath);

  v6 = OBJC_IVAR____TtC12PhotosUICore57LemonadeSearchCollectionResultsFeatureEmptyStateViewModel__numberOfAssetResults;
  swift_beginAccess();
  v7 = *(&selfCopy->super.isa + v6);
  v8 = v7;

  return v7;
}

- (void)setNumberOfAssetResults:(id)results
{
  resultsCopy = results;
  selfCopy = self;
  sub_1A3F3BB74(results);
}

- (id)actionHandler
{
  KeyPath = swift_getKeyPath();
  v4 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x140);
  selfCopy = self;
  v4(KeyPath);

  v6 = selfCopy + OBJC_IVAR____TtC12PhotosUICore57LemonadeSearchCollectionResultsFeatureEmptyStateViewModel__actionHandler;
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

- (void)setActionHandler:(id)handler
{
  v4 = _Block_copy(handler);
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
  selfCopy = self;
  v9(KeyPath, sub_1A3F3D544, v11, MEMORY[0x1E69E7CA8] + 8);

  sub_1A3C784D4(v7, v6);
}

- (_TtC12PhotosUICore57LemonadeSearchCollectionResultsFeatureEmptyStateViewModel)initWithTitle:(id)title message:(id)message numberOfAssetResults:(int64_t)results actionHandler:(id)handler
{
  v9 = _Block_copy(handler);
  if (title)
  {
    title = sub_1A524C674();
    v11 = v10;
    if (message)
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
  if (!message)
  {
    goto LABEL_6;
  }

LABEL_3:
  message = sub_1A524C674();
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
  v15 = sub_1A3F3D1B4(title, v11, message, v13, results, v9, v14);
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