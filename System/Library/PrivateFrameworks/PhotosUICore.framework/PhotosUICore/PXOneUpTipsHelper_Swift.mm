@interface PXOneUpTipsHelper_Swift
+ (PXOneUpTipsHelper_Swift)shared;
+ (void)setTip:(id)a3 isPresentable:(BOOL)a4;
+ (void)setTipActionPerformed:(id)a3;
+ (void)setTipsPresentationDelegate:(id)a3;
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

+ (void)setTipsPresentationDelegate:(id)a3
{
  swift_getObjCClassMetadata();
  swift_unknownObjectRetain();
  sub_1A40A6980();
}

+ (void)setTip:(id)a3 isPresentable:(BOOL)a4
{
  v5 = sub_1A524C674();
  _s12PhotosUICore17PXOneUpTipsHelperC6setTip_13isPresentableySS_SbtFZ_0(v5, v6, a4);
}

+ (void)setTipActionPerformed:(id)a3
{
  v3 = sub_1A524C674();
  _s12PhotosUICore17PXOneUpTipsHelperC21setTipActionPerformedyySSFZ_0(v3, v4);
}

@end