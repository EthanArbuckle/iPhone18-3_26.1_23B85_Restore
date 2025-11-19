@interface TRITaskUtils
+ (BOOL)updateExperimentHistoryDatabaseWithAllocationStatus:(unsigned __int8)a3 forExperiment:(id)a4 treatment:(id)a5 deployment:(int)a6 experimentRecord:(id)a7 isBecomingObsolete:(BOOL)a8 categoricalMetric:(id)a9 context:(id)a10;
+ (void)addAttribution:(id)a3 toTaskTags:(id)a4;
+ (void)updateRolloutHistoryDatabaseWithAllocationStatus:(unsigned __int8)a3 forRollout:(id)a4 ramp:(id)a5 deployment:(int)a6 fps:(id)a7 namespaces:(id)a8 telemetryMetric:(id)a9 rolloutRecord:(id)a10 isBecomingObsolete:(BOOL)a11 context:(id)a12;
@end

@implementation TRITaskUtils

+ (void)addAttribution:(id)a3 toTaskTags:(id)a4
{
  v19 = a3;
  v7 = a4;
  if (v19)
  {
    if (!v7)
    {
      v18 = [MEMORY[0x277CCA890] currentHandler];
      [v18 handleFailureInMethod:a2 object:a1 file:@"TRITaskUtils.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"tags"}];
    }

    v8 = [v19 teamIdentifier];

    if (v8)
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = [v19 teamIdentifier];
      v11 = [v9 stringWithFormat:@"teamId=%@", v10];
      [v7 addObject:v11];
    }

    v12 = MEMORY[0x277CCACA8];
    v13 = [v19 networkOptions];
    v14 = [v12 stringWithFormat:@"netopt.cellular=%d", objc_msgSend(v13, "allowsCellularAccess")];
    [v7 addObject:v14];

    v15 = MEMORY[0x277CCACA8];
    v16 = [v19 networkOptions];
    v17 = [v15 stringWithFormat:@"netopt.discretion=%lu", objc_msgSend(v16, "discretionaryBehavior")];
    [v7 addObject:v17];
  }
}

