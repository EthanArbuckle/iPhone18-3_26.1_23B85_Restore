@interface PXPhotosGridSearchCentralizedFeedbackNegativeFeedbackActionPerformer
- (NSString)activitySystemImageName;
- (id)localizedTitleForUseCase:(unint64_t)case;
- (void)performUserInteractionTask;
@end

@implementation PXPhotosGridSearchCentralizedFeedbackNegativeFeedbackActionPerformer

- (id)localizedTitleForUseCase:(unint64_t)case
{
  sub_1A3C38BD4();
  v3 = sub_1A524C634();

  return v3;
}

- (NSString)activitySystemImageName
{
  v2 = sub_1A524C634();

  return v2;
}

- (void)performUserInteractionTask
{
  selfCopy = self;
  sub_1A4A3A5C4(&unk_1F1735828, sub_1A4A3B308, &block_descriptor_6_14);
}

@end