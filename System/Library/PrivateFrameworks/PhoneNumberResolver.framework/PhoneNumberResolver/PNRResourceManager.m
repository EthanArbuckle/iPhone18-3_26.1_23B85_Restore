@interface PNRResourceManager
+ (id)sharedManager;
- (BOOL)_lookupString:(id)a3 inTrieMemory:(void *)a4 value:(unsigned int *)a5;
- (PNRResourceManager)init;
- (id)_assetQueryForPNRResource:(id)a3;
- (id)_getDataFrom:(id)a3 zeroCacheCost:(BOOL)a4 logId:(id)a5;
- (id)_lastCatalogLoadTime;
- (void)_URLForInstalledResourceOfType:(id)a3 logId:(id)a4 resultBlock:(id)a5;
- (void)_bestStringForInCountryPhoneNumber:(id)a3 phoneNumberCC:(id)a4 countryOfDevice:(id)a5 countryTrieData:(id)a6 countryStrings:(id)a7 logId:(id)a8 resultBlock:(id)a9;
- (void)_catalogDownloadFinishedWithResult:(int64_t)a3;
- (void)_openLatestAssetWithBasename:(id)a3 maType:(id)a4 logId:(id)a5 resultBlock:(id)a6;
- (void)_setLastCatalogLoadTime:(id)a3;
- (void)_updateCatalog;
- (void)_updateCatalogAfterDelay:(double)a3;
- (void)catalogLoadThen:(id)a3;
- (void)dealloc;
- (void)lookupCCForPhoneNumber:(id)a3 logId:(id)a4 withResult:(id)a5;
- (void)lookupISOCountryCodeFromNANPNumber:(id)a3 logId:(id)a4 withResult:(id)a5;
- (void)lookupStringForPhoneNumber:(id)a3 inCC:(id)a4 countryCodeOfDevice:(id)a5 logId:(id)a6 withResult:(id)a7;
- (void)openPNRFilesForPrefix:(id)a3 logId:(id)a4 withResult:(id)a5;
@end

@implementation PNRResourceManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[PNRResourceManager sharedManager];
  }

  v3 = sharedManager_manager;

  return v3;
}

uint64_t __35__PNRResourceManager_sharedManager__block_invoke()
{
  sharedManager_manager = objc_alloc_init(PNRResourceManager);

  return MEMORY[0x2821F96F8]();
}

- (PNRResourceManager)init
{
  v14.receiver = self;
  v14.super_class = PNRResourceManager;
  v2 = [(PNRResourceManager *)&v14 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.PhoneNumberResolver", "ResourceManager");
    log = v2->_log;
    v2->_log = v3;

    v5 = [(PNRResourceManager *)v2 _lastCatalogLoadTime];
    lastCatalogLoadTime = v2->_lastCatalogLoadTime;
    v2->_lastCatalogLoadTime = v5;

    v2->_catalogLoadRetryMultiplier = 0;
    v7 = objc_alloc_init(MEMORY[0x277CBEA78]);
    fileDataCache = v2->_fileDataCache;
    v2->_fileDataCache = v7;

    [(NSCache *)v2->_fileDataCache setTotalCostLimit:10485760];
    [(NSCache *)v2->_fileDataCache setName:@"PNR data cache"];
    v9 = objc_alloc_init(MEMORY[0x277CBEA78]);
    maURLCache = v2->_maURLCache;
    v2->_maURLCache = v9;

    [(NSCache *)v2->_maURLCache setName:@"MA URL cache"];
    v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
    downloadsInflight = v2->_downloadsInflight;
    v2->_downloadsInflight = v11;

    v2->_downloadsInflightLock._os_unfair_lock_opaque = 0;
    [(PNRResourceManager *)v2 _updateCatalog];
  }

  return v2;
}

- (id)_lastCatalogLoadTime
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [v3 valueForKey:@"PNRltc"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self->_catalogLoadRetryMultiplier = 0;
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_updateCatalog
{
  v3 = objc_alloc_init(MEMORY[0x277D28A10]);
  [v3 setAllowsCellularAccess:1];
  [v3 setAllowsExpensiveAccess:1];
  v4 = [(PNRResourceManager *)self _lastCatalogLoadTime];
  [v3 setDiscretionary:v4 != 0];

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__PNRResourceManager__updateCatalog__block_invoke;
  v5[3] = &unk_279A24030;
  v5[4] = self;
  [MEMORY[0x277D289C0] startCatalogDownload:@"com.apple.MobileAsset.phoneNumberResolver" options:v3 then:v5];
}

- (void)dealloc
{
  stateCaptureHandle = self->_stateCaptureHandle;
  os_state_remove_handler();
  v4.receiver = self;
  v4.super_class = PNRResourceManager;
  [(PNRResourceManager *)&v4 dealloc];
}

- (void)_openLatestAssetWithBasename:(id)a3 maType:(id)a4 logId:(id)a5 resultBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __76__PNRResourceManager__openLatestAssetWithBasename_maType_logId_resultBlock___block_invoke;
  v18[3] = &unk_279A23F40;
  v19 = v10;
  v20 = self;
  v22 = v11;
  v23 = v13;
  v21 = v12;
  v14 = v11;
  v15 = v13;
  v16 = v12;
  v17 = v10;
  [(PNRResourceManager *)self _URLForInstalledResourceOfType:v14 logId:v16 resultBlock:v18];
}

