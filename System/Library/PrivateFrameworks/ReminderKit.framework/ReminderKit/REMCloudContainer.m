@interface REMCloudContainer
+ (id)_newCloudContainerForAccountIdentifier:(id)a3;
+ (id)newCloudContainerForAccount:(id)a3;
+ (id)newCloudContainerForAccountID:(id)a3;
+ (id)newCloudContainerWithPublicCloudDatabase;
+ (void)_writeLogCreatingCKContainerWithAccountIdentifier:(id)a3 personaIdentifier:(id)a4;
@end

@implementation REMCloudContainer

+ (id)newCloudContainerForAccount:(id)a3
{
  v4 = [a3 objectID];
  v5 = [v4 uuid];
  v6 = [v5 UUIDString];

  v7 = [a1 newCloudContainerForAccountID:v6];
  return v7;
}

+ (id)newCloudContainerForAccountID:(id)a3
{
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__6;
  v18 = __Block_byref_object_dispose__6;
  v19 = 0;
  v5 = +[REMAppleAccountUtilities sharedInstance];
  v6 = [v5 unsafeUntilSystemReady_allCloudKitRemindersEnabledICloudACAccounts];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__REMCloudContainer_newCloudContainerForAccountID___block_invoke;
  v10[3] = &unk_1E75089B0;
  v13 = a1;
  v7 = v4;
  v11 = v7;
  v12 = &v14;
  [v5 performBlockInPersonaContextForAccountIdentifier:v7 block:v10];
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);
  return v8;
}

uint64_t __51__REMCloudContainer_newCloudContainerForAccountID___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 48) _writeLogCreatingCKContainerWithAccountIdentifier:*(a1 + 32) personaIdentifier:a2];
  v3 = [*(a1 + 48) _newCloudContainerForAccountIdentifier:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_newCloudContainerForAccountIdentifier:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "accountIdentifier");
  }

  if ([a1 isSandboxEnvironment])
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = [objc_alloc(MEMORY[0x1E695B8A0]) initWithContainerIdentifier:@"com.apple.reminders" environment:v5];
  v7 = objc_alloc_init(MEMORY[0x1E695B8B0]);
  v8 = [objc_alloc(MEMORY[0x1E695B860]) initWithAccountID:v4];
  [v7 setAccountOverrideInfo:v8];
  v9 = [objc_alloc(MEMORY[0x1E695B888]) initWithContainerID:v6 options:v7];
  v10 = +[REMLog cloudkit];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = v4;
    _os_log_impl(&dword_19A0DB000, v10, OS_LOG_TYPE_DEFAULT, "Created new CloudKit container {accountIdentifier: %{public}@}", buf, 0xCu);
  }

  [v9 setSourceApplicationBundleIdentifier:@"com.apple.reminders"];
  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (void)_writeLogCreatingCKContainerWithAccountIdentifier:(id)a3 personaIdentifier:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = +[REMAppleAccountUtilities sharedInstance];
  v8 = [v7 currentPersonaUserPersonaUniqueString];
  v9 = +[REMLog cloudkit];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138544130;
    v12 = v5;
    v13 = 2114;
    v14 = v6;
    v15 = 1024;
    v16 = [v7 isCurrentPersonaDataSeparated];
    v17 = 2114;
    v18 = v8;
    _os_log_impl(&dword_19A0DB000, v9, OS_LOG_TYPE_DEFAULT, "[newCloudContainerForAccountID] Creating CKContainer with {accountIdentifier: %{public}@, account.personaIdentifier: %{public}@, currentPersona.isDataSeparatedPersona: %d, currentPersona.userPersonaUniqueString: %{public}@}", &v11, 0x26u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

+ (id)newCloudContainerWithPublicCloudDatabase
{
  if ([a1 isSandboxEnvironment])
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  v3 = [objc_alloc(MEMORY[0x1E695B8A0]) initWithContainerIdentifier:@"com.apple.reminders.fdb" environment:v2];
  v4 = [objc_alloc(MEMORY[0x1E695B888]) initWithContainerID:v3];
  [v4 setSourceApplicationBundleIdentifier:@"com.apple.reminders"];
  v5 = +[REMLog cloudkit];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_19A0DB000, v5, OS_LOG_TYPE_DEFAULT, "Created CKContainer with public cloud database", v7, 2u);
  }

  return v4;
}

@end