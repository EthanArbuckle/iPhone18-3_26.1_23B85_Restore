@interface WFAccessResource
+ (id)userInterfaceXPCInterface;
- (NSError)availabilityError;
- (NSString)localizedAttemptRecoveryFromErrorMessage;
- (NSString)name;
- (WFAccessResource)initWithDefinition:(id)a3 enableDistributedNotifications:(BOOL)a4;
- (WFImage)icon;
- (WFWorkflow)workflow;
- (id)localizedErrorReasonForStatus:(unint64_t)a3;
- (id)localizedErrorRecoveryOptionsForStatus:(unint64_t)a3;
- (id)localizedImportErrorReasonForStatus:(unint64_t)a3;
- (id)localizedProtectedResourceDescription;
- (void)attemptRecoveryFromError:(id)a3 optionIndex:(unint64_t)a4 userInterface:(id)a5 completionHandler:(id)a6;
- (void)attemptRecoveryFromErrorWithOptionIndex:(unint64_t)a3 userInterface:(id)a4 completionHandler:(id)a5;
- (void)dealloc;
- (void)makeAvailableWithRemoteInterface:(id)a3 completionHandler:(id)a4;
- (void)makeAvailableWithUserInterface:(id)a3 completionHandler:(id)a4;
- (void)refreshAvailability;
- (void)setWorkflow:(id)a3;
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
  v5 = [(WFAccessResource *)self localizedProtectedResourceDescription];
  v6 = [v3 localizedStringWithFormat:v4, v5];

  return v6;
}

- (void)attemptRecoveryFromError:(id)a3 optionIndex:(unint64_t)a4 userInterface:(id)a5 completionHandler:(id)a6
{
  v14 = a3;
  v10 = a5;
  v11 = a6;
  v12 = [v14 domain];
  if ([v12 isEqualToString:@"ResourceErrorDomain"])
  {
    v13 = [v14 code];

    if (!v13)
    {
      [(WFAccessResource *)self attemptRecoveryFromErrorWithOptionIndex:a4 userInterface:v10 completionHandler:v11];
      goto LABEL_7;
    }
  }

  else
  {
  }

  if (v11)
  {
    (*(v11 + 2))(v11, 0, 0);
  }

LABEL_7:
}

