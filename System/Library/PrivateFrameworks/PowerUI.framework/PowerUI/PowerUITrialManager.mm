@interface PowerUITrialManager
- (BOOL)useTrialEnabledFeature:(id)a3;
- (PowerUITrialManager)initWithDefaultsDomain:(id)a3;
- (double)doubleFactorForName:(id)a3;
- (double)loadTrialAdjustedHours;
- (double)loadTrialMinInputChargeDuration;
- (double)loadTrialThreshold;
- (id)loadModelFromPath:(id)a3 deleteExistingFiles:(BOOL)a4;
- (int64_t)longFactorForName:(id)a3;
- (void)addUpdateHandler:(id)a3;
- (void)loadTrialUpdates;
@end

@implementation PowerUITrialManager

- (PowerUITrialManager)initWithDefaultsDomain:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v35.receiver = self;
  v35.super_class = PowerUITrialManager;
  v6 = [(PowerUITrialManager *)&v35 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    v8 = os_log_create("com.apple.powerui.smartcharging", "trialmanager");
    log = v7->_log;
    v7->_log = v8;

    [PowerUISmartChargeUtilities logMemoryUsageInternalForEvent:@"Beginning of TrialManager init"];
    objc_storeStrong(&v7->_defaultsDomain, a3);
    v10 = [MEMORY[0x277D73660] client];
    trialClient = v7->_trialClient;
    v7->_trialClient = v10;

    v12 = v7->_log;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v7->_trialClient;
      *buf = 138412290;
      v37 = v13;
      _os_log_impl(&dword_21B766000, v12, OS_LOG_TYPE_DEFAULT, "Trial Client %@", buf, 0xCu);
    }

    v14 = [(TRIClient *)v7->_trialClient trackingId];
    trialTrackingID = v7->_trialTrackingID;
    v7->_trialTrackingID = v14;

    v16 = v7->_trialClient;
    v33 = 0;
    v34 = 0;
    v17 = [(TRIClient *)v16 trialIdentifiersWithNamespaceName:@"COREOS_CHARGE_PREDICTION" experimentId:&v34 deploymentId:0 treatmentId:&v33];
    v18 = v34;
    v19 = v33;
    if ((v17 & 1) == 0)
    {
      v20 = v7->_log;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B766000, v20, OS_LOG_TYPE_DEFAULT, "Failed to load experiment/treatment IDs", buf, 2u);
      }
    }

    experimentID = v7->_experimentID;
    v7->_experimentID = v18;
    v22 = v18;

    treatmentID = v7->_treatmentID;
    v7->_treatmentID = v19;
    v24 = v19;

    v25 = [MEMORY[0x277CBEB18] array];
    updateHandlers = v7->_updateHandlers;
    v7->_updateHandlers = v25;

    v27 = v7->_trialClient;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __46__PowerUITrialManager_initWithDefaultsDomain___block_invoke;
    v31[3] = &unk_2782D3DA0;
    v32 = v7;
    v28 = [(TRIClient *)v27 addUpdateHandlerForNamespaceName:@"COREOS_CHARGE_PREDICTION" usingBlock:v31];
    [PowerUISmartChargeUtilities logMemoryUsageInternalForEvent:@"End of TrialManager init"];
  }

  v29 = *MEMORY[0x277D85DE8];
  return v7;
}

void __46__PowerUITrialManager_initWithDefaultsDomain___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = [*(a1 + 32) updateHandlers];
  v3 = [v2 copy];

  os_unfair_lock_unlock((*(a1 + 32) + 8));
  [*(a1 + 32) loadTrialUpdates];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v10 + 1) + 8 * v8) + 16))(*(*(&v10 + 1) + 8 * v8));
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)loadTrialUpdates
{
  [PowerUISmartChargeUtilities logMemoryUsageInternalForEvent:@"Beginning of loadTrialUpdates"];
  os_unfair_lock_lock(&self->_lock);
  [(TRIClient *)self->_trialClient refresh];
  trialClient = self->_trialClient;
  v12 = 0;
  v13 = 0;
  v4 = [(TRIClient *)trialClient trialIdentifiersWithNamespaceName:@"COREOS_CHARGE_PREDICTION" experimentId:&v13 deploymentId:0 treatmentId:&v12];
  v5 = v13;
  v6 = v12;
  if ((v4 & 1) == 0)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Failed to load experiment/treatment IDs", v11, 2u);
    }
  }

  experimentID = self->_experimentID;
  self->_experimentID = v5;
  v9 = v5;

  treatmentID = self->_treatmentID;
  self->_treatmentID = v6;

  os_unfair_lock_unlock(&self->_lock);
  [PowerUISmartChargeUtilities logMemoryUsageInternalForEvent:@"End of loadTrialUpdates"];
}

