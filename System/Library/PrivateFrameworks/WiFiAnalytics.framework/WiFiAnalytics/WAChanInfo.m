@interface WAChanInfo
+ (id)chanInfoWithObjectHavingChInfo:(id)a3 withPrefix:(id)a4;
+ (int)simplifiedChannelFlags:(signed __int16)a3;
- (id)chanInfoDictionary;
@end

@implementation WAChanInfo

+ (id)chanInfoWithObjectHavingChInfo:(id)a3 withPrefix:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x1E696AEC0];
  v8 = [@"channel" substringFromIndex:1];
  v9 = [v7 stringWithFormat:@"%@%@", v6, v8];

  v10 = MEMORY[0x1E696AEC0];
  v11 = [@"channelFlags" substringFromIndex:1];
  v12 = [v10 stringWithFormat:@"%@%@", v6, v11];

  v13 = [v5 valueForKey:v9];
  if (!v13)
  {
    v13 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v24 = "+[WAChanInfo chanInfoWithObjectHavingChInfo:withPrefix:]";
      v25 = 1024;
      v26 = 1583;
      v27 = 2112;
      v28 = v5;
      v29 = 2112;
      v30 = v9;
LABEL_17:
      _os_log_impl(&dword_1C8460000, v13, OS_LOG_TYPE_FAULT, "%{public}s::%d:object %@ does not contain a value for %@", buf, 0x26u);
    }

LABEL_21:

    v18 = 0;
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v21 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      *buf = 136447234;
      v24 = "+[WAChanInfo chanInfoWithObjectHavingChInfo:withPrefix:]";
      v25 = 1024;
      v26 = 1584;
      v27 = 2112;
      v28 = v5;
      v29 = 2112;
      v30 = v9;
      v31 = 2112;
      v32 = v13;
      _os_log_impl(&dword_1C8460000, v21, OS_LOG_TYPE_FAULT, "%{public}s::%d:object %@ contains a value for %@ that is not a number %@", buf, 0x30u);
    }

    goto LABEL_21;
  }

  v14 = [v13 shortValue];
  v15 = [v5 valueForKey:v12];

  if (!v15)
  {
    v13 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v24 = "+[WAChanInfo chanInfoWithObjectHavingChInfo:withPrefix:]";
      v25 = 1024;
      v26 = 1588;
      v27 = 2112;
      v28 = v5;
      v29 = 2112;
      v30 = v12;
      goto LABEL_17;
    }

    goto LABEL_21;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v22 = WALogCategoryDeviceStoreHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      *buf = 136447234;
      v24 = "+[WAChanInfo chanInfoWithObjectHavingChInfo:withPrefix:]";
      v25 = 1024;
      v26 = 1589;
      v27 = 2112;
      v28 = v5;
      v29 = 2112;
      v30 = v12;
      v31 = 2112;
      v32 = v15;
      _os_log_impl(&dword_1C8460000, v22, OS_LOG_TYPE_FAULT, "%{public}s::%d:object %@ contains a value for %@ that is not a number %@", buf, 0x30u);
    }

    v13 = v15;
    goto LABEL_21;
  }

  v16 = [v15 intValue];

  v17 = objc_opt_new();
  v18 = v17;
  if (v17)
  {
    [v17 setChannel:v14];
    [v18 setBand:{+[WADeviceAnalyticsClient bandFromChannelFlags:](WADeviceAnalyticsClient, "bandFromChannelFlags:", v16)}];
    [v18 setSimplifiedChannelFlags:{objc_msgSend(objc_opt_class(), "simplifiedChannelFlags:", objc_msgSend(v18, "band"))}];
  }

LABEL_7:

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (int)simplifiedChannelFlags:(signed __int16)a3
{
  if (a3 == 1)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0x2000;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return 8;
  }
}

- (id)chanInfoDictionary
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = @"channel";
  v3 = [MEMORY[0x1E696AD98] numberWithShort:self->_channel];
  v9[0] = v3;
  v8[1] = @"channelFlags";
  v4 = [MEMORY[0x1E696AD98] numberWithInt:self->_simplifiedChannelFlags];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

@end