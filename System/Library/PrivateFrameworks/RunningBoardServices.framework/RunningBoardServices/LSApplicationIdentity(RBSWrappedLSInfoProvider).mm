@interface LSApplicationIdentity(RBSWrappedLSInfoProvider)
- (id)fetchWrappedInfoWithError:()RBSWrappedLSInfoProvider;
@end

@implementation LSApplicationIdentity(RBSWrappedLSInfoProvider)

- (id)fetchWrappedInfoWithError:()RBSWrappedLSInfoProvider
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = [a1 findApplicationRecordWithError:?];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 bundleIdentifier];
    v8 = [a1 personaUniqueString];
    v9 = [v6 jobLabel];
    v10 = +[RBSWrappedLSInfo infoWithBundleID:personaString:persistentJobLabel:platform:bundleInode:execInode:](RBSWrappedLSInfo, "infoWithBundleID:personaString:persistentJobLabel:platform:bundleInode:execInode:", v7, v8, v9, [v6 platform], 0, 0);
  }

  else
  {
    v11 = rbs_general_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      if (a3)
      {
        v12 = [*a3 description];
      }

      else
      {
        v12 = @"<>";
      }

      v15 = 138543362;
      v16 = v12;
      _os_log_impl(&dword_18E8AD000, v11, OS_LOG_TYPE_INFO, "fetchWrappedInfoWithError failed due to %{public}@", &v15, 0xCu);
      if (a3)
      {
      }
    }

    v10 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v10;
}

@end