@interface UsageMO
+ (BOOL)verifyConstraints:(id)constraints withError:(id *)error;
+ (id)aggregateName;
+ (id)binnedValue:(int64_t)value inEdges:(id)edges withLowerEdgeIncluded:(BOOL)included;
+ (id)constraintsWithBss:(id)bss date:(id)date lqm:(id)lqm onEntity:(id)entity;
+ (id)jumpBackOneSpan;
+ (id)referenceDateFor:(unint64_t)for timeSpan:(unint64_t)span withError:(id *)error;
+ (id)usageOf:(id)of timeSpan:(unint64_t)span around:(id)around onContainer:(id)container withError:(id *)error;
+ (int64_t)checkForInvalid:(int64_t)invalid constraint:(id)constraint on:(id)on;
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
  accumulator = [objc_opt_class() accumulator];
  v6 = [(UsageMO *)self valueForKey:accumulator];
  v7 = [v3 stringWithFormat:@"%@: %@", v4, v6];

  return v7;
}

+ (id)aggregateName
{
  v3 = MEMORY[0x1E696AEC0];
  aggregateAs = [self aggregateAs];
  accumulator = [self accumulator];
  v6 = [v3 stringWithFormat:@"%@%@", aggregateAs, accumulator];

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

+ (id)binnedValue:(int64_t)value inEdges:(id)edges withLowerEdgeIncluded:(BOOL)included
{
  if (included)
  {
    [UsageHelper getLowerEdgeIncludedBinFor:value In:edges];
  }

  else
  {
    [UsageHelper getHigherEdgeIncludedBinFor:value In:edges];
  }
  v5 = ;

  return v5;
}

+ (int64_t)checkForInvalid:(int64_t)invalid constraint:(id)constraint on:(id)on
{
  v17 = *MEMORY[0x1E69E9840];
  if (invalid == 0x7FFFFFFFFFFFFFFFLL)
  {
    constraintCopy = constraint;
    attributesByName = [on attributesByName];
    v8 = [attributesByName objectForKeyedSubscript:constraintCopy];

    attributeType = [v8 attributeType];
    if (attributeType == 100)
    {
      invalid = 0x7FFFLL;
      goto LABEL_11;
    }

    if (attributeType != 300)
    {
      if (attributeType == 200)
      {
        invalid = 0x7FFFFFFFLL;
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

    invalid = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
  return invalid;
}

+ (id)constraintsWithBss:(id)bss date:(id)date lqm:(id)lqm onEntity:(id)entity
{
  entityCopy = entity;
  lqmCopy = lqm;
  dateCopy = date;
  bssCopy = bss;
  v14 = objc_opt_new();
  bssid = [bssCopy bssid];
  [v14 setObject:bssid forKeyedSubscript:@"bssid"];

  network = [bssCopy network];
  ssid = [network ssid];
  [v14 setObject:ssid forKeyedSubscript:@"ssid"];

  v18 = [bssCopy lan];
  ipv4NetworkSignature = [v18 ipv4NetworkSignature];
  [v14 setObject:ipv4NetworkSignature forKeyedSubscript:@"ipv4NetworkSignature"];

  v20 = [bssCopy lan];

  ipv6NetworkSignature = [v20 ipv6NetworkSignature];
  [v14 setObject:ipv6NetworkSignature forKeyedSubscript:@"ipv6NetworkSignature"];

  v22 = +[UsageHelper binnedDate:as:](UsageHelper, "binnedDate:as:", dateCopy, [self timeSpan]);

  v47 = v22;
  greaterOrEqualTo = [v22 greaterOrEqualTo];
  v24 = +[WAPersistentContainer defaultBinnedDateLowerEdgePropertyName];
  [v14 setObject:greaterOrEqualTo forKeyedSubscript:v24];

  lowerThan = [v22 lowerThan];
  v26 = +[WAPersistentContainer defaultBinnedDateHigherEdgePropertyName];
  [v14 setObject:lowerThan forKeyedSubscript:v26];

  v27 = [self binnedValue:objc_msgSend(self inEdges:"checkForInvalid:constraint:on:" withLowerEdgeIncluded:{objc_msgSend(lqmCopy, "rssi"), @"rssi_ge", entityCopy), &unk_1F483E6F8, 1}];
  greaterOrEqualTo2 = [v27 greaterOrEqualTo];
  [v14 setObject:greaterOrEqualTo2 forKeyedSubscript:@"rssi_ge"];

  lowerThan2 = [v27 lowerThan];
  [v14 setObject:lowerThan2 forKeyedSubscript:@"rssi_lt"];

  v30 = [self binnedValue:objc_msgSend(lqmCopy inEdges:"rxFrames") + objc_msgSend(lqmCopy withLowerEdgeIncluded:{"txFrames"), &unk_1F483E710, 0}];
  greaterThan = [v30 greaterThan];
  [v14 setObject:greaterThan forKeyedSubscript:@"rxtxFrames_gt"];

  lowerOrEqualTo = [v30 lowerOrEqualTo];
  [v14 setObject:lowerOrEqualTo forKeyedSubscript:@"rxtxFrames_le"];

  v33 = [self checkForInvalid:objc_msgSend(lqmCopy constraint:"ccaTotal") on:{@"ccaTotal_gt", entityCopy}];
  v34 = +[WADeviceAnalyticsClient bandAsString:](WADeviceAnalyticsClient, "bandAsString:", [lqmCopy band]);
  v35 = [&unk_1F483E968 objectForKeyedSubscript:v34];
  v36 = [self binnedValue:v33 inEdges:v35 withLowerEdgeIncluded:0];

  greaterThan2 = [v36 greaterThan];
  [v14 setObject:greaterThan2 forKeyedSubscript:@"ccaTotal_gt"];

  lowerOrEqualTo2 = [v36 lowerOrEqualTo];
  [v14 setObject:lowerOrEqualTo2 forKeyedSubscript:@"ccaTotal_le"];

  v39 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(lqmCopy, "band")}];
  [v14 setObject:v39 forKeyedSubscript:@"band"];

  v40 = [MEMORY[0x1E696AD98] numberWithShort:{+[WADeviceAnalyticsClient subBandFromBand:channel:](WADeviceAnalyticsClient, "subBandFromBand:channel:", objc_msgSend(lqmCopy, "band"), objc_msgSend(lqmCopy, "channel"))}];
  [v14 setObject:v40 forKeyedSubscript:@"subband"];

  v41 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(lqmCopy, "isAnyAppInFg")}];
  [v14 setObject:v41 forKeyedSubscript:@"isAnyAppInFG"];

  v42 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(lqmCopy, "isFTactive")}];
  [v14 setObject:v42 forKeyedSubscript:@"isFTactive"];

  v43 = MEMORY[0x1E696AD98];
  isTimeSensitiveAppRunning = [lqmCopy isTimeSensitiveAppRunning];

  v45 = [v43 numberWithBool:isTimeSensitiveAppRunning];
  [v14 setObject:v45 forKeyedSubscript:@"isTimeSensitiveAppRunning"];

  return v14;
}

