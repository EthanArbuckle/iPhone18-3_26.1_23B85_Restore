@interface PPConnectionsDuetSource
+ (PPConnectionsDuetSource)sharedInstance;
+ (id)duetUserActivitiesFromStreams:(id)a3 limit:(unint64_t)a4 afterDate:(id)a5 explanationSet:(id)a6;
- (BOOL)isDuetEventAuthorized:(id)a3 bundleID:(id)a4;
- (BOOL)testMetadataForValidAddressAndNameWithEvent:(id)a3;
- (id)duetLocationUserActivitiesWithLimit:(unint64_t)a3 afterDate:(id)a4 explanationSet:(id)a5;
- (id)locationItemsWithCriteria:(id)a3 earliest:(id)a4 latest:(id)a5 limit:(unint64_t)a6 duetLimit:(int64_t)a7 consumer:(unint64_t)a8 richLocationItems:(BOOL)a9 resolveEKLocations:(BOOL)a10 explanationSet:(id)a11;
- (id)supportedLocationFields;
- (id)whitespaceAndNewlineCharacterSet;
@end

@implementation PPConnectionsDuetSource

- (id)whitespaceAndNewlineCharacterSet
{
  if (whitespaceAndNewlineCharacterSet__pasOnceToken35 != -1)
  {
    dispatch_once(&whitespaceAndNewlineCharacterSet__pasOnceToken35, &__block_literal_global_70);
  }

  v3 = whitespaceAndNewlineCharacterSet__pasExprOnceResult;

  return v3;
}

void __59__PPConnectionsDuetSource_whitespaceAndNewlineCharacterSet__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v2 = whitespaceAndNewlineCharacterSet__pasExprOnceResult;
  whitespaceAndNewlineCharacterSet__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

- (id)duetLocationUserActivitiesWithLimit:(unint64_t)a3 afterDate:(id)a4 explanationSet:(id)a5
{
  v18[1] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CFE298];
  v8 = a5;
  v9 = a4;
  v10 = [v7 appLocationActivityStream];
  v18[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v12 = +[PPConnectionsParameters sharedInstance];
  v13 = [v12 userActivityBatchSize];

  if (v13 <= a3)
  {
    v14 = a3;
  }

  else
  {
    v14 = v13;
  }

  v15 = [PPConnectionsDuetSource duetUserActivitiesFromStreams:v11 limit:v14 afterDate:v9 explanationSet:v8];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (BOOL)isDuetEventAuthorized:(id)a3 bundleID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 isEqualToString:*MEMORY[0x277D3A698]];
  v8 = objc_autoreleasePoolPush();
  if (v7)
  {
    v9 = [v5 metadata];
    v10 = [MEMORY[0x277CFE210] URL];
    v11 = [v9 objectForKeyedSubscript:v10];
    v12 = PPCollapseWhitespaceAndStrip();

    v13 = [MEMORY[0x277CBEBC0] URLWithString:v12];
    v14 = [v13 host];
    v15 = [v14 lowercaseString];

    v16 = +[PPConnectionsParameters sharedInstance];
    LODWORD(v14) = [v16 shouldUseAllowedWebsite];

    if (v14)
    {
      if (!v15 || (+[PPConnectionsParameters sharedInstance](PPConnectionsParameters, "sharedInstance"), v17 = objc_claimAutoreleasedReturnValue(), [v17 donationAllowedWebsites], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "containsObject:", v15), v18, v17, (v19 & 1) == 0))
      {
        v20 = pp_connections_log_handle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v41 = 0;
          v21 = "PPConnectionsDuetSource: website not allowed";
          v22 = &v41;
LABEL_16:
          _os_log_impl(&dword_23224A000, v20, OS_LOG_TYPE_DEFAULT, v21, v22, 2u);
          goto LABEL_17;
        }

        goto LABEL_17;
      }
    }

    else if (v15)
    {
      v30 = +[PPConnectionsParameters sharedInstance];
      v31 = [v30 donationBlockedWebsites];
      v32 = [v31 containsObject:v15];

      if (v32)
      {
        v20 = pp_connections_log_handle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v21 = "PPConnectionsDuetSource: website is blocked";
          v22 = buf;
          goto LABEL_16;
        }

LABEL_17:

        goto LABEL_23;
      }
    }

LABEL_25:
    objc_autoreleasePoolPop(v8);
    v36 = 1;
    goto LABEL_26;
  }

  v12 = [v6 lowercaseString];
  v23 = +[PPConnectionsParameters sharedInstance];
  v24 = [v23 shouldUseAllowedApps];

  if (!v24)
  {
    if (!v6)
    {
      goto LABEL_25;
    }

    v33 = +[PPConnectionsParameters sharedInstance];
    v34 = [v33 donationBlockedApps];
    v35 = [v34 containsObject:v12];

    if (!v35)
    {
      goto LABEL_25;
    }

    v15 = pp_connections_log_handle();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v38 = 0;
    v28 = "PPConnectionsDuetSource: app is blocked";
    v29 = &v38;
LABEL_22:
    _os_log_impl(&dword_23224A000, v15, OS_LOG_TYPE_DEFAULT, v28, v29, 2u);
    goto LABEL_23;
  }

  if (v6)
  {
    v25 = +[PPConnectionsParameters sharedInstance];
    v26 = [v25 donationAllowedApps];
    v27 = [v26 containsObject:v12];

    if (v27)
    {
      goto LABEL_25;
    }
  }

  v15 = pp_connections_log_handle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v39 = 0;
    v28 = "PPConnectionsDuetSource: app is not allowed";
    v29 = &v39;
    goto LABEL_22;
  }

LABEL_23:

  objc_autoreleasePoolPop(v8);
  v36 = 0;
LABEL_26:

  return v36;
}

