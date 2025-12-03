@interface PXPhotosGridToggleFaceModeActionPerformer
- (NSString)activitySystemImageName;
- (NSString)activityType;
- (PXPhotosGridToggleFaceModeActionPerformer)initWithViewModel:(id)model actionType:(id)type;
- (id)localizedTitleForUseCase:(unint64_t)case;
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
  selfCopy = self;
  viewModel = [(PXPhotosGridActionPerformer *)selfCopy viewModel];
  isFaceModeEnabled = [(PXPhotosViewModel *)viewModel isFaceModeEnabled];

  return isFaceModeEnabled;
}

- (id)localizedTitleForUseCase:(unint64_t)case
{
  selfCopy = self;
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
  selfCopy = self;
  viewModel = [(PXPhotosGridActionPerformer *)selfCopy viewModel];
  v5[4] = sub_1A4930F28;
  v5[5] = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1A3D7692C;
  v5[3] = &block_descriptor_3_11;
  v4 = _Block_copy(v5);
  [(PXPhotosViewModel *)viewModel performChanges:v4];

  _Block_release(v4);
}

- (PXPhotosGridToggleFaceModeActionPerformer)initWithViewModel:(id)model actionType:(id)type
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(PXPhotosGridActionPerformer *)&v7 initWithViewModel:model actionType:type];
}

@end