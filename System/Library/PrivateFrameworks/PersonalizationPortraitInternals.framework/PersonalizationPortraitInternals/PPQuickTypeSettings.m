@interface PPQuickTypeSettings
+ (BOOL)servantShouldRespondToQuery:(id)a3;
@end

@implementation PPQuickTypeSettings

+ (BOOL)servantShouldRespondToQuery:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"PPQuickTypeSettings.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"servant"}];
  }

  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    v9 = MEMORY[0x277D3A600];
LABEL_12:
    v7 = *v9;
    v10 = +[PPSettings sharedInstance];
    v8 = [v10 bundleIdentifierIsEnabledForDonation:v7];

    goto LABEL_13;
  }

  if (v6 == objc_opt_class())
  {
    v9 = MEMORY[0x277D3A5F0];
    goto LABEL_12;
  }

  if (v6 == objc_opt_class())
  {
    v9 = MEMORY[0x277D3A650];
    goto LABEL_12;
  }

  v7 = pp_default_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    v15 = v6;
    _os_log_fault_impl(&dword_23224A000, v7, OS_LOG_TYPE_FAULT, "unknown servant passed to servantShouldRespondToQuery: %@", buf, 0xCu);
  }

  v8 = 0;
LABEL_13:

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

@end