- (BOOL)testMetadataForValidAddressAndNameWithEvent:(id)a3
{
  v7 = a3;
  v8 = [v7 metadata];
  v172 = [MEMORY[0x277CFE210] thoroughfare];
  v173 = v8;
  v9 = [v8 objectForKeyedSubscript:?];
  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = [v7 metadata];
  [MEMORY[0x277CFE210] thoroughfare];
  v164 = v163 = v10;
  v3 = [v10 objectForKeyedSubscript:?];
  objc_opt_class();
  v165 = v3;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_8:
    v171 = 0;
    v170 = 0;
    v26 = 0;
    v27 = 0;
    memset(v174, 0, 28);
    v168 = 0;
    memset(v166, 0, sizeof(v166));
    memset(v167, 0, sizeof(v167));
    memset(v169, 0, 41);
    v28 = 0;
    v29 = 0;
    v30 = 0;
    goto LABEL_9;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = [v7 metadata];
  v13 = [MEMORY[0x277CFE210] thoroughfare];
  v4 = [v12 objectForKeyedSubscript:v13];
  v14 = [(PPConnectionsDuetSource *)self whitespaceAndNewlineCharacterSet];
  v5 = [v4 stringByTrimmingCharactersInSet:v14];

  objc_autoreleasePoolPop(v11);
  v3 = v5;

  v160 = v3;
  if (![v3 length])
  {
    v171 = 0;
    v169[40] = 0;
    v170 = 0;
    v26 = 0;
    v27 = 0;
    memset(v174, 0, 28);
    v168 = 0;
    memset(v166, 0, sizeof(v166));
    memset(v167, 0, sizeof(v167));
    memset(v169, 0, 36);
    v28 = 0;
    v29 = 0;
    v30 = 0;
    *&v169[36] = 1;
    goto LABEL_9;
  }

  v15 = [v7 metadata];
  [MEMORY[0x277CFE210] city];
  v158 = v159 = v15;
  v16 = [v15 objectForKeyedSubscript:?];
  HIDWORD(v171) = v16 != 0;
  v157 = v16;
  if (v16)
  {
    v17 = [v7 metadata];
    [MEMORY[0x277CFE210] city];
    v153 = v154 = v17;
    v18 = [v17 objectForKeyedSubscript:?];
    v19 = 0x277CCA000uLL;
    objc_opt_class();
    v152 = v18;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 0;
      goto LABEL_83;
    }

    v20 = objc_autoreleasePoolPush();
    v21 = [v7 metadata];
    v22 = [MEMORY[0x277CFE210] city];
    v4 = [v21 objectForKeyedSubscript:v22];
    v23 = [(PPConnectionsDuetSource *)self whitespaceAndNewlineCharacterSet];
    v24 = [v4 stringByTrimmingCharactersInSet:v23];

    objc_autoreleasePoolPop(v20);
    v25 = v24;

    v146 = v25;
    v5 = 1;
    if ([v25 length])
    {
      self = 0;
      goto LABEL_87;
    }
  }

  else
  {
    v5 = 0;
  }

  v19 = 0x277CCA000;
LABEL_83:
  v3 = [v7 metadata];
  [MEMORY[0x277CFE210] postalCode];
  v155 = v156 = v3;
  v37 = [v3 objectForKeyedSubscript:?];
  if (!v37)
  {
    LODWORD(v171) = v5;
    v162 = 0;
    v26 = 0;
    v27 = 0;
    memset(v169, 0, 32);
    memset(v174, 0, 28);
    v168 = 0;
    memset(v166, 0, sizeof(v166));
    memset(v167, 0, sizeof(v167));
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v169[40] = 0;
    *&v169[32] = 0x100000001;
    v170 = 1;
    goto LABEL_9;
  }

  v162 = v37;
  v38 = [v7 metadata];
  [MEMORY[0x277CFE210] postalCode];
  v150 = v151 = v38;
  v3 = [v38 objectForKeyedSubscript:?];
  v39 = *(v19 + 3240);
  objc_opt_class();
  v149 = v3;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    LODWORD(v171) = v5;
    v26 = 0;
    v27 = 0;
    memset(v174, 0, 28);
    v168 = 0;
    memset(v166, 0, sizeof(v166));
    memset(v167, 0, sizeof(v167));
    memset(v169, 0, 28);
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v169[40] = 0;
    *&v169[32] = 0x100000001;
    v170 = 1;
    *&v169[28] = 1;
    goto LABEL_9;
  }

  v3 = objc_autoreleasePoolPush();
  v40 = [v7 metadata];
  v41 = [MEMORY[0x277CFE210] postalCode];
  v4 = [v40 objectForKeyedSubscript:v41];
  v42 = [(PPConnectionsDuetSource *)self whitespaceAndNewlineCharacterSet];
  v43 = [v4 stringByTrimmingCharactersInSet:v42];

  objc_autoreleasePoolPop(v3);
  self = v43;

  v145 = self;
  if (![(PPConnectionsDuetSource *)self length])
  {
    v169[40] = 0;
    v26 = 0;
    v27 = 0;
    memset(v174, 0, 28);
    v168 = 0;
    memset(v166, 0, sizeof(v166));
    memset(v167, 0, sizeof(v167));
    memset(v169, 0, 24);
    v28 = 0;
    v29 = 0;
    v30 = 0;
    *&v169[32] = 0x100000001;
    v170 = 1;
    LODWORD(v171) = v5;
    *&v169[24] = 0x100000001;
    goto LABEL_9;
  }

  self = 1;
