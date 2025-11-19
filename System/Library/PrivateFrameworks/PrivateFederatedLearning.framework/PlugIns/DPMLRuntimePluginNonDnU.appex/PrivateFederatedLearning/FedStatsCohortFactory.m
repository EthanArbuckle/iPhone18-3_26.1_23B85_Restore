@interface FedStatsCohortFactory
+ (id)cohortQueryFieldByName:(id)a3;
+ (id)sharedInstance;
- (FedStatsCohortFactory)init;
@end

@implementation FedStatsCohortFactory

- (FedStatsCohortFactory)init
{
  v72.receiver = self;
  v72.super_class = FedStatsCohortFactory;
  result = [(FedStatsCohortFactory *)&v72 init];
  if (result)
  {
    v73[0] = @"locale";
    v71 = result;
    v70 = +[FedStatsCohortQueryLocale cohortInstance];
    v74[0] = v70;
    v73[1] = @"deviceType";
    v69 = +[FedStatsCohortQueryDeviceType cohortInstance];
    v74[1] = v69;
    v73[2] = @"bitsOfURL";
    v68 = [FedStatsCohortQueryURLBits cohortQueryFieldWithKey:?];
    v74[2] = v68;
    v73[3] = @"bundleID";
    v67 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[3] = v67;
    v73[4] = @"sessionType";
    v66 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[4] = v66;
    v73[5] = @"sessionState";
    v65 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[5] = v65;
    v73[6] = @"supportsBackgrounding";
    v64 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[6] = v64;
    v73[7] = @"supportsStateRestoration";
    v63 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[7] = v63;
    v73[8] = @"eventName";
    v62 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[8] = v62;
    v73[9] = @"measure";
    v61 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[9] = v61;
    v73[10] = @"extra";
    v60 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[10] = v60;
    v73[11] = @"issuer";
    v59 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[11] = v59;
    v73[12] = @"dayOfWeek";
    v58 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[12] = v58;
    v73[13] = @"hourOfDay";
    v57 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[13] = v57;
    v73[14] = @"geohash";
    v56 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[14] = v56;
    v73[15] = @"country";
    v55 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[15] = v55;
    v73[16] = @"timeZone";
    v54 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[16] = v54;
    v73[17] = @"interfaceType";
    v53 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[17] = v53;
    v73[18] = @"radioType";
    v52 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[18] = v52;
    v73[19] = @"radioBand";
    v51 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[19] = v51;
    v73[20] = @"addressFamily";
    v50 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[20] = v50;
    v73[21] = @"lang";
    v49 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[21] = v49;
    v73[22] = @"platform";
    v48 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[22] = v48;
    v73[23] = @"performanceEvent";
    v47 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[23] = v47;
    v73[24] = @"signal";
    v46 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[24] = v46;
    v73[25] = @"userAgent";
    v45 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[25] = v45;
    v73[26] = @"countryCode";
    v44 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[26] = v44;
    v73[27] = @"error";
    v43 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[27] = v43;
    v73[28] = @"localeIdentifier";
    v42 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[28] = v42;
    v73[29] = @"contentType";
    v41 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[29] = v41;
    v73[30] = @"ageGroup";
    v40 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[30] = v40;
    v73[31] = @"eventDirection";
    v39 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[31] = v39;
    v73[32] = @"isNativeArchitecture";
    v38 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[32] = v38;
    v73[33] = @"dyldPlatform";
    v37 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[33] = v37;
    v73[34] = @"type";
    v36 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[34] = v36;
    v73[35] = @"numOfMediaApps";
    v35 = +[FedStatsCohortQueryInstalledAppsMedia cohortInstance];
    v74[35] = v35;
    v73[36] = @"numOfPhoneApps";
    v34 = +[FedStatsCohortQueryInstalledAppsPhone cohortInstance];
    v74[36] = v34;
    v73[37] = @"screenDistance";
    v33 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[37] = v33;
    v73[38] = @"action";
    v32 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[38] = v32;
    v73[39] = @"gestureAssessment";
    v31 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[39] = v31;
    v73[40] = @"livenessAssessment";
    v30 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[40] = v30;
    v73[41] = @"passiveGestureAssessment";
    v29 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[41] = v29;
    v73[42] = @"passiveLivenessAssessment";
    v28 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[42] = v28;
    v73[43] = @"property";
    v27 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[43] = v27;
    v73[44] = @"accessedPropertyDirectly";
    v26 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[44] = v26;
    v73[45] = @"suggestionType";
    v25 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[45] = v25;
    v73[46] = @"footprint";
    v24 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[46] = v24;
    v73[47] = @"pageCount";
    v23 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[47] = v23;
    v73[48] = @"protocol";
    v22 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[48] = v22;
    v73[49] = @"MCC";
    v21 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[49] = v21;
    v73[50] = @"MNC";
    v20 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[50] = v20;
    v73[51] = @"matchedEmNumSource";
    v19 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[51] = v19;
    v73[52] = @"sip380Procedure";
    v18 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[52] = v18;
    v73[53] = @"sip380RedirectedURN";
    v17 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[53] = v17;
    v73[54] = @"category";
    v16 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[54] = v16;
    v73[55] = @"previous";
    v15 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[55] = v15;
    v73[56] = @"scope";
    v3 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[56] = v3;
    v73[57] = @"language";
    v4 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[57] = v4;
    v73[58] = @"memoryGenerated";
    v5 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[58] = v5;
    v73[59] = @"memoryShared";
    v6 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[59] = v6;
    v73[60] = @"memoryWatched";
    v7 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[60] = v7;
    v73[61] = @"focusRegionType";
    v8 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[61] = v8;
    v73[62] = @"styleSelectionType";
    v9 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[62] = v9;
    v73[63] = @"userLibraryAgeInDays";
    v10 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[63] = v10;
    v73[64] = @"cardShownOrEngaged";
    v11 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[64] = v11;
    v73[65] = @"portType";
    v12 = [FedStatsCohortQueryFieldGeneric cohortQueryFieldWithKey:?];
    v74[65] = v12;
    v13 = [NSDictionary dictionaryWithObjects:v74 forKeys:v73 count:66];
    cohortObjects = v71->_cohortObjects;
    v71->_cohortObjects = v13;

    return v71;
  }

  return result;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003E4C;
  block[3] = &unk_1000305B8;
  block[4] = a1;
  if (qword_10003D560 != -1)
  {
    dispatch_once(&qword_10003D560, block);
  }

  v2 = qword_10003D558;

  return v2;
}

+ (id)cohortQueryFieldByName:(id)a3
{
  v3 = a3;
  v4 = +[FedStatsCohortFactory sharedInstance];
  v5 = [v4 cohortObjects];
  v6 = [v5 objectForKey:v3];

  return v6;
}

@end