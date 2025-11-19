@interface ICQMediaCloudStorage
- (ICQMediaCloudStorage)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICQMediaCloudStorage

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(ICQMediaCloudStorage);
  [(ICQMediaCloudStorage *)v4 setMediaType:self->_mediaType];
  [(ICQMediaCloudStorage *)v4 setDisplayLabel:self->_displayLabel];
  [(ICQMediaCloudStorage *)v4 setDisplayColor:self->_displayColor];
  [(ICQMediaCloudStorage *)v4 setDisplayColorDark:self->_displayColorDark];
  [(ICQMediaCloudStorage *)v4 setStorageUsed:self->_storageUsed];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  mediaType = self->_mediaType;
  v5 = a3;
  [v5 encodeObject:mediaType forKey:@"mediaType"];
  [v5 encodeObject:self->_displayLabel forKey:@"displayLabel"];
  [v5 encodeObject:self->_displayColor forKey:@"displayColor"];
  [v5 encodeObject:self->_displayColorDark forKey:@"displayColorDark"];
  [v5 encodeObject:self->_storageUsed forKey:@"storageUsed"];
}

- (ICQMediaCloudStorage)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = ICQMediaCloudStorage;
  v5 = [(ICQMediaCloudStorage *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mediaType"];
    mediaType = v5->_mediaType;
    v5->_mediaType = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayLabel"];
    displayLabel = v5->_displayLabel;
    v5->_displayLabel = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayColor"];
    displayColor = v5->_displayColor;
    v5->_displayColor = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayColorDark"];
    displayColorDark = v5->_displayColorDark;
    v5->_displayColorDark = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storageUsed"];
    storageUsed = v5->_storageUsed;
    v5->_storageUsed = v14;
  }

  return v5;
}

@end