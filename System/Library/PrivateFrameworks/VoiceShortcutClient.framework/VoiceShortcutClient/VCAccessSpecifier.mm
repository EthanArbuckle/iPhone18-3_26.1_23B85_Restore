@interface VCAccessSpecifier
+ (id)accessSpecifierFilteredForAssociatedAppBundleIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier;
+ (id)accessSpecifierForAuditToken:(id *)token;
+ (id)accessSpecifierForCurrentConnection;
+ (id)accessSpecifierForCurrentProcess;
+ (id)accessSpecifierForTask:(__SecTask *)task auditToken:(id)token sandboxCapabilities:(int64_t)capabilities;
+ (id)accessSpecifierForXPCConnection:(id)connection;
+ (id)accessSpecifierUnrestricted;
+ (id)accessSpecifierUnrestrictedWithAssociatedAppBundleIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier;
+ (id)accessSpecifierWithNoAccess;
+ (id)accessSpecifierWithNoAccessForBundleIdentifier:(id)identifier;
- (BOOL)allowConnection;
- (BOOL)allowFullRuntimeAccess;
- (BOOL)allowLinkContextualActionRunningForBundleIdentifier:(id)identifier;
- (BOOL)allowReadAccessForDonations;
- (BOOL)allowReadAccessForSleepWorkflows;
- (BOOL)allowReadAccessToShortcutsLibrary;
- (BOOL)allowReadAccessToSingleStepShortcutsWithBundleIdentifier:(id)identifier;
- (BOOL)allowReadAccessToSuggestionsWithBundleIdentifier:(id)identifier;
- (BOOL)allowReadingOnScreenContent;
- (BOOL)allowResettingAutomationConfirmationLevel;
- (BOOL)allowShortcutImport;
- (BOOL)allowWriteAccessForSleepWorkflows;
- (BOOL)allowWriteAccessToSuggestionsWithBundleIdentifier:(id)identifier;
- (BOOL)isRemovalService;
- (BOOL)isSettingsApp;
- (BOOL)isSpringBoard;
- (NSString)associatedAppBundleIdentifier;
- (NSString)bundleIdentifier;
- (VCAccessSpecifier)initWithSecTask:(__SecTask *)task auditToken:(id)token bundleIdentifier:(id)identifier associatedAppBundleIdentifier:(id)bundleIdentifier entitlements:(int64_t)entitlements sandboxCapabilities:(int64_t)capabilities;
- (id)associatedAppBundleIdentifierFromBundleRecord;
- (id)bundleIdentifierFromTask;
- (id)description;
- (void)dealloc;
@end

@implementation VCAccessSpecifier

+ (id)accessSpecifierForCurrentProcess
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__VCAccessSpecifier_accessSpecifierForCurrentProcess__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (accessSpecifierForCurrentProcess_onceToken != -1)
  {
    dispatch_once(&accessSpecifierForCurrentProcess_onceToken, block);
  }

  v2 = accessSpecifierForCurrentProcess_accessSpecifier;

  return v2;
}

void __53__VCAccessSpecifier_accessSpecifierForCurrentProcess__block_invoke(uint64_t a1)
{
  v2 = SecTaskCreateFromSelf(0);
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = v2;
    v5 = MEMORY[0x1E698E620];
    v6 = [MEMORY[0x1E696AE30] processInfo];
    v7 = v6;
    if (v6)
    {
      [v6 if_auditToken];
    }

    else
    {
      memset(v11, 0, sizeof(v11));
    }

    v8 = [v5 tokenFromAuditToken:v11];
    v9 = [v3 accessSpecifierForTask:v4 auditToken:v8 sandboxCapabilities:0];
    v10 = accessSpecifierForCurrentProcess_accessSpecifier;
    accessSpecifierForCurrentProcess_accessSpecifier = v9;

    CFRelease(v4);
  }

  else
  {
    accessSpecifierForCurrentProcess_accessSpecifier = [*(a1 + 32) accessSpecifierWithNoAccess];

    MEMORY[0x1EEE66BB8]();
  }
}

