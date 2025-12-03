@interface AppletTranslator
+ (BOOL)appletCacheUpdated:(id)updated serialNumber:(id)number isdSequenceCounter:(id)counter transceiver:(id)transceiver error:(id *)error;
+ (BOOL)getCurrentInMetroStatus:(id *)status;
+ (BOOL)isLegacyApplet:(id)applet withPackage:(id)package withModule:(id)module;
+ (BOOL)setPlasticCardMode:(BOOL)mode withApplet:(id)applet withPackage:(id)package withModule:(id)module serialNumber:(id)number transceiver:(id)transceiver error:(id *)error;
+ (_DWORD)dumpState;
+ (id)GetAppletProperties:(id)properties withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
+ (id)getATLDelegate;
+ (id)getAppletStateAndHistory:(id)history withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
+ (id)getServiceProviderData:(id)data withPackage:(id)package withModule:(id)module withPublicKey:(id)key withEncryptionScheme:(id)scheme withTransceiver:(id)transceiver withError:(id *)error;
+ (id)parseHCIEvent:(id)event withApplet:(id)applet withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
+ (id)processEndOfTransaction:(id)transaction withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error;
+ (id)userDefaults;
+ (uint64_t)isInternalBuild;
+ (void)cleanup;
+ (void)deregisterForCleanup:(uint64_t)cleanup;
+ (void)initLibrary:(id)library;
+ (void)initLibraryWithDelegate:(id)delegate;
+ (void)registerForCleanup:(uint64_t)cleanup;
@end

@implementation AppletTranslator

+ (void)initLibrary:(id)library
{
  +[AppletConfigurationData init];
  if (initLibrary__onceToken != -1)
  {
    +[AppletTranslator initLibrary:];
  }
}

+ (_DWORD)dumpState
{
  v19[21] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v0 = +[AppletTranslator userDefaults];
  v19[0] = @"debug.logging";
  v19[1] = @"debug.slalom";
  v19[2] = @"debug.dreamworks";
  v19[3] = @"debug.wulu";
  v19[4] = @"debug.calypso";
  v19[5] = @"debug.hcievent.logging";
  v19[6] = @"debug.skip.configure.express";
  v19[7] = @"debug.enable.customer.behavior";
  v19[8] = @"debug.express.skip.compat.check";
  v19[9] = @"debug.setG.forApplets";
  v19[10] = @"debug.express.logging";
  v19[11] = @"debug.express.forceslowmode";
  v19[12] = @"debug.maMetadataQueryTimeInterval";
  v19[13] = @"config";
  v19[14] = @"nextMetadataCheck";
  v19[15] = @"catalogDownloadStartedOn";
  v19[16] = @"assetDownloadStartedOn";
  v19[17] = @"debug.currentCompatibilityVersion";
  v19[18] = @"deviceClasses";
  v19[19] = @"_CompatibilityVersion";
  v19[20] = @"_ContentVersion";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:21];
  v2 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v0 objectForKey:{v8, v14}];
        if (v9)
        {
          [v2 setObject:v9 forKeyedSubscript:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v10 = [MEMORY[0x277CCAC58] dataWithPropertyList:v2 format:200 options:0 error:0];
  v11 = malloc_type_calloc(1uLL, [v10 length] + 200, 0x1000040BEF03554uLL);
  *v11 = 1;
  v11[1] = [v10 length];
  __strlcpy_chk();
  memcpy(v11 + 50, [v10 bytes], objc_msgSend(v10, "length"));

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (void)initLibraryWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeStrong(&delegate, delegate);
  +[AppletConfigurationData init];
  if (initLibraryWithDelegate__onceToken != -1)
  {
    +[AppletTranslator initLibraryWithDelegate:];
  }
}

+ (id)parseHCIEvent:(id)event withApplet:(id)applet withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  v59 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  appletCopy = applet;
  packageCopy = package;
  moduleCopy = module;
  transceiverCopy = transceiver;
  if (parseHCIEvent_withApplet_withPackage_withModule_withTransceiver_withError__onceToken != -1)
  {
    +[AppletTranslator parseHCIEvent:withApplet:withPackage:withModule:withTransceiver:withError:];
  }

  if (parseHCIEvent_withApplet_withPackage_withModule_withTransceiver_withError__debugHCIPrint == 1)
  {
    bytes = [eventCopy bytes];
    v19 = [eventCopy length];
    LogBinary(OS_LOG_TYPE_DEFAULT, "+[AppletTranslator parseHCIEvent:withApplet:withPackage:withModule:withTransceiver:withError:]", 85, bytes, v19, @"AID: %@ HCI:", v20, v21, appletCopy);
  }

  v22 = [ATLGetDecoder getDecoderForApplet:appletCopy withPackage:packageCopy withModule:moduleCopy];
  if (v22)
  {
    if (transceiverCopy)
    {
      v23 = [TransceiverWrapper withTransceiver:transceiverCopy];
    }

    else
    {
      v23 = 0;
    }

    v35 = [v22 parseHCIEvent:eventCopy withApplet:appletCopy withPackage:packageCopy withModule:moduleCopy withTransceiver:v23 withError:error];

    if (!error)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v24 = ATLLogObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v54 = appletCopy;
      v55 = 2112;
      v56 = packageCopy;
      v57 = 2112;
      v58 = moduleCopy;
      _os_log_impl(&dword_22EEF5000, v24, OS_LOG_TYPE_ERROR, "No suitable decoder for AID %@ PID %@ MID %@", buf, 0x20u);
    }

    v48 = appletCopy;
    v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"No suitable decoder for AID %@ PID %@ MID %@"];
    v26 = v25;
    if (error)
    {
      v27 = *error;
      v28 = MEMORY[0x277CCA9B8];
      v29 = *MEMORY[0x277CCA450];
      if (*error)
      {
        v30 = *MEMORY[0x277CCA7E8];
        v49[0] = *MEMORY[0x277CCA450];
        v49[1] = v30;
        v50[0] = v25;
        v50[1] = v27;
        v31 = MEMORY[0x277CBEAC0];
        v32 = v50;
        v33 = v49;
        v34 = 2;
      }

      else
      {
        v51 = *MEMORY[0x277CCA450];
        v52 = v25;
        v31 = MEMORY[0x277CBEAC0];
        v32 = &v52;
        v33 = &v51;
        v34 = 1;
      }

      v36 = [v31 dictionaryWithObjects:v32 forKeys:v33 count:v34];
      *error = [v28 errorWithDomain:@"ATL" code:2 userInfo:v36];
    }

    v35 = 0;
    if (!error)
    {
      goto LABEL_21;
    }
  }

  if (*error)
  {
    bytes2 = [eventCopy bytes];
    v38 = [eventCopy length];
    LogBinary(OS_LOG_TYPE_ERROR, "+[AppletTranslator parseHCIEvent:withApplet:withPackage:withModule:withTransceiver:withError:]", 108, bytes2, v38, @"Failed to parse HCI event:", v39, v40, v48);
    goto LABEL_30;
  }