LABEL_87:
  v3 = [v7 metadata];
  [MEMORY[0x277CFE210] thoroughfare];
  v147 = v148 = v3;
  v44 = [v3 objectForKeyedSubscript:?];
  v170 = self;
  LODWORD(v171) = v5;
  if (!v44)
  {
    v161 = 0;
    v26 = 0;
    v27 = 0;
    *v169 = 0;
    *&v169[8] = 0;
    memset(v174, 0, 28);
    v168 = 0;
    memset(v166, 0, sizeof(v166));
    memset(v167, 0, sizeof(v167));
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v169[40] = 0;
    *&v169[28] = self;
    *&v169[32] = 0x100000001;
    *&v169[24] = self;
    *&v169[16] = 1;
    goto LABEL_9;
  }

  v161 = v44;
  v45 = [v7 metadata];
  [MEMORY[0x277CFE210] thoroughfare];
  v143 = v144 = v45;
  v3 = [v45 objectForKeyedSubscript:?];
  objc_opt_class();
  v142 = v3;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v27 = 0;
    *v169 = 0;
    *&v169[8] = 0;
    memset(v174, 0, 28);
    v168 = 0;
    memset(v166, 0, sizeof(v166));
    memset(v167, 0, sizeof(v167));
    v28 = 0;
    v29 = 0;
    v30 = 0;
    *&v169[36] = 1;
    *&v169[28] = self;
    *&v169[32] = 1;
    *&v169[24] = self;
    *&v169[16] = 1;
    v26 = 1;
    goto LABEL_9;
  }

  v46 = [v7 metadata];
  v140 = [MEMORY[0x277CFE210] locationName];
  v47 = [v46 objectForKeyedSubscript:?];
  v3 = v47 != 0;
  v139 = v47;
  v141 = v46;
  if (v47)
  {
    v48 = [v7 metadata];
    v137 = [MEMORY[0x277CFE210] locationName];
    v138 = v48;
    v49 = [v48 objectForKeyedSubscript:?];
    objc_opt_class();
    v136 = v49;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v27 = 0;
      *v169 = 0;
      *&v169[8] = 0;
      memset(v174, 0, 24);
      v168 = 0;
      memset(v166, 0, sizeof(v166));
      memset(v167, 0, sizeof(v167));
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v169[40] = 0;
      *&v169[28] = self;
      *&v169[32] = 0x100000001;
      *&v169[24] = self;
      *&v169[16] = 0x100000001;
      v26 = 1;
      LODWORD(v174[3]) = 1;
      goto LABEL_9;
    }

    v50 = [v7 metadata];
    v128 = [MEMORY[0x277CFE210] locationName];
    v129 = v50;
    v127 = [v50 objectForKeyedSubscript:?];
    if ([v127 length] > 0x12B)
    {
      *v169 = 0;
      *&v169[8] = 0;
      memset(v174, 0, 24);
      v168 = 0;
      memset(v166, 0, sizeof(v166));
      memset(v167, 0, sizeof(v167));
      v28 = 0;
      v29 = 0;
      v30 = 0;
      *&v169[36] = 1;
      *&v169[28] = self;
      *&v169[32] = 1;
      *&v169[24] = self;
      *&v169[16] = 0x100000001;
      v26 = 1;
      LODWORD(v174[3]) = 1;
      v27 = 1;
      goto LABEL_9;
    }

    LODWORD(v174[3]) = v3;
  }

  else
  {
    LODWORD(v174[3]) = 0;
  }

  v51 = [v7 metadata];
  v134 = [MEMORY[0x277CFE210] subThoroughfare];
  v135 = v51;
  v52 = [v51 objectForKeyedSubscript:?];
  v3 = v52 != 0;
  v133 = v52;
  if (v52)
  {
    v53 = [v7 metadata];
    v131 = [MEMORY[0x277CFE210] subThoroughfare];
    v132 = v53;
    v4 = [v53 objectForKeyedSubscript:?];
    objc_opt_class();
    v130 = v4;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v168 = 0;
      *&v169[4] = 0;
      v174[2] = 0;
      v174[1] = 0;
      memset(v166, 0, sizeof(v166));
      memset(v167, 0, sizeof(v167));
      *v169 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v169[40] = 0;
      *&v169[28] = self;
      *&v169[32] = 0x100000001;
      *&v169[24] = self;
      *&v169[12] = 1;
      *&v169[16] = 0x100000001;
      v26 = 1;
      v27 = v174[3];
      v174[0] = 1;
      goto LABEL_9;
    }

    v4 = [v7 metadata];
    v119 = [MEMORY[0x277CFE210] subThoroughfare];
    v120 = v4;
    v118 = [v4 objectForKeyedSubscript:?];
    if ([v118 length] > 0x12B)
    {
      *&v169[4] = 0;
      v174[2] = 0;
      v168 = 0;
      v174[1] = 0;
      memset(v166, 0, sizeof(v166));
      *v167 = 0;
      *v169 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v169[40] = 0;
      *&v169[28] = self;
      *&v169[32] = 0x100000001;
      *&v169[24] = self;
      *&v169[12] = 1;
      *&v169[16] = 0x100000001;
      v26 = 1;
      v27 = v174[3];
      v174[0] = 1;
      *&v167[8] = 1;
      goto LABEL_9;
    }
  }

  v54 = [v7 metadata];
  v125 = [MEMORY[0x277CFE210] thoroughfare];
  v126 = v54;
  v55 = [v54 objectForKeyedSubscript:?];
  v4 = v55 != 0;
  v124 = v55;
  LODWORD(v174[0]) = v3;
  if (v55)
  {
    v56 = [v7 metadata];
    v122 = [MEMORY[0x277CFE210] thoroughfare];
    v123 = v56;
    v57 = [v56 objectForKeyedSubscript:?];
    objc_opt_class();
    v121 = v57;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v168 = 0;
      *v169 = 0;
      *(v174 + 4) = 0uLL;
      memset(v166, 0, sizeof(v166));
      *v167 = 0;
      v29 = 0;
      v30 = 0;
      v169[40] = 0;
      *&v169[28] = self;
      *&v169[32] = 0x100000001;
      *&v169[24] = self;
      *&v169[16] = 0x100000001;
      v26 = 1;
      v27 = v174[3];
      *&v167[8] = v3;
      v28 = 0;
      *&v169[8] = 0x100000001;
      HIDWORD(v174[2]) = 1;
      goto LABEL_9;
    }

    v58 = [v7 metadata];
    v110 = [MEMORY[0x277CFE210] thoroughfare];
    v111 = v58;
    v109 = [v58 objectForKeyedSubscript:?];
    v59 = v3;
    if ([v109 length] > 0x12B)
    {
      v168 = 0;
      *v169 = 0;
      *(v174 + 4) = 0;
      *(&v174[1] + 4) = 0;
      *v166 = 0;
      *v167 = 0;
      v29 = 0;
      v30 = 0;
      *&v169[36] = 1;
      v169[40] = 0;
      *&v169[28] = self;
      *&v169[32] = 1;
      *&v169[20] = 1;
      *&v169[24] = self;
      *&v169[12] = 1;
      *&v169[16] = 1;
      v26 = 1;
      v27 = v174[3];
      *&v167[8] = v3;
      v28 = 0;
      *&v169[8] = 1;
      HIDWORD(v174[2]) = 1;
      *&v166[8] = 1;
      goto LABEL_9;
    }
  }

  else
  {
    v59 = v3;
  }

  v60 = [v7 metadata];
  v116 = [MEMORY[0x277CFE210] postalCode];
  v117 = v60;
  v61 = [v60 objectForKeyedSubscript:?];
  v3 = v61 != 0;
  v115 = v61;
  HIDWORD(v174[2]) = v4;
  if (v61)
  {
    v62 = [v7 metadata];
    v113 = [MEMORY[0x277CFE210] postalCode];
    v114 = v62;
    v63 = [v62 objectForKeyedSubscript:?];
    objc_opt_class();
    v112 = v63;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      *v166 = 0;
      *v167 = 0;
      LODWORD(v174[2]) = 0;
      *&v167[8] = v59;
      v168 = 0x100000000;
      *(v174 + 4) = 0;
      *v169 = 0;
      v29 = 0;
      v30 = 0;
      v169[40] = 0;
      *&v169[28] = self;
      *&v169[32] = 0x100000001;
      *&v169[24] = self;
      *&v169[16] = 0x100000001;
      v26 = 1;
      v27 = v174[3];
      v28 = 0;
      *&v169[8] = 0x100000001;
      *&v166[8] = v4;
      HIDWORD(v174[1]) = 1;
      goto LABEL_9;
    }

    v64 = [v7 metadata];
    v101 = [MEMORY[0x277CFE210] postalCode];
    v102 = v64;
    v100 = [v64 objectForKeyedSubscript:?];
    if ([v100 length] > 0x12B)
    {
      *v167 = 0;
      LODWORD(v174[2]) = 0;
      *&v166[8] = v4;
      *&v167[8] = v59;
      v168 = 0x100000000;
      *(v174 + 4) = 0;
      *v169 = 0;
      v29 = 0;
      v30 = 0;
      v169[40] = 0;
      *&v169[28] = self;
      *&v169[32] = 0x100000001;
      *&v169[24] = self;
      *&v169[16] = 0x100000001;
      v26 = 1;
      v27 = v174[3];
      v28 = 0;
      *&v169[8] = 0x100000001;
      HIDWORD(v174[1]) = 1;
      *v166 = 1;
      goto LABEL_9;
    }
  }

  v65 = [v7 metadata];
  v107 = [MEMORY[0x277CFE210] city];
  v66 = [v65 objectForKeyedSubscript:?];
  LODWORD(v174[2]) = v66 != 0;
  v106 = v66;
  HIDWORD(v174[1]) = v3;
  v108 = v65;
  if (v66)
  {
    v67 = [v7 metadata];
    v104 = [MEMORY[0x277CFE210] city];
    v105 = v67;
    v4 = [v67 objectForKeyedSubscript:?];
    objc_opt_class();
    v103 = v4;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      *&v166[4] = 0;
      *&v167[8] = v59;
      v168 = 0x100000000;
      *(v174 + 4) = 0;
      *v169 = 0;
      v29 = 0;
      v30 = 0;
      v169[40] = 0;
      *&v169[28] = self;
      *&v169[32] = 0x100000001;
      *&v169[24] = self;
      *&v169[16] = 0x100000001;
      v26 = 1;
      v28 = 0;
      *&v169[8] = 0x100000001;
      v27 = v174[3];
      *&v166[8] = HIDWORD(v174[2]);
      *v167 = 0x100000000;
      *v166 = v3;
      LODWORD(v174[2]) = 1;
      goto LABEL_9;
    }

    v4 = [v7 metadata];
    v92 = [MEMORY[0x277CFE210] city];
    v93 = v4;
    v91 = [v4 objectForKeyedSubscript:?];
    if ([v91 length] > 0x12B)
    {
      *&v167[8] = v59;
      v168 = 0x100000000;
      *(v174 + 4) = 0;
      *v169 = 0;
      v29 = 0;
      v30 = 0;
      v169[40] = 0;
      *&v169[28] = self;
      *&v169[32] = 0x100000001;
      *&v169[24] = self;
      *&v169[16] = 0x100000001;
      v26 = 1;
      v28 = 0;
      *&v169[8] = 0x100000001;
      v27 = v174[3];
      *&v166[8] = HIDWORD(v174[2]);
      *v167 = 0x100000000;
      *v166 = v3;
      LODWORD(v174[2]) = 1;
      *&v166[4] = 1;
      goto LABEL_9;
    }
  }

  v68 = [v7 metadata];
  v98 = [MEMORY[0x277CFE210] stateOrProvince];
  v69 = [v68 objectForKeyedSubscript:?];
  LODWORD(v174[1]) = v69 != 0;
  v97 = v69;
  v99 = v68;
  if (v69)
  {
    v70 = [v7 metadata];
    v95 = [MEMORY[0x277CFE210] stateOrProvince];
    v96 = v70;
    v4 = [v70 objectForKeyedSubscript:?];
    objc_opt_class();
    v94 = v4;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      *v169 = 0;
      HIDWORD(v174[0]) = 0;
      v29 = 0;
      v30 = 0;
      v169[40] = 0;
      *&v169[28] = self;
      *&v169[32] = 0x100000001;
      *&v169[24] = self;
      *&v169[16] = 0x100000001;
      v26 = 1;
      *&v167[8] = v59;
      v28 = 0;
      *&v169[8] = 0x100000001;
      v27 = v174[3];
      *v167 = 0x100000000;
      *v166 = v3;
      *&v166[4] = v174[2];
      v168 = 0x100000001;
      LODWORD(v174[1]) = 1;
      goto LABEL_9;
    }

    v4 = [v7 metadata];
    v82 = [MEMORY[0x277CFE210] stateOrProvince];
    v83 = v4;
    v81 = [v4 objectForKeyedSubscript:?];
    if ([v81 length] > 0x12B)
    {
      *v169 = 0;
      HIDWORD(v174[0]) = 0;
      v29 = 0;
      v30 = 0;
      v169[40] = 0;
      *&v169[28] = self;
      *&v169[32] = 0x100000001;
      *&v169[24] = self;
      *&v169[16] = 0x100000001;
      v26 = 1;
      *&v167[8] = v59;
      v28 = 0;
      *&v169[8] = 0x100000001;
      v27 = v174[3];
      *v166 = v3;
      *&v166[4] = v174[2];
      v168 = 0x100000001;
      LODWORD(v174[1]) = 1;
      *v167 = 0x100000001;
      goto LABEL_9;
    }
  }

  v3 = [v7 metadata];
  v89 = [MEMORY[0x277CFE210] country];
  v90 = v3;
  v71 = [v3 objectForKeyedSubscript:?];
  HIDWORD(v174[0]) = v71 != 0;
  v88 = v71;
  if (v71)
  {
    v72 = [v7 metadata];
    v85 = [MEMORY[0x277CFE210] country];
    v86 = v72;
    v4 = [v72 objectForKeyedSubscript:?];
    objc_opt_class();
    v84 = v4;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v29 = 0;
      v30 = 0;
      v169[40] = 0;
      *&v169[28] = self;
      *&v169[32] = 0x100000001;
      *&v169[24] = self;
      *&v169[16] = 0x100000001;
      v26 = 1;
      *&v167[8] = v59;
      v28 = 0;
      *&v169[8] = 0x100000001;
      v27 = v174[3];
      *v166 = HIDWORD(v174[1]);
      *&v167[4] = 1;
      *&v166[4] = v174[2];
      v168 = 0x100000001;
      *v167 = v174[1];
      *v169 = 1;
      HIDWORD(v174[0]) = 1;
      goto LABEL_9;
    }

    v3 = [v7 metadata];
    v75 = [MEMORY[0x277CFE210] country];
    v76 = v3;
    v74 = [v3 objectForKeyedSubscript:?];
    if ([v74 length] > 0x12B)
    {
      v29 = 0;
      v30 = 0;
      *&v169[36] = 1;
      *&v169[28] = self;
      *&v169[32] = 1;
      *&v169[24] = self;
      *&v169[16] = 0x100000001;
      v26 = 1;
      *&v167[8] = v59;
      v28 = 0;
      v27 = v174[3];
      *v166 = HIDWORD(v174[1]);
      *&v167[4] = 1;
      *&v166[4] = v174[2];
      v168 = 0x100000001;
      *v167 = v174[1];
      *v169 = 0x100000001;
      HIDWORD(v174[0]) = 1;
      *&v169[8] = 0x100000001;
      goto LABEL_9;
    }
  }

  v3 = HIDWORD(v174[1]);
  v4 = [v7 metadata];
  v79 = [MEMORY[0x277CFE210] displayName];
  v80 = v4;
  v87 = [v4 objectForKeyedSubscript:?];
  if (v87)
  {
    v3 = [v7 metadata];
    v77 = [MEMORY[0x277CFE210] displayName];
    v78 = v3;
    v4 = [v3 objectForKeyedSubscript:?];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v7 metadata];
      v3 = [MEMORY[0x277CFE210] displayName];
      [v5 objectForKeyedSubscript:v3];
      self = v73 = self;
      v169[40] = [(PPConnectionsDuetSource *)self length]< 0x12C;
      *&v169[28] = v73;
      *&v169[32] = 0x100000001;
      *&v169[24] = v73;
      *&v169[16] = 0x100000001;
      v26 = 1;
      v27 = v174[3];
      *v166 = HIDWORD(v174[1]);
      *&v167[4] = 1;
      *&v167[8] = v174[0];
      *&v166[4] = v174[2];
      v168 = 0x100000001;
      *v167 = v174[1];
      *v169 = 1;
      *&v169[4] = HIDWORD(v174[0]);
      *&v169[8] = 0x100000001;
      v28 = 1;
      v29 = 1;
      v30 = 1;
    }

    else
    {
      v30 = 0;
      v169[40] = 0;
      *&v169[28] = self;
      *&v169[32] = 0x100000001;
      *&v169[24] = self;
      *&v169[16] = 0x100000001;
      v26 = 1;
      v27 = v174[3];
      *v166 = HIDWORD(v174[1]);
      *&v167[4] = 1;
      *&v167[8] = v174[0];
      *&v166[4] = v174[2];
      v168 = 0x100000001;
      *v167 = v174[1];
      *v169 = 1;
      *&v169[4] = HIDWORD(v174[0]);
      *&v169[8] = 0x100000001;
      v28 = 1;
      v29 = 1;
    }
  }

  else
  {
    v87 = 0;
    v29 = 0;
    v30 = 0;
    *&v169[32] = 0x100000001;
    *&v169[24] = self;
    *&v169[28] = self;
    *&v169[16] = 0x100000001;
    v26 = 1;
    v27 = v174[3];
    *&v169[8] = 0x100000001;
    *&v167[4] = 1;
    *&v167[8] = v59;
    *v166 = HIDWORD(v174[1]);
    *&v166[4] = v174[2];
    v168 = 0x100000001;
    *v167 = v174[1];
    *v169 = 1;
    *&v169[4] = HIDWORD(v174[0]);
    v28 = 1;
    v169[40] = 1;
  }