- (BOOL)allowConnection
{
  if ([(VCAccessSpecifier *)self entitlements])
  {
    return 1;
  }

  associatedAppBundleIdentifier = [(VCAccessSpecifier *)self associatedAppBundleIdentifier];
  v3 = [associatedAppBundleIdentifier length] != 0;

  return v3;
}

- (id)description
{
  v21[12] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  entitlements = [(VCAccessSpecifier *)self entitlements];
  v20[0] = &unk_1F292CB20;
  v20[1] = &unk_1F292CB38;
  v21[0] = @"unrestricted";
  v21[1] = @"library-read";
  v20[2] = &unk_1F292CB50;
  v20[3] = &unk_1F292CB68;
  v21[2] = @"home-resident";
  v21[3] = @"import-shortcuts";
  v20[4] = &unk_1F292CB80;
  v20[5] = &unk_1F292CB98;
  v21[4] = @"on-screen-content-service";
  v21[5] = @"automation-confirmation-reset";
  v20[6] = &unk_1F292CBB0;
  v20[7] = &unk_1F292CBC8;
  v21[6] = @"background-runner";
  v21[7] = @"test-harness-runner";
  v20[8] = &unk_1F292CBE0;
  v20[9] = &unk_1F292CBF8;
  v21[8] = @"droplet-creation";
  v21[9] = @"stepwise-execution";
  v20[10] = &unk_1F292CC10;
  v20[11] = &unk_1F292CC28;
  v21[10] = @"variable-injection";
  v21[11] = @"file-bookmarks";
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:12];
  v8 = objc_opt_new();
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __VCDescriptionOfEntitlements_block_invoke;
  v17 = &unk_1E7B00358;
  v18 = v8;
  v19 = entitlements;
  v9 = v8;
  [v7 enumerateKeysAndObjectsUsingBlock:&v14];
  v10 = [v9 componentsJoinedByString:@" "];

  v11 = [v3 stringWithFormat:@"<%@: %p entitlements=%@>", v5, self, v10, v14, v15, v16, v17];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BOOL)allowFullRuntimeAccess
{
  if ([(VCAccessSpecifier *)self allowUnrestrictedAccess]|| [(VCAccessSpecifier *)self hasEntitlements:64]|| [(VCAccessSpecifier *)self allowReadAccessForSleepWorkflows])
  {
    return 1;
  }

  return [(VCAccessSpecifier *)self allowReadAccessForContextualActions];
}

- (void)dealloc
{
  task = self->_task;
  if (task)
  {
    CFRelease(task);
  }

  v4.receiver = self;
  v4.super_class = VCAccessSpecifier;
  [(VCAccessSpecifier *)&v4 dealloc];
}

- (BOOL)allowResettingAutomationConfirmationLevel
{
  if ([(VCAccessSpecifier *)self allowUnrestrictedAccess])
  {
    return 1;
  }

  return [(VCAccessSpecifier *)self hasEntitlements:2048];
}

- (BOOL)allowReadingOnScreenContent
{
  if ([(VCAccessSpecifier *)self allowUnrestrictedAccess])
  {
    return 1;
  }

  return [(VCAccessSpecifier *)self hasEntitlements:1024];
}

- (BOOL)isRemovalService
{
  bundleIdentifier = [(VCAccessSpecifier *)self bundleIdentifier];
  v3 = [bundleIdentifier isEqualToString:@"com.apple.shortcuts.appremoval"];

  return v3;
}

- (BOOL)isSpringBoard
{
  associatedAppBundleIdentifier = [(VCAccessSpecifier *)self associatedAppBundleIdentifier];
  v3 = [associatedAppBundleIdentifier isEqualToString:@"com.apple.springboard"];

  return v3;
}