void __76__PNRResourceManager__openLatestAssetWithBasename_maType_logId_resultBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.pnr", *(a1 + 32)];
    v8 = [v5 URLByAppendingPathComponent:v7];
    v9 = [*(a1 + 40) _getDataFrom:v8 zeroCacheCost:1 logId:*(a1 + 48)];
    if (v9)
    {
      v10 = v9;
      goto LABEL_6;
    }
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-default", *(a1 + 32)];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v11 URLForResource:v7 withExtension:@"pnr"];

  v10 = [*(a1 + 40) _getDataFrom:v8 zeroCacheCost:1 logId:*(a1 + 48)];
  if (!v10)
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = *(a1 + 56);
    v17 = @"type";
    v18[0] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v15 = [v12 _PNRAssetUnavailableErrorWithUserInfo:v14];

    (*(*(a1 + 64) + 16))();
    goto LABEL_8;
  }

LABEL_6:
  (*(*(a1 + 64) + 16))();
LABEL_8:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)lookupCCForPhoneNumber:(id)a3 logId:(id)a4 withResult:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__PNRResourceManager_lookupCCForPhoneNumber_logId_withResult___block_invoke;
  v12[3] = &unk_279A23F68;
  v13 = v8;
  v14 = v9;
  v12[4] = self;
  v10 = v8;
  v11 = v9;
  [(PNRResourceManager *)self openCountryCodeFileUsingLogId:a4 withResult:v12];
}

void __62__PNRResourceManager_lookupCCForPhoneNumber_logId_withResult___block_invoke(uint64_t a1, id a2, uint64_t a3)
{
  v16[2] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = *(a1 + 48);
    v5 = *(*(a1 + 48) + 16);
    v6 = *MEMORY[0x277D85DE8];

    v5();
  }

  else
  {
    v7 = [a2 bytes];
    if (*v7 == 1329811267)
    {
      v14 = 0;
      if ([*(a1 + 32) _lookupString:*(a1 + 40) inTrieMemory:v7 + 8 value:&v14])
      {
        v12 = *(a1 + 48);
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", v14];
        (*(v12 + 16))(v12, v8, 0);
      }

      else
      {
        v8 = [MEMORY[0x277CCA9B8] _PNRNotFoundErrorWithUserInfo:&unk_28703B980];
        (*(*(a1 + 48) + 16))(*(a1 + 48), 0, v8);
      }
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v7 length:4 encoding:1];
      v9 = MEMORY[0x277CCA9B8];
      v15[0] = @"expected";
      v15[1] = @"found";
      v16[0] = @"COCO";
      v16[1] = v8;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
      v11 = [v9 _PNRBadMagicErrorWithUserInfo:v10];

      (*(*(a1 + 48) + 16))();
    }

    v13 = *MEMORY[0x277D85DE8];
  }
}

- (void)lookupISOCountryCodeFromNANPNumber:(id)a3 logId:(id)a4 withResult:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__PNRResourceManager_lookupISOCountryCodeFromNANPNumber_logId_withResult___block_invoke;
  v12[3] = &unk_279A23F68;
  v13 = v8;
  v14 = v9;
  v12[4] = self;
  v10 = v8;
  v11 = v9;
  [(PNRResourceManager *)self openNANPFileUsingLogId:a4 withResult:v12];
}

void __74__PNRResourceManager_lookupISOCountryCodeFromNANPNumber_logId_withResult___block_invoke(uint64_t a1, id a2, uint64_t a3)
{
  v17[2] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = *(a1 + 48);
    v5 = *(*(a1 + 48) + 16);
    v6 = *MEMORY[0x277D85DE8];

    v5();
  }

  else
  {
    v7 = [a2 bytes];
    if (*v7 == 1347305806)
    {
      v15 = 0;
      v14 = 0;
      if ([*(a1 + 32) _lookupString:*(a1 + 40) inTrieMemory:v7 + 8 value:&v14])
      {
        v12 = *(a1 + 48);
        v8 = [MEMORY[0x277CCACA8] stringWithCString:&v14 encoding:1];
        (*(v12 + 16))(v12, v8, 0);
      }

      else
      {
        v8 = [MEMORY[0x277CCA9B8] _PNRNotFoundErrorWithUserInfo:&unk_28703B9A8];
        (*(*(a1 + 48) + 16))(*(a1 + 48), 0, v8);
      }
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v7 length:4 encoding:1];
      v9 = MEMORY[0x277CCA9B8];
      v16[0] = @"expected";
      v16[1] = @"found";
      v17[0] = @"NANP";
      v17[1] = v8;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
      v11 = [v9 _PNRBadMagicErrorWithUserInfo:v10];

      (*(*(a1 + 48) + 16))();
    }

    v13 = *MEMORY[0x277D85DE8];
  }
}