- (int64_t)longFactorForName:(id)a3
{
  v3 = [(PowerUITrialManager *)self trialFactor:a3];
  v4 = [v3 longValue];

  return v4;
}

- (double)doubleFactorForName:(id)a3
{
  v3 = [(PowerUITrialManager *)self trialFactor:a3];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)addUpdateHandler:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  updateHandlers = self->_updateHandlers;
  v6 = MEMORY[0x21CEF8A60](v4);

  [(NSMutableArray *)updateHandlers addObject:v6];

  os_unfair_lock_unlock(&self->_lock);
}

- (double)loadTrialThreshold
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(PowerUITrialManager *)self trialFactor:@"engagementThreshold"];
  if (v3)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v5 = log;
      [v3 doubleValue];
      v11 = 134217984;
      v12 = v6;
      _os_log_impl(&dword_21B766000, v5, OS_LOG_TYPE_DEFAULT, "Threshold value is %lf", &v11, 0xCu);
    }

    [v3 doubleValue];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (double)loadTrialAdjustedHours
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(PowerUITrialManager *)self trialFactor:@"adjustedHours"];
  if (v3)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v5 = log;
      [v3 doubleValue];
      v11 = 134217984;
      v12 = v6;
      _os_log_impl(&dword_21B766000, v5, OS_LOG_TYPE_DEFAULT, "Duration hours is %lf", &v11, 0xCu);
    }

    [v3 doubleValue];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (double)loadTrialMinInputChargeDuration
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(PowerUITrialManager *)self trialFactor:@"minInputChargeDuration"];
  if (v3)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v5 = log;
      [v3 doubleValue];
      v11 = 134217984;
      v12 = v6;
      _os_log_impl(&dword_21B766000, v5, OS_LOG_TYPE_DEFAULT, "Minimum charge duration considered for model input is %lf", &v11, 0xCu);
    }

    [v3 doubleValue];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)useTrialEnabledFeature:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"trialOverride.%@", v4];
  v6 = [PowerUISmartChargeUtilities numberForPreferenceKey:v5 inDomain:self->_defaultsDomain];

  if (v6 && [v6 BOOLValue])
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v4;
      _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Feature '%@' enabled via defaults override", buf, 0xCu);
    }

    v8 = 1;
  }

  else
  {
    v9 = [(PowerUITrialManager *)self trialFactor:v4];
    v10 = self->_log;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [(PowerUITrialManager *)v10 useTrialEnabledFeature:v9];
      }

      v8 = [v9 BOOLeanValue];
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [PowerUITrialManager useTrialEnabledFeature:];
      }

      v8 = 0;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)loadModelFromPath:(id)a3 deleteExistingFiles:(BOOL)a4
{
  v4 = a4;
  v131 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = os_transaction_create();
  [PowerUISmartChargeUtilities logMemoryUsageInternalForEvent:@"Beginning of loadModelFromPath"];
  log = self->_log;
  if (v6)
  {
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      [PowerUITrialManager loadModelFromPath:deleteExistingFiles:];
    }

    if (([v6 isAbsolutePath] & 1) == 0)
    {
      v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v10 = [v9 pathForResource:v6 ofType:0];

      v11 = self->_log;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v122 = v10;
        _os_log_impl(&dword_21B766000, v11, OS_LOG_TYPE_DEFAULT, "Not an absolute path, loading absolute path...Path is %@", buf, 0xCu);
      }

      if (v10)
      {
        v12 = v10;

        v6 = v12;
      }
    }

    v13 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"\\.(\\d+?)\\." options:1 error:0];
    v14 = [v13 firstMatchInString:v6 options:0 range:{0, objc_msgSend(v6, "length")}];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 range];
      v18 = [v6 substringWithRange:{v16, v17}];
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
      {
        [PowerUITrialManager loadModelFromPath:deleteExistingFiles:];
      }
    }

    else
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [PowerUITrialManager loadModelFromPath:deleteExistingFiles:];
      }

      v18 = 0;
    }

    v20 = [MEMORY[0x277CCAA00] defaultManager];
    v118 = 0;
    if ([v20 fileExistsAtPath:@"/var/mobile/Library/PowerUI" isDirectory:&v118])
    {
      v21 = 0;
    }

    else
    {
      v117 = 0;
      v22 = [v20 createDirectoryAtPath:@"/var/mobile/Library/PowerUI" withIntermediateDirectories:1 attributes:0 error:&v117];
      v21 = v117;
      if ((v22 & 1) == 0)
      {
        if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
        {
          [PowerUITrialManager loadModelFromPath:deleteExistingFiles:];
        }

        v19 = 0;
        goto LABEL_101;
      }
    }

    if (v18)
    {
      v90 = v4;
      v116 = v21;
      v99 = v20;
      v23 = [v20 contentsOfDirectoryAtPath:@"/var/mobile/Library/PowerUI" error:&v116];
      v24 = v116;

      if (v24)
      {
        if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
        {
          [PowerUITrialManager loadModelFromPath:deleteExistingFiles:];
        }

        v19 = 0;
        goto LABEL_100;
      }

      v92 = v15;
      v94 = v13;
      v96 = v7;
      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
      v25 = v23;
      v26 = [v25 countByEnumeratingWithState:&v112 objects:v130 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v113;
LABEL_32:
        v29 = 0;
        while (1)
        {
          if (*v113 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v112 + 1) + 8 * v29);
          if ([v30 containsString:v18])
          {
            break;
          }

          if (v27 == ++v29)
          {
            v27 = [v25 countByEnumeratingWithState:&v112 objects:v130 count:16];
            if (v27)
            {
              goto LABEL_32;
            }

            goto LABEL_38;
          }
        }

        v31 = MEMORY[0x277CBEBC0];
        v129[0] = @"/var/mobile/Library/PowerUI";
        v129[1] = v30;
        v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v129 count:2];
        v21 = [v31 fileURLWithPathComponents:v32];

        if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
        {
          [PowerUITrialManager loadModelFromPath:deleteExistingFiles:];
        }

        v13 = v94;
        v7 = v96;
        v15 = v92;
        if (v21)
        {
          v23 = v21;
          v98 = v18;
          if (v90)
          {
            v33 = [v21 path];
            v34 = self->_log;
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v122 = v33;
              _os_log_impl(&dword_21B766000, v34, OS_LOG_TYPE_DEFAULT, "Removing existing files from %@", buf, 0xCu);
            }

            v111 = 0;
            v35 = [v99 removeItemAtPath:v33 error:&v111];
            v21 = v111;
            if ((v35 & 1) == 0)
            {
              v36 = self->_log;
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v122 = v33;
                v123 = 2112;
                v124 = v21;
                _os_log_impl(&dword_21B766000, v36, OS_LOG_TYPE_DEFAULT, "Failed to clean up path: %@ -- %@", buf, 0x16u);
              }
            }
          }

          else
          {
            v21 = 0;
          }

          v20 = v99;
          goto LABEL_53;
        }
      }

      else
      {
LABEL_38:

        v21 = 0;
        v13 = v94;
        v7 = v96;
        v15 = v92;
      }

      v20 = v99;
    }

    v37 = self->_log;
    v98 = v18;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B766000, v37, OS_LOG_TYPE_DEFAULT, "Could not find existing compiled model.", buf, 2u);
    }

    v23 = 0;
