@interface SSDownloadMetadata
+ (id)_addPlaybackTypeToHLSPlaylistURLString:(id)string;
- (BOOL)artworkIsPrerendered;
- (BOOL)hasHDR;
- (BOOL)hasMessagesExtension;
- (BOOL)is32BitOnly;
- (BOOL)isAutomaticDownload;
- (BOOL)isCompilation;
- (BOOL)isContentRestricted;
- (BOOL)isDeviceBasedVPP;
- (BOOL)isHLS;
- (BOOL)isHighDefinition;
- (BOOL)isMusicShow;
- (BOOL)isPremium;
- (BOOL)isRedownloadDownload;
- (BOOL)isRental;
- (BOOL)isSample;
- (BOOL)isSharedResource;
- (BOOL)isSoftwareKind;
- (BOOL)isTvTemplate;
- (BOOL)isVideosKind;
- (BOOL)launchProhibited;
- (BOOL)shouldDownloadAutomatically;
- (NSArray)MD5HashStrings;
- (NSArray)sinfs;
- (NSData)appReceiptData;
- (NSData)epubRightsData;
- (NSDate)releaseDate;
- (NSDictionary)dictionary;
- (NSDictionary)primaryAssetDictionary;
- (NSNumber)downloaderAccountIdentifier;
- (NSNumber)numberOfBytesToHash;
- (NSNumber)releaseYear;
- (NSNumber)rentalID;
- (NSNumber)requestPersistentID;
- (NSString)artistName;
- (NSString)copyright;
- (NSString)downloadKey;
- (NSString)fileExtension;
- (NSString)genre;
- (NSString)kind;
- (NSString)longDescription;
- (NSString)pageProgressionDirection;
- (NSString)preferredAssetFlavor;
- (NSString)redownloadActionParameters;
- (NSString)releaseDateString;
- (NSString)shortDescription;
- (NSString)sortArtistName;
- (NSString)sortCollectionName;
- (NSString)sortTitle;
- (NSString)thumbnailNewsstandBindingEdge;
- (NSString)thumbnailNewsstandBindingType;
- (NSString)title;
- (NSString)transactionIdentifier;
- (NSURL)cancelDownloadURL;
- (NSURL)fullSizeImageURL;
- (NSURL)hlsPlaylistURL;
- (NSURL)launchExtrasUrl;
- (NSURL)primaryAssetURL;
- (NSURL)thumbnailImageURL;
- (NSURL)transitMapDataURL;
- (SSDownloadMetadata)initWithCoder:(id)coder;
- (SSDownloadMetadata)initWithDictionary:(id)dictionary;
- (SSDownloadMetadata)initWithItem:(id)item;
- (SSDownloadMetadata)initWithItem:(id)item offer:(id)offer;
- (SSDownloadMetadata)initWithKind:(id)kind;
- (SSDownloadMetadata)initWithXPCEncoding:(id)encoding;
- (SSItemImageCollection)thumbnailImageCollection;
- (id)_assetDictionary;
- (id)_dateValueForValue:(id)value;
- (id)_newDateFormatter;
- (id)_newImageCollectionWithURLString:(id)string;
- (id)_stringValueForValue:(id)value;
- (id)_thumbnailArtworkImage;
- (id)_urlValueForValue:(id)value;
- (id)_valueForFirstAvailableTopLevelKey:(id)key;
- (id)applicationIdentifier;
- (id)betaExternalVersionIdentifier;
- (id)bundleIdentifier;
- (id)cloudIdentifier;
- (id)collectionArtistName;
- (id)collectionIndexInCollectionGroup;
- (id)collectionName;
- (id)composerName;
- (id)contentRating;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyWritableMetadata;
- (id)documentTargetIdentifier;
- (id)downloadPermalink;
- (id)downloadPolicy;
- (id)durationInMilliseconds;
- (id)enableExtensions;
- (id)episodeIdentifier;
- (id)episodeSortIdentifier;
- (id)indexInCollection;
- (id)longSeasonDescription;
- (id)messagesArtworkURL;
- (id)movementCount;
- (id)movementName;
- (id)movementNumber;
- (id)networkName;
- (id)newDownloadProperties;
- (id)numberOfCollectionsInCollectionGroup;
- (id)numberOfItemsInCollection;
- (id)podcastEpisodeGUID;
- (id)podcastFeedURL;
- (id)podcastType;
- (id)publicationVersion;
- (id)purchaseDate;
- (id)requiredDeviceCapabilities;
- (id)seasonNumber;
- (id)seriesName;
- (id)showComposer;
- (id)valueForFirstAvailableKey:(id)key;
- (id)variantIdentifier;
- (id)videoDetailsDictionary;
- (id)viewStoreItemURL;
- (id)workName;
- (int64_t)keyStyle;
- (unint64_t)artistIdentifier;
- (unint64_t)collectionIdentifier;
- (unint64_t)composerIdentifier;
- (unint64_t)genreIdentifier;
- (unint64_t)itemIdentifier;
- (unint64_t)preOrderIdentifier;
- (unint64_t)sagaIdentifier;
- (void)_setValue:(id)value forTopLevelKey:(id)key;
- (void)_setValueCopy:(id)copy forMetadataKey:(id)key;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setArtistIdentifier:(unint64_t)identifier;
- (void)setArtistName:(id)name;
- (void)setArtworkIsPrerendered:(BOOL)prerendered;
- (void)setAutomaticDownload:(BOOL)download;
- (void)setCancelDownloadURL:(id)l;
- (void)setCollectionIdentifier:(unint64_t)identifier;
- (void)setCollectionIndexInCollectionGroup:(id)group;
- (void)setCollectionName:(id)name;
- (void)setCompilation:(BOOL)compilation;
- (void)setComposerIdentifier:(unint64_t)identifier;
- (void)setContentRating:(id)rating;
- (void)setDeviceBasedVPP:(BOOL)p;
- (void)setDictionary:(id)dictionary;
- (void)setDownloadPolicy:(id)policy;
- (void)setExplicitContent:(BOOL)content;
- (void)setFullSizeImageURL:(id)l;
- (void)setGenreIdentifier:(unint64_t)identifier;
- (void)setHasMessagesExtension:(BOOL)extension;
- (void)setHighDefinition:(BOOL)definition;
- (void)setHlsPlaylistURL:(id)l;
- (void)setIndexInCollection:(id)collection;
- (void)setItemIdentifier:(unint64_t)identifier;
- (void)setKeyStyle:(int64_t)style;
- (void)setLaunchExtrasUrl:(id)url;
- (void)setLaunchProhibited:(BOOL)prohibited;
- (void)setLongDescription:(id)description;
- (void)setMD5HashStrings:(id)strings numberOfBytesToHash:(id)hash;
- (void)setMessagesArtworkURL:(id)l;
- (void)setMusicShow:(BOOL)show;
- (void)setNumberOfCollectionsInCollectionGroup:(id)group;
- (void)setNumberOfItemsInCollection:(id)collection;
- (void)setPodcastFeedURL:(id)l;
- (void)setPreOrderIdentifier:(unint64_t)identifier;
- (void)setPreferredAssetFlavor:(id)flavor;
- (void)setPrimaryAssetURL:(id)l;
- (void)setRedownloadDownload:(BOOL)download;
- (void)setReleaseDate:(id)date;
- (void)setReleaseDateString:(id)string;
- (void)setRental:(BOOL)rental;
- (void)setRequestPersistentID:(id)d;
- (void)setSagaIdentifier:(unint64_t)identifier;
- (void)setSample:(BOOL)sample;
- (void)setSharedResource:(BOOL)resource;
- (void)setShouldDownloadAutomatically:(BOOL)automatically;
- (void)setThumbnailImageURL:(id)l;
- (void)setTitle:(id)title;
- (void)setTransitMapDataURL:(id)l;
- (void)setTvTemplate:(BOOL)template;
- (void)setValue:(id)value forMetadataKey:(id)key;
- (void)setValuesFromDownload:(id)download;
- (void)setViewStoreItemURL:(id)l;
@end

@implementation SSDownloadMetadata

- (SSDownloadMetadata)initWithDictionary:(id)dictionary
{
  v6.receiver = self;
  v6.super_class = SSDownloadMetadata;
  v4 = [(SSDownloadMetadata *)&v6 init];
  if (v4)
  {
    v4->_dictionary = [dictionary mutableCopy];
    v4->_lock = objc_alloc_init(MEMORY[0x1E696AD10]);
  }

  return v4;
}

- (SSDownloadMetadata)initWithItem:(id)item
{
  defaultItemOffer = [item defaultItemOffer];

  return [(SSDownloadMetadata *)self initWithItem:item offer:defaultItemOffer];
}

