@interface _SBSystemApertureSignificantUpdateTransitionAssertion
- (SAElement)element;
- (_SBSystemApertureSignificantUpdateTransitionAssertion)initWithElement:(id)element;
- (id)_descriptionConstituents;
@end

@implementation _SBSystemApertureSignificantUpdateTransitionAssertion

- (_SBSystemApertureSignificantUpdateTransitionAssertion)initWithElement:(id)element
{
  v12 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  if (!elementCopy)
  {
    [_SBSystemApertureSignificantUpdateTransitionAssertion initWithElement:];
  }

  v9.receiver = self;
  v9.super_class = _SBSystemApertureSignificantUpdateTransitionAssertion;
  v5 = [(SAAssertion *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_element, elementCopy);
    v7 = SBLogSystemApertureController();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v11 = v6;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "Created significant update transition assertion: %{public}@", buf, 0xCu);
    }
  }

  return v6;
}

- (id)_descriptionConstituents
{
  v12[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_element);
  if (WeakRetained)
  {
    v10.receiver = self;
    v10.super_class = _SBSystemApertureSignificantUpdateTransitionAssertion;
    _descriptionConstituents = [(SAAssertion *)&v10 _descriptionConstituents];
    v11 = @"element";
    v5 = MEMORY[0x223D6CED0](WeakRetained);
    v12[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    _descriptionConstituents2 = [_descriptionConstituents arrayByAddingObject:v6];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _SBSystemApertureSignificantUpdateTransitionAssertion;
    _descriptionConstituents2 = [(SAAssertion *)&v9 _descriptionConstituents];
  }

  return _descriptionConstituents2;
}

- (SAElement)element
{
  WeakRetained = objc_loadWeakRetained(&self->_element);

  return WeakRetained;
}

- (void)initWithElement:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"element" object:? file:? lineNumber:? description:?];
}

@end