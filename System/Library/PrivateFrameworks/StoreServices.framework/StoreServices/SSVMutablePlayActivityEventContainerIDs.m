@interface SSVMutablePlayActivityEventContainerIDs
- (id)copyWithZone:(_NSZone *)a3;
- (void)setCloudAlbumID:(id)a3;
- (void)setGlobalPlaylistID:(id)a3;
- (void)setPlaylistVersionHash:(id)a3;
- (void)setStationHash:(id)a3;
- (void)setStationStringID:(id)a3;
@end

@implementation SSVMutablePlayActivityEventContainerIDs

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();

  return [(SSVPlayActivityEventContainerIDs *)self _copyWithClass:v4];
}

- (void)setCloudAlbumID:(id)a3
{
  v4 = [a3 copy];
  cloudAlbumID = self->super._cloudAlbumID;
  self->super._cloudAlbumID = v4;
}

- (void)setGlobalPlaylistID:(id)a3
{
  v4 = [a3 copy];
  globalPlaylistID = self->super._globalPlaylistID;
  self->super._globalPlaylistID = v4;
}

- (void)setPlaylistVersionHash:(id)a3
{
  v4 = [a3 copy];
  playlistVersionHash = self->super._playlistVersionHash;
  self->super._playlistVersionHash = v4;
}

- (void)setStationHash:(id)a3
{
  v4 = [a3 copy];
  stationHash = self->super._stationHash;
  self->super._stationHash = v4;
}

- (void)setStationStringID:(id)a3
{
  v4 = [a3 copy];
  stationStringID = self->super._stationStringID;
  self->super._stationStringID = v4;
}

@end