- (SSDownloadMetadata)initWithItem:(id)item offer:(id)offer
{
  v6 = [(SSDownloadMetadata *)self initWithDictionary:0];
  if (!v6)
  {
    return v6;
  }

  iTunesStoreIdentifier = [item ITunesStoreIdentifier];
  if (iTunesStoreIdentifier)
  {
    v8 = iTunesStoreIdentifier;
    [(SSDownloadMetadata *)v6 setItemIdentifier:SSGetItemIdentifierFromValue(iTunesStoreIdentifier)];
    if ([offer isPreorder])
    {
      preOrderIdentifier = [item preOrderIdentifier];
      if (!preOrderIdentifier)
      {
        preOrderIdentifier = v8;
      }

      [(SSDownloadMetadata *)v6 setPreOrderIdentifier:SSGetItemIdentifierFromValue(preOrderIdentifier)];
    }
  }

  -[SSDownloadMetadata setArtistIdentifier:](v6, "setArtistIdentifier:", [objc_msgSend(item "artistIdentifier")]);
  -[SSDownloadMetadata setBundleIdentifier:](v6, "setBundleIdentifier:", [item bundleIdentifier]);
  -[SSDownloadMetadata setCollectionArtistName:](v6, "setCollectionArtistName:", [item collectionArtistName]);
  -[SSDownloadMetadata setCollectionIdentifier:](v6, "setCollectionIdentifier:", [objc_msgSend(item "collectionIdentifier")]);
  -[SSDownloadMetadata setCollectionIndexInCollectionGroup:](v6, "setCollectionIndexInCollectionGroup:", [item collectionIndexInCollectionGroup]);
  -[SSDownloadMetadata setCollectionName:](v6, "setCollectionName:", [item collectionName]);
  -[SSDownloadMetadata setCompilation:](v6, "setCompilation:", [item isCompilation]);
  -[SSDownloadMetadata setComposerName:](v6, "setComposerName:", [item composerName]);
  -[SSDownloadMetadata setEpisodeIdentifier:](v6, "setEpisodeIdentifier:", [item episodeIdentifier]);
  -[SSDownloadMetadata setEpisodeSortIdentifier:](v6, "setEpisodeSortIdentifier:", [item episodeSortIdentifier]);
  -[SSDownloadMetadata setGenre:](v6, "setGenre:", [item genreName]);
  -[SSDownloadMetadata setGenreIdentifier:](v6, "setGenreIdentifier:", [objc_msgSend(item "genreIdentifier")]);
  -[SSDownloadMetadata setIndexInCollection:](v6, "setIndexInCollection:", [item indexInCollection]);
  -[SSDownloadMetadata setLongDescription:](v6, "setLongDescription:", [item longDescription]);
  -[SSDownloadMetadata setNetworkName:](v6, "setNetworkName:", [item networkName]);
  -[SSDownloadMetadata setNumberOfCollectionsInCollectionGroup:](v6, "setNumberOfCollectionsInCollectionGroup:", [item numberOfCollectionsInCollectionGroup]);
  -[SSDownloadMetadata setNumberOfItemsInCollection:](v6, "setNumberOfItemsInCollection:", [item numberOfItemsInCollection]);
  -[SSDownloadMetadata setPodcastEpisodeGUID:](v6, "setPodcastEpisodeGUID:", [item podcastEpisodeGUID]);
  -[SSDownloadMetadata setSeasonNumber:](v6, "setSeasonNumber:", [item seasonNumber]);
  -[SSDownloadMetadata setSeriesName:](v6, "setSeriesName:", [item seriesName]);
  -[SSDownloadMetadata setShortDescription:](v6, "setShortDescription:", [item shortDescription]);
  -[SSDownloadMetadata setSubtitle:](v6, "setSubtitle:", [item artistName]);
  -[SSDownloadMetadata setTitle:](v6, "setTitle:", [item itemTitle]);
  -[SSDownloadMetadata setVideoDetailsDictionary:](v6, "setVideoDetailsDictionary:", [item videoDetails]);
  v10 = SSDownloadKindForItemKind([item itemKind]);
  [(SSDownloadMetadata *)v6 setKind:v10];
  softwareType = [item softwareType];
  [(SSDownloadMetadata *)v6 setValue:softwareType forMetadataKey:@"software-type"];
  contentRating = [item contentRating];
  [(SSDownloadMetadata *)v6 setContentRating:contentRating];
  -[SSDownloadMetadata setExplicitContent:](v6, "setExplicitContent:", [contentRating isExplicitContent]);
  -[SSDownloadMetadata setHighDefinition:](v6, "setHighDefinition:", [item isHighDefinition]);
  v13 = [objc_msgSend(offer "playableMedia")];
  if ((v13 & 0x8000000000000000) == 0)
  {
    -[SSDownloadMetadata setDurationInMilliseconds:](v6, "setDurationInMilliseconds:", [MEMORY[0x1E696AD98] numberWithInteger:v13]);
  }

  imageCollection = [item imageCollection];
  v15 = [imageCollection bestImageForSize:{0.0, 0.0}];
  -[SSDownloadMetadata setFullSizeImageURL:](v6, "setFullSizeImageURL:", [v15 URL]);
  if ((SSDownloadKindIsSoftwareKind(v10) & 1) == 0)
  {
    v17 = 88.0;
LABEL_19:
    lastObject = [imageCollection bestImageForSize:{v17, v17}];
    goto LABEL_20;
  }

  if ([softwareType isEqualToString:@"newsstand"])
  {
    v16 = [imageCollection imagesForKind:@"newsstand-latest-issue-icon.default"];
  }

  else
  {
    v16 = 0;
  }

  if (![v16 count])
  {
    v16 = [imageCollection imagesForKind:@"software-icon.default"];
  }

  if (![v16 count])
  {
    v17 = 57.0;
    goto LABEL_19;
  }

  lastObject = [v16 lastObject];
LABEL_20:
  v19 = lastObject;
  if ([v15 isPrerendered])
  {
    isPrerendered = 1;
  }

  else
  {
    isPrerendered = [v19 isPrerendered];
  }

  [(SSDownloadMetadata *)v6 setArtworkIsPrerendered:isPrerendered];
  if (v19)
  {
    -[SSDownloadMetadata setThumbnailImageURL:](v6, "setThumbnailImageURL:", [v19 URL]);
    -[SSDownloadMetadata setThumbnailNewsstandBindingEdge:](v6, "setThumbnailNewsstandBindingEdge:", [v19 valueForProperty:@"UINewsstandBindingEdge"]);
    v21 = v19;
  }

  else
  {
    -[SSDownloadMetadata setThumbnailImageURL:](v6, "setThumbnailImageURL:", [v15 URL]);
    -[SSDownloadMetadata setThumbnailNewsstandBindingEdge:](v6, "setThumbnailNewsstandBindingEdge:", [v15 valueForProperty:@"UINewsstandBindingEdge"]);
    v21 = v15;
  }

  -[SSDownloadMetadata setThumbnailNewsstandBindingType:](v6, "setThumbnailNewsstandBindingType:", [v21 valueForProperty:@"UINewsstandBindingType"]);
  releaseDate = [item releaseDate];
  if (releaseDate)
  {
    v23 = releaseDate;
    v24 = [objc_msgSend(MEMORY[0x1E695DEE8] "currentCalendar")];
    if (v24)
    {
      -[SSDownloadMetadata setReleaseYear:](v6, "setReleaseYear:", [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v24, "year")}]);
    }

    [(SSDownloadMetadata *)v6 setReleaseDate:v23];
  }

  if ([objc_msgSend(item "itemKind")])
  {
    [(SSDownloadMetadata *)v6 setPodcastType:@"itunes-u"];
  }

  if (SSDownloadKindIsPodcastKind(v10))
  {
    -[SSDownloadMetadata setPodcastFeedURL:](v6, "setPodcastFeedURL:", [item podcastFeedURL]);
    -[SSDownloadMetadata setPrimaryAssetURL:](v6, "setPrimaryAssetURL:", [objc_msgSend(offer "playableMedia")]);
  }

  return v6;
}

- (SSDownloadMetadata)initWithKind:(id)kind
{
  v4 = [(SSDownloadMetadata *)self initWithDictionary:0];
  v5 = v4;
  if (v4)
  {
    [(SSDownloadMetadata *)v4 setKind:kind];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSDownloadMetadata;
  [(SSDownloadMetadata *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [(SSDownloadMetadata *)a2 encodeWithCoder:?];
  }

  [(NSLock *)self->_lock lock];
  [coder encodeObject:self->_dictionary forKey:@"dict"];
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (SSDownloadMetadata)initWithCoder:(id)coder
{
  v21[2] = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [(SSDownloadMetadata *)a2 initWithCoder:?];
  }

  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v6 setWithObjects:{v7, v8, v9, v10, v11, objc_opt_class(), 0}];
  v13 = -[SSDownloadMetadata initWithDictionary:](self, "initWithDictionary:", [coder decodeObjectOfClasses:v12 forKey:@"dict"]);
  if ([coder containsValueForKey:@"kind"])
  {
    -[SSDownloadMetadata setArtworkIsPrerendered:](v13, "setArtworkIsPrerendered:", [coder decodeBoolForKey:@"prerender"]);
    -[SSDownloadMetadata setBundleIdentifier:](v13, "setBundleIdentifier:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"bid"]);
    -[SSDownloadMetadata setCollectionName:](v13, "setCollectionName:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"playlist"]);
    -[SSDownloadMetadata setKind:](v13, "setKind:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"kind"]);
    -[SSDownloadMetadata setDownloadKey:](v13, "setDownloadKey:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"key"]);
    -[SSDownloadMetadata setDurationInMilliseconds:](v13, "setDurationInMilliseconds:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"duration"]);
    -[SSDownloadMetadata setGenre:](v13, "setGenre:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"genre"]);
    -[SSDownloadMetadata setRental:](v13, "setRental:", [coder decodeBoolForKey:@"rental"]);
    -[SSDownloadMetadata setSinfs:](v13, "setSinfs:", [coder decodeObjectOfClasses:v12 forKey:@"sinfs"]);
    -[SSDownloadMetadata setThumbnailImageURL:](v13, "setThumbnailImageURL:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"small-image"]);
    -[SSDownloadMetadata setTitle:](v13, "setTitle:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"title"]);
    -[SSDownloadMetadata setTransactionIdentifier:](v13, "setTransactionIdentifier:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"tid"]);
    v14 = MEMORY[0x1E695DFD8];
    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v15 = [coder decodeObjectOfClasses:objc_msgSend(v14 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v21, 2)), @"identifier"}];
    if (v15)
    {
      [(SSDownloadMetadata *)v13 setItemIdentifier:SSGetItemIdentifierFromValue(v15)];
    }

    v16 = MEMORY[0x1E695DFD8];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v17 = [coder decodeObjectOfClasses:objc_msgSend(v16 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v20, 2)), @"preorder-id"}];
    if (v17)
    {
      [(SSDownloadMetadata *)v13 setPreOrderIdentifier:SSGetItemIdentifierFromValue(v17)];
    }

    v18 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"artist"];
    if (!v18)
    {
      v18 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    }

    [(SSDownloadMetadata *)v13 setSubtitle:v18];
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [(NSLock *)self->_lock lock];
  v5[1] = [(NSMutableDictionary *)self->_dictionary mutableCopyWithZone:zone];
  [(NSLock *)self->_lock unlock];
  return v5;
}

- (SSDownloadMetadata)initWithXPCEncoding:(id)encoding
{
  v4 = SSXPCCreateCFObjectFromXPCObject(encoding);
  v5 = [(SSDownloadMetadata *)self initWithDictionary:v4];

  return v5;
}

- (id)applicationIdentifier
{
  itemIdentifier = [(SSDownloadMetadata *)self itemIdentifier];
  if (itemIdentifier)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", itemIdentifier];
  }

  result = [(SSDownloadMetadata *)self bundleIdentifier];
  if (!result)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", itemIdentifier];
  }

  return result;
}

- (unint64_t)artistIdentifier
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"artistId", @"artist-id", 0];

  return SSGetItemIdentifierFromValue(v2);
}

- (NSString)artistName
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"artistName", @"artist-name", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (BOOL)artworkIsPrerendered
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"softwareIconNeedsShine", 0];
  if (objc_opt_respondsToSelector())
  {
    return [v2 BOOLValue] ^ 1;
  }

  else
  {
    return 0;
  }
}

