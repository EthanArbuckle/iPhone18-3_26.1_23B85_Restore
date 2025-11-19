@interface WLSourceDevice
- (WLSourceDevice)init;
- (WLSourceDevice)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WLSourceDevice

- (WLSourceDevice)init
{
  v5.receiver = self;
  v5.super_class = WLSourceDevice;
  v2 = [(WLSourceDevice *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(WLSourceDevice *)v2 setIsSelectingDataTypeInHandshake:0];
    [(WLSourceDevice *)v3 setUseMigrationKit:0];
    [(WLSourceDevice *)v3 setApi:@"1"];
    [(WLSourceDevice *)v3 setApiLevel:@"?"];
    [(WLSourceDevice *)v3 setBrand:@"?"];
    [(WLSourceDevice *)v3 setLocale:@"?"];
    [(WLSourceDevice *)v3 setModel:@"?"];
    [(WLSourceDevice *)v3 setOsVersion:@"?"];
    [(WLSourceDevice *)v3 setVersion:@"?"];
    [(WLSourceDevice *)v3 setVersionCode:@"?"];
  }

  return v3;
}

- (WLSourceDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WLSourceDevice *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_ipAddress"];
    ipAddress = v5->_ipAddress;
    v5->_ipAddress = v6;

    v5->_httpPort = [v4 decodeIntegerForKey:@"_httpPort"];
    v5->_socketPort = [v4 decodeIntegerForKey:@"_socketPort"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_persistentIdentifier"];
    persistentIdentifier = v5->_persistentIdentifier;
    v5->_persistentIdentifier = v8;

    v5->_isLocal = [v4 decodeBoolForKey:@"_isLocal"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    name = v5->_name;
    v5->_name = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_osAPIVersion"];
    osAPIVersion = v5->_osAPIVersion;
    v5->_osAPIVersion = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_hardwareBrand"];
    hardwareBrand = v5->_hardwareBrand;
    v5->_hardwareBrand = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_hardwareModel"];
    hardwareModel = v5->_hardwareModel;
    v5->_hardwareModel = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_hardwareDesign"];
    hardwareDesign = v5->_hardwareDesign;
    v5->_hardwareDesign = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_hardwareMaker"];
    hardwareMaker = v5->_hardwareMaker;
    v5->_hardwareMaker = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_clientVersion"];
    clientVersion = v5->_clientVersion;
    v5->_clientVersion = v22;

    v5->_isSelectingDataTypeInHandshake = [v4 decodeBoolForKey:@"_isSelectingDataTypeInHandshake"];
    v5->_useMigrationKit = [v4 decodeBoolForKey:@"_useMigrationKit"];
    v5->_supportsFileLength = [v4 decodeBoolForKey:@"_supportsFileLength"];
    v5->_canAddDisplay = [v4 decodeBoolForKey:@"_canAddDisplay"];
    v5->_canAddAccessibility = [v4 decodeBoolForKey:@"_canAddAccessibility"];
    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_apiLevel"];
    apiLevel = v5->_apiLevel;
    v5->_apiLevel = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_brand"];
    brand = v5->_brand;
    v5->_brand = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_locale"];
    locale = v5->_locale;
    v5->_locale = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_model"];
    model = v5->_model;
    v5->_model = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_osVersion"];
    osVersion = v5->_osVersion;
    v5->_osVersion = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_version"];
    version = v5->_version;
    v5->_version = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_versionCode"];
    versionCode = v5->_versionCode;
    v5->_versionCode = v36;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  ipAddress = self->_ipAddress;
  v5 = a3;
  [v5 encodeObject:ipAddress forKey:@"_ipAddress"];
  [v5 encodeInteger:self->_httpPort forKey:@"_httpPort"];
  [v5 encodeInteger:self->_socketPort forKey:@"_socketPort"];
  [v5 encodeObject:self->_persistentIdentifier forKey:@"_persistentIdentifier"];
  [v5 encodeBool:self->_isLocal forKey:@"_isLocal"];
  [v5 encodeObject:self->_name forKey:@"_name"];
  [v5 encodeObject:self->_osAPIVersion forKey:@"_osAPIVersion"];
  [v5 encodeObject:self->_hardwareBrand forKey:@"_hardwareBrand"];
  [v5 encodeObject:self->_hardwareModel forKey:@"_hardwareModel"];
  [v5 encodeObject:self->_hardwareDesign forKey:@"_hardwareDesign"];
  [v5 encodeObject:self->_hardwareMaker forKey:@"_hardwareMaker"];
  [v5 encodeObject:self->_clientVersion forKey:@"_clientVersion"];
  [v5 encodeBool:self->_isSelectingDataTypeInHandshake forKey:@"_isSelectingDataTypeInHandshake"];
  [v5 encodeBool:self->_useMigrationKit forKey:@"_useMigrationKit"];
  [v5 encodeBool:self->_supportsFileLength forKey:@"_supportsFileLength"];
  [v5 encodeBool:self->_canAddDisplay forKey:@"_canAddDisplay"];
  [v5 encodeBool:self->_canAddAccessibility forKey:@"_canAddAccessibility"];
  [v5 encodeObject:self->_apiLevel forKey:@"_apiLevel"];
  [v5 encodeObject:self->_brand forKey:@"_brand"];
  [v5 encodeObject:self->_locale forKey:@"_locale"];
  [v5 encodeObject:self->_model forKey:@"_model"];
  [v5 encodeObject:self->_osVersion forKey:@"_osVersion"];
  [v5 encodeObject:self->_version forKey:@"_version"];
  [v5 encodeObject:self->_versionCode forKey:@"_versionCode"];
}

@end