LABEL_21:
  if (!v35)
  {
    goto LABEL_30;
  }

  v41 = [v35 objectForKeyedSubscript:@"EventType"];
  if ([v41 isEqualToString:@"StartEvent"])
  {
  }

  else
  {
    v42 = [v35 objectForKeyedSubscript:@"EventType"];
    v43 = [v42 isEqualToString:@"EndEvent"];

    if (!v43)
    {
      v44 = ATLLogObject();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v45 = [v35 objectForKeyedSubscript:@"EventType"];
        *buf = 138543362;
        v54 = v45;
        _os_log_impl(&dword_22EEF5000, v44, OS_LOG_TYPE_DEFAULT, "ATL generated event = %{public}@", buf, 0xCu);
      }

      goto LABEL_29;
    }
  }

  v44 = ATLLogObject();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v54 = v35;
    _os_log_impl(&dword_22EEF5000, v44, OS_LOG_TYPE_DEFAULT, "ATL generated event = %{public}@", buf, 0xCu);
  }

LABEL_29:

LABEL_30:
  v46 = *MEMORY[0x277D85DE8];

  return v35;
}

void __94__AppletTranslator_parseHCIEvent_withApplet_withPackage_withModule_withTransceiver_withError___block_invoke()
{
  if ((+[AppletTranslator isInternalBuild]& 1) != 0)
  {
    v0 = +[AppletTranslator userDefaults];
    parseHCIEvent_withApplet_withPackage_withModule_withTransceiver_withError__debugHCIPrint = [v0 BOOLForKey:@"debug.hcievent.logging"];
  }

  else
  {
    parseHCIEvent_withApplet_withPackage_withModule_withTransceiver_withError__debugHCIPrint = 0;
  }
}

+ (uint64_t)isInternalBuild
{
  objc_opt_self();
  if (isInternalBuild_onceToken != -1)
  {
    +[AppletTranslator isInternalBuild];
  }

  return isInternalBuild_isInternal;
}

