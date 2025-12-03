@interface PXResourceReclamationObservation
+ (id)new;
- (PXAVResourceReclamationController)controller;
- (PXResourceReclamationObservation)init;
- (PXResourceReclamationObservation)initWithController:(id)controller weakTarget:(id)target selector:(SEL)selector;
- (void)resourceReclamationEventDidOccur:(id)occur;
@end

@implementation PXResourceReclamationObservation

- (PXAVResourceReclamationController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

- (void)resourceReclamationEventDidOccur:(id)occur
{
  occurCopy = occur;
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
  [WeakRetained performSelector:selector withObject:occurCopy];
}

- (PXResourceReclamationObservation)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXResourceReclamationObservation.m" lineNumber:35 description:{@"%s is not available as initializer", "-[PXResourceReclamationObservation init]"}];

  abort();
}

- (PXResourceReclamationObservation)initWithController:(id)controller weakTarget:(id)target selector:(SEL)selector
{
  controllerCopy = controller;
  targetCopy = target;
  v14.receiver = self;
  v14.super_class = PXResourceReclamationObservation;
  v10 = [(PXResourceReclamationObservation *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_controller, controllerCopy);
    objc_storeWeak(&v11->_target, targetCopy);
    if (selector)
    {
      selectorCopy = selector;
    }

    else
    {
      selectorCopy = 0;
    }

    v11->_selector = selectorCopy;
    [controllerCopy registerObserver:v11];
  }

  return v11;
}

+ (id)new
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXResourceReclamationObservation.m" lineNumber:39 description:{@"%s is not available as initializer", "+[PXResourceReclamationObservation new]"}];

  abort();
}

@end