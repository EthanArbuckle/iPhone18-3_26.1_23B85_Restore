@interface UABestAppSuggestion
- (BOOL)isEqual:(id)equal;
- (UABestAppSuggestion)initWithBundleIdentifier:(id)identifier uuid:(id)uuid activityType:(id)type dynamicIdentifier:(id)dynamicIdentifier lastUpdateTime:(id)time lastActiveTime:(id)activeTime type:(unint64_t)a9 deviceName:(id)self0 deviceIdentifier:(id)self1 deviceType:(id)self2 options:(id)self3 isActive:(BOOL)self4;
- (UABestAppSuggestion)initWithCoder:(id)coder;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UABestAppSuggestion

- (UABestAppSuggestion)initWithBundleIdentifier:(id)identifier uuid:(id)uuid activityType:(id)type dynamicIdentifier:(id)dynamicIdentifier lastUpdateTime:(id)time lastActiveTime:(id)activeTime type:(unint64_t)a9 deviceName:(id)self0 deviceIdentifier:(id)self1 deviceType:(id)self2 options:(id)self3 isActive:(BOOL)self4
{
  identifierCopy = identifier;
  uuidCopy = uuid;
  obj = type;
  typeCopy = type;
  v22 = uuidCopy;
  v52 = typeCopy;
  dynamicIdentifierCopy = dynamicIdentifier;
  timeCopy = time;
  activeTimeCopy = activeTime;
  nameCopy = name;
  deviceIdentifierCopy = deviceIdentifier;
  deviceTypeCopy = deviceType;
  optionsCopy = options;
  v29 = [(UABestAppSuggestion *)self init];
  if (v29)
  {
    v30 = [optionsCopy copy];
    options = v29->_options;
    v29->_options = v30;

    v29->_type = a9;
    if (identifierCopy)
    {
      v32 = identifierCopy;
      v33 = [identifierCopy copy];
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
    v37 = [dynamicIdentifierCopy copy];
    dynamicIdentifier = v29->_dynamicIdentifier;
    v29->_dynamicIdentifier = v37;

    if (timeCopy)
    {
      v39 = timeCopy;
    }

    else
    {
      v39 = objc_alloc_init(MEMORY[0x277CBEAA8]);
    }

    lastUpdateTime = v29->_lastUpdateTime;
    v29->_lastUpdateTime = v39;

    if (activeTimeCopy)
    {
      v41 = activeTimeCopy;
    }

    else
    {
      v41 = objc_alloc_init(MEMORY[0x277CBEAA8]);
    }

    lastActiveTime = v29->_lastActiveTime;
    v29->_lastActiveTime = v41;

    v29->_confidence = 0.75;
    v43 = [nameCopy copy];
    originatingDeviceName = v29->_originatingDeviceName;
    v29->_originatingDeviceName = v43;

    v45 = [deviceIdentifierCopy copy];
    originatingDeviceIdentifier = v29->_originatingDeviceIdentifier;
    v29->_originatingDeviceIdentifier = v45;

    v47 = [deviceTypeCopy copy];
    originatingDeviceType = v29->_originatingDeviceType;
    v29->_originatingDeviceType = v47;

    v29->_isActive = active;
    identifierCopy = v32;
  }

  return v29;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = suggestedActionTypeString(self->_type);
  uUIDString = [(NSUUID *)self->_uniqueIdentifier UUIDString];
  originatingDeviceIdentifier = self->_originatingDeviceIdentifier;
  v7 = [v3 stringWithFormat:@"UABestAppSuggestion(%@ %@ %@ %@:%@ %@ from:%@/%@/%@)", v4, uUIDString, self->_bundleIdentifier, self->_activityType, self->_dynamicIdentifier, self->_lastActiveTime, self->_originatingDeviceName, originatingDeviceIdentifier, self->_originatingDeviceType];

  return v7;
}

- (id)debugDescription
{
  options = [(UABestAppSuggestion *)self options];

  if (options && (v4 = MEMORY[0x277CCAAA0], -[UABestAppSuggestion options](self, "options"), v5 = objc_claimAutoreleasedReturnValue(), [v4 dataWithJSONObject:v5 options:0 error:0], v6 = objc_claimAutoreleasedReturnValue(), v5, v6))
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v6 encoding:4];
  }

  else
  {
    v7 = &stru_283A5A2C8;
  }

  v8 = MEMORY[0x277CCACA8];
  bundleIdentifier = [(UABestAppSuggestion *)self bundleIdentifier];
  uniqueIdentifier = [(UABestAppSuggestion *)self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];
  lastUpdateTime = [(UABestAppSuggestion *)self lastUpdateTime];
  v13 = [v8 stringWithFormat:@"BestApp: %@ %@ %@ %d %@", bundleIdentifier, uUIDString, lastUpdateTime, -[UABestAppSuggestion type](self, "type"), v7];

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else if (equalCopy && (v10.receiver = self, v10.super_class = UABestAppSuggestion, [(UABestAppSuggestion *)&v10 isEqual:equalCopy]))
  {
    uniqueIdentifier = self->_uniqueIdentifier;
    uniqueIdentifier = [(UABestAppSuggestion *)v5 uniqueIdentifier];
    v8 = [(NSUUID *)uniqueIdentifier isEqual:uniqueIdentifier];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (UABestAppSuggestion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = UABestAppSuggestion;
  v5 = [(UABestAppSuggestion *)&v25 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdateTime"];
    lastUpdateTime = v5->_lastUpdateTime;
    v5->_lastUpdateTime = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastActiveTime"];
    lastActiveTime = v5->_lastActiveTime;
    v5->_lastActiveTime = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originatingDeviceIdentifier"];
    originatingDeviceIdentifier = v5->_originatingDeviceIdentifier;
    v5->_originatingDeviceIdentifier = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originatingDeviceName"];
    originatingDeviceName = v5->_originatingDeviceName;
    v5->_originatingDeviceName = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originatingDeviceType"];
    originatingDeviceType = v5->_originatingDeviceType;
    v5->_originatingDeviceType = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activityType"];
    activityType = v5->_activityType;
    v5->_activityType = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dynamicIdentifier"];
    dynamicIdentifier = v5->_dynamicIdentifier;
    v5->_dynamicIdentifier = v22;

    v5->_isActive = [coderCopy decodeBoolForKey:@"isActive"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bundleIdentifier = [(UABestAppSuggestion *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];

  lastUpdateTime = [(UABestAppSuggestion *)self lastUpdateTime];
  [coderCopy encodeObject:lastUpdateTime forKey:@"lastUpdateTime"];

  lastActiveTime = [(UABestAppSuggestion *)self lastActiveTime];
  [coderCopy encodeObject:lastActiveTime forKey:@"lastActiveTime"];

  originatingDeviceIdentifier = [(UABestAppSuggestion *)self originatingDeviceIdentifier];
  [coderCopy encodeObject:originatingDeviceIdentifier forKey:@"originatingDeviceIdentifier"];

  originatingDeviceName = [(UABestAppSuggestion *)self originatingDeviceName];
  [coderCopy encodeObject:originatingDeviceName forKey:@"originatingDeviceName"];

  originatingDeviceType = [(UABestAppSuggestion *)self originatingDeviceType];
  [coderCopy encodeObject:originatingDeviceType forKey:@"originatingDeviceType"];

  uniqueIdentifier = [(UABestAppSuggestion *)self uniqueIdentifier];
  [coderCopy encodeObject:uniqueIdentifier forKey:@"uniqueIdentifier"];

  activityType = [(UABestAppSuggestion *)self activityType];
  [coderCopy encodeObject:activityType forKey:@"activityType"];

  dynamicIdentifier = [(UABestAppSuggestion *)self dynamicIdentifier];
  [coderCopy encodeObject:dynamicIdentifier forKey:@"dynamicIdentifier"];

  [coderCopy encodeBool:-[UABestAppSuggestion isActive](self forKey:{"isActive"), @"isActive"}];
}

@end