- (BOOL)isSettingsApp
{
  associatedAppBundleIdentifier = [(VCAccessSpecifier *)self associatedAppBundleIdentifier];
  v3 = [associatedAppBundleIdentifier isEqualToString:@"com.apple.Preferences"];

  return v3;
}

- (BOOL)allowReadAccessForDonations
{
  if ([(VCAccessSpecifier *)self allowUnrestrictedAccess])
  {
    return 1;
  }

  return [(VCAccessSpecifier *)self hasEntitlements:32];
}

- (BOOL)allowReadAccessForSleepWorkflows
{
  if ([(VCAccessSpecifier *)self allowUnrestrictedAccess])
  {
    return 1;
  }

  return [(VCAccessSpecifier *)self hasEntitlements:32];
}

- (BOOL)allowWriteAccessForSleepWorkflows
{
  if ([(VCAccessSpecifier *)self allowUnrestrictedAccess])
  {
    return 1;
  }

  return [(VCAccessSpecifier *)self hasEntitlements:32];
}

- (BOOL)allowLinkContextualActionRunningForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(VCAccessSpecifier *)self allowFullRuntimeAccess])
  {
    v5 = 1;
  }

  else
  {
    auditToken = [(VCAccessSpecifier *)self auditToken];

    if (auditToken)
    {
      descriptor = [MEMORY[0x1E69C7630] descriptor];
      [descriptor setValues:1];
      v8 = MEMORY[0x1E69C7618];
      v9 = MEMORY[0x1E69C7610];
      v10 = MEMORY[0x1E69C7640];
      auditToken2 = [(VCAccessSpecifier *)self auditToken];
      v12 = [v10 targetWithPid:{objc_msgSend(auditToken2, "pid")}];
      v13 = [v9 predicateMatchingTarget:v12];
      v14 = [v8 statesForPredicate:v13 withDescriptor:descriptor error:0];

      lastObject = [v14 lastObject];
      LODWORD(v12) = [lastObject taskState];

      if (v12 == 4)
      {
        associatedAppBundleIdentifier = [(VCAccessSpecifier *)self associatedAppBundleIdentifier];
        v5 = [associatedAppBundleIdentifier isEqualToString:identifierCopy];
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)allowReadAccessToShortcutsLibrary
{
  if ([(VCAccessSpecifier *)self allowUnrestrictedAccess])
  {
    return 1;
  }

  return [(VCAccessSpecifier *)self hasEntitlements:4];
}

- (BOOL)allowReadAccessToSuggestionsWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(VCAccessSpecifier *)self allowUnrestrictedAccess])
  {
    v5 = 1;
  }

  else
  {
    associatedAppBundleIdentifier = [(VCAccessSpecifier *)self associatedAppBundleIdentifier];
    v5 = ([associatedAppBundleIdentifier isEqualToString:identifierCopy] & 1) != 0 || -[VCAccessSpecifier hasEntitlements:](self, "hasEntitlements:", 32);
  }

  return v5;
}

- (BOOL)allowWriteAccessToSuggestionsWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(VCAccessSpecifier *)self allowUnrestrictedAccess])
  {
    v5 = 1;
  }

  else
  {
    associatedAppBundleIdentifier = [(VCAccessSpecifier *)self associatedAppBundleIdentifier];
    v5 = [associatedAppBundleIdentifier isEqualToString:identifierCopy];
  }

  return v5;
}

- (BOOL)allowReadAccessToSingleStepShortcutsWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(VCAccessSpecifier *)self allowUnrestrictedAccess]|| [(VCAccessSpecifier *)self hasEntitlements:4])
  {
    v5 = 1;
  }

  else
  {
    associatedAppBundleIdentifier = [(VCAccessSpecifier *)self associatedAppBundleIdentifier];
    v5 = [associatedAppBundleIdentifier isEqualToString:identifierCopy];
  }

  return v5;
}