LABEL_9:
  if (v30)
  {
    v31 = v27;
    v32 = v9;
    v33 = v28;
    v34 = v26;
    v35 = v29;

    v29 = v35;
    v26 = v34;
    v28 = v33;
    v9 = v32;
    v27 = v31;
  }

  if (v29)
  {
  }

  if (v28)
  {
  }

  if (*&v169[4])
  {
  }

  if (HIDWORD(v174[0]))
  {
  }

  if (*v169)
  {
  }

  if (*v167)
  {
  }

  if (LODWORD(v174[1]))
  {
  }

  if (v168)
  {
  }

  if (*&v166[4])
  {
  }

  if (LODWORD(v174[2]))
  {
  }

  if (*&v167[4])
  {
  }

  if (*v166)
  {
  }

  if (HIDWORD(v174[1]))
  {
  }

  if (HIDWORD(v168))
  {
  }

  if (*&v166[8])
  {
  }

  if (HIDWORD(v174[2]))
  {
  }

  if (*&v169[8])
  {
  }

  if (*&v167[8])
  {
  }

  if (LODWORD(v174[0]))
  {
  }

  if (*&v169[12])
  {

    if (!v27)
    {
      goto LABEL_51;
    }
  }

  else if (!v27)
  {
LABEL_51:
    if (!LODWORD(v174[3]))
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  if (LODWORD(v174[3]))
  {
LABEL_52:
  }

LABEL_53:
  if (*&v169[20])
  {
  }

  if (v26)
  {
  }

  if (*&v169[16])
  {
  }

  if (*&v169[24])
  {
  }

  if (*&v169[28])
  {
  }

  if (v170)
  {
  }

  if (v171)
  {
  }

  if (HIDWORD(v171))
  {
  }

  if (*&v169[32])
  {
  }

  if (*&v169[36])
  {
  }

  if (v9)
  {
  }

  return v169[40];
}

