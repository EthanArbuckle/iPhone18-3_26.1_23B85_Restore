@interface WFIntentHandlerResource
- (WFHandleIntentAction)action;
- (void)action:(id)action parameterStateDidChangeForKey:(id)key;
- (void)refreshAvailability;
- (void)setupWithAction:(id)action;
@end

@implementation WFIntentHandlerResource

- (WFHandleIntentAction)action
{
  WeakRetained = objc_loadWeakRetained(&self->_action);

  return WeakRetained;
}

- (void)action:(id)action parameterStateDidChangeForKey:(id)key
{
  if ([key isEqualToString:@"IntentAppDefinition"])
  {

    [(WFResource *)self refreshAvailabilityWithNotification];
  }
}

- (void)setupWithAction:(id)action
{
  actionCopy = action;
  WeakRetained = objc_loadWeakRetained(&self->_action);
  [WeakRetained removeEventObserver:self];

  objc_storeWeak(&self->_action, actionCopy);
  [actionCopy addEventObserver:self];

  [(WFResource *)self invalidateAvailability];
}

- (void)refreshAvailability
{
  v3 = objc_alloc(MEMORY[0x1E69635F8]);
  action = [(WFIntentHandlerResource *)self action];
  appDescriptor = [action appDescriptor];
  bundleIdentifier = [appDescriptor bundleIdentifier];
  v13 = [v3 initWithBundleIdentifier:bundleIdentifier allowPlaceholder:0 error:0];

  if (v13)
  {
    action2 = [(WFIntentHandlerResource *)self action];
    intentDescription = [action2 intentDescription];
    v9 = NSStringFromClass([intentDescription facadeClass]);

    v10 = [MEMORY[0x1E696E728] appInfoWithApplicationRecord:v13];
    supportedIntents = [v10 supportedIntents];
    v12 = [supportedIntents containsObject:v9];

    [(WFResource *)self updateAvailability:v12 withError:0];
  }

  else
  {
    [(WFResource *)self updateAvailability:0 withError:0];
  }
}

@end