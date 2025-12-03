@interface TVRUITipManager
- (BOOL)isPresentingTip;
- (TVRUITipManager)init;
- (_TtC10TVRemoteUI31TipPopoverPresentationConductor)popoverPresentationConductor;
- (void)activate;
- (void)dealloc;
- (void)invalidate:(BOOL)invalidate didPerformAction:(BOOL)action completion:(id)completion;
- (void)setPopoverPresentationConductor:(id)conductor;
- (void)setPopoverPresentationController:(id)controller;
- (void)setTipsViewController:(id)controller;
@end

@implementation TVRUITipManager

- (void)setTipsViewController:(id)controller
{
  v4 = *(&self->super.isa + OBJC_IVAR___TVRUITipManager_tipsViewController);
  *(&self->super.isa + OBJC_IVAR___TVRUITipManager_tipsViewController) = controller;
  controllerCopy = controller;
}

- (void)setPopoverPresentationController:(id)controller
{
  v4 = *(&self->super.isa + OBJC_IVAR___TVRUITipManager_popoverPresentationController);
  *(&self->super.isa + OBJC_IVAR___TVRUITipManager_popoverPresentationController) = controller;
  controllerCopy = controller;
}

- (_TtC10TVRemoteUI31TipPopoverPresentationConductor)popoverPresentationConductor
{
  selfCopy = self;
  v3 = TVRUITipManager.popoverPresentationConductor.getter();

  return v3;
}

- (void)setPopoverPresentationConductor:(id)conductor
{
  v4 = *(&self->super.isa + OBJC_IVAR___TVRUITipManager____lazy_storage___popoverPresentationConductor);
  *(&self->super.isa + OBJC_IVAR___TVRUITipManager____lazy_storage___popoverPresentationConductor) = conductor;
  conductorCopy = conductor;
}

- (BOOL)isPresentingTip
{
  tipsViewController = [(TVRUITipManager *)self tipsViewController];
  v3 = tipsViewController;
  if (tipsViewController)
  {
  }

  return v3 != 0;
}

- (void)activate
{
  selfCopy = self;
  TVRUITipManager.activate()();
}

- (void)invalidate:(BOOL)invalidate didPerformAction:(BOOL)action completion:(id)completion
{
  v7 = _Block_copy(completion);
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v7 = _sIeyB_Ieg_TRTA_0;
  }

  else
  {
    v8 = 0;
  }

  selfCopy = self;
  specialized TVRUITipManager.invalidate(_:didPerformAction:completion:)(action, v7, v8);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed FMR1HapticPattern?, @in_guaranteed Any?) -> ())?(v7);
}

- (void)dealloc
{
  v3 = OBJC_IVAR___TVRUITipManager_tipObservation;
  if (*(&self->super.isa + OBJC_IVAR___TVRUITipManager_tipObservation))
  {
    selfCopy = self;

    MEMORY[0x26D6B13F0](v5, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
  }

  else
  {
    selfCopy2 = self;
  }

  *(&self->super.isa + v3) = 0;

  v7.receiver = self;
  v7.super_class = TVRUITipManager;
  [(TVRUITipManager *)&v7 dealloc];
}

- (TVRUITipManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end