- (NSError)availabilityError
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = [(WFAccessResource *)self status];
  if (v3 == 4)
  {
    v4 = 0;
  }

  else
  {
    v5 = v3;
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

- (id)localizedErrorRecoveryOptionsForStatus:(unint64_t)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  if ((a3 & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    if (a3 == 3)
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

- (id)localizedImportErrorReasonForStatus:(unint64_t)a3
{
  v4 = [(WFAccessResource *)self localizedProtectedResourceDescription];
  v5 = MEMORY[0x1E696AEC0];
  v6 = @"In order to answer this question, Shortcuts needs access to %@.";
  if (a3 == 2)
  {
    v6 = @"Device restrictions prevent this shortcut from accessing %@.";
  }

  if (a3)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"This shortcut requires access to %@, which is not supported on this device.";
  }

  v8 = WFLocalizedString(v7);
  v9 = [v5 localizedStringWithFormat:v8, v4];

  return v9;
}

- (id)localizedErrorReasonForStatus:(unint64_t)a3
{
  v4 = [(WFAccessResource *)self localizedProtectedResourceDescription];
  v5 = MEMORY[0x1E696AEC0];
  v6 = @"Shortcuts does not have access to %@.";
  if (a3 == 2)
  {
    v6 = @"Device restrictions prevent Shortcuts from accessing %@.";
  }

  if (a3)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"Access to %@ is not supported on this device.";
  }

  v8 = WFLocalizedString(v7);
  v9 = [v5 localizedStringWithFormat:v8, v4];

  return v9;
}

- (void)attemptRecoveryFromErrorWithOptionIndex:(unint64_t)a3 userInterface:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(WFAccessResource *)self status];
  if (v9 == 1)
  {
    [(WFAccessResource *)self makeAvailableWithUserInterface:v7 completionHandler:v8];
  }

  else if (v9 == 3)
  {
    v8[2](v8, 1, 0);
    v10 = MEMORY[0x1E695DFF8];
    v11 = MEMORY[0x1E696AEC0];
    v12 = [MEMORY[0x1E696AAE8] mainBundle];
    v13 = [v12 bundleIdentifier];
    v14 = [v11 stringWithFormat:@"app-prefs:%@", v13];
    v15 = [v10 URLWithString:v14];

    v16 = [MEMORY[0x1E6996CA8] sharedContext];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __92__WFAccessResource_attemptRecoveryFromErrorWithOptionIndex_userInterface_completionHandler___block_invoke;
    v17[3] = &unk_1E837C698;
    v17[4] = self;
    v18 = v7;
    [v16 openURL:v15 userInterface:v18 completionHandler:v17];
  }

  else
  {
    v8[2](v8, 0, 0);
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

- (void)makeAvailableWithRemoteInterface:(id)a3 completionHandler:(id)a4
{
  v5 = MEMORY[0x1E696ABC0];
  v6 = a4;
  v7 = [v5 wfUnsupportedUserInterfaceError];
  (*(a4 + 2))(v6, 0, v7);
}

- (void)makeAvailableWithUserInterface:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_opt_class() userInterfaceXPCInterface];
  v9 = [objc_opt_class() userInterfaceClasses];
  v10 = v9;
  if (v8 && [v9 count] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __69__WFAccessResource_makeAvailableWithUserInterface_completionHandler___block_invoke;
    v13[3] = &unk_1E837C670;
    v15 = v7;
    v13[4] = self;
    v14 = v6;
    [v14 requestActionInterfacePresentationForActionClassName:v12 classNamesByType:v10 completionHandler:v13];
  }

  else
  {
    (*(v7 + 2))(v7, 1, 0);
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
    v3 = [(WFAccessResource *)self availabilityError];
    [(WFResource *)self updateAvailability:0 withError:v3];
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

- (void)setWorkflow:(id)a3
{
  objc_storeWeak(&self->_workflow, a3);

  [(WFResource *)self invalidateAvailability];
}

- (id)localizedProtectedResourceDescription
{
  v3 = [MEMORY[0x1E69E0BE0] defaultContext];
  v4 = [(WFAccessResource *)self localizedProtectedResourceDescriptionWithContext:v3];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = [(WFAccessResource *)self name];
  }

  v6 = v5;

  return v6;
}

- (WFImage)icon
{
  v3 = [(WFAccessResource *)self associatedAppIdentifier];

  if (v3)
  {
    v4 = +[WFInterchangeAppRegistry sharedRegistry];
    v5 = [(WFAccessResource *)self associatedAppIdentifier];
    v6 = [v4 appWithIdentifier:v5];
    v7 = [v6 icon];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)name
{
  v3 = [(WFAccessResource *)self associatedAppIdentifier];

  if (v3)
  {
    v4 = +[WFInterchangeAppRegistry sharedRegistry];
    v5 = [(WFAccessResource *)self associatedAppIdentifier];
    v6 = [v4 appWithIdentifier:v5];
    v7 = [v6 localizedName];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (WFAccessResource)initWithDefinition:(id)a3 enableDistributedNotifications:(BOOL)a4
{
  v4 = a4;
  v23[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v22.receiver = self;
  v22.super_class = WFAccessResource;
  v7 = [(WFResource *)&v22 initWithDefinition:v6];
  v8 = v7;
  if (v7)
  {
    v7->_token = -1;
    if (v4)
    {
      objc_initWeak(&location, v7);
      v23[0] = @"WFAccessResourceAvailabilityChangedNotification";
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v23[1] = v10;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];

      v12 = [v11 componentsJoinedByString:@"."];

      v13 = v12;
      v14 = [v12 UTF8String];
      v15 = MEMORY[0x1E69E96A0];
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __70__WFAccessResource_initWithDefinition_enableDistributedNotifications___block_invoke;
      handler[3] = &unk_1E837C5F8;
      objc_copyWeak(&v20, &location);
      notify_register_dispatch(v14, &v8->_token, MEMORY[0x1E69E96A0], handler);

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
  v2 = [a1 userInterfaceProtocol];
  if (v2)
  {
    v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end