LABEL_53:
    v38 = [v23 path];
    v39 = v20;
    v40 = [v20 fileExistsAtPath:v38 isDirectory:&v118];

    if (v40)
    {
      v110 = v21;
      v41 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v23 error:&v110];
      v24 = v110;

      v42 = self->_log;
      if (v24)
      {
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          [PowerUITrialManager loadModelFromPath:deleteExistingFiles:];
        }

        v19 = 0;
      }

      else
      {
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21B766000, v42, OS_LOG_TYPE_DEFAULT, "Load existing compiled model.", buf, 2u);
        }

        v19 = v41;
      }

      v20 = v39;
      v18 = v98;
      goto LABEL_100;
    }

    v91 = v23;
    v93 = v15;
    v95 = v13;
    v97 = v7;
    v43 = MEMORY[0x277CCACA8];
    v44 = [v39 temporaryDirectory];
    v45 = [v44 path];
    v128[0] = v45;
    v46 = [MEMORY[0x277CCAD78] UUID];
    v47 = [v46 UUIDString];
    v128[1] = v47;
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v128 count:2];
    v49 = [v43 pathWithComponents:v48];

    v50 = v49;
    v109 = v21;
    LOBYTE(v49) = [v39 createDirectoryAtPath:v49 withIntermediateDirectories:1 attributes:0 error:&v109];
    v24 = v109;

    v89 = v50;
    if ((v49 & 1) == 0)
    {
      v15 = v93;
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [PowerUITrialManager loadModelFromPath:deleteExistingFiles:];
      }

      v19 = 0;
      v13 = v95;
      v7 = v97;
      v20 = v39;
      v18 = v98;
      v23 = v91;
      goto LABEL_99;
    }

    v51 = MEMORY[0x277CBEBC0];
    v127[0] = v50;
    v52 = [v6 lastPathComponent];
    v127[1] = v52;
    v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v127 count:2];
    v54 = [v51 fileURLWithPathComponents:v53];

    v88 = v54;
    v55 = [v54 path];
    v108 = v24;
    v100 = v39;
    LOBYTE(v52) = [v39 copyItemAtPath:v6 toPath:v55 error:&v108];
    v56 = v108;

    v15 = v93;
    if ((v52 & 1) == 0)
    {
      v63 = self->_log;
      v13 = v95;
      v7 = v97;
      v18 = v98;
      v23 = v91;
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v122 = v6;
        v123 = 2112;
        v124 = v88;
        v125 = 2112;
        v126 = v56;
        _os_log_error_impl(&dword_21B766000, v63, OS_LOG_TYPE_ERROR, "Failed to copy model from %@ to %@ -- %@", buf, 0x20u);
      }

      v19 = 0;
      v20 = v100;
      goto LABEL_98;
    }

    v57 = MEMORY[0x277CBEBC0];
    v120 = @"/var/mobile/Library/PowerUI";
    v58 = [MEMORY[0x277CBEA60] arrayWithObjects:&v120 count:1];
    v59 = [v57 fileURLWithPathComponents:v58];

    v18 = v98;
    v23 = v91;
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
    {
      [PowerUITrialManager loadModelFromPath:deleteExistingFiles:];
    }

    v60 = MEMORY[0x277CBFEC0];
    v61 = [MEMORY[0x277CBFEC8] defaultOptions];
    v107 = 0;
    v85 = v59;
    v62 = [v60 compileSpecificationAtURL:v88 toURL:v59 options:v61 error:&v107];
    v56 = v107;

    v13 = v95;
    v7 = v97;
    v84 = v62;
    if (v56)
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [PowerUITrialManager loadModelFromPath:deleteExistingFiles:];
      }
    }

    else
    {
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      obj = [v62 outputFiles];
      v64 = [obj countByEnumeratingWithState:&v103 objects:v119 count:16];
      if (v64)
      {
        v65 = v64;
        v66 = *v104;
LABEL_79:
        v67 = 0;
        while (1)
        {
          if (*v104 != v66)
          {
            objc_enumerationMutation(obj);
          }

          v68 = *(*(&v103 + 1) + 8 * v67);
          v69 = [v68 pathComponents];
          v70 = [v69 lastObject];
          v71 = [@"coremldata.bin" isEqualToString:v70];

          if (v71)
          {
            break;
          }

          if (v65 == ++v67)
          {
            v65 = [obj countByEnumeratingWithState:&v103 objects:v119 count:16];
            if (v65)
            {
              goto LABEL_79;
            }

            goto LABEL_85;
          }
        }

        v72 = MEMORY[0x277CBEBC0];
        v73 = [v68 pathComponents];
        v74 = [v68 pathComponents];
        v75 = [v73 subarrayWithRange:{0, objc_msgSend(v74, "count") - 1}];
        v76 = [v72 fileURLWithPathComponents:v75];

        if (!v76)
        {
          goto LABEL_93;
        }

        v13 = v95;
        v7 = v97;
        v23 = v91;
        v15 = v93;
        if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
        {
          [PowerUITrialManager loadModelFromPath:deleteExistingFiles:];
        }

        v102 = 0;
        obja = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v76 error:&v102];
        v77 = v102;
        if (v77)
        {
          v56 = v77;
          if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
          {
            [PowerUITrialManager loadModelFromPath:deleteExistingFiles:];
          }

          v19 = 0;
          v78 = obja;
        }

        else
        {
          v101 = 0;
          v81 = [v100 removeItemAtPath:v89 error:&v101];
          v56 = v101;
          if ((v81 & 1) == 0)
          {
            v82 = self->_log;
            if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v122 = v89;
              v123 = 2112;
              v124 = v56;
              _os_log_impl(&dword_21B766000, v82, OS_LOG_TYPE_DEFAULT, "Failed to clean up path: %@ -- %@", buf, 0x16u);
            }
          }

          v83 = self->_log;
          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21B766000, v83, OS_LOG_TYPE_DEFAULT, "Successfully compiled trial model", buf, 2u);
          }

          [PowerUISmartChargeUtilities logMemoryUsageInternalForEvent:@"End of loadModelFromPath"];
          v78 = obja;
          v19 = obja;
        }

        goto LABEL_97;
      }