- (id)betaExternalVersionIdentifier
{
  v2 = [(SSDownloadMetadata *)self valueForMetadataKey:@"betaExternalVersionIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (id)bundleIdentifier
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"softwareVersionBundleId", @"bundle-id", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (id)cloudIdentifier
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"cloud-id", @"sagaId", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (id)collectionArtistName
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"playlistArtistName", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)collectionIdentifier
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"playlistId", @"collection-id", 0];

  return SSGetItemIdentifierFromValue(v2);
}

- (id)collectionIndexInCollectionGroup
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"discNumber", @"disc-number", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (id)collectionName
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"playlistName", @"collection-name", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)composerIdentifier
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"composerId", @"composer-id", 0];

  return SSGetItemIdentifierFromValue(v2);
}

- (id)composerName
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"composerName", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (id)contentRating
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"rating", 0];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = 0;
  if (isKindOfClass)
  {
    v4 = [[SSItemContentRating alloc] initWithDictionary:v2];
  }

  return v4;
}

- (id)documentTargetIdentifier
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"document-target-app", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (id)downloadPermalink
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"download-permalink", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (id)durationInMilliseconds
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"duration", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (id)enableExtensions
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"enableExtensions", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (id)episodeIdentifier
{
  v3 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"episode-number", 0];

  return [(SSDownloadMetadata *)self _stringValueForValue:v3];
}

- (id)episodeSortIdentifier
{
  v3 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"episode-sort-id", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v3;
  }

  return [(SSDownloadMetadata *)self indexInCollection];
}

- (NSURL)fullSizeImageURL
{
  v3 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"artworkURL", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x1E695DFF8];

    return [v4 URLWithString:v3];
  }

  else
  {
    result = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"artwork-urls", 0];
    if (result)
    {
      v6 = [[SSItemImageCollection alloc] initWithImageCollection:result];
      v7 = [-[SSItemImageCollection bestImageForSize:](v6 bestImageForSize:{0.0, 0.0), "URL"}];

      return v7;
    }
  }

  return result;
}

- (NSString)genre
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"genre", @"genreName", @"genre-name", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)genreIdentifier
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"genreId", @"genre-id", 0];

  return SSGetItemIdentifierFromValue(v2);
}

- (BOOL)hasMessagesExtension
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"hasMessagesExtension", 0];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v2 BOOLValue];
}

- (NSURL)hlsPlaylistURL
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"hls-playlist-url", 0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = MEMORY[0x1E695DFF8];

  return [v3 URLWithString:v2];
}

- (id)indexInCollection
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"trackNumber", @"track-number", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (BOOL)is32BitOnly
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"is32BitOnly", 0];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v2 BOOLValue];
}

- (BOOL)isCompilation
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"compilation", 0];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v2 BOOLValue];
}

- (BOOL)isDeviceBasedVPP
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"isDeviceBased", 0];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v2 BOOLValue];
}

- (BOOL)hasHDR
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"has-hdr", 0];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v2 BOOLValue];
}

- (BOOL)isHighDefinition
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"high-definition", 0];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v2 BOOLValue];
}

- (BOOL)isHLS
{
  hlsPlaylistURL = [(SSDownloadMetadata *)self hlsPlaylistURL];
  if (SSDownloadKindIsVideosAppKind([(SSDownloadMetadata *)self kind]))
  {
    LOBYTE(v4) = hlsPlaylistURL != 0;
  }

  else
  {
    isPremium = [(SSDownloadMetadata *)self isPremium];
    hasHDR = [(SSDownloadMetadata *)self hasHDR];
    v4 = hasHDR & SSDeviceSupportsHDRDownload() | isPremium;
    if (!hlsPlaylistURL)
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4 & 1;
}

- (BOOL)isPremium
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"PR", 0];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v2 BOOLValue];
}

- (BOOL)isRental
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"isRental", 0];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v2 BOOLValue];
}

- (BOOL)isSample
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"isSample", 0];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v2 BOOLValue];
}

- (BOOL)isSharedResource
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"isSharedResource", 0];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v2 BOOLValue];
}

- (BOOL)isTvTemplate
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"isTvTemplateApp", 0];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v2 BOOLValue];
}

- (unint64_t)itemIdentifier
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"itemId", @"songId", @"item-id", 0];

  return SSGetItemIdentifierFromValue(v2);
}

- (NSString)kind
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"kind", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (NSURL)launchExtrasUrl
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"launch-extras-url", 0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = MEMORY[0x1E695DFF8];

  return [v3 URLWithString:v2];
}

- (BOOL)launchProhibited
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"launchProhibited", 0];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v2 BOOLValue];
}

- (NSString)longDescription
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"longDescription", @"long-description", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (id)messagesArtworkURL
{
  v3 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"messagesIconUrl", 0];

  return [(SSDownloadMetadata *)self _urlValueForValue:v3];
}

- (id)networkName
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"network-name", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (id)numberOfCollectionsInCollectionGroup
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"discCount", @"disc-count", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (id)numberOfItemsInCollection
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"trackCount", @"track-count", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (id)podcastEpisodeGUID
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"episode-guid", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (id)podcastFeedURL
{
  v3 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"podcast-feed-url", 0];

  return [(SSDownloadMetadata *)self _urlValueForValue:v3];
}

- (id)podcastType
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"podcast-type", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (NSDictionary)primaryAssetDictionary
{
  [(NSLock *)self->_lock lock];
  v3 = [-[SSDownloadMetadata _assetDictionary](self "_assetDictionary")];
  [(NSLock *)self->_lock unlock];

  return v3;
}

- (id)purchaseDate
{
  v3 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"purchaseDate", 0];

  return [(SSDownloadMetadata *)self _dateValueForValue:v3];
}

- (NSDate)releaseDate
{
  _releaseDateValue = [(SSDownloadMetadata *)self _releaseDateValue];

  return [(SSDownloadMetadata *)self _dateValueForValue:_releaseDateValue];
}

- (NSNumber)releaseYear
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"year", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (NSNumber)rentalID
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"rental-id", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)sagaIdentifier
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"cloud-id", @"sagaId", 0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [v2 unsignedLongLongValue];
}

- (id)seasonNumber
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"season-number", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (id)seriesName
{
  v3 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"show-name", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v3;
  }

  return [(SSDownloadMetadata *)self collectionName];
}

- (id)longSeasonDescription
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"longSeasonDescription", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (id)downloadPolicy
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"downloadPolicy", 0];
  objc_opt_class();
  v3 = 0;
  if (objc_opt_isKindOfClass())
  {
    v19 = 0;
    v3 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:&v19];
    if (v19)
    {
      v4 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v4)
      {
        v4 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v4 shouldLog];
      if ([v4 shouldLogToDisk])
      {
        v6 = shouldLog | 2;
      }

      else
      {
        v6 = shouldLog;
      }

      if (!os_log_type_enabled([v4 OSLogObject], OS_LOG_TYPE_ERROR))
      {
        v6 &= 2u;
      }

      if (v6)
      {
        v7 = objc_opt_class();
        v20 = 138543618;
        v21 = v7;
        v22 = 2114;
        v23 = v19;
        LODWORD(v18) = 22;
        v8 = _os_log_send_and_compose_impl();
        if (v8)
        {
          v9 = v8;
          v10 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v20, v18}];
          free(v9);
          SSFileLog(v4, @"%@", v11, v12, v13, v14, v15, v16, v10);
        }
      }
    }
  }

  return v3;
}

- (void)setArtistIdentifier:(unint64_t)identifier
{
  v4 = [MEMORY[0x1E696AD98] numberWithItemIdentifier:identifier];
  if ([(SSDownloadMetadata *)self keyStyle]== 1)
  {
    v5 = @"artist-id";
  }

  else
  {
    v5 = @"artistId";
  }

  [(SSDownloadMetadata *)self setValue:v4 forMetadataKey:v5];
}

- (void)setArtistName:(id)name
{
  if ([(SSDownloadMetadata *)self keyStyle]== 1)
  {
    v5 = @"artist-name";
  }

  else
  {
    v5 = @"artistName";
  }

  [(SSDownloadMetadata *)self _setValueCopy:name forMetadataKey:v5];
}

- (void)setArtworkIsPrerendered:(BOOL)prerendered
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:!prerendered];

  [(SSDownloadMetadata *)self setValue:v4 forMetadataKey:@"softwareIconNeedsShine"];
}

- (void)setCollectionIdentifier:(unint64_t)identifier
{
  v4 = [MEMORY[0x1E696AD98] numberWithItemIdentifier:identifier];
  if ([(SSDownloadMetadata *)self keyStyle]== 1)
  {
    v5 = @"collection-id";
  }

  else
  {
    v5 = @"playlistId";
  }

  [(SSDownloadMetadata *)self setValue:v4 forMetadataKey:v5];
}

- (void)setCollectionIndexInCollectionGroup:(id)group
{
  if ([(SSDownloadMetadata *)self keyStyle]== 1)
  {
    v5 = @"disc-number";
  }

  else
  {
    v5 = @"discNumber";
  }

  [(SSDownloadMetadata *)self setValue:group forMetadataKey:v5];
}

- (void)setCollectionName:(id)name
{
  if ([(SSDownloadMetadata *)self keyStyle]== 1)
  {
    v5 = @"collection-name";
  }

  else
  {
    v5 = @"playlistName";
  }

  [(SSDownloadMetadata *)self setValue:name forMetadataKey:v5];
}

- (void)setCompilation:(BOOL)compilation
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:compilation];

  [(SSDownloadMetadata *)self setValue:v4 forMetadataKey:@"compilation"];
}

- (void)setDeviceBasedVPP:(BOOL)p
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:p];

  [(SSDownloadMetadata *)self setValue:v4 forMetadataKey:@"isDeviceBased"];
}

- (void)setComposerIdentifier:(unint64_t)identifier
{
  v4 = [MEMORY[0x1E696AD98] numberWithItemIdentifier:identifier];
  if ([(SSDownloadMetadata *)self keyStyle]== 1)
  {
    v5 = @"composer-id";
  }

  else
  {
    v5 = @"composerId";
  }

  [(SSDownloadMetadata *)self setValue:v4 forMetadataKey:v5];
}

- (void)setContentRating:(id)rating
{
  contentRatingDictionary = [rating contentRatingDictionary];

  [(SSDownloadMetadata *)self setValue:contentRatingDictionary forMetadataKey:@"rating"];
}

