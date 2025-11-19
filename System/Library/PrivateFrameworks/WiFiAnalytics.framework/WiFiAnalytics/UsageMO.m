@interface UsageMO
+ (BOOL)verifyConstraints:(id)a3 withError:(id *)a4;
+ (id)aggregateName;
+ (id)binnedValue:(int64_t)a3 inEdges:(id)a4 withLowerEdgeIncluded:(BOOL)a5;
+ (id)constraintsWithBss:(id)a3 date:(id)a4 lqm:(id)a5 onEntity:(id)a6;
+ (id)jumpBackOneSpan;
+ (id)referenceDateFor:(unint64_t)a3 timeSpan:(unint64_t)a4 withError:(id *)a5;
+ (id)usageOf:(id)a3 timeSpan:(unint64_t)a4 around:(id)a5 onContainer:(id)a6 withError:(id *)a7;
+ (int64_t)checkForInvalid:(int64_t)a3 constraint:(id)a4 on:(id)a5;
+ (unint64_t)timeSpan;
- (NSString)description;
@end

@implementation UsageMO

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = UsageMO;
  v4 = [(UniqueMO *)&v9 description];
  v5 = [objc_opt_class() accumulator];
  v6 = [(UsageMO *)self valueForKey:v5];
  v7 = [v3 stringWithFormat:@"%@: %@", v4, v6];

  return v7;
}

+ (id)aggregateName
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [a1 aggregateAs];
  v5 = [a1 accumulator];
  v6 = [v3 stringWithFormat:@"%@%@", v4, v5];

  return v6;
}

+ (id)jumpBackOneSpan
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v5 = 136446466;
    v6 = "+[UsageMO jumpBackOneSpan]";
    v7 = 1024;
    v8 = 56;
    _os_log_impl(&dword_1C8460000, v2, OS_LOG_TYPE_FAULT, "%{public}s::%d:children classes shall implement <UsageMOProtocol>", &v5, 0x12u);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

+ (unint64_t)timeSpan
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v5 = 136446466;
    v6 = "+[UsageMO timeSpan]";
    v7 = 1024;
    v8 = 61;
    _os_log_impl(&dword_1C8460000, v2, OS_LOG_TYPE_FAULT, "%{public}s::%d:children classes shall implement <UsageMOProtocol>", &v5, 0x12u);
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

+ (id)binnedValue:(int64_t)a3 inEdges:(id)a4 withLowerEdgeIncluded:(BOOL)a5
{
  if (a5)
  {
    [UsageHelper getLowerEdgeIncludedBinFor:a3 In:a4];
  }

  else
  {
    [UsageHelper getHigherEdgeIncludedBinFor:a3 In:a4];
  }
  v5 = ;

  return v5;
}

+ (int64_t)checkForInvalid:(int64_t)a3 constraint:(id)a4 on:(id)a5
{
  v17 = *MEMORY[0x1E69E9840];
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = a4;
    v7 = [a5 attributesByName];
    v8 = [v7 objectForKeyedSubscript:v6];

    v9 = [v8 attributeType];
    if (v9 == 100)
    {
      a3 = 0x7FFFLL;
      goto LABEL_11;
    }

    if (v9 != 300)
    {
      if (v9 == 200)
      {
        a3 = 0x7FFFFFFFLL;
        goto LABEL_11;
      }

      v10 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        v13 = 136446466;
        v14 = "+[UsageMO checkForInvalid:constraint:on:]";
        v15 = 1024;
        v16 = 81;
        _os_log_impl(&dword_1C8460000, v10, OS_LOG_TYPE_FAULT, "%{public}s::%d:This function is meant to be called on integer constraints", &v13, 0x12u);
      }
    }

    a3 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
  return a3;
}

