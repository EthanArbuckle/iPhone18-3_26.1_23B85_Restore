@interface UABestAppSuggestion
- (BOOL)isEqual:(id)a3;
- (UABestAppSuggestion)initWithBundleIdentifier:(id)a3 uuid:(id)a4 activityType:(id)a5 dynamicIdentifier:(id)a6 lastUpdateTime:(id)a7 lastActiveTime:(id)a8 type:(unint64_t)a9 deviceName:(id)a10 deviceIdentifier:(id)a11 deviceType:(id)a12 options:(id)a13 isActive:(BOOL)a14;
- (UABestAppSuggestion)initWithCoder:(id)a3;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UABestAppSuggestion

- (UABestAppSuggestion)initWithBundleIdentifier:(id)a3 uuid:(id)a4 activityType:(id)a5 dynamicIdentifier:(id)a6 lastUpdateTime:(id)a7 lastActiveTime:(id)a8 type:(unint64_t)a9 deviceName:(id)a10 deviceIdentifier:(id)a11 deviceType:(id)a12 options:(id)a13 isActive:(BOOL)a14
{
  v19 = a3;
  v20 = a4;
  obj = a5;
  v21 = a5;
  v22 = v20;
  v52 = v21;
  v53 = a6;
  v23 = a7;
  v24 = a8;
  v25 = a10;
  v26 = a11;
  v27 = a12;
  v28 = a13;
  v29 = [(UABestAppSuggestion *)self init];
  if (v29)
  {
    v30 = [v28 copy];
    options = v29->_options;
    v29->_options = v30;

    v29->_type = a9;
    if (v19)
    {
      v32 = v19;
      v33 = [v19 copy];
    }

    else
    {
      v32 = 0;
      v33 = 0;
    }

    bundleIdentifier = v29->_bundleIdentifier;
    v29->_bundleIdentifier = v33;

    if (v22)
    {
      v35 = v22;
    }

    else
    {
      v35 = objc_alloc_init(MEMORY[0x277CCAD78]);
    }

    uniqueIdentifier = v29->_uniqueIdentifier;
    v29->_uniqueIdentifier = v35;

    objc_storeStrong(&v29->_activityType, obj);
    v37 = [v53 copy];
    dynamicIdentifier = v29->_dynamicIdentifier;
    v29->_dynamicIdentifier = v37;

    if (v23)
    {
      v39 = v23;
    }

    else
    {
      v39 = objc_alloc_init(MEMORY[0x277CBEAA8]);
    }

    lastUpdateTime = v29->_lastUpdateTime;
    v29->_lastUpdateTime = v39;

    if (v24)
    {
      v41 = v24;
    }

    else
    {
      v41 = objc_alloc_init(MEMORY[0x277CBEAA8]);
    }

    lastActiveTime = v29->_lastActiveTime;
    v29->_lastActiveTime = v41;

    v29->_confidence = 0.75;
    v43 = [v25 copy];
    originatingDeviceName = v29->_originatingDeviceName;
    v29->_originatingDeviceName = v43;

    v45 = [v26 copy];
    originatingDeviceIdentifier = v29->_originatingDeviceIdentifier;
    v29->_originatingDeviceIdentifier = v45;

    v47 = [v27 copy];
    originatingDeviceType = v29->_originatingDeviceType;
    v29->_originatingDeviceType = v47;

    v29->_isActive = a14;
    v19 = v32;
  }

  return v29;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = suggestedActionTypeString(self->_type);
  v5 = [(NSUUID *)self->_uniqueIdentifier UUIDString];
  originatingDeviceIdentifier = self->_originatingDeviceIdentifier;
  v7 = [v3 stringWithFormat:@"UABestAppSuggestion(%@ %@ %@ %@:%@ %@ from:%@/%@/%@)", v4, v5, self->_bundleIdentifier, self->_activityType, self->_dynamicIdentifier, self->_lastActiveTime, self->_originatingDeviceName, originatingDeviceIdentifier, self->_originatingDeviceType];

  return v7;
}