+ (BOOL)updateExperimentHistoryDatabaseWithAllocationStatus:(unsigned __int8)a3 forExperiment:(id)a4 treatment:(id)a5 deployment:(int)a6 experimentRecord:(id)a7 isBecomingObsolete:(BOOL)a8 categoricalMetric:(id)a9 context:(id)a10
{
  v92 = a8;
  log = a3;
  v126 = *MEMORY[0x277D85DE8];
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = a9;
  v105 = a10;
  v17 = v13;
  v18 = v14;
  v19 = v18;
  v106 = v17;
  v99 = v18;
  v102 = v15;
  if (v15)
  {
    v20 = v17;
    if (!v17)
    {
      v21 = [v15 experimentDeployment];
      v20 = [v21 experimentId];
    }

    v22 = v19;
    if ([v19 isEqualToString:@"unspecified-or-default-treatment"])
    {
      v22 = [v15 treatmentId];
    }

    v107 = v20;
    v94 = v16;
    if (a6 == -1)
    {
      v23 = [v15 experimentDeployment];
      a6 = [v23 deploymentId];
    }

    v103 = a6;
    v97 = [v15 deploymentEnvironment];
    v24 = objc_alloc(MEMORY[0x277CBEB18]);
    v25 = [v15 namespaces];
    v26 = [v24 initWithCapacity:{objc_msgSend(v25, "count")}];

    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v27 = [v15 namespaces];
    v28 = [v27 countByEnumeratingWithState:&v109 objects:v125 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v110;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v110 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v109 + 1) + 8 * i);
          v33 = objc_alloc(MEMORY[0x277D73808]);
          v34 = [v32 name];
          v35 = [v33 initWithName:v34 compatibilityVersion:{objc_msgSend(v32, "compatibilityVersion")}];

          [v26 addObject:v35];
        }

        v29 = [v27 countByEnumeratingWithState:&v109 objects:v125 count:16];
      }

      while (v29);
    }

    v17 = v106;
    v36 = v107;
    v16 = v94;
    v19 = v99;
  }

  else
  {
    v103 = a6;
    v26 = 0;
    v97 = 0;
    v22 = v18;
    v36 = v17;
  }

  v37 = v105;
  v108 = v36;
  if (v36)
  {
    v38 = v16;
    if (v22)
    {
      v39 = v22;
    }

    else
    {
      v39 = @"unspecified-or-default-treatment";
    }

    v40 = objc_alloc(MEMORY[0x277D736C8]);
    v41 = objc_opt_new();
    v42 = v103;
    v43 = [v40 initWithEventDate:v41 eventType:log deploymentEnvironment:v97 experimentId:v36 deploymentId:v103 treatmentId:v39 errorOrDeactivationReason:0 namespaces:v26];

    v44 = [v105 experimentHistoryDatabase];
    v45 = v36;
    v46 = v43;
    v47 = [v44 getAllAllocationStatusesForExperimentId:v45 deploymentId:v103 treatmentId:v39];

    v48 = [v105 experimentHistoryDatabase];
    v49 = [v48 addRecord:v46];

    v50 = v49;
    v96 = v47;
    if ((v49 & 1) == 0)
    {
      v65 = TRILogCategory_Server();
      v64 = v102;
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        [MEMORY[0x277D73648] categoricalValueForExperimentAllocationStatus:log];
        v88 = v87 = v50;
        *buf = 138544130;
        v115 = v88;
        v116 = 2112;
        *v117 = v39;
        *&v117[8] = 2114;
        *&v117[10] = v108;
        *&v117[18] = 1024;
        v118[0] = v103;
        _os_log_error_impl(&dword_26F567000, v65, OS_LOG_TYPE_ERROR, "Failed to update experiment history database while marking %{public}@ of treatment %@ : experiment %{public}@ : deployment %d. Note: this allocation status will not be logged to analytics.", buf, 0x26u);

        v50 = v87;
      }

      v16 = v38;
      v17 = v106;
      goto LABEL_64;
    }

    v89 = v49;
    if (v92)
    {
      v51 = [v47 count];
      v52 = v47;
      v16 = v38;
      if (v51)
      {
        v123[0] = &unk_287FC4AE0;
        v121 = &unk_287FC4B28;
        v122 = @"exp_st_AL_O";
        v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v122 forKeys:&v121 count:1];
        v123[1] = &unk_287FC4AF8;
        v124[0] = v53;
        v119 = &unk_287FC4B28;
        v120 = @"exp_st_FE_O";
        v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v120 forKeys:&v119 count:1];
        v124[1] = v54;
        v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v124 forKeys:v123 count:2];

        v56 = [v52 objectAtIndexedSubscript:0];
        v57 = [v55 objectForKeyedSubscript:v56];
        v58 = log;
        v59 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:log];
        v60 = [v57 objectForKey:v59];

        v16 = v38;
        v17 = v106;
        v93 = v60;
        if (!v60)
        {
          v61 = TRILogCategory_Server();
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            v62 = [v96 objectAtIndexedSubscript:0];
            v63 = [v62 intValue];
            *buf = 138413314;
            v115 = v108;
            v116 = 2112;
            *v117 = v39;
            *&v117[8] = 1024;
            *&v117[10] = v103;
            *&v117[14] = 1024;
            *&v117[16] = v63;
            LOWORD(v118[0]) = 1024;
            *(v118 + 2) = log;
            _os_log_impl(&dword_26F567000, v61, OS_LOG_TYPE_DEFAULT, "Experiment - Treatment - Deployment: %@ - %@ - %d. Previous state: %d, Current state: %d", buf, 0x28u);
          }
        }

        v37 = v105;
        v42 = v103;
