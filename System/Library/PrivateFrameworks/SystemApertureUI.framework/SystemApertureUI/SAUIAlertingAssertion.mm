@interface SAUIAlertingAssertion
- (SAUIAlertingAssertion)initWithPreferredLayoutModeAssertion:(id)assertion invalidationInterval:(double)interval;
@end

@implementation SAUIAlertingAssertion

- (SAUIAlertingAssertion)initWithPreferredLayoutModeAssertion:(id)assertion invalidationInterval:(double)interval
{
  assertionCopy = assertion;
  v19.receiver = self;
  v19.super_class = SAUIAlertingAssertion;
  v8 = [(SAAutomaticallyInvalidatingAssertion *)&v19 initWithInvalidationInterval:interval];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_preferredLayoutModeAssertion, assertion);
    objc_initWeak(&location, v9);
    objc_initWeak(&from, v9->_preferredLayoutModeAssertion);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __83__SAUIAlertingAssertion_initWithPreferredLayoutModeAssertion_invalidationInterval___block_invoke;
    v14[3] = &unk_279D329E0;
    objc_copyWeak(&v15, &from);
    objc_copyWeak(&v16, &location);
    [(SAAssertion *)v9 addInvalidationBlock:v14];
    preferredLayoutModeAssertion = v9->_preferredLayoutModeAssertion;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __83__SAUIAlertingAssertion_initWithPreferredLayoutModeAssertion_invalidationInterval___block_invoke_2;
    v12[3] = &unk_279D32738;
    objc_copyWeak(&v13, &location);
    [(SAAssertion *)preferredLayoutModeAssertion addInvalidationBlock:v12];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __83__SAUIAlertingAssertion_initWithPreferredLayoutModeAssertion_invalidationInterval___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isValid])
  {
    [WeakRetained invalidateWithReason:v8];
  }

  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 10);
    if (v7 == WeakRetained)
    {
      *(v5 + 10) = 0;
    }
  }
}

void __83__SAUIAlertingAssertion_initWithPreferredLayoutModeAssertion_invalidationInterval___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isValid])
  {
    [WeakRetained invalidateWithReason:v5];
  }
}

@end