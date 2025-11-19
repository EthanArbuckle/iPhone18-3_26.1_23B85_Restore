@interface ICPlayActivityEventContainerIDs
- (ICPlayActivityEventContainerIDs)initWithCoder:(id)a3;
- (id)_copyWithClass:(Class)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICPlayActivityEventContainerIDs

- (id)_copyWithClass:(Class)a3
{
  v4 = objc_alloc_init(a3);
  v5 = v4;
  if (v4)
  {
    v4[1] = self->_adamID;
    objc_storeStrong(v4 + 2, self->_cloudAlbumID);
    v5[3] = self->_cloudPlaylistID;
    v5[4] = self->_cloudPlaylistFolderID;
    objc_storeStrong(v5 + 5, self->_globalPlaylistID);
    objc_storeStrong(v5 + 6, self->_playlistVersionHash);
    objc_storeStrong(v5 + 8, self->_stationHash);
    objc_storeStrong(v5 + 9, self->_stationStringID);
    v5[7] = self->_stationID;
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();

  return [(ICPlayActivityEventContainerIDs *)self _copyWithClass:v4];
}

- (void)encodeWithCoder:(id)a3
{
  adamID = self->_adamID;
  v5 = a3;
  [v5 encodeInt64:adamID forKey:@"ICPlayActivityEventContainerIDsAdamID"];
  [v5 encodeObject:self->_cloudAlbumID forKey:@"ICPlayActivityEventContainerIDsCloudAlbumID"];
  [v5 encodeInt64:self->_cloudPlaylistID forKey:@"ICPlayActivityEventContainerIDsCloudPlaylistID"];
  [v5 encodeInt64:self->_cloudPlaylistFolderID forKey:@"ICPlayActivityEventContainerIDsCloudFolderPlaylistID"];
  [v5 encodeObject:self->_globalPlaylistID forKey:@"ICPlayActivityEventContainerIDsGlobalPlaylistID"];
  [v5 encodeObject:self->_playlistVersionHash forKey:@"ICPlayActivityEventContainerIDsPlaylistVersionHash"];
  [v5 encodeObject:self->_stationHash forKey:@"ICPlayActivityEventContainerIDsStationHash"];
  [v5 encodeObject:self->_stationStringID forKey:@"ICPlayActivityEventContainerIDsStationStringID"];
  [v5 encodeInt64:self->_stationID forKey:@"ICPlayActivityEventContainerIDsStationID"];
}

- (ICPlayActivityEventContainerIDs)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ICPlayActivityEventContainerIDs *)self init];
  if (v5)
  {
    v5->_adamID = [v4 decodeInt64ForKey:@"ICPlayActivityEventContainerIDsAdamID"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ICPlayActivityEventContainerIDsCloudAlbumID"];
    cloudAlbumID = v5->_cloudAlbumID;
    v5->_cloudAlbumID = v6;

    v5->_cloudPlaylistID = [v4 decodeInt64ForKey:@"ICPlayActivityEventContainerIDsCloudPlaylistID"];
    v5->_cloudPlaylistFolderID = [v4 decodeInt64ForKey:@"ICPlayActivityEventContainerIDsCloudFolderPlaylistID"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ICPlayActivityEventContainerIDsGlobalPlaylistID"];
    globalPlaylistID = v5->_globalPlaylistID;
    v5->_globalPlaylistID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ICPlayActivityEventContainerIDsPlaylistVersionHash"];
    playlistVersionHash = v5->_playlistVersionHash;
    v5->_playlistVersionHash = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ICPlayActivityEventContainerIDsStationHash"];
    stationHash = v5->_stationHash;
    v5->_stationHash = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ICPlayActivityEventContainerIDsStationStringID"];
    stationStringID = v5->_stationStringID;
    v5->_stationStringID = v14;

    v5->_stationID = [v4 decodeInt64ForKey:@"ICPlayActivityEventContainerIDsStationID"];
  }

  return v5;
}

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

  if (self->_cloudPlaylistFolderID)
  {
    [v6 appendFormat:@" cloudFolderPlaylistID: %llu", self->_cloudPlaylistFolderID];
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

@end