+ (id)userDefaults
{
  objc_opt_self();
  v0 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.stockholm.atl"];

  return v0;
}

+ (id)getAppletStateAndHistory:(id)history withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  v62 = *MEMORY[0x277D85DE8];
  historyCopy = history;
  packageCopy = package;
  moduleCopy = module;
  transceiverCopy = transceiver;
  v15 = [ATLGetDecoder getDecoderForApplet:historyCopy withPackage:packageCopy withModule:moduleCopy];
  if (v15)
  {
    [TransceiverWrapper withTransceiver:transceiverCopy];
    v45 = v50 = 0;
    v16 = [v15 getAppletStateAndHistory:? withApplet:? withPackage:? withModule:? withError:?];
    v17 = 0;
    if (v17 || !v16)
    {
      v37 = ATLLogObject();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v57 = historyCopy;
        v58 = 2112;
        v59 = packageCopy;
        v60 = 2112;
        v61 = moduleCopy;
        _os_log_impl(&dword_22EEF5000, v37, OS_LOG_TYPE_ERROR, "Failed to query AID %@ PID %@ MID %@", buf, 0x20u);
      }

      v28 = v45;
      [v45 dumpAPDUs:&__block_literal_global_892];
      if (error)
      {
        v38 = v17;
        v39 = 0;
        *error = v17;
      }

      else
      {
        v39 = 0;
      }
    }

    else
    {
      v18 = [v16 objectForKeyedSubscript:@"ATLInternal"];

      if (v18)
      {
        v19 = [v16 mutableCopy];
        [v19 removeObjectForKey:@"ATLInternal"];

        v16 = v19;
      }

      v20 = [v16 objectForKeyedSubscript:@"State"];
      v21 = [v20 objectForKeyedSubscript:@"TransactionInProgress"];

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v22 = v21;
      v23 = [v22 countByEnumeratingWithState:&v46 objects:v51 count:16];
      if (v23)
      {
        v43 = v15;
        v44 = transceiverCopy;
        v24 = *v47;
        while (2)
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v47 != v24)
            {
              objc_enumerationMutation(v22);
            }

            if ([*(*(&v46 + 1) + 8 * i) hasPrefix:@"TransitMetro"])
            {
              v23 = 1;
              goto LABEL_25;
            }
          }

          v23 = [v22 countByEnumeratingWithState:&v46 objects:v51 count:16];
          if (v23)
          {
            continue;
          }

          break;
        }

LABEL_25:
        v15 = v43;
        transceiverCopy = v44;
      }

      v40 = +[_TtC24AppletTranslationLibrary17MetroStateMonitor shared];
      [v40 consumeStateWithAid:historyCopy newState:v23];

      v16 = v16;
      v39 = v16;
      v28 = v45;
    }
  }

  else
  {
    v26 = ATLLogObject();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v57 = historyCopy;
      v58 = 2112;
      v59 = packageCopy;
      v60 = 2112;
      v61 = moduleCopy;
      _os_log_impl(&dword_22EEF5000, v26, OS_LOG_TYPE_ERROR, "No suitable decoder for AID %@ PID %@ MID %@", buf, 0x20u);
    }

    moduleCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"No suitable decoder for AID %@ PID %@ MID %@", historyCopy, packageCopy, moduleCopy];
    v28 = moduleCopy;
    if (!error)
    {
      v39 = 0;
      goto LABEL_33;
    }

    v29 = *error;
    v30 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CCA450];
    if (*error)
    {
      v32 = *MEMORY[0x277CCA7E8];
      v52[0] = *MEMORY[0x277CCA450];
      v52[1] = v32;
      v53[0] = moduleCopy;
      v53[1] = v29;
      v33 = MEMORY[0x277CBEAC0];
      v34 = v53;
      v35 = v52;
      v36 = 2;
    }

    else
    {
      v54 = *MEMORY[0x277CCA450];
      v55 = moduleCopy;
      v33 = MEMORY[0x277CBEAC0];
      v34 = &v55;
      v35 = &v54;
      v36 = 1;
    }

    v17 = [v33 dictionaryWithObjects:v34 forKeys:v35 count:v36];
    [v30 errorWithDomain:@"ATL" code:2 userInfo:v17];
    *error = v39 = 0;
  }

LABEL_33:
  v41 = *MEMORY[0x277D85DE8];

  return v39;
}

