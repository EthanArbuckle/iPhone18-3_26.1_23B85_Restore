@interface PPConnectionsDuetSource
+ (PPConnectionsDuetSource)sharedInstance;
+ (id)duetUserActivitiesFromStreams:(id)streams limit:(unint64_t)limit afterDate:(id)date explanationSet:(id)set;
- (BOOL)isDuetEventAuthorized:(id)authorized bundleID:(id)d;
- (BOOL)testMetadataForValidAddressAndNameWithEvent:(id)event;
- (id)duetLocationUserActivitiesWithLimit:(unint64_t)limit afterDate:(id)date explanationSet:(id)set;
- (id)locationItemsWithCriteria:(id)criteria earliest:(id)earliest latest:(id)latest limit:(unint64_t)limit duetLimit:(int64_t)duetLimit consumer:(unint64_t)consumer richLocationItems:(BOOL)items resolveEKLocations:(BOOL)self0 explanationSet:(id)self1;
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

- (id)duetLocationUserActivitiesWithLimit:(unint64_t)limit afterDate:(id)date explanationSet:(id)set
{
  v18[1] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CFE298];
  setCopy = set;
  dateCopy = date;
  appLocationActivityStream = [v7 appLocationActivityStream];
  v18[0] = appLocationActivityStream;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v12 = +[PPConnectionsParameters sharedInstance];
  userActivityBatchSize = [v12 userActivityBatchSize];

  if (userActivityBatchSize <= limit)
  {
    limitCopy = limit;
  }

  else
  {
    limitCopy = userActivityBatchSize;
  }

  v15 = [PPConnectionsDuetSource duetUserActivitiesFromStreams:v11 limit:limitCopy afterDate:dateCopy explanationSet:setCopy];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (BOOL)isDuetEventAuthorized:(id)authorized bundleID:(id)d
{
  authorizedCopy = authorized;
  dCopy = d;
  v7 = [dCopy isEqualToString:*MEMORY[0x277D3A698]];
  v8 = objc_autoreleasePoolPush();
  if (v7)
  {
    metadata = [authorizedCopy metadata];
    v10 = [MEMORY[0x277CFE210] URL];
    v11 = [metadata objectForKeyedSubscript:v10];
    lowercaseString2 = PPCollapseWhitespaceAndStrip();

    v13 = [MEMORY[0x277CBEBC0] URLWithString:lowercaseString2];
    host = [v13 host];
    lowercaseString = [host lowercaseString];

    v16 = +[PPConnectionsParameters sharedInstance];
    LODWORD(host) = [v16 shouldUseAllowedWebsite];

    if (host)
    {
      if (!lowercaseString || (+[PPConnectionsParameters sharedInstance](PPConnectionsParameters, "sharedInstance"), v17 = objc_claimAutoreleasedReturnValue(), [v17 donationAllowedWebsites], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "containsObject:", lowercaseString), v18, v17, (v19 & 1) == 0))
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

    else if (lowercaseString)
    {
      v30 = +[PPConnectionsParameters sharedInstance];
      donationBlockedWebsites = [v30 donationBlockedWebsites];
      v32 = [donationBlockedWebsites containsObject:lowercaseString];

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

  lowercaseString2 = [dCopy lowercaseString];
  v23 = +[PPConnectionsParameters sharedInstance];
  shouldUseAllowedApps = [v23 shouldUseAllowedApps];

  if (!shouldUseAllowedApps)
  {
    if (!dCopy)
    {
      goto LABEL_25;
    }

    v33 = +[PPConnectionsParameters sharedInstance];
    donationBlockedApps = [v33 donationBlockedApps];
    v35 = [donationBlockedApps containsObject:lowercaseString2];

    if (!v35)
    {
      goto LABEL_25;
    }

    lowercaseString = pp_connections_log_handle();
    if (!os_log_type_enabled(lowercaseString, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v38 = 0;
    v28 = "PPConnectionsDuetSource: app is blocked";
    v29 = &v38;
LABEL_22:
    _os_log_impl(&dword_23224A000, lowercaseString, OS_LOG_TYPE_DEFAULT, v28, v29, 2u);
    goto LABEL_23;
  }

  if (dCopy)
  {
    v25 = +[PPConnectionsParameters sharedInstance];
    donationAllowedApps = [v25 donationAllowedApps];
    v27 = [donationAllowedApps containsObject:lowercaseString2];

    if (v27)
    {
      goto LABEL_25;
    }
  }

  lowercaseString = pp_connections_log_handle();
  if (os_log_type_enabled(lowercaseString, OS_LOG_TYPE_DEFAULT))
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

- (BOOL)testMetadataForValidAddressAndNameWithEvent:(id)event
{
  eventCopy = event;
  metadata = [eventCopy metadata];
  thoroughfare = [MEMORY[0x277CFE210] thoroughfare];
  v173 = metadata;
  v9 = [metadata objectForKeyedSubscript:?];
  if (!v9)
  {
    goto LABEL_8;
  }

  metadata2 = [eventCopy metadata];
  [MEMORY[0x277CFE210] thoroughfare];
  v164 = v163 = metadata2;
  metadata7 = [metadata2 objectForKeyedSubscript:?];
  objc_opt_class();
  v165 = metadata7;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_8:
    v171 = 0;
    selfCopy2 = 0;
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
  metadata3 = [eventCopy metadata];
  thoroughfare2 = [MEMORY[0x277CFE210] thoroughfare];
  metadata16 = [metadata3 objectForKeyedSubscript:thoroughfare2];
  whitespaceAndNewlineCharacterSet = [(PPConnectionsDuetSource *)self whitespaceAndNewlineCharacterSet];
  metadata28 = [metadata16 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  objc_autoreleasePoolPop(v11);
  metadata7 = metadata28;

  v160 = metadata7;
  if (![metadata7 length])
  {
    v171 = 0;
    v169[40] = 0;
    selfCopy2 = 0;
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

  metadata4 = [eventCopy metadata];
  [MEMORY[0x277CFE210] city];
  v158 = v159 = metadata4;
  v16 = [metadata4 objectForKeyedSubscript:?];
  HIDWORD(v171) = v16 != 0;
  v157 = v16;
  if (v16)
  {
    metadata5 = [eventCopy metadata];
    [MEMORY[0x277CFE210] city];
    v153 = v154 = metadata5;
    v18 = [metadata5 objectForKeyedSubscript:?];
    v19 = 0x277CCA000uLL;
    objc_opt_class();
    v152 = v18;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      metadata28 = 0;
      goto LABEL_83;
    }

    v20 = objc_autoreleasePoolPush();
    metadata6 = [eventCopy metadata];
    city = [MEMORY[0x277CFE210] city];
    metadata16 = [metadata6 objectForKeyedSubscript:city];
    whitespaceAndNewlineCharacterSet2 = [(PPConnectionsDuetSource *)self whitespaceAndNewlineCharacterSet];
    v24 = [metadata16 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet2];

    objc_autoreleasePoolPop(v20);
    v25 = v24;

    v146 = v25;
    metadata28 = 1;
    if ([v25 length])
    {
      self = 0;
      goto LABEL_87;
    }
  }

  else
  {
    metadata28 = 0;
  }

  v19 = 0x277CCA000;
LABEL_83:
  metadata7 = [eventCopy metadata];
  [MEMORY[0x277CFE210] postalCode];
  v155 = v156 = metadata7;
  v37 = [metadata7 objectForKeyedSubscript:?];
  if (!v37)
  {
    LODWORD(v171) = metadata28;
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
    selfCopy2 = 1;
    goto LABEL_9;
  }

  v162 = v37;
  metadata8 = [eventCopy metadata];
  [MEMORY[0x277CFE210] postalCode];
  v150 = v151 = metadata8;
  metadata7 = [metadata8 objectForKeyedSubscript:?];
  v39 = *(v19 + 3240);
  objc_opt_class();
  v149 = metadata7;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    LODWORD(v171) = metadata28;
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
    selfCopy2 = 1;
    *&v169[28] = 1;
    goto LABEL_9;
  }

  metadata7 = objc_autoreleasePoolPush();
  metadata9 = [eventCopy metadata];
  postalCode = [MEMORY[0x277CFE210] postalCode];
  metadata16 = [metadata9 objectForKeyedSubscript:postalCode];
  whitespaceAndNewlineCharacterSet3 = [(PPConnectionsDuetSource *)self whitespaceAndNewlineCharacterSet];
  v43 = [metadata16 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet3];

  objc_autoreleasePoolPop(metadata7);
  self = v43;

  selfCopy = self;
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
    selfCopy2 = 1;
    LODWORD(v171) = metadata28;
    *&v169[24] = 0x100000001;
    goto LABEL_9;
  }

  self = 1;
LABEL_87:
  metadata7 = [eventCopy metadata];
  [MEMORY[0x277CFE210] thoroughfare];
  v147 = v148 = metadata7;
  v44 = [metadata7 objectForKeyedSubscript:?];
  selfCopy2 = self;
  LODWORD(v171) = metadata28;
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
  metadata10 = [eventCopy metadata];
  [MEMORY[0x277CFE210] thoroughfare];
  v143 = v144 = metadata10;
  metadata7 = [metadata10 objectForKeyedSubscript:?];
  objc_opt_class();
  v142 = metadata7;
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

  metadata11 = [eventCopy metadata];
  locationName = [MEMORY[0x277CFE210] locationName];
  v47 = [metadata11 objectForKeyedSubscript:?];
  metadata7 = v47 != 0;
  v139 = v47;
  v141 = metadata11;
  if (v47)
  {
    metadata12 = [eventCopy metadata];
    locationName2 = [MEMORY[0x277CFE210] locationName];
    v138 = metadata12;
    v49 = [metadata12 objectForKeyedSubscript:?];
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

    metadata13 = [eventCopy metadata];
    locationName3 = [MEMORY[0x277CFE210] locationName];
    v129 = metadata13;
    v127 = [metadata13 objectForKeyedSubscript:?];
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

    LODWORD(v174[3]) = metadata7;
  }

  else
  {
    LODWORD(v174[3]) = 0;
  }

  metadata14 = [eventCopy metadata];
  subThoroughfare = [MEMORY[0x277CFE210] subThoroughfare];
  v135 = metadata14;
  v52 = [metadata14 objectForKeyedSubscript:?];
  metadata7 = v52 != 0;
  v133 = v52;
  if (v52)
  {
    metadata15 = [eventCopy metadata];
    subThoroughfare2 = [MEMORY[0x277CFE210] subThoroughfare];
    v132 = metadata15;
    metadata16 = [metadata15 objectForKeyedSubscript:?];
    objc_opt_class();
    v130 = metadata16;
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

    metadata16 = [eventCopy metadata];
    subThoroughfare3 = [MEMORY[0x277CFE210] subThoroughfare];
    v120 = metadata16;
    v118 = [metadata16 objectForKeyedSubscript:?];
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

  metadata17 = [eventCopy metadata];
  thoroughfare3 = [MEMORY[0x277CFE210] thoroughfare];
  v126 = metadata17;
  v55 = [metadata17 objectForKeyedSubscript:?];
  metadata16 = v55 != 0;
  v124 = v55;
  LODWORD(v174[0]) = metadata7;
  if (v55)
  {
    metadata18 = [eventCopy metadata];
    thoroughfare4 = [MEMORY[0x277CFE210] thoroughfare];
    v123 = metadata18;
    v57 = [metadata18 objectForKeyedSubscript:?];
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
      *&v167[8] = metadata7;
      v28 = 0;
      *&v169[8] = 0x100000001;
      HIDWORD(v174[2]) = 1;
      goto LABEL_9;
    }

    metadata19 = [eventCopy metadata];
    thoroughfare5 = [MEMORY[0x277CFE210] thoroughfare];
    v111 = metadata19;
    v109 = [metadata19 objectForKeyedSubscript:?];
    v59 = metadata7;
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
      *&v167[8] = metadata7;
      v28 = 0;
      *&v169[8] = 1;
      HIDWORD(v174[2]) = 1;
      *&v166[8] = 1;
      goto LABEL_9;
    }
  }

  else
  {
    v59 = metadata7;
  }

  metadata20 = [eventCopy metadata];
  postalCode2 = [MEMORY[0x277CFE210] postalCode];
  v117 = metadata20;
  v61 = [metadata20 objectForKeyedSubscript:?];
  metadata7 = v61 != 0;
  v115 = v61;
  HIDWORD(v174[2]) = metadata16;
  if (v61)
  {
    metadata21 = [eventCopy metadata];
    postalCode3 = [MEMORY[0x277CFE210] postalCode];
    v114 = metadata21;
    v63 = [metadata21 objectForKeyedSubscript:?];
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
      *&v166[8] = metadata16;
      HIDWORD(v174[1]) = 1;
      goto LABEL_9;
    }

    metadata22 = [eventCopy metadata];
    postalCode4 = [MEMORY[0x277CFE210] postalCode];
    v102 = metadata22;
    v100 = [metadata22 objectForKeyedSubscript:?];
    if ([v100 length] > 0x12B)
    {
      *v167 = 0;
      LODWORD(v174[2]) = 0;
      *&v166[8] = metadata16;
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

  metadata23 = [eventCopy metadata];
  city2 = [MEMORY[0x277CFE210] city];
  v66 = [metadata23 objectForKeyedSubscript:?];
  LODWORD(v174[2]) = v66 != 0;
  v106 = v66;
  HIDWORD(v174[1]) = metadata7;
  v108 = metadata23;
  if (v66)
  {
    metadata24 = [eventCopy metadata];
    city3 = [MEMORY[0x277CFE210] city];
    v105 = metadata24;
    metadata16 = [metadata24 objectForKeyedSubscript:?];
    objc_opt_class();
    v103 = metadata16;
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
      *v166 = metadata7;
      LODWORD(v174[2]) = 1;
      goto LABEL_9;
    }

    metadata16 = [eventCopy metadata];
    city4 = [MEMORY[0x277CFE210] city];
    v93 = metadata16;
    v91 = [metadata16 objectForKeyedSubscript:?];
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
      *v166 = metadata7;
      LODWORD(v174[2]) = 1;
      *&v166[4] = 1;
      goto LABEL_9;
    }
  }

  metadata25 = [eventCopy metadata];
  stateOrProvince = [MEMORY[0x277CFE210] stateOrProvince];
  v69 = [metadata25 objectForKeyedSubscript:?];
  LODWORD(v174[1]) = v69 != 0;
  v97 = v69;
  v99 = metadata25;
  if (v69)
  {
    metadata26 = [eventCopy metadata];
    stateOrProvince2 = [MEMORY[0x277CFE210] stateOrProvince];
    v96 = metadata26;
    metadata16 = [metadata26 objectForKeyedSubscript:?];
    objc_opt_class();
    v94 = metadata16;
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
      *v166 = metadata7;
      *&v166[4] = v174[2];
      v168 = 0x100000001;
      LODWORD(v174[1]) = 1;
      goto LABEL_9;
    }

    metadata16 = [eventCopy metadata];
    stateOrProvince3 = [MEMORY[0x277CFE210] stateOrProvince];
    v83 = metadata16;
    v81 = [metadata16 objectForKeyedSubscript:?];
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
      *v166 = metadata7;
      *&v166[4] = v174[2];
      v168 = 0x100000001;
      LODWORD(v174[1]) = 1;
      *v167 = 0x100000001;
      goto LABEL_9;
    }
  }

  metadata7 = [eventCopy metadata];
  country = [MEMORY[0x277CFE210] country];
  v90 = metadata7;
  v71 = [metadata7 objectForKeyedSubscript:?];
  HIDWORD(v174[0]) = v71 != 0;
  v88 = v71;
  if (v71)
  {
    metadata27 = [eventCopy metadata];
    country2 = [MEMORY[0x277CFE210] country];
    v86 = metadata27;
    metadata16 = [metadata27 objectForKeyedSubscript:?];
    objc_opt_class();
    v84 = metadata16;
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

    metadata7 = [eventCopy metadata];
    country3 = [MEMORY[0x277CFE210] country];
    v76 = metadata7;
    v74 = [metadata7 objectForKeyedSubscript:?];
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

  metadata7 = HIDWORD(v174[1]);
  metadata16 = [eventCopy metadata];
  displayName = [MEMORY[0x277CFE210] displayName];
  v80 = metadata16;
  v87 = [metadata16 objectForKeyedSubscript:?];
  if (v87)
  {
    metadata7 = [eventCopy metadata];
    displayName2 = [MEMORY[0x277CFE210] displayName];
    v78 = metadata7;
    metadata16 = [metadata7 objectForKeyedSubscript:?];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      metadata28 = [eventCopy metadata];
      metadata7 = [MEMORY[0x277CFE210] displayName];
      [metadata28 objectForKeyedSubscript:metadata7];
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

  if (selfCopy2)
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

- (id)locationItemsWithCriteria:(id)criteria earliest:(id)earliest latest:(id)latest limit:(unint64_t)limit duetLimit:(int64_t)duetLimit consumer:(unint64_t)consumer richLocationItems:(BOOL)items resolveEKLocations:(BOOL)self0 explanationSet:(id)self1
{
  v164 = *MEMORY[0x277D85DE8];
  criteriaCopy = criteria;
  earliestCopy = earliest;
  latestCopy = latest;
  setCopy = set;
  v18 = objc_autoreleasePoolPush();
  v19 = objc_opt_new();
  selfCopy = self;
  v142 = setCopy;
  v20 = [(PPConnectionsDuetSource *)self duetLocationUserActivitiesWithLimit:duetLimit afterDate:earliestCopy explanationSet:setCopy];
  v21 = v20;
  if (!v20)
  {
    bundleIdentifier = pp_connections_log_handle();
    if (os_log_type_enabled(bundleIdentifier, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v123 = "PPConnectionsDuetSource: duetLocationUserActivitiesWithLimit timed out";
      v124 = bundleIdentifier;
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
    bundleIdentifier = pp_connections_log_handle();
    if (os_log_type_enabled(bundleIdentifier, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v160 = earliestCopy;
      v123 = "PPConnectionsDuetSource: no activities found in Duet after date %@";
      v124 = bundleIdentifier;
      v125 = 12;
      goto LABEL_105;
    }

    goto LABEL_106;
  }

  v133 = v21;
  supportedLocationFields = [(PPConnectionsDuetSource *)self supportedLocationFields];
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(criteriaCopy, "locationField")}];
  v24 = [supportedLocationFields containsObject:v23];

  if (v24)
  {
    v134 = v19;
    v129 = v18;
    v130 = latestCopy;
    bundleIdentifier = [criteriaCopy bundleIdentifier];
    v131 = earliestCopy;
    v26 = earliestCopy;
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
          value = [v32 value];
          stringValue = [value stringValue];

          v36 = pp_connections_log_handle();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            startDate = [v32 startDate];
            *buf = 138412546;
            v160 = stringValue;
            v161 = 2112;
            v162 = startDate;
            _os_log_impl(&dword_23224A000, v36, OS_LOG_TYPE_DEFAULT, "PPConnectionsDuetSource: processing activity from bundle %@ at time %@", buf, 0x16u);
          }

          if (bundleIdentifier && [stringValue isEqualToString:bundleIdentifier])
          {
            v38 = pp_connections_log_handle();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v160 = bundleIdentifier;
              v39 = v38;
              v40 = "PPConnectionsDuetSource: skipping activity since it came from the requesting bundle (%@)";
              v41 = 12;
              goto LABEL_24;
            }

            goto LABEL_25;
          }

          value2 = [v32 value];
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

          if ([stringValue isEqualToString:@"unknown"])
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

          startDate2 = [v32 startDate];
          v45 = [startDate2 compare:v26];

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

          startDate3 = [v32 startDate];
          v47 = [startDate3 compare:v148];

          if (v47 == 1)
          {
            v38 = pp_connections_log_handle();
            if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_25;
            }

            goto LABEL_20;
          }

          metadata = [v32 metadata];
          activityType = [MEMORY[0x277CFE170] activityType];
          v151 = [metadata objectForKeyedSubscript:activityType];

          metadata2 = [v32 metadata];
          locationName = [MEMORY[0x277CFE210] locationName];
          v152 = [metadata2 objectForKeyedSubscript:locationName];

          metadata3 = [v32 metadata];
          fullyFormattedAddress = [MEMORY[0x277CFE210] fullyFormattedAddress];
          v150 = [metadata3 objectForKeyedSubscript:fullyFormattedAddress];

          metadata4 = [v32 metadata];
          thoroughfare = [MEMORY[0x277CFE210] thoroughfare];
          v149 = [metadata4 objectForKeyedSubscript:thoroughfare];

          v146 = [(PPConnectionsDuetSource *)selfCopy testMetadataForValidAddressAndNameWithEvent:v32];
          if (locations)
          {
            v57 = +[PPConnectionsUtils calendarUserActivityIdentifier];
            v58 = [v151 isEqualToString:v57];

            if (v58)
            {
              if (v152)
              {
                v59 = +[PPConnectionsCalendarSource sharedInstance];
                metadata5 = [v32 metadata];
                v61 = +[PPConnectionsUtils calendarUserActivityExternalIDKey];
                v62 = [metadata5 objectForKeyedSubscript:v61];
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

          if (v146 && [(PPConnectionsDuetSource *)selfCopy isDuetEventAuthorized:v32 bundleID:stringValue])
          {
            v140 = [PPConnectionsAddressFormatter postalAddressFromDuetEvent:v32];
            v147 = PPCollapseWhitespaceAndStrip();
            if ([criteriaCopy locationField] != 1)
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
            whitespaceAndNewlineCharacterSet = [(PPConnectionsDuetSource *)selfCopy whitespaceAndNewlineCharacterSet];
            v71 = [v150 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

            objc_autoreleasePoolPop(v69);
            if ([v71 length])
            {
              if (v149)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  contexta = objc_autoreleasePoolPush();
                  whitespaceAndNewlineCharacterSet2 = [(PPConnectionsDuetSource *)selfCopy whitespaceAndNewlineCharacterSet];
                  v73 = [v149 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet2];

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
                      context = [*(v75 + 1864) formattedAddressWithLocationField:objc_msgSend(criteriaCopy address:"locationField") duetEvent:v76 shortStyle:{v32, 1}];
                      if ([stringValue isEqualToString:v132])
                      {
                        metadata6 = [v32 metadata];
                        v83 = [MEMORY[0x277CFE210] URL];
                        v84 = [metadata6 objectForKeyedSubscript:v83];
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
                    v138 = +[PPConnectionsAddressFormatter formattedAddressWithLocationField:address:duetEvent:shortStyle:](PPConnectionsAddressFormatter, "formattedAddressWithLocationField:address:duetEvent:shortStyle:", [criteriaCopy locationField], v140, v32, 0);
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
              v85 = [objc_alloc(MEMORY[0x277D3A348]) initWithOriginatingBundleID:stringValue];
              v140 = v67;
              [v85 setName:v67];
              if (v147)
              {
                [v85 setLabel:?];
              }

              else
              {
                name = [v85 name];
                [v85 setLabel:name];
              }

              [v85 setValue:v139];
              [v85 setShortValue:context];
              [v85 setOriginatingWebsiteURL:v143];
              [v85 setShouldAggregate:0];
              startDate4 = [v32 startDate];
              [v85 setCreatedAt:startDate4];

              v91 = [PPConnectionsMetricsTracker donationSourceFromBundleID:stringValue];
              [v85 setSource:v91];

              v92 = MEMORY[0x277CCABB0];
              v93 = +[PPConnectionsParameters sharedInstance];
              [v93 userActivityExpirySeconds];
              v94 = [v92 numberWithDouble:?];
              [v85 setLifetime:v94];

              if (items && v146)
              {
                [v85 setFullFormattedAddress:v150];
                metadata7 = [v32 metadata];
                subThoroughfare = [MEMORY[0x277CFE210] subThoroughfare];
                v97 = [metadata7 objectForKeyedSubscript:subThoroughfare];
                [v85 setSubThoroughfare:v97];

                [v85 setThoroughfare:v149];
                metadata8 = [v32 metadata];
                postalCode = [MEMORY[0x277CFE210] postalCode];
                v100 = [metadata8 objectForKeyedSubscript:postalCode];
                [v85 setPostalCode:v100];

                metadata9 = [v32 metadata];
                city = [MEMORY[0x277CFE210] city];
                v103 = [metadata9 objectForKeyedSubscript:city];
                [v85 setLocality:v103];

                metadata10 = [v32 metadata];
                stateOrProvince = [MEMORY[0x277CFE210] stateOrProvince];
                v106 = [metadata10 objectForKeyedSubscript:stateOrProvince];
                [v85 setAdministrativeArea:v106];

                metadata11 = [v32 metadata];
                country = [MEMORY[0x277CFE210] country];
                v109 = [metadata11 objectForKeyedSubscript:country];
                [v85 setCountry:v109];

                metadata12 = [v32 metadata];
                latitude = [MEMORY[0x277CFE210] latitude];
                v112 = [metadata12 objectForKeyedSubscript:latitude];
                [v85 setLatitude:v112];

                metadata13 = [v32 metadata];
                longitude = [MEMORY[0x277CFE210] longitude];
                v115 = [metadata13 objectForKeyedSubscript:longitude];
                [v85 setLongitude:v115];
              }

              v116 = pp_connections_log_handle();
              if (os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG))
              {
                name2 = [v85 name];
                value3 = [v85 value];
                *buf = v128;
                v160 = name2;
                v161 = 2117;
                v162 = value3;
                _os_log_debug_impl(&dword_23224A000, v116, OS_LOG_TYPE_DEBUG, "PPConnectionsDuetSource: sourced connection: %{sensitive}@: %{sensitive}@", buf, 0x16u);
              }

              [v134 addObject:v85];
              v117 = [v134 count] == limit;

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

    latestCopy = v130;
    earliestCopy = v131;
    v18 = v129;
  }

  else
  {
    bundleIdentifier = pp_connections_log_handle();
    if (os_log_type_enabled(bundleIdentifier, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v160) = [criteriaCopy locationField];
      _os_log_impl(&dword_23224A000, bundleIdentifier, OS_LOG_TYPE_DEFAULT, "PPConnectionsDuetSource: supportedLocationFields does not contain field %d", buf, 8u);
    }

    v122 = 0;
  }

  v21 = v133;
LABEL_111:

  objc_autoreleasePoolPop(v18);
  v126 = *MEMORY[0x277D85DE8];

  return v122;
}

+ (id)duetUserActivitiesFromStreams:(id)streams limit:(unint64_t)limit afterDate:(id)date explanationSet:(id)set
{
  v44[2] = *MEMORY[0x277D85DE8];
  streamsCopy = streams;
  dateCopy = date;
  setCopy = set;
  context = objc_autoreleasePoolPush();
  if (dateCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = [MEMORY[0x277CFE1E0] predicateForEventsWithStartDateAfter:dateCopy];
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
  v19 = [v15 eventQueryWithPredicate:v13 eventStreams:streamsCopy offset:0 limit:limit sortDescriptors:v18];

  allDevices = [MEMORY[0x277CFE1E0] allDevices];
  [v19 setDeviceIDs:allDevices];

  knowledgeStore = [MEMORY[0x277CFE208] knowledgeStore];
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
  [knowledgeStore executeQuery:v19 responseQueue:0 withCompletion:v28];
  if ([MEMORY[0x277D425A0] waitForSemaphore:v33[5] timeoutSeconds:60.0])
  {
    [setCopy push:28];
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