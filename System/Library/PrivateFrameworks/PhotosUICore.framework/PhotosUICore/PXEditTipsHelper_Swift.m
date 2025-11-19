@interface PXEditTipsHelper_Swift
+ (BOOL)isTipValid:(id)a3;
+ (PXEditTipsHelper_Swift)shared;
+ (void)setTip:(id)a3 isPresentable:(BOOL)a4;
+ (void)setTipActionPerformed:(id)a3;
+ (void)setTipsPresentationDelegate:(id)a3;
- (PXEditTipsHelper_Swift)init;
@end

@implementation PXEditTipsHelper_Swift

+ (PXEditTipsHelper_Swift)shared
{
  if (qword_1EB16D3E0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB16D3E8;

  return v3;
}

+ (void)setTipsPresentationDelegate:(id)a3
{
  swift_getObjCClassMetadata();
  swift_unknownObjectRetain();
  static PXEditTipsHelper.setTipsPresentationDelegate(_:)();
}

+ (void)setTip:(id)a3 isPresentable:(BOOL)a4
{
  v4 = a4;
  v5 = sub_1A524C674();
  v7 = v6;
  v8 = sub_1A3FA19C0();
  v9 = *v8 == v5 && v8[1] == v7;
  if (v9 || (sub_1A524EAB4() & 1) != 0)
  {

    sub_1A3FA19EC(v4);
  }

  else
  {
    v10 = sub_1A3FA19CC();
    if (*v10 == v5 && v10[1] == v7)
    {
    }

    else
    {
      v12 = sub_1A524EAB4();

      if ((v12 & 1) == 0)
      {
        return;
      }
    }

    sub_1A3FA2110(v4);
  }
}

+ (void)setTipActionPerformed:(id)a3
{
  v3 = sub_1A524C674();
  _s12PhotosUICore16PXEditTipsHelperC21setTipActionPerformedyySSFZ_0(v3, v4);
}

+ (BOOL)isTipValid:(id)a3
{
  v3 = sub_1A524C674();
  v5 = _s12PhotosUICore16PXEditTipsHelperC10isTipValidySbSSFZ_0(v3, v4);

  return v5;
}

- (PXEditTipsHelper_Swift)init
{
  PXDisplayCollectionDetailedCountsMake(self);
  PXDisplayCollectionDetailedCountsMake(v3);
  self->_anon_0[OBJC_IVAR___PXEditTipsHelper_Swift_hasStartedTips] = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for PXEditTipsHelper();
  return [(PXTipsHelper_Swift *)&v5 init];
}

@end