@interface PKPlugInRecordProxy
- (NSString)bundleIdentifier;
- (NSString)bundleVersion;
- (NSString)localizedName;
- (NSString)localizedShortName;
- (NSUUID)uniqueIdentifier;
- (PKPlugInProxy)compatibilityObject;
- (PKPlugInRecordProxy)initWithBundleIdentifier:(id)a3 error:(id *)a4;
- (PKPlugInRecordProxy)initWithUUID:(id)a3 error:(id *)a4;
- (PKPropertyList)entitlements;
@end

@implementation PKPlugInRecordProxy

- (PKPlugInRecordProxy)initWithUUID:(id)a3 error:(id *)a4
{
  v12.receiver = self;
  v12.super_class = PKPlugInRecordProxy;
  v5 = a3;
  v6 = [(PKPlugInRecordProxy *)&v12 init];
  v7 = objc_alloc(MEMORY[0x1E69635D0]);
  v8 = [v7 initWithUUID:v5 error:{a4, v12.receiver, v12.super_class}];

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

- (PKPlugInRecordProxy)initWithBundleIdentifier:(id)a3 error:(id *)a4
{
  v12.receiver = self;
  v12.super_class = PKPlugInRecordProxy;
  v5 = a3;
  v6 = [(PKPlugInRecordProxy *)&v12 init];
  v7 = objc_alloc(MEMORY[0x1E69635D0]);
  v8 = [v7 initWithBundleIdentifier:v5 error:{a4, v12.receiver, v12.super_class}];

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
  v2 = [(PKPlugInRecordProxy *)self lsRecord];
  v3 = [v2 localizedName];

  return v3;
}

- (NSString)localizedShortName
{
  v2 = [(PKPlugInRecordProxy *)self lsRecord];
  v3 = [v2 localizedShortName];

  return v3;
}

- (NSString)bundleIdentifier
{
  v2 = [(PKPlugInRecordProxy *)self lsRecord];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (NSString)bundleVersion
{
  v2 = [(PKPlugInRecordProxy *)self lsRecord];
  v3 = [v2 bundleVersion];

  return v3;
}

- (NSUUID)uniqueIdentifier
{
  v2 = [(PKPlugInRecordProxy *)self lsRecord];
  v3 = [v2 uniqueIdentifier];

  return v3;
}

- (PKPlugInProxy)compatibilityObject
{
  v2 = [(PKPlugInRecordProxy *)self lsRecord];
  v3 = [v2 compatibilityObject];

  return v3;
}

- (PKPropertyList)entitlements
{
  v2 = [(PKPlugInRecordProxy *)self lsRecord];
  v3 = [v2 entitlements];

  return v3;
}

@end