+ (BOOL)appletCacheUpdated:(id)updated serialNumber:(id)number isdSequenceCounter:(id)counter transceiver:(id)transceiver error:(id *)error
{
  v120 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  numberCopy = number;
  counterCopy = counter;
  transceiverCopy = transceiver;
  v90 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(updatedCopy, "count")}];
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v11 = updatedCopy;
  v12 = [v11 countByEnumeratingWithState:&v105 objects:v119 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v106;
    v15 = 0x277CBE000uLL;
    v16 = &unk_2843C7670;
    v84 = v11;
    v94 = *v106;
    do
    {
      v17 = 0;
      do
      {
        if (*v106 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v105 + 1) + 8 * v17);
        v19 = v16;
        v96 = [*(v15 + 2872) dictionaryWithCapacity:{objc_msgSend(v16, "count")}];
        v101 = 0u;
        v102 = 0u;
        v103 = 0u;
        v104 = 0u;
        v20 = [&unk_2843C7688 countByEnumeratingWithState:&v101 objects:v118 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v102;
          while (2)
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v102 != v22)
              {
                objc_enumerationMutation(&unk_2843C7688);
              }

              v24 = *(*(&v101 + 1) + 8 * i);
              v25 = [v18 objectForKeyedSubscript:v24];

              if (!v25)
              {
                v42 = ATLLogObject();
                if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v115 = v18;
                  v116 = 2112;
                  v117 = v24;
                  _os_log_impl(&dword_22EEF5000, v42, OS_LOG_TYPE_ERROR, "Applet %@ missing prop %@", buf, 0x16u);
                }

                v43 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Applet %@ missing prop %@", v18, v24];
                v29 = counterCopy;
                if (error)
                {
                  v44 = *error;
                  v45 = MEMORY[0x277CCA9B8];
                  v46 = *MEMORY[0x277CCA450];
                  v37 = numberCopy;
                  v35 = v84;
                  if (*error)
                  {
                    v47 = *MEMORY[0x277CCA7E8];
                    v110[0] = *MEMORY[0x277CCA450];
                    v110[1] = v47;
                    v48 = v43;
                    v111[0] = v43;
                    v111[1] = v44;
                    v49 = MEMORY[0x277CBEAC0];
                    v50 = v111;
                    v51 = v110;
                    v52 = 2;
                  }

                  else
                  {
                    v112 = *MEMORY[0x277CCA450];
                    v113 = v43;
                    v48 = v43;
                    v49 = MEMORY[0x277CBEAC0];
                    v50 = &v113;
                    v51 = &v112;
                    v52 = 1;
                  }

                  v78 = [v49 dictionaryWithObjects:v50 forKeys:v51 count:v52];
                  *error = [v45 errorWithDomain:@"ATL" code:6 userInfo:v78];

                  v41 = 0;
                  v27 = v84;
                  v43 = v48;
                }

                else
                {
                  v41 = 0;
                  v35 = v84;
                  v27 = v84;
                  v37 = numberCopy;
                }

                goto LABEL_62;
              }

              v26 = [v18 objectForKeyedSubscript:v24];
              [v96 setObject:v26 forKeyedSubscript:v24];
            }

            v21 = [&unk_2843C7688 countByEnumeratingWithState:&v101 objects:v118 count:16];
            if (v21)
            {
              continue;
            }

            break;
          }
        }

        [v90 addObject:v96];

        ++v17;
        v11 = v84;
        v14 = v94;
        v15 = 0x277CBE000;
        v16 = v19;
      }

      while (v17 != v13);
      v13 = [v84 countByEnumeratingWithState:&v105 objects:v119 count:16];
    }

    while (v13);
  }

  v27 = v90;
  v28 = +[HashHelper hashHelper];
  v29 = counterCopy;
  v30 = [(HashHelper *)v28 addData:counterCopy];
  v31 = +[AppletConfigurationData dataHash];
  v32 = [(HashHelper *)v30 addData:v31];
  v33 = [(HashHelper *)v32 addArray:v27];
  getHash = [(HashHelper *)v33 getHash];

  v35 = getHash;
  v36 = +[AppletTranslator userDefaults];
  v37 = numberCopy;
  asHexString = [numberCopy asHexString];
  v96 = v36;
  v39 = [v36 objectForKey:asHexString];

  v82 = v39;
  if ([getHash isEqual:v39])
  {
    v40 = ATLLogObject();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v40, OS_LOG_TYPE_DEFAULT, "No changes to either configuration or SE, bailing out", buf, 2u);
    }

    v41 = 1;
  }

  else
  {
    v85 = getHash;
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v27 = v27;
    v53 = [v27 countByEnumeratingWithState:&v97 objects:v109 count:16];
    if (v53)
    {
      v54 = v53;
      v55 = @"lifecycleState";
      v56 = &unk_2843C7118;
      v57 = *v98;
      v83 = v27;
      v89 = *v98;
      while (2)
      {
        v58 = 0;
        v88 = v54;
        do
        {
          if (*v98 != v57)
          {
            objc_enumerationMutation(v27);
          }

          v59 = *(*(&v97 + 1) + 8 * v58);
          v60 = [v59 objectForKeyedSubscript:v55];
          v61 = [v60 isEqual:v56];

          if (v61)
          {
            v62 = [v59 objectForKeyedSubscript:@"identifier"];
            v63 = [v59 objectForKeyedSubscript:@"moduleIdentifier"];
            v64 = [v59 objectForKeyedSubscript:@"packageIdentifier"];
            v95 = [TransceiverWrapper withTransceiver:transceiverCopy];
            v65 = [ATLGetDecoder getDecoderForApplet:v62 withPackage:v64 withModule:v63];
            v66 = v65;
            if (v65 && [v65 conformsToProtocol:&unk_2843CC850] && (objc_msgSend(v66, "supportsPlasticCardMode:withApplet:withPackage:withModule:", v95, v62, v64, v63) & 1) == 0)
            {
              v75 = ATLLogObject();
              if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v115 = v62;
                _os_log_impl(&dword_22EEF5000, v75, OS_LOG_TYPE_DEFAULT, "Plastic card mode not supported for %@", buf, 0xCu);
              }
            }

            else
            {
              v67 = [AppletConfigurationData scriptForModule:v63];
              if (v67)
              {
                v91 = v64;
                v68 = v56;
                v69 = v55;
                v70 = [MEMORY[0x277CBEA90] dataWithHexString:v62];
                v71 = SelectByNameCmd(v70);
                v72 = [v95 transceiveAndCheckSW:v71 error:error];

                if (!v72 || ![v95 applyScript:v67 error:error] || error && *error)
                {
                  v79 = ATLLogObject();
                  if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v115 = v62;
                    _os_log_impl(&dword_22EEF5000, v79, OS_LOG_TYPE_ERROR, "Failed executing script on AID %@", buf, 0xCu);
                  }

                  [v95 dumpAPDUs:&__block_literal_global_935];
                  v27 = v83;

                  v41 = 0;
                  v29 = counterCopy;
                  v37 = numberCopy;
                  v35 = v85;
                  goto LABEL_61;
                }

                v73 = ATLLogObject();
                v55 = v69;
                if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v115 = v62;
                  _os_log_impl(&dword_22EEF5000, v73, OS_LOG_TYPE_DEFAULT, "Successfully executed script on AID %@", buf, 0xCu);
                }

                v27 = v83;
                v56 = v68;
                v64 = v91;
              }

              else
              {
                v73 = ATLLogObject();
                if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v115 = v63;
                  _os_log_impl(&dword_22EEF5000, v73, OS_LOG_TYPE_DEFAULT, "No script for MID %@", buf, 0xCu);
                }
              }

              v54 = v88;
            }

            v57 = v89;
          }

          else
          {
            v62 = ATLLogObject();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
            {
              v74 = [v59 objectForKeyedSubscript:v55];
              *buf = 138412290;
              v115 = v74;
              _os_log_impl(&dword_22EEF5000, v62, OS_LOG_TYPE_DEFAULT, "Ignore LC %@", buf, 0xCu);
            }
          }

          ++v58;
        }

        while (v54 != v58);
        v76 = [v27 countByEnumeratingWithState:&v97 objects:v109 count:16];
        v54 = v76;
        if (v76)
        {
          continue;
        }

        break;
      }
    }

    v37 = numberCopy;
    asHexString2 = [numberCopy asHexString];
    v35 = v85;
    [v96 setObject:v85 forKey:asHexString2];

    [v96 synchronize];
    v41 = 1;
    v29 = counterCopy;
  }