LABEL_37:
        v66 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v58];
        v67 = [v96 containsObject:v66];

        if (v67)
        {
          v19 = v99;
          v64 = v102;
          v50 = v89;
LABEL_63:
          v65 = v93;
LABEL_64:

          goto LABEL_65;
        }

        v50 = v89;
        if (v93)
        {
          v68 = v93;
        }

        else
        {
          v68 = [a1 _experimentStateForAnalyticsFromInternalState:v58];
          if (!v68)
          {
            loga = TRILogCategory_Server();
            v19 = v99;
            if (os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138413058;
              v115 = v108;
              v116 = 2112;
              *v117 = v39;
              *&v117[8] = 1024;
              *&v117[10] = v42;
              *&v117[14] = 1024;
              *&v117[16] = v58;
              _os_log_impl(&dword_26F567000, loga, OS_LOG_TYPE_DEFAULT, "Experiment - Treatment -  Deployment: %@ -  %@ - %d. There was nothing to log for state: %d", buf, 0x22u);
            }

            v64 = v102;
            goto LABEL_62;
          }
        }

        loga = v68;
        if (-[NSObject isEqualToString:](v68, "isEqualToString:", @"exp_st_DE") && ([v96 containsObject:&unk_287FC4B10] & 1) == 0)
        {
          v83 = TRILogCategory_Server();
          v19 = v99;
          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v115 = v108;
            v116 = 2112;
            *v117 = v39;
            *&v117[8] = 1024;
            *&v117[10] = v42;
            _os_log_impl(&dword_26F567000, v83, OS_LOG_TYPE_DEFAULT, "Experiment - Treatment -  Deployment: %@ -  %@ - %d. Ignoring metric for deactivation transition due to not having activated before.", buf, 0x1Cu);
          }
        }

        else
        {
          if (v16)
          {
            [MEMORY[0x277D73B40] metricWithName:v68 categoricalValue:v16];
          }

          else
          {
            [MEMORY[0x277D73B40] metricWithName:v68];
          }
          v91 = ;
          v69 = v97;
          v70 = objc_opt_new();
          v71 = [v70 ensureExperimentFields];
          [v71 setClientExperimentId:v108];

          if (v39 == @"unspecified-or-default-treatment")
          {
            v72 = 0;
          }

          else
          {
            v72 = v39;
          }

          v73 = [v70 ensureExperimentFields];
          [v73 setClientTreatmentId:v72];

          if (v42 == -1)
          {
            v74 = 0;
          }

          else
          {
            v74 = [MEMORY[0x277CCABB0] numberWithInt:v42];
          }

          v98 = v46;
          v75 = [v74 stringValue];
          [v70 setClientDeploymentId:v75];

          if (v42 != -1)
          {
          }

          v95 = v16;
          v76 = TRIDeploymentEnvironment_EnumDescriptor();
          v77 = [v76 textFormatNameForValue:v69];

          if (!v77)
          {
            v77 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%ld", v69];
          }

          [v70 setClientDeploymentEnv:v77];
          v37 = v105;
          v104 = [v105 client];
          v78 = [v104 logger];
          v79 = [v105 client];
          [v79 trackingId];
          v81 = v80 = v70;
          v113 = v91;
          v82 = [MEMORY[0x277CBEA60] arrayWithObjects:&v113 count:1];
          [v78 logWithTrackingId:v81 metrics:v82 dimensions:0 trialSystemTelemetry:v80];

          v17 = v106;
          v16 = v95;
          v46 = v98;
          v19 = v99;
        }

        v64 = v102;
        v50 = v89;
LABEL_62:

        goto LABEL_63;
      }

      v93 = 0;
    }

    else
    {
      v93 = 0;
      v16 = v38;
    }

    v17 = v106;
    v58 = log;
    goto LABEL_37;
  }

  v46 = TRILogCategory_Server();
  v64 = v102;
  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
  {
    v86 = [MEMORY[0x277D73648] categoricalValueForExperimentAllocationStatus:log];
    *buf = 138412802;
    v39 = v22;
    v115 = v22;
    v116 = 1024;
    *v117 = v103;
    *&v117[4] = 2114;
    *&v117[6] = v86;
    _os_log_error_impl(&dword_26F567000, v46, OS_LOG_TYPE_ERROR, "ExperimentID was found to be empty while creating a record for the Experiment History Database. Treatment %@ : Deployment %d; Allocation Status: %{public}@", buf, 0x1Cu);

    v50 = 0;
  }

  else
  {
    v50 = 0;
    v39 = v22;
  }

