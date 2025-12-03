@interface PXImportAssetActionManager
- (BOOL)canPerformActionType:(id)type;
- (PXImportAssetActionManager)initWithImportItem:(id)item importController:(id)controller;
- (PXImportAssetActionManager)initWithSelectionManager:(id)manager;
- (id)actionPerformerForActionType:(id)type;
@end

@implementation PXImportAssetActionManager

- (PXImportAssetActionManager)initWithImportItem:(id)item importController:(id)controller
{
  *(&self->super.super.super.isa + OBJC_IVAR___PXImportAssetActionManager_importItem) = item;
  *(&self->super.super.super.isa + OBJC_IVAR___PXImportAssetActionManager_importController) = controller;
  v9.receiver = self;
  v9.super_class = type metadata accessor for ImportAssetActionManager();
  itemCopy = item;
  controllerCopy = controller;
  return [(PXImportAssetActionManager *)&v9 initWithSelectionManager:0];
}

- (BOOL)canPerformActionType:(id)type
{
  v4 = sub_1A524C674();
  v6 = v5;
  if (v4 == sub_1A524C674() && v6 == v7)
  {
    selfCopy = self;
  }

  else
  {
    v9 = sub_1A524EAB4();
    selfCopy2 = self;

    if ((v9 & 1) == 0)
    {
      v11 = 0;
      goto LABEL_10;
    }
  }

  selfCopy2 = [*(&self->super.super.super.isa + OBJC_IVAR___PXImportAssetActionManager_importItem) importAsset];

  if (!selfCopy2)
  {
    return 0;
  }

  v11 = 1;
LABEL_10:

  return v11;
}

- (id)actionPerformerForActionType:(id)type
{
  v4 = sub_1A524C674();
  v6 = v5;
  selfCopy = self;
  v8 = sub_1A404D77C(v4, v6);

  return v8;
}

- (PXImportAssetActionManager)initWithSelectionManager:(id)manager
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end