@interface PSExecutionSessionWorkarounds
+ (id)sharedInstance;
- (BOOL)shouldForceCadencedGSTforDomain:(id)domain forGraph:(id)graph systemPulseRate:(id)rate;
- (BOOL)shouldOverrideCameraStreamDomains;
- (BOOL)shouldOverrideJasperStream;
- (BOOL)shouldOverrideMattingStream;
- (BOOL)shouldUsePRMCameraForSuperframe:(id)superframe;
- (id)shortenedNameForGraph:(id)graph procName:(id)name;
- (id)shortenedNameForTask:(id)task procName:(id)name;
- (int)keyForProviderName:(id)name;
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

- (int)keyForProviderName:(id)name
{
  nameCopy = name;
  if (!nameCopy)
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    nameCopy = [processInfo processName];
  }

  if ([nameCopy localizedCaseInsensitiveContainsString:@"realitycamera"])
  {
    v5 = 0;
  }

  else if ([nameCopy localizedCaseInsensitiveContainsString:@"wakeboard"] & 1) != 0 || (objc_msgSend(nameCopy, "localizedCaseInsensitiveContainsString:", @"SystemCompositor"))
  {
    v5 = 2;
  }

  else if ([nameCopy localizedCaseInsensitiveContainsString:@"arkitd"])
  {
    v5 = 1;
  }

  else if ([nameCopy localizedCaseInsensitiveContainsString:@"surfboard"])
  {
    v5 = 3;
  }

  else if ([nameCopy localizedCaseInsensitiveContainsString:@"sawd"])
  {
    v5 = 7;
  }

  else if ([nameCopy localizedCaseInsensitiveContainsString:@"roya"])
  {
    v5 = 4;
  }

  else if ([nameCopy localizedCaseInsensitiveContainsString:@"calibration"])
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
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  processName = [processInfo processName];

  LOBYTE(processInfo) = [processName localizedCaseInsensitiveContainsString:@"arkitd"];
  return processInfo;
}

- (BOOL)shouldOverrideJasperStream
{
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  processName = [processInfo processName];

  LOBYTE(processInfo) = [processName localizedCaseInsensitiveContainsString:@"realitycamerad"];
  return processInfo;
}

- (BOOL)shouldOverrideCameraStreamDomains
{
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  processName = [processInfo processName];

  LOBYTE(processInfo) = [processName localizedCaseInsensitiveContainsString:@"realitycamerad"];
  return processInfo;
}

- (BOOL)shouldUsePRMCameraForSuperframe:(id)superframe
{
  superframeCopy = superframe;
  if ([superframeCopy isEqual:@"necaml_oid"] & 1) != 0 || (objc_msgSend(superframeCopy, "isEqual:", @"necamr_oid") & 1) != 0 || (objc_msgSend(superframeCopy, "isEqual:", @"becaml_oid") & 1) != 0 || (objc_msgSend(superframeCopy, "isEqual:", @"becamr_oid") & 1) != 0 || (objc_msgSend(superframeCopy, "isEqual:", @"necaml_oc") & 1) != 0 || (objc_msgSend(superframeCopy, "isEqual:", @"necamr_oc") & 1) != 0 || (objc_msgSend(superframeCopy, "isEqual:", @"necaml_boc"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [superframeCopy isEqual:@"necamr_boc"];
  }

  return v4;
}

- (BOOL)shouldForceCadencedGSTforDomain:(id)domain forGraph:(id)graph systemPulseRate:(id)rate
{
  v23 = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  graphCopy = graph;
  rateCopy = rate;
  v10 = [MEMORY[0x277CBEB98] setWithObjects:{@"sink-applecv3d/lux/oahu/CV3DLuxEstimationResultRef-resource-graph", 0}];
  v11 = +[PLSSettings currentSettings];
  enableSDJat90 = [v11 enableSDJat90];

  if (enableSDJat90 == 1)
  {
    v13 = [MEMORY[0x277D3E6C8] customDomain:@"dsjcam"];
    if (![domainCopy isEqual:v13] || (objc_msgSend(graphCopy, "isEqualToString:", @"RC-graph-dcamr_desgen_raw-dcaml_desgen_raw") & 1) != 0 || (objc_msgSend(graphCopy, "isEqualToString:", @"RC-graph-scaml_desgen_raw-scamr_desgen_raw") & 1) != 0)
    {
    }

    else
    {
      v20 = [v10 containsObject:graphCopy];

      if ((v20 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    if ([rateCopy isEqual:&unk_2870CAC20])
    {
LABEL_13:
      v16 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [domainCopy key];
        _os_log_unreliable_impl();
      }

      goto LABEL_16;
    }

    v14 = +[PLSSettings currentSettings];
    if (![v14 shouldUseOrchestratorV2] || (objc_msgSend(graphCopy, "containsString:", @"com.apple.reality.kind.camera.xcam.raw") & 1) != 0)
    {
LABEL_12:

      goto LABEL_13;
    }

    v15 = [MEMORY[0x277D3E6C8] customDomain:@"m_p_x_cam"];
    if (![domainCopy isEqual:v15] || objc_msgSend(graphCopy, "isEqualToString:", @"RC-graph-xcam_raw"))
    {

      goto LABEL_12;
    }

    v21 = [v10 containsObject:graphCopy];

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

- (id)shortenedNameForGraph:(id)graph procName:(id)name
{
  graphCopy = graph;
  if ([name localizedCaseInsensitiveContainsString:@"royad"])
  {
    v6 = [graphCopy componentsSeparatedByString:@"$"];
    v7 = [v6 objectAtIndexedSubscript:0];
  }

  else
  {
    v7 = graphCopy;
  }

  return v7;
}

- (id)shortenedNameForTask:(id)task procName:(id)name
{
  taskCopy = task;
  nameCopy = name;
  if ([nameCopy localizedCaseInsensitiveContainsString:@"royad"])
  {
    v7 = [taskCopy componentsSeparatedByString:@"$"];
    v8 = [v7 objectAtIndexedSubscript:0];
  }

  else if ([nameCopy localizedCaseInsensitiveContainsString:@"audiomxd"])
  {
    v8 = &stru_2870BCDD8;
  }

  else
  {
    v8 = taskCopy;
  }

  return v8;
}

@end