@interface RCUserSegmentationConfiguration
+ (id)defaultConfiguration;
+ (id)userSegmentationConfigurationWithConfigDict:(id)a3 environment:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
- (RCUserSegmentationConfiguration)initWithCoder:(id)a3;
- (RCUserSegmentationConfiguration)initWithForegroundRefreshRate:(unint64_t)a3 backgroundRefreshRate:(unint64_t)a4 modThreshold:(unint64_t)a5 modMax:(unint64_t)a6 endpointURLString:(id)a7 widgetEndpointURLString:(id)a8 todayEndpointURLString:(id)a9;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RCUserSegmentationConfiguration

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(RCUserSegmentationConfiguration *)self foregroundRefreshRate];
  v6 = [(RCUserSegmentationConfiguration *)self backgroundRefreshRate];
  v7 = [(RCUserSegmentationConfiguration *)self modThreshold];
  v8 = [(RCUserSegmentationConfiguration *)self modMax];
  v9 = [(RCUserSegmentationConfiguration *)self endpointURLString];
  v10 = [(RCUserSegmentationConfiguration *)self widgetEndpointURLString];
  v11 = [(RCUserSegmentationConfiguration *)self todayEndpointURLString];
  v12 = [v3 stringWithFormat:@"<%@: %p foregroundRefreshRate: %lu\n backgroundRefreshRate: %lu\n modThreshold: %lu\n modMax: %lu endpointURL: %@ widgetEndpointURL: %@ todayEndpointURL: %@", v4, self, v5, v6, v7, v8, v9, v10, v11];;

  return v12;
}

+ (id)defaultConfiguration
{
  v2 = [[RCUserSegmentationConfiguration alloc] initWithForegroundRefreshRate:300 backgroundRefreshRate:3600 modThreshold:1000 modMax:1000 endpointURLString:0 widgetEndpointURLString:0 todayEndpointURLString:0];

  return v2;
}

+ (id)userSegmentationConfigurationWithConfigDict:(id)a3 environment:(unint64_t)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = RCJSONIntegerValue(v5, @"appConfigRefreshRate", 300);
  RCJSONArrayValue(v5, @"endpointConfigs");
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = v33 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v8)
  {
    v27 = v6;
    v9 = *v31;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        v12 = RCJSONStringValue(v11, @"environment", 0);
        v13 = RCUserSegmentationEnvironmentForEnvironmentString(v12);

        if (v13 == a4)
        {
          v29 = RCJSONStringValue(v11, @"configurationEndpointUrl", 0);
          v8 = RCJSONStringValue(v11, @"widgetConfigurationEndpointUrl", 0);
          v14 = RCJSONStringValue(v11, @"todayConfigurationEndpointUrl", 0);
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v30 objects:v42 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }

    v14 = 0;
    v29 = 0;
LABEL_11:
    v6 = v27;
  }

  else
  {
    v14 = 0;
    v29 = 0;
  }

  v15 = RCJSONDictionaryValue(v5, @"userSegmentationApiConfiguration");
  v16 = v15;
  if (v15)
  {
    v28 = RCJSONIntegerValue(v15, @"userSegmentationApiModMax", 1000);
    v17 = RCJSONIntegerValue(v16, @"userSegmentationApiModThreshold", 1000);
    v6 = RCJSONIntegerValue(v16, @"userSegmentationRefreshRate", v6);
    v18 = RCJSONIntegerValue(v16, @"userSegmentationBackgroundRefreshRate", 3600);
  }

  else
  {
    v18 = 3600;
    v28 = 1000;
    v17 = 1000;
  }

  v19 = RCJSONDictionaryValue(v5, @"widgetConfiguration");
  v20 = v19;
  if (v19)
  {
    v21 = RCJSONIntegerValue(v19, @"user_segmentation_foreground_refresh_rate", v6);
    v18 = RCJSONIntegerValue(v20, @"user_segmentation_refresh_rate", v21);
    v6 = v18;
  }

  v22 = RCSharedLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218752;
    v35 = v6;
    v36 = 2048;
    v37 = v18;
    v38 = 2048;
    v39 = v28;
    v40 = 2048;
    v41 = v17;
    _os_log_impl(&dword_2179FC000, v22, OS_LOG_TYPE_DEFAULT, "creating user segmentation config with foreground refresh rate: %lu background refresh rate: %lu modMax: %lu modThreshold: %lu", buf, 0x2Au);
  }

  v23 = RCSharedLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v35 = v29;
    v36 = 2112;
    v37 = v8;
    v38 = 2112;
    v39 = v14;
    _os_log_impl(&dword_2179FC000, v23, OS_LOG_TYPE_DEFAULT, "creating user segmentation config with endpointURL: %@ widgetEndpointURL: %@ todayEndpointURL: %@", buf, 0x20u);
  }

  v24 = [[RCUserSegmentationConfiguration alloc] initWithForegroundRefreshRate:v6 backgroundRefreshRate:v18 modThreshold:v17 modMax:v28 endpointURLString:v29 widgetEndpointURLString:v8 todayEndpointURLString:v14];
  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (RCUserSegmentationConfiguration)initWithForegroundRefreshRate:(unint64_t)a3 backgroundRefreshRate:(unint64_t)a4 modThreshold:(unint64_t)a5 modMax:(unint64_t)a6 endpointURLString:(id)a7 widgetEndpointURLString:(id)a8 todayEndpointURLString:(id)a9
{
  v15 = a7;
  v16 = a8;
  v17 = a9;
  v27.receiver = self;
  v27.super_class = RCUserSegmentationConfiguration;
  v18 = [(RCUserSegmentationConfiguration *)&v27 init];
  v19 = v18;
  if (v18)
  {
    v18->_foregroundRefreshRate = a3;
    v18->_backgroundRefreshRate = a4;
    v18->_modThreshold = a5;
    v18->_modMax = a6;
    v20 = [v15 copy];
    endpointURLString = v19->_endpointURLString;
    v19->_endpointURLString = v20;

    v22 = [v16 copy];
    widgetEndpointURLString = v19->_widgetEndpointURLString;
    v19->_widgetEndpointURLString = v22;

    v24 = [v17 copy];
    todayEndpointURLString = v19->_todayEndpointURLString;
    v19->_todayEndpointURLString = v24;
  }

  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(RCUserSegmentationConfiguration *)self foregroundRefreshRate];
    if (v6 == [v5 foregroundRefreshRate] && (v7 = -[RCUserSegmentationConfiguration backgroundRefreshRate](self, "backgroundRefreshRate"), v7 == objc_msgSend(v5, "backgroundRefreshRate")) && (v8 = -[RCUserSegmentationConfiguration modThreshold](self, "modThreshold"), v8 == objc_msgSend(v5, "modThreshold")) && (v9 = -[RCUserSegmentationConfiguration modMax](self, "modMax"), v9 == objc_msgSend(v5, "modMax")))
    {
      v10 = [(RCUserSegmentationConfiguration *)self endpointURLString];
      v11 = [v5 endpointURLString];
      if ([v10 isEqualToString:v11])
      {
        v12 = [(RCUserSegmentationConfiguration *)self widgetEndpointURLString];
        v13 = [v5 widgetEndpointURLString];
        if ([v12 isEqualToString:v13])
        {
          v14 = [(RCUserSegmentationConfiguration *)self todayEndpointURLString];
          v15 = [v5 todayEndpointURLString];
          v16 = [v14 isEqualToString:v15];
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RCUserSegmentationConfiguration foregroundRefreshRate](self, "foregroundRefreshRate")}];
  v4 = [v3 hash];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RCUserSegmentationConfiguration backgroundRefreshRate](self, "backgroundRefreshRate")}];
  v6 = [v5 hash] ^ v4;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RCUserSegmentationConfiguration modThreshold](self, "modThreshold")}];
  v8 = [v7 hash];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RCUserSegmentationConfiguration modMax](self, "modMax")}];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(RCUserSegmentationConfiguration *)self endpointURLString];
  v12 = [v11 hash];
  v13 = [(RCUserSegmentationConfiguration *)self widgetEndpointURLString];
  v14 = v12 ^ [v13 hash];
  v15 = [(RCUserSegmentationConfiguration *)self todayEndpointURLString];
  v16 = v14 ^ [v15 hash];

  return v10 ^ v16;
}

