@interface WFScriptingActionResource
- (WFScriptingActionResource)initWithDefinition:(id)a3;
- (WFWorkflow)workflow;
- (void)refreshAvailability;
- (void)setWorkflow:(id)a3;
@end

@implementation WFScriptingActionResource

- (WFWorkflow)workflow
{
  WeakRetained = objc_loadWeakRetained(&self->_workflow);

  return WeakRetained;
}

- (void)refreshAvailability
{
  v3 = [(WFScriptingActionResource *)self workflow];
  v4 = [v3 environment];

  if (v4 == 5)
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

- (WFScriptingActionResource)initWithDefinition:(id)a3
{
  v10.receiver = self;
  v10.super_class = WFScriptingActionResource;
  v3 = [(WFResource *)&v10 initWithDefinition:a3];
  if (v3)
  {
    v4 = +[WFSecuredPreferences standardPreferences];
    securedPreferences = v3->_securedPreferences;
    v3->_securedPreferences = v4;

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    v7 = [(WFScriptingActionResource *)v3 securedPreferences];
    [v6 addObserver:v3 selector:sel_preferencesUpdated_ name:@"WFSecuredPreferencesDidChangeNotification" object:v7];

    v8 = v3;
  }

  return v3;
}

- (void)setWorkflow:(id)a3
{
  objc_storeWeak(&self->_workflow, a3);

  [(WFResource *)self invalidateAvailability];
}

@end