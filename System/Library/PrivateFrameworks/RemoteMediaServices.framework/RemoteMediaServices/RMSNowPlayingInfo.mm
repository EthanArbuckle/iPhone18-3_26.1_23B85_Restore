@interface RMSNowPlayingInfo
- (NSString)artworkIdentifier;
- (RMSNowPlayingInfo)initWithProtobuf:(id)a3;
- (id)protobuf;
@end

@implementation RMSNowPlayingInfo

- (RMSNowPlayingInfo)initWithProtobuf:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = RMSNowPlayingInfo;
  v5 = [(RMSNowPlayingInfo *)&v16 init];
  if (v5)
  {
    v5->_itemID = [v4 itemID];
    v5->_databaseID = [v4 databaseID];
    v6 = [v4 trackName];
    trackName = v5->_trackName;
    v5->_trackName = v6;

    v8 = [v4 artistName];
    artistName = v5->_artistName;
    v5->_artistName = v8;

    v10 = [v4 albumName];
    albumName = v5->_albumName;
    v5->_albumName = v10;

    [v4 timestamp];
    v5->_timestamp = v12;
    [v4 timeRemaining];
    v5->_timeRemaining = v13;
    [v4 totalDuration];
    v5->_totalDuration = v14;
    v5->_revisionNumber = [v4 revisionNumber];
    v5->_mediaKind = [v4 mediaKind];
    v5->_playbackState = [v4 playbackState];
    v5->_likedState = [v4 likedState];
    v5->_scrubbableState = [v4 scrubbableState];
    v5->_canSkipNext = [v4 canSkipNext];
    v5->_canSkipPrevious = [v4 canSkipPrevious];
    v5->_likeable = [v4 likeable];
    v5->_canWishlist = [v4 canWishlist];
    v5->_hasChapterData = [v4 hasChapterData];
  }

  return v5;
}

- (id)protobuf
{
  v3 = objc_opt_new();
  [v3 setItemID:self->_itemID];
  [v3 setDatabaseID:self->_databaseID];
  [v3 setTrackName:self->_trackName];
  [v3 setArtistName:self->_artistName];
  [v3 setAlbumName:self->_albumName];
  [v3 setTimestamp:self->_timestamp];
  [v3 setTimeRemaining:self->_timeRemaining];
  [v3 setTotalDuration:self->_totalDuration];
  [v3 setRevisionNumber:self->_revisionNumber];
  [v3 setMediaKind:LODWORD(self->_mediaKind)];
  [v3 setPlaybackState:LODWORD(self->_playbackState)];
  [v3 setLikedState:LODWORD(self->_likedState)];
  [v3 setScrubbableState:LODWORD(self->_scrubbableState)];
  [v3 setCanSkipNext:self->_canSkipNext];
  [v3 setCanSkipPrevious:self->_canSkipPrevious];
  [v3 setLikeable:self->_likeable];
  [v3 setCanWishlist:self->_canWishlist];
  [v3 setHasChapterData:self->_hasChapterData];

  return v3;
}

- (NSString)artworkIdentifier
{
  if (self->_albumName)
  {
    v2 = MEMORY[0x277CCACA8];
    albumName = self->_albumName;
    artistName = self->_artistName;
    v3 = @"%@-%@";
LABEL_5:
    [v2 stringWithFormat:v3, albumName, artistName];
    v4 = LABEL_6:;
    goto LABEL_7;
  }

  if (self->_itemID)
  {
    v2 = MEMORY[0x277CCACA8];
    albumName = self->_databaseID;
    artistName = self->_itemID;
    v3 = @"%lld-%lld";
    goto LABEL_5;
  }

  trackName = self->_trackName;
  if (trackName)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@", trackName, v8];
    goto LABEL_6;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

@end