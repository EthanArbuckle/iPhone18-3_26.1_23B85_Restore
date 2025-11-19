@interface PXImportAssetActionManager
- (BOOL)canPerformActionType:(id)a3;
- (PXImportAssetActionManager)initWithImportItem:(id)a3 importController:(id)a4;
- (PXImportAssetActionManager)initWithSelectionManager:(id)a3;
- (id)actionPerformerForActionType:(id)a3;
@end

@implementation PXImportAssetActionManager

- (PXImportAssetActionManager)initWithImportItem:(id)a3 importController:(id)a4
{
  *(&self->super.super.super.isa + OBJC_IVAR___PXImportAssetActionManager_importItem) = a3;
  *(&self->super.super.super.isa + OBJC_IVAR___PXImportAssetActionManager_importController) = a4;
  v9.receiver = self;
  v9.super_class = type metadata accessor for ImportAssetActionManager();
  v6 = a3;
  v7 = a4;
  return [(PXImportAssetActionManager *)&v9 initWithSelectionManager:0];
}

- (BOOL)canPerformActionType:(id)a3
{
  v4 = sub_1A524C674();
  v6 = v5;
  if (v4 == sub_1A524C674() && v6 == v7)
  {
    v12 = self;
  }

  else
  {
    v9 = sub_1A524EAB4();
    v10 = self;

    if ((v9 & 1) == 0)
    {
      v11 = 0;
      goto LABEL_10;
    }
  }

  v10 = [*(&self->super.super.super.isa + OBJC_IVAR___PXImportAssetActionManager_importItem) importAsset];

  if (!v10)
  {
    return 0;
  }

  v11 = 1;
LABEL_10:

  return v11;
}

- (id)actionPerformerForActionType:(id)a3
{
  v4 = sub_1A524C674();
  v6 = v5;
  v7 = self;
  v8 = sub_1A404D77C(v4, v6);

  return v8;
}

- (PXImportAssetActionManager)initWithSelectionManager:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end