- (id)debugDescription
{
  v3 = [(UABestAppSuggestion *)self options];

  if (v3 && (v4 = MEMORY[0x277CCAAA0], -[UABestAppSuggestion options](self, "options"), v5 = objc_claimAutoreleasedReturnValue(), [v4 dataWithJSONObject:v5 options:0 error:0], v6 = objc_claimAutoreleasedReturnValue(), v5, v6))
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v6 encoding:4];
  }

  else
  {
    v7 = &stru_283A5A2C8;
  }

  v8 = MEMORY[0x277CCACA8];
  v9 = [(UABestAppSuggestion *)self bundleIdentifier];
  v10 = [(UABestAppSuggestion *)self uniqueIdentifier];
  v11 = [v10 UUIDString];
  v12 = [(UABestAppSuggestion *)self lastUpdateTime];
  v13 = [v8 stringWithFormat:@"BestApp: %@ %@ %@ %d %@", v9, v11, v12, -[UABestAppSuggestion type](self, "type"), v7];

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v8 = 1;
  }

  else if (v4 && (v10.receiver = self, v10.super_class = UABestAppSuggestion, [(UABestAppSuggestion *)&v10 isEqual:v4]))
  {
    uniqueIdentifier = self->_uniqueIdentifier;
    v7 = [(UABestAppSuggestion *)v5 uniqueIdentifier];
    v8 = [(NSUUID *)uniqueIdentifier isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (UABestAppSuggestion)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = UABestAppSuggestion;
  v5 = [(UABestAppSuggestion *)&v25 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdateTime"];
    lastUpdateTime = v5->_lastUpdateTime;
    v5->_lastUpdateTime = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastActiveTime"];
    lastActiveTime = v5->_lastActiveTime;
    v5->_lastActiveTime = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originatingDeviceIdentifier"];
    originatingDeviceIdentifier = v5->_originatingDeviceIdentifier;
    v5->_originatingDeviceIdentifier = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originatingDeviceName"];
    originatingDeviceName = v5->_originatingDeviceName;
    v5->_originatingDeviceName = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originatingDeviceType"];
    originatingDeviceType = v5->_originatingDeviceType;
    v5->_originatingDeviceType = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activityType"];
    activityType = v5->_activityType;
    v5->_activityType = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dynamicIdentifier"];
    dynamicIdentifier = v5->_dynamicIdentifier;
    v5->_dynamicIdentifier = v22;

    v5->_isActive = [v4 decodeBoolForKey:@"isActive"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v13 = a3;
  v4 = [(UABestAppSuggestion *)self bundleIdentifier];
  [v13 encodeObject:v4 forKey:@"bundleIdentifier"];

  v5 = [(UABestAppSuggestion *)self lastUpdateTime];
  [v13 encodeObject:v5 forKey:@"lastUpdateTime"];

  v6 = [(UABestAppSuggestion *)self lastActiveTime];
  [v13 encodeObject:v6 forKey:@"lastActiveTime"];

  v7 = [(UABestAppSuggestion *)self originatingDeviceIdentifier];
  [v13 encodeObject:v7 forKey:@"originatingDeviceIdentifier"];

  v8 = [(UABestAppSuggestion *)self originatingDeviceName];
  [v13 encodeObject:v8 forKey:@"originatingDeviceName"];

  v9 = [(UABestAppSuggestion *)self originatingDeviceType];
  [v13 encodeObject:v9 forKey:@"originatingDeviceType"];

  v10 = [(UABestAppSuggestion *)self uniqueIdentifier];
  [v13 encodeObject:v10 forKey:@"uniqueIdentifier"];

  v11 = [(UABestAppSuggestion *)self activityType];
  [v13 encodeObject:v11 forKey:@"activityType"];

  v12 = [(UABestAppSuggestion *)self dynamicIdentifier];
  [v13 encodeObject:v12 forKey:@"dynamicIdentifier"];

  [v13 encodeBool:-[UABestAppSuggestion isActive](self forKey:{"isActive"), @"isActive"}];
}

@end