- (RCUserSegmentationConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = RCUserSegmentationConfiguration;
  v5 = [(RCUserSegmentationConfiguration *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"foregroundRefreshRate"];
    v5->_foregroundRefreshRate = [v6 unsignedIntegerValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backgroundRefreshRate"];
    v5->_backgroundRefreshRate = [v7 unsignedIntegerValue];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modThreshold"];
    v5->_modThreshold = [v8 unsignedIntegerValue];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modMax"];
    v5->_modMax = [v9 unsignedIntegerValue];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endpointURL"];
    endpointURLString = v5->_endpointURLString;
    v5->_endpointURLString = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"widgetEndpointURL"];
    widgetEndpointURLString = v5->_widgetEndpointURLString;
    v5->_widgetEndpointURLString = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"todayEndpointURL"];
    todayEndpointURLString = v5->_todayEndpointURLString;
    v5->_todayEndpointURLString = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithUnsignedInteger:{-[RCUserSegmentationConfiguration foregroundRefreshRate](self, "foregroundRefreshRate")}];
  [v5 encodeObject:v6 forKey:@"foregroundRefreshRate"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RCUserSegmentationConfiguration backgroundRefreshRate](self, "backgroundRefreshRate")}];
  [v5 encodeObject:v7 forKey:@"backgroundRefreshRate"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RCUserSegmentationConfiguration modThreshold](self, "modThreshold")}];
  [v5 encodeObject:v8 forKey:@"modThreshold"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RCUserSegmentationConfiguration modMax](self, "modMax")}];
  [v5 encodeObject:v9 forKey:@"modMax"];

  v10 = [(RCUserSegmentationConfiguration *)self endpointURLString];
  [v5 encodeObject:v10 forKey:@"endpointURL"];

  v11 = [(RCUserSegmentationConfiguration *)self widgetEndpointURLString];
  [v5 encodeObject:v11 forKey:@"widgetEndpointURL"];

  v12 = [(RCUserSegmentationConfiguration *)self todayEndpointURLString];
  [v5 encodeObject:v12 forKey:@"todayEndpointURL"];
}

@end