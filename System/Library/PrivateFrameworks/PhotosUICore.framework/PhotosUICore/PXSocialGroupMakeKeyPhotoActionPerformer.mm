@interface PXSocialGroupMakeKeyPhotoActionPerformer
+ (BOOL)canPerformWithActionManager:(id)a3;
+ (id)createPreviewActionWithTitle:(id)a3 image:(id)a4 handler:(id)a5;
+ (id)localizedTitleForUseCase:(unint64_t)a3 actionManager:(id)a4;
+ (id)systemImageNameForActionManager:(id)a3;
- (PXSocialGroupMakeKeyPhotoActionPerformer)initWithActionType:(id)a3;
- (void)performBackgroundTask;
@end

@implementation PXSocialGroupMakeKeyPhotoActionPerformer

- (void)performBackgroundTask
{
  v2 = self;
  sub_1A45ECC28();
}

+ (BOOL)canPerformWithActionManager:(id)a3
{
  v3 = [a3 socialGroup];
  v4 = v3;
  if (v3)
  {
  }

  return v4 != 0;
}

+ (id)localizedTitleForUseCase:(unint64_t)a3 actionManager:(id)a4
{
  sub_1A3C38BD4();
  v4 = sub_1A524C634();

  return v4;
}

+ (id)systemImageNameForActionManager:(id)a3
{
  v3 = sub_1A524C634();

  return v3;
}

+ (id)createPreviewActionWithTitle:(id)a3 image:(id)a4 handler:(id)a5
{
  v6 = _Block_copy(a5);
  sub_1A524C674();
  *(swift_allocObject() + 16) = v6;
  sub_1A3C52C70(0, &qword_1EB126590);
  v7 = a4;
  v8 = sub_1A524DC64();

  return v8;
}

- (PXSocialGroupMakeKeyPhotoActionPerformer)initWithActionType:(id)a3
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(PXActionPerformer *)&v5 initWithActionType:a3];
}

@end