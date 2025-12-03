@interface ICMutablePlayActivityEventContainerIDs
- (id)copyWithZone:(_NSZone *)zone;
- (void)setCloudAlbumID:(id)d;
- (void)setGlobalPlaylistID:(id)d;
- (void)setPlaylistVersionHash:(id)hash;
- (void)setStationHash:(id)hash;
- (void)setStationStringID:(id)d;
@end

@implementation ICMutablePlayActivityEventContainerIDs

- (void)setStationStringID:(id)d
{
  v4 = [d copy];
  stationStringID = self->super._stationStringID;
  self->super._stationStringID = v4;

  MEMORY[0x1EEE66BB8](v4, stationStringID);
}

- (void)setStationHash:(id)hash
{
  v4 = [hash copy];
  stationHash = self->super._stationHash;
  self->super._stationHash = v4;

  MEMORY[0x1EEE66BB8](v4, stationHash);
}

- (void)setPlaylistVersionHash:(id)hash
{
  v4 = [hash copy];
  playlistVersionHash = self->super._playlistVersionHash;
  self->super._playlistVersionHash = v4;

  MEMORY[0x1EEE66BB8](v4, playlistVersionHash);
}

- (void)setGlobalPlaylistID:(id)d
{
  v4 = [d copy];
  globalPlaylistID = self->super._globalPlaylistID;
  self->super._globalPlaylistID = v4;

  MEMORY[0x1EEE66BB8](v4, globalPlaylistID);
}

- (void)setCloudAlbumID:(id)d
{
  v4 = [d copy];
  cloudAlbumID = self->super._cloudAlbumID;
  self->super._cloudAlbumID = v4;

  MEMORY[0x1EEE66BB8](v4, cloudAlbumID);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();

  return [(ICPlayActivityEventContainerIDs *)self _copyWithClass:v4];
}

@end