LABEL_61:
  v43 = v82;
LABEL_62:

  v80 = *MEMORY[0x277D85DE8];
  return v41;
}

+ (BOOL)setPlasticCardMode:(BOOL)mode withApplet:(id)applet withPackage:(id)package withModule:(id)module serialNumber:(id)number transceiver:(id)transceiver error:(id *)error
{
  modeCopy = mode;
  v79[1] = *MEMORY[0x277D85DE8];
  appletCopy = applet;
  packageCopy = package;
  moduleCopy = module;
  numberCopy = number;
  transceiverCopy = transceiver;
  if (modeCopy)
  {
    [AppletConfigurationData plasticCardScriptForModule:moduleCopy];
  }

  else
  {
    [AppletConfigurationData scriptForModule:moduleCopy];
  }
  v19 = ;
  v20 = v19;
  if (v19)
  {
    v66 = v19;
    v21 = +[AppletTranslator userDefaults];
    v65 = numberCopy;
    asHexString = [numberCopy asHexString];
    [v21 removeObjectForKey:asHexString];

    [v21 synchronize];
    v67 = transceiverCopy;
    v23 = [TransceiverWrapper withTransceiver:transceiverCopy];
    v24 = [ATLGetDecoder getDecoderForApplet:appletCopy withPackage:packageCopy withModule:moduleCopy];
    v25 = v24;
    if (v24 && [v24 conformsToProtocol:&unk_2843CC850] && (objc_msgSend(v25, "supportsPlasticCardMode:withApplet:withPackage:withModule:", v23, appletCopy, packageCopy, moduleCopy) & 1) == 0)
    {
      v51 = ATLLogObject();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v69 = appletCopy;
        _os_log_impl(&dword_22EEF5000, v51, OS_LOG_TYPE_ERROR, "Plastic card mode not supported for %@", buf, 0xCu);
      }

      appletCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Plastic card mode not supported for %@", appletCopy];
      v33 = appletCopy;
      v20 = v66;
      if (!error)
      {
        v38 = 0;
        goto LABEL_32;
      }

      v53 = *error;
      v54 = MEMORY[0x277CCA9B8];
      v55 = *MEMORY[0x277CCA450];
      if (*error)
      {
        v56 = *MEMORY[0x277CCA7E8];
        v72[0] = *MEMORY[0x277CCA450];
        v72[1] = v56;
        v73[0] = appletCopy;
        v73[1] = v53;
        v57 = MEMORY[0x277CBEAC0];
        v58 = v73;
        v59 = v72;
        v60 = 2;
      }

      else
      {
        v74 = *MEMORY[0x277CCA450];
        v75 = appletCopy;
        v57 = MEMORY[0x277CBEAC0];
        v58 = &v75;
        v59 = &v74;
        v60 = 1;
      }

      v63 = [v57 dictionaryWithObjects:v58 forKeys:v59 count:v60];
      *error = [v54 errorWithDomain:@"ATL" code:2 userInfo:v63];
    }

    else
    {
      v26 = appletCopy;
      v27 = packageCopy;
      v64 = v26;
      v28 = [MEMORY[0x277CBEA90] dataWithHexString:?];
      v29 = SelectByNameCmd(v28);
      v30 = [v23 transceiveAndCheckSW:v29 error:error];

      if (v30)
      {
        v31 = [v23 applyScript:v66 error:error];
        v32 = @"disabling";
        if (modeCopy)
        {
          v32 = @"enabling";
        }

        v33 = v32;
        if (v31 && (!error || !*error))
        {
          v34 = ATLLogObject();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v69 = v33;
            v70 = 2112;
            v71 = v64;
            _os_log_impl(&dword_22EEF5000, v34, OS_LOG_TYPE_DEFAULT, "Success %@ plastic card mode on AID %@", buf, 0x16u);
          }

          v35 = [MEMORY[0x277CBEA90] dataWithHexString:@"A00000015143525300"];
          v36 = SelectByNameCmd(v35);
          v37 = [v23 transceiveAndCheckSW:v36 error:0];
          v38 = v37 != 0;

          v39 = ATLLogObject();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
          {
            *buf = 67109120;
            LODWORD(v69) = v37 != 0;
            _os_log_impl(&dword_22EEF5000, v39, OS_LOG_TYPE_INFO, "Selected CRS: %d", buf, 8u);
          }

          packageCopy = v27;
          appletCopy = v64;
          goto LABEL_31;
        }
      }

      else
      {
        v49 = @"disabling";
        if (modeCopy)
        {
          v49 = @"enabling";
        }

        v33 = v49;
      }

      packageCopy = v27;
      v50 = ATLLogObject();
      appletCopy = v64;
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v69 = v33;
        v70 = 2112;
        v71 = v64;
        _os_log_impl(&dword_22EEF5000, v50, OS_LOG_TYPE_ERROR, "Failed %@ plastic card mode on AID %@", buf, 0x16u);
      }

      [v23 dumpAPDUs:&__block_literal_global_949];
    }

    v38 = 0;
