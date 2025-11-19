@interface ICStoreFinanceItemMetadata
- (ICStoreFinanceItemMetadata)initWithMetadataDictionary:(id)a3;
- (NSDate)dateAdded;
- (NSDate)releaseDate;
- (NSNumber)artistID;
- (NSNumber)bitrate;
- (NSNumber)discCount;
- (NSNumber)discNumber;
- (NSNumber)drmVersionNumber;
- (NSNumber)duration;
- (NSNumber)genreID;
- (NSNumber)isCompilation;
- (NSNumber)isExplicit;
- (NSNumber)isGapless;
- (NSNumber)isMasteredForITunes;
- (NSNumber)itemAdamID;
- (NSNumber)itemCloudID;
- (NSNumber)rank;
- (NSNumber)sampleRate;
- (NSNumber)storefrontID;
- (NSNumber)trackCount;
- (NSNumber)trackNumber;
- (NSNumber)vendorID;
- (NSNumber)versionRestrictions;
- (NSNumber)year;
- (NSString)albumSortName;
- (NSString)artistName;
- (NSString)artistSortName;
- (NSString)comments;
- (NSString)composerName;
- (NSString)composerSortName;
- (NSString)copyright;
- (NSString)fileExtension;
- (NSString)genre;
- (NSString)itemName;
- (NSString)itemSortName;
- (NSString)playlistArtistName;
- (NSString)playlistName;
- (NSString)xid;
- (id)albumID;
@end

@implementation ICStoreFinanceItemMetadata

- (NSNumber)vendorID
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"vendorId"];
  if (_NSIsNSNumber())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSNumber)storefrontID
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"s"];
  if (_NSIsNSNumber())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSDate)releaseDate
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"releaseDate"];
  if (_NSIsNSString())
  {
    if (releaseDate_sOnceToken != -1)
    {
      dispatch_once(&releaseDate_sOnceToken, &__block_literal_global_1491);
    }

    v3 = [releaseDate_sReleaseDateFormatter dateFromString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __41__ICStoreFinanceItemMetadata_releaseDate__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = releaseDate_sReleaseDateFormatter;
  releaseDate_sReleaseDateFormatter = v0;

  [releaseDate_sReleaseDateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss'Z'"];
  v2 = releaseDate_sReleaseDateFormatter;
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];

  [releaseDate_sReleaseDateFormatter setLenient:1];
  v4 = releaseDate_sReleaseDateFormatter;
  v5 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [v4 setTimeZone:v5];
}

- (NSNumber)rank
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"rank"];
  if (_NSIsNSNumber())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSString)copyright
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"copyright"];
  if (_NSIsNSString())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSNumber)isCompilation
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"compilation"];
  if (_NSIsNSNumber())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSString)xid
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"xid"];
  if (_NSIsNSString())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSNumber)versionRestrictions
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"versionRestrictions"];
  if (_NSIsNSNumber())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSNumber)sampleRate
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"sampleRate"];
  if (_NSIsNSNumber())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSNumber)isMasteredForITunes
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"isMasteredForItunes"];
  if (_NSIsNSNumber())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSNumber)isGapless
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"gapless"];
  if (_NSIsNSNumber())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSString)fileExtension
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"fileExtension"];
  if (_NSIsNSString())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSNumber)drmVersionNumber
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"bitrate"];
  if (_NSIsNSNumber())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSDate)dateAdded
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"dateAdded"];
  if (_NSIsNSDate())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSString)comments
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"comments"];
  if (_NSIsNSString())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSNumber)bitrate
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"bitRate"];
  if (_NSIsNSNumber())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSNumber)year
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"year"];
  if (_NSIsNSNumber())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSNumber)isExplicit
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"explicit"];
  if (_NSIsNSNumber())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSNumber)duration
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"duration"];
  if (_NSIsNSNumber())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSNumber)trackNumber
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"trackNumber"];
  if (_NSIsNSNumber())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSNumber)trackCount
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"trackCount"];
  if (_NSIsNSNumber())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSNumber)discNumber
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"discNumber"];
  if (_NSIsNSNumber())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSNumber)discCount
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"discCount"];
  if (_NSIsNSNumber())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)albumID
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"playlistId"];
  if (_NSIsNSNumber())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSNumber)genreID
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"genreId"];
  if (_NSIsNSNumber())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSString)genre
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"genre"];
  if (_NSIsNSString())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSString)composerSortName
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"sort-composer"];
  if (_NSIsNSString())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSString)composerName
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"composerName"];
  if (_NSIsNSString())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSString)playlistArtistName
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"playlistArtistName"];
  if (_NSIsNSString())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSString)albumSortName
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"sort-album"];
  if (_NSIsNSString())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSString)playlistName
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"playlistName"];
  if (_NSIsNSString())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSNumber)artistID
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"artistId"];
  if (_NSIsNSNumber())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSString)artistSortName
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"sort-artist"];
  if (_NSIsNSString())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSString)artistName
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"artistName"];
  if (_NSIsNSString())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSString)itemSortName
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"sort-name"];
  if (_NSIsNSString())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSString)itemName
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"itemName"];
  if (_NSIsNSString())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSNumber)itemCloudID
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"cloud-id"];
  if (_NSIsNSNumber())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSNumber)itemAdamID
{
  v2 = [(NSDictionary *)self->_metadataDictionary objectForKey:@"itemId"];
  if (_NSIsNSNumber())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (ICStoreFinanceItemMetadata)initWithMetadataDictionary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICStoreFinanceItemMetadata;
  v6 = [(ICStoreFinanceItemMetadata *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metadataDictionary, a3);
  }

  return v7;
}

@end