- (id)supportedLocationFields
{
  if (supportedLocationFields_onceToken != -1)
  {
    dispatch_once(&supportedLocationFields_onceToken, &__block_literal_global_37);
  }

  v3 = supportedLocationFields_supportedLocationFields;

  return v3;
}

void __50__PPConnectionsDuetSource_supportedLocationFields__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{&unk_284784620, &unk_284784638, &unk_284784650, &unk_284784668, &unk_284784680, &unk_284784698, &unk_2847846B0, &unk_2847846C8, &unk_2847846E0, 0}];
  objc_autoreleasePoolPop(v0);
  v2 = supportedLocationFields_supportedLocationFields;
  supportedLocationFields_supportedLocationFields = v1;
}

- (id)locationItemsWithCriteria:(id)a3 earliest:(id)a4 latest:(id)a5 limit:(unint64_t)a6 duetLimit:(int64_t)a7 consumer:(unint64_t)a8 richLocationItems:(BOOL)a9 resolveEKLocations:(BOOL)a10 explanationSet:(id)a11
{
  v164 = *MEMORY[0x277D85DE8];
  v137 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a11;
  v18 = objc_autoreleasePoolPush();
  v19 = objc_opt_new();
  v141 = self;
  v142 = v17;
  v20 = [(PPConnectionsDuetSource *)self duetLocationUserActivitiesWithLimit:a7 afterDate:v15 explanationSet:v17];
  v21 = v20;
  if (!v20)
  {
    v25 = pp_connections_log_handle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v123 = "PPConnectionsDuetSource: duetLocationUserActivitiesWithLimit timed out";
      v124 = v25;
      v125 = 2;
LABEL_105:
      _os_log_impl(&dword_23224A000, v124, OS_LOG_TYPE_DEFAULT, v123, buf, v125);
    }

LABEL_106:
    v122 = 0;
    goto LABEL_111;
  }

  if (![v20 count])
  {
    [v142 push:27];
    v25 = pp_connections_log_handle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v160 = v15;
      v123 = "PPConnectionsDuetSource: no activities found in Duet after date %@";
      v124 = v25;
      v125 = 12;
      goto LABEL_105;
    }

    goto LABEL_106;
  }

  v133 = v21;
  v22 = [(PPConnectionsDuetSource *)self supportedLocationFields];
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v137, "locationField")}];
  v24 = [v22 containsObject:v23];

  if (v24)
  {
    v134 = v19;
    v129 = v18;
    v130 = v16;
    v25 = [v137 bundleIdentifier];
    v131 = v15;
    v26 = v15;
    v148 = objc_opt_new();
    v27 = pp_connections_log_handle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v160 = [v133 count];
      _os_log_impl(&dword_23224A000, v27, OS_LOG_TYPE_DEFAULT, "PPConnectionsDuetSource: got %tu activities from Duet", buf, 0xCu);
    }

    v157 = 0u;
    v158 = 0u;
    v155 = 0u;
    v156 = 0u;
    obj = v133;
    v28 = [obj countByEnumeratingWithState:&v155 objects:v163 count:16];
    if (v28)
    {
      v30 = v28;
      v154 = *v156;
      v132 = *MEMORY[0x277D3A698];
      *&v29 = 138740227;
      v128 = v29;
      v136 = v26;
      do
      {
        v31 = 0;
        do
        {
          if (*v156 != v154)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v155 + 1) + 8 * v31);
          v33 = objc_autoreleasePoolPush();
          v34 = [v32 value];
          v35 = [v34 stringValue];

          v36 = pp_connections_log_handle();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            v37 = [v32 startDate];
            *buf = 138412546;
            v160 = v35;
            v161 = 2112;
            v162 = v37;
            _os_log_impl(&dword_23224A000, v36, OS_LOG_TYPE_DEFAULT, "PPConnectionsDuetSource: processing activity from bundle %@ at time %@", buf, 0x16u);
          }

          if (v25 && [v35 isEqualToString:v25])
          {
            v38 = pp_connections_log_handle();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v160 = v25;
              v39 = v38;
              v40 = "PPConnectionsDuetSource: skipping activity since it came from the requesting bundle (%@)";
              v41 = 12;
              goto LABEL_24;
            }

            goto LABEL_25;
          }

          v42 = [v32 value];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            v38 = pp_connections_log_handle();
            if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_25;
            }

            *buf = 0;
            v39 = v38;
            v40 = "PPConnectionsDuetSource: skipping activity since the value is not a _DKIdentifier";
            goto LABEL_23;
          }

          if ([v35 isEqualToString:@"unknown"])
          {
            v38 = pp_connections_log_handle();
            if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_25;
            }

