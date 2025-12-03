@interface PXGridTipsHelper_Swift
+ (PXGridTipsHelper_Swift)shared;
+ (void)setTip:(id)tip isPresentable:(BOOL)presentable;
+ (void)setTipActionPerformed:(id)performed;
+ (void)setTipsPresentationDelegate:(id)delegate;
- (PXGridTipsHelper_Swift)init;
@end

@implementation PXGridTipsHelper_Swift

+ (void)setTipsPresentationDelegate:(id)delegate
{
  swift_getObjCClassMetadata();
  swift_unknownObjectRetain();
  sub_1A3C91E88();
}

- (PXGridTipsHelper_Swift)init
{
  v3 = PXDisplayCollectionDetailedCountsMake(self);
  v4 = PXDisplayCollectionDetailedCountsMake(v3);
  v5 = PXDisplayCollectionDetailedCountsMake(v4);
  PXDisplayCollectionDetailedCountsMake(v5);
  self->_anon_0[OBJC_IVAR___PXGridTipsHelper_Swift_hasStartedTips] = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for PXGridTipsHelper();
  return [(PXTipsHelper_Swift *)&v7 init];
}

+ (void)setTip:(id)tip isPresentable:(BOOL)presentable
{
  v5 = sub_1A524C674();
  _s12PhotosUICore16PXGridTipsHelperC6setTip_13isPresentableySS_SbtFZ_0(v5, v6, presentable);
}

+ (PXGridTipsHelper_Swift)shared
{
  if (qword_1EB18B130 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB18B138;

  return v3;
}

+ (void)setTipActionPerformed:(id)performed
{
  v3 = sub_1A524C674();
  _s12PhotosUICore16PXGridTipsHelperC21setTipActionPerformedyySSFZ_0(v3, v4);
}

@end