- (BOOL)allowShortcutImport
{
  if ([(VCAccessSpecifier *)self allowUnrestrictedAccess])
  {
    return 1;
  }

  return [(VCAccessSpecifier *)self hasEntitlements:256];
}

- (id)associatedAppBundleIdentifierFromBundleRecord
{
  v14 = *MEMORY[0x1E69E9840];
  bundleIdentifier = [(VCAccessSpecifier *)self bundleIdentifier];
  if (bundleIdentifier)
  {
    v9 = 0;
    v3 = [MEMORY[0x1E6963620] bundleRecordWithBundleIdentifier:bundleIdentifier allowPlaceholder:0 error:&v9];
    v4 = v9;
    if (v3)
    {
      v5 = VCAppBundleIdentifierForBundleRecord(v3);
    }

    else
    {
      v6 = getWFVoiceShortcutClientLogObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v11 = "[VCAccessSpecifier associatedAppBundleIdentifierFromBundleRecord]";
        v12 = 2114;
        v13 = v4;
        _os_log_impl(&dword_1B1DE3000, v6, OS_LOG_TYPE_INFO, "%s Couldn't get LSBundleRecord from task, leaving associated app bundle identifier as nil (%{public}@)", buf, 0x16u);
      }

      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

- (NSString)associatedAppBundleIdentifier
{
  associatedAppBundleIdentifier = self->_associatedAppBundleIdentifier;
  null = [MEMORY[0x1E695DFB0] null];

  if (associatedAppBundleIdentifier == null)
  {
    v5 = 0;
  }

  else if (associatedAppBundleIdentifier)
  {
    associatedAppBundleIdentifier = associatedAppBundleIdentifier;
    v5 = associatedAppBundleIdentifier;
  }

  else
  {
    associatedAppBundleIdentifierFromBundleRecord = [(VCAccessSpecifier *)self associatedAppBundleIdentifierFromBundleRecord];
    v5 = associatedAppBundleIdentifierFromBundleRecord;
    if (associatedAppBundleIdentifierFromBundleRecord)
    {
      null2 = associatedAppBundleIdentifierFromBundleRecord;
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
    }

    associatedAppBundleIdentifier = self->_associatedAppBundleIdentifier;
    self->_associatedAppBundleIdentifier = null2;
  }

  return v5;
}

- (id)bundleIdentifierFromTask
{
  task = self->_task;
  if (!task)
  {
LABEL_5:
    v6 = 0;
    goto LABEL_7;
  }

  v3 = SecTaskCopyValueForEntitlement(task, @"application-identifier", 0);
  if (v3)
  {
    v4 = v3;
    v5 = CPCopyBundleIdentifierAndTeamFromApplicationIdentifier();
    CFRelease(v4);
    if (v5)
    {
      v6 = 0;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v6 = SecTaskCopySigningIdentifier(task, 0);
LABEL_7:

  return v6;
}

- (NSString)bundleIdentifier
{
  bundleIdentifier = self->_bundleIdentifier;
  null = [MEMORY[0x1E695DFB0] null];

  if (bundleIdentifier == null)
  {
    v5 = 0;
  }

  else if (bundleIdentifier)
  {
    bundleIdentifier = bundleIdentifier;
    v5 = bundleIdentifier;
  }

  else
  {
    bundleIdentifierFromTask = [(VCAccessSpecifier *)self bundleIdentifierFromTask];
    v5 = bundleIdentifierFromTask;
    if (bundleIdentifierFromTask)
    {
      null2 = bundleIdentifierFromTask;
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
    }

    bundleIdentifier = self->_bundleIdentifier;
    self->_bundleIdentifier = null2;
  }

  return v5;
}

- (VCAccessSpecifier)initWithSecTask:(__SecTask *)task auditToken:(id)token bundleIdentifier:(id)identifier associatedAppBundleIdentifier:(id)bundleIdentifier entitlements:(int64_t)entitlements sandboxCapabilities:(int64_t)capabilities
{
  tokenCopy = token;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  v26.receiver = self;
  v26.super_class = VCAccessSpecifier;
  v18 = [(VCAccessSpecifier *)&v26 init];
  v19 = v18;
  if (v18)
  {
    v18->_task = task;
    if (task)
    {
      CFRetain(task);
    }

    objc_storeStrong(&v19->_auditToken, token);
    v20 = [identifierCopy copy];
    bundleIdentifier = v19->_bundleIdentifier;
    v19->_bundleIdentifier = v20;

    v22 = [bundleIdentifierCopy copy];
    associatedAppBundleIdentifier = v19->_associatedAppBundleIdentifier;
    v19->_associatedAppBundleIdentifier = v22;

    v19->_entitlements = entitlements;
    v19->_sandboxCapabilities = capabilities;
    v24 = v19;
  }

  return v19;
}

+ (id)accessSpecifierForTask:(__SecTask *)task auditToken:(id)token sandboxCapabilities:(int64_t)capabilities
{
  v88[16] = *MEMORY[0x1E69E9840];
  v88[0] = @"com.apple.siri.VoiceShortcuts.xpc";
  v88[1] = @"com.apple.shortcuts.library-read-access";
  v6 = *MEMORY[0x1E696E578];
  v88[2] = @"com.apple.shortcuts.home-resident";
  v88[3] = v6;
  v88[4] = @"com.apple.shortcuts.health-access";
  v88[5] = @"com.apple.shortcuts.background-running";
  v88[6] = @"com.apple.shortcuts.contextual-actions-client";
  v88[7] = @"com.apple.shortcuts.import-shortcuts";
  v88[8] = @"com.apple.rootless.storage.shortcuts";
  v88[9] = @"com.apple.shortcuts.on-screen-content-service";
  v88[10] = @"com.apple.shortcuts.background-runner";
  v88[11] = @"com.apple.shortcuts.test-harness-runner";
  v88[12] = @"com.apple.shortcuts.droplet-creation";
  v88[13] = @"com.apple.shortcuts.stepwise-execution";
  v88[14] = @"com.apple.shortcuts.variable-injection";
  v88[15] = @"com.apple.shortcuts.file-bookmarks";
  v7 = MEMORY[0x1E695DEC8];
  tokenCopy = token;
  [v7 arrayWithObjects:v88 count:16];
  v83 = v86 = task;
  v8 = SecTaskCopyValuesForEntitlements(task, v83, 0);
  v9 = [(__CFDictionary *)v8 objectForKeyedSubscript:@"com.apple.siri.VoiceShortcuts.xpc"];
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  bOOLValue = [v11 BOOLValue];
  v12 = [(__CFDictionary *)v8 objectForKeyedSubscript:@"com.apple.shortcuts.library-read-access"];
  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  bOOLValue2 = [v14 BOOLValue];
  v15 = [(__CFDictionary *)v8 objectForKeyedSubscript:@"com.apple.shortcuts.home-resident"];
  if (v15)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  bOOLValue3 = [v17 BOOLValue];
  v18 = [(__CFDictionary *)v8 objectForKeyedSubscript:v6];
  if (v18)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  bOOLValue4 = [v20 BOOLValue];
  v21 = [(__CFDictionary *)v8 objectForKeyedSubscript:@"com.apple.shortcuts.health-access"];
  if (v21)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;

  bOOLValue5 = [v23 BOOLValue];
  v24 = [(__CFDictionary *)v8 objectForKeyedSubscript:@"com.apple.shortcuts.background-running"];
  if (v24)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  v26 = v25;

  bOOLValue6 = [v26 BOOLValue];
  v27 = [(__CFDictionary *)v8 objectForKeyedSubscript:@"com.apple.shortcuts.contextual-actions-client"];
  if (v27)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = 0;
  }

  v29 = v28;

  bOOLValue7 = [v29 BOOLValue];
  v30 = [(__CFDictionary *)v8 objectForKeyedSubscript:@"com.apple.shortcuts.import-shortcuts"];
  if (v30)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  v32 = v31;

  bOOLValue8 = [v32 BOOLValue];
  v33 = [(__CFDictionary *)v8 objectForKeyedSubscript:@"com.apple.rootless.storage.shortcuts"];
  if (v33)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    v34 = 0;
  }

  v35 = v34;

  bOOLValue9 = [v35 BOOLValue];
  v36 = [(__CFDictionary *)v8 objectForKeyedSubscript:@"com.apple.shortcuts.on-screen-content-service"];
  if (v36)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }
  }

  else
  {
    v37 = 0;
  }

  v38 = v37;

  bOOLValue10 = [v38 BOOLValue];
  v40 = [(__CFDictionary *)v8 objectForKeyedSubscript:@"com.apple.shortcuts.automation-confirmation-reset"];
  if (v40)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = v40;
    }

    else
    {
      v41 = 0;
    }
  }

  else
  {
    v41 = 0;
  }

  v42 = v41;

  bOOLValue11 = [v42 BOOLValue];
  v44 = [(__CFDictionary *)v8 objectForKeyedSubscript:@"com.apple.shortcuts.background-runner"];
  if (v44)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v45 = v44;
    }

    else
    {
      v45 = 0;
    }
  }

  else
  {
    v45 = 0;
  }

  v46 = v45;

  bOOLValue12 = [v46 BOOLValue];
  v48 = [(__CFDictionary *)v8 objectForKeyedSubscript:@"com.apple.shortcuts.test-harness-runner"];
  if (v48)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v49 = v48;
    }

    else
    {
      v49 = 0;
    }
  }

  else
  {
    v49 = 0;
  }

  v50 = v49;

  bOOLValue13 = [v50 BOOLValue];
  v52 = [(__CFDictionary *)v8 objectForKeyedSubscript:@"com.apple.shortcuts.droplet-creation"];
  if (v52)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v53 = v52;
    }

    else
    {
      v53 = 0;
    }
  }

  else
  {
    v53 = 0;
  }

  v54 = v53;

  bOOLValue14 = [v54 BOOLValue];
  v56 = [(__CFDictionary *)v8 objectForKeyedSubscript:@"com.apple.shortcuts.stepwise-execution"];
  if (v56)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v57 = v56;
    }

    else
    {
      v57 = 0;
    }
  }

  else
  {
    v57 = 0;
  }

  v58 = v57;

  bOOLValue15 = [v58 BOOLValue];
  v60 = [(__CFDictionary *)v8 objectForKeyedSubscript:@"com.apple.shortcuts.variable-injection"];
  if (v60)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v61 = v60;
    }

    else
    {
      v61 = 0;
    }
  }

  else
  {
    v61 = 0;
  }

  v62 = v61;

  bOOLValue16 = [v62 BOOLValue];
  v64 = [(__CFDictionary *)v8 objectForKeyedSubscript:@"com.apple.shortcuts.file-bookmarks"];
  if (v64)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v65 = v64;
    }

    else
    {
      v65 = 0;
    }
  }

  else
  {
    v65 = 0;
  }

  v66 = bOOLValue;
  if (bOOLValue2)
  {
    v66 = bOOLValue | 4;
  }

  if (bOOLValue3)
  {
    v66 |= 8uLL;
  }

  if (bOOLValue4)
  {
    v66 |= 0x10uLL;
  }

  if (bOOLValue5)
  {
    v66 |= 0x20uLL;
  }

  if (bOOLValue6)
  {
    v66 |= 0x40uLL;
  }

  if (bOOLValue7)
  {
    v66 |= 0x80uLL;
  }

  if (bOOLValue8)
  {
    v66 |= 0x100uLL;
  }

  if (bOOLValue9)
  {
    v66 |= 0x200uLL;
  }

  if (bOOLValue10)
  {
    v66 |= 0x400uLL;
  }

  if (bOOLValue11)
  {
    v66 |= 0x800uLL;
  }

  if (bOOLValue12)
  {
    v66 |= 0x1000uLL;
  }

  if (bOOLValue13)
  {
    v66 |= 0x2000uLL;
  }

  if (bOOLValue14)
  {
    v66 |= 0x4000uLL;
  }

  if (bOOLValue15)
  {
    v66 |= 0x8000uLL;
  }

  if (bOOLValue16)
  {
    v67 = v66 | 0x10000;
  }

  else
  {
    v67 = v66;
  }

  v68 = v65;

  bOOLValue17 = [v68 BOOLValue];
  if (bOOLValue17)
  {
    v70 = v67 | 0x20000;
  }

  else
  {
    v70 = v67;
  }

  v71 = [[self alloc] initWithSecTask:v86 auditToken:tokenCopy bundleIdentifier:0 associatedAppBundleIdentifier:0 entitlements:v70 sandboxCapabilities:capabilities];
  v72 = *MEMORY[0x1E69E9840];

  return v71;
}