- (void)_bestStringForInCountryPhoneNumber:(id)a3 phoneNumberCC:(id)a4 countryOfDevice:(id)a5 countryTrieData:(id)a6 countryStrings:(id)a7 logId:(id)a8 resultBlock:(id)a9
{
  v164[2] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = [v17 bytes];
  if (!v21)
  {
    v30 = MEMORY[0x277CCA9B8];
    v31 = &unk_28703B9D0;
LABEL_6:
    v23 = [v30 _PNRAssetUnavailableErrorWithUserInfo:v31];
LABEL_7:
    (*(v20 + 2))(v20, 0, 0, v23);
    goto LABEL_8;
  }

  v22 = v21;
  if (*v21 != 1380864110)
  {
    v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v21 length:4 encoding:1];
    v24 = MEMORY[0x277CCA9B8];
    v163[0] = @"expected";
    v163[1] = @"found";
    v164[0] = @"nPNR";
    v164[1] = v23;
    v25 = MEMORY[0x277CBEAC0];
    v26 = v164;
    v27 = v163;
LABEL_4:
    v28 = [v25 dictionaryWithObjects:v26 forKeys:v27 count:2];
    v29 = [v24 _PNRBadMagicErrorWithUserInfo:v28];

    (*(v20 + 2))(v20, 0, 0, v29);
    goto LABEL_8;
  }

  v33 = [v18 bytes];
  if (!v33)
  {
    v30 = MEMORY[0x277CCA9B8];
    v31 = &unk_28703B9F8;
    goto LABEL_6;
  }

  v34 = v33;
  if (*v33 != 1397902928)
  {
    v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v33 length:4 encoding:1];
    v24 = MEMORY[0x277CCA9B8];
    v161[0] = @"expected";
    v161[1] = @"found";
    v162[0] = @"PNRS";
    v162[1] = v23;
    v25 = MEMORY[0x277CBEAC0];
    v26 = v162;
    v27 = v161;
    goto LABEL_4;
  }

  v146 = 0;
  if (![(PNRResourceManager *)self _lookupString:v14 inTrieMemory:v22 + 34 value:&v146])
  {
    v106 = MEMORY[0x277CCA9B8];
    v159[0] = @"type";
    v159[1] = @"resource";
    v160[0] = @"trie";
    v160[1] = v15;
    v107 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v160 forKeys:v159 count:2];
    v23 = [v106 _PNRNotFoundErrorWithUserInfo:v107];

    goto LABEL_7;
  }

  v128 = v20;
  v117 = v19;
  v118 = v16;
  v115 = v17;
  v116 = v14;
  v119 = v15;
  v35 = v34[9];
  v36 = [MEMORY[0x277CBEB18] arrayWithCapacity:v35];
  v37 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:v35];
  if (v35)
  {
    v38 = (v34 + 10);
    do
    {
      LODWORD(v35) = v35 - 1;
      v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:v38];
      [v36 addObject:v39];
      v40 = [MEMORY[0x277CCABB0] numberWithInt:*&v38[strlen(v38) + 1]];
      [v37 setObject:v40 forKey:v39];

      v38 += strlen(v38) + 5;
    }

    while (v35);
  }

  v114 = v36;
  v41 = [MEMORY[0x277CBEA60] arrayWithArray:v36];
  v42 = v37;
  v43 = v41;
  v113 = v42;
  v125 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:?];
  v44 = +[PNRUtils _preferredLanguages];
  v45 = [MEMORY[0x277CBEB18] array];
  v142 = 0u;
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  obj = v44;
  v46 = [obj countByEnumeratingWithState:&v142 objects:v158 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v143;
    do
    {
      for (i = 0; i != v47; ++i)
      {
        if (*v143 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v50 = MEMORY[0x277CBEAF8];
        v157 = *(*(&v142 + 1) + 8 * i);
        v51 = [MEMORY[0x277CBEA60] arrayWithObjects:&v157 count:1];
        v52 = [v50 mostPreferredLanguageOf:v43 withPreferredLanguages:v51 forUsage:1 options:0];

        if (v52)
        {
          [v45 addObject:v52];
        }
      }

      v47 = [obj countByEnumeratingWithState:&v142 objects:v158 count:16];
    }

    while (v47);
  }

  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  v120 = v45;
  v124 = [v120 countByEnumeratingWithState:&v138 objects:v156 count:16];
  if (!v124)
  {
    v121 = 0;
    v54 = 0;
    v20 = v128;
    goto LABEL_102;
  }

  v121 = 0;
  v54 = 0;
  v123 = *v139;
  *&v53 = 138544130;
  v112 = v53;
  v122 = v18;
  do
  {
    v55 = 0;
    do
    {
      v130 = v54;
      if (*v139 != v123)
      {
        objc_enumerationMutation(v120);
      }

      v129 = v55;
      v56 = *(*(&v138 + 1) + 8 * v55);
      v57 = v146;
      v58 = [v18 bytes];
      v59 = [v18 length];
      v60 = v58 + v59;
      v61 = [v125 objectForKey:v56];
      v62 = v58 + [v61 unsignedIntValue];

      v63 = (v62 + 4 * (v57 & 0x1F));
      if ((v63 + 1) >= v58 + v59)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
        {
          [PNRResourceManager _bestStringForInCountryPhoneNumber:v137 phoneNumberCC:? countryOfDevice:? countryTrieData:? countryStrings:? logId:? resultBlock:?];
        }

        log = self->_log;
        v54 = v130;
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          v93 = log;
          v94 = [v18 length];
          *buf = 138543618;
          *&buf[4] = v117;
          v150 = 2050;
          v151 = v94;
          _os_log_error_impl(&dword_25E515000, v93, OS_LOG_TYPE_ERROR, "[%{public}@] truncated pnrs data?; size %{public}lu ", buf, 0x16u);
        }

        v84 = self->_log;
        if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
        {
          *buf = v112;
          *&buf[4] = v117;
          v150 = 2050;
          v151 = v58;
          v152 = 2050;
          v153 = v58 + v59;
          v154 = 2050;
          v155 = v63;
          _os_log_error_impl(&dword_25E515000, v84, OS_LOG_TYPE_ERROR, "[%{public}@] begin: %{public}p, end: %{public}p, offsetPtr: %{public}p", buf, 0x2Au);
        }

        v85 = self->_log;
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          v95 = v85;
          v96 = [v115 length];
          *buf = 138543618;
          *&buf[4] = v117;
          v150 = 2050;
          v151 = v96;
          _os_log_error_impl(&dword_25E515000, v95, OS_LOG_TYPE_ERROR, "[%{public}@] pnr data size: %{public}lu", buf, 0x16u);
        }

        v86 = self->_log;
        v20 = v128;
        if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
        {
LABEL_93:
          *buf = v112;
          *&buf[4] = v117;
          v150 = 2114;
          v151 = v119;
          v152 = 2114;
          v153 = v116;
          v154 = 2114;
          v155 = v118;
          _os_log_error_impl(&dword_25E515000, v86, OS_LOG_TYPE_ERROR, "[%{public}@] prefix: '%{public}@', number: '%{public}@', country: %{public}@", buf, 0x2Au);
        }
      }

      else
      {
        v127 = v56;
        v64 = (v62 + 4 * (v57 >> 5));
        if ((v64 + 1) >= v60)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
          {
            [PNRResourceManager _bestStringForInCountryPhoneNumber:v135 phoneNumberCC:? countryOfDevice:? countryTrieData:? countryStrings:? logId:? resultBlock:?];
          }

          v87 = self->_log;
          v54 = v130;
          if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
          {
            v97 = v87;
            v98 = [v18 length];
            *buf = 138543618;
            *&buf[4] = v117;
            v150 = 2050;
            v151 = v98;
            _os_log_error_impl(&dword_25E515000, v97, OS_LOG_TYPE_ERROR, "[%{public}@] truncated pnrs data?; size %{public}lu ", buf, 0x16u);
          }

          v88 = self->_log;
          if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
          {
            *buf = v112;
            *&buf[4] = v117;
            v150 = 2050;
            v151 = v58;
            v152 = 2050;
            v153 = v58 + v59;
            v154 = 2050;
            v155 = v64;
            _os_log_error_impl(&dword_25E515000, v88, OS_LOG_TYPE_ERROR, "[%{public}@] begin: %{public}p, end: %{public}p, offsetPtr: %{public}p", buf, 0x2Au);
          }

          v89 = self->_log;
          if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
          {
            v99 = v89;
            v100 = [v115 length];
            *buf = 138543618;
            *&buf[4] = v117;
            v150 = 2050;
            v151 = v100;
            _os_log_error_impl(&dword_25E515000, v99, OS_LOG_TYPE_ERROR, "[%{public}@] pnr data size: %{public}lu", buf, 0x16u);
          }

          v86 = self->_log;
          v20 = v128;
          if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_93;
          }
        }

        else
        {
          v65 = (v62 + 4 * (v57 >> 13));
          if ((v65 + 1) < v60)
          {
            v66 = *v63;
            v67 = *v64;
            v68 = *v65;
            v69 = v58 + v66;
            if (v59 < v66)
            {
LABEL_38:
              [PNRResourceManager _bestStringForInCountryPhoneNumber:phoneNumberCC:countryOfDevice:countryTrieData:countryStrings:logId:resultBlock:];
              v70 = *buf;
            }

            else
            {
              v70 = 0;
              while (*(v69 + v70))
              {
                ++v70;
                if (v69 + v70 > v60)
                {
                  goto LABEL_38;
                }
              }
            }

            v71 = v58 + v67;
            if (v59 < v67)
            {
LABEL_43:
              [PNRResourceManager _bestStringForInCountryPhoneNumber:phoneNumberCC:countryOfDevice:countryTrieData:countryStrings:logId:resultBlock:];
              v72 = *buf;
            }

            else
            {
              v72 = 0;
              while (*(v71 + v72))
              {
                ++v72;
                if (v71 + v72 > v60)
                {
                  goto LABEL_43;
                }
              }
            }

            v73 = v58 + v68;
            if (v59 < v68)
            {
              [PNRResourceManager _bestStringForInCountryPhoneNumber:phoneNumberCC:countryOfDevice:countryTrieData:countryStrings:logId:resultBlock:];
              v74 = *buf;
              v54 = v130;
            }

            else
            {
              v74 = 0;
              v54 = v130;
              while (v74[v73])
              {
                ++v74;
                if (&v74[v73] > v60)
                {
                  [PNRResourceManager _bestStringForInCountryPhoneNumber:phoneNumberCC:countryOfDevice:countryTrieData:countryStrings:logId:resultBlock:];
                  v74 = *buf;
                  break;
                }
              }
            }

            v20 = v128;
            if (v70)
            {
              v75 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v69 length:v70 encoding:4];
            }

            else
            {
              v75 = 0;
            }

            v18 = v122;
            if (v72)
            {
              v76 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v71 length:v72 encoding:4];
              if (!v74)
              {
                goto LABEL_55;
              }
            }

            else
            {
              v76 = 0;
              if (!v74)
              {
LABEL_55:
                v77 = [[PNRStringsFileReaderResult alloc] initWithCountry:v75 region:v76 city:v74];
                v78 = v77;
                if (v77)
                {
                  v79 = [(PNRStringsFileReaderResult *)v77 score];
                  if (v79 > [(PNRStringsFileReaderResult *)v54 score])
                  {
                    v80 = v78;

                    v81 = v127;
                    v121 = v81;
                    v20 = v128;
                    v54 = v80;
                  }

                  v82 = [(PNRStringsFileReaderResult *)v54 score];
                  if (v82 == +[PNRStringsFileReaderResult maxPossibleScore])
                  {

                    goto LABEL_102;
                  }
                }

                goto LABEL_60;
              }
            }

            v74 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v73 length:v74 encoding:4];
            goto LABEL_55;
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
          {
            [PNRResourceManager _bestStringForInCountryPhoneNumber:v133 phoneNumberCC:? countryOfDevice:? countryTrieData:? countryStrings:? logId:? resultBlock:?];
          }

          v90 = self->_log;
          v54 = v130;
          if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
          {
            v101 = v90;
            v102 = [v18 length];
            *buf = 138543618;
            *&buf[4] = v117;
            v150 = 2050;
            v151 = v102;
            _os_log_error_impl(&dword_25E515000, v101, OS_LOG_TYPE_ERROR, "[%{public}@] truncated pnrs data?; size %{public}lu ", buf, 0x16u);
          }

          v91 = self->_log;
          if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
          {
            *buf = v112;
            *&buf[4] = v117;
            v150 = 2050;
            v151 = v58;
            v152 = 2050;
            v153 = v58 + v59;
            v154 = 2050;
            v155 = v65;
            _os_log_error_impl(&dword_25E515000, v91, OS_LOG_TYPE_ERROR, "[%{public}@] begin: %{public}p, end: %{public}p, offsetPtr: %{public}p", buf, 0x2Au);
          }

          v92 = self->_log;
          if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
          {
            v103 = v92;
            v104 = [v115 length];
            *buf = 138543618;
            *&buf[4] = v117;
            v150 = 2050;
            v151 = v104;
            _os_log_error_impl(&dword_25E515000, v103, OS_LOG_TYPE_ERROR, "[%{public}@] pnr data size: %{public}lu", buf, 0x16u);
          }

          v86 = self->_log;
          v20 = v128;
          if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_93;
          }
        }
      }