- (void)setExplicitContent:(BOOL)content
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:content];

  [(SSDownloadMetadata *)self setValue:v4 forMetadataKey:@"explicit"];
}

- (void)setFullSizeImageURL:(id)l
{
  absoluteString = [l absoluteString];

  [(SSDownloadMetadata *)self setValue:absoluteString forMetadataKey:@"artworkURL"];
}

- (void)setGenreIdentifier:(unint64_t)identifier
{
  v4 = [MEMORY[0x1E696AD98] numberWithItemIdentifier:identifier];
  if ([(SSDownloadMetadata *)self keyStyle]== 1)
  {
    v5 = @"genre-id";
  }

  else
  {
    v5 = @"genreId";
  }

  [(SSDownloadMetadata *)self setValue:v4 forMetadataKey:v5];
}

- (void)setHasMessagesExtension:(BOOL)extension
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:extension];

  [(SSDownloadMetadata *)self setValue:v4 forMetadataKey:@"hasMessagesExtension"];
}

- (void)setHighDefinition:(BOOL)definition
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:definition];

  [(SSDownloadMetadata *)self setValue:v4 forMetadataKey:@"high-definition"];
}

- (void)setHlsPlaylistURL:(id)l
{
  absoluteString = [l absoluteString];

  [(SSDownloadMetadata *)self setValue:absoluteString forMetadataKey:@"hls-playlist-url"];
}

- (void)setIndexInCollection:(id)collection
{
  if ([(SSDownloadMetadata *)self keyStyle]== 1)
  {
    v5 = @"track-number";
  }

  else
  {
    v5 = @"trackNumber";
  }

  [(SSDownloadMetadata *)self setValue:collection forMetadataKey:v5];
}

- (void)setItemIdentifier:(unint64_t)identifier
{
  v4 = [MEMORY[0x1E696AD98] numberWithItemIdentifier:identifier];
  if ([(SSDownloadMetadata *)self keyStyle]== 1)
  {
    v5 = @"item-id";
  }

  else
  {
    v5 = @"itemId";
  }

  [(SSDownloadMetadata *)self setValue:v4 forMetadataKey:v5];
}

- (void)setLaunchExtrasUrl:(id)url
{
  absoluteString = [url absoluteString];

  [(SSDownloadMetadata *)self setValue:absoluteString forMetadataKey:@"launch-extras-url"];
}

- (void)setLaunchProhibited:(BOOL)prohibited
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:prohibited];

  [(SSDownloadMetadata *)self setValue:v4 forMetadataKey:@"launchProhibited"];
}

- (void)setLongDescription:(id)description
{
  if ([(SSDownloadMetadata *)self keyStyle]== 1)
  {
    v5 = @"long-description";
  }

  else
  {
    v5 = @"longDescription";
  }

  [(SSDownloadMetadata *)self _setValueCopy:description forMetadataKey:v5];
}

- (void)setMessagesArtworkURL:(id)l
{
  absoluteString = [l absoluteString];

  [(SSDownloadMetadata *)self setValue:absoluteString forMetadataKey:@"messagesIconUrl"];
}

- (void)setNumberOfCollectionsInCollectionGroup:(id)group
{
  if ([(SSDownloadMetadata *)self keyStyle]== 1)
  {
    v5 = @"disc-count";
  }

  else
  {
    v5 = @"discCount";
  }

  [(SSDownloadMetadata *)self setValue:group forMetadataKey:v5];
}

- (void)setNumberOfItemsInCollection:(id)collection
{
  if ([(SSDownloadMetadata *)self keyStyle]== 1)
  {
    v5 = @"track-count";
  }

  else
  {
    v5 = @"trackCount";
  }

  [(SSDownloadMetadata *)self setValue:collection forMetadataKey:v5];
}

- (void)setPodcastFeedURL:(id)l
{
  absoluteString = [l absoluteString];

  [(SSDownloadMetadata *)self setValue:absoluteString forMetadataKey:@"podcast-feed-url"];
}

- (void)setReleaseDate:(id)date
{
  if ([(SSDownloadMetadata *)self keyStyle]== 1)
  {
    v5 = @"release-date";
  }

  else
  {
    v5 = @"releaseDate";
  }

  [(SSDownloadMetadata *)self setValue:date forMetadataKey:v5];
}

- (void)setRental:(BOOL)rental
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:rental];

  [(SSDownloadMetadata *)self setValue:v4 forMetadataKey:@"isRental"];
}

- (void)setSagaIdentifier:(unint64_t)identifier
{
  v4 = [MEMORY[0x1E696AD98] numberWithItemIdentifier:identifier];

  [(SSDownloadMetadata *)self setValue:v4 forMetadataKey:@"cloud-id"];
}

- (void)setSample:(BOOL)sample
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:sample];

  [(SSDownloadMetadata *)self setValue:v4 forMetadataKey:@"isSample"];
}

- (void)setMusicShow:(BOOL)show
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:show];

  [(SSDownloadMetadata *)self setValue:v4 forMetadataKey:@"is-apple-music-show"];
}

- (void)setSharedResource:(BOOL)resource
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:resource];

  [(SSDownloadMetadata *)self _setValueCopy:v4 forMetadataKey:@"isSharedResource"];
}

- (void)setThumbnailImageURL:(id)l
{
  absoluteString = [l absoluteString];

  [(SSDownloadMetadata *)self setValue:absoluteString forMetadataKey:@"thumbnail-url"];
}

- (void)setTitle:(id)title
{
  [(SSDownloadMetadata *)self setValue:title forMetadataKey:@"title"];

  [(SSDownloadMetadata *)self setValue:title forMetadataKey:@"unmodified-title"];
}

- (void)setTvTemplate:(BOOL)template
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:template];

  [(SSDownloadMetadata *)self setValue:v4 forMetadataKey:@"isTvTemplateApp"];
}

- (void)setViewStoreItemURL:(id)l
{
  absoluteString = [l absoluteString];

  [(SSDownloadMetadata *)self setValue:absoluteString forMetadataKey:@"url"];
}

- (void)setDownloadPolicy:(id)policy
{
  v24 = *MEMORY[0x1E69E9840];
  if (policy)
  {
    v19 = 0;
    v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:policy requiringSecureCoding:1 error:&v19];
    if (v4)
    {
      [(SSDownloadMetadata *)self setValue:v4 forMetadataKey:@"downloadPolicy"];
    }

    else
    {
      v5 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v5)
      {
        v5 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v5 shouldLog];
      if ([v5 shouldLogToDisk])
      {
        v7 = shouldLog | 2;
      }

      else
      {
        v7 = shouldLog;
      }

      if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_ERROR))
      {
        v7 &= 2u;
      }

      if (v7)
      {
        v8 = objc_opt_class();
        v20 = 138543618;
        v21 = v8;
        v22 = 2114;
        v23 = v19;
        LODWORD(v18) = 22;
        v9 = _os_log_send_and_compose_impl();
        if (v9)
        {
          v10 = v9;
          v11 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, &v20, v18}];
          free(v10);
          SSFileLog(v5, @"%@", v12, v13, v14, v15, v16, v17, v11);
        }
      }
    }
  }
}

- (NSString)shortDescription
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"description", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (NSString)sortArtistName
{
  v3 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"sort-artist", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v3;
  }

  return [(SSDownloadMetadata *)self subtitle];
}

- (NSString)sortCollectionName
{
  v3 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"sort-album", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v3;
  }

  return [(SSDownloadMetadata *)self collectionName];
}

- (NSString)sortTitle
{
  v3 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"sort-name", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v3;
  }

  return [(SSDownloadMetadata *)self title];
}

- (SSItemImageCollection)thumbnailImageCollection
{
  v3 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"thumbnail-url", 0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v4 = [(SSDownloadMetadata *)self _newImageCollectionWithURLString:v3]) == 0)
  {
    v5 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"artwork-urls", 0];
    if (!v5 || (v4 = [[SSItemImageCollection alloc] initWithImageCollection:v5]) == 0)
    {
      v6 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"softwareIcon57x57URL", @"icon-url", 0];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v4 = 0;
      if (isKindOfClass)
      {
        v4 = [(SSDownloadMetadata *)self _newImageCollectionWithURLString:v6];
      }
    }
  }

  return v4;
}

- (NSString)thumbnailNewsstandBindingEdge
{
  v3 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"thumbnail-newsstand-binding-edge", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v3;
  }

  _thumbnailArtworkImage = [(SSDownloadMetadata *)self _thumbnailArtworkImage];

  return [_thumbnailArtworkImage valueForProperty:@"UINewsstandBindingEdge"];
}

- (NSString)thumbnailNewsstandBindingType
{
  v3 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"thumbnail-newsstand-binding-type", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v3;
  }

  _thumbnailArtworkImage = [(SSDownloadMetadata *)self _thumbnailArtworkImage];

  return [_thumbnailArtworkImage valueForProperty:@"UINewsstandBindingType"];
}

- (NSURL)thumbnailImageURL
{
  _thumbnailArtworkImage = [(SSDownloadMetadata *)self _thumbnailArtworkImage];

  return [_thumbnailArtworkImage URL];
}

- (NSString)title
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"unmodified-title", @"title", @"itemName", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (NSString)transactionIdentifier
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"download-id", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (id)variantIdentifier
{
  v2 = [(SSDownloadMetadata *)self valueForMetadataKey:@"variantId"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (id)videoDetailsDictionary
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"videoDetails", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (id)viewStoreItemURL
{
  v3 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"url", 0];

  return [(SSDownloadMetadata *)self _urlValueForValue:v3];
}

- (id)showComposer
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"show-composer", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isMusicShow
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"is-apple-music-show", 0];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v2 BOOLValue];
}

- (id)workName
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"work", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (id)movementName
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"movement", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (id)movementNumber
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"movement-number", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (id)movementCount
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"movement-count", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (NSData)appReceiptData
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"app-receipt", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (NSURL)cancelDownloadURL
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"cancel-download-url", 0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = MEMORY[0x1E695DFF8];

  return [v3 URLWithString:v2];
}

