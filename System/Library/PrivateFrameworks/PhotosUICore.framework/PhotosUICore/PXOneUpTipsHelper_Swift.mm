@interface PXOneUpTipsHelper_Swift
+ (PXOneUpTipsHelper_Swift)shared;
+ (void)setTip:(id)tip isPresentable:(BOOL)presentable;
+ (void)setTipActionPerformed:(id)performed;
+ (void)setTipsPresentationDelegate:(id)delegate;
@end

@implementation PXOneUpTipsHelper_Swift

+ (PXOneUpTipsHelper_Swift)shared
{
  if (qword_1EB194520 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB194528;

  return v3;
}

+ (void)setTipsPresentationDelegate:(id)delegate
{
  swift_getObjCClassMetadata();
  swift_unknownObjectRetain();
  sub_1A40A6980();
}

+ (void)setTip:(id)tip isPresentable:(BOOL)presentable
{
  v5 = sub_1A524C674();
  _s12PhotosUICore17PXOneUpTipsHelperC6setTip_13isPresentableySS_SbtFZ_0(v5, v6, presentable);
}

+ (void)setTipActionPerformed:(id)performed
{
  v3 = sub_1A524C674();
  _s12PhotosUICore17PXOneUpTipsHelperC21setTipActionPerformedyySSFZ_0(v3, v4);
}

@end