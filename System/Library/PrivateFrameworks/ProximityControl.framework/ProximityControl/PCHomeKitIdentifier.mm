@interface PCHomeKitIdentifier
- (BOOL)isEqual:(id)a3;
- (PCHomeKitIdentifier)initWithAccessoryID:(id)a3 homeID:(id)a4;
- (PCHomeKitIdentifier)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PCHomeKitIdentifier

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  accessoryID = self->_accessoryID;
  homeID = self->_homeID;
  v6 = [(PCDeviceIdentifier *)self assetType];
  if ((v6 - 1) >= 8)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"? (%ld)", v6];
  }

  else
  {
    v7 = off_279AD1D10[v6 - 1];
  }

  v8 = [(PCDeviceIdentifier *)self deviceName];
  v9 = [v3 stringWithFormat:@"<acsID=%@, homeID=%@, type=%@ name=%@>", accessoryID, homeID, v7, v8];

  return v9;
}

- (PCHomeKitIdentifier)initWithAccessoryID:(id)a3 homeID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PCHomeKitIdentifier;
  v9 = [(PCDeviceIdentifier *)&v12 initWithDeviceName:@"HomePod"];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accessoryID, a3);
    objc_storeStrong(&v10->_homeID, a4);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 accessoryID];
    accessoryID = self->_accessoryID;
    v8 = v6;
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

    v13 = [v5 homeID];
    homeID = self->_homeID;
    v8 = v13;
    v15 = homeID;
    v10 = v15;
    if (v8 == v15)
    {

LABEL_15:
      v17 = [v5 assetType];
      v12 = v17 == [(PCDeviceIdentifier *)self assetType];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PCHomeKitIdentifier;
  [(PCDeviceIdentifier *)&v7 encodeWithCoder:v4];
  accessoryID = self->_accessoryID;
  if (accessoryID)
  {
    [v4 encodeObject:accessoryID forKey:@"aid"];
  }

  homeID = self->_homeID;
  if (homeID)
  {
    [v4 encodeObject:homeID forKey:@"hid"];
  }
}

- (PCHomeKitIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PCHomeKitIdentifier;
  v5 = [(PCDeviceIdentifier *)&v8 initWithCoder:v4];
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