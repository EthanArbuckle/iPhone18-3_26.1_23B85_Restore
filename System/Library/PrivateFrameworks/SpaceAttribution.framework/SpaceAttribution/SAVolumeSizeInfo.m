@interface SAVolumeSizeInfo
- (SAVolumeSizeInfo)init;
- (SAVolumeSizeInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

- (void)encodeWithCoder:(id)a3
{
  used = self->_used;
  v5 = a3;
  [v5 encodeInt64:used forKey:@"usedSize"];
  [v5 encodeInt64:self->_purgeableSize forKey:@"purgeableSize"];
  [v5 encodeInt64:self->_rawUsed forKey:@"rawUsedSize"];
  [v5 encodeObject:self->_mountedOn forKey:@"mountedOnPath"];
  [v5 encodeInt64:self->_capacity forKey:@"capacitySize"];
}

- (SAVolumeSizeInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SAVolumeSizeInfo;
  v5 = [(SAVolumeSizeInfo *)&v9 init];
  if (v5)
  {
    v5->_used = [v4 decodeInt64ForKey:@"usedSize"];
    v5->_purgeableSize = [v4 decodeInt64ForKey:@"purgeableSize"];
    v5->_rawUsed = [v4 decodeInt64ForKey:@"rawUsedSize"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mountedOnPath"];
    mountedOn = v5->_mountedOn;
    v5->_mountedOn = v6;

    v5->_capacity = [v4 decodeInt64ForKey:@"capacitySize"];
  }

  return v5;
}

@end