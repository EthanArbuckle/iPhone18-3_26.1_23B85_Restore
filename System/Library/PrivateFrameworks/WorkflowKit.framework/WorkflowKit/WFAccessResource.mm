@interface WFAccessResource
+ (id)userInterfaceXPCInterface;
- (NSError)availabilityError;
- (NSString)localizedAttemptRecoveryFromErrorMessage;
- (NSString)name;
- (WFAccessResource)initWithDefinition:(id)definition enableDistributedNotifications:(BOOL)notifications;
- (WFImage)icon;
- (WFWorkflow)workflow;
- (id)localizedErrorReasonForStatus:(unint64_t)status;
- (id)localizedErrorRecoveryOptionsForStatus:(unint64_t)status;
- (id)localizedImportErrorReasonForStatus:(unint64_t)status;
- (id)localizedProtectedResourceDescription;
- (void)attemptRecoveryFromError:(id)error optionIndex:(unint64_t)index userInterface:(id)interface completionHandler:(id)handler;
- (void)attemptRecoveryFromErrorWithOptionIndex:(unint64_t)index userInterface:(id)interface completionHandler:(id)handler;
- (void)dealloc;
- (void)makeAvailableWithRemoteInterface:(id)interface completionHandler:(id)handler;
- (void)makeAvailableWithUserInterface:(id)interface completionHandler:(id)handler;
- (void)refreshAvailability;
- (void)setWorkflow:(id)workflow;
@end

@implementation WFAccessResource

- (void)dealloc
{
  notify_cancel(self->_token);
  v3.receiver = self;
  v3.super_class = WFAccessResource;
  [(WFResource *)&v3 dealloc];
}

- (WFWorkflow)workflow
{
  WeakRetained = objc_loadWeakRetained(&self->_workflow);

  return WeakRetained;
}

- (NSString)localizedAttemptRecoveryFromErrorMessage
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = WFLocalizedString(@"Please open Settings > Privacy & Security and grant Shortcuts access to %@.");
  localizedProtectedResourceDescription = [(WFAccessResource *)self localizedProtectedResourceDescription];
  v6 = [v3 localizedStringWithFormat:v4, localizedProtectedResourceDescription];

  return v6;
}

- (void)attemptRecoveryFromError:(id)error optionIndex:(unint64_t)index userInterface:(id)interface completionHandler:(id)handler
{
  errorCopy = error;
  interfaceCopy = interface;
  handlerCopy = handler;
  domain = [errorCopy domain];
  if ([domain isEqualToString:@"ResourceErrorDomain"])
  {
    code = [errorCopy code];

    if (!code)
    {
      [(WFAccessResource *)self attemptRecoveryFromErrorWithOptionIndex:index userInterface:interfaceCopy completionHandler:handlerCopy];
      goto LABEL_7;
    }
  }

  else
  {
  }

  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }

LABEL_7:
}

