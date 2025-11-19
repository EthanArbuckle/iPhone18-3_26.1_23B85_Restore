@interface LinkChangePolicyHandler
+ (BOOL)processJoinEvent:(id)a3;
+ (BOOL)processLeaveEvent:(id)a3;
- (LinkChangePolicyHandler)initWithAnalyticsStore:(id)a3;
@end

@implementation LinkChangePolicyHandler

- (LinkChangePolicyHandler)initWithAnalyticsStore:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v12.receiver = self;
  v12.super_class = LinkChangePolicyHandler;
  v6 = [(LinkChangePolicyHandler *)&v12 init];
  v7 = v6;
  if (!v6)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  objc_storeStrong(&v6->_storeMOHandler, a3);
  if (!v7->_storeMOHandler)
  {
    v9 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v14 = "[LinkChangePolicyHandler initWithAnalyticsStore:]";
      v15 = 1024;
      v16 = 40;
      _os_log_impl(&dword_1C8460000, v9, OS_LOG_TYPE_ERROR, "%{public}s::%d:Error getting _roamPolicyMOHandler", buf, 0x12u);
    }

    goto LABEL_7;
  }

  v8 = v7;
LABEL_8:

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (BOOL)processLeaveEvent:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 bss];
  if (!v3)
  {
    v6 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v31 = 136446466;
      v32 = "+[LinkChangePolicyHandler processLeaveEvent:]";
      v33 = 1024;
      v34 = 51;
      v30 = "%{public}s::%d:nil join";
LABEL_41:
      _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_FAULT, v30, &v31, 0x12u);
    }

LABEL_42:
    v27 = 0;
    goto LABEL_36;
  }

  v5 = WALogCategoryDeviceStoreHandle();
  v6 = v5;
  if (!v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v31 = 136446466;
      v32 = "+[LinkChangePolicyHandler processLeaveEvent:]";
      v33 = 1024;
      v34 = 52;
      v30 = "%{public}s::%d:nil join.bss";
      goto LABEL_41;
    }

    goto LABEL_42;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = [v3 reason];
    v8 = [v3 rssi];
    v9 = [v4 bssid];
    v31 = 136447234;
    v32 = "+[LinkChangePolicyHandler processLeaveEvent:]";
    v33 = 1024;
    v34 = 54;
    v35 = 1024;
    *v36 = v7;
    *&v36[4] = 1024;
    *&v36[6] = v8;
    *&v36[10] = 2112;
    *&v36[12] = v9;
    _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_DEBUG, "%{public}s::%d:reason:%d rssi:%hd on %@", &v31, 0x28u);
  }

  v10 = [v3 reason];
  if (v10 > 999)
  {
    if (v10 == 1000)
    {
      if ([v4 disTrgDisCount] == 0x7FFF)
      {
        v14 = v4;
        v15 = 5;
      }

      else
      {
        v15 = ([v4 disTrgDisCount] + 1);
        v14 = v4;
      }

      [v14 setDisTrgDisCount:v15];
      goto LABEL_27;
    }

    if (v10 != 1011)
    {
      goto LABEL_27;
    }

LABEL_11:
    if ([v3 rssi] <= -75)
    {
      if ([v4 disUsrForcedInWeakRssiCount] == 0x7FFF)
      {
        LOWORD(v11) = 5;
      }

      else
      {
        v11 = [v4 disUsrForcedInWeakRssiCount] + 1;
      }

      [v4 setDisUsrForcedInWeakRssiCount:v11];
      if ([v4 disUsrForcedInWeakRssiCount] >= 1)
      {
        v16 = WALogCategoryDeviceStoreHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = [v3 rssi];
          v18 = [v4 bssid];
          v31 = 136446978;
          v32 = "+[LinkChangePolicyHandler processLeaveEvent:]";
          v33 = 1024;
          v34 = 85;
          v35 = 1024;
          *v36 = v17;
          *&v36[4] = 2112;
          *&v36[6] = v18;
          _os_log_impl(&dword_1C8460000, v16, OS_LOG_TYPE_INFO, "%{public}s::%d:Setting autoLeaveRssi to %d on %@", &v31, 0x22u);
        }

        [v4 setAutoLeaveRssi:{objc_msgSend(v3, "rssi")}];
      }
    }

    goto LABEL_27;
  }

  if (v10 == 2)
  {
    if ([v4 disBcnLossCount] == 0x7FFF)
    {
      v12 = v4;
      v13 = 5;
    }

    else
    {
      v13 = ([v4 disBcnLossCount] + 1);
      v12 = v4;
    }

    [v12 setDisBcnLossCount:v13];
    goto LABEL_27;
  }

  if (v10 == 5)
  {
    goto LABEL_11;
  }