LABEL_60:
      v55 = v129 + 1;
    }

    while (v129 + 1 != v124);
    v105 = [v120 countByEnumeratingWithState:&v138 objects:v156 count:16];
    v124 = v105;
  }

  while (v105);
LABEL_102:

  v14 = v116;
  if ([(PNRStringsFileReaderResult *)v54 isPlaceHolderForEmpty])
  {
    (*(v20 + 2))(v20, 0, 0, 0);
  }

  else
  {
    v108 = [(PNRStringsFileReaderResult *)v54 aggregateStringWhileInCountry:v118 forLanguage:v121 ccOfNumber:v119];
    if (v108)
    {
      (*(v20 + 2))(v20, v108, 1, 0);
    }

    else
    {
      v109 = MEMORY[0x277CCA9B8];
      v147[0] = @"type";
      v147[1] = @"resource";
      v148[0] = @"strings";
      v148[1] = v119;
      v110 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v148 forKeys:v147 count:2];
      v111 = [v109 _PNRNotFoundErrorWithUserInfo:v110];

      (*(v20 + 2))(v20, 0, 0, v111);
    }
  }

  v16 = v118;
  v15 = v119;
  v23 = v114;
  v17 = v115;
  v19 = v117;
LABEL_8:

  v32 = *MEMORY[0x277D85DE8];
}