+ (id)accessSpecifierForAuditToken:(id *)token
{
  v5 = *&token->var0[4];
  *v12.val = *token->var0;
  *&v12.val[4] = v5;
  v6 = SecTaskCreateWithAuditToken(0, &v12);
  if (v6)
  {
    v7 = v6;
    v8 = *&token->var0[4];
    *v12.val = *token->var0;
    *&v12.val[4] = v8;
    v9 = [MEMORY[0x1E698E620] tokenFromAuditToken:&v12];
    accessSpecifierWithNoAccess = [self accessSpecifierForTask:v7 auditToken:v9 sandboxCapabilities:0];

    CFRelease(v7);
  }

  else
  {
    accessSpecifierWithNoAccess = [self accessSpecifierWithNoAccess];
  }

  return accessSpecifierWithNoAccess;
}

+ (id)accessSpecifierForXPCConnection:(id)connection
{
  if (connection)
  {
    [connection auditToken];
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  v4 = [self accessSpecifierForAuditToken:v6];

  return v4;
}

+ (id)accessSpecifierForCurrentConnection
{
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  if (currentConnection)
  {
    v4 = [self accessSpecifierForXPCConnection:currentConnection];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)accessSpecifierWithNoAccessForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[self alloc] initWithSecTask:0 auditToken:0 bundleIdentifier:identifierCopy associatedAppBundleIdentifier:0 entitlements:0 sandboxCapabilities:0];

  return v5;
}

