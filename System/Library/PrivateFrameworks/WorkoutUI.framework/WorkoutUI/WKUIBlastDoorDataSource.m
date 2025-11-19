@interface WKUIBlastDoorDataSource
+ (id)dataFromSourceFromData:(id)a3;
- (WKUIBlastDoorDataSource)initWithActivityType:(unint64_t)a3 isIndoor:(BOOL)a4 configurationType:(int64_t)a5 configurationName:(id)a6 goalTypeIdentifier:(unint64_t)a7;
- (WKUIBlastDoorDataSource)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WKUIBlastDoorDataSource

+ (id)dataFromSourceFromData:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [NLWorkoutConfigurationImageGenerator createBlastDoorDataSourceFromData:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

- (WKUIBlastDoorDataSource)initWithActivityType:(unint64_t)a3 isIndoor:(BOOL)a4 configurationType:(int64_t)a5 configurationName:(id)a6 goalTypeIdentifier:(unint64_t)a7
{
  v19 = self;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v15 = a5;
  location = 0;
  objc_storeStrong(&location, a6);
  v13 = a7;
  v7 = v19;
  v19 = 0;
  v12.receiver = v7;
  v12.super_class = WKUIBlastDoorDataSource;
  v11 = [(WKUIBlastDoorDataSource *)&v12 init];
  v19 = v11;
  objc_storeStrong(&v19, v11);
  if (v11)
  {
    v19->_activityType = v17;
    v19->_isIndoor = v16;
    v19->_configurationType = v15;
    objc_storeStrong(&v19->_configurationName, location);
    v19->_goalTypeIdentifier = v13;
  }

  v9 = MEMORY[0x277D82BE0](v19);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v19, 0);
  return v9;
}

- (WKUIBlastDoorDataSource)initWithCoder:(id)a3
{
  v26 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v26;
  v26 = 0;
  v24.receiver = v3;
  v24.super_class = WKUIBlastDoorDataSource;
  v23 = [(WKUIBlastDoorDataSource *)&v24 init];
  v26 = v23;
  objc_storeStrong(&v26, v23);
  if (v23)
  {
    v12 = location[0];
    v13 = NSStringFromSelector(sel_activityType);
    v4 = [v12 decodeIntegerForKey:?];
    v26->_activityType = v4;
    MEMORY[0x277D82BD8](v13);
    v14 = location[0];
    v15 = NSStringFromSelector(sel_isIndoor);
    v5 = [v14 decodeBoolForKey:?];
    v26->_isIndoor = v5;
    MEMORY[0x277D82BD8](v15);
    v16 = location[0];
    v17 = NSStringFromSelector(sel_configurationType);
    v6 = [v16 decodeIntegerForKey:?];
    v26->_configurationType = v6;
    MEMORY[0x277D82BD8](v17);
    v19 = location[0];
    v18 = objc_opt_class();
    v20 = NSStringFromSelector(sel_configurationName);
    v7 = [v19 decodeObjectOfClass:v18 forKey:?];
    configurationName = v26->_configurationName;
    v26->_configurationName = v7;
    MEMORY[0x277D82BD8](configurationName);
    MEMORY[0x277D82BD8](v20);
    v21 = location[0];
    v22 = NSStringFromSelector(sel_goalTypeIdentifier);
    v9 = [v21 decodeIntegerForKey:?];
    v26->_goalTypeIdentifier = v9;
    MEMORY[0x277D82BD8](v22);
  }

  v11 = MEMORY[0x277D82BE0](v26);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v26, 0);
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = location[0];
  v7 = [(WKUIBlastDoorDataSource *)v23 activityType];
  v9 = NSStringFromSelector(sel_activityType);
  [v8 encodeInteger:v7 forKey:?];
  *&v3 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  v11 = location[0];
  v10 = [(WKUIBlastDoorDataSource *)v23 isIndoor];
  v12 = NSStringFromSelector(sel_isIndoor);
  [v11 encodeBool:v10 forKey:?];
  *&v4 = MEMORY[0x277D82BD8](v12).n128_u64[0];
  v14 = location[0];
  v13 = [(WKUIBlastDoorDataSource *)v23 configurationType];
  v15 = NSStringFromSelector(sel_configurationType);
  [v14 encodeInteger:v13 forKey:?];
  *&v5 = MEMORY[0x277D82BD8](v15).n128_u64[0];
  v16 = location[0];
  v18 = [(WKUIBlastDoorDataSource *)v23 configurationName];
  v17 = NSStringFromSelector(sel_configurationName);
  [v16 encodeObject:v18 forKey:?];
  MEMORY[0x277D82BD8](v17);
  *&v6 = MEMORY[0x277D82BD8](v18).n128_u64[0];
  v20 = location[0];
  v19 = [(WKUIBlastDoorDataSource *)v23 goalTypeIdentifier];
  v21 = NSStringFromSelector(sel_goalTypeIdentifier);
  [v20 encodeInteger:v19 forKey:?];
  MEMORY[0x277D82BD8](v21);
  objc_storeStrong(location, 0);
}

- (unint64_t)hash
{
  v3 = 31 * ([(WKUIBlastDoorDataSource *)self activityType]+ 527);
  v4 = 31 * (v3 + [(WKUIBlastDoorDataSource *)self isIndoor]);
  v5 = 31 * (v4 + [(WKUIBlastDoorDataSource *)self configurationType]);
  v6 = [(WKUIBlastDoorDataSource *)self configurationName];
  v7 = v5 + [(NSString *)v6 hash];
  return 31 * v7 + [(WKUIBlastDoorDataSource *)self goalTypeIdentifier];
}

- (id)description
{
  v13 = self;
  v12[1] = a2;
  v7 = MEMORY[0x277CCAB68];
  v2 = objc_opt_class();
  v8 = NSStringFromClass(v2);
  v12[0] = [v7 stringWithFormat:@"<%@: %p>\n", v8, v13];
  [v12[0] appendFormat:@"activityType: %lu\n", -[WKUIBlastDoorDataSource activityType](v13, "activityType", MEMORY[0x277D82BD8](v8).n128_f64[0])];
  v3 = [(WKUIBlastDoorDataSource *)v13 isIndoor];
  v4 = @"YES";
  if (!v3)
  {
    v4 = @"NO";
  }

  [v12[0] appendFormat:@"isIndoor: %@\n", v4];
  [v12[0] appendFormat:@"configurationType: %ld\n", -[WKUIBlastDoorDataSource configurationType](v13, "configurationType")];
  v9 = v12[0];
  v10 = [(WKUIBlastDoorDataSource *)v13 configurationName];
  [v9 appendFormat:@"configurationName: %@\n", v10];
  *&v5 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  [v12[0] appendFormat:@"goalTypeIdentifier: %lu\n", -[WKUIBlastDoorDataSource goalTypeIdentifier](v13, "goalTypeIdentifier", v5)];
  v11 = MEMORY[0x277D82BE0](v12[0]);
  objc_storeStrong(v12, 0);

  return v11;
}

@end