- (NSString)copyright
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"copyright", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (id)copyWritableMetadata
{
  v23 = *MEMORY[0x1E69E9840];
  [(NSLock *)self->_lock lock];
  v3 = [-[NSMutableDictionary objectForKey:](self->_dictionary objectForKey:{@"metadata", "mutableCopy"}];
  if (v3)
  {
    v4 = v3;
    for (i = 0; i != 4; ++i)
    {
      v6 = off_1E84ACF20[i];
      v7 = [(NSMutableDictionary *)self->_dictionary objectForKey:v6];
      if (v7)
      {
        [v4 setObject:v7 forKey:v6];
      }
    }

    v8 = [-[NSMutableDictionary objectForKey:](self->_dictionary objectForKey:{@"asset-info", "mutableCopy"}];
    if (!v8)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    allKeys = [v8 allKeys];
    if (![allKeys count])
    {
      allKeys = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"file-size", @"flavor", 0}];
    }

    _assetDictionary = [(SSDownloadMetadata *)self _assetDictionary];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(allKeys);
          }

          v15 = *(*(&v18 + 1) + 8 * j);
          v16 = [_assetDictionary objectForKey:v15];
          if (v16)
          {
            [v8 setObject:v16 forKey:v15];
          }
        }

        v12 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    [v4 setObject:v8 forKey:@"asset-info"];
  }

  else
  {
    v4 = [(NSMutableDictionary *)self->_dictionary mutableCopy];
  }

  [(NSLock *)self->_lock unlock];
  return v4;
}

- (NSDictionary)dictionary
{
  v2 = self->_dictionary;

  return v2;
}

- (NSNumber)downloaderAccountIdentifier
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"com.apple.iTunesStore.downloadInfo", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (v3 = [v2 objectForKey:@"accountInfo"], objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = [v3 objectForKey:@"DownloaderID"];
  }

  else
  {
    v4 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (NSString)downloadKey
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"downloadKey", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (NSData)epubRightsData
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"epr", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (NSString)fileExtension
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"fileExtension", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (int64_t)keyStyle
{
  [(NSLock *)self->_lock lock];
  keyStyle = self->_keyStyle;
  [(NSLock *)self->_lock unlock];
  return keyStyle;
}

- (BOOL)isAutomaticDownload
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"is-auto-download", 0];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v2 BOOLValue];
}

- (BOOL)isContentRestricted
{
  contentRating = [(SSDownloadMetadata *)self contentRating];
  if (contentRating)
  {

    LOBYTE(isExplicitContent) = [contentRating isRestricted];
  }

  else
  {
    isExplicitContent = [(SSDownloadMetadata *)self isExplicitContent];
    if (isExplicitContent)
    {
      kind = [(SSDownloadMetadata *)self kind];
      if (SSDownloadKindIsEBookKind(kind, v6))
      {

        LOBYTE(isExplicitContent) = SSRestrictionsShouldRestrictEroticBooks();
      }

      else
      {

        LOBYTE(isExplicitContent) = SSRestrictionsShouldRestrictExplicitContent();
      }
    }
  }

  return isExplicitContent;
}

- (BOOL)isRedownloadDownload
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"is-redownload", 0];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v2 BOOLValue];
}

- (BOOL)isSoftwareKind
{
  kind = [(SSDownloadMetadata *)self kind];

  return SSDownloadKindIsSoftwareKind(kind);
}

- (BOOL)isVideosKind
{
  kind = [(SSDownloadMetadata *)self kind];

  return SSDownloadKindIsVideosAppKind(kind);
}

- (NSArray)MD5HashStrings
{
  v3 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"chunks", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 objectForKey:@"chunks"];
  }

  else
  {
    v5 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"md5", 0];
    objc_opt_class();
    v6 = 0;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    v4 = [MEMORY[0x1E695DEC8] arrayWithObject:v5];
  }

  v6 = v4;
LABEL_6:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

- (id)newDownloadProperties
{
  v169 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = 0;
  v40 = sel_artistName;
  v41 = @"d";
  v42 = 0;
  v43 = sel_betaExternalVersionIdentifier;
  v44 = @"27";
  v45 = 0;
  v46 = sel_bundleIdentifier;
  v47 = @"c";
  v48 = 0;
  v49 = sel_cloudIdentifier;
  v50 = @"Y";
  v51 = 0;
  v52 = sel_collectionArtistName;
  v53 = @"e";
  v54 = 0;
  v55 = sel_downloadPermalink;
  v56 = @"p0";
  v57 = 0;
  v58 = sel_numberOfCollectionsInCollectionGroup;
  v59 = @"o";
  v60 = 0;
  v61 = sel_numberOfItemsInCollection;
  v62 = @"p";
  v63 = 0;
  v64 = sel_collectionName;
  v65 = @"f";
  v66 = 0;
  v67 = sel_composerName;
  v68 = @"g";
  v69 = 0;
  v70 = sel_documentTargetIdentifier;
  v71 = @"E";
  v72 = 0;
  v73 = sel_downloadKey;
  v74 = @"F";
  v75 = 0;
  v76 = sel_durationInMilliseconds;
  v77 = @"h";
  v78 = 0;
  v79 = sel_enableExtensions;
  v80 = @"EE";
  v81 = 0;
  v82 = sel_episodeIdentifier;
  v83 = @"u";
  v84 = 0;
  v85 = sel_episodeSortIdentifier;
  v86 = @"v";
  v87 = 0;
  v88 = sel_genre;
  v89 = @"i";
  v90 = 0;
  v91 = sel_indexInCollection;
  v92 = @"j";
  v93 = 0;
  v94 = sel_collectionIndexInCollectionGroup;
  v95 = @"k";
  v96 = 0;
  v97 = sel_kind;
  v98 = @"1";
  v99 = 0;
  v100 = sel_longDescription;
  v101 = @"n";
  v102 = 0;
  v103 = sel_longSeasonDescription;
  v104 = @"w";
  v105 = 0;
  v106 = sel_messagesArtworkURL;
  v107 = @"MA";
  v108 = __StringValueForURL;
  v109 = sel_pageProgressionDirection;
  v110 = @"13";
  v111 = 0;
  v112 = sel_podcastEpisodeGUID;
  v113 = @"A";
  v114 = 0;
  v115 = sel_podcastFeedURL;
  v116 = @"B";
  v117 = __StringValueForURL;
  v118 = sel_podcastType;
  v119 = @"C";
  v120 = 0;
  v121 = sel_releaseDate;
  v122 = @"q";
  v124 = sel_releaseYear;
  v125 = @"r";
  v127 = sel_seasonNumber;
  v128 = @"y";
  v130 = sel_seriesName;
  v131 = @"z";
  v133 = sel_shortDescription;
  v134 = @"s";
  v136 = sel_purchaseDate;
  v137 = @"8";
  v123 = __AbsoluteTimeForDate;
  v126 = 0;
  v129 = 0;
  v132 = 0;
  v135 = 0;
  v138 = __AbsoluteTimeForDate;
  v139 = sel_publicationVersion;
  v140 = @"p2";
  v141 = 0;
  v142 = sel_transactionIdentifier;
  v143 = @"9";
  v144 = 0;
  v145 = sel_title;
  v146 = @"2";
  v147 = 0;
  v148 = sel_cancelDownloadURL;
  v149 = @"P";
  v150 = __StringValueForURL;
  v151 = sel_thumbnailImageURL;
  v152 = @"G";
  v153 = __StringValueForURL;
  v154 = sel_redownloadActionParameters;
  v155 = @"04";
  v156 = 0;
  v157 = sel_thumbnailNewsstandBindingEdge;
  v158 = @"05";
  v159 = 0;
  v160 = sel_thumbnailNewsstandBindingType;
  v161 = @"06";
  v162 = 0;
  v163 = sel_viewStoreItemURL;
  v164 = @"11";
  v165 = __StringValueForURL;
  v166 = sel_variantIdentifier;
  v167 = @"26";
  v168 = 0;
  do
  {
    v5 = [(SSDownloadMetadata *)self performSelector:(&v40)[v4]];
    v6 = v5;
    v7 = *(&v42 + v4 * 8);
    if (v7)
    {
      v6 = v7(v5);
    }

    if (v6)
    {
      [v3 setObject:v6 forKey:(&v40)[v4 + 1]];
    }

    v4 += 3;
  }

  while (v4 != 129);
  v8 = 0;
  v20 = @"artwork-template-name";
  v21 = @"L";
  v22 = @"bundleVersion";
  v23 = @"20";
  v24 = @"cancelIfDuplicate";
  v25 = @"10";
  v26 = @"is-in-queue";
  v27 = @"03";
  v28 = @"is-purchased-redownload";
  v29 = @"21";
  v30 = @"storeCohort";
  v31 = @"22";
  v32 = @"softwareVersionExternalIdentifier";
  v33 = @"R";
  v34 = @"software-type";
  v35 = @"N";
  v36 = @"s";
  v37 = @"T";
  v38 = @"xid";
  v39 = @"X";
  do
  {
    v9 = [(SSDownloadMetadata *)self valueForMetadataKey:*(&v20 + v8), v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79];
    if (v9)
    {
      [v3 setObject:v9 forKey:*(&v20 + v8 + 8)];
    }

    v8 += 16;
  }

  while (v8 != 160);
  v10 = [(SSDownloadMetadata *)self valueForMetadataKey:@"is-auto-download"];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v10 BOOLValue])
  {
    [v3 setObject:&unk_1F507A0D8 forKey:@"D"];
  }

  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", -[SSDownloadMetadata artworkIsPrerendered](self, "artworkIsPrerendered")), @"b"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", -[SSDownloadMetadata hasMessagesExtension](self, "hasMessagesExtension")), @"HM"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", -[SSDownloadMetadata isCompilation](self, "isCompilation")), @"l"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", -[SSDownloadMetadata isDeviceBasedVPP](self, "isDeviceBasedVPP")), @"vp"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", -[SSDownloadMetadata isExplicitContent](self, "isExplicitContent")), @"12"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", -[SSDownloadMetadata isHighDefinition](self, "isHighDefinition")), @"15"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", -[SSDownloadMetadata isRental](self, "isRental")), @"m"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", -[SSDownloadMetadata isSample](self, "isSample")), @"t"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", -[SSDownloadMetadata isSharedResource](self, "isSharedResource")), @"sr"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", -[SSDownloadMetadata isTvTemplate](self, "isTvTemplate")), @"tt"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", -[SSDownloadMetadata launchProhibited](self, "launchProhibited")), @"LP"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", -[SSDownloadMetadata isMusicShow](self, "isMusicShow")), @"ms"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", -[SSDownloadMetadata isHLS](self, "isHLS")), @"hi"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", -[SSDownloadMetadata isPremium](self, "isPremium")), @"PR"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", -[SSDownloadMetadata hasHDR](self, "hasHDR")), @"HR"}];
  v11 = [(SSDownloadMetadata *)self valueForMetadataKey:@"has-4k"];
  if (objc_opt_respondsToSelector())
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", objc_msgSend(v11, "BOOLValue")), @"FK"}];
  }

  v12 = [(SSDownloadMetadata *)self valueForMetadataKey:@"has-dolby-vision"];
  if (objc_opt_respondsToSelector())
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", objc_msgSend(v12, "BOOLValue")), @"DV"}];
  }

  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithItemIdentifier:", -[SSDownloadMetadata artistIdentifier](self, "artistIdentifier")), @"3"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithItemIdentifier:", -[SSDownloadMetadata collectionIdentifier](self, "collectionIdentifier")), @"4"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithItemIdentifier:", -[SSDownloadMetadata composerIdentifier](self, "composerIdentifier")), @"5"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithItemIdentifier:", -[SSDownloadMetadata genreIdentifier](self, "genreIdentifier")), @"6"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithItemIdentifier:", -[SSDownloadMetadata itemIdentifier](self, "itemIdentifier")), @"7"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithItemIdentifier:", -[SSDownloadMetadata preOrderIdentifier](self, "preOrderIdentifier")), @"H"}];
  if ([(SSDownloadMetadata *)self rentalID])
  {
    [v3 setObject:-[SSDownloadMetadata rentalID](self forKey:{"rentalID"), @"ri"}];
  }

  if ([(SSDownloadMetadata *)self hlsPlaylistURL])
  {
    [v3 setObject:-[SSDownloadMetadata hlsPlaylistURL](self forKey:{"hlsPlaylistURL"), @"hl"}];
  }

  v13 = [(SSDownloadMetadata *)self valueForMetadataKey:@"com.apple.iTunesStore.downloadInfo"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = 0;
LABEL_28:
    accountName = 0;
    goto LABEL_29;
  }

  v14 = [v13 objectForKey:@"accountInfo"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = [v13 objectForKey:@"preferredAssetFlavor"];
    goto LABEL_28;
  }

  v15 = objc_alloc_init(SSAccount);
  [(SSAccount *)v15 setLockdownDictionary:v14];
  uniqueIdentifier = [(SSAccount *)v15 uniqueIdentifier];
  accountName = [(SSAccount *)v15 accountName];

  v18 = [v13 objectForKey:@"preferredAssetFlavor"];
  if (uniqueIdentifier)
  {
    [v3 setObject:uniqueIdentifier forKey:@"U"];
  }

