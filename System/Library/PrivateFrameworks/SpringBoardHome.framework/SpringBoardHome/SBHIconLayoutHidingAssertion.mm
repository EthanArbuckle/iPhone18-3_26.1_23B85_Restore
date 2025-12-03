@interface SBHIconLayoutHidingAssertion
- (BOOL)referencesIconInListModel:(id)model;
- (NSArray)icons;
- (SBHIconLayoutHidingAssertion)initWithDelegate:(id)delegate icons:(id)icons reason:(id)reason options:(unint64_t)options;
- (SBHIconLayoutHidingAssertionDelegate)delegate;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)addIcon:(id)icon;
- (void)dealloc;
- (void)invalidate;
- (void)setOptions:(unint64_t)options;
@end

@implementation SBHIconLayoutHidingAssertion

- (SBHIconLayoutHidingAssertion)initWithDelegate:(id)delegate icons:(id)icons reason:(id)reason options:(unint64_t)options
{
  delegateCopy = delegate;
  iconsCopy = icons;
  reasonCopy = reason;
  v19.receiver = self;
  v19.super_class = SBHIconLayoutHidingAssertion;
  v13 = [(SBHIconLayoutHidingAssertion *)&v19 init];
  if (v13)
  {
    v14 = [iconsCopy mutableCopy];
    icons = v13->_icons;
    v13->_icons = v14;

    objc_storeWeak(&v13->_delegate, delegateCopy);
    v16 = [reasonCopy copy];
    reason = v13->_reason;
    v13->_reason = v16;

    v13->_options = options;
  }

  return v13;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *self;
  v3 = 138412290;
  v4 = v2;
  _os_log_fault_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_FAULT, "SBHIconLayoutHidingAssertion deallocated but not invalidated! Reason: %@", &v3, 0xCu);
}

- (NSArray)icons
{
  v2 = [(NSMutableSet *)self->_icons copy];

  return v2;
}

- (BOOL)referencesIconInListModel:(id)model
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__SBHIconLayoutHidingAssertion_referencesIconInListModel___block_invoke;
  v4[3] = &unk_1E808BFD8;
  v4[4] = self;
  return [model directlyContainsIconPassingTest:v4];
}

- (void)addIcon:(id)icon
{
  [(NSMutableSet *)self->_icons addObject:icon];
  delegate = [(SBHIconLayoutHidingAssertion *)self delegate];
  [delegate layoutHidingAssertionDidChange:self];
}

- (void)setOptions:(unint64_t)options
{
  if (self->_options != options)
  {
    self->_options = options;
    delegate = [(SBHIconLayoutHidingAssertion *)self delegate];
    [delegate layoutHidingAssertionDidChange:self];
  }
}

- (void)invalidate
{
  if (![(SBHIconLayoutHidingAssertion *)self isInvalidated])
  {
    delegate = [(SBHIconLayoutHidingAssertion *)self delegate];
    [delegate layoutHidingAssertionDidInvalidate:self];
    [(SBHIconLayoutHidingAssertion *)self setInvalidated:1];
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBHIconLayoutHidingAssertion *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBHIconLayoutHidingAssertion *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBHIconLayoutHidingAssertion *)self succinctDescriptionBuilder];
  icons = [(SBHIconLayoutHidingAssertion *)self icons];
  v6 = [succinctDescriptionBuilder appendObject:icons withName:@"icons"];

  reason = [(SBHIconLayoutHidingAssertion *)self reason];
  v8 = [succinctDescriptionBuilder appendObject:reason withName:@"reason"];

  delegate = [(SBHIconLayoutHidingAssertion *)self delegate];
  v10 = [succinctDescriptionBuilder appendPointer:delegate withName:@"delegate"];

  return succinctDescriptionBuilder;
}

- (SBHIconLayoutHidingAssertionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end