LABEL_20:
            *buf = 0;
            v39 = v38;
            v40 = "PPConnectionsDuetSource: skipping activity since the bundleId is unknown";
LABEL_23:
            v41 = 2;
LABEL_24:
            _os_log_impl(&dword_23224A000, v39, OS_LOG_TYPE_DEFAULT, v40, buf, v41);
LABEL_25:

LABEL_26:
            objc_autoreleasePoolPop(v33);
            goto LABEL_27;
          }

          v44 = [v32 startDate];
          v45 = [v44 compare:v26];

          if (v45 == -1)
          {
            v48 = pp_connections_log_handle();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_23224A000, v48, OS_LOG_TYPE_DEFAULT, "PPConnectionsDuetSource: skipping activity since it is before the cutoff time", buf, 2u);
            }

            [v142 push:5];
            goto LABEL_26;
          }

          v46 = [v32 startDate];
          v47 = [v46 compare:v148];

          if (v47 == 1)
          {
            v38 = pp_connections_log_handle();
            if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_25;
            }

            goto LABEL_20;
          }

          v49 = [v32 metadata];
          v50 = [MEMORY[0x277CFE170] activityType];
          v151 = [v49 objectForKeyedSubscript:v50];

          v51 = [v32 metadata];
          v52 = [MEMORY[0x277CFE210] locationName];
          v152 = [v51 objectForKeyedSubscript:v52];

          v53 = [v32 metadata];
          v54 = [MEMORY[0x277CFE210] fullyFormattedAddress];
          v150 = [v53 objectForKeyedSubscript:v54];

          v55 = [v32 metadata];
          v56 = [MEMORY[0x277CFE210] thoroughfare];
          v149 = [v55 objectForKeyedSubscript:v56];

          v146 = [(PPConnectionsDuetSource *)v141 testMetadataForValidAddressAndNameWithEvent:v32];
          if (a10)
          {
            v57 = +[PPConnectionsUtils calendarUserActivityIdentifier];
            v58 = [v151 isEqualToString:v57];

            if (v58)
            {
              if (v152)
              {
                v59 = +[PPConnectionsCalendarSource sharedInstance];
                v60 = [v32 metadata];
                v61 = +[PPConnectionsUtils calendarUserActivityExternalIDKey];
                v62 = [v60 objectForKeyedSubscript:v61];
                v140 = v59;
                v63 = [v59 ekEventWithExternalID:v62];

                if (!v63)
                {
                  v77 = pp_connections_log_handle();
                  v26 = v136;
                  if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_23224A000, v77, OS_LOG_TYPE_DEFAULT, "PPConnectionsDuetSource: skipping activity since the calendar event could not be loaded", buf, 2u);
                  }

                  v78 = 3;
                  goto LABEL_92;
                }

                v64 = objc_alloc(MEMORY[0x277D3A390]);
                v65 = objc_opt_new();
                v66 = [v64 initWithEKEvent:v63 calendarInternPool:v65];

                if (!v66)
                {
                  v79 = pp_connections_log_handle();
                  if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    v80 = v79;
                    v81 = "PPConnectionsDuetSource: skipping activity since PPEvent conversion failed.";
                    goto LABEL_62;
                  }

LABEL_63:

                  v78 = 3;
                  v26 = v136;
                  v67 = v140;
                  goto LABEL_93;
                }

                if (([v140 isCalendarEventEligibleForLocationPrediction:v66] & 1) == 0)
                {
                  v79 = pp_connections_log_handle();
                  if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    v80 = v79;
                    v81 = "PPConnectionsDuetSource: skipping activity since the calendar event is not eligible for prediction";
LABEL_62:
                    _os_log_impl(&dword_23224A000, v80, OS_LOG_TYPE_DEFAULT, v81, buf, 2u);
                  }

                  goto LABEL_63;
                }

                v67 = [PPConnectionsCalendarSource locationNameFromEvent:v66];
                v147 = [PPConnectionsCalendarSource locationLabelFromEvent:v66];
                v68 = [PPConnectionsCalendarSource locationValueFromEvent:v66];

                v143 = 0;
                context = 0;
                v26 = v136;