- (NSError)availabilityError
{
  v14[1] = *MEMORY[0x1E69E9840];
  status = [(WFAccessResource *)self status];
  if (status == 4)
  {
    v4 = 0;
  }

  else
  {
    v5 = status;
    v13 = *MEMORY[0x1E6997138];
    v14[0] = self;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v7 = [v6 mutableCopy];

    v8 = [(WFAccessResource *)self localizedErrorReasonForStatus:v5];
    v9 = [(WFAccessResource *)self localizedImportErrorReasonForStatus:v5];
    v10 = [(WFAccessResource *)self localizedErrorRecoveryOptionsForStatus:v5];
    if (v8)
    {
      [v7 setObject:v8 forKey:*MEMORY[0x1E696A588]];
    }

    if (v9)
    {
      [v7 setObject:v9 forKey:@"WFResourceErrorImportErrorReason"];
    }

    if (v10)
    {
      [v7 setObject:v10 forKey:*MEMORY[0x1E696A590]];
    }

    v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ResourceErrorDomain" code:0 userInfo:v7];
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)localizedErrorRecoveryOptionsForStatus:(unint64_t)status
{
  v8[1] = *MEMORY[0x1E69E9840];
  if ((status & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    if (status == 3)
    {
      v3 = @"Update Privacy Settings";
    }

    else
    {
      v3 = @"Allow Access";
    }

    v4 = WFLocalizedString(v3);
    v8[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)localizedImportErrorReasonForStatus:(unint64_t)status
{
  localizedProtectedResourceDescription = [(WFAccessResource *)self localizedProtectedResourceDescription];
  v5 = MEMORY[0x1E696AEC0];
  v6 = @"In order to answer this question, Shortcuts needs access to %@.";
  if (status == 2)
  {
    v6 = @"Device restrictions prevent this shortcut from accessing %@.";
  }

  if (status)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"This shortcut requires access to %@, which is not supported on this device.";
  }

  v8 = WFLocalizedString(v7);
  v9 = [v5 localizedStringWithFormat:v8, localizedProtectedResourceDescription];

  return v9;
}

- (id)localizedErrorReasonForStatus:(unint64_t)status
{
  localizedProtectedResourceDescription = [(WFAccessResource *)self localizedProtectedResourceDescription];
  v5 = MEMORY[0x1E696AEC0];
  v6 = @"Shortcuts does not have access to %@.";
  if (status == 2)
  {
    v6 = @"Device restrictions prevent Shortcuts from accessing %@.";
  }

  if (status)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"Access to %@ is not supported on this device.";
  }

  v8 = WFLocalizedString(v7);
  v9 = [v5 localizedStringWithFormat:v8, localizedProtectedResourceDescription];

  return v9;
}

- (void)attemptRecoveryFromErrorWithOptionIndex:(unint64_t)index userInterface:(id)interface completionHandler:(id)handler
{
  interfaceCopy = interface;
  handlerCopy = handler;
  status = [(WFAccessResource *)self status];
  if (status == 1)
  {
    [(WFAccessResource *)self makeAvailableWithUserInterface:interfaceCopy completionHandler:handlerCopy];
  }

  else if (status == 3)
  {
    handlerCopy[2](handlerCopy, 1, 0);
    v10 = MEMORY[0x1E695DFF8];
    v11 = MEMORY[0x1E696AEC0];
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v14 = [v11 stringWithFormat:@"app-prefs:%@", bundleIdentifier];
    v15 = [v10 URLWithString:v14];

    mEMORY[0x1E6996CA8] = [MEMORY[0x1E6996CA8] sharedContext];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __92__WFAccessResource_attemptRecoveryFromErrorWithOptionIndex_userInterface_completionHandler___block_invoke;
    v17[3] = &unk_1E837C698;
    v17[4] = self;
    v18 = interfaceCopy;
    [mEMORY[0x1E6996CA8] openURL:v15 userInterface:v18 completionHandler:v17];
  }

  else
  {
    handlerCopy[2](handlerCopy, 0, 0);
  }
}

void __92__WFAccessResource_attemptRecoveryFromErrorWithOptionIndex_userInterface_completionHandler___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v7 = objc_opt_new();
    v4 = WFLocalizedString(@"Update Privacy Settings");
    [v7 setTitle:v4];

    v5 = [*(a1 + 32) localizedAttemptRecoveryFromErrorMessage];
    [v7 setMessage:v5];

    v6 = [MEMORY[0x1E6996C78] okButtonWithHandler:0];
    [v7 addButton:v6];

    [*(a1 + 40) presentAlert:v7];
  }
}

- (void)makeAvailableWithRemoteInterface:(id)interface completionHandler:(id)handler
{
  v5 = MEMORY[0x1E696ABC0];
  handlerCopy = handler;
  wfUnsupportedUserInterfaceError = [v5 wfUnsupportedUserInterfaceError];
  (*(handler + 2))(handlerCopy, 0, wfUnsupportedUserInterfaceError);
}

- (void)makeAvailableWithUserInterface:(id)interface completionHandler:(id)handler
{
  interfaceCopy = interface;
  handlerCopy = handler;
  userInterfaceXPCInterface = [objc_opt_class() userInterfaceXPCInterface];
  userInterfaceClasses = [objc_opt_class() userInterfaceClasses];
  v10 = userInterfaceClasses;
  if (userInterfaceXPCInterface && [userInterfaceClasses count] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __69__WFAccessResource_makeAvailableWithUserInterface_completionHandler___block_invoke;
    v13[3] = &unk_1E837C670;
    v15 = handlerCopy;
    v13[4] = self;
    v14 = interfaceCopy;
    [v14 requestActionInterfacePresentationForActionClassName:v12 classNamesByType:v10 completionHandler:v13];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 1, 0);
  }
}

void __69__WFAccessResource_makeAvailableWithUserInterface_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __69__WFAccessResource_makeAvailableWithUserInterface_completionHandler___block_invoke_2;
    v7[3] = &unk_1E837EE10;
    v4 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    [v4 makeAvailableWithRemoteInterface:a2 completionHandler:v7];
  }

  else
  {
    v5 = *(a1 + 48);
    v6 = *(*(a1 + 48) + 16);

    v6();
  }
}

