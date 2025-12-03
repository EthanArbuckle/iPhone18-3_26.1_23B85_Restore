@interface SAUIPreferredLayoutModeAssertion
- (SAElement)representedElement;
- (SAUIPreferredLayoutModeAssertion)initWithRepresentedElement:(id)element layoutModePreference:(id)preference;
- (SAUIPreferredLayoutModeAssertion)initWithRepresentedElement:(id)element preferredLayoutMode:(int64_t)mode reason:(int64_t)reason;
- (id)_descriptionConstituents;
@end

@implementation SAUIPreferredLayoutModeAssertion

- (id)_descriptionConstituents
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  WeakRetained = objc_loadWeakRetained(&self->_representedElement);
  if (WeakRetained)
  {
    weakRetained = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"<%@: %p", objc_opt_class(), WeakRetained];
    if (objc_opt_respondsToSelector())
    {
      clientIdentifier = [WeakRetained clientIdentifier];
      [weakRetained appendFormat:@"; clientIdentifier: %@", clientIdentifier];
    }

    if (objc_opt_respondsToSelector())
    {
      elementIdentifier = [WeakRetained elementIdentifier];
      [weakRetained appendFormat:@"; elementIdentifier: %@", elementIdentifier];
    }

    [weakRetained appendString:@">"];
    [v3 setObject:weakRetained forKey:@"representedElement"];
  }

  v8 = SAUIStringFromElementViewLayoutMode([(SAUIPreferredLayoutModeAssertion *)self preferredLayoutMode]);
  [v3 setObject:v8 forKey:@"preferredLayoutMode"];

  v9 = SAUIStringFromLayoutModeChangeReason([(SAUIPreferredLayoutModeAssertion *)self layoutModeChangeReason]);
  [v3 setObject:v9 forKey:@"layoutModeChangeReason"];

  v13.receiver = self;
  v13.super_class = SAUIPreferredLayoutModeAssertion;
  _descriptionConstituents = [(SAAssertion *)&v13 _descriptionConstituents];
  v11 = [_descriptionConstituents arrayByAddingObject:v3];

  return v11;
}

- (SAUIPreferredLayoutModeAssertion)initWithRepresentedElement:(id)element layoutModePreference:(id)preference
{
  v16 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  preferenceCopy = preference;
  if (!elementCopy)
  {
    [SAUIPreferredLayoutModeAssertion initWithRepresentedElement:a2 layoutModePreference:self];
  }

  v13.receiver = self;
  v13.super_class = SAUIPreferredLayoutModeAssertion;
  v9 = [(SAAssertion *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_layoutModePreference, preference);
    objc_storeWeak(&v10->_representedElement, elementCopy);
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

- (SAUIPreferredLayoutModeAssertion)initWithRepresentedElement:(id)element preferredLayoutMode:(int64_t)mode reason:(int64_t)reason
{
  elementCopy = element;
  v9 = [[SAUILayoutModePreference alloc] initWithPreferredLayoutMode:mode reason:reason];
  v10 = [(SAUIPreferredLayoutModeAssertion *)self initWithRepresentedElement:elementCopy layoutModePreference:v9];

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