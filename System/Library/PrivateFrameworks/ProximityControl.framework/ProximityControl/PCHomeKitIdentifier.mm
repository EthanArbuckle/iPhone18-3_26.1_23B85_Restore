@interface PCHomeKitIdentifier
- (BOOL)isEqual:(id)equal;
- (PCHomeKitIdentifier)initWithAccessoryID:(id)d homeID:(id)iD;
- (PCHomeKitIdentifier)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PCHomeKitIdentifier

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  accessoryID = self->_accessoryID;
  homeID = self->_homeID;
  assetType = [(PCDeviceIdentifier *)self assetType];
  if ((assetType - 1) >= 8)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"? (%ld)", assetType];
  }

  else
  {
    v7 = off_279AD1D10[assetType - 1];
  }

  deviceName = [(PCDeviceIdentifier *)self deviceName];
  v9 = [v3 stringWithFormat:@"<acsID=%@, homeID=%@, type=%@ name=%@>", accessoryID, homeID, v7, deviceName];

  return v9;
}

- (PCHomeKitIdentifier)initWithAccessoryID:(id)d homeID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v12.receiver = self;
  v12.super_class = PCHomeKitIdentifier;
  v9 = [(PCDeviceIdentifier *)&v12 initWithDeviceName:@"HomePod"];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accessoryID, d);
    objc_storeStrong(&v10->_homeID, iD);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    accessoryID = [v5 accessoryID];
    accessoryID = self->_accessoryID;
    v8 = accessoryID;
    v9 = accessoryID;
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      if ((v8 != 0) == (v9 == 0))
      {
        goto LABEL_12;
      }

      v11 = [(NSUUID *)v8 isEqual:v9];

      if (!v11)
      {
        goto LABEL_13;
      }
    }

    homeID = [v5 homeID];
    homeID = self->_homeID;
    v8 = homeID;
    v15 = homeID;
    v10 = v15;
    if (v8 == v15)
    {

LABEL_15:
      assetType = [v5 assetType];
      v12 = assetType == [(PCDeviceIdentifier *)self assetType];
      goto LABEL_16;
    }

    if ((v8 != 0) != (v15 == 0))
    {
      v16 = [(NSUUID *)v8 isEqual:v15];

      if (v16)
      {
        goto LABEL_15;
      }

LABEL_13:
      v12 = 0;
LABEL_16:

      goto LABEL_17;
    }

LABEL_12:

    goto LABEL_13;
  }

  v12 = 0;
LABEL_17:

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = PCHomeKitIdentifier;
  [(PCDeviceIdentifier *)&v7 encodeWithCoder:coderCopy];
  accessoryID = self->_accessoryID;
  if (accessoryID)
  {
    [coderCopy encodeObject:accessoryID forKey:@"aid"];
  }

  homeID = self->_homeID;
  if (homeID)
  {
    [coderCopy encodeObject:homeID forKey:@"hid"];
  }
}

- (PCHomeKitIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = PCHomeKitIdentifier;
  v5 = [(PCDeviceIdentifier *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    objc_opt_class();
    NSDecodeObjectIfPresent();
    objc_opt_class();
    NSDecodeObjectIfPresent();
    v6 = v5;
  }

  return v5;
}

@end