LABEL_31:
    v20 = v66;
LABEL_32:

    numberCopy = v65;
LABEL_41:

    transceiverCopy = v67;
    goto LABEL_42;
  }

  v40 = ATLLogObject();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v69 = moduleCopy;
    _os_log_impl(&dword_22EEF5000, v40, OS_LOG_TYPE_ERROR, "No plastic card configuration for %@", buf, 0xCu);
  }

  moduleCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"No plastic card configuration for %@", moduleCopy];
  v21 = moduleCopy;
  if (error)
  {
    v67 = transceiverCopy;
    v42 = *error;
    v43 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v44 = *MEMORY[0x277CCA7E8];
      v76[0] = *MEMORY[0x277CCA450];
      v76[1] = v44;
      v77[0] = moduleCopy;
      v77[1] = v42;
      v45 = MEMORY[0x277CBEAC0];
      v46 = v77;
      v47 = v76;
      v48 = 2;
    }

    else
    {
      v78 = *MEMORY[0x277CCA450];
      v79[0] = moduleCopy;
      v45 = MEMORY[0x277CBEAC0];
      v46 = v79;
      v47 = &v78;
      v48 = 1;
    }

    v23 = [v45 dictionaryWithObjects:v46 forKeys:v47 count:v48];
    [v43 errorWithDomain:@"ATL" code:2 userInfo:v23];
    *error = v38 = 0;
    goto LABEL_41;
  }

  v38 = 0;
