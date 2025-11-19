@interface PSExecutionSessionWorkarounds
+ (id)sharedInstance;
- (BOOL)shouldForceCadencedGSTforDomain:(id)a3 forGraph:(id)a4 systemPulseRate:(id)a5;
- (BOOL)shouldOverrideCameraStreamDomains;
- (BOOL)shouldOverrideJasperStream;
- (BOOL)shouldOverrideMattingStream;
- (BOOL)shouldUsePRMCameraForSuperframe:(id)a3;
- (id)shortenedNameForGraph:(id)a3 procName:(id)a4;
- (id)shortenedNameForTask:(id)a3 procName:(id)a4;
- (int)keyForProviderName:(id)a3;
@end

@implementation PSExecutionSessionWorkarounds

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[PSExecutionSessionWorkarounds sharedInstance];
  }

  v3 = sharedInstance_inst_0;

  return v3;
}

uint64_t __47__PSExecutionSessionWorkarounds_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(PSExecutionSessionWorkarounds);
  v1 = sharedInstance_inst_0;
  sharedInstance_inst_0 = v0;

  v2 = sharedInstance_inst_0;

  return [v2 setIsUsingLegacyAPI:0];
}

- (int)keyForProviderName:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v4 = [MEMORY[0x277CCAC38] processInfo];
    v3 = [v4 processName];
  }

  if ([v3 localizedCaseInsensitiveContainsString:@"realitycamera"])
  {
    v5 = 0;
  }

  else if ([v3 localizedCaseInsensitiveContainsString:@"wakeboard"] & 1) != 0 || (objc_msgSend(v3, "localizedCaseInsensitiveContainsString:", @"SystemCompositor"))
  {
    v5 = 2;
  }

  else if ([v3 localizedCaseInsensitiveContainsString:@"arkitd"])
  {
    v5 = 1;
  }

  else if ([v3 localizedCaseInsensitiveContainsString:@"surfboard"])
  {
    v5 = 3;
  }

  else if ([v3 localizedCaseInsensitiveContainsString:@"sawd"])
  {
    v5 = 7;
  }

  else if ([v3 localizedCaseInsensitiveContainsString:@"roya"])
  {
    v5 = 4;
  }

  else if ([v3 localizedCaseInsensitiveContainsString:@"calibration"])
  {
    v5 = 6;
  }

  else
  {
    v5 = 28;
  }

  return v5;
}

- (BOOL)shouldOverrideMattingStream
{
  v2 = [MEMORY[0x277CCAC38] processInfo];
  v3 = [v2 processName];

  LOBYTE(v2) = [v3 localizedCaseInsensitiveContainsString:@"arkitd"];
  return v2;
}

- (BOOL)shouldOverrideJasperStream
{
  v2 = [MEMORY[0x277CCAC38] processInfo];
  v3 = [v2 processName];

  LOBYTE(v2) = [v3 localizedCaseInsensitiveContainsString:@"realitycamerad"];
  return v2;
}

- (BOOL)shouldOverrideCameraStreamDomains
{
  v2 = [MEMORY[0x277CCAC38] processInfo];
  v3 = [v2 processName];

  LOBYTE(v2) = [v3 localizedCaseInsensitiveContainsString:@"realitycamerad"];
  return v2;
}

- (BOOL)shouldUsePRMCameraForSuperframe:(id)a3
{
  v3 = a3;
  if ([v3 isEqual:@"necaml_oid"] & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"necamr_oid") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"becaml_oid") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"becamr_oid") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"necaml_oc") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"necamr_oc") & 1) != 0 || (objc_msgSend(v3, "isEqual:", @"necaml_boc"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqual:@"necamr_boc"];
  }

  return v4;
}

- (BOOL)shouldForceCadencedGSTforDomain:(id)a3 forGraph:(id)a4 systemPulseRate:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CBEB98] setWithObjects:{@"sink-applecv3d/lux/oahu/CV3DLuxEstimationResultRef-resource-graph", 0}];
  v11 = +[PLSSettings currentSettings];
  v12 = [v11 enableSDJat90];

  if (v12 == 1)
  {
    v13 = [MEMORY[0x277D3E6C8] customDomain:@"dsjcam"];
    if (![v7 isEqual:v13] || (objc_msgSend(v8, "isEqualToString:", @"RC-graph-dcamr_desgen_raw-dcaml_desgen_raw") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"RC-graph-scaml_desgen_raw-scamr_desgen_raw") & 1) != 0)
    {
    }

    else
    {
      v20 = [v10 containsObject:v8];

      if ((v20 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    if ([v9 isEqual:&unk_2870CAC20])
    {
LABEL_13:
      v16 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [v7 key];
        _os_log_unreliable_impl();
      }

      goto LABEL_16;
    }

    v14 = +[PLSSettings currentSettings];
    if (![v14 shouldUseOrchestratorV2] || (objc_msgSend(v8, "containsString:", @"com.apple.reality.kind.camera.xcam.raw") & 1) != 0)
    {
LABEL_12:

      goto LABEL_13;
    }

    v15 = [MEMORY[0x277D3E6C8] customDomain:@"m_p_x_cam"];
    if (![v7 isEqual:v15] || objc_msgSend(v8, "isEqualToString:", @"RC-graph-xcam_raw"))
    {

      goto LABEL_12;
    }

    v21 = [v10 containsObject:v8];

    if (v21)
    {
      goto LABEL_13;
    }

LABEL_19:
    v17 = 1;
    goto LABEL_17;
  }

LABEL_16:
  v17 = 0;
LABEL_17:

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (id)shortenedNameForGraph:(id)a3 procName:(id)a4
{
  v5 = a3;
  if ([a4 localizedCaseInsensitiveContainsString:@"royad"])
  {
    v6 = [v5 componentsSeparatedByString:@"$"];
    v7 = [v6 objectAtIndexedSubscript:0];
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (id)shortenedNameForTask:(id)a3 procName:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 localizedCaseInsensitiveContainsString:@"royad"])
  {
    v7 = [v5 componentsSeparatedByString:@"$"];
    v8 = [v7 objectAtIndexedSubscript:0];
  }

  else if ([v6 localizedCaseInsensitiveContainsString:@"audiomxd"])
  {
    v8 = &stru_2870BCDD8;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

@end