@interface ICPlayActivityEventContainerIDs
- (ICPlayActivityEventContainerIDs)initWithCoder:(id)coder;
- (id)_copyWithClass:(Class)class;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICPlayActivityEventContainerIDs

- (id)_copyWithClass:(Class)class
{
  v4 = objc_alloc_init(class);
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

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();

  return [(ICPlayActivityEventContainerIDs *)self _copyWithClass:v4];
}

- (void)encodeWithCoder:(id)coder
{
  adamID = self->_adamID;
  coderCopy = coder;
  [coderCopy encodeInt64:adamID forKey:@"ICPlayActivityEventContainerIDsAdamID"];
  [coderCopy encodeObject:self->_cloudAlbumID forKey:@"ICPlayActivityEventContainerIDsCloudAlbumID"];
  [coderCopy encodeInt64:self->_cloudPlaylistID forKey:@"ICPlayActivityEventContainerIDsCloudPlaylistID"];
  [coderCopy encodeInt64:self->_cloudPlaylistFolderID forKey:@"ICPlayActivityEventContainerIDsCloudFolderPlaylistID"];
  [coderCopy encodeObject:self->_globalPlaylistID forKey:@"ICPlayActivityEventContainerIDsGlobalPlaylistID"];
  [coderCopy encodeObject:self->_playlistVersionHash forKey:@"ICPlayActivityEventContainerIDsPlaylistVersionHash"];
  [coderCopy encodeObject:self->_stationHash forKey:@"ICPlayActivityEventContainerIDsStationHash"];
  [coderCopy encodeObject:self->_stationStringID forKey:@"ICPlayActivityEventContainerIDsStationStringID"];
  [coderCopy encodeInt64:self->_stationID forKey:@"ICPlayActivityEventContainerIDsStationID"];
}

- (ICPlayActivityEventContainerIDs)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ICPlayActivityEventContainerIDs *)self init];
  if (v5)
  {
    v5->_adamID = [coderCopy decodeInt64ForKey:@"ICPlayActivityEventContainerIDsAdamID"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ICPlayActivityEventContainerIDsCloudAlbumID"];
    cloudAlbumID = v5->_cloudAlbumID;
    v5->_cloudAlbumID = v6;

    v5->_cloudPlaylistID = [coderCopy decodeInt64ForKey:@"ICPlayActivityEventContainerIDsCloudPlaylistID"];
    v5->_cloudPlaylistFolderID = [coderCopy decodeInt64ForKey:@"ICPlayActivityEventContainerIDsCloudFolderPlaylistID"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ICPlayActivityEventContainerIDsGlobalPlaylistID"];
    globalPlaylistID = v5->_globalPlaylistID;
    v5->_globalPlaylistID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ICPlayActivityEventContainerIDsPlaylistVersionHash"];
    playlistVersionHash = v5->_playlistVersionHash;
    v5->_playlistVersionHash = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ICPlayActivityEventContainerIDsStationHash"];
    stationHash = v5->_stationHash;
    v5->_stationHash = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ICPlayActivityEventContainerIDsStationStringID"];
    stationStringID = v5->_stationStringID;
    v5->_stationStringID = v14;

    v5->_stationID = [coderCopy decodeInt64ForKey:@"ICPlayActivityEventContainerIDsStationID"];
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