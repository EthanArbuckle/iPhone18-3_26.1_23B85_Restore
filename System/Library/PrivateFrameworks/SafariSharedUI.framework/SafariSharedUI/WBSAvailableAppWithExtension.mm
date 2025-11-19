@interface WBSAvailableAppWithExtension
- (BOOL)isEqual:(id)a3;
- (WBSAvailableAppWithExtension)initWithAdamID:(id)a3 platformSpecificBundleID:(id)a4;
- (unint64_t)hash;
@end

@implementation WBSAvailableAppWithExtension

- (WBSAvailableAppWithExtension)initWithAdamID:(id)a3 platformSpecificBundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = WBSAvailableAppWithExtension;
  v8 = [(WBSAvailableAppWithExtension *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    adamID = v8->_adamID;
    v8->_adamID = v9;

    v11 = [v7 copy];
    platformSpecificBundleID = v8->_platformSpecificBundleID;
    v8->_platformSpecificBundleID = v11;

    v13 = v8;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 adamID];
    if (WBSIsEqual())
    {
      v6 = [v4 platformSpecificBundleID];
      v7 = WBSIsEqual();
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  if (self->_platformSpecificBundleID)
  {
    platformSpecificBundleID = self->_platformSpecificBundleID;
  }

  else
  {
    platformSpecificBundleID = &stru_1F4646D10;
  }

  v3 = [(NSString *)self->_adamID stringByAppendingString:platformSpecificBundleID];
  v4 = [v3 hash];

  return v4;
}

@end