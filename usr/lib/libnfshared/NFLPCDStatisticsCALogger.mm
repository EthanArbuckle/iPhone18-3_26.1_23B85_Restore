@interface NFLPCDStatisticsCALogger
+ (void)postAnalyticsLPCDStatistic:(id)a3;
@end

@implementation NFLPCDStatisticsCALogger

+ (void)postAnalyticsLPCDStatistic:(id)a3
{
  v40[8] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v6 = objc_msgSend_sharedCALogger(NFCALogger, v4, v5);
  v9 = objc_msgSend_generateDailyUUIDForCA(v6, v7, v8);
  v11 = objc_msgSend_objectForKeyedSubscript_(v3, v10, @"falseDetectionCount");

  if (v11)
  {
    v39[0] = @"falseDetectionCount";
    v14 = objc_msgSend_objectForKeyedSubscript_(v3, v12, @"falseDetectionCount");
    v40[0] = v14;
    v40[1] = &unk_2843B4C98;
    v39[1] = @"tagType1ReadSuccessCount";
    v39[2] = @"tagType2ReadSuccessCount";
    v40[2] = &unk_2843B4C98;
    v40[3] = &unk_2843B4C98;
    v39[3] = @"tagType3ReadSuccessCount";
    v39[4] = @"tagType4ReadSuccessCount";
    v40[4] = &unk_2843B4C98;
    v40[5] = &unk_2843B4C98;
    v39[5] = @"tagType5ReadSuccessCount";
    v39[6] = @"notNDEFFormatedTagCount";
    v39[7] = @"dailyDeviceUUID";
    v15 = @"noUUID";
    if (v9)
    {
      v15 = v9;
    }

    v40[6] = &unk_2843B4C98;
    v40[7] = v15;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, v40, v39, 8);
    v21 = LABEL_9:;
    goto LABEL_10;
  }

  v16 = objc_msgSend_objectForKeyedSubscript_(v3, v12, @"notNDEFFormatedTagCount");

  if (v16)
  {
    v37[0] = @"falseDetectionCount";
    v37[1] = @"tagType1ReadSuccessCount";
    v38[0] = &unk_2843B4C98;
    v38[1] = &unk_2843B4C98;
    v37[2] = @"tagType2ReadSuccessCount";
    v37[3] = @"tagType3ReadSuccessCount";
    v38[2] = &unk_2843B4C98;
    v38[3] = &unk_2843B4C98;
    v37[4] = @"tagType4ReadSuccessCount";
    v37[5] = @"tagType5ReadSuccessCount";
    v38[4] = &unk_2843B4C98;
    v38[5] = &unk_2843B4C98;
    v37[6] = @"notNDEFFormatedTagCount";
    v18 = objc_msgSend_objectForKeyedSubscript_(v3, v17, @"notNDEFFormatedTagCount");
    v14 = v18;
    v37[7] = @"dailyDeviceUUID";
    v20 = @"noUUID";
    if (v9)
    {
      v20 = v9;
    }

    v38[6] = v18;
    v38[7] = v20;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, v38, v37, 8);
    goto LABEL_9;
  }

  v36[0] = &unk_2843B4C98;
  v14 = objc_msgSend_objectForKeyedSubscript_(v3, v17, @"tagType1ReadSuccessCount", @"falseDetectionCount", @"tagType1ReadSuccessCount");
  v36[1] = v14;
  v35[2] = @"tagType2ReadSuccessCount";
  v26 = objc_msgSend_objectForKeyedSubscript_(v3, v25, @"tagType2ReadSuccessCount");
  v36[2] = v26;
  v35[3] = @"tagType3ReadSuccessCount";
  v28 = objc_msgSend_objectForKeyedSubscript_(v3, v27, @"tagType3ReadSuccessCount");
  v36[3] = v28;
  v35[4] = @"tagType4ReadSuccessCount";
  v30 = objc_msgSend_objectForKeyedSubscript_(v3, v29, @"tagType4ReadSuccessCount");
  v36[4] = v30;
  v35[5] = @"tagType5ReadSuccessCount";
  v33 = objc_msgSend_objectForKeyedSubscript_(v3, v31, @"tagType5ReadSuccessCount");
  v36[5] = v33;
  v36[6] = &unk_2843B4C98;
  v35[6] = @"notNDEFFormatedTagCount";
  v35[7] = @"dailyDeviceUUID";
  if (v9)
  {
    v34 = v9;
  }

  else
  {
    v34 = @"noUUID";
  }

  v36[7] = v34;
  v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v32, v36, v35, 8);

LABEL_10:
  v22 = objc_autoreleasePoolPush();
  objc_msgSend_postCAEventFor_eventInput_(v6, v23, @"com.apple.nfcd.lpcdStatistic", v21);
  objc_autoreleasePoolPop(v22);

  v24 = *MEMORY[0x277D85DE8];
}

@end