+ (id)constraintsWithBss:(id)a3 date:(id)a4 lqm:(id)a5 onEntity:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = objc_opt_new();
  v15 = [v13 bssid];
  [v14 setObject:v15 forKeyedSubscript:@"bssid"];

  v16 = [v13 network];
  v17 = [v16 ssid];
  [v14 setObject:v17 forKeyedSubscript:@"ssid"];

  v18 = [v13 lan];
  v19 = [v18 ipv4NetworkSignature];
  [v14 setObject:v19 forKeyedSubscript:@"ipv4NetworkSignature"];

  v20 = [v13 lan];

  v21 = [v20 ipv6NetworkSignature];
  [v14 setObject:v21 forKeyedSubscript:@"ipv6NetworkSignature"];

  v22 = +[UsageHelper binnedDate:as:](UsageHelper, "binnedDate:as:", v12, [a1 timeSpan]);

  v47 = v22;
  v23 = [v22 greaterOrEqualTo];
  v24 = +[WAPersistentContainer defaultBinnedDateLowerEdgePropertyName];
  [v14 setObject:v23 forKeyedSubscript:v24];

  v25 = [v22 lowerThan];
  v26 = +[WAPersistentContainer defaultBinnedDateHigherEdgePropertyName];
  [v14 setObject:v25 forKeyedSubscript:v26];

  v27 = [a1 binnedValue:objc_msgSend(a1 inEdges:"checkForInvalid:constraint:on:" withLowerEdgeIncluded:{objc_msgSend(v11, "rssi"), @"rssi_ge", v10), &unk_1F483E6F8, 1}];
  v28 = [v27 greaterOrEqualTo];
  [v14 setObject:v28 forKeyedSubscript:@"rssi_ge"];

  v29 = [v27 lowerThan];
  [v14 setObject:v29 forKeyedSubscript:@"rssi_lt"];

  v30 = [a1 binnedValue:objc_msgSend(v11 inEdges:"rxFrames") + objc_msgSend(v11 withLowerEdgeIncluded:{"txFrames"), &unk_1F483E710, 0}];
  v31 = [v30 greaterThan];
  [v14 setObject:v31 forKeyedSubscript:@"rxtxFrames_gt"];

  v32 = [v30 lowerOrEqualTo];
  [v14 setObject:v32 forKeyedSubscript:@"rxtxFrames_le"];

  v33 = [a1 checkForInvalid:objc_msgSend(v11 constraint:"ccaTotal") on:{@"ccaTotal_gt", v10}];
  v34 = +[WADeviceAnalyticsClient bandAsString:](WADeviceAnalyticsClient, "bandAsString:", [v11 band]);
  v35 = [&unk_1F483E968 objectForKeyedSubscript:v34];
  v36 = [a1 binnedValue:v33 inEdges:v35 withLowerEdgeIncluded:0];

  v37 = [v36 greaterThan];
  [v14 setObject:v37 forKeyedSubscript:@"ccaTotal_gt"];

  v38 = [v36 lowerOrEqualTo];
  [v14 setObject:v38 forKeyedSubscript:@"ccaTotal_le"];

  v39 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v11, "band")}];
  [v14 setObject:v39 forKeyedSubscript:@"band"];

  v40 = [MEMORY[0x1E696AD98] numberWithShort:{+[WADeviceAnalyticsClient subBandFromBand:channel:](WADeviceAnalyticsClient, "subBandFromBand:channel:", objc_msgSend(v11, "band"), objc_msgSend(v11, "channel"))}];
  [v14 setObject:v40 forKeyedSubscript:@"subband"];

  v41 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v11, "isAnyAppInFg")}];
  [v14 setObject:v41 forKeyedSubscript:@"isAnyAppInFG"];

  v42 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v11, "isFTactive")}];
  [v14 setObject:v42 forKeyedSubscript:@"isFTactive"];

  v43 = MEMORY[0x1E696AD98];
  v44 = [v11 isTimeSensitiveAppRunning];

  v45 = [v43 numberWithBool:v44];
  [v14 setObject:v45 forKeyedSubscript:@"isTimeSensitiveAppRunning"];

  return v14;
}

