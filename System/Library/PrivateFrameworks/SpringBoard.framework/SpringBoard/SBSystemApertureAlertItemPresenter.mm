@interface SBSystemApertureAlertItemPresenter
- (SBSystemApertureAlertItemPresenter)initWithSystemApertureController:(id)a3;
- (SBSystemApertureController)systemApertureController;
- (void)dismissAlertItem:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)presentAlertItem:(id)a3 animated:(BOOL)a4 completion:(id)a5;
@end

@implementation SBSystemApertureAlertItemPresenter

- (SBSystemApertureAlertItemPresenter)initWithSystemApertureController:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(SBSystemApertureAlertItemPresenter *)a2 initWithSystemApertureController:?];
  }

  v9.receiver = self;
  v9.super_class = SBSystemApertureAlertItemPresenter;
  v6 = [(SBSystemApertureAlertItemPresenter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_systemApertureController, v5);
  }

  return v7;
}

- (void)presentAlertItem:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v15 = a3;
  v8 = a5;
  BSDispatchQueueAssertMain();
  v9 = [v15 _systemApertureElement];
  if (!v9)
  {
    [SBSystemApertureAlertItemPresenter presentAlertItem:a2 animated:self completion:v15];
  }

  v10 = [(SBSystemApertureAlertItemPresenter *)self systemApertureController];
  v11 = [v10 registerElement:v9];
  if (v11)
  {
    if (!self->_elementsToAssertions)
    {
      v12 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
      elementsToAssertions = self->_elementsToAssertions;
      self->_elementsToAssertions = v12;
    }

    v14 = [(SBSystemApertureAlertItemPresenter *)self elementsToAssertions];
    [v14 setObject:v11 forKey:v9];

    [v15 wakeDisplay];
  }

  if (v8)
  {
    v8[2](v8);
  }
}

- (void)dismissAlertItem:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v13 = a3;
  v8 = a5;
  BSDispatchQueueAssertMain();
  v9 = [v13 _systemApertureElement];
  if (!v9)
  {
    [SBSystemApertureAlertItemPresenter dismissAlertItem:a2 animated:self completion:v13];
  }

  v10 = [(SBSystemApertureAlertItemPresenter *)self elementsToAssertions];
  v11 = [v10 objectForKey:v9];

  if (v11)
  {
    [v11 invalidateWithReason:@"dismissAlertItem"];
    v12 = [(SBSystemApertureAlertItemPresenter *)self elementsToAssertions];
    [v12 removeObjectForKey:v9];
  }

  if (v8)
  {
    v8[2](v8);
  }
}

- (SBSystemApertureController)systemApertureController
{
  WeakRetained = objc_loadWeakRetained(&self->_systemApertureController);

  return WeakRetained;
}

- (void)initWithSystemApertureController:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSystemApertureAlertItemPresenter.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"systemApertureController"}];
}

- (void)presentAlertItem:(uint64_t)a1 animated:(uint64_t)a2 completion:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBSystemApertureAlertItemPresenter.m" lineNumber:48 description:{@"%@ cannot present alert item '%@' that does not have an SAElement", a2, a3}];
}

- (void)dismissAlertItem:(uint64_t)a1 animated:(uint64_t)a2 completion:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBSystemApertureAlertItemPresenter.m" lineNumber:72 description:{@"%@ cannot dismiss alert item '%@' that does not have an SAElement", a2, a3}];
}

@end