LABEL_27:
  if ([v4 disBcnLossCount] > 4 || objc_msgSend(v4, "disTrgDisCount") > 4 || objc_msgSend(v4, "disUsrForcedInWeakRssiCount") >= 1)
  {
    v19 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = [v4 bssid];
      v31 = 136446722;
      v32 = "+[LinkChangePolicyHandler processLeaveEvent:]";
      v33 = 1024;
      v34 = 99;
      v35 = 2112;
      *v36 = v20;
      _os_log_impl(&dword_1C8460000, v19, OS_LOG_TYPE_INFO, "%{public}s::%d:Setting isEdgeForLeave on %@", &v31, 0x1Cu);
    }

    [v4 setIsEdgeForLeave:1];
  }

  v6 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v21 = [v4 disBcnLossCount];
    v22 = [v4 disTrgDisCount];
    v23 = [v4 disUsrForcedInWeakRssiCount];
    v24 = [v4 autoLeaveRssi];
    v25 = [v4 isEdgeForLeave];
    v26 = [v4 manualJoinAfterAutoLeave];
    v31 = 136448002;
    v32 = "+[LinkChangePolicyHandler processLeaveEvent:]";
    v33 = 1024;
    v34 = 103;
    v35 = 1024;
    *v36 = v21;
    *&v36[4] = 1024;
    *&v36[6] = v22;
    *&v36[10] = 1024;
    *&v36[12] = v23;
    *&v36[16] = 1024;
    *&v36[18] = v24;
    v37 = 1024;
    v38 = v25;
    v39 = 1024;
    v40 = v26;
    _os_log_impl(&dword_1C8460000, v6, OS_LOG_TYPE_DEBUG, "%{public}s::%d:disBcnLossCount:%d disTrgDisCount:%d disUsrForcedInWeakRssiCount:%d autoLeaveRssi:%d isEdgeForLeave:%d, manualJoinAfterAutoLeave:%d", &v31, 0x36u);
  }

  v27 = 1;
LABEL_36:

  v28 = *MEMORY[0x1E69E9840];
  return v27;
}

+ (BOOL)processJoinEvent:(id)a3
{
  v25[3] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 bss];
  v5 = v4;
  if (!v3)
  {
    v16 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446466;
      v19 = "+[LinkChangePolicyHandler processJoinEvent:]";
      v20 = 1024;
      v21 = 113;
      v17 = "%{public}s::%d:nil join";
LABEL_17:
      _os_log_impl(&dword_1C8460000, v16, OS_LOG_TYPE_FAULT, v17, buf, 0x12u);
    }

LABEL_18:

    v13 = 0;
    goto LABEL_12;
  }

  if (!v4)
  {
    v16 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446466;
      v19 = "+[LinkChangePolicyHandler processJoinEvent:]";
      v20 = 1024;
      v21 = 114;
      v17 = "%{public}s::%d:nil join.bss";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if ([v3 reason] == 1 && (objc_msgSend(v3, "subReason") == 0x40000 || objc_msgSend(v3, "subReason") == 0x80000))
  {
    if ([v5 autoLeaveRssi])
    {
      v24[0] = @"autoLeaveRssi";
      v6 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v5, "autoLeaveRssi")}];
      v25[0] = v6;
      v24[1] = @"reason";
      v7 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v3, "reason")}];
      v25[1] = v7;
      v24[2] = @"subReason";
      v8 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v3, "subReason")}];
      v25[2] = v8;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];

      v10 = v9;
      AnalyticsSendEventLazy();

      [v5 setManualJoinAfterAutoLeave:1];
      v11 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [v5 bssid];
        *buf = 136446722;
        v19 = "+[LinkChangePolicyHandler processJoinEvent:]";
        v20 = 1024;
        v21 = 129;
        v22 = 2112;
        v23 = v12;
        _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_INFO, "%{public}s::%d:Resetting autoLeaveRssi and isEdgeForLeave on %@", buf, 0x1Cu);
      }

      [v5 setAutoLeaveRssi:0];
      [v5 setIsEdgeForLeave:0];
    }

    else
    {
      [v5 setManualJoinAfterAutoLeave:0];
    }
  }

  v13 = 1;
LABEL_12:

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

@end