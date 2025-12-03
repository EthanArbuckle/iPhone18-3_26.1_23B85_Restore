@interface SBSystemApertureAlertItemPresenter
- (SBSystemApertureAlertItemPresenter)initWithSystemApertureController:(id)controller;
- (SBSystemApertureController)systemApertureController;
- (void)dismissAlertItem:(id)item animated:(BOOL)animated completion:(id)completion;
- (void)presentAlertItem:(id)item animated:(BOOL)animated completion:(id)completion;
@end

@implementation SBSystemApertureAlertItemPresenter

- (SBSystemApertureAlertItemPresenter)initWithSystemApertureController:(id)controller
{
  controllerCopy = controller;
  if (!controllerCopy)
  {
    [(SBSystemApertureAlertItemPresenter *)a2 initWithSystemApertureController:?];
  }

  v9.receiver = self;
  v9.super_class = SBSystemApertureAlertItemPresenter;
  v6 = [(SBSystemApertureAlertItemPresenter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_systemApertureController, controllerCopy);
  }

  return v7;
}

- (void)presentAlertItem:(id)item animated:(BOOL)animated completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  BSDispatchQueueAssertMain();
  _systemApertureElement = [itemCopy _systemApertureElement];
  if (!_systemApertureElement)
  {
    [SBSystemApertureAlertItemPresenter presentAlertItem:a2 animated:self completion:itemCopy];
  }

  systemApertureController = [(SBSystemApertureAlertItemPresenter *)self systemApertureController];
  v11 = [systemApertureController registerElement:_systemApertureElement];
  if (v11)
  {
    if (!self->_elementsToAssertions)
    {
      weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
      elementsToAssertions = self->_elementsToAssertions;
      self->_elementsToAssertions = weakToStrongObjectsMapTable;
    }

    elementsToAssertions = [(SBSystemApertureAlertItemPresenter *)self elementsToAssertions];
    [elementsToAssertions setObject:v11 forKey:_systemApertureElement];

    [itemCopy wakeDisplay];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)dismissAlertItem:(id)item animated:(BOOL)animated completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  BSDispatchQueueAssertMain();
  _systemApertureElement = [itemCopy _systemApertureElement];
  if (!_systemApertureElement)
  {
    [SBSystemApertureAlertItemPresenter dismissAlertItem:a2 animated:self completion:itemCopy];
  }

  elementsToAssertions = [(SBSystemApertureAlertItemPresenter *)self elementsToAssertions];
  v11 = [elementsToAssertions objectForKey:_systemApertureElement];

  if (v11)
  {
    [v11 invalidateWithReason:@"dismissAlertItem"];
    elementsToAssertions2 = [(SBSystemApertureAlertItemPresenter *)self elementsToAssertions];
    [elementsToAssertions2 removeObjectForKey:_systemApertureElement];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
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