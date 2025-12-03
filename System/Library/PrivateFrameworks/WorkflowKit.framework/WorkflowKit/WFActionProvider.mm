@interface WFActionProvider
- (INStringLocalizer)stringLocalizer;
- (WFActionDefinition)defaultActionDefinition;
- (WFActionProviderDelegate)delegate;
- (id)createAllAvailableActions;
@end

@implementation WFActionProvider

- (WFActionDefinition)defaultActionDefinition
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = [WFActionDefinition alloc];
  v14 = @"FillingProvider";
  if (self)
  {
    providerName = self->_providerName;
    null = [MEMORY[0x1E695DFB0] null];

    if (providerName == null)
    {
      v6 = 0;
    }

    else if (providerName)
    {
      providerName = providerName;
      v6 = providerName;
    }

    else
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v6 = v8;
      if (v8)
      {
        null2 = v8;
      }

      else
      {
        null2 = [MEMORY[0x1E695DFB0] null];
      }

      providerName = self->_providerName;
      self->_providerName = null2;
    }
  }

  else
  {
    v6 = 0;
  }

  v15[0] = v6;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v11 = [(WFActionDefinition *)v3 initWithDictionary:v10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (WFActionProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (INStringLocalizer)stringLocalizer
{
  stringLocalizer = self->_stringLocalizer;
  if (!stringLocalizer)
  {
    v4 = [MEMORY[0x1E696EA80] localizerForLanguage:0];
    v5 = self->_stringLocalizer;
    self->_stringLocalizer = v4;

    stringLocalizer = self->_stringLocalizer;
  }

  return stringLocalizer;
}

- (id)createAllAvailableActions
{
  availableActionIdentifiers = [(WFActionProvider *)self availableActionIdentifiers];
  v4 = [availableActionIdentifiers if_map:&__block_literal_global_57112];

  allObjects = [v4 allObjects];
  [(WFActionProvider *)self createActionsForRequests:allObjects];

  v6 = [v4 if_compactMap:&__block_literal_global_199_57113];

  return v6;
}

WFActionRequest *__45__WFActionProvider_createAllAvailableActions__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[WFActionRequest alloc] initWithActionIdentifier:v2 serializedParameters:0];

  return v3;
}

@end