@interface MediaLibraryItem
- (MediaLibraryItem)initWithDateAccessed:(id)a3 album:(id)a4 title:(id)a5 fileSize:(id)a6 externalGuid:(id)a7 bookmarkTimeMillis:(id)a8 seriesName:(id)a9 itemDescription:(id)a10 hasVideo:(id)a11 feedUrl:(id)a12 playlistId:(id)a13 dateReleased:(id)a14 artist:(id)a15 totalTimeMillis:(id)a16 playCount:(id)a17 hasBeenPlayed:(id)a18 serpentId:(id)a19 activeDsid:(id)a20 statsDownloadIdentifier:(id)a21 itemFilePath:(id)a22 artworkUrl:(id)a23 artworkTokenId:(id)a24;
@end

@implementation MediaLibraryItem

- (MediaLibraryItem)initWithDateAccessed:(id)a3 album:(id)a4 title:(id)a5 fileSize:(id)a6 externalGuid:(id)a7 bookmarkTimeMillis:(id)a8 seriesName:(id)a9 itemDescription:(id)a10 hasVideo:(id)a11 feedUrl:(id)a12 playlistId:(id)a13 dateReleased:(id)a14 artist:(id)a15 totalTimeMillis:(id)a16 playCount:(id)a17 hasBeenPlayed:(id)a18 serpentId:(id)a19 activeDsid:(id)a20 statsDownloadIdentifier:(id)a21 itemFilePath:(id)a22 artworkUrl:(id)a23 artworkTokenId:(id)a24
{
  v29 = a3;
  v54 = a4;
  v53 = a5;
  v52 = a6;
  v51 = a7;
  v50 = a8;
  v49 = a9;
  v48 = a10;
  v47 = a11;
  v46 = a12;
  v45 = a13;
  v44 = a14;
  v43 = a15;
  v42 = a16;
  v30 = a17;
  v31 = a18;
  v32 = a19;
  v33 = a20;
  v34 = a21;
  v35 = a22;
  v36 = a23;
  v37 = a24;
  v55.receiver = self;
  v55.super_class = MediaLibraryItem;
  v38 = [(MediaLibraryItem *)&v55 init];
  v39 = v38;
  if (v38)
  {
    [(MediaLibraryItem *)v38 setDateAccessed:v29];
    [(MediaLibraryItem *)v39 setAlbum:v54];
    [(MediaLibraryItem *)v39 setTitle:v53];
    [(MediaLibraryItem *)v39 setFileSize:v52];
    [(MediaLibraryItem *)v39 setExternalGuid:v51];
    [(MediaLibraryItem *)v39 setBookmarkTimeMillis:v50];
    [(MediaLibraryItem *)v39 setSeriesName:v49];
    [(MediaLibraryItem *)v39 setItemDescription:v48];
    [(MediaLibraryItem *)v39 setHasVideo:v47];
    [(MediaLibraryItem *)v39 setFeedUrl:v46];
    [(MediaLibraryItem *)v39 setPlaylistId:v45];
    [(MediaLibraryItem *)v39 setDateReleased:v44];
    [(MediaLibraryItem *)v39 setArtist:v43];
    [(MediaLibraryItem *)v39 setTotalTimeMillis:v42];
    [(MediaLibraryItem *)v39 setPlayCount:v30];
    [(MediaLibraryItem *)v39 setHasBeenPlayed:v31];
    [(MediaLibraryItem *)v39 setSerpentId:v32];
    [(MediaLibraryItem *)v39 setActiveDsid:v33];
    [(MediaLibraryItem *)v39 setStatsDownloadIdentifier:v34];
    [(MediaLibraryItem *)v39 setItemFilePath:v35];
    [(MediaLibraryItem *)v39 setArtworkUrl:v36];
    [(MediaLibraryItem *)v39 setArtworkTokenId:v37];
  }

  return v39;
}

@end