+ (BOOL)verifyConstraints:(id)constraints withError:(id *)error
{
  v118[1] = *MEMORY[0x1E69E9840];
  constraintsCopy = constraints;
  if (![BSSMO verifyConstraints:constraintsCopy withError:error]|| ![NetworkMO verifyConstraints:constraintsCopy withError:error]|| ![LANMO verifyConstraints:constraintsCopy withError:error])
  {
    goto LABEL_78;
  }

  v6 = +[WAPersistentContainer defaultBinnedDateLowerEdgePropertyName];
  v7 = [constraintsCopy objectForKeyedSubscript:v6];
  if (!v7)
  {

LABEL_68:
    v77 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_FAULT))
    {
      v78 = [constraintsCopy objectForKeyedSubscript:@"date_ge"];
      *buf = 136446722;
      v108 = "+[UsageMO verifyConstraints:withError:]";
      v109 = 1024;
      v110 = 131;
      v111 = 2112;
      v112 = v78;
      _os_log_impl(&dword_1C8460000, v77, OS_LOG_TYPE_FAULT, "%{public}s::%d:Invalid input. date_ge:%@", buf, 0x1Cu);
    }

    if (error)
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
  v10 = [constraintsCopy objectForKeyedSubscript:v9];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_68;
  }

  v12 = +[WAPersistentContainer defaultBinnedDateHigherEdgePropertyName];
  v13 = [constraintsCopy objectForKeyedSubscript:v12];
  if (!v13)
  {

LABEL_73:
    v79 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v79, OS_LOG_TYPE_FAULT))
    {
      v80 = +[WAPersistentContainer defaultBinnedDateHigherEdgePropertyName];
      v81 = [constraintsCopy objectForKeyedSubscript:v80];
      *buf = 136446722;
      v108 = "+[UsageMO verifyConstraints:withError:]";
      v109 = 1024;
      v110 = 133;
      v111 = 2112;
      v112 = v81;
      _os_log_impl(&dword_1C8460000, v79, OS_LOG_TYPE_FAULT, "%{public}s::%d:Invalid input. date_lt:%@", buf, 0x1Cu);
    }

    if (error)
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
  v16 = [constraintsCopy objectForKeyedSubscript:v15];
  objc_opt_class();
  v17 = objc_opt_isKindOfClass();

  if ((v17 & 1) == 0)
  {
    goto LABEL_73;
  }

  v18 = [constraintsCopy objectForKeyedSubscript:@"rssi_ge"];
  if (v18)
  {
  }

  else
  {
    v19 = [constraintsCopy objectForKeyedSubscript:@"rssi_lt"];

    if (!v19)
    {
      v53 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
      {
        v54 = [constraintsCopy objectForKeyedSubscript:@"rssi_ge"];
        v55 = [constraintsCopy objectForKeyedSubscript:@"rssi_lt"];
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

      if (error)
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

  v20 = [constraintsCopy objectForKeyedSubscript:@"rssi_ge"];
  if (v20)
  {
    v21 = v20;
    v22 = [constraintsCopy objectForKeyedSubscript:@"rssi_ge"];
    objc_opt_class();
    v23 = objc_opt_isKindOfClass();

    if ((v23 & 1) == 0)
    {
      v29 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        v30 = [constraintsCopy objectForKeyedSubscript:@"rssi_ge"];
        *buf = 136446722;
        v108 = "+[UsageMO verifyConstraints:withError:]";
        v109 = 1024;
        v110 = 138;
        v111 = 2112;
        v112 = v30;
        _os_log_impl(&dword_1C8460000, v29, OS_LOG_TYPE_FAULT, "%{public}s::%d:Invalid input. rssi_ge:%@", buf, 0x1Cu);
      }

      if (!error)
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
      *error = [v31 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9010 userInfo:v82];

LABEL_78:
      LOBYTE(error) = 0;
      goto LABEL_79;
    }
  }

  v24 = [constraintsCopy objectForKeyedSubscript:@"rssi_lt"];
  if (v24)
  {
    v25 = v24;
    v26 = [constraintsCopy objectForKeyedSubscript:@"rssi_lt"];
    objc_opt_class();
    v27 = objc_opt_isKindOfClass();

    if ((v27 & 1) == 0)
    {
      v35 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
      {
        v36 = [constraintsCopy objectForKeyedSubscript:@"rssi_lt"];
        *buf = 136446722;
        v108 = "+[UsageMO verifyConstraints:withError:]";
        v109 = 1024;
        v110 = 139;
        v111 = 2112;
        v112 = v36;
        _os_log_impl(&dword_1C8460000, v35, OS_LOG_TYPE_FAULT, "%{public}s::%d:Invalid input. rssi_lt:%@", buf, 0x1Cu);
      }

      if (!error)
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

  v28 = [constraintsCopy objectForKeyedSubscript:@"rxtxFrames_gt"];
  if (v28)
  {
  }

  else
  {
    v37 = [constraintsCopy objectForKeyedSubscript:@"rxtxFrames_le"];

    if (!v37)
    {
      v70 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_FAULT))
      {
        v71 = [constraintsCopy objectForKeyedSubscript:@"rxtxFrames_gt"];
        v72 = [constraintsCopy objectForKeyedSubscript:@"rxtxFrames_le"];
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

      if (error)
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

  v38 = [constraintsCopy objectForKeyedSubscript:@"rxtxFrames_gt"];
  if (v38 && (v39 = v38, [constraintsCopy objectForKeyedSubscript:@"rxtxFrames_gt"], v40 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v41 = objc_opt_isKindOfClass(), v40, v39, (v41 & 1) == 0))
  {
    v56 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
    {
      v57 = [constraintsCopy objectForKeyedSubscript:@"rxtxFrames_gt"];
      *buf = 136446722;
      v108 = "+[UsageMO verifyConstraints:withError:]";
      v109 = 1024;
      v110 = 143;
      v111 = 2112;
      v112 = v57;
      _os_log_impl(&dword_1C8460000, v56, OS_LOG_TYPE_FAULT, "%{public}s::%d:Invalid input. rxtxFrames_gt:%@", buf, 0x1Cu);
    }

    if (error)
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
    v42 = [constraintsCopy objectForKeyedSubscript:@"rxtxFrames_le"];
    if (v42 && (v43 = v42, [constraintsCopy objectForKeyedSubscript:@"rxtxFrames_le"], v44 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v45 = objc_opt_isKindOfClass(), v44, v43, (v45 & 1) == 0))
    {
      v68 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
      {
        v69 = [constraintsCopy objectForKeyedSubscript:@"rxtxFrames_le"];
        *buf = 136446722;
        v108 = "+[UsageMO verifyConstraints:withError:]";
        v109 = 1024;
        v110 = 144;
        v111 = 2112;
        v112 = v69;
        _os_log_impl(&dword_1C8460000, v68, OS_LOG_TYPE_FAULT, "%{public}s::%d:Invalid input. rxtxFrames_le:%@", buf, 0x1Cu);
      }

      if (error)
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
      v46 = [constraintsCopy objectForKeyedSubscript:@"band"];
      if (v46)
      {
        v47 = v46;
        v48 = [constraintsCopy objectForKeyedSubscript:@"band"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v49 = [constraintsCopy objectForKeyedSubscript:@"band"];
          integerValue = [v49 integerValue];

          if (integerValue < 3)
          {
            v58 = [constraintsCopy objectForKeyedSubscript:@"subband"];
            if (v58 && (v59 = v58, [constraintsCopy objectForKeyedSubscript:@"subband"], v60 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v61 = objc_opt_isKindOfClass(), v60, v59, (v61 & 1) != 0))
            {
              v62 = [constraintsCopy objectForKeyedSubscript:@"subband"];
              shortValue = [v62 shortValue];

              if ((shortValue - 12) <= 0xFFF4u)
              {
                v85 = WALogCategoryDeviceStoreHandle();
                if (os_log_type_enabled(v85, OS_LOG_TYPE_FAULT))
                {
                  v86 = [constraintsCopy objectForKeyedSubscript:@"subband"];
                  *buf = 136446722;
                  v108 = "+[UsageMO verifyConstraints:withError:]";
                  v109 = 1024;
                  v110 = 153;
                  v111 = 2112;
                  v112 = v86;
                  _os_log_impl(&dword_1C8460000, v85, OS_LOG_TYPE_FAULT, "%{public}s::%d:Invalid input. subband:%@", buf, 0x1Cu);
                }

                if (error)
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
                v64 = [constraintsCopy objectForKeyedSubscript:@"isAnyAppInFG"];
                if (v64 && (v65 = v64, [constraintsCopy objectForKeyedSubscript:@"isAnyAppInFG"], v66 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v67 = objc_opt_isKindOfClass(), v66, v65, (v67 & 1) != 0))
                {
                  LOBYTE(error) = 1;
                }

                else
                {
                  v75 = WALogCategoryDeviceStoreHandle();
                  if (os_log_type_enabled(v75, OS_LOG_TYPE_FAULT))
                  {
                    v76 = [constraintsCopy objectForKeyedSubscript:@"isAnyAppInFg"];
                    *buf = 136446722;
                    v108 = "+[UsageMO verifyConstraints:withError:]";
                    v109 = 1024;
                    v110 = 155;
                    v111 = 2112;
                    v112 = v76;
                    _os_log_impl(&dword_1C8460000, v75, OS_LOG_TYPE_FAULT, "%{public}s::%d:Invalid input. isAnyAppInFg:%@", buf, 0x1Cu);
                  }

                  if (error)
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
                v74 = [constraintsCopy objectForKeyedSubscript:@"band"];
                *buf = 136446722;
                v108 = "+[UsageMO verifyConstraints:withError:]";
                v109 = 1024;
                v110 = 150;
                v111 = 2112;
                v112 = v74;
                _os_log_impl(&dword_1C8460000, v73, OS_LOG_TYPE_FAULT, "%{public}s::%d:Invalid input. band:%@", buf, 0x1Cu);
              }

              if (error)
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
        v52 = [constraintsCopy objectForKeyedSubscript:@"band"];
        *buf = 136446722;
        v108 = "+[UsageMO verifyConstraints:withError:]";
        v109 = 1024;
        v110 = 147;
        v111 = 2112;
        v112 = v52;
        _os_log_impl(&dword_1C8460000, v51, OS_LOG_TYPE_FAULT, "%{public}s::%d:Invalid input. band:%@", buf, 0x1Cu);
      }

      if (error)
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
  return error;
}

+ (id)usageOf:(id)of timeSpan:(unint64_t)span around:(id)around onContainer:(id)container withError:(id *)error
{
  ofCopy = of;
  aroundCopy = around;
  containerCopy = container;
  v21 = 0;
  v13 = [UsageHelper classForTimeSpan:span withError:&v21];
  v14 = v21;
  if (v14)
  {
    v18 = v14;
    v17 = 0;
  }

  else
  {
    v15 = [(objc_class *)v13 performSelector:sel_entity];
    v16 = [UsageHelper binnedDate:aroundCopy as:span];
    v20 = 0;
    v17 = [containerCopy usageOf:ofCopy inUsageTable:v15 forDateSpan:v16 withSorting:MEMORY[0x1E695E0F0] withError:&v20];
    v18 = v20;
  }

  return v17;
}

+ (id)referenceDateFor:(unint64_t)for timeSpan:(unint64_t)span withError:(id *)error
{
  errorCopy = error;
  v21[1] = *MEMORY[0x1E69E9840];
  v7 = [UsageHelper classForTimeSpan:span withError:error];
  if (!v7)
  {
    goto LABEL_9;
  }

  if (for == 1)
  {
    v8 = [(objc_class *)v7 performSelector:sel_jumpBackOneSpan];
    goto LABEL_6;
  }

  if (!for)
  {
    v8 = [MEMORY[0x1E695DF00] now];
LABEL_6:
    errorCopy = v8;
    goto LABEL_10;
  }

  if (errorCopy)
  {
    v9 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A588];
    v21[0] = @"WAErrorCodeInvalidInput";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    *errorCopy = [v9 errorWithDomain:@"com.apple.wifi.analytics.errordomain" code:9035 userInfo:v10];

LABEL_9:
    errorCopy = 0;
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
    v19 = errorCopy;
    _os_log_impl(&dword_1C8460000, v11, OS_LOG_TYPE_DEBUG, "%{public}s::%d:Returning: %@", &v14, 0x1Cu);
  }

  v12 = *MEMORY[0x1E69E9840];

  return errorCopy;
}

@end