- (void)lookupStringForPhoneNumber:(id)a3 inCC:(id)a4 countryCodeOfDevice:(id)a5 logId:(id)a6 withResult:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __91__PNRResourceManager_lookupStringForPhoneNumber_inCC_countryCodeOfDevice_logId_withResult___block_invoke;
  v22[3] = &unk_279A23F90;
  v22[4] = self;
  v23 = v12;
  v24 = v13;
  v25 = v14;
  v26 = v15;
  v27 = v16;
  v17 = v15;
  v18 = v14;
  v19 = v13;
  v20 = v12;
  v21 = v16;
  [(PNRResourceManager *)self openPNRFilesForPrefix:v19 logId:v17 withResult:v22];
}

uint64_t __91__PNRResourceManager_lookupStringForPhoneNumber_inCC_countryCodeOfDevice_logId_withResult___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return [*(a1 + 32) _bestStringForInCountryPhoneNumber:*(a1 + 40) phoneNumberCC:*(a1 + 48) countryOfDevice:*(a1 + 56) countryTrieData:a2 countryStrings:a3 logId:*(a1 + 64) resultBlock:*(a1 + 72)];
  }

  v5 = *(*(a1 + 72) + 16);

  return v5();
}

- (BOOL)_lookupString:(id)a3 inTrieMemory:(void *)a4 value:(unsigned int *)a5
{
  v6 = a3;
  if (CFBurstTrieCreateFromMapBytes())
  {
    if (CFBurstTrieCreateCursorForBytes())
    {
      v7 = [v6 UTF8String];
      if (*v7)
      {
        v8 = v7;
        v9 = 0;
        do
        {
          if (!CFBurstTrieCursorAdvanceForBytes())
          {
            break;
          }

          if (CFBurstTrieCursorGetPayload())
          {
            *a5 = 0;
            v9 = 1;
          }
        }

        while (*++v8);
      }

      else
      {
        v9 = 0;
      }

      CFBurstTrieCursorRelease();
    }

    else
    {
      v9 = 0;
    }

    CFBurstTrieRelease();
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (void)openPNRFilesForPrefix:(id)a3 logId:(id)a4 withResult:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__PNRResourceManager_openPNRFilesForPrefix_logId_withResult___block_invoke;
  v14[3] = &unk_279A23FB8;
  v15 = v8;
  v16 = self;
  v17 = v9;
  v18 = v10;
  v11 = v9;
  v12 = v8;
  v13 = v10;
  [(PNRResourceManager *)self _URLForInstalledResourceOfType:v12 logId:v11 resultBlock:v14];
}

void __61__PNRResourceManager_openPNRFilesForPrefix_logId_withResult___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.pnr", *(a1 + 32)];
    v8 = [v14 URLByAppendingPathComponent:v7];
    if (v8 && ([*(a1 + 40) _getDataFrom:v8 zeroCacheCost:0 logId:*(a1 + 48)], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v10 = v9;
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.pnrs", *(a1 + 32)];
      v12 = [v14 URLByAppendingPathComponent:v11];
      v13 = [*(a1 + 40) _getDataFrom:v12 zeroCacheCost:0 logId:*(a1 + 48)];
      if (v13)
      {
        (*(*(a1 + 56) + 16))();
        v6 = 0;
      }

      else
      {
        v6 = [MEMORY[0x277CCA9B8] _PNRAssetUnavailableErrorWithUserInfo:&unk_28703BA48];
        (*(*(a1 + 56) + 16))();
      }
    }

    else
    {
      v6 = [MEMORY[0x277CCA9B8] _PNRAssetUnavailableErrorWithUserInfo:&unk_28703BA20];
      (*(*(a1 + 56) + 16))();
    }
  }
}