LABEL_29:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    accountName = [(SSDownloadMetadata *)self valueForMetadataKey:@"appleId"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 setObject:accountName forKey:@"Z"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 setObject:v18 forKey:@"09"];
  }

  return v3;
}

- (NSNumber)numberOfBytesToHash
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"chunks", 0];
  objc_opt_class();
  v3 = 0;
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 objectForKey:@"chunkSize"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (NSString)pageProgressionDirection
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"page-progression-direction", @"pageProgressionDirection", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (NSString)preferredAssetFlavor
{
  v2 = [(SSDownloadMetadata *)self valueForMetadataKey:@"com.apple.iTunesStore.downloadInfo"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = [v2 objectForKey:@"preferredAssetFlavor"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v4 = [v3 copy];

  return v4;
}

- (id)publicationVersion
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"publication-version", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)preOrderIdentifier
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"preorder-id", 0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [v2 itemIdentifierValue];
}

- (NSURL)primaryAssetURL
{
  v2 = [(SSDownloadMetadata *)self _valueForFirstAvailableTopLevelKey:@"URL", @"url", 0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = MEMORY[0x1E695DFF8];

  return [v3 URLWithString:v2];
}

- (NSString)redownloadActionParameters
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"buy-params-256", @"buyParams", @"action-params", @"redownload-params", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (NSString)releaseDateString
{
  _releaseDateValue = [(SSDownloadMetadata *)self _releaseDateValue];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _newDateFormatter = [(SSDownloadMetadata *)self _newDateFormatter];
    _releaseDateValue = [_newDateFormatter stringFromDate:_releaseDateValue];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return _releaseDateValue;
  }

  else
  {
    return 0;
  }
}

- (NSNumber)requestPersistentID
{
  v2 = [(SSDownloadMetadata *)self valueForMetadataKey:@"com.apple.iTunesStore.downloadInfo"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = [v2 objectForKey:@"requestPersistentID"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v4 = [v3 copy];

  return v4;
}

- (id)requiredDeviceCapabilities
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"UIRequiredDeviceCapabilities", 0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }
  }

  return v2;
}

- (void)setAutomaticDownload:(BOOL)download
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:download];

  [(SSDownloadMetadata *)self setValue:v4 forMetadataKey:@"is-auto-download"];
}

- (void)setCancelDownloadURL:(id)l
{
  absoluteString = [l absoluteString];

  [(SSDownloadMetadata *)self setValue:absoluteString forMetadataKey:@"cancel-download-url"];
}

- (void)setDictionary:(id)dictionary
{
  [(NSLock *)self->_lock lock];
  dictionary = self->_dictionary;
  if (dictionary != dictionary)
  {

    self->_dictionary = [dictionary mutableCopy];
  }

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)setKeyStyle:(int64_t)style
{
  [(NSLock *)self->_lock lock];
  self->_keyStyle = style;
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)setMD5HashStrings:(id)strings numberOfBytesToHash:(id)hash
{
  if (![strings count])
  {
    [(SSDownloadMetadata *)self setValue:0 forMetadataKey:@"chunks"];
    selfCopy2 = self;
    v7 = 0;
    goto LABEL_5;
  }

  if ([strings count] == 1)
  {
    [(SSDownloadMetadata *)self setValue:0 forMetadataKey:@"chunks"];
    v7 = [strings objectAtIndex:0];
    selfCopy2 = self;
LABEL_5:

    [(SSDownloadMetadata *)selfCopy2 setValue:v7 forMetadataKey:@"md5"];
    return;
  }

  v9 = [-[SSDownloadMetadata valueForFirstAvailableKey:](self valueForFirstAvailableKey:{@"chunks", 0), "mutableCopy"}];
  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v10 = v9;
  [v9 setObject:strings forKey:@"chunks"];
  [v10 setObject:hash forKey:@"chunkSize"];
  [(SSDownloadMetadata *)self setValue:v10 forMetadataKey:@"chunks"];
  [(SSDownloadMetadata *)self setValue:0 forMetadataKey:@"md5"];
}

- (void)setPreferredAssetFlavor:(id)flavor
{
  v5 = [(SSDownloadMetadata *)self valueForMetadataKey:@"com.apple.iTunesStore.downloadInfo"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 mutableCopy];
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
  }

  v7 = v6;
  if (flavor)
  {
    [v6 setObject:flavor forKey:@"preferredAssetFlavor"];
  }

  else
  {
    [v6 removeObjectForKey:@"preferredAssetFlavor"];
  }

  [(SSDownloadMetadata *)self setValue:v7 forMetadataKey:@"com.apple.iTunesStore.downloadInfo"];
}

- (void)setPreOrderIdentifier:(unint64_t)identifier
{
  v4 = [MEMORY[0x1E696AD98] numberWithItemIdentifier:identifier];

  [(SSDownloadMetadata *)self setValue:v4 forMetadataKey:@"preorder-id"];
}

- (void)setPrimaryAssetURL:(id)l
{
  absoluteString = [l absoluteString];

  [(SSDownloadMetadata *)self _setValue:absoluteString forTopLevelKey:@"URL"];
}

- (void)setRedownloadDownload:(BOOL)download
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:download];

  [(SSDownloadMetadata *)self setValue:v4 forMetadataKey:@"is-redownload"];
}

- (void)setReleaseDateString:(id)string
{
  if ([(SSDownloadMetadata *)self keyStyle]== 1)
  {
    v5 = @"release-date";
  }

  else
  {
    v5 = @"releaseDate";
  }

  [(SSDownloadMetadata *)self setValue:string forMetadataKey:v5];
}

- (void)setRequestPersistentID:(id)d
{
  v5 = [(SSDownloadMetadata *)self valueForMetadataKey:@"com.apple.iTunesStore.downloadInfo"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 mutableCopy];
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
  }

  v7 = v6;
  if (d)
  {
    [v6 setObject:d forKey:@"requestPersistentID"];
  }

  else
  {
    [v6 removeObjectForKey:@"requestPersistentID"];
  }

  [(SSDownloadMetadata *)self setValue:v7 forMetadataKey:@"com.apple.iTunesStore.downloadInfo"];
}

- (void)setShouldDownloadAutomatically:(BOOL)automatically
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:automatically];

  [(SSDownloadMetadata *)self setValue:v4 forMetadataKey:@"auto-download"];
}

- (void)setTransitMapDataURL:(id)l
{
  absoluteString = [l absoluteString];

  [(SSDownloadMetadata *)self _setValue:absoluteString forTopLevelKey:@"transitGeoFileURL"];
}

