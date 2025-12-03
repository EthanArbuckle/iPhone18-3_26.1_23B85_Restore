@interface PXDataSectionEnablementForwarder
- (PXDataSectionEnablementForwarder)initWithSourceDataSectionManager:(id)manager;
- (PXDataSectionManagerEnabling)enablementTarget;
- (void)_updateEnablement;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setEnablementTarget:(id)target;
@end

@implementation PXDataSectionEnablementForwarder

- (PXDataSectionManagerEnabling)enablementTarget
{
  WeakRetained = objc_loadWeakRetained(&self->_enablementTarget);

  return WeakRetained;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  if (PXDataSectionEnablementForwarderContext == context)
  {
    [(PXDataSectionEnablementForwarder *)self _updateEnablement:observable];
  }
}

- (void)_updateEnablement
{
  sourceDataSectionManager = [(PXDataSectionEnablementForwarder *)self sourceDataSectionManager];
  isDataSectionEmpty = [sourceDataSectionManager isDataSectionEmpty];
  enablementTarget = [(PXDataSectionEnablementForwarder *)self enablementTarget];
  [enablementTarget setEnabled:isDataSectionEmpty ^ 1u];
}

- (void)setEnablementTarget:(id)target
{
  obj = target;
  WeakRetained = objc_loadWeakRetained(&self->_enablementTarget);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_enablementTarget, obj);
    [(PXDataSectionEnablementForwarder *)self _updateEnablement];
    v5 = obj;
  }
}

- (PXDataSectionEnablementForwarder)initWithSourceDataSectionManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = PXDataSectionEnablementForwarder;
  v6 = [(PXDataSectionEnablementForwarder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sourceDataSectionManager, manager);
    [managerCopy registerChangeObserver:v7 context:PXDataSectionEnablementForwarderContext];
  }

  return v7;
}

@end