- (id)_getDataFrom:(id)a3 zeroCacheCost:(BOOL)a4 logId:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  log = self->_log;
  if (v8)
  {
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      [PNRResourceManager _getDataFrom:zeroCacheCost:logId:];
    }

    v11 = [(NSCache *)self->_fileDataCache objectForKey:v8];
    if (v11)
    {
      v12 = v11;
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
      {
        [PNRResourceManager _getDataFrom:zeroCacheCost:logId:];
      }

      v13 = v12;
      goto LABEL_21;
    }

    [v8 startAccessingSecurityScopedResource];
    v24 = 0;
    v14 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v8 options:1 error:&v24];
    v15 = v24;
    [v8 stopAccessingSecurityScopedResource];
    if (v15 && (v16 = self->_log, os_log_type_enabled(v16, OS_LOG_TYPE_ERROR)))
    {
      *buf = 138543874;
      v26 = v9;
      v27 = 2114;
      v28 = v8;
      v29 = 2114;
      v30 = v15;
      _os_log_error_impl(&dword_25E515000, v16, OS_LOG_TYPE_ERROR, "[%{public}@] failed to read file contents at %{public}@ : %{public}@", buf, 0x20u);
      if (v14)
      {
        goto LABEL_14;
      }
    }

    else if (v14)
    {
LABEL_14:
      if (a4)
      {
        v17 = 0;
      }

      else
      {
        v17 = [v14 length];
      }

      v18 = self->_log;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = MEMORY[0x277CCABB0];
        v20 = v18;
        v21 = [v19 numberWithUnsignedInteger:{objc_msgSend(v14, "length")}];
        *buf = 138544130;
        v26 = v9;
        v27 = 2114;
        v28 = v21;
        v29 = 2114;
        v30 = v8;
        v31 = 2050;
        v32 = v17;
        _os_log_impl(&dword_25E515000, v20, OS_LOG_TYPE_INFO, "[%{public}@] cached data of size %{public}@ with key %{public}@ and cost %{public}lu", buf, 0x2Au);
      }

      [(NSCache *)self->_fileDataCache setObject:v14 forKey:v8 cost:v17];
    }

    v13 = v14;

