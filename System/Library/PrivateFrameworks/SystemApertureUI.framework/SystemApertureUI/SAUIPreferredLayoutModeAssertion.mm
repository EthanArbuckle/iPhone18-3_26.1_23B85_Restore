@interface SAUIPreferredLayoutModeAssertion
- (SAElement)representedElement;
- (SAUIPreferredLayoutModeAssertion)initWithRepresentedElement:(id)a3 layoutModePreference:(id)a4;
- (SAUIPreferredLayoutModeAssertion)initWithRepresentedElement:(id)a3 preferredLayoutMode:(int64_t)a4 reason:(int64_t)a5;
- (id)_descriptionConstituents;
@end

@implementation SAUIPreferredLayoutModeAssertion

- (id)_descriptionConstituents
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  WeakRetained = objc_loadWeakRetained(&self->_representedElement);
  if (WeakRetained)
  {
    v5 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"<%@: %p", objc_opt_class(), WeakRetained];
    if (objc_opt_respondsToSelector())
    {
      v6 = [WeakRetained clientIdentifier];
      [v5 appendFormat:@"; clientIdentifier: %@", v6];
    }

    if (objc_opt_respondsToSelector())
    {
      v7 = [WeakRetained elementIdentifier];
      [v5 appendFormat:@"; elementIdentifier: %@", v7];
    }

    [v5 appendString:@">"];
    [v3 setObject:v5 forKey:@"representedElement"];
  }

  v8 = SAUIStringFromElementViewLayoutMode([(SAUIPreferredLayoutModeAssertion *)self preferredLayoutMode]);
  [v3 setObject:v8 forKey:@"preferredLayoutMode"];

  v9 = SAUIStringFromLayoutModeChangeReason([(SAUIPreferredLayoutModeAssertion *)self layoutModeChangeReason]);
  [v3 setObject:v9 forKey:@"layoutModeChangeReason"];

  v13.receiver = self;
  v13.super_class = SAUIPreferredLayoutModeAssertion;
  v10 = [(SAAssertion *)&v13 _descriptionConstituents];
  v11 = [v10 arrayByAddingObject:v3];

  return v11;
}

- (SAUIPreferredLayoutModeAssertion)initWithRepresentedElement:(id)a3 layoutModePreference:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [SAUIPreferredLayoutModeAssertion initWithRepresentedElement:a2 layoutModePreference:self];
  }

  v13.receiver = self;
  v13.super_class = SAUIPreferredLayoutModeAssertion;
  v9 = [(SAAssertion *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_layoutModePreference, a4);
    objc_storeWeak(&v10->_representedElement, v7);
    v11 = SAUILogElementViewControlling;
    if (os_log_type_enabled(SAUILogElementViewControlling, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = v10;
      _os_log_impl(&dword_26C482000, v11, OS_LOG_TYPE_DEFAULT, "Created preferred layout mode assertion: %{public}@", buf, 0xCu);
    }
  }

  return v10;
}

- (SAUIPreferredLayoutModeAssertion)initWithRepresentedElement:(id)a3 preferredLayoutMode:(int64_t)a4 reason:(int64_t)a5
{
  v8 = a3;
  v9 = [[SAUILayoutModePreference alloc] initWithPreferredLayoutMode:a4 reason:a5];
  v10 = [(SAUIPreferredLayoutModeAssertion *)self initWithRepresentedElement:v8 layoutModePreference:v9];

  return v10;
}

- (SAElement)representedElement
{
  WeakRetained = objc_loadWeakRetained(&self->_representedElement);

  return WeakRetained;
}

- (void)initWithRepresentedElement:(uint64_t)a1 layoutModePreference:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SAUIPreferredLayoutModeAssertion.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"representedElement"}];
}

@end