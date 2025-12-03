@interface SAVolumeSizeInfo
- (SAVolumeSizeInfo)init;
- (SAVolumeSizeInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SAVolumeSizeInfo

- (SAVolumeSizeInfo)init
{
  v6.receiver = self;
  v6.super_class = SAVolumeSizeInfo;
  v2 = [(SAVolumeSizeInfo *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 24) = 0u;
    *(v2 + 8) = 0u;
    v4 = *(v2 + 5);
    *(v2 + 5) = 0;
  }

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  used = self->_used;
  coderCopy = coder;
  [coderCopy encodeInt64:used forKey:@"usedSize"];
  [coderCopy encodeInt64:self->_purgeableSize forKey:@"purgeableSize"];
  [coderCopy encodeInt64:self->_rawUsed forKey:@"rawUsedSize"];
  [coderCopy encodeObject:self->_mountedOn forKey:@"mountedOnPath"];
  [coderCopy encodeInt64:self->_capacity forKey:@"capacitySize"];
}

- (SAVolumeSizeInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SAVolumeSizeInfo;
  v5 = [(SAVolumeSizeInfo *)&v9 init];
  if (v5)
  {
    v5->_used = [coderCopy decodeInt64ForKey:@"usedSize"];
    v5->_purgeableSize = [coderCopy decodeInt64ForKey:@"purgeableSize"];
    v5->_rawUsed = [coderCopy decodeInt64ForKey:@"rawUsedSize"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mountedOnPath"];
    mountedOn = v5->_mountedOn;
    v5->_mountedOn = v6;

    v5->_capacity = [coderCopy decodeInt64ForKey:@"capacitySize"];
  }

  return v5;
}

@end