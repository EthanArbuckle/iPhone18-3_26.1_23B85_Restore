@interface WKUIBlastDoorDataSource
+ (id)dataFromSourceFromData:(id)data;
- (WKUIBlastDoorDataSource)initWithActivityType:(unint64_t)type isIndoor:(BOOL)indoor configurationType:(int64_t)configurationType configurationName:(id)name goalTypeIdentifier:(unint64_t)identifier;
- (WKUIBlastDoorDataSource)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WKUIBlastDoorDataSource

+ (id)dataFromSourceFromData:(id)data
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v4 = [NLWorkoutConfigurationImageGenerator createBlastDoorDataSourceFromData:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

- (WKUIBlastDoorDataSource)initWithActivityType:(unint64_t)type isIndoor:(BOOL)indoor configurationType:(int64_t)configurationType configurationName:(id)name goalTypeIdentifier:(unint64_t)identifier
{
  selfCopy = self;
  v18 = a2;
  typeCopy = type;
  indoorCopy = indoor;
  configurationTypeCopy = configurationType;
  location = 0;
  objc_storeStrong(&location, name);
  identifierCopy = identifier;
  v7 = selfCopy;
  selfCopy = 0;
  v12.receiver = v7;
  v12.super_class = WKUIBlastDoorDataSource;
  v11 = [(WKUIBlastDoorDataSource *)&v12 init];
  selfCopy = v11;
  objc_storeStrong(&selfCopy, v11);
  if (v11)
  {
    selfCopy->_activityType = typeCopy;
    selfCopy->_isIndoor = indoorCopy;
    selfCopy->_configurationType = configurationTypeCopy;
    objc_storeStrong(&selfCopy->_configurationName, location);
    selfCopy->_goalTypeIdentifier = identifierCopy;
  }

  v9 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

- (WKUIBlastDoorDataSource)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v24.receiver = v3;
  v24.super_class = WKUIBlastDoorDataSource;
  v23 = [(WKUIBlastDoorDataSource *)&v24 init];
  selfCopy = v23;
  objc_storeStrong(&selfCopy, v23);
  if (v23)
  {
    v12 = location[0];
    v13 = NSStringFromSelector(sel_activityType);
    v4 = [v12 decodeIntegerForKey:?];
    selfCopy->_activityType = v4;
    MEMORY[0x277D82BD8](v13);
    v14 = location[0];
    v15 = NSStringFromSelector(sel_isIndoor);
    v5 = [v14 decodeBoolForKey:?];
    selfCopy->_isIndoor = v5;
    MEMORY[0x277D82BD8](v15);
    v16 = location[0];
    v17 = NSStringFromSelector(sel_configurationType);
    v6 = [v16 decodeIntegerForKey:?];
    selfCopy->_configurationType = v6;
    MEMORY[0x277D82BD8](v17);
    v19 = location[0];
    v18 = objc_opt_class();
    v20 = NSStringFromSelector(sel_configurationName);
    v7 = [v19 decodeObjectOfClass:v18 forKey:?];
    configurationName = selfCopy->_configurationName;
    selfCopy->_configurationName = v7;
    MEMORY[0x277D82BD8](configurationName);
    MEMORY[0x277D82BD8](v20);
    v21 = location[0];
    v22 = NSStringFromSelector(sel_goalTypeIdentifier);
    v9 = [v21 decodeIntegerForKey:?];
    selfCopy->_goalTypeIdentifier = v9;
    MEMORY[0x277D82BD8](v22);
  }

  v11 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v8 = location[0];
  activityType = [(WKUIBlastDoorDataSource *)selfCopy activityType];
  v9 = NSStringFromSelector(sel_activityType);
  [v8 encodeInteger:activityType forKey:?];
  *&v3 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  v11 = location[0];
  isIndoor = [(WKUIBlastDoorDataSource *)selfCopy isIndoor];
  v12 = NSStringFromSelector(sel_isIndoor);
  [v11 encodeBool:isIndoor forKey:?];
  *&v4 = MEMORY[0x277D82BD8](v12).n128_u64[0];
  v14 = location[0];
  configurationType = [(WKUIBlastDoorDataSource *)selfCopy configurationType];
  v15 = NSStringFromSelector(sel_configurationType);
  [v14 encodeInteger:configurationType forKey:?];
  *&v5 = MEMORY[0x277D82BD8](v15).n128_u64[0];
  v16 = location[0];
  configurationName = [(WKUIBlastDoorDataSource *)selfCopy configurationName];
  v17 = NSStringFromSelector(sel_configurationName);
  [v16 encodeObject:configurationName forKey:?];
  MEMORY[0x277D82BD8](v17);
  *&v6 = MEMORY[0x277D82BD8](configurationName).n128_u64[0];
  v20 = location[0];
  goalTypeIdentifier = [(WKUIBlastDoorDataSource *)selfCopy goalTypeIdentifier];
  v21 = NSStringFromSelector(sel_goalTypeIdentifier);
  [v20 encodeInteger:goalTypeIdentifier forKey:?];
  MEMORY[0x277D82BD8](v21);
  objc_storeStrong(location, 0);
}

- (unint64_t)hash
{
  v3 = 31 * ([(WKUIBlastDoorDataSource *)self activityType]+ 527);
  v4 = 31 * (v3 + [(WKUIBlastDoorDataSource *)self isIndoor]);
  v5 = 31 * (v4 + [(WKUIBlastDoorDataSource *)self configurationType]);
  configurationName = [(WKUIBlastDoorDataSource *)self configurationName];
  v7 = v5 + [(NSString *)configurationName hash];
  return 31 * v7 + [(WKUIBlastDoorDataSource *)self goalTypeIdentifier];
}

- (id)description
{
  selfCopy = self;
  v12[1] = a2;
  v7 = MEMORY[0x277CCAB68];
  v2 = objc_opt_class();
  v8 = NSStringFromClass(v2);
  v12[0] = [v7 stringWithFormat:@"<%@: %p>\n", v8, selfCopy];
  [v12[0] appendFormat:@"activityType: %lu\n", -[WKUIBlastDoorDataSource activityType](selfCopy, "activityType", MEMORY[0x277D82BD8](v8).n128_f64[0])];
  isIndoor = [(WKUIBlastDoorDataSource *)selfCopy isIndoor];
  v4 = @"YES";
  if (!isIndoor)
  {
    v4 = @"NO";
  }

  [v12[0] appendFormat:@"isIndoor: %@\n", v4];
  [v12[0] appendFormat:@"configurationType: %ld\n", -[WKUIBlastDoorDataSource configurationType](selfCopy, "configurationType")];
  v9 = v12[0];
  configurationName = [(WKUIBlastDoorDataSource *)selfCopy configurationName];
  [v9 appendFormat:@"configurationName: %@\n", configurationName];
  *&v5 = MEMORY[0x277D82BD8](configurationName).n128_u64[0];
  [v12[0] appendFormat:@"goalTypeIdentifier: %lu\n", -[WKUIBlastDoorDataSource goalTypeIdentifier](selfCopy, "goalTypeIdentifier", v5)];
  v11 = MEMORY[0x277D82BE0](v12[0]);
  objc_storeStrong(v12, 0);

  return v11;
}

@end