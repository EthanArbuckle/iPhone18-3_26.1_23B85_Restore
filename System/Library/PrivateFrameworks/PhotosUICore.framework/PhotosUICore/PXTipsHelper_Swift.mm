@interface PXTipsHelper_Swift
+ (BOOL)isTipInvalidated:(id)invalidated;
+ (NSDictionary)presentationDelegates;
+ (uint64_t)setup;
+ (void)setPresentationDelegates:(id)delegates;
+ (void)setTip:(id)tip presentationDelegate:(id)delegate;
- (NSString)presentedTipID;
- (PXTipsHelper_Swift)init;
- (UIViewController)tipPopover;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)setPresentedTipID:(id)d;
- (void)updatePopoverTip:(id)tip sourceRect:(CGRect)rect;
@end

@implementation PXTipsHelper_Swift

- (PXTipsHelper_Swift)init
{
  v3 = (self + OBJC_IVAR___PXTipsHelper_Swift_presentedTipID);
  *v3 = 0;
  v3[1] = 0;
  swift_unknownObjectWeakInit();
  v5.receiver = self;
  v5.super_class = type metadata accessor for PXTipsHelper();
  return [(PXTipsHelper_Swift *)&v5 init];
}

+ (uint64_t)setup
{
  v0 = sub_1A5247654();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1A52476B4();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1A5247684();
  MEMORY[0x1EEE9AC00](v2);
  result = swift_beginAccess();
  if ((byte_1EB1EB550 & 1) == 0)
  {
    result = swift_beginAccess();
    if ((byte_1EB1EB7E1 & 1) == 0)
    {
      byte_1EB1EB550 = 1;
      objc_opt_self();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  return result;
}

+ (BOOL)isTipInvalidated:(id)invalidated
{
  v3 = sub_1A524C674();
  v5 = _s12PhotosUICore12PXTipsHelperC16isTipInvalidatedySbSSFZ_0(v3, v4);

  return v5;
}

+ (NSDictionary)presentationDelegates
{
  swift_beginAccess();
  if (qword_1EB1EB7A0)
  {
    sub_1A3C92704();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return 0;
}

+ (void)setPresentationDelegates:(id)delegates
{
  delegatesCopy = delegates;
  if (delegates)
  {
    sub_1A3C92704();
    delegatesCopy = sub_1A524C3E4();
  }

  swift_beginAccess();
  qword_1EB1EB7A0 = delegatesCopy;
}

- (NSString)presentedTipID
{
  v2 = self + OBJC_IVAR___PXTipsHelper_Swift_presentedTipID;
  swift_beginAccess();
  if (*(v2 + 1))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return 0;
}

- (void)setPresentedTipID:(id)d
{
  if (d)
  {
    v4 = sub_1A524C674();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___PXTipsHelper_Swift_presentedTipID);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (UIViewController)tipPopover
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

+ (void)setTip:(id)tip presentationDelegate:(id)delegate
{
  sub_1A524C674();
  swift_beginAccess();
  if (!qword_1EB1EB7A0)
  {
    qword_1EB1EB7A0 = MEMORY[0x1E69E7CC8];
  }

  swift_beginAccess();
  swift_unknownObjectRetain_n();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

- (void)updatePopoverTip:(id)tip sourceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = sub_1A524C674();
  v11 = v10;
  selfCopy = self;
  v13._countAndFlagsBits = v9;
  v13._object = v11;
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  PXTipsHelper.updatePopoverTip(_:sourceRect:)(v13, v15);
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  _s12PhotosUICore12PXTipsHelperC32presentationControllerDidDismissyySo014UIPresentationF0CF_0();
}

@end