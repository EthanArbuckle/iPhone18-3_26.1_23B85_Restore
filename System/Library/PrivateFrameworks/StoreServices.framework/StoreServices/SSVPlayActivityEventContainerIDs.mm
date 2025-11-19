@interface SSVPlayActivityEventContainerIDs
- (SSVPlayActivityEventContainerIDs)initWithCoder:(id)a3;
- (id)_copyWithClass:(Class)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SSVPlayActivityEventContainerIDs

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p", v5, self];

  if (self->_adamID)
  {
    [v6 appendFormat:@" adamID: %lli", self->_adamID];
  }

  if ([(NSString *)self->_cloudAlbumID length])
  {
    [v6 appendFormat:@" cloudAlbumID: %@", self->_cloudAlbumID];
  }

  if (self->_cloudPlaylistID)
  {
    [v6 appendFormat:@" cloudPlaylistID: %llu", self->_cloudPlaylistID];
  }

  if ([(NSString *)self->_globalPlaylistID length])
  {
    [v6 appendFormat:@" globalPlaylistID: %@", self->_globalPlaylistID];
  }

  if ([(NSString *)self->_playlistVersionHash length])
  {
    [v6 appendFormat:@" playlistVersionHash: %@", self->_playlistVersionHash];
  }

  if ([(NSString *)self->_stationHash length])
  {
    [v6 appendFormat:@" stationHash: %@", self->_stationHash];
  }

  if ([(NSString *)self->_stationStringID length])
  {
    [v6 appendFormat:@" stationStringID: %@", self->_stationStringID];
  }

  if (self->_stationID)
  {
    [v6 appendFormat:@" stationID: %lli", self->_stationID];
  }

  [v6 appendString:@">"];

  return v6;
}

- (SSVPlayActivityEventContainerIDs)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SSVPlayActivityEventContainerIDs *)self init];
  if (v5)
  {
    v5->_adamID = [v4 decodeInt64ForKey:@"SSVPlayActivityEventContainerIDsAdamID"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SSVPlayActivityEventContainerIDsCloudAlbumID"];
    cloudAlbumID = v5->_cloudAlbumID;
    v5->_cloudAlbumID = v6;

    v5->_cloudPlaylistID = [v4 decodeInt64ForKey:@"SSVPlayActivityEventContainerIDsCloudPlaylistID"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SSVPlayActivityEventContainerIDsGlobalPlaylistID"];
    globalPlaylistID = v5->_globalPlaylistID;
    v5->_globalPlaylistID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SSVPlayActivityEventContainerIDsPlaylistVersionHash"];
    playlistVersionHash = v5->_playlistVersionHash;
    v5->_playlistVersionHash = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SSVPlayActivityEventContainerIDsStationHash"];
    stationHash = v5->_stationHash;
    v5->_stationHash = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SSVPlayActivityEventContainerIDsStationStringID"];
    stationStringID = v5->_stationStringID;
    v5->_stationStringID = v14;

    v5->_stationID = [v4 decodeInt64ForKey:@"SSVPlayActivityEventContainerIDsStationID"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  adamID = self->_adamID;
  v5 = a3;
  [v5 encodeInt64:adamID forKey:@"SSVPlayActivityEventContainerIDsAdamID"];
  [v5 encodeObject:self->_cloudAlbumID forKey:@"SSVPlayActivityEventContainerIDsCloudAlbumID"];
  [v5 encodeInt64:self->_cloudPlaylistID forKey:@"SSVPlayActivityEventContainerIDsCloudPlaylistID"];
  [v5 encodeObject:self->_globalPlaylistID forKey:@"SSVPlayActivityEventContainerIDsGlobalPlaylistID"];
  [v5 encodeObject:self->_playlistVersionHash forKey:@"SSVPlayActivityEventContainerIDsPlaylistVersionHash"];
  [v5 encodeObject:self->_stationHash forKey:@"SSVPlayActivityEventContainerIDsStationHash"];
  [v5 encodeObject:self->_stationStringID forKey:@"SSVPlayActivityEventContainerIDsStationStringID"];
  [v5 encodeInt64:self->_stationID forKey:@"SSVPlayActivityEventContainerIDsStationID"];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();

  return [(SSVPlayActivityEventContainerIDs *)self _copyWithClass:v4];
}

- (id)_copyWithClass:(Class)a3
{
  v4 = objc_alloc_init(a3);
  v5 = v4;
  if (v4)
  {
    v4[1] = self->_adamID;
    objc_storeStrong(v4 + 2, self->_cloudAlbumID);
    v5[3] = self->_cloudPlaylistID;
    objc_storeStrong(v5 + 4, self->_globalPlaylistID);
    objc_storeStrong(v5 + 5, self->_playlistVersionHash);
    objc_storeStrong(v5 + 7, self->_stationHash);
    objc_storeStrong(v5 + 8, self->_stationStringID);
    v5[6] = self->_stationID;
  }

  return v5;
}

@end