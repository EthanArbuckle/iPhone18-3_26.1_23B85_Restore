@interface SFCollaborationUserDefaults
+ (id)sharedDefaults;
- (id)existingCollaborativeModeForContentIdentifier:(id)a3;
@end

@implementation SFCollaborationUserDefaults

+ (id)sharedDefaults
{
  if (sharedDefaults_once != -1)
  {
    +[SFCollaborationUserDefaults sharedDefaults];
  }

  v3 = sharedDefaults_sharedDefaults;

  return v3;
}

void __45__SFCollaborationUserDefaults_sharedDefaults__block_invoke()
{
  v0 = objc_alloc_init(SFCollaborationUserDefaults);
  v1 = sharedDefaults_sharedDefaults;
  sharedDefaults_sharedDefaults = v0;
}

- (id)existingCollaborativeModeForContentIdentifier:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"SFCollaborationUserDefaults", v3];
  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [v5 objectForKey:v4];

  v7 = share_sheet_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 BOOLValue];
    v9 = "no";
    if (v8)
    {
      v9 = "yes";
    }

    *buf = 136315394;
    v13 = v9;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_1A9662000, v7, OS_LOG_TYPE_DEFAULT, "Retrieving collaborative mode:%s for contentIdentifier:%@", buf, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v6;
}

@end