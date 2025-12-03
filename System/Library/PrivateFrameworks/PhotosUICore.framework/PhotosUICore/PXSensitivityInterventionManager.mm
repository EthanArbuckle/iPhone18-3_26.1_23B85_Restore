@interface PXSensitivityInterventionManager
- (BOOL)canPresentIntervention;
- (BOOL)createInterventionFlow:(id)flow error:(id *)error;
- (PXSensitivityInterventionManager)init;
- (UIViewController)viewControllerToPresent;
- (void)dismissInterventionFlow:(id)flow;
- (void)overrideAnalysisFor:(id)for :(int64_t)a4;
- (void)presentFromViewController:(id)controller completionHandler:(id)handler;
- (void)setAsset:(id)asset;
- (void)setDelegateHandler:(id)handler;
- (void)setInternalInterventionFlow:(id)flow;
@end

@implementation PXSensitivityInterventionManager

- (UIViewController)viewControllerToPresent
{
  internalInterventionFlow = [(PXSensitivityInterventionManager *)self internalInterventionFlow];

  return internalInterventionFlow;
}

- (BOOL)canPresentIntervention
{
  internalInterventionFlow = [(PXSensitivityInterventionManager *)self internalInterventionFlow];
  v3 = internalInterventionFlow;
  if (internalInterventionFlow)
  {
  }

  return v3 != 0;
}

- (void)setInternalInterventionFlow:(id)flow
{
  v4 = *(&self->super.isa + OBJC_IVAR___PXSensitivityInterventionManager_internalInterventionFlow);
  *(&self->super.isa + OBJC_IVAR___PXSensitivityInterventionManager_internalInterventionFlow) = flow;
  flowCopy = flow;
}

- (void)setAsset:(id)asset
{
  v4 = *(&self->super.isa + OBJC_IVAR___PXSensitivityInterventionManager_asset);
  *(&self->super.isa + OBJC_IVAR___PXSensitivityInterventionManager_asset) = asset;
  assetCopy = asset;
}

- (void)setDelegateHandler:(id)handler
{
  v4 = *(&self->super.isa + OBJC_IVAR___PXSensitivityInterventionManager_delegateHandler);
  *(&self->super.isa + OBJC_IVAR___PXSensitivityInterventionManager_delegateHandler) = handler;
  handlerCopy = handler;
}

- (void)presentFromViewController:(id)controller completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  _Block_copy(v6);
  controllerCopy = controller;
  selfCopy = self;
  sub_1A4452A58(controllerCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (BOOL)createInterventionFlow:(id)flow error:(id *)error
{
  flowCopy = flow;
  selfCopy = self;
  sub_1A4451B24(flowCopy);

  return 1;
}

- (void)overrideAnalysisFor:(id)for :(int64_t)a4
{
  forCopy = for;
  selfCopy = self;
  sub_1A4452BAC(forCopy, a4);
}

- (void)dismissInterventionFlow:(id)flow
{
  v4 = _Block_copy(flow);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1A3F3D4CC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_1A445258C(v7, v6);
  sub_1A3C33378(v7);
}

- (PXSensitivityInterventionManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end