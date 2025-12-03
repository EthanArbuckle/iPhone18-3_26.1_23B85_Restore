@interface SSVMutablePlayActivityEventContainerIDs
- (id)copyWithZone:(_NSZone *)zone;
- (void)setCloudAlbumID:(id)d;
- (void)setGlobalPlaylistID:(id)d;
- (void)setPlaylistVersionHash:(id)hash;
- (void)setStationHash:(id)hash;
- (void)setStationStringID:(id)d;
@end

@implementation SSVMutablePlayActivityEventContainerIDs

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();

  return [(SSVPlayActivityEventContainerIDs *)self _copyWithClass:v4];
}

- (void)setCloudAlbumID:(id)d
{
  v4 = [d copy];
  cloudAlbumID = self->super._cloudAlbumID;
  self->super._cloudAlbumID = v4;
}

- (void)setGlobalPlaylistID:(id)d
{
  v4 = [d copy];
  globalPlaylistID = self->super._globalPlaylistID;
  self->super._globalPlaylistID = v4;
}

- (void)setPlaylistVersionHash:(id)hash
{
  v4 = [hash copy];
  playlistVersionHash = self->super._playlistVersionHash;
  self->super._playlistVersionHash = v4;
}

- (void)setStationHash:(id)hash
{
  v4 = [hash copy];
  stationHash = self->super._stationHash;
  self->super._stationHash = v4;
}

- (void)setStationStringID:(id)d
{
  v4 = [d copy];
  stationStringID = self->super._stationStringID;
  self->super._stationStringID = v4;
}

@end