+ (BOOL)verifyConstraints:(id)a3 withError:(id *)a4
{
  v118[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (![BSSMO verifyConstraints:v5 withError:a4]|| ![NetworkMO verifyConstraints:v5 withError:a4]|| ![LANMO verifyConstraints:v5 withError:a4])
  {
    goto LABEL_78;
  }

  v6 = +[WAPersistentContainer defaultBinnedDateLowerEdgePropertyName];
  v7 = [v5 objectForKeyedSubscript:v6];
  if (!v7)
  {

LABEL_68:
    v77 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_FAULT))
    {
      v78 = [v5 objectForKeyedSubscript:@"date_ge"];
      *buf = 136446722;
      v108 = "+[UsageMO verifyConstraints:withError:]";
      v109 = 1024;
      v110 = 131;
      v111 = 2112;
      v112 = v78;
      _os_log_impl(&dword_1C8460000, v77, OS_LOG_TYPE_FAULT, "%{public}s::%d:Invalid input. date_ge:%@", buf, 0x1Cu);
    }

    if (a4)
    {
      v31 = MEMORY[0x1E696ABC0];
      v117 = *MEMORY[0x1E696A588];
      v118[0] = @"WAErrorCodeLacksRequiredArgument";
      v32 = MEMORY[0x1E695DF20];
      v33 = v118;
      v34 = &v117;
      goto LABEL_77;
    }

    goto LABEL_79;
  }

  v8 = v7;
  v9 = +[WAPersistentContainer defaultBinnedDateLowerEdgePropertyName];
  v10 = [v5 objectForKeyedSubscript:v9];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_68;
  }

  v12 = +[WAPersistentContainer defaultBinnedDateHigherEdgePropertyName];
  v13 = [v5 objectForKeyedSubscript:v12];
  if (!v13)
  {

LABEL_73:
    v79 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v79, OS_LOG_TYPE_FAULT))
    {
      v80 = +[WAPersistentContainer defaultBinnedDateHigherEdgePropertyName];
      v81 = [v5 objectForKeyedSubscript:v80];
      *buf = 136446722;
      v108 = "+[UsageMO verifyConstraints:withError:]";
      v109 = 1024;
      v110 = 133;
      v111 = 2112;
      v112 = v81;
      _os_log_impl(&dword_1C8460000, v79, OS_LOG_TYPE_FAULT, "%{public}s::%d:Invalid input. date_lt:%@", buf, 0x1Cu);
    }

    if (a4)
    {
      v31 = MEMORY[0x1E696ABC0];
      v115 = *MEMORY[0x1E696A588];
      v116 = @"WAErrorCodeLacksRequiredArgument";
      v32 = MEMORY[0x1E695DF20];
      v33 = &v116;
      v34 = &v115;
      goto LABEL_77;
    }

    goto LABEL_79;
  }

  v14 = v13;
  v15 = +[WAPersistentContainer defaultBinnedDateHigherEdgePropertyName];
  v16 = [v5 objectForKeyedSubscript:v15];
  objc_opt_class();
  v17 = objc_opt_isKindOfClass();

  if ((v17 & 1) == 0)
  {
    goto LABEL_73;
  }

  v18 = [v5 objectForKeyedSubscript:@"rssi_ge"];
  if (v18)
  {
  }

  else
  {
    v19 = [v5 objectForKeyedSubscript:@"rssi_lt"];

    if (!v19)
    {
      v53 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
      {
        v54 = [v5 objectForKeyedSubscript:@"rssi_ge"];
        v55 = [v5 objectForKeyedSubscript:@"rssi_lt"];
        *buf = 136446978;
        v108 = "+[UsageMO verifyConstraints:withError:]";
        v109 = 1024;
        v110 = 137;
        v111 = 2112;
        v112 = v54;
        v113 = 2112;
        v114 = v55;
        _os_log_impl(&dword_1C8460000, v53, OS_LOG_TYPE_FAULT, "%{public}s::%d:Invalid input. rssi bin [%@:%@) is not valid", buf, 0x26u);
      }

      if (a4)
      {
        v31 = MEMORY[0x1E696ABC0];
        v105 = *MEMORY[0x1E696A588];
        v106 = @"WAErrorCodeLacksRequiredArgument";
        v32 = MEMORY[0x1E695DF20];
        v33 = &v106;
        v34 = &v105;
        goto LABEL_77;
      }

      goto LABEL_79;
    }
  }

  v20 = [v5 objectForKeyedSubscript:@"rssi_ge"];
  if (v20)
  {
    v21 = v20;
    v22 = [v5 objectForKeyedSubscript:@"rssi_ge"];
    objc_opt_class();
    v23 = objc_opt_isKindOfClass();

    if ((v23 & 1) == 0)
    {
      v29 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        v30 = [v5 objectForKeyedSubscript:@"rssi_ge"];
        *buf = 136446722;
        v108 = "+[UsageMO verifyConstraints:withError:]";
        v109 = 1024;
        v110 = 138;
        v111 = 2112;
        v112 = v30;
        _os_log_impl(&dword_1C8460000, v29, OS_LOG_TYPE_FAULT, "%{public}s::%d:Invalid input. rssi_ge:%@", buf, 0x1Cu);
      }

      if (!a4)
      {
        goto LABEL_79;
      }

      v31 = MEMORY[0x1E696ABC0];
      v103 = *MEMORY[0x1E696A588];
      v104 = @"WAErrorCodeLacksRequiredArgument";
      v32 = MEMORY[0x1E695DF20];
      v33 = &v104;
      v34 = &v103;
LABEL_77:
      v82 = [v32 dictionaryWithObjects:v33 forKeys:v34 count:{1, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106}];
      *a4 = [v31 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9010 userInfo:v82];

LABEL_78:
      LOBYTE(a4) = 0;
      goto LABEL_79;
    }
  }

  v24 = [v5 objectForKeyedSubscript:@"rssi_lt"];
  if (v24)
  {
    v25 = v24;
    v26 = [v5 objectForKeyedSubscript:@"rssi_lt"];
    objc_opt_class();
    v27 = objc_opt_isKindOfClass();

    if ((v27 & 1) == 0)
    {
      v35 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
      {
        v36 = [v5 objectForKeyedSubscript:@"rssi_lt"];
        *buf = 136446722;
        v108 = "+[UsageMO verifyConstraints:withError:]";
        v109 = 1024;
        v110 = 139;
        v111 = 2112;
        v112 = v36;
        _os_log_impl(&dword_1C8460000, v35, OS_LOG_TYPE_FAULT, "%{public}s::%d:Invalid input. rssi_lt:%@", buf, 0x1Cu);
      }

      if (!a4)
      {
        goto LABEL_79;
      }

      v31 = MEMORY[0x1E696ABC0];
      v101 = *MEMORY[0x1E696A588];
      v102 = @"WAErrorCodeLacksRequiredArgument";
      v32 = MEMORY[0x1E695DF20];
      v33 = &v102;
      v34 = &v101;
      goto LABEL_77;
    }
  }

  v28 = [v5 objectForKeyedSubscript:@"rxtxFrames_gt"];
  if (v28)
  {
  }

  else
  {
    v37 = [v5 objectForKeyedSubscript:@"rxtxFrames_le"];

    if (!v37)
    {
      v70 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_FAULT))
      {
        v71 = [v5 objectForKeyedSubscript:@"rxtxFrames_gt"];
        v72 = [v5 objectForKeyedSubscript:@"rxtxFrames_le"];
        *buf = 136446978;
        v108 = "+[UsageMO verifyConstraints:withError:]";
        v109 = 1024;
        v110 = 142;
        v111 = 2112;
        v112 = v71;
        v113 = 2112;
        v114 = v72;
        _os_log_impl(&dword_1C8460000, v70, OS_LOG_TYPE_FAULT, "%{public}s::%d:Invalid input. rxtxFrames bin (%@:%@] is not valid", buf, 0x26u);
      }

      if (a4)
      {
        v31 = MEMORY[0x1E696ABC0];
        v99 = *MEMORY[0x1E696A588];
        v100 = @"WAErrorCodeLacksRequiredArgument";
        v32 = MEMORY[0x1E695DF20];
        v33 = &v100;
        v34 = &v99;
        goto LABEL_77;
      }

      goto LABEL_79;
    }
  }

  v38 = [v5 objectForKeyedSubscript:@"rxtxFrames_gt"];
  if (v38 && (v39 = v38, [v5 objectForKeyedSubscript:@"rxtxFrames_gt"], v40 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v41 = objc_opt_isKindOfClass(), v40, v39, (v41 & 1) == 0))
  {
    v56 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
    {
      v57 = [v5 objectForKeyedSubscript:@"rxtxFrames_gt"];
      *buf = 136446722;
      v108 = "+[UsageMO verifyConstraints:withError:]";
      v109 = 1024;
      v110 = 143;
      v111 = 2112;
      v112 = v57;
      _os_log_impl(&dword_1C8460000, v56, OS_LOG_TYPE_FAULT, "%{public}s::%d:Invalid input. rxtxFrames_gt:%@", buf, 0x1Cu);
    }

    if (a4)
    {
      v31 = MEMORY[0x1E696ABC0];
      v97 = *MEMORY[0x1E696A588];
      v98 = @"WAErrorCodeLacksRequiredArgument";
      v32 = MEMORY[0x1E695DF20];
      v33 = &v98;
      v34 = &v97;
      goto LABEL_77;
    }
  }

  else
  {
    v42 = [v5 objectForKeyedSubscript:@"rxtxFrames_le"];
    if (v42 && (v43 = v42, [v5 objectForKeyedSubscript:@"rxtxFrames_le"], v44 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v45 = objc_opt_isKindOfClass(), v44, v43, (v45 & 1) == 0))
    {
      v68 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
      {
        v69 = [v5 objectForKeyedSubscript:@"rxtxFrames_le"];
        *buf = 136446722;
        v108 = "+[UsageMO verifyConstraints:withError:]";
        v109 = 1024;
        v110 = 144;
        v111 = 2112;
        v112 = v69;
        _os_log_impl(&dword_1C8460000, v68, OS_LOG_TYPE_FAULT, "%{public}s::%d:Invalid input. rxtxFrames_le:%@", buf, 0x1Cu);
      }

      if (a4)
      {
        v31 = MEMORY[0x1E696ABC0];
        v95 = *MEMORY[0x1E696A588];
        v96 = @"WAErrorCodeLacksRequiredArgument";
        v32 = MEMORY[0x1E695DF20];
        v33 = &v96;
        v34 = &v95;
        goto LABEL_77;
      }
    }

    else
    {
      v46 = [v5 objectForKeyedSubscript:@"band"];
      if (v46)
      {
        v47 = v46;
        v48 = [v5 objectForKeyedSubscript:@"band"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v49 = [v5 objectForKeyedSubscript:@"band"];
          v50 = [v49 integerValue];

          if (v50 < 3)
          {
            v58 = [v5 objectForKeyedSubscript:@"subband"];
            if (v58 && (v59 = v58, [v5 objectForKeyedSubscript:@"subband"], v60 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v61 = objc_opt_isKindOfClass(), v60, v59, (v61 & 1) != 0))
            {
              v62 = [v5 objectForKeyedSubscript:@"subband"];
              v63 = [v62 shortValue];

              if ((v63 - 12) <= 0xFFF4u)
              {
                v85 = WALogCategoryDeviceStoreHandle();
                if (os_log_type_enabled(v85, OS_LOG_TYPE_FAULT))
                {
                  v86 = [v5 objectForKeyedSubscript:@"subband"];
                  *buf = 136446722;
                  v108 = "+[UsageMO verifyConstraints:withError:]";
                  v109 = 1024;
                  v110 = 153;
                  v111 = 2112;
                  v112 = v86;
                  _os_log_impl(&dword_1C8460000, v85, OS_LOG_TYPE_FAULT, "%{public}s::%d:Invalid input. subband:%@", buf, 0x1Cu);
                }

                if (a4)
                {
                  v31 = MEMORY[0x1E696ABC0];
                  v89 = *MEMORY[0x1E696A588];
                  v90 = @"WAErrorCodeLacksRequiredArgument";
                  v32 = MEMORY[0x1E695DF20];
                  v33 = &v90;
                  v34 = &v89;
                  goto LABEL_77;
                }
              }

              else
              {
                v64 = [v5 objectForKeyedSubscript:@"isAnyAppInFG"];
                if (v64 && (v65 = v64, [v5 objectForKeyedSubscript:@"isAnyAppInFG"], v66 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v67 = objc_opt_isKindOfClass(), v66, v65, (v67 & 1) != 0))
                {
                  LOBYTE(a4) = 1;
                }

                else
                {
                  v75 = WALogCategoryDeviceStoreHandle();
                  if (os_log_type_enabled(v75, OS_LOG_TYPE_FAULT))
                  {
                    v76 = [v5 objectForKeyedSubscript:@"isAnyAppInFg"];
                    *buf = 136446722;
                    v108 = "+[UsageMO verifyConstraints:withError:]";
                    v109 = 1024;
                    v110 = 155;
                    v111 = 2112;
                    v112 = v76;
                    _os_log_impl(&dword_1C8460000, v75, OS_LOG_TYPE_FAULT, "%{public}s::%d:Invalid input. isAnyAppInFg:%@", buf, 0x1Cu);
                  }

                  if (a4)
                  {
                    v31 = MEMORY[0x1E696ABC0];
                    v87 = *MEMORY[0x1E696A588];
                    v88 = @"WAErrorCodeLacksRequiredArgument";
                    v32 = MEMORY[0x1E695DF20];
                    v33 = &v88;
                    v34 = &v87;
                    goto LABEL_77;
                  }
                }
              }
            }

            else
            {
              v73 = WALogCategoryDeviceStoreHandle();
              if (os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
              {
                v74 = [v5 objectForKeyedSubscript:@"band"];
                *buf = 136446722;
                v108 = "+[UsageMO verifyConstraints:withError:]";
                v109 = 1024;
                v110 = 150;
                v111 = 2112;
                v112 = v74;
                _os_log_impl(&dword_1C8460000, v73, OS_LOG_TYPE_FAULT, "%{public}s::%d:Invalid input. band:%@", buf, 0x1Cu);
              }

              if (a4)
              {
                v31 = MEMORY[0x1E696ABC0];
                v91 = *MEMORY[0x1E696A588];
                v92 = @"WAErrorCodeLacksRequiredArgument";
                v32 = MEMORY[0x1E695DF20];
                v33 = &v92;
                v34 = &v91;
                goto LABEL_77;
              }
            }

            goto LABEL_79;
          }
        }

        else
        {
        }
      }

      v51 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
      {
        v52 = [v5 objectForKeyedSubscript:@"band"];
        *buf = 136446722;
        v108 = "+[UsageMO verifyConstraints:withError:]";
        v109 = 1024;
        v110 = 147;
        v111 = 2112;
        v112 = v52;
        _os_log_impl(&dword_1C8460000, v51, OS_LOG_TYPE_FAULT, "%{public}s::%d:Invalid input. band:%@", buf, 0x1Cu);
      }

      if (a4)
      {
        v31 = MEMORY[0x1E696ABC0];
        v93 = *MEMORY[0x1E696A588];
        v94 = @"WAErrorCodeLacksRequiredArgument";
        v32 = MEMORY[0x1E695DF20];
        v33 = &v94;
        v34 = &v93;
        goto LABEL_77;
      }
    }
  }

LABEL_79:

  v83 = *MEMORY[0x1E69E9840];
  return a4;
}

