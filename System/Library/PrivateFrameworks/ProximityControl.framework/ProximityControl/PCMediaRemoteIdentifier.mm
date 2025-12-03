@interface PCMediaRemoteIdentifier
- (BOOL)isEqual:(id)equal;
- (PCMediaRemoteIdentifier)initWithCoder:(id)coder;
- (PCMediaRemoteIdentifier)initWithIdentifier:(id)identifier;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PCMediaRemoteIdentifier

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  mediaRemoteID = self->_mediaRemoteID;
  assetType = [(PCDeviceIdentifier *)self assetType];
  if ((assetType - 1) >= 8)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"? (%ld)", assetType];
  }

  else
  {
    v5 = off_279AD1A90[assetType - 1];
  }

  v6 = [v2 stringWithFormat:@"<mrID=%@, type=%@>", mediaRemoteID, v5];

  return v6;
}

- (PCMediaRemoteIdentifier)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = PCMediaRemoteIdentifier;
  v6 = [(PCDeviceIdentifier *)&v9 initWithDeviceName:@"HomePod"];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mediaRemoteID, identifier);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    mediaRemoteID = [v5 mediaRemoteID];
    mediaRemoteID = self->_mediaRemoteID;
    v8 = mediaRemoteID;
    v9 = mediaRemoteID;
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      if ((v8 != 0) == (v9 == 0))
      {

LABEL_10:
        v12 = 0;
        goto LABEL_11;
      }

      v11 = [(NSString *)v8 isEqual:v9];

      if (!v11)
      {
        goto LABEL_10;
      }
    }

    assetType = [v5 assetType];
    v12 = assetType == [(PCDeviceIdentifier *)self assetType];
LABEL_11:

    goto LABEL_12;
  }

  v12 = 0;
LABEL_12:

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = PCMediaRemoteIdentifier;
  [(PCDeviceIdentifier *)&v6 encodeWithCoder:coderCopy];
  mediaRemoteID = self->_mediaRemoteID;
  if (mediaRemoteID)
  {
    [coderCopy encodeObject:mediaRemoteID forKey:@"mrid"];
  }
}

- (PCMediaRemoteIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = PCMediaRemoteIdentifier;
  v5 = [(PCDeviceIdentifier *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    objc_opt_class();
    NSDecodeObjectIfPresent();
    v6 = v5;
  }

  return v5;
}

@end