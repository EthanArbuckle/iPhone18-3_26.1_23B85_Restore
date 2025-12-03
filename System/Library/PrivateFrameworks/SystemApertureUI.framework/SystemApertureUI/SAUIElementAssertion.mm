@interface SAUIElementAssertion
- (SAElement)element;
- (SAUIElementAssertion)initWithElement:(id)element invalidationHandler:(id)handler;
- (id)_descriptionConstituents;
- (void)dealloc;
- (void)invalidateWithReason:(id)reason layoutModeChangeReason:(int64_t)changeReason;
@end

@implementation SAUIElementAssertion

- (id)_descriptionConstituents
{
  WeakRetained = objc_loadWeakRetained(&self->_element);
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (WeakRetained)
  {
    v5 = [WeakRetained description];
    [v4 setObject:v5 forKey:@"element"];
  }

  if (![(SAAssertion *)self isValid])
  {
    v6 = SAUIStringFromLayoutModeChangeReason(self->_invalidationLayoutModeChangeReason);
    [v4 setObject:v6 forKey:@"invalidationLayoutModeChangeReason"];
  }

  if ([v4 count])
  {
    v11.receiver = self;
    v11.super_class = SAUIElementAssertion;
    _descriptionConstituents = [(SAAssertion *)&v11 _descriptionConstituents];
    _descriptionConstituents2 = [_descriptionConstituents arrayByAddingObject:v4];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SAUIElementAssertion;
    _descriptionConstituents2 = [(SAAssertion *)&v10 _descriptionConstituents];
  }

  return _descriptionConstituents2;
}

- (SAElement)element
{
  WeakRetained = objc_loadWeakRetained(&self->_element);

  return WeakRetained;
}

- (void)dealloc
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SAUIElementAssertion.m" lineNumber:33 description:@"Element Assertion deallocated without first being explicitly invalidated."];
}

- (SAUIElementAssertion)initWithElement:(id)element invalidationHandler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (!elementCopy)
  {
    [SAUIElementAssertion initWithElement:a2 invalidationHandler:self];
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_8:
    [SAUIElementAssertion initWithElement:a2 invalidationHandler:self];
    goto LABEL_3;
  }

  if (!handlerCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  v18.receiver = self;
  v18.super_class = SAUIElementAssertion;
  v10 = [(SAAssertion *)&v18 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_element, elementCopy);
    [(SAAssertion *)v11 addInvalidationBlock:v9];
    v12 = *MEMORY[0x277D6B8A8];
    if (os_log_type_enabled(*MEMORY[0x277D6B8A8], OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = objc_opt_class();
      v15 = v14;
      v16 = MEMORY[0x26D6A1D80](elementCopy);
      *buf = 138543874;
      v20 = v14;
      v21 = 2050;
      v22 = v11;
      v23 = 2114;
      v24 = v16;
      _os_log_impl(&dword_26C482000, v13, OS_LOG_TYPE_DEFAULT, "Created assertion (<%{public}@: %{public}p>) for element: %{public}@", buf, 0x20u);
    }
  }

  return v11;
}

- (void)invalidateWithReason:(id)reason layoutModeChangeReason:(int64_t)changeReason
{
  self->_invalidationLayoutModeChangeReason = changeReason;
  v4.receiver = self;
  v4.super_class = SAUIElementAssertion;
  [(SAAssertion *)&v4 invalidateWithReason:reason];
}

- (void)initWithElement:(uint64_t)a1 invalidationHandler:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SAUIElementAssertion.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"element"}];
}

- (void)initWithElement:(uint64_t)a1 invalidationHandler:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SAUIElementAssertion.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"invalidationHandler"}];
}

@end