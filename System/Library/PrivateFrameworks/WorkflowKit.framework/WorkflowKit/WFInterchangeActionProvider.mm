@interface WFInterchangeActionProvider
- (id)actionWithInterchangeAction:(id)action serializedParameters:(id)parameters;
- (id)availableActionIdentifiers;
- (void)createActionsForRequests:(id)requests forceLocalActionsOnly:(BOOL)only;
@end

@implementation WFInterchangeActionProvider

- (id)actionWithInterchangeAction:(id)action serializedParameters:(id)parameters
{
  actionCopy = action;
  parametersCopy = parameters;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [actionCopy createsWFAction])
  {
    wfActionClassName = [actionCopy wfActionClassName];
    if (wfActionClassName)
    {
      wfActionClassName2 = [actionCopy wfActionClassName];
      v10 = NSClassFromString(wfActionClassName2);
    }

    else
    {
      v10 = objc_opt_class();
    }

    if ([(objc_class *)v10 isSubclassOfClass:objc_opt_class()])
    {
      v12 = [v10 alloc];
      identifier = [actionCopy identifier];
      defaultActionDefinition = [(WFActionProvider *)self defaultActionDefinition];
      v11 = [v12 initWithInterchangeAction:actionCopy identifier:identifier definition:defaultActionDefinition serializedParameters:parametersCopy];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)createActionsForRequests:(id)requests forceLocalActionsOnly:(BOOL)only
{
  requestsCopy = requests;
  v6 = [requestsCopy if_map:&__block_literal_global_164];
  v7 = +[WFInterchangeAppRegistry sharedRegistry];
  v8 = [v7 actionsWithIdentifiers:v6];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__WFInterchangeActionProvider_createActionsForRequests_forceLocalActionsOnly___block_invoke_2;
  v10[3] = &unk_1E8373E88;
  v11 = v8;
  selfCopy = self;
  v9 = v8;
  [requestsCopy enumerateObjectsUsingBlock:v10];
}

void __78__WFInterchangeActionProvider_createActionsForRequests_forceLocalActionsOnly___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v10 = [v5 objectAtIndex:a3];
  v7 = *(a1 + 40);
  v8 = [v6 serializedParameters];
  v9 = [v7 actionWithInterchangeAction:v10 serializedParameters:v8];

  [v6 setResult:v9];
}

- (id)availableActionIdentifiers
{
  v2 = objc_alloc(MEMORY[0x1E695DFD8]);
  v3 = +[WFInterchangeAppRegistry sharedRegistry];
  allActions = [v3 allActions];
  v5 = [allActions if_compactMap:&__block_literal_global_4394];
  v6 = [v2 initWithArray:v5];

  return v6;
}

id __57__WFInterchangeActionProvider_availableActionIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 createsWFAction])
  {
    v3 = [v2 identifier];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end