- (void)setValue:(id)value forMetadataKey:(id)key
{
  [(NSLock *)self->_lock lock];
  dictionary = self->_dictionary;
  if (!dictionary)
  {
    dictionary = objc_alloc_init(MEMORY[0x1E695DF90]);
    self->_dictionary = dictionary;
  }

  v8 = [(NSMutableDictionary *)dictionary objectForKey:@"metadata"];
  if (v8)
  {
    v9 = v8;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([-[NSMutableDictionary classForCoder](v9 "classForCoder")] & 1) == 0)
    {
      v9 = [(NSMutableDictionary *)v9 mutableCopy];
      [(NSMutableDictionary *)self->_dictionary setObject:v9 forKey:@"metadata"];
    }
  }

  else
  {
    v9 = self->_dictionary;
  }

  if (value)
  {
    [(NSMutableDictionary *)v9 setObject:value forKey:key];
  }

  else
  {
    [(NSMutableDictionary *)v9 removeObjectForKey:key];
    [(NSMutableDictionary *)self->_dictionary removeObjectForKey:key];
  }

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)setValuesFromDownload:(id)download
{
  v42[85] = *MEMORY[0x1E69E9840];
  v4 = v42;
  v41[76] = sel_setArtistName_;
  v42[0] = 0;
  v42[1] = sel_setBetaExternalVersionIdentifier_;
  v42[2] = 0;
  v42[3] = sel_setBundleIdentifier_;
  v42[4] = 0;
  v42[5] = sel_setDownloadPermalink_;
  v42[6] = 0;
  v42[7] = sel_setCancelDownloadURL_;
  v42[8] = __URLValueForString;
  v42[9] = sel_setCloudIdentifier_;
  v42[10] = 0;
  v42[11] = sel_setCollectionArtistName_;
  v42[12] = 0;
  v42[13] = sel_setCollectionIndexInCollectionGroup_;
  v42[14] = 0;
  v42[15] = sel_setCollectionName_;
  v42[16] = 0;
  v42[17] = sel_setComposerName_;
  v42[18] = 0;
  v42[19] = sel_setDocumentTargetIdentifier_;
  v42[20] = 0;
  v42[21] = sel_setDownloadKey_;
  v42[22] = 0;
  v42[23] = sel_setDurationInMilliseconds_;
  v42[24] = 0;
  v42[25] = sel_setEnableExtensions_;
  v42[26] = 0;
  v42[27] = sel_setEpisodeIdentifier_;
  v42[28] = 0;
  v42[29] = sel_setEpisodeSortIdentifier_;
  v42[30] = 0;
  v42[31] = sel_setGenre_;
  v42[32] = 0;
  v42[33] = sel_setIndexInCollection_;
  v42[34] = 0;
  v42[35] = sel_setKind_;
  v42[36] = 0;
  v42[37] = sel_setLongDescription_;
  v42[38] = 0;
  v42[39] = sel_setLongSeasonDescription_;
  v42[40] = 0;
  v42[41] = sel_setMessagesArtworkURL_;
  v42[42] = __URLValueForString;
  v42[43] = sel_setNumberOfCollectionsInCollectionGroup_;
  v42[44] = 0;
  v42[45] = sel_setNumberOfItemsInCollection_;
  v42[46] = 0;
  v42[47] = sel_setPageProgressionDirection_;
  v42[48] = 0;
  v42[49] = sel_setPodcastEpisodeGUID_;
  v42[50] = 0;
  v42[51] = sel_setPodcastFeedURL_;
  v42[52] = __URLValueForString;
  v42[53] = sel_setPodcastType_;
  v42[54] = 0;
  v42[55] = sel_setPurchaseDate_;
  v42[56] = __DateValueForAbsoluteTime;
  v42[57] = sel_setReleaseDate_;
  v42[58] = __DateValueForAbsoluteTime;
  v42[59] = sel_setReleaseYear_;
  v42[60] = 0;
  v42[61] = sel_setSeasonNumber_;
  v42[62] = 0;
  v42[63] = sel_setSeriesName_;
  v42[64] = 0;
  v42[65] = sel_setShortDescription_;
  v42[66] = 0;
  v42[67] = sel_setThumbnailImageURL_;
  v42[68] = __URLValueForString;
  v42[69] = sel_setTitle_;
  v42[70] = 0;
  v42[71] = sel_setTransactionIdentifier_;
  v42[72] = 0;
  v42[73] = sel_setPublicationVersion_;
  v42[74] = 0;
  v42[75] = sel_setRedownloadActionParameters_;
  v42[76] = 0;
  v42[77] = sel_setThumbnailNewsstandBindingEdge_;
  v42[78] = 0;
  v42[79] = sel_setThumbnailNewsstandBindingType_;
  v42[80] = 0;
  v42[81] = sel_setViewStoreItemURL_;
  v42[82] = __URLValueForString;
  v42[83] = sel_setVariantIdentifier_;
  v42[84] = 0;
  v41[0] = @"d";
  v41[1] = @"27";
  v41[2] = @"c";
  v41[3] = @"p0";
  v41[4] = @"P";
  v41[5] = @"Y";
  v41[6] = @"e";
  v41[7] = @"k";
  v41[8] = @"f";
  v41[9] = @"g";
  v41[10] = @"E";
  v41[11] = @"F";
  v41[12] = @"h";
  v41[13] = @"EE";
  v41[14] = @"u";
  v41[15] = @"v";
  v41[16] = @"i";
  v41[17] = @"j";
  v41[18] = @"1";
  v41[19] = @"n";
  v41[20] = @"w";
  v41[21] = @"MA";
  v41[22] = @"o";
  v41[23] = @"p";
  v41[24] = @"13";
  v41[25] = @"A";
  v41[26] = @"B";
  v41[27] = @"C";
  v41[28] = @"8";
  v41[29] = @"q";
  v41[30] = @"r";
  v41[31] = @"y";
  v41[32] = @"z";
  v41[33] = @"s";
  v41[34] = @"G";
  v41[35] = @"2";
  v41[36] = @"9";
  v41[37] = @"p2";
  v41[38] = @"04";
  v41[39] = @"05";
  v41[40] = @"06";
  v41[41] = @"11";
  v41[42] = @"26";
  v41[43] = @"3";
  v41[44] = @"4";
  v41[45] = @"5";
  v41[46] = @"6";
  v41[47] = @"7";
  v41[48] = @"H";
  v41[49] = @"b";
  v41[50] = @"D";
  v41[51] = @"HM";
  v41[52] = @"l";
  v41[53] = @"vp";
  v41[54] = @"12";
  v41[55] = @"m";
  v41[56] = @"t";
  v41[57] = @"sr";
  v41[58] = @"tt";
  v41[59] = @"LP";
  v41[60] = @"N";
  v41[61] = @"R";
  v41[62] = @"T";
  v41[63] = @"X";
  v41[64] = @"L";
  v41[65] = @"03";
  v41[66] = @"22";
  v41[67] = @"09";
  v41[68] = @"15";
  v41[69] = @"10";
  v41[70] = @"ri";
  v41[71] = @"hl";
  v41[72] = @"PR";
  v41[73] = @"has-hdr";
  v41[74] = @"has-dolby-vision";
  v41[75] = @"has-4k";
  [download getValues:v7 forProperties:v41 count:76];
  for (i = 0; i != 344; i += 8)
  {
    v6 = *&v7[i];
    if (v6)
    {
      if (*v4)
      {
        v6 = (*v4)(*&v7[i]);
        *&v7[i] = v6;
      }

      [(SSDownloadMetadata *)self performSelector:*(v4 - 1) withObject:v6];
    }

    v4 += 2;
  }

  [(SSDownloadMetadata *)self setArtistIdentifier:SSGetItemIdentifierFromValue(v8)];
  [(SSDownloadMetadata *)self setCollectionIdentifier:SSGetItemIdentifierFromValue(v9)];
  [(SSDownloadMetadata *)self setComposerIdentifier:SSGetItemIdentifierFromValue(v10)];
  [(SSDownloadMetadata *)self setGenreIdentifier:SSGetItemIdentifierFromValue(v11)];
  [(SSDownloadMetadata *)self setItemIdentifier:SSGetItemIdentifierFromValue(v12)];
  [(SSDownloadMetadata *)self setPreOrderIdentifier:SSGetItemIdentifierFromValue(v13)];
  -[SSDownloadMetadata setArtworkIsPrerendered:](self, "setArtworkIsPrerendered:", [v14 BOOLValue]);
  -[SSDownloadMetadata setAutomaticDownload:](self, "setAutomaticDownload:", [v15 BOOLValue]);
  -[SSDownloadMetadata setHasMessagesExtension:](self, "setHasMessagesExtension:", [v16 BOOLValue]);
  -[SSDownloadMetadata setCompilation:](self, "setCompilation:", [v17 BOOLValue]);
  -[SSDownloadMetadata setDeviceBasedVPP:](self, "setDeviceBasedVPP:", [v18 BOOLValue]);
  -[SSDownloadMetadata setExplicitContent:](self, "setExplicitContent:", [v19 BOOLValue]);
  -[SSDownloadMetadata setRental:](self, "setRental:", [v20 BOOLValue]);
  -[SSDownloadMetadata setSample:](self, "setSample:", [v21 BOOLValue]);
  -[SSDownloadMetadata setSharedResource:](self, "setSharedResource:", [v22 BOOLValue]);
  -[SSDownloadMetadata setTvTemplate:](self, "setTvTemplate:", [v23 BOOLValue]);
  -[SSDownloadMetadata setLaunchProhibited:](self, "setLaunchProhibited:", [v24 BOOLValue]);
  [(SSDownloadMetadata *)self setValue:v25 forMetadataKey:@"software-type"];
  [(SSDownloadMetadata *)self setValue:v26 forMetadataKey:@"softwareVersionExternalIdentifier"];
  [(SSDownloadMetadata *)self setValue:v27 forMetadataKey:@"s"];
  [(SSDownloadMetadata *)self setValue:v28 forMetadataKey:@"xid"];
  [(SSDownloadMetadata *)self setValue:v29 forMetadataKey:@"artwork-template-name"];
  [(SSDownloadMetadata *)self setValue:v30 forMetadataKey:@"is-in-queue"];
  [(SSDownloadMetadata *)self setValue:v31 forMetadataKey:@"storeCohort"];
  [(SSDownloadMetadata *)self setPreferredAssetFlavor:v32];
  -[SSDownloadMetadata setHighDefinition:](self, "setHighDefinition:", [v33 BOOLValue]);
  [(SSDownloadMetadata *)self setValue:v34 forMetadataKey:@"cancelIfDuplicate"];
  [(SSDownloadMetadata *)self setValue:v35 forMetadataKey:@"ri"];
  [(SSDownloadMetadata *)self setValue:v36 forMetadataKey:@"hl"];
  [(SSDownloadMetadata *)self setValue:v37 forMetadataKey:@"PR"];
  [(SSDownloadMetadata *)self setValue:v38 forMetadataKey:@"HR"];
  [(SSDownloadMetadata *)self setValue:v39 forMetadataKey:@"DV"];
  [(SSDownloadMetadata *)self setValue:v40 forMetadataKey:@"FK"];
}

- (BOOL)shouldDownloadAutomatically
{
  v2 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"auto-download", 0];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  return [v2 BOOLValue];
}

- (NSArray)sinfs
{
  v3 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"sinfs", 0];
  if (SSDownloadKindIsSoftwareKind([(SSDownloadMetadata *)self kind]))
  {
    [(NSLock *)self->_lock lock];
    v4 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"thinned-app"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v4 valueForKey:@"sinfs"];
    }

    [(NSLock *)self->_lock unlock];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (NSURL)transitMapDataURL
{
  v2 = [(SSDownloadMetadata *)self _valueForFirstAvailableTopLevelKey:@"transitGeoFileURL", 0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = MEMORY[0x1E695DFF8];

  return [v3 URLWithString:v2];
}

- (id)valueForFirstAvailableKey:(id)key
{
  [(NSLock *)self->_lock lock];
  _assetDictionary = [(SSDownloadMetadata *)self _assetDictionary];
  v6 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"metadata"];
  if (!v6)
  {
    v6 = [_assetDictionary objectForKey:@"metadata"];
  }

  v13 = &v14;
  if (key)
  {
    do
    {
      v7 = [_assetDictionary objectForKey:key];
      if (!v7)
      {
        v7 = [v6 objectForKey:key];
        if (!v7)
        {
          v7 = [(NSMutableDictionary *)self->_dictionary objectForKey:key];
        }
      }

      v8 = v7;
      v9 = v7;
      v10 = v13++;
      key = *v10;
      if (*v10)
      {
        v11 = v8 == 0;
      }

      else
      {
        v11 = 0;
      }
    }

    while (v11);
  }

  else
  {
    v8 = 0;
  }

  [(NSLock *)self->_lock unlock];
  return v8;
}

