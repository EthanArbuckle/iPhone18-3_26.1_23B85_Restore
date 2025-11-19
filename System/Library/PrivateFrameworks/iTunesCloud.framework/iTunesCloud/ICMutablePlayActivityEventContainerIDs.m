@interface ICMutablePlayActivityEventContainerIDs
- (id)copyWithZone:(_NSZone *)a3;
- (void)setCloudAlbumID:(id)a3;
- (void)setGlobalPlaylistID:(id)a3;
- (void)setPlaylistVersionHash:(id)a3;
- (void)setStationHash:(id)a3;
- (void)setStationStringID:(id)a3;
@end

@implementation ICMutablePlayActivityEventContainerIDs

- (void)setStationStringID:(id)a3
{
  v4 = [a3 copy];
  stationStringID = self->super._stationStringID;
  self->super._stationStringID = v4;

  MEMORY[0x1EEE66BB8](v4, stationStringID);
}

- (void)setStationHash:(id)a3
{
  v4 = [a3 copy];
  stationHash = self->super._stationHash;
  self->super._stationHash = v4;

  MEMORY[0x1EEE66BB8](v4, stationHash);
}

- (void)setPlaylistVersionHash:(id)a3
{
  v4 = [a3 copy];
  playlistVersionHash = self->super._playlistVersionHash;
  self->super._playlistVersionHash = v4;

  MEMORY[0x1EEE66BB8](v4, playlistVersionHash);
}

- (void)setGlobalPlaylistID:(id)a3
{
  v4 = [a3 copy];
  globalPlaylistID = self->super._globalPlaylistID;
  self->super._globalPlaylistID = v4;

  MEMORY[0x1EEE66BB8](v4, globalPlaylistID);
}

- (void)setCloudAlbumID:(id)a3
{
  v4 = [a3 copy];
  cloudAlbumID = self->super._cloudAlbumID;
  self->super._cloudAlbumID = v4;

  MEMORY[0x1EEE66BB8](v4, cloudAlbumID);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();

  return [(ICPlayActivityEventContainerIDs *)self _copyWithClass:v4];
}

@end