@interface PXSensitivityInterventionManager
- (BOOL)canPresentIntervention;
- (BOOL)createInterventionFlow:(id)a3 error:(id *)a4;
- (PXSensitivityInterventionManager)init;
- (UIViewController)viewControllerToPresent;
- (void)dismissInterventionFlow:(id)a3;
- (void)overrideAnalysisFor:(id)a3 :(int64_t)a4;
- (void)presentFromViewController:(id)a3 completionHandler:(id)a4;
- (void)setAsset:(id)a3;
- (void)setDelegateHandler:(id)a3;
- (void)setInternalInterventionFlow:(id)a3;
@end

@implementation PXSensitivityInterventionManager

- (UIViewController)viewControllerToPresent
{
  v2 = [(PXSensitivityInterventionManager *)self internalInterventionFlow];

  return v2;
}

- (BOOL)canPresentIntervention
{
  v2 = [(PXSensitivityInterventionManager *)self internalInterventionFlow];
  v3 = v2;
  if (v2)
  {
  }

  return v3 != 0;
}

- (void)setInternalInterventionFlow:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___PXSensitivityInterventionManager_internalInterventionFlow);
  *(&self->super.isa + OBJC_IVAR___PXSensitivityInterventionManager_internalInterventionFlow) = a3;
  v3 = a3;
}

- (void)setAsset:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___PXSensitivityInterventionManager_asset);
  *(&self->super.isa + OBJC_IVAR___PXSensitivityInterventionManager_asset) = a3;
  v3 = a3;
}

- (void)setDelegateHandler:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___PXSensitivityInterventionManager_delegateHandler);
  *(&self->super.isa + OBJC_IVAR___PXSensitivityInterventionManager_delegateHandler) = a3;
  v3 = a3;
}

- (void)presentFromViewController:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_1A4452A58(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (BOOL)createInterventionFlow:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  sub_1A4451B24(v5);

  return 1;
}

- (void)overrideAnalysisFor:(id)a3 :(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_1A4452BAC(v6, a4);
}

- (void)dismissInterventionFlow:(id)a3
{
  v4 = _Block_copy(a3);
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

  v8 = self;
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