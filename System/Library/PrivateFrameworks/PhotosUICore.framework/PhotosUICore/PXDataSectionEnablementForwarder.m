@interface PXDataSectionEnablementForwarder
- (PXDataSectionEnablementForwarder)initWithSourceDataSectionManager:(id)a3;
- (PXDataSectionManagerEnabling)enablementTarget;
- (void)_updateEnablement;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setEnablementTarget:(id)a3;
@end

@implementation PXDataSectionEnablementForwarder

- (PXDataSectionManagerEnabling)enablementTarget
{
  WeakRetained = objc_loadWeakRetained(&self->_enablementTarget);

  return WeakRetained;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  if (PXDataSectionEnablementForwarderContext == a5)
  {
    [(PXDataSectionEnablementForwarder *)self _updateEnablement:a3];
  }
}

- (void)_updateEnablement
{
  v5 = [(PXDataSectionEnablementForwarder *)self sourceDataSectionManager];
  v3 = [v5 isDataSectionEmpty];
  v4 = [(PXDataSectionEnablementForwarder *)self enablementTarget];
  [v4 setEnabled:v3 ^ 1u];
}

- (void)setEnablementTarget:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_enablementTarget);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_enablementTarget, obj);
    [(PXDataSectionEnablementForwarder *)self _updateEnablement];
    v5 = obj;
  }
}

- (PXDataSectionEnablementForwarder)initWithSourceDataSectionManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXDataSectionEnablementForwarder;
  v6 = [(PXDataSectionEnablementForwarder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sourceDataSectionManager, a3);
    [v5 registerChangeObserver:v7 context:PXDataSectionEnablementForwarderContext];
  }

  return v7;
}

@end