LABEL_73:

                goto LABEL_74;
              }
            }
          }

          if (v146 && [(PPConnectionsDuetSource *)v141 isDuetEventAuthorized:v32 bundleID:v35])
          {
            v140 = [PPConnectionsAddressFormatter postalAddressFromDuetEvent:v32];
            v147 = PPCollapseWhitespaceAndStrip();
            if ([v137 locationField] != 1)
            {
              goto LABEL_66;
            }

            if (!v150)
            {
              goto LABEL_66;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_66;
            }

            v69 = objc_autoreleasePoolPush();
            v70 = [(PPConnectionsDuetSource *)v141 whitespaceAndNewlineCharacterSet];
            v71 = [v150 stringByTrimmingCharactersInSet:v70];

            objc_autoreleasePoolPop(v69);
            if ([v71 length])
            {
              if (v149)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  contexta = objc_autoreleasePoolPush();
                  v72 = [(PPConnectionsDuetSource *)v141 whitespaceAndNewlineCharacterSet];
                  v73 = [v149 stringByTrimmingCharactersInSet:v72];

                  objc_autoreleasePoolPop(contexta);
                  if ([v73 length])
                  {
                    v74 = [v150 containsString:v149];

                    if (v74)
                    {
                      v138 = PPCollapseWhitespaceAndStrip();
                      v75 = 0x27896F000;
                      v76 = v140;
LABEL_67:
                      context = [*(v75 + 1864) formattedAddressWithLocationField:objc_msgSend(v137 address:"locationField") duetEvent:v76 shortStyle:{v32, 1}];
                      if ([v35 isEqualToString:v132])
                      {
                        v82 = [v32 metadata];
                        v83 = [MEMORY[0x277CFE210] URL];
                        v84 = [v82 objectForKeyedSubscript:v83];
                        v63 = PPCollapseWhitespaceAndStrip();

                        if (v63)
                        {
                          v143 = [MEMORY[0x277CBEBC0] URLWithString:v63];
                        }

                        else
                        {
                          v143 = 0;
                        }

                        v67 = v147;
                        v26 = v136;
                        v68 = v138;
                        goto LABEL_73;
                      }

                      v143 = 0;
                      v67 = v147;
                      v26 = v136;
                      v68 = v138;
LABEL_74:

                      goto LABEL_75;
                    }

LABEL_66:
                    v75 = 0x27896F000uLL;
                    v76 = v140;
                    v138 = +[PPConnectionsAddressFormatter formattedAddressWithLocationField:address:duetEvent:shortStyle:](PPConnectionsAddressFormatter, "formattedAddressWithLocationField:address:duetEvent:shortStyle:", [v137 locationField], v140, v32, 0);
                    goto LABEL_67;
                  }
                }
              }
            }

            goto LABEL_66;
          }

          v143 = 0;
          context = 0;
          v68 = 0;
          v147 = 0;
          v67 = 0;
