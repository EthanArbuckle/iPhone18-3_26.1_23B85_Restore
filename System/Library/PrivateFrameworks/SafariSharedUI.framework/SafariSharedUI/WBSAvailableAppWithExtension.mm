@interface WBSAvailableAppWithExtension
- (BOOL)isEqual:(id)equal;
- (WBSAvailableAppWithExtension)initWithAdamID:(id)d platformSpecificBundleID:(id)iD;
- (unint64_t)hash;
@end

@implementation WBSAvailableAppWithExtension

- (WBSAvailableAppWithExtension)initWithAdamID:(id)d platformSpecificBundleID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v15.receiver = self;
  v15.super_class = WBSAvailableAppWithExtension;
  v8 = [(WBSAvailableAppWithExtension *)&v15 init];
  if (v8)
  {
    v9 = [dCopy copy];
    adamID = v8->_adamID;
    v8->_adamID = v9;

    v11 = [iDCopy copy];
    platformSpecificBundleID = v8->_platformSpecificBundleID;
    v8->_platformSpecificBundleID = v11;

    v13 = v8;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = equalCopy;
    adamID = [v4 adamID];
    if (WBSIsEqual())
    {
      platformSpecificBundleID = [v4 platformSpecificBundleID];
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