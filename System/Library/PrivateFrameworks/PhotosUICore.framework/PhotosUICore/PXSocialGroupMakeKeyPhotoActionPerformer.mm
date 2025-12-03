@interface PXSocialGroupMakeKeyPhotoActionPerformer
+ (BOOL)canPerformWithActionManager:(id)manager;
+ (id)createPreviewActionWithTitle:(id)title image:(id)image handler:(id)handler;
+ (id)localizedTitleForUseCase:(unint64_t)case actionManager:(id)manager;
+ (id)systemImageNameForActionManager:(id)manager;
- (PXSocialGroupMakeKeyPhotoActionPerformer)initWithActionType:(id)type;
- (void)performBackgroundTask;
@end

@implementation PXSocialGroupMakeKeyPhotoActionPerformer

- (void)performBackgroundTask
{
  selfCopy = self;
  sub_1A45ECC28();
}

+ (BOOL)canPerformWithActionManager:(id)manager
{
  socialGroup = [manager socialGroup];
  v4 = socialGroup;
  if (socialGroup)
  {
  }

  return v4 != 0;
}

+ (id)localizedTitleForUseCase:(unint64_t)case actionManager:(id)manager
{
  sub_1A3C38BD4();
  v4 = sub_1A524C634();

  return v4;
}

+ (id)systemImageNameForActionManager:(id)manager
{
  v3 = sub_1A524C634();

  return v3;
}

+ (id)createPreviewActionWithTitle:(id)title image:(id)image handler:(id)handler
{
  v6 = _Block_copy(handler);
  sub_1A524C674();
  *(swift_allocObject() + 16) = v6;
  sub_1A3C52C70(0, &qword_1EB126590);
  imageCopy = image;
  v8 = sub_1A524DC64();

  return v8;
}

- (PXSocialGroupMakeKeyPhotoActionPerformer)initWithActionType:(id)type
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(PXActionPerformer *)&v5 initWithActionType:type];
}

@end