+ (id)usageOf:(id)a3 timeSpan:(unint64_t)a4 around:(id)a5 onContainer:(id)a6 withError:(id *)a7
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v21 = 0;
  v13 = [UsageHelper classForTimeSpan:a4 withError:&v21];
  v14 = v21;
  if (v14)
  {
    v18 = v14;
    v17 = 0;
  }

  else
  {
    v15 = [(objc_class *)v13 performSelector:sel_entity];
    v16 = [UsageHelper binnedDate:v11 as:a4];
    v20 = 0;
    v17 = [v12 usageOf:v10 inUsageTable:v15 forDateSpan:v16 withSorting:MEMORY[0x1E695E0F0] withError:&v20];
    v18 = v20;
  }

  return v17;
}

+ (id)referenceDateFor:(unint64_t)a3 timeSpan:(unint64_t)a4 withError:(id *)a5
{
  v5 = a5;
  v21[1] = *MEMORY[0x1E69E9840];
  v7 = [UsageHelper classForTimeSpan:a4 withError:a5];
  if (!v7)
  {
    goto LABEL_9;
  }

  if (a3 == 1)
  {
    v8 = [(objc_class *)v7 performSelector:sel_jumpBackOneSpan];
    goto LABEL_6;
  }

  if (!a3)
  {
    v8 = [MEMORY[0x1E695DF00] now];
LABEL_6:
    v5 = v8;
    goto LABEL_10;
  }

  if (v5)
  {
    v9 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A588];
    v21[0] = @"WAErrorCodeInvalidInput";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    *v5 = [v9 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v10];

LABEL_9:
    v5 = 0;
  }

LABEL_10:
  v11 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v14 = 136446722;
    v15 = "+[UsageMO referenceDateFor:timeSpan:withError:]";
    v16 = 1024;
    v17 = 210;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Returning: %@", &v14, 0x1Cu);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

@end