+ (id)accessSpecifierWithNoAccess
{
  v2 = [[self alloc] initWithSecTask:0 auditToken:0 bundleIdentifier:0 associatedAppBundleIdentifier:0 entitlements:0 sandboxCapabilities:0];

  return v2;
}

+ (id)accessSpecifierFilteredForAssociatedAppBundleIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCAccessSpecifier.m" lineNumber:265 description:{@"Invalid parameter not satisfying: %@", @"associatedAppBundleIdentifier"}];
  }

  v9 = [[self alloc] initWithSecTask:0 auditToken:0 bundleIdentifier:bundleIdentifierCopy associatedAppBundleIdentifier:identifierCopy entitlements:0 sandboxCapabilities:0];

  return v9;
}

+ (id)accessSpecifierUnrestrictedWithAssociatedAppBundleIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier
{
  bundleIdentifierCopy = bundleIdentifier;
  identifierCopy = identifier;
  v8 = [[self alloc] initWithSecTask:0 auditToken:0 bundleIdentifier:bundleIdentifierCopy associatedAppBundleIdentifier:identifierCopy entitlements:1 sandboxCapabilities:0];

  return v8;
}

+ (id)accessSpecifierUnrestricted
{
  v2 = [[self alloc] initWithSecTask:0 auditToken:0 bundleIdentifier:0 associatedAppBundleIdentifier:0 entitlements:1 sandboxCapabilities:0];

  return v2;
}

@end