void __69__WFAccessResource_makeAvailableWithUserInterface_completionHandler___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__WFAccessResource_makeAvailableWithUserInterface_completionHandler___block_invoke_3;
  v9[3] = &unk_1E837C648;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  [v6 dismissPresentedContentWithCompletionHandler:v9];
}

- (void)refreshAvailability
{
  if ([(WFAccessResource *)self status]== 4)
  {

    [(WFResource *)self updateAvailability:1 withError:0];
  }

  else
  {
    availabilityError = [(WFAccessResource *)self availabilityError];
    [(WFResource *)self updateAvailability:0 withError:availabilityError];
  }
}

void __56__WFAccessResource_refreshAvailabilityWithNotification___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _isAvailable];
  v2 = [*(a1 + 32) _availabilityError];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __56__WFAccessResource_refreshAvailabilityWithNotification___block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _isAvailable];
  v2 = [*(a1 + 32) _availabilityError];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __56__WFAccessResource_refreshAvailabilityWithNotification___block_invoke_3(uint64_t a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v7[0] = @"WFAccessResourceAvailabilityChangedNotification";
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = [v4 componentsJoinedByString:@"."];

  notify_post([v5 UTF8String]);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setWorkflow:(id)workflow
{
  objc_storeWeak(&self->_workflow, workflow);

  [(WFResource *)self invalidateAvailability];
}

- (id)localizedProtectedResourceDescription
{
  defaultContext = [MEMORY[0x1E69E0BE0] defaultContext];
  v4 = [(WFAccessResource *)self localizedProtectedResourceDescriptionWithContext:defaultContext];

  if (v4)
  {
    name = v4;
  }

  else
  {
    name = [(WFAccessResource *)self name];
  }

  v6 = name;

  return v6;
}

- (WFImage)icon
{
  associatedAppIdentifier = [(WFAccessResource *)self associatedAppIdentifier];

  if (associatedAppIdentifier)
  {
    v4 = +[WFInterchangeAppRegistry sharedRegistry];
    associatedAppIdentifier2 = [(WFAccessResource *)self associatedAppIdentifier];
    v6 = [v4 appWithIdentifier:associatedAppIdentifier2];
    icon = [v6 icon];
  }

  else
  {
    icon = 0;
  }

  return icon;
}

- (NSString)name
{
  associatedAppIdentifier = [(WFAccessResource *)self associatedAppIdentifier];

  if (associatedAppIdentifier)
  {
    v4 = +[WFInterchangeAppRegistry sharedRegistry];
    associatedAppIdentifier2 = [(WFAccessResource *)self associatedAppIdentifier];
    v6 = [v4 appWithIdentifier:associatedAppIdentifier2];
    localizedName = [v6 localizedName];
  }

  else
  {
    localizedName = 0;
  }

  return localizedName;
}

- (WFAccessResource)initWithDefinition:(id)definition enableDistributedNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  v23[2] = *MEMORY[0x1E69E9840];
  definitionCopy = definition;
  v22.receiver = self;
  v22.super_class = WFAccessResource;
  v7 = [(WFResource *)&v22 initWithDefinition:definitionCopy];
  v8 = v7;
  if (v7)
  {
    v7->_token = -1;
    if (notificationsCopy)
    {
      objc_initWeak(&location, v7);
      v23[0] = @"WFAccessResourceAvailabilityChangedNotification";
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v23[1] = v10;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];

      v12 = [v11 componentsJoinedByString:@"."];

      v13 = v12;
      uTF8String = [v12 UTF8String];
      v15 = MEMORY[0x1E69E96A0];
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __70__WFAccessResource_initWithDefinition_enableDistributedNotifications___block_invoke;
      handler[3] = &unk_1E837C5F8;
      objc_copyWeak(&v20, &location);
      notify_register_dispatch(uTF8String, &v8->_token, MEMORY[0x1E69E96A0], handler);

      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);
    }

    v16 = v8;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v8;
}

void __70__WFAccessResource_initWithDefinition_enableDistributedNotifications___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained refreshAvailabilityWithNotification];
}

+ (id)userInterfaceXPCInterface
{
  userInterfaceProtocol = [self userInterfaceProtocol];
  if (userInterfaceProtocol)
  {
    v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:userInterfaceProtocol];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end