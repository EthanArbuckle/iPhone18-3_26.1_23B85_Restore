@interface SBHIconLayoutHidingAssertion
- (BOOL)referencesIconInListModel:(id)a3;
- (NSArray)icons;
- (SBHIconLayoutHidingAssertion)initWithDelegate:(id)a3 icons:(id)a4 reason:(id)a5 options:(unint64_t)a6;
- (SBHIconLayoutHidingAssertionDelegate)delegate;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)addIcon:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)setOptions:(unint64_t)a3;
@end

@implementation SBHIconLayoutHidingAssertion

- (SBHIconLayoutHidingAssertion)initWithDelegate:(id)a3 icons:(id)a4 reason:(id)a5 options:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v19.receiver = self;
  v19.super_class = SBHIconLayoutHidingAssertion;
  v13 = [(SBHIconLayoutHidingAssertion *)&v19 init];
  if (v13)
  {
    v14 = [v11 mutableCopy];
    icons = v13->_icons;
    v13->_icons = v14;

    objc_storeWeak(&v13->_delegate, v10);
    v16 = [v12 copy];
    reason = v13->_reason;
    v13->_reason = v16;

    v13->_options = a6;
  }

  return v13;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_fault_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_FAULT, "SBHIconLayoutHidingAssertion deallocated but not invalidated! Reason: %@", &v3, 0xCu);
}

- (NSArray)icons
{
  v2 = [(NSMutableSet *)self->_icons copy];

  return v2;
}

- (BOOL)referencesIconInListModel:(id)a3
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__SBHIconLayoutHidingAssertion_referencesIconInListModel___block_invoke;
  v4[3] = &unk_1E808BFD8;
  v4[4] = self;
  return [a3 directlyContainsIconPassingTest:v4];
}

- (void)addIcon:(id)a3
{
  [(NSMutableSet *)self->_icons addObject:a3];
  v4 = [(SBHIconLayoutHidingAssertion *)self delegate];
  [v4 layoutHidingAssertionDidChange:self];
}

- (void)setOptions:(unint64_t)a3
{
  if (self->_options != a3)
  {
    self->_options = a3;
    v5 = [(SBHIconLayoutHidingAssertion *)self delegate];
    [v5 layoutHidingAssertionDidChange:self];
  }
}

- (void)invalidate
{
  if (![(SBHIconLayoutHidingAssertion *)self isInvalidated])
  {
    v3 = [(SBHIconLayoutHidingAssertion *)self delegate];
    [v3 layoutHidingAssertionDidInvalidate:self];
    [(SBHIconLayoutHidingAssertion *)self setInvalidated:1];
  }
}

- (id)succinctDescription
{
  v2 = [(SBHIconLayoutHidingAssertion *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBHIconLayoutHidingAssertion *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBHIconLayoutHidingAssertion *)self succinctDescriptionBuilder];
  v5 = [(SBHIconLayoutHidingAssertion *)self icons];
  v6 = [v4 appendObject:v5 withName:@"icons"];

  v7 = [(SBHIconLayoutHidingAssertion *)self reason];
  v8 = [v4 appendObject:v7 withName:@"reason"];

  v9 = [(SBHIconLayoutHidingAssertion *)self delegate];
  v10 = [v4 appendPointer:v9 withName:@"delegate"];

  return v4;
}

- (SBHIconLayoutHidingAssertionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end