LABEL_85:

LABEL_93:
      v13 = v95;
      v7 = v97;
      v23 = v91;
      v15 = v93;
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        [PowerUITrialManager loadModelFromPath:deleteExistingFiles:];
      }

      v56 = 0;
    }

    v19 = 0;
LABEL_97:
    v20 = v100;

LABEL_98:
    v24 = v56;
LABEL_99:

LABEL_100:
    v21 = v24;
LABEL_101:

    goto LABEL_102;
  }

  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21B766000, log, OS_LOG_TYPE_DEFAULT, "Failed to load model from null path", buf, 2u);
  }

  v19 = 0;
LABEL_102:

  v79 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)useTrialEnabledFeature:(void *)a1 .cold.1(void *a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v5[0] = 67109120;
  v5[1] = [a2 BOOLeanValue];
  _os_log_debug_impl(&dword_21B766000, v3, OS_LOG_TYPE_DEBUG, "Use sleep based predictor: %d", v5, 8u);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)useTrialEnabledFeature:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)loadModelFromPath:deleteExistingFiles:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v4 = 1024;
  v5 = v0;
  _os_log_debug_impl(&dword_21B766000, v1, OS_LOG_TYPE_DEBUG, "Request to load model from path: %@ - asked to delete: %d", v3, 0x12u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)loadModelFromPath:deleteExistingFiles:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4(&dword_21B766000, v0, v1, "Identified asset ID as: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)loadModelFromPath:deleteExistingFiles:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)loadModelFromPath:deleteExistingFiles:.cold.5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)loadModelFromPath:deleteExistingFiles:.cold.6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4(&dword_21B766000, v0, v1, "Compiled model URL: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)loadModelFromPath:deleteExistingFiles:.cold.7()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_21B766000, v0, v1, "Failed to create directory at path %@ -- %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)loadModelFromPath:deleteExistingFiles:.cold.8()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_21B766000, v0, OS_LOG_TYPE_DEBUG, "modelUrl: %@ -- workingDirURL: %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)loadModelFromPath:deleteExistingFiles:.cold.9()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_21B766000, v0, v1, "Failed to compile model: %@ -- %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)loadModelFromPath:deleteExistingFiles:.cold.10()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4(&dword_21B766000, v0, v1, "properPath set to: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)loadModelFromPath:deleteExistingFiles:.cold.11()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_21B766000, v0, v1, "Failed to load model: %@ -- %@");
  v2 = *MEMORY[0x277D85DE8];
}

@end