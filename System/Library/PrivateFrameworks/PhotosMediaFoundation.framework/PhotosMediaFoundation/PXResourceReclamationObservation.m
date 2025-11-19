@interface PXResourceReclamationObservation
+ (id)new;
- (PXAVResourceReclamationController)controller;
- (PXResourceReclamationObservation)init;
- (PXResourceReclamationObservation)initWithController:(id)a3 weakTarget:(id)a4 selector:(SEL)a5;
- (void)resourceReclamationEventDidOccur:(id)a3;
@end

@implementation PXResourceReclamationObservation

- (PXAVResourceReclamationController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

- (void)resourceReclamationEventDidOccur:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_target);
  if (self->_selector)
  {
    selector = self->_selector;
  }

  else
  {
    selector = 0;
  }

  v7 = WeakRetained;
  [WeakRetained performSelector:selector withObject:v4];
}

- (PXResourceReclamationObservation)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXResourceReclamationObservation.m" lineNumber:35 description:{@"%s is not available as initializer", "-[PXResourceReclamationObservation init]"}];

  abort();
}

- (PXResourceReclamationObservation)initWithController:(id)a3 weakTarget:(id)a4 selector:(SEL)a5
{
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = PXResourceReclamationObservation;
  v10 = [(PXResourceReclamationObservation *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_controller, v8);
    objc_storeWeak(&v11->_target, v9);
    if (a5)
    {
      v12 = a5;
    }

    else
    {
      v12 = 0;
    }

    v11->_selector = v12;
    [v8 registerObserver:v11];
  }

  return v11;
}

+ (id)new
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"PXResourceReclamationObservation.m" lineNumber:39 description:{@"%s is not available as initializer", "+[PXResourceReclamationObservation new]"}];

  abort();
}

@end