LABEL_65:

  v84 = *MEMORY[0x277D85DE8];
  return v50;
}

+ (void)updateRolloutHistoryDatabaseWithAllocationStatus:(unsigned __int8)a3 forRollout:(id)a4 ramp:(id)a5 deployment:(int)a6 fps:(id)a7 namespaces:(id)a8 telemetryMetric:(id)a9 rolloutRecord:(id)a10 isBecomingObsolete:(BOOL)a11 context:(id)a12
{
  v91 = a3;
  v115 = *MEMORY[0x277D85DE8];
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v96 = a12;
  v22 = v18;
  v23 = v16;
  v24 = v17;
  if (v18)
  {
    v25 = TRIValidateFactorPackSetId();
  }

  else
  {
    v25 = 0;
  }

  v26 = v19;
  v93 = v26;
  v80 = a1;
  if (!v21)
  {
    v29 = 0;
    v30 = v26;
    v97 = v24;
    v31 = v23;
    if (v23)
    {
      goto LABEL_21;
    }

    goto LABEL_13;
  }

  v27 = v23;
  if (!v23)
  {
    v28 = [v21 deployment];
    v27 = [v28 rolloutId];
  }

  v97 = v24;
  if (!v24)
  {
    v97 = [v21 rampId];
  }

  if (a6)
  {
    if (v25)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v35 = [v21 deployment];
    a6 = [v35 deploymentId];

    if (v25)
    {
      goto LABEL_18;
    }
  }

  v36 = [v21 activeFactorPackSetId];

  if (v36)
  {
    v37 = [v21 activeFactorPackSetId];
    v25 = TRIValidateFactorPackSetId();
  }

  else
  {
    v25 = 0;
  }

LABEL_18:
  v88 = v20;
  v38 = v27;
  v39 = v25;
  v40 = v24;
  v41 = v23;
  v42 = [v21 namespaces];

  if (!v42)
  {
    v78 = [MEMORY[0x277CCA890] currentHandler];
    [v78 handleFailureInMethod:a2 object:a1 file:@"TRITaskUtils.m" lineNumber:237 description:{@"Invalid parameter not satisfying: %@", @"rolloutRecord.namespaces"}];
  }

  v43 = MEMORY[0x277CBEA60];
  v29 = v21;
  v44 = [v21 namespaces];
  v30 = [v43 arrayWithArray:v44];

  v23 = v41;
  v24 = v40;
  v25 = v39;
  v31 = v38;
  v20 = v88;
  if (v31)
  {
LABEL_21:
    v83 = v23;
    v84 = v24;
    v45 = v22;
    v85 = v29;
    v46 = objc_alloc(MEMORY[0x277D737D0]);
    v47 = [MEMORY[0x277CBEAA8] now];
    v87 = v30;
    v48 = [v46 initWithEventLogTime:v47 eventType:v91 rolloutId:v31 rampId:v97 factorPackSetId:v25 deploymentId:a6 namespaces:v30];

    v49 = [v96 rolloutHistoryDatabase];
    v50 = [v49 getAllAllocationStatusesForRolloutId:v31 rampId:v97 deploymentId:a6 factorPackSetId:v25];

    v51 = [v96 rolloutHistoryDatabase];
    v82 = v48;
    LOBYTE(v47) = [v51 addRecord:v48];

    if (v47)
    {
      v79 = v45;
      v52 = objc_opt_new();
      if ([v50 count])
      {
        v53 = 0;
        do
        {
          v54 = [v50 objectAtIndexedSubscript:v53];
          v55 = [&unk_287FC5020 containsObject:v54];

          if (v55)
          {
            break;
          }

          v56 = [v50 objectAtIndexedSubscript:v53];
          [v52 addObject:v56];

          ++v53;
        }

        while ([v50 count] > v53);
      }

      v57 = 0x277CCA000uLL;
      if (v20)
      {
        v33 = v79;
        v32 = v85;
        v30 = v87;
      }

      else
      {
        v33 = v79;
        v32 = v85;
        v30 = v87;
        if (a11)
        {
          if ([v52 count])
          {
            v101 = &unk_287FC4AF8;
            v102 = @"roll_st_AL_O";
            v103[0] = &unk_287FC4AE0;
            v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
            v104[0] = v58;
            v103[1] = &unk_287FC4B10;
            v99 = &unk_287FC4AF8;
            v100 = @"roll_st_FE_O";
            v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
            v104[1] = v59;
            v89 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v104 forKeys:v103 count:2];

            v60 = [v52 objectAtIndexedSubscript:0];
            v61 = [v89 objectForKeyedSubscript:v60];
            v62 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v91];
            v20 = [v61 objectForKey:v62];

            v30 = v87;
            v33 = v79;

            v57 = 0x277CCA000;
          }

          else
          {
            v20 = 0;
          }
        }
      }

      v63 = [*(v57 + 2992) numberWithUnsignedChar:v91];
      v64 = [v52 containsObject:v63];

      if ((v64 & 1) == 0)
      {
        if (v20)
        {
          v65 = v20;
        }

        else
        {
          v65 = [v80 _rolloutStateForAnalyticsFromInternalState:v91];
          v24 = v84;
          if (!v65)
          {
            v20 = 0;
            goto LABEL_46;
          }
        }

        v92 = v65;
        v81 = [MEMORY[0x277D73B40] metricWithName:v65];
        v66 = objc_opt_new();
        v67 = [v66 ensureRolloutFields];
        [v67 setClientRolloutId:v31];

        v68 = [v66 ensureRolloutFields];
        [v68 setClientRampId:v97];

        v69 = [v66 ensureRolloutFields];
        [v69 setClientFactorPackSetId:v25];

        if (a6 == -1)
        {
          v70 = 0;
        }

        else
        {
          v70 = [MEMORY[0x277CCABB0] numberWithInt:a6];
        }

        v90 = v20;
        v71 = [v70 stringValue];
        [v66 setClientDeploymentId:v71];

        if (a6 != -1)
        {
        }

        v95 = [v96 client];
        v72 = [v95 logger];
        v73 = [v96 client];
        v74 = [v73 trackingId];
        v98 = v81;
        v75 = [MEMORY[0x277CBEA60] arrayWithObjects:&v98 count:1];
        [v72 logWithTrackingId:v74 metrics:v75 dimensions:0 trialSystemTelemetry:v66];

        v33 = v79;
        v24 = v84;
        v32 = v85;
        v30 = v87;
        v20 = v90;
        goto LABEL_46;
      }
    }

    else
    {
      v52 = TRILogCategory_Server();
      v33 = v45;
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v77 = [MEMORY[0x277D73648] categoricalValueForRolloutAllocationStatus:v91];
        *buf = 138544386;
        v106 = v77;
        v107 = 2112;
        v108 = v25;
        v109 = 2114;
        v110 = v31;
        v111 = 2114;
        v112 = v97;
        v113 = 1024;
        v114 = a6;
        _os_log_error_impl(&dword_26F567000, v52, OS_LOG_TYPE_ERROR, "Failed to update rollout history database while marking %{public}@ of fps %@ : rollout %{public}@ : ramp %{public}@ : deployment %d. Note: this allocation status will not be logged to analytics.", buf, 0x30u);
      }

      v32 = v85;
    }

    v24 = v84;
LABEL_46:

    v34 = v96;
    v23 = v83;
    goto LABEL_47;
  }

LABEL_13:
  v32 = v29;
  v33 = v22;
  v34 = v96;
LABEL_47:

  v76 = *MEMORY[0x277D85DE8];
}

@end