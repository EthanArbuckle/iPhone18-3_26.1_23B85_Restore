@interface MediaLibraryItem
- (MediaLibraryItem)initWithDateAccessed:(id)accessed album:(id)album title:(id)title fileSize:(id)size externalGuid:(id)guid bookmarkTimeMillis:(id)millis seriesName:(id)name itemDescription:(id)self0 hasVideo:(id)self1 feedUrl:(id)self2 playlistId:(id)self3 dateReleased:(id)self4 artist:(id)self5 totalTimeMillis:(id)self6 playCount:(id)self7 hasBeenPlayed:(id)self8 serpentId:(id)self9 activeDsid:(id)dsid statsDownloadIdentifier:(id)identifier itemFilePath:(id)path artworkUrl:(id)artworkUrl artworkTokenId:(id)tokenId;
@end

@implementation MediaLibraryItem

- (MediaLibraryItem)initWithDateAccessed:(id)accessed album:(id)album title:(id)title fileSize:(id)size externalGuid:(id)guid bookmarkTimeMillis:(id)millis seriesName:(id)name itemDescription:(id)self0 hasVideo:(id)self1 feedUrl:(id)self2 playlistId:(id)self3 dateReleased:(id)self4 artist:(id)self5 totalTimeMillis:(id)self6 playCount:(id)self7 hasBeenPlayed:(id)self8 serpentId:(id)self9 activeDsid:(id)dsid statsDownloadIdentifier:(id)identifier itemFilePath:(id)path artworkUrl:(id)artworkUrl artworkTokenId:(id)tokenId
{
  accessedCopy = accessed;
  albumCopy = album;
  titleCopy = title;
  sizeCopy = size;
  guidCopy = guid;
  millisCopy = millis;
  nameCopy = name;
  descriptionCopy = description;
  videoCopy = video;
  urlCopy = url;
  idCopy = id;
  releasedCopy = released;
  artistCopy = artist;
  timeMillisCopy = timeMillis;
  countCopy = count;
  playedCopy = played;
  serpentIdCopy = serpentId;
  dsidCopy = dsid;
  identifierCopy = identifier;
  pathCopy = path;
  artworkUrlCopy = artworkUrl;
  tokenIdCopy = tokenId;
  v55.receiver = self;
  v55.super_class = MediaLibraryItem;
  v38 = [(MediaLibraryItem *)&v55 init];
  v39 = v38;
  if (v38)
  {
    [(MediaLibraryItem *)v38 setDateAccessed:accessedCopy];
    [(MediaLibraryItem *)v39 setAlbum:albumCopy];
    [(MediaLibraryItem *)v39 setTitle:titleCopy];
    [(MediaLibraryItem *)v39 setFileSize:sizeCopy];
    [(MediaLibraryItem *)v39 setExternalGuid:guidCopy];
    [(MediaLibraryItem *)v39 setBookmarkTimeMillis:millisCopy];
    [(MediaLibraryItem *)v39 setSeriesName:nameCopy];
    [(MediaLibraryItem *)v39 setItemDescription:descriptionCopy];
    [(MediaLibraryItem *)v39 setHasVideo:videoCopy];
    [(MediaLibraryItem *)v39 setFeedUrl:urlCopy];
    [(MediaLibraryItem *)v39 setPlaylistId:idCopy];
    [(MediaLibraryItem *)v39 setDateReleased:releasedCopy];
    [(MediaLibraryItem *)v39 setArtist:artistCopy];
    [(MediaLibraryItem *)v39 setTotalTimeMillis:timeMillisCopy];
    [(MediaLibraryItem *)v39 setPlayCount:countCopy];
    [(MediaLibraryItem *)v39 setHasBeenPlayed:playedCopy];
    [(MediaLibraryItem *)v39 setSerpentId:serpentIdCopy];
    [(MediaLibraryItem *)v39 setActiveDsid:dsidCopy];
    [(MediaLibraryItem *)v39 setStatsDownloadIdentifier:identifierCopy];
    [(MediaLibraryItem *)v39 setItemFilePath:pathCopy];
    [(MediaLibraryItem *)v39 setArtworkUrl:artworkUrlCopy];
    [(MediaLibraryItem *)v39 setArtworkTokenId:tokenIdCopy];
  }

  return v39;
}

@end