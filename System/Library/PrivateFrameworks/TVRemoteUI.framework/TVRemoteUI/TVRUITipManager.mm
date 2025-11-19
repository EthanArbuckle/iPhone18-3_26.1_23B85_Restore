@interface TVRUITipManager
- (BOOL)isPresentingTip;
- (TVRUITipManager)init;
- (_TtC10TVRemoteUI31TipPopoverPresentationConductor)popoverPresentationConductor;
- (void)activate;
- (void)dealloc;
- (void)invalidate:(BOOL)a3 didPerformAction:(BOOL)a4 completion:(id)a5;
- (void)setPopoverPresentationConductor:(id)a3;
- (void)setPopoverPresentationController:(id)a3;
- (void)setTipsViewController:(id)a3;
@end

@implementation TVRUITipManager

- (void)setTipsViewController:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___TVRUITipManager_tipsViewController);
  *(&self->super.isa + OBJC_IVAR___TVRUITipManager_tipsViewController) = a3;
  v3 = a3;
}

- (void)setPopoverPresentationController:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___TVRUITipManager_popoverPresentationController);
  *(&self->super.isa + OBJC_IVAR___TVRUITipManager_popoverPresentationController) = a3;
  v3 = a3;
}

- (_TtC10TVRemoteUI31TipPopoverPresentationConductor)popoverPresentationConductor
{
  v2 = self;
  v3 = TVRUITipManager.popoverPresentationConductor.getter();

  return v3;
}

- (void)setPopoverPresentationConductor:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___TVRUITipManager____lazy_storage___popoverPresentationConductor);
  *(&self->super.isa + OBJC_IVAR___TVRUITipManager____lazy_storage___popoverPresentationConductor) = a3;
  v3 = a3;
}

- (BOOL)isPresentingTip
{
  v2 = [(TVRUITipManager *)self tipsViewController];
  v3 = v2;
  if (v2)
  {
  }

  return v3 != 0;
}

- (void)activate
{
  v2 = self;
  TVRUITipManager.activate()();
}

- (void)invalidate:(BOOL)a3 didPerformAction:(BOOL)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
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

  v9 = self;
  specialized TVRUITipManager.invalidate(_:didPerformAction:completion:)(a4, v7, v8);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed FMR1HapticPattern?, @in_guaranteed Any?) -> ())?(v7);
}

- (void)dealloc
{
  v3 = OBJC_IVAR___TVRUITipManager_tipObservation;
  if (*(&self->super.isa + OBJC_IVAR___TVRUITipManager_tipObservation))
  {
    v4 = self;

    MEMORY[0x26D6B13F0](v5, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
  }

  else
  {
    v6 = self;
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