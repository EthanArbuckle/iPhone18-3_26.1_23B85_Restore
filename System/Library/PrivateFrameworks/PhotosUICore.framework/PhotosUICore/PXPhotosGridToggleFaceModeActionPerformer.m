@interface PXPhotosGridToggleFaceModeActionPerformer
- (NSString)activitySystemImageName;
- (NSString)activityType;
- (PXPhotosGridToggleFaceModeActionPerformer)initWithViewModel:(id)a3 actionType:(id)a4;
- (id)localizedTitleForUseCase:(unint64_t)a3;
- (int64_t)menuElementState;
- (void)performUserInteractionTask;
@end

@implementation PXPhotosGridToggleFaceModeActionPerformer

- (NSString)activityType
{
  sub_1A524C674();
  v2 = sub_1A524C634();

  return v2;
}

- (NSString)activitySystemImageName
{
  v2 = sub_1A524C634();

  return v2;
}

- (int64_t)menuElementState
{
  v2 = self;
  v3 = [(PXPhotosGridActionPerformer *)v2 viewModel];
  v4 = [(PXPhotosViewModel *)v3 isFaceModeEnabled];

  return v4;
}

- (id)localizedTitleForUseCase:(unint64_t)a3
{
  v3 = self;
  sub_1A49310A0();
  v5 = v4;

  if (v5)
  {
    v6 = sub_1A524C634();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)performUserInteractionTask
{
  v2 = self;
  v3 = [(PXPhotosGridActionPerformer *)v2 viewModel];
  v5[4] = sub_1A4930F28;
  v5[5] = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1A3D7692C;
  v5[3] = &block_descriptor_3_11;
  v4 = _Block_copy(v5);
  [(PXPhotosViewModel *)v3 performChanges:v4];

  _Block_release(v4);
}

- (PXPhotosGridToggleFaceModeActionPerformer)initWithViewModel:(id)a3 actionType:(id)a4
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(PXPhotosGridActionPerformer *)&v7 initWithViewModel:a3 actionType:a4];
}

@end