LABEL_42:

  v61 = *MEMORY[0x277D85DE8];
  return v38;
}

+ (id)GetAppletProperties:(id)properties withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  v22[1] = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  packageCopy = package;
  moduleCopy = module;
  transceiverCopy = transceiver;
  v15 = [ATLGetDecoder getDecoderForApplet:propertiesCopy withPackage:packageCopy withModule:moduleCopy];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 GetAppletProperties:propertiesCopy withPackage:packageCopy withModule:moduleCopy withTransceiver:transceiverCopy withError:error];
  }

  else
  {
    v21 = @"Supported";
    v22[0] = MEMORY[0x277CBEC28];
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  }

  v18 = v17;

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)processEndOfTransaction:(id)transaction withPackage:(id)package withModule:(id)module withTransceiver:(id)transceiver withError:(id *)error
{
  v43 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  packageCopy = package;
  moduleCopy = module;
  transceiverCopy = transceiver;
  v15 = [ATLGetDecoder getDecoderForApplet:transactionCopy withPackage:packageCopy withModule:moduleCopy];
  if (v15)
  {
    v16 = [TransceiverWrapper withTransceiver:transceiverCopy];
    v17 = [v15 processEndOfTransaction:v16 withApplet:transactionCopy withPackage:packageCopy withModule:moduleCopy withError:error];

    if (v17)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v18 = ATLLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v38 = transactionCopy;
      v39 = 2112;
      v40 = packageCopy;
      v41 = 2112;
      v42 = moduleCopy;
      _os_log_impl(&dword_22EEF5000, v18, OS_LOG_TYPE_ERROR, "No suitable decoder for AID %@ PID %@ MID %@", buf, 0x20u);
    }

    moduleCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"No suitable decoder for AID %@ PID %@ MID %@", transactionCopy, packageCopy, moduleCopy];
    v20 = moduleCopy;
    if (error)
    {
      v21 = *error;
      v22 = MEMORY[0x277CCA9B8];
      v23 = *MEMORY[0x277CCA450];
      if (*error)
      {
        v24 = *MEMORY[0x277CCA7E8];
        v33[0] = *MEMORY[0x277CCA450];
        v33[1] = v24;
        v34[0] = moduleCopy;
        v34[1] = v21;
        v25 = MEMORY[0x277CBEAC0];
        v26 = v34;
        v27 = v33;
        v28 = 2;
      }

      else
      {
        v35 = *MEMORY[0x277CCA450];
        v36 = moduleCopy;
        v25 = MEMORY[0x277CBEAC0];
        v26 = &v36;
        v27 = &v35;
        v28 = 1;
      }

      v29 = [v25 dictionaryWithObjects:v26 forKeys:v27 count:v28];
      *error = [v22 errorWithDomain:@"ATL" code:2 userInfo:v29];
    }
  }

  v30 = ATLLogObject();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v38 = transactionCopy;
    _os_log_impl(&dword_22EEF5000, v30, OS_LOG_TYPE_ERROR, "Failed to process End of Transaction: %@", buf, 0xCu);
  }

  v17 = 0;
