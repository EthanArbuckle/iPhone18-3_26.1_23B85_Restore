@interface WLSourceDevice
- (WLSourceDevice)init;
- (WLSourceDevice)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
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

- (WLSourceDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(WLSourceDevice *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_ipAddress"];
    ipAddress = v5->_ipAddress;
    v5->_ipAddress = v6;

    v5->_httpPort = [coderCopy decodeIntegerForKey:@"_httpPort"];
    v5->_socketPort = [coderCopy decodeIntegerForKey:@"_socketPort"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_persistentIdentifier"];
    persistentIdentifier = v5->_persistentIdentifier;
    v5->_persistentIdentifier = v8;

    v5->_isLocal = [coderCopy decodeBoolForKey:@"_isLocal"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_name"];
    name = v5->_name;
    v5->_name = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_osAPIVersion"];
    osAPIVersion = v5->_osAPIVersion;
    v5->_osAPIVersion = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_hardwareBrand"];
    hardwareBrand = v5->_hardwareBrand;
    v5->_hardwareBrand = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_hardwareModel"];
    hardwareModel = v5->_hardwareModel;
    v5->_hardwareModel = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_hardwareDesign"];
    hardwareDesign = v5->_hardwareDesign;
    v5->_hardwareDesign = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_hardwareMaker"];
    hardwareMaker = v5->_hardwareMaker;
    v5->_hardwareMaker = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_clientVersion"];
    clientVersion = v5->_clientVersion;
    v5->_clientVersion = v22;

    v5->_isSelectingDataTypeInHandshake = [coderCopy decodeBoolForKey:@"_isSelectingDataTypeInHandshake"];
    v5->_useMigrationKit = [coderCopy decodeBoolForKey:@"_useMigrationKit"];
    v5->_supportsFileLength = [coderCopy decodeBoolForKey:@"_supportsFileLength"];
    v5->_canAddDisplay = [coderCopy decodeBoolForKey:@"_canAddDisplay"];
    v5->_canAddAccessibility = [coderCopy decodeBoolForKey:@"_canAddAccessibility"];
    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_apiLevel"];
    apiLevel = v5->_apiLevel;
    v5->_apiLevel = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_brand"];
    brand = v5->_brand;
    v5->_brand = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_locale"];
    locale = v5->_locale;
    v5->_locale = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_model"];
    model = v5->_model;
    v5->_model = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_osVersion"];
    osVersion = v5->_osVersion;
    v5->_osVersion = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_version"];
    version = v5->_version;
    v5->_version = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_versionCode"];
    versionCode = v5->_versionCode;
    v5->_versionCode = v36;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  ipAddress = self->_ipAddress;
  coderCopy = coder;
  [coderCopy encodeObject:ipAddress forKey:@"_ipAddress"];
  [coderCopy encodeInteger:self->_httpPort forKey:@"_httpPort"];
  [coderCopy encodeInteger:self->_socketPort forKey:@"_socketPort"];
  [coderCopy encodeObject:self->_persistentIdentifier forKey:@"_persistentIdentifier"];
  [coderCopy encodeBool:self->_isLocal forKey:@"_isLocal"];
  [coderCopy encodeObject:self->_name forKey:@"_name"];
  [coderCopy encodeObject:self->_osAPIVersion forKey:@"_osAPIVersion"];
  [coderCopy encodeObject:self->_hardwareBrand forKey:@"_hardwareBrand"];
  [coderCopy encodeObject:self->_hardwareModel forKey:@"_hardwareModel"];
  [coderCopy encodeObject:self->_hardwareDesign forKey:@"_hardwareDesign"];
  [coderCopy encodeObject:self->_hardwareMaker forKey:@"_hardwareMaker"];
  [coderCopy encodeObject:self->_clientVersion forKey:@"_clientVersion"];
  [coderCopy encodeBool:self->_isSelectingDataTypeInHandshake forKey:@"_isSelectingDataTypeInHandshake"];
  [coderCopy encodeBool:self->_useMigrationKit forKey:@"_useMigrationKit"];
  [coderCopy encodeBool:self->_supportsFileLength forKey:@"_supportsFileLength"];
  [coderCopy encodeBool:self->_canAddDisplay forKey:@"_canAddDisplay"];
  [coderCopy encodeBool:self->_canAddAccessibility forKey:@"_canAddAccessibility"];
  [coderCopy encodeObject:self->_apiLevel forKey:@"_apiLevel"];
  [coderCopy encodeObject:self->_brand forKey:@"_brand"];
  [coderCopy encodeObject:self->_locale forKey:@"_locale"];
  [coderCopy encodeObject:self->_model forKey:@"_model"];
  [coderCopy encodeObject:self->_osVersion forKey:@"_osVersion"];
  [coderCopy encodeObject:self->_version forKey:@"_version"];
  [coderCopy encodeObject:self->_versionCode forKey:@"_versionCode"];
}

@end