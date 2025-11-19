@interface WFIntentHandlerResource
- (WFHandleIntentAction)action;
- (void)action:(id)a3 parameterStateDidChangeForKey:(id)a4;
- (void)refreshAvailability;
- (void)setupWithAction:(id)a3;
@end

@implementation WFIntentHandlerResource

- (WFHandleIntentAction)action
{
  WeakRetained = objc_loadWeakRetained(&self->_action);

  return WeakRetained;
}

- (void)action:(id)a3 parameterStateDidChangeForKey:(id)a4
{
  if ([a4 isEqualToString:@"IntentAppDefinition"])
  {

    [(WFResource *)self refreshAvailabilityWithNotification];
  }
}

- (void)setupWithAction:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_action);
  [WeakRetained removeEventObserver:self];

  objc_storeWeak(&self->_action, v4);
  [v4 addEventObserver:self];

  [(WFResource *)self invalidateAvailability];
}

- (void)refreshAvailability
{
  v3 = objc_alloc(MEMORY[0x1E69635F8]);
  v4 = [(WFIntentHandlerResource *)self action];
  v5 = [v4 appDescriptor];
  v6 = [v5 bundleIdentifier];
  v13 = [v3 initWithBundleIdentifier:v6 allowPlaceholder:0 error:0];

  if (v13)
  {
    v7 = [(WFIntentHandlerResource *)self action];
    v8 = [v7 intentDescription];
    v9 = NSStringFromClass([v8 facadeClass]);

    v10 = [MEMORY[0x1E696E728] appInfoWithApplicationRecord:v13];
    v11 = [v10 supportedIntents];
    v12 = [v11 containsObject:v9];

    [(WFResource *)self updateAvailability:v12 withError:0];
  }

  else
  {
    [(WFResource *)self updateAvailability:0 withError:0];
  }
}

@end