LABEL_15:

  v31 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (BOOL)isLegacyApplet:(id)applet withPackage:(id)package withModule:(id)module
{
  packageCopy = package;
  if ([packageCopy hasPrefix:@"A00000068001"])
  {
    v6 = MEMORY[0x277CBEA90];
    v7 = [packageCopy substringFromIndex:{objc_msgSend(packageCopy, "length") - 4}];
    v8 = [v6 dataWithHexString:v7];

    v9 = ReadU16BE([v8 bytes]) < 0x621;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (void)cleanup
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  allObjects = [statefulDecoders allObjects];
  v3 = [allObjects countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(allObjects);
        }

        [*(*(&v8 + 1) + 8 * v6++) cleanup];
      }

      while (v4 != v6);
      v4 = [allObjects countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

+ (id)getServiceProviderData:(id)data withPackage:(id)package withModule:(id)module withPublicKey:(id)key withEncryptionScheme:(id)scheme withTransceiver:(id)transceiver withError:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  packageCopy = package;
  moduleCopy = module;
  keyCopy = key;
  schemeCopy = scheme;
  transceiverCopy = transceiver;
  v20 = [ATLGetDecoder getDecoderForApplet:dataCopy withPackage:packageCopy withModule:moduleCopy];
  v21 = v20;
  if (v20 && [v20 conformsToProtocol:&unk_2843CADF8])
  {
    v22 = [TransceiverWrapper withTransceiver:transceiverCopy];
    v23 = [v21 getServiceProviderData:dataCopy withPackage:packageCopy withModule:moduleCopy withPublicKey:keyCopy withEncryptionScheme:schemeCopy withTransceiver:v22 withError:error];
  }

  else
  {
    v24 = ATLLogObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v43 = dataCopy;
      _os_log_impl(&dword_22EEF5000, v24, OS_LOG_TYPE_ERROR, "Service Provider Opaque Data is not supported for %@", buf, 0xCu);
    }

    dataCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Service Provider Opaque Data is not supported for %@", dataCopy];
    v26 = dataCopy;
    if (error)
    {
      v27 = *error;
      v28 = MEMORY[0x277CCA9B8];
      v29 = *MEMORY[0x277CCA450];
      if (*error)
      {
        v30 = *MEMORY[0x277CCA7E8];
        v38[0] = *MEMORY[0x277CCA450];
        v38[1] = v30;
        v39[0] = dataCopy;
        v39[1] = v27;
        v31 = MEMORY[0x277CBEAC0];
        v32 = v39;
        v33 = v38;
        v34 = 2;
      }

      else
      {
        v40 = *MEMORY[0x277CCA450];
        v41 = dataCopy;
        v31 = MEMORY[0x277CBEAC0];
        v32 = &v41;
        v33 = &v40;
        v34 = 1;
      }

      v35 = [v31 dictionaryWithObjects:v32 forKeys:v33 count:v34];
      *error = [v28 errorWithDomain:@"ATL" code:2 userInfo:v35];
    }

    v23 = 0;
  }

  v36 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (BOOL)getCurrentInMetroStatus:(id *)status
{
  v3 = +[_TtC24AppletTranslationLibrary17MetroStateMonitor shared];
  inMetro = [v3 inMetro];

  return inMetro;
}

+ (id)getATLDelegate
{
  objc_opt_self();
  v0 = delegate;

  return v0;
}

void __44__AppletTranslator_Private__isInternalBuild__block_invoke()
{
  v5 = *MEMORY[0x277D85DE8];
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  isInternalBuild_isInternal = has_internal_diagnostics;
  if (has_internal_diagnostics)
  {
    v1 = +[AppletTranslator userDefaults];
    isInternalBuild_isInternal = [v1 BOOLForKey:@"debug.enable.customer.behavior"] ^ 1;
  }

  v2 = ATLLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109120;
    v4[1] = isInternalBuild_isInternal;
    _os_log_impl(&dword_22EEF5000, v2, OS_LOG_TYPE_INFO, "Allowing internal diagnostics? %d", v4, 8u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

+ (void)registerForCleanup:(uint64_t)cleanup
{
  v5 = a2;
  objc_opt_self();
  v2 = statefulDecoders;
  if (!statefulDecoders)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v4 = statefulDecoders;
    statefulDecoders = v3;

    v2 = statefulDecoders;
  }

  [v2 addObject:v5];
}

+ (void)deregisterForCleanup:(uint64_t)cleanup
{
  v2 = a2;
  objc_opt_self();
  if ([statefulDecoders containsObject:v2])
  {
    [statefulDecoders removeObject:v2];
  }
}

@end