LABEL_21:
    goto LABEL_22;
  }

  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v26 = v9;
    _os_log_impl(&dword_25E515000, log, OS_LOG_TYPE_INFO, "[%{public}@] fileURL is nil; no data for you", buf, 0xCu);
  }

  v13 = 0;
LABEL_22:

  v22 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_assetQueryForPNRResource:(id)a3
{
  v3 = MEMORY[0x277D289D8];
  v4 = a3;
  v5 = [[v3 alloc] initWithType:@"com.apple.MobileAsset.phoneNumberResolver"];
  [v5 returnTypes:2];
  [v5 setDoNotBlockBeforeFirstUnlock:1];
  [v5 addKeyValuePair:@"PNRResource" with:v4];

  [v5 addKeyValuePair:@"FormatVersion" with:@"1"];

  return v5;
}

- (void)_URLForInstalledResourceOfType:(id)a3 logId:(id)a4 resultBlock:(id)a5
{
  v66[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v43 = a4;
  v41 = a5;
  v9 = [(NSCache *)self->_maURLCache objectForKey:v8];
  if (!v9)
  {
    v38 = [(PNRResourceManager *)self _assetQueryForPNRResource:v8];
    if ([v38 queryMetaDataSync])
    {
      v10 = MEMORY[0x277CCA9B8];
      v65 = @"queryResult";
      v11 = MEMORY[0x25F8B6080]();
      v66[0] = v11;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:&v65 count:1];
      v40 = [v10 _PNRAssetQueryErrorWithUserInfo:v12];

      v41[2](v41, 0, v40);
LABEL_5:
      v9 = 0;
LABEL_39:

      goto LABEL_40;
    }

    v13 = [v38 results];

    if (!v13)
    {
      v30 = MEMORY[0x277CCA9B8];
      v63[0] = @"queryResult";
      v31 = MEMORY[0x25F8B6080](0);
      v63[1] = @"results";
      v64[0] = v31;
      v64[1] = @"none";
      v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:2];
      v40 = [v30 _PNRAssetQueryErrorWithUserInfo:v32];

      v41[2](v41, 0, v40);
      goto LABEL_5;
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = [v38 results];
    v14 = [obj countByEnumeratingWithState:&v50 objects:v62 count:16];
    if (v14)
    {
      v40 = 0;
      v15 = @"Unknown";
      v42 = *v51;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v51 != v42)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v50 + 1) + 8 * i);
          v18 = [v17 attributes];
          v19 = [v18 objectForKeyedSubscript:@"Build"];
          v20 = v19;
          v21 = @"Unknown";
          if (v19)
          {
            v21 = v19;
          }

          v22 = v21;

          v15 = v22;
          if ([v17 state] == 1)
          {
            log = self->_log;
            if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
            {
              *buf = 138543874;
              v57 = v43;
              v58 = 2114;
              v59 = v8;
              v60 = 2114;
              v61 = v22;
              _os_log_impl(&dword_25E515000, log, OS_LOG_TYPE_INFO, "[%{public}@] asset %{public}@/%{public}@ not present", buf, 0x20u);
            }

            os_unfair_lock_lock(&self->_downloadsInflightLock);
            if (([(NSMutableSet *)self->_downloadsInflight containsObject:v8]& 1) != 0)
            {
              v24 = self->_log;
              if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
              {
                *buf = 138543874;
                v57 = v43;
                v58 = 2114;
                v59 = v8;
                v60 = 2114;
                v61 = v22;
                _os_log_impl(&dword_25E515000, v24, OS_LOG_TYPE_INFO, "[%{public}@] download of asset %{public}@/%{public}@ is already inflight", buf, 0x20u);
              }
            }

            else
            {
              v26 = objc_alloc_init(MEMORY[0x277D28A10]);
              [v26 setAllowsCellularAccess:1];
              [v26 setAllowsExpensiveAccess:1];
              [v26 setDiscretionary:0];
              objc_initWeak(&location, self);
              v44[0] = MEMORY[0x277D85DD0];
              v44[1] = 3221225472;
              v44[2] = __71__PNRResourceManager__URLForInstalledResourceOfType_logId_resultBlock___block_invoke;
              v44[3] = &unk_279A23FE0;
              objc_copyWeak(&v48, &location);
              v27 = v8;
              v45 = v27;
              v28 = v15;
              v46 = v28;
              v47 = v17;
              [v17 startDownload:v26 then:v44];
              [(NSMutableSet *)self->_downloadsInflight addObject:v27];
              v29 = self->_log;
              if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
              {
                *buf = 138543874;
                v57 = v43;
                v58 = 2114;
                v59 = v8;
                v60 = 2114;
                v61 = v28;
                _os_log_impl(&dword_25E515000, v29, OS_LOG_TYPE_INFO, "[%{public}@] download of asset %{public}@/%{public}@ has been requested", buf, 0x20u);
              }

              objc_destroyWeak(&v48);
              objc_destroyWeak(&location);
            }

            os_unfair_lock_unlock(&self->_downloadsInflightLock);
          }

          else
          {
            if ([v17 state] == 2)
            {
              v33 = v17;

              v40 = v33;
              goto LABEL_32;
            }

            if ([v17 state] == 3)
            {
              v25 = v17;

              v40 = v25;
            }
          }
        }

        v14 = [obj countByEnumeratingWithState:&v50 objects:v62 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }

