@interface PKPlugInRecordProxy
- (NSString)bundleIdentifier;
- (NSString)bundleVersion;
- (NSString)localizedName;
- (NSString)localizedShortName;
- (NSUUID)uniqueIdentifier;
- (PKPlugInProxy)compatibilityObject;
- (PKPlugInRecordProxy)initWithBundleIdentifier:(id)identifier error:(id *)error;
- (PKPlugInRecordProxy)initWithUUID:(id)d error:(id *)error;
- (PKPropertyList)entitlements;
@end

@implementation PKPlugInRecordProxy

- (PKPlugInRecordProxy)initWithUUID:(id)d error:(id *)error
{
  v12.receiver = self;
  v12.super_class = PKPlugInRecordProxy;
  dCopy = d;
  v6 = [(PKPlugInRecordProxy *)&v12 init];
  v7 = objc_alloc(MEMORY[0x1E69635D0]);
  v8 = [v7 initWithUUID:dCopy error:{error, v12.receiver, v12.super_class}];

  lsRecord = v6->_lsRecord;
  v6->_lsRecord = v8;

  if (v6->_lsRecord)
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (PKPlugInRecordProxy)initWithBundleIdentifier:(id)identifier error:(id *)error
{
  v12.receiver = self;
  v12.super_class = PKPlugInRecordProxy;
  identifierCopy = identifier;
  v6 = [(PKPlugInRecordProxy *)&v12 init];
  v7 = objc_alloc(MEMORY[0x1E69635D0]);
  v8 = [v7 initWithBundleIdentifier:identifierCopy error:{error, v12.receiver, v12.super_class}];

  lsRecord = v6->_lsRecord;
  v6->_lsRecord = v8;

  if (v6->_lsRecord)
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSString)localizedName
{
  lsRecord = [(PKPlugInRecordProxy *)self lsRecord];
  localizedName = [lsRecord localizedName];

  return localizedName;
}

- (NSString)localizedShortName
{
  lsRecord = [(PKPlugInRecordProxy *)self lsRecord];
  localizedShortName = [lsRecord localizedShortName];

  return localizedShortName;
}

- (NSString)bundleIdentifier
{
  lsRecord = [(PKPlugInRecordProxy *)self lsRecord];
  bundleIdentifier = [lsRecord bundleIdentifier];

  return bundleIdentifier;
}

- (NSString)bundleVersion
{
  lsRecord = [(PKPlugInRecordProxy *)self lsRecord];
  bundleVersion = [lsRecord bundleVersion];

  return bundleVersion;
}

- (NSUUID)uniqueIdentifier
{
  lsRecord = [(PKPlugInRecordProxy *)self lsRecord];
  uniqueIdentifier = [lsRecord uniqueIdentifier];

  return uniqueIdentifier;
}

- (PKPlugInProxy)compatibilityObject
{
  lsRecord = [(PKPlugInRecordProxy *)self lsRecord];
  compatibilityObject = [lsRecord compatibilityObject];

  return compatibilityObject;
}

- (PKPropertyList)entitlements
{
  lsRecord = [(PKPlugInRecordProxy *)self lsRecord];
  entitlements = [lsRecord entitlements];

  return entitlements;
}

@end