- (id)_assetDictionary
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"metadata"];
  v4 = [v3 objectForKey:@"kind"];
  v5 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"assets"];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 0;
    }
  }

  if (!v4)
  {
    v4 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"kind"];
    if (!v4)
    {
      firstObject = [v5 firstObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (v7 = [firstObject objectForKey:@"metadata"], objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v4 = [v7 objectForKey:@"kind"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v4 = 0;
        }
      }

      else
      {
        v4 = 0;
      }
    }
  }

  v8 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"thinned-app"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (SSDownloadKindIsSoftwareKind(v4) & 1) == 0)
  {
    v9 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"hls-playlist-url"];
    v10 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"has-hdr"];
    v11 = SSDeviceSupportsHDRDownload();
    v12 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"is-premium"];
    if (v11 && ([v10 BOOLValue] & 1) != 0)
    {
      bOOLValue = 1;
    }

    else
    {
      bOOLValue = [v12 BOOLValue];
    }

    if (SSDownloadKindIsVideosAppKind(v4))
    {
      v9 = [objc_opt_class() _addPlaybackTypeToHLSPlaylistURLString:v9];
      bOOLValue = 1;
    }

    if (![v5 count])
    {
      v19 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"asset-info"];
      v8 = 0;
LABEL_57:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & bOOLValue & 1) != 0 && SSDownloadKindIsVideoKind(v4))
      {
        v32 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
        [v32 setObject:v9 forKey:@"URL"];
        [v32 setObject:MEMORY[0x1E695E118] forKey:@"is-hls"];
        [v32 setObject:@"movpkg" forKey:@"fileExtension"];
        if (v8 || (v8 = v19) != 0)
        {
          v33 = [v8 objectForKey:@"file-size"];
          if (v33)
          {
            v40 = @"file-size";
            v41 = v33;
            [v32 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKey:{"dictionaryWithObjects:forKeys:count:", &v41, &v40, 1), @"asset-info"}];
          }
        }

        v8 = [v32 copy];
      }

      return v8;
    }

    v35 = bOOLValue;
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = [v3 objectForKey:@"com.apple.iTunesStore.downloadInfo"];
    if (!v15)
    {
      v15 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"com.apple.iTunesStore.downloadInfo"];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 objectForKey:@"preferredAssetFlavor"];
      if ([v16 length])
      {
        [v14 addObject:v16];
      }
    }

    if (SSDownloadKindIsVideoKind(v4))
    {
      v18 = +[SSDevice currentDevice];
      if ([v18 supportsDeviceCapability:2])
      {
        [v14 addObject:@"1080p"];
      }

      if ([v18 supportsDeviceCapability:1])
      {
        [v14 addObject:@"hdmv"];
        [v14 addObject:@"720p"];
      }

      [v14 addObject:@"480p"];
      [v14 addObject:@"SDMV"];
      [v14 addObject:@"SD"];
    }

    else if (SSDownloadKindIsEBookKind(v4, v17))
    {
      GSMainScreenScaleFactor();
      if (v20 == 1.0)
      {
        [v14 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:", @"lrpluspub", @"lrpub", 0)}];
      }

      [v14 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:", @"pluspub", @"pub", 0)}];
    }

    if ([v14 count])
    {
      v21 = [v5 count];
      if (v21 >= 1)
      {
        v22 = v21;
        v23 = 0;
        v8 = 0;
        v24 = 0x7FFFFFFFFFFFFFFFLL;
        do
        {
          v25 = [v5 objectAtIndex:v23];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v26 = [v25 objectForKey:@"flavor"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v27 = [v14 indexOfObject:v26];
              if (v27 < v24)
              {
                v8 = v25;
                v24 = v27;
              }
            }
          }

          ++v23;
        }

        while (v22 != v23);
        goto LABEL_56;
      }
    }

    else
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v28 = [v5 countByEnumeratingWithState:&v36 objects:v42 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v37;
LABEL_48:
        v31 = 0;
        while (1)
        {
          if (*v37 != v30)
          {
            objc_enumerationMutation(v5);
          }

          v8 = *(*(&v36 + 1) + 8 * v31);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            goto LABEL_56;
          }

          if (v29 == ++v31)
          {
            v29 = [v5 countByEnumeratingWithState:&v36 objects:v42 count:16];
            v8 = 0;
            if (v29)
            {
              goto LABEL_48;
            }

            goto LABEL_56;
          }
        }
      }
    }

    v8 = 0;
LABEL_56:

    v19 = 0;
    bOOLValue = v35;
    goto LABEL_57;
  }

  return v8;
}

- (id)_dateValueForValue:(id)value
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _newDateFormatter = [(SSDownloadMetadata *)self _newDateFormatter];
    value = [_newDateFormatter dateFromString:value];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return value;
  }

  else
  {
    return 0;
  }
}

- (id)_newImageCollectionWithURLString:(id)string
{
  result = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:string];
  if (result)
  {
    v5 = result;
    v6 = objc_alloc_init(SSItemArtworkImage);
    [(SSItemArtworkImage *)v6 setURL:v5];
    v7 = [-[SSDownloadMetadata valueForMetadataKey:](self valueForMetadataKey:{@"software-type", "isEqualToString:", @"newsstand"}];
    v8 = SSItemArtworkKindNewsstandIcon;
    if (!v7)
    {
      v8 = SSItemArtworkKindDownloadQueueThumbnail;
    }

    [(SSItemArtworkImage *)v6 setImageKind:*v8];
    v9 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"thumbnail-newsstand-binding-edge", 0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SSItemArtworkImage *)v6 setValue:v9 forProperty:@"UINewsstandBindingEdge"];
    }

    v10 = [(SSDownloadMetadata *)self valueForFirstAvailableKey:@"thumbnail-newsstand-binding-type", 0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SSItemArtworkImage *)v6 setValue:v10 forProperty:@"UINewsstandBindingType"];
    }

    v11 = [SSItemImageCollection alloc];
    v12 = -[SSItemImageCollection initWithItemImages:](v11, "initWithItemImages:", [MEMORY[0x1E695DEC8] arrayWithObject:v6]);

    return v12;
  }

  return result;
}

- (id)_newDateFormatter
{
  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v2 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss'Z'"];
  [v2 setLenient:1];
  [v2 setTimeZone:{objc_msgSend(MEMORY[0x1E695DFE8], "timeZoneForSecondsFromGMT:", 0)}];
  return v2;
}

- (void)_setValue:(id)value forTopLevelKey:(id)key
{
  [(NSLock *)self->_lock lock];
  dictionary = self->_dictionary;
  if (dictionary)
  {
    if (value)
    {
LABEL_3:
      [(NSMutableDictionary *)dictionary setObject:value forKey:key];
      goto LABEL_6;
    }
  }

  else
  {
    dictionary = objc_alloc_init(MEMORY[0x1E695DF90]);
    self->_dictionary = dictionary;
    if (value)
    {
      goto LABEL_3;
    }
  }

  [(NSMutableDictionary *)dictionary removeObjectForKey:key];
LABEL_6:
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)_setValueCopy:(id)copy forMetadataKey:(id)key
{
  v6 = [copy copy];
  [(SSDownloadMetadata *)self setValue:v6 forMetadataKey:key];
}

- (id)_stringValueForValue:(id)value
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    value = [value stringValue];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return value;
  }

  else
  {
    return 0;
  }
}

- (id)_thumbnailArtworkImage
{
  thumbnailImageCollection = [(SSDownloadMetadata *)self thumbnailImageCollection];
  if (![-[SSDownloadMetadata valueForMetadataKey:](self valueForMetadataKey:{@"software-type", "isEqualToString:", @"newsstand"}] || (v4 = -[SSItemImageCollection imagesForKind:](thumbnailImageCollection, "imagesForKind:", @"newsstand-latest-issue-icon.default")) == 0)
  {
    v4 = [(SSItemImageCollection *)thumbnailImageCollection imagesForKind:@"download-queue-item.default"];
  }

  result = [v4 count];
  if (result)
  {

    return [v4 lastObject];
  }

  return result;
}

- (id)_urlValueForValue:(id)value
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    value = [MEMORY[0x1E695DFF8] URLWithString:value];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return value;
  }

  else
  {
    return 0;
  }
}

- (id)_valueForFirstAvailableTopLevelKey:(id)key
{
  [(NSLock *)self->_lock lock];
  _assetDictionary = [(SSDownloadMetadata *)self _assetDictionary];
  v12 = &v13;
  if (key)
  {
    v6 = _assetDictionary;
    do
    {
      v7 = [v6 objectForKey:key];
      if (!v7)
      {
        v7 = [(NSMutableDictionary *)self->_dictionary objectForKey:key];
      }

      v8 = v7;
      v9 = v12++;
      key = *v9;
      if (*v9)
      {
        v10 = v7 == 0;
      }

      else
      {
        v10 = 0;
      }
    }

    while (v10);
  }

  else
  {
    v7 = 0;
  }

  [(NSLock *)self->_lock unlock];
  return v7;
}

+ (id)_addPlaybackTypeToHLSPlaylistURLString:(id)string
{
  stringCopy = string;
  if (string)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AF20]) initWithString:string];
    v5 = [objc_msgSend(v4 "percentEncodedQueryItems")];
    if (!v5)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    v6 = [objc_alloc(MEMORY[0x1E696AF60]) initWithName:@"playback-type" value:@"download"];
    if (v6)
    {
      [v5 addObject:v6];
    }

    [v4 setPercentEncodedQueryItems:v5];
    v7 = [objc_msgSend(v4 "URL")];
    if (v7)
    {
      return v7;
    }
  }

  return stringCopy;
}

- (uint64_t)encodeWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"SSDownloadMetadata.m" lineNumber:403 description:@"Only keyed coding is supported"];
}

- (uint64_t)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"SSDownloadMetadata.m" lineNumber:410 description:@"Only keyed coding is supported"];
}

@end