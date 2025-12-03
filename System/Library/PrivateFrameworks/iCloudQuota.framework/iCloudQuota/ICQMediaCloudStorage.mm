@interface ICQMediaCloudStorage
- (ICQMediaCloudStorage)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICQMediaCloudStorage

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(ICQMediaCloudStorage);
  [(ICQMediaCloudStorage *)v4 setMediaType:self->_mediaType];
  [(ICQMediaCloudStorage *)v4 setDisplayLabel:self->_displayLabel];
  [(ICQMediaCloudStorage *)v4 setDisplayColor:self->_displayColor];
  [(ICQMediaCloudStorage *)v4 setDisplayColorDark:self->_displayColorDark];
  [(ICQMediaCloudStorage *)v4 setStorageUsed:self->_storageUsed];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  mediaType = self->_mediaType;
  coderCopy = coder;
  [coderCopy encodeObject:mediaType forKey:@"mediaType"];
  [coderCopy encodeObject:self->_displayLabel forKey:@"displayLabel"];
  [coderCopy encodeObject:self->_displayColor forKey:@"displayColor"];
  [coderCopy encodeObject:self->_displayColorDark forKey:@"displayColorDark"];
  [coderCopy encodeObject:self->_storageUsed forKey:@"storageUsed"];
}

- (ICQMediaCloudStorage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = ICQMediaCloudStorage;
  v5 = [(ICQMediaCloudStorage *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mediaType"];
    mediaType = v5->_mediaType;
    v5->_mediaType = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayLabel"];
    displayLabel = v5->_displayLabel;
    v5->_displayLabel = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayColor"];
    displayColor = v5->_displayColor;
    v5->_displayColor = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayColorDark"];
    displayColorDark = v5->_displayColorDark;
    v5->_displayColorDark = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storageUsed"];
    storageUsed = v5->_storageUsed;
    v5->_storageUsed = v14;
  }

  return v5;
}

@end