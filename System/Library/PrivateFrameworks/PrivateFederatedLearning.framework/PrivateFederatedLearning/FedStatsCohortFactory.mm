@interface FedStatsCohortFactory
+ (id)cohortQueryFieldByName:(id)name;
+ (id)sharedInstance;
- (FedStatsCohortFactory)init;
@end

@implementation FedStatsCohortFactory

- (FedStatsCohortFactory)init
{
  v75[66] = *MEMORY[0x277D85DE8];
  v73.receiver = self;
  v73.super_class = FedStatsCohortFactory;
  result = [(FedStatsCohortFactory *)&v73 init];
  if (result)
  {
    v74[0] = @"locale";
    v72 = result;
    v71 = +[FedStatsCohortQueryLocale cohortInstance];
    v75[0] = v71;
    v74[1] = @"deviceType";
    v70 = +[FedStatsCohortQueryDeviceType cohortInstance];
    v75[1] = v70;
    v74[2] = @"bitsOfURL";
    v69 = [FedStatsCohortQueryURLBits cohortQueryFieldWithKey:?];
    v75[2] = v69;
    v74[3] = @"bundleID";
    v68 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[3] = v68;
    v74[4] = @"sessionType";
    v67 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[4] = v67;
    v74[5] = @"sessionState";
    v66 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[5] = v66;
    v74[6] = @"supportsBackgrounding";
    v65 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[6] = v65;
    v74[7] = @"supportsStateRestoration";
    v64 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[7] = v64;
    v74[8] = @"eventName";
    v63 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[8] = v63;
    v74[9] = @"measure";
    v62 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[9] = v62;
    v74[10] = @"extra";
    v61 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[10] = v61;
    v74[11] = @"issuer";
    v60 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[11] = v60;
    v74[12] = @"dayOfWeek";
    v59 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[12] = v59;
    v74[13] = @"hourOfDay";
    v58 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[13] = v58;
    v74[14] = @"geohash";
    v57 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[14] = v57;
    v74[15] = @"country";
    v56 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[15] = v56;
    v74[16] = @"timeZone";
    v55 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[16] = v55;
    v74[17] = @"interfaceType";
    v54 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[17] = v54;
    v74[18] = @"radioType";
    v53 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[18] = v53;
    v74[19] = @"radioBand";
    v52 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[19] = v52;
    v74[20] = @"addressFamily";
    v51 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[20] = v51;
    v74[21] = @"lang";
    v50 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[21] = v50;
    v74[22] = @"platform";
    v49 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[22] = v49;
    v74[23] = @"performanceEvent";
    v48 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[23] = v48;
    v74[24] = @"signal";
    v47 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[24] = v47;
    v74[25] = @"userAgent";
    v46 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[25] = v46;
    v74[26] = @"countryCode";
    v45 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[26] = v45;
    v74[27] = @"error";
    v44 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[27] = v44;
    v74[28] = @"localeIdentifier";
    v43 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[28] = v43;
    v74[29] = @"contentType";
    v42 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[29] = v42;
    v74[30] = @"ageGroup";
    v41 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[30] = v41;
    v74[31] = @"eventDirection";
    v40 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[31] = v40;
    v74[32] = @"isNativeArchitecture";
    v39 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[32] = v39;
    v74[33] = @"dyldPlatform";
    v38 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[33] = v38;
    v74[34] = @"type";
    v37 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[34] = v37;
    v74[35] = @"numOfMediaApps";
    v36 = +[FedStatsCohortQueryInstalledAppsMedia cohortInstance];
    v75[35] = v36;
    v74[36] = @"numOfPhoneApps";
    v35 = +[FedStatsCohortQueryInstalledAppsPhone cohortInstance];
    v75[36] = v35;
    v74[37] = @"screenDistance";
    v34 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[37] = v34;
    v74[38] = @"action";
    v33 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[38] = v33;
    v74[39] = @"gestureAssessment";
    v32 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[39] = v32;
    v74[40] = @"livenessAssessment";
    v31 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[40] = v31;
    v74[41] = @"passiveGestureAssessment";
    v30 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[41] = v30;
    v74[42] = @"passiveLivenessAssessment";
    v29 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[42] = v29;
    v74[43] = @"property";
    v28 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[43] = v28;
    v74[44] = @"accessedPropertyDirectly";
    v27 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[44] = v27;
    v74[45] = @"suggestionType";
    v26 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[45] = v26;
    v74[46] = @"footprint";
    v25 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[46] = v25;
    v74[47] = @"pageCount";
    v24 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[47] = v24;
    v74[48] = @"protocol";
    v23 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[48] = v23;
    v74[49] = @"MCC";
    v22 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[49] = v22;
    v74[50] = @"MNC";
    v21 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[50] = v21;
    v74[51] = @"matchedEmNumSource";
    v20 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[51] = v20;
    v74[52] = @"sip380Procedure";
    v19 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[52] = v19;
    v74[53] = @"sip380RedirectedURN";
    v18 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[53] = v18;
    v74[54] = @"category";
    v17 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[54] = v17;
    v74[55] = @"previous";
    v16 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[55] = v16;
    v74[56] = @"scope";
    v3 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[56] = v3;
    v74[57] = @"language";
    v4 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[57] = v4;
    v74[58] = @"memoryGenerated";
    v5 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[58] = v5;
    v74[59] = @"memoryShared";
    v6 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[59] = v6;
    v74[60] = @"memoryWatched";
    v7 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[60] = v7;
    v74[61] = @"focusRegionType";
    v8 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[61] = v8;
    v74[62] = @"styleSelectionType";
    v9 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[62] = v9;
    v74[63] = @"userLibraryAgeInDays";
    v10 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[63] = v10;
    v74[64] = @"cardShownOrEngaged";
    v11 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[64] = v11;
    v74[65] = @"portType";
    v12 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v75[65] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:v74 count:66];
    cohortObjects = v72->_cohortObjects;
    v72->_cohortObjects = v13;

    result = v72;
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__FedStatsCohortFactory_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

uint64_t __39__FedStatsCohortFactory_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedInstance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

+ (id)cohortQueryFieldByName:(id)name
{
  nameCopy = name;
  v4 = +[FedStatsCohortFactory sharedInstance];
  cohortObjects = [v4 cohortObjects];
  v6 = [cohortObjects objectForKey:nameCopy];

  return v6;
}

@end