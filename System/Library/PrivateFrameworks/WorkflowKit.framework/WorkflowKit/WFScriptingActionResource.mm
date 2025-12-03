@interface WFScriptingActionResource
- (WFScriptingActionResource)initWithDefinition:(id)definition;
- (WFWorkflow)workflow;
- (void)refreshAvailability;
- (void)setWorkflow:(id)workflow;
@end

@implementation WFScriptingActionResource

- (WFWorkflow)workflow
{
  WeakRetained = objc_loadWeakRetained(&self->_workflow);

  return WeakRetained;
}

- (void)refreshAvailability
{
  workflow = [(WFScriptingActionResource *)self workflow];
  environment = [workflow environment];

  if (environment == 5)
  {

    [(WFResource *)self updateAvailability:1 withError:0];
  }

  else
  {
    v5 = +[WFShortcutsSecuritySettings areScriptingActionsEnabled];
    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = [WFShortcutsSecuritySettings scripingActionDisabledErrorWithActionName:0];
    }

    v7 = v6;
    [(WFResource *)self updateAvailability:v5 withError:v6];
  }
}

- (WFScriptingActionResource)initWithDefinition:(id)definition
{
  v10.receiver = self;
  v10.super_class = WFScriptingActionResource;
  v3 = [(WFResource *)&v10 initWithDefinition:definition];
  if (v3)
  {
    v4 = +[WFSecuredPreferences standardPreferences];
    securedPreferences = v3->_securedPreferences;
    v3->_securedPreferences = v4;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    securedPreferences = [(WFScriptingActionResource *)v3 securedPreferences];
    [defaultCenter addObserver:v3 selector:sel_preferencesUpdated_ name:@"WFSecuredPreferencesDidChangeNotification" object:securedPreferences];

    v8 = v3;
  }

  return v3;
}

- (void)setWorkflow:(id)workflow
{
  objc_storeWeak(&self->_workflow, workflow);

  [(WFResource *)self invalidateAvailability];
}

@end