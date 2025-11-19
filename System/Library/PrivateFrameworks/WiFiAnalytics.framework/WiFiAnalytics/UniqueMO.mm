@interface UniqueMO
+ (id)defaultPropertiesToFetch;
+ (id)getOrCreateBSS:(id)a3 andNetwork:(id)a4 withHasUpdatedNetwork:(BOOL *)a5 on:(id)a6;
- (id)description;
@end

@implementation UniqueMO

+ (id)defaultPropertiesToFetch
{
  v2 = MEMORY[0x1E695DFA8];
  v3 = [a1 entity];
  v4 = [v3 attributesByName];
  v5 = [v4 allKeys];
  v6 = [v2 setWithArray:v5];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(UniqueMO *)self entity];
  v5 = [v4 name];
  v6 = [WAPersistentContainer getConstraintsValues:self];
  v7 = [v6 description];
  v8 = [v3 stringWithFormat:@"%@ for %@", v5, v7];

  return v8;
}

+ (id)getOrCreateBSS:(id)a3 andNetwork:(id)a4 withHasUpdatedNetwork:(BOOL *)a5 on:(id)a6
{
  v55[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  if (a5)
  {
    *a5 = 0;
  }

  v12 = [BSSMO formattedMACAddressNotation:v9 as:6];
  v13 = WALogCategoryDeviceStoreHandle();
  v14 = v13;
  if (!v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446722;
      v43 = "+[UniqueMO getOrCreateBSS:andNetwork:withHasUpdatedNetwork:on:]";
      v44 = 1024;
      v45 = 52;
      v46 = 2112;
      v47 = v9;
      _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_FAULT, "%{public}s::%d:Invalid bssid: %@", buf, 0x1Cu);
    }

    goto LABEL_28;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446722;
    v43 = "+[UniqueMO getOrCreateBSS:andNetwork:withHasUpdatedNetwork:on:]";
    v44 = 1024;
    v45 = 54;
    v46 = 2112;
    v47 = v12;
    _os_log_impl(&dword_1C8460000, v14, OS_LOG_TYPE_DEBUG, "%{public}s::%d:finding unique BSS for %@", buf, 0x1Cu);
  }

  v15 = +[BSSMO entity];
  v54 = @"bssid";
  v55[0] = v12;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:&v54 count:1];
  v17 = [v11 uniqueObjectFor:v15 withConstraints:v16 allowCreate:1 prefetchProperties:&unk_1F483E938];

  v18 = WALogCategoryDeviceStoreHandle();
  v19 = v18;
  if (!v17)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446722;
      v43 = "+[UniqueMO getOrCreateBSS:andNetwork:withHasUpdatedNetwork:on:]";
      v44 = 1024;
      v45 = 59;
      v46 = 2112;
      v47 = v12;
      _os_log_impl(&dword_1C8460000, v19, OS_LOG_TYPE_FAULT, "%{public}s::%d:Unable to obtain BSSMO for %@", buf, 0x1Cu);
    }

LABEL_28:
    v22 = 0;
    v17 = 0;
    goto LABEL_21;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446722;
    v43 = "+[UniqueMO getOrCreateBSS:andNetwork:withHasUpdatedNetwork:on:]";
    v44 = 1024;
    v45 = 61;
    v46 = 2112;
    v47 = v10;
    _os_log_impl(&dword_1C8460000, v19, OS_LOG_TYPE_DEBUG, "%{public}s::%d:finding unique Network for %@", buf, 0x1Cu);
  }

  v20 = +[NetworkMO entity];
  v52 = @"ssid";
  v53 = v10;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
  v22 = [v11 uniqueObjectFor:v20 withConstraints:v21 allowCreate:1 prefetchProperties:&unk_1F483E950];

  if (v22)
  {
    v23 = [v17 network];

    if (v23)
    {
      v41 = a5;
      v24 = [v17 network];
      v25 = [v24 ssid];
      [v22 ssid];
      v26 = v12;
      v27 = v11;
      v28 = v10;
      v30 = v29 = v9;
      v31 = [v25 isEqualToString:v30];

      v9 = v29;
      v10 = v28;
      v11 = v27;
      v12 = v26;

      if (v31)
      {
LABEL_20:
        [v17 setNetwork:v22];
        goto LABEL_21;
      }

      if (v41)
      {
        *v41 = 1;
      }

      v32 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [v17 bssid];
        v34 = [v17 network];
        v35 = [v34 ssid];
        *buf = 136447234;
        v43 = "+[UniqueMO getOrCreateBSS:andNetwork:withHasUpdatedNetwork:on:]";
        v44 = 1024;
        v45 = 74;
        v46 = 2112;
        v47 = v33;
        v48 = 2112;
        v49 = v35;
        v50 = 2112;
        v51 = v10;
        _os_log_impl(&dword_1C8460000, v32, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:BSS %@ was known to belong to network %@, but now belongs to %@", buf, 0x30u);

LABEL_18:
      }
    }

    else
    {
      v32 = WALogCategoryDeviceStoreHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [v17 bssid];
        v36 = [v22 ssid];
        *buf = 136446978;
        v43 = "+[UniqueMO getOrCreateBSS:andNetwork:withHasUpdatedNetwork:on:]";
        v44 = 1024;
        v45 = 69;
        v46 = 2112;
        v47 = v33;
        v48 = 2112;
        v49 = v36;
        _os_log_impl(&dword_1C8460000, v32, OS_LOG_TYPE_DEFAULT, "%{public}s::%d:Added BSS[%@] to Network[%@]", buf, 0x26u);

        goto LABEL_18;
      }
    }

    goto LABEL_20;
  }

  v40 = WALogCategoryDeviceStoreHandle();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
  {
    *buf = 136446722;
    v43 = "+[UniqueMO getOrCreateBSS:andNetwork:withHasUpdatedNetwork:on:]";
    v44 = 1024;
    v45 = 66;
    v46 = 2112;
    v47 = v10;
    _os_log_impl(&dword_1C8460000, v40, OS_LOG_TYPE_FAULT, "%{public}s::%d:Unable to obtain NetworkMO for %@", buf, 0x1Cu);
  }

  v22 = 0;
LABEL_21:
  v37 = v17;

  v38 = *MEMORY[0x1E69E9840];
  return v17;
}

@end