LABEL_32:

      if (v40)
      {
        v9 = [v40 getLocalFileUrl];
        if (v9)
        {
          [(NSCache *)self->_maURLCache setObject:v9 forKey:v8];
        }

        (v41)[2](v41, v9, 0);
        goto LABEL_38;
      }
    }

    else
    {

      v15 = @"Unknown";
    }

    v34 = MEMORY[0x277CCA9B8];
    v54[0] = @"type";
    v54[1] = @"build";
    v55[0] = v8;
    v55[1] = v15;
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:2];
    v36 = [v34 _PNRAssetUnavailableErrorWithUserInfo:v35];

    v41[2](v41, 0, v36);
    v40 = 0;
    v9 = 0;
LABEL_38:

    goto LABEL_39;
  }

  (v41)[2](v41, v9, 0);
LABEL_40:

  v37 = *MEMORY[0x277D85DE8];
}

void __71__PNRResourceManager__URLForInstalledResourceOfType_logId_resultBlock___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 16);
    [*&v3[14]._os_unfair_lock_opaque removeObject:*(a1 + 32)];
    os_unfair_lock_unlock(v3 + 16);
    v4 = *&v3[12]._os_unfair_lock_opaque;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = *(a1 + 48);
      v8 = v4;
      v9 = [v7 getLocalUrl];
      v11 = 138544130;
      v12 = @"asset";
      v13 = 2114;
      v14 = v5;
      v15 = 2114;
      v16 = v6;
      v17 = 2114;
      v18 = v9;
      _os_log_impl(&dword_25E515000, v8, OS_LOG_TYPE_INFO, "[%{public}@] Got the download asset reply: %{public}@/%{public}@, and %{public}@", &v11, 0x2Au);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_setLastCatalogLoadTime:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v5 setObject:v4 forKey:@"PNRltc"];

  lastCatalogLoadTime = self->_lastCatalogLoadTime;
  self->_lastCatalogLoadTime = v4;
}

- (void)_updateCatalogAfterDelay:(double)a3
{
  v14 = *MEMORY[0x277D85DE8];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v11 = @"catalog";
    v12 = 2050;
    v13 = a3;
    _os_log_impl(&dword_25E515000, log, OS_LOG_TYPE_INFO, "[%{public}@] phone number db catalog downloads in %{public}ld seconds", buf, 0x16u);
  }

  v6 = dispatch_get_global_queue(9, 0);
  v7 = dispatch_time(0, (a3 * 1000000000.0));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__PNRResourceManager__updateCatalogAfterDelay___block_invoke;
  block[3] = &unk_279A24008;
  block[4] = self;
  dispatch_after(v7, v6, block);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_catalogDownloadFinishedWithResult:(int64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v10 = 138543618;
    v11 = @"catalog";
    v12 = 2050;
    v13 = a3;
    _os_log_impl(&dword_25E515000, log, OS_LOG_TYPE_INFO, "[%{public}@] catalog download results : %{public}ld", &v10, 0x16u);
  }

  if (a3)
  {
    catalogLoadRetryMultiplier = self->_catalogLoadRetryMultiplier;
    if (catalogLoadRetryMultiplier <= 0xB)
    {
      self->_catalogLoadRetryMultiplier = ++catalogLoadRetryMultiplier;
    }

    v7 = (600 * catalogLoadRetryMultiplier);
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEAA8]);
    [(PNRResourceManager *)self _setLastCatalogLoadTime:v8];

    v7 = 90000.0;
  }

  [(PNRResourceManager *)self _updateCatalogAfterDelay:v7];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)catalogLoadThen:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277D28A10]);
  [v4 setAllowsCellularAccess:1];
  [v4 setDiscretionary:0];
  v5 = MEMORY[0x277D289C0];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__PNRResourceManager_catalogLoadThen___block_invoke;
  v7[3] = &unk_279A24058;
  v8 = v3;
  v6 = v3;
  [v5 startCatalogDownload:@"com.apple.MobileAsset.phoneNumberResolver" options:v4 then:v7];
}

- (void)_bestStringForInCountryPhoneNumber:phoneNumberCC:countryOfDevice:countryTrieData:countryStrings:logId:resultBlock:.cold.4()
{
  OUTLINED_FUNCTION_0();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_1(&dword_25E515000, MEMORY[0x277D86220], v1, "Assertion failed: r <= end");
  }

  *v0 = 0;
}

- (void)_getDataFrom:zeroCacheCost:logId:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_25E515000, v0, v1, "[%{public}@] lookup cached data with key %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_getDataFrom:zeroCacheCost:logId:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5(&dword_25E515000, v0, v1, "[%{public}@] found cached data for key %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

@end