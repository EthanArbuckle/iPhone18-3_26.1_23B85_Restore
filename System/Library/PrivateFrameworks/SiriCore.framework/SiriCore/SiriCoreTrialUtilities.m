@interface SiriCoreTrialUtilities
+ (BOOL)getBooleanForTrialProject:(id)a3 trialNamespace:(id)a4 trialFactor:(id)a5;
+ (id)experimentIdentifiersForTrialProject:(id)a3 trialNamespace:(id)a4;
+ (id)getDirectoryPathForTrialProject:(id)a3 trialNamespace:(id)a4 trialFactor:(id)a5;
+ (id)getTriLevelForTrialProject:(id)a3 trialNamespace:(id)a4 trialFactor:(id)a5;
+ (id)trialClientForProject:(id)a3;
@end

@implementation SiriCoreTrialUtilities

+ (id)experimentIdentifiersForTrialProject:(id)a3 trialNamespace:(id)a4
{
  v5 = a4;
  v6 = [SiriCoreTrialUtilities trialClientForProject:a3];
  v7 = [v6 experimentIdentifiersWithNamespaceName:v5];

  return v7;
}

+ (BOOL)getBooleanForTrialProject:(id)a3 trialNamespace:(id)a4 trialFactor:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = [SiriCoreTrialUtilities getTriLevelForTrialProject:a3 trialNamespace:a4 trialFactor:v7];
  if ([v8 levelOneOfCase] == 10)
  {
    v9 = [v8 BOOLeanValue];
  }

  else
  {
    v10 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v11 = v10;
      v14 = 136315650;
      v15 = "+[SiriCoreTrialUtilities getBooleanForTrialProject:trialNamespace:trialFactor:]";
      v16 = 2112;
      v17 = v7;
      v18 = 1024;
      v19 = [v8 levelOneOfCase];
      _os_log_impl(&dword_2669D1000, v11, OS_LOG_TYPE_INFO, "%s TRILevel is not a BOOLean type: %@ %d", &v14, 0x1Cu);
    }

    v9 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (id)getDirectoryPathForTrialProject:(id)a3 trialNamespace:(id)a4 trialFactor:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = [SiriCoreTrialUtilities getTriLevelForTrialProject:a3 trialNamespace:a4 trialFactor:v7];
  if ([v8 levelOneOfCase] != 101)
  {
    v15 = *MEMORY[0x277CEF098];
    if (!os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      goto LABEL_8;
    }

    v9 = v15;
    v18 = 136315650;
    v19 = "+[SiriCoreTrialUtilities getDirectoryPathForTrialProject:trialNamespace:trialFactor:]";
    v20 = 2112;
    v21 = v7;
    v22 = 1024;
    v23 = [v8 levelOneOfCase];
    _os_log_impl(&dword_2669D1000, v9, OS_LOG_TYPE_INFO, "%s TRILevel is not a directory type: %@ %d", &v18, 0x1Cu);
LABEL_7:

    goto LABEL_8;
  }

  v9 = [v8 directoryValue];
  if (([v9 hasPath]& 1) == 0)
  {
    goto LABEL_7;
  }

  v10 = [v8 directoryValue];
  v11 = [v10 path];
  v12 = [v11 length];

  if (v12)
  {
    v13 = [v8 directoryValue];
    v14 = [v13 path];

    goto LABEL_9;
  }

LABEL_8:
  v14 = 0;
LABEL_9:

  v16 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)getTriLevelForTrialProject:(id)a3 trialNamespace:(id)a4 trialFactor:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [SiriCoreTrialUtilities trialClientForProject:v7];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 levelForFactor:v9 withNamespaceName:v8];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v16 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
      {
        v19 = 136315394;
        v20 = "+[SiriCoreTrialUtilities getTriLevelForTrialProject:trialNamespace:trialFactor:]";
        v21 = 2112;
        v22 = v9;
        _os_log_impl(&dword_2669D1000, v16, OS_LOG_TYPE_INFO, "%s No level for factor %@", &v19, 0x16u);
      }
    }
  }

  else
  {
    v15 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v19 = 136315394;
      v20 = "+[SiriCoreTrialUtilities getTriLevelForTrialProject:trialNamespace:trialFactor:]";
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&dword_2669D1000, v15, OS_LOG_TYPE_INFO, "%s Could not create trial client for project %@", &v19, 0x16u);
    }

    v13 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)trialClientForProject:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277D73B98] projectIdFromName:v3];
  if (v4 && (v5 = v4, (TRIProject_ProjectId_IsValidValue() & 1) != 0))
  {
    v6 = [MEMORY[0x277D73660] clientWithIdentifier:v5];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v10 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
      {
        v13 = 136315394;
        v14 = "+[SiriCoreTrialUtilities trialClientForProject:]";
        v15 = 2112;
        v16 = v3;
        _os_log_impl(&dword_2669D1000, v10, OS_LOG_TYPE_INFO, "%s Could not create trial client for project %@", &v13, 0x16u);
      }
    }
  }

  else
  {
    v9 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO))
    {
      v13 = 136315394;
      v14 = "+[SiriCoreTrialUtilities trialClientForProject:]";
      v15 = 2112;
      v16 = v3;
      _os_log_impl(&dword_2669D1000, v9, OS_LOG_TYPE_INFO, "%s Could not find TRIProject for %@", &v13, 0x16u);
    }

    v7 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

@end