LABEL_75:
          if ([v68 length])
          {
            v139 = v68;
            if ([v67 length])
            {
              v85 = [objc_alloc(MEMORY[0x277D3A348]) initWithOriginatingBundleID:v35];
              v140 = v67;
              [v85 setName:v67];
              if (v147)
              {
                [v85 setLabel:?];
              }

              else
              {
                v89 = [v85 name];
                [v85 setLabel:v89];
              }

              [v85 setValue:v139];
              [v85 setShortValue:context];
              [v85 setOriginatingWebsiteURL:v143];
              [v85 setShouldAggregate:0];
              v90 = [v32 startDate];
              [v85 setCreatedAt:v90];

              v91 = [PPConnectionsMetricsTracker donationSourceFromBundleID:v35];
              [v85 setSource:v91];

              v92 = MEMORY[0x277CCABB0];
              v93 = +[PPConnectionsParameters sharedInstance];
              [v93 userActivityExpirySeconds];
              v94 = [v92 numberWithDouble:?];
              [v85 setLifetime:v94];

              if (a9 && v146)
              {
                [v85 setFullFormattedAddress:v150];
                v95 = [v32 metadata];
                v96 = [MEMORY[0x277CFE210] subThoroughfare];
                v97 = [v95 objectForKeyedSubscript:v96];
                [v85 setSubThoroughfare:v97];

                [v85 setThoroughfare:v149];
                v98 = [v32 metadata];
                v99 = [MEMORY[0x277CFE210] postalCode];
                v100 = [v98 objectForKeyedSubscript:v99];
                [v85 setPostalCode:v100];

                v101 = [v32 metadata];
                v102 = [MEMORY[0x277CFE210] city];
                v103 = [v101 objectForKeyedSubscript:v102];
                [v85 setLocality:v103];

                v104 = [v32 metadata];
                v105 = [MEMORY[0x277CFE210] stateOrProvince];
                v106 = [v104 objectForKeyedSubscript:v105];
                [v85 setAdministrativeArea:v106];

                v107 = [v32 metadata];
                v108 = [MEMORY[0x277CFE210] country];
                v109 = [v107 objectForKeyedSubscript:v108];
                [v85 setCountry:v109];

                v110 = [v32 metadata];
                v111 = [MEMORY[0x277CFE210] latitude];
                v112 = [v110 objectForKeyedSubscript:v111];
                [v85 setLatitude:v112];

                v113 = [v32 metadata];
                v114 = [MEMORY[0x277CFE210] longitude];
                v115 = [v113 objectForKeyedSubscript:v114];
                [v85 setLongitude:v115];
              }

              v116 = pp_connections_log_handle();
              if (os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG))
              {
                v118 = [v85 name];
                v119 = [v85 value];
                *buf = v128;
                v160 = v118;
                v161 = 2117;
                v162 = v119;
                _os_log_debug_impl(&dword_23224A000, v116, OS_LOG_TYPE_DEBUG, "PPConnectionsDuetSource: sourced connection: %{sensitive}@: %{sensitive}@", buf, 0x16u);
              }

              [v134 addObject:v85];
              v117 = [v134 count] == a6;

              v78 = 2 * v117;
              v26 = v136;
LABEL_92:
              v67 = v140;
              goto LABEL_93;
            }

            v88 = pp_connections_log_handle();
            if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_23224A000, v88, OS_LOG_TYPE_DEFAULT, "PPConnectionsDuetSource: ignoring location from Duet due to missing name", buf, 2u);
            }
          }

          else
          {
            v86 = v68;
            v87 = pp_connections_log_handle();
            if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_23224A000, v87, OS_LOG_TYPE_DEFAULT, "PPConnectionsDuetSource: ignoring location from Duet due to missing value", buf, 2u);
            }
          }

          v78 = 3;
LABEL_93:

          objc_autoreleasePoolPop(v33);
          if (v78 != 3 && v78)
          {
            goto LABEL_97;
          }

LABEL_27:
          ++v31;
        }

        while (v30 != v31);
        v120 = [obj countByEnumeratingWithState:&v155 objects:v163 count:16];
        v30 = v120;
      }

      while (v120);
    }

LABEL_97:

    v19 = v134;
    if ([v134 count])
    {
      v121 = v134;
    }

    else
    {
      v121 = 0;
    }

    v122 = v121;

    v16 = v130;
    v15 = v131;
    v18 = v129;
  }

  else
  {
    v25 = pp_connections_log_handle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v160) = [v137 locationField];
      _os_log_impl(&dword_23224A000, v25, OS_LOG_TYPE_DEFAULT, "PPConnectionsDuetSource: supportedLocationFields does not contain field %d", buf, 8u);
    }

    v122 = 0;
  }

  v21 = v133;
LABEL_111:

  objc_autoreleasePoolPop(v18);
  v126 = *MEMORY[0x277D85DE8];

  return v122;
}

+ (id)duetUserActivitiesFromStreams:(id)a3 limit:(unint64_t)a4 afterDate:(id)a5 explanationSet:(id)a6
{
  v44[2] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v27 = a6;
  context = objc_autoreleasePoolPush();
  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = [MEMORY[0x277CFE1E0] predicateForEventsWithStartDateAfter:v11];
  }

  else
  {
    v12 = [MEMORY[0x277CCAC30] predicateWithValue:1];
  }

  v13 = v12;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__19230;
  v42 = __Block_byref_object_dispose__19231;
  v43 = MEMORY[0x277CBEBF8];
  sel_getName(a2);
  v14 = os_transaction_create();
  v15 = MEMORY[0x277CFE1E0];
  v16 = [MEMORY[0x277CFE260] startDateSortDescriptorAscending:0];
  v44[0] = v16;
  v17 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"structuredMetadata._DKApplicationActivityMetadataKey__expirationDate" ascending:0];
  v44[1] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
  v19 = [v15 eventQueryWithPredicate:v13 eventStreams:v10 offset:0 limit:a4 sortDescriptors:v18];

  v20 = [MEMORY[0x277CFE1E0] allDevices];
  [v19 setDeviceIDs:v20];

  v21 = [MEMORY[0x277CFE208] knowledgeStore];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__19230;
  v36 = __Block_byref_object_dispose__19231;
  v37 = dispatch_semaphore_create(0);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __88__PPConnectionsDuetSource_duetUserActivitiesFromStreams_limit_afterDate_explanationSet___block_invoke;
  v28[3] = &unk_278976D00;
  v30 = &v38;
  v31 = &v32;
  v22 = v14;
  v29 = v22;
  [v21 executeQuery:v19 responseQueue:0 withCompletion:v28];
  if ([MEMORY[0x277D425A0] waitForSemaphore:v33[5] timeoutSeconds:60.0])
  {
    [v27 push:28];
    v23 = 0;
  }

  else
  {
    v23 = v39[5];
  }

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);

  objc_autoreleasePoolPop(context);
  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

void __88__PPConnectionsDuetSource_duetUserActivitiesFromStreams_limit_afterDate_explanationSet___block_invoke(void *a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pp_connections_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138739971;
    v13 = v5;
    _os_log_debug_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEBUG, "PPConnectionsDuetSource: duet query results: %{sensitive}@", &v12, 0xCu);
  }

  v8 = MEMORY[0x277CBEBF8];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v5;
    }
  }

  objc_storeStrong((*(a1[5] + 8) + 40), v8);
  if (v6)
  {
    +[PPQuickTypeMetrics frameworkError:errorCode:](PPQuickTypeMetrics, "frameworkError:errorCode:", @"CD", [v6 code]);
  }

  dispatch_semaphore_signal(*(*(a1[6] + 8) + 40));
  v9 = a1[4];
  v10 = objc_opt_self();

  v11 = *MEMORY[0x277D85DE8];
}

+ (PPConnectionsDuetSource)sharedInstance
{
  if (sharedInstance_once_19242 != -1)
  {
    dispatch_once(&sharedInstance_once_19242, &__block_literal_global_19243);
  }

  v3 = sharedInstance_shared_19244;

  return v3;
}

uint64_t __41__PPConnectionsDuetSource_sharedInstance__block_invoke()
{
  sharedInstance_shared_19244 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

@end