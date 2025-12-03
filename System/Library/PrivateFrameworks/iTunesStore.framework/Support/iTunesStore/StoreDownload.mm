@interface StoreDownload
- (BOOL)_patchPackageDictionary:(id)dictionary matchesInstallApplication:(id)application;
- (BOOL)isEqual:(id)equal;
- (BOOL)writeToFile:(id)file options:(unint64_t)options error:(id *)error;
- (NSArray)assets;
- (NSNumber)downloaderAccountIdentifier;
- (NSNumber)familyAccountIdentifier;
- (NSNumber)matchedStatus;
- (NSNumber)purchaserAccountIdentifier;
- (NSNumber)redownloadedStatus;
- (StoreDownload)initWithContentsOfFile:(id)file;
- (StoreDownload)initWithDownload:(id)download;
- (id)_copyPinfValueWithField:(int64_t)field;
- (id)_copySinfValueFromEpubRightsDataWithField:(int64_t)field;
- (id)_copySinfValueWithField:(int64_t)field;
- (id)_epubRightsSinfData;
- (id)_newAssetArrayWithDownloadAssets:(id)assets;
- (id)_newAssetPropertiesWithStoreDictionary:(id)dictionary assetType:(id)type;
- (id)_newAssetWithURL:(id)l assetType:(id)type;
- (id)_newDateFormatter;
- (id)_newDeltaPackageAssetsWithAssetDictionary:(id)dictionary;
- (id)_newPrimaryAssetsWithAssetDictionary:(id)dictionary assetType:(id)type;
- (id)copyJobActivity;
- (id)description;
- (id)newDownloadProperties;
- (void)dealloc;
@end

@implementation StoreDownload

- (StoreDownload)initWithContentsOfFile:(id)file
{
  v4 = [[NSMutableDictionary alloc] initWithContentsOfFile:file];
  if (v4)
  {
    v5 = v4;
    v6 = [(StoreDownload *)self initWithDictionary:v4];

    return v6;
  }

  else
  {

    return 0;
  }
}

- (StoreDownload)initWithDownload:(id)download
{
  v15.receiver = self;
  v15.super_class = StoreDownload;
  v4 = [(StoreDownload *)&v15 init];
  if (v4)
  {
    v47[75] = "setKind:";
    v48[0] = 0;
    v48[1] = "setArtistName:";
    v48[2] = 0;
    v48[3] = "setBundleIdentifier:";
    v48[4] = 0;
    v48[5] = "setCancelDownloadURL:";
    v48[6] = sub_100133530;
    v48[7] = "setDownloadPermalink:";
    v48[8] = 0;
    v48[9] = "setCloudIdentifier:";
    v48[10] = 0;
    v48[11] = "setCollectionArtistName:";
    v48[12] = 0;
    v48[13] = "setCollectionIndexInCollectionGroup:";
    v48[14] = 0;
    v48[15] = "setCollectionName:";
    v48[16] = 0;
    v48[17] = "setComposerName:";
    v48[18] = 0;
    v48[19] = "setDocumentTargetIdentifier:";
    v48[20] = 0;
    v48[21] = "setDownloadKey:";
    v48[22] = 0;
    v48[23] = "setDurationInMilliseconds:";
    v48[24] = 0;
    v48[25] = "setEpisodeIdentifier:";
    v48[26] = 0;
    v48[27] = "setEpisodeSortIdentifier:";
    v48[28] = 0;
    v48[29] = "setGenre:";
    v48[30] = 0;
    v48[31] = "setIndexInCollection:";
    v48[32] = 0;
    v48[33] = "setLongDescription:";
    v48[34] = 0;
    v48[35] = "setLongSeasonDescription:";
    v48[36] = 0;
    v48[37] = "setNumberOfCollectionsInCollectionGroup:";
    v48[38] = 0;
    v48[39] = "setNumberOfItemsInCollection:";
    v48[40] = 0;
    v48[41] = "setPageProgressionDirection:";
    v48[42] = 0;
    v48[43] = "setPodcastEpisodeGUID:";
    v48[44] = 0;
    v48[45] = "setPodcastFeedURL:";
    v48[46] = sub_100133530;
    v48[47] = "setPodcastType:";
    v48[48] = 0;
    v48[49] = "setPurchaseDate:";
    v48[50] = sub_100133540;
    v48[51] = "setReleaseDate:";
    v48[52] = sub_100133540;
    v48[53] = "setReleaseYear:";
    v48[54] = 0;
    v48[55] = "setSeasonNumber:";
    v48[56] = 0;
    v48[57] = "setSeriesName:";
    v48[58] = 0;
    v48[59] = "setShortDescription:";
    v48[60] = 0;
    v48[61] = "setThumbnailImageURL:";
    v48[62] = sub_100133530;
    v48[63] = "setTitle:";
    v48[64] = 0;
    v48[65] = "setPublicationVersion:";
    v48[66] = 0;
    v48[67] = "setTransactionIdentifier:";
    v48[68] = 0;
    v48[69] = "setRedownloadActionParameters:";
    v48[70] = 0;
    v48[71] = "setThumbnailNewsstandBindingEdge:";
    v48[72] = 0;
    v48[73] = "setThumbnailNewsstandBindingType:";
    v48[74] = 0;
    v48[75] = "setViewStoreItemURL:";
    v48[76] = sub_100133530;
    v47[0] = @"kind";
    v47[1] = @"artist_name";
    v47[2] = @"bundle_id";
    v47[3] = @"cancel_url";
    v47[4] = @"download_permalink";
    v47[5] = @"store_saga_id";
    v47[6] = @"collection_artist_name";
    v47[7] = @"index_in_collection_group";
    v47[8] = @"collection_name";
    v47[9] = @"composer_name";
    v47[10] = @"document_target_id";
    v47[11] = @"store_download_key";
    v47[12] = @"duration_in_ms";
    v47[13] = @"episode_id";
    v47[14] = @"episode_sort_id";
    v47[15] = @"genre_name";
    v47[16] = @"index_in_collection";
    v47[17] = @"long_description";
    v47[18] = @"long_season_description";
    v47[19] = @"collection_group_count";
    v47[20] = @"collection_item_count";
    v47[21] = @"page_progression_direction";
    v47[22] = @"podcast_episode_guid";
    v47[23] = @"podcast_feed_url";
    v47[24] = @"podcast_type";
    v47[25] = @"store_purchase_date";
    v47[26] = @"release_date";
    v47[27] = @"release_year";
    v47[28] = @"season_number";
    v47[29] = @"series_name";
    v47[30] = @"short_description";
    v47[31] = @"thumbnail_url";
    v47[32] = @"title";
    v47[33] = @"store_publication_version";
    v47[34] = @"store_transaction_id";
    v47[35] = @"store_redownload_parameters";
    v47[36] = @"thumbnail_newsstand_binding_edge";
    v47[37] = @"thumbnail_newsstand_binding_type";
    v47[38] = @"store_url";
    v47[39] = @"store_artist_id";
    v47[40] = @"store_collection_id";
    v47[41] = @"store_composer_id";
    v47[42] = @"store_genre_id";
    v47[43] = @"store_item_id";
    v47[44] = @"store_preorder_id";
    v47[45] = @"artwork_is_prerendered";
    v47[46] = @"is_automatic";
    v47[47] = @"is_compilation";
    v47[48] = @"is_explicit";
    v47[49] = @"is_rental";
    v47[50] = @"is_sample";
    v47[51] = @"is_music_show";
    v47[52] = @"software_type";
    v47[53] = @"store_software_version_id";
    v47[54] = @"store_front_id";
    v47[55] = @"store_xid";
    v47[56] = @"artwork_template_name";
    v47[57] = @"is_store_queued";
    v47[58] = @"preferred_asset_flavor";
    v47[59] = @"is_hd";
    v47[60] = @"cancel_if_duplicate";
    v47[61] = @"bundle_version";
    v47[62] = @"store_cohort";
    v47[63] = @"is_redownload";
    v47[64] = @"beta_external_version_identifier";
    v47[65] = @"variant_id";
    v47[66] = @"rental_id";
    v47[67] = @"show_composer";
    v47[68] = @"work_name";
    v47[69] = @"has_hdr";
    v47[70] = @"is_hls";
    v47[71] = @"is_premium";
    v47[72] = @"has_4k";
    v47[73] = @"has_dolby_vision";
    v47[74] = @"hls_playlist_url";
    [download getValues:v16 forProperties:v47 count:75];
    if (SSDownloadKindIsPodcastKind())
    {
      [(StoreDownload *)v4 setKeyStyle:1];
    }

    v5 = 0;
    v6 = v48;
    do
    {
      v7 = v16[v5];
      if (v7)
      {
        if (*v6)
        {
          v7 = (*v6)(v16[v5]);
          v16[v5] = v7;
        }

        [(StoreDownload *)v4 performSelector:*(v6 - 1) withObject:v7];
      }

      ++v5;
      v6 += 2;
    }

    while (v5 != 39);
    v8 = SSGetItemIdentifierFromValue();
    if (v8)
    {
      [(StoreDownload *)v4 setArtistIdentifier:v8];
    }

    v9 = SSGetItemIdentifierFromValue();
    if (v9)
    {
      [(StoreDownload *)v4 setCollectionIdentifier:v9];
    }

    v10 = SSGetItemIdentifierFromValue();
    if (v10)
    {
      [(StoreDownload *)v4 setComposerIdentifier:v10];
    }

    v11 = SSGetItemIdentifierFromValue();
    if (v11)
    {
      [(StoreDownload *)v4 setGenreIdentifier:v11];
    }

    v12 = SSGetItemIdentifierFromValue();
    if (v12)
    {
      [(StoreDownload *)v4 setItemIdentifier:v12];
    }

    v13 = SSGetItemIdentifierFromValue();
    if (v13)
    {
      [(StoreDownload *)v4 setPreOrderIdentifier:v13];
    }

    if (v17)
    {
      -[StoreDownload setArtworkIsPrerendered:](v4, "setArtworkIsPrerendered:", [v17 BOOLValue]);
    }

    if (v18)
    {
      -[StoreDownload setAutomaticDownload:](v4, "setAutomaticDownload:", [v18 BOOLValue]);
    }

    if (v19)
    {
      -[StoreDownload setCompilation:](v4, "setCompilation:", [v19 BOOLValue]);
    }

    if (v20)
    {
      -[StoreDownload setExplicitContent:](v4, "setExplicitContent:", [v20 BOOLValue]);
    }

    if (v21)
    {
      -[StoreDownload setRental:](v4, "setRental:", [v21 BOOLValue]);
    }

    if (v22)
    {
      -[StoreDownload setSample:](v4, "setSample:", [v22 BOOLValue]);
    }

    if (v23)
    {
      -[StoreDownload setMusicShow:](v4, "setMusicShow:", [v23 BOOLValue]);
    }

    [(StoreDownload *)v4 setValue:v24 forMetadataKey:SSDownloadMetadataKeySoftwareType];
    [(StoreDownload *)v4 setValue:v25 forMetadataKey:SSDownloadMetadataKeySoftwareExternalVersionID];
    [(StoreDownload *)v4 setValue:v26 forMetadataKey:SSDownloadMetadataKeyStoreFrontID];
    [(StoreDownload *)v4 setValue:v27 forMetadataKey:SSDownloadMetadataKeyXID];
    [(StoreDownload *)v4 setValue:v28 forMetadataKey:SSDownloadMetadataKeyArtworkTemplateName];
    [(StoreDownload *)v4 setValue:v29 forMetadataKey:SSDownloadMetadataKeyIsInStoreQueue];
    [(StoreDownload *)v4 setPreferredAssetFlavor:v30];
    -[StoreDownload setHighDefinition:](v4, "setHighDefinition:", [v31 BOOLValue]);
    [(StoreDownload *)v4 setValue:v32 forMetadataKey:SSDownloadMetadataKeyCancelIfDuplicate];
    [(StoreDownload *)v4 setValue:v33 forMetadataKey:SSDownloadMetadataKeyBundleVersion];
    [(StoreDownload *)v4 setValue:v34 forMetadataKey:SSDownloadMetadataKeyStoreCohort];
    [(StoreDownload *)v4 setValue:v35 forMetadataKey:SSDownloadMetadataKeyIsPurchaseRedownload];
    [(StoreDownload *)v4 setValue:v36 forMetadataKey:SSDownloadMetadataKeyBetaExternalVersionIdentifier];
    [(StoreDownload *)v4 setValue:v37 forMetadataKey:@"variantID"];
    [(StoreDownload *)v4 setValue:v38 forMetadataKey:SSDownloadMetadataKeyRentalIdentifier];
    [(StoreDownload *)v4 setValue:v39 forMetadataKey:SSDownloadMetadataKeyShowComposer];
    [(StoreDownload *)v4 setValue:v40 forMetadataKey:SSDownloadMetadataKeyWorkName];
    [(StoreDownload *)v4 setValue:v41 forMetadataKey:SSDownloadMetadataKeyHasHDR];
    [(StoreDownload *)v4 setValue:v42 forMetadataKey:SSDownloadMetadataKeyIsHLS];
    [(StoreDownload *)v4 setValue:v43 forMetadataKey:SSDownloadMetadataKeyIsPremium];
    [(StoreDownload *)v4 setValue:v44 forMetadataKey:SSDownloadMetadataKeyHas4K];
    [(StoreDownload *)v4 setValue:v45 forMetadataKey:SSDownloadMetadataKeyHasDolbyVision];
    [(StoreDownload *)v4 setValue:v46 forMetadataKey:SSDownloadMetadataKeyHLSPlaylistURL];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = StoreDownload;
  [(StoreDownload *)&v3 dealloc];
}

- (NSArray)assets
{
  v3 = +[NSMutableArray array];
  primaryAssetDictionary = [(StoreDownload *)self primaryAssetDictionary];
  if (primaryAssetDictionary || (primaryAssetDictionary = [(StoreDownload *)self dictionary]) != 0)
  {
    v5 = primaryAssetDictionary;
    v6 = [(StoreDownload *)self _newDeltaPackageAssetsWithAssetDictionary:primaryAssetDictionary];
    [(NSArray *)v3 addObjectsFromArray:v6];

    v7 = [(StoreDownload *)self _newPrimaryAssetsWithAssetDictionary:v5 assetType:SSDownloadAssetTypeMedia];
    [(NSArray *)v3 addObjectsFromArray:v7];

    v8 = [(NSArray *)v3 count];
    if (v8 >= 1)
    {
      v9 = v8;
      for (i = 0; i != v9; ++i)
      {
        [-[NSArray objectAtIndex:](v3 objectAtIndex:{i), "setValue:forProperty:", +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", i), @"asset_order"}];
      }
    }
  }

  fullSizeImageURL = [(StoreDownload *)self fullSizeImageURL];
  if ([objc_msgSend(fullSizeImageURL "host")])
  {
    v12 = [(StoreDownload *)self _newAssetWithURL:fullSizeImageURL assetType:SSDownloadAssetTypeArtwork];
    [(NSArray *)v3 addObject:v12];
  }

  podcastFeedURL = [(StoreDownload *)self podcastFeedURL];
  if ([objc_msgSend(podcastFeedURL "host")])
  {
    v14 = [(StoreDownload *)self _newAssetWithURL:podcastFeedURL assetType:SSDownloadAssetTypeXMLFeed];
    [(NSArray *)v3 addObject:v14];
  }

  transitMapDataURL = [(StoreDownload *)self transitMapDataURL];
  if ([objc_msgSend(transitMapDataURL "host")])
  {
    v16 = [(StoreDownload *)self _newAssetWithURL:transitMapDataURL assetType:SSDownloadAssetTypeTransitMapsData];
    [(NSArray *)v3 addObject:v16];
  }

  thumbnailImageCollection = [(StoreDownload *)self thumbnailImageCollection];
  v18 = [thumbnailImageCollection imagesForKind:SSItemArtworkKindNewsstandIcon];
  if ([v18 count])
  {
    v19 = [objc_msgSend(v18 "lastObject")];
    if ([objc_msgSend(v19 "host")])
    {
      v20 = [(StoreDownload *)self _newAssetWithURL:v19 assetType:SSDownloadAssetTypeNewsstandArtwork];
      [(NSArray *)v3 addObject:v20];
    }
  }

  return v3;
}

- (NSNumber)matchedStatus
{
  v3 = [(StoreDownload *)self valueForMetadataKey:@"matched-status"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v3;
  }

  v5 = [(StoreDownload *)self _copyPinfValueWithField:0];

  return v5;
}

- (NSNumber)redownloadedStatus
{
  v3 = [(StoreDownload *)self valueForMetadataKey:@"redownloaded-status"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v3;
  }

  v5 = [(StoreDownload *)self _copyPinfValueWithField:1];

  return v5;
}

- (NSNumber)purchaserAccountIdentifier
{
  result = [(StoreDownload *)self _copySinfValueWithField:2];
  if (!result)
  {
    v4 = [(StoreDownload *)self _copySinfValueFromEpubRightsDataWithField:2];

    return v4;
  }

  return result;
}

- (NSNumber)downloaderAccountIdentifier
{
  result = [(StoreDownload *)self _copySinfValueWithField:3];
  if (!result)
  {
    v4 = [(StoreDownload *)self _copySinfValueFromEpubRightsDataWithField:3];

    return v4;
  }

  return result;
}

- (NSNumber)familyAccountIdentifier
{
  result = [(StoreDownload *)self _copySinfValueWithField:4];
  if (!result)
  {
    v4 = [(StoreDownload *)self _copySinfValueFromEpubRightsDataWithField:4];

    return v4;
  }

  return result;
}

- (BOOL)writeToFile:(id)file options:(unint64_t)options error:(id *)error
{
  v8 = [NSPropertyListSerialization dataWithPropertyList:[(StoreDownload *)self dictionary] format:200 options:0 error:error];
  if (v8)
  {

    LOBYTE(v8) = [(NSData *)v8 writeToFile:file options:options error:error];
  }

  return v8;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = StoreDownload;
  return [NSString stringWithFormat:@"%@: %llu / %@", [(StoreDownload *)&v3 description], [(StoreDownload *)self itemIdentifier], [(StoreDownload *)self transactionIdentifier]];
}

- (BOOL)isEqual:(id)equal
{
  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    return 0;
  }

  itemIdentifier = [(StoreDownload *)self itemIdentifier];
  if (itemIdentifier != [equal itemIdentifier])
  {
    return 0;
  }

  transactionIdentifier = [(StoreDownload *)self transactionIdentifier];
  if (transactionIdentifier == [equal transactionIdentifier])
  {
    return 1;
  }

  transactionIdentifier2 = [(StoreDownload *)self transactionIdentifier];
  transactionIdentifier3 = [equal transactionIdentifier];

  return [transactionIdentifier2 isEqual:transactionIdentifier3];
}

- (id)newDownloadProperties
{
  v7.receiver = self;
  v7.super_class = StoreDownload;
  newDownloadProperties = [(StoreDownload *)&v7 newDownloadProperties];
  matchedStatus = [(StoreDownload *)self matchedStatus];
  if (matchedStatus)
  {
    [newDownloadProperties setObject:matchedStatus forKey:SSDownloadPropertyStoreMatchStatus];
  }

  redownloadedStatus = [(StoreDownload *)self redownloadedStatus];
  if (redownloadedStatus)
  {
    [newDownloadProperties setObject:redownloadedStatus forKey:SSDownloadPropertyStoreRedownloadStatus];
  }

  return newDownloadProperties;
}

- (id)_copyPinfValueWithField:(int64_t)field
{
  sinfs = [(StoreDownload *)self sinfs];
  if (![sinfs count])
  {
    return 0;
  }

  v5 = [[DownloadDRM alloc] initWithSinfArray:sinfs];
  pinfsArray = [(DownloadDRM *)v5 pinfsArray];
  if (pinfsArray)
  {
    v7 = [(SinfsArray *)pinfsArray copyValueForField:field error:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_copySinfValueWithField:(int64_t)field
{
  sinfs = [(StoreDownload *)self sinfs];
  if (![sinfs count])
  {
    return 0;
  }

  v5 = [[DownloadDRM alloc] initWithSinfArray:sinfs];
  sinfsArray = [(DownloadDRM *)v5 sinfsArray];
  if (sinfsArray)
  {
    v7 = [(SinfsArray *)sinfsArray copyValueForField:field error:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_copySinfValueFromEpubRightsDataWithField:(int64_t)field
{
  _epubRightsSinfData = [(StoreDownload *)self _epubRightsSinfData];
  if (!_epubRightsSinfData)
  {
    return 0;
  }

  v8 = _epubRightsSinfData;
  v5 = [[SinfsArray alloc] initWithSINFs:[NSArray arrayWithObjects:&v8 count:1]];
  v6 = [(SinfsArray *)v5 copyValueForField:field error:0];

  return v6;
}

- (id)_epubRightsSinfData
{
  epubRightsSinfData = self->_epubRightsSinfData;
  if (!epubRightsSinfData)
  {
    v4 = [[EpubRightsDataParser alloc] initWithXMLData:[(StoreDownload *)self epubRightsData]];
    self->_epubRightsSinfData = [(EpubRightsDataParser *)v4 sinfData];

    epubRightsSinfData = self->_epubRightsSinfData;
  }

  v5 = epubRightsSinfData;

  return v5;
}

- (id)_newAssetPropertiesWithStoreDictionary:(id)dictionary assetType:(id)type
{
  v7 = [dictionary objectForKey:SSDownloadMetadataKeyURL];
  if (!v7)
  {
    v7 = [dictionary objectForKey:SSDownloadMetadataKeyURL2];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v7 length])
  {
    return 0;
  }

  v8 = objc_alloc_init(NSMutableDictionary);
  [v8 setObject:type forKey:@"asset_type"];
  [v8 setObject:v7 forKey:@"url"];
  v9 = [dictionary objectForKey:SSDownloadMetadataKeyDownloadKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 setObject:v9 forKey:@"store_download_key"];
  }

  v10 = SSDownloadMetadataKeyFileExtension;
  v11 = [dictionary objectForKey:SSDownloadMetadataKeyFileExtension];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || [type isEqualToString:SSDownloadAssetTypeMedia] && (v11 = objc_msgSend(objc_msgSend(dictionary, "objectForKey:", @"metadata"), "objectForKey:", v10), objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [v8 setObject:v11 forKey:@"path_extension"];
  }

  v12 = SSDownloadMetadataKeyIsZipStreamable;
  v13 = [dictionary objectForKey:SSDownloadMetadataKeyIsZipStreamable];
  if (!v13)
  {
    v13 = [(StoreDownload *)self valueForFirstAvailableKey:v12, 0];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 setObject:v13 forKey:@"is_zip_streamable"];
  }

  v14 = SSDownloadMetadataKeyUncompressedSize;
  v15 = [dictionary objectForKey:SSDownloadMetadataKeyUncompressedSize];
  if (!v15)
  {
    v15 = [(StoreDownload *)self valueForFirstAvailableKey:v14, 0];
  }

  if (objc_opt_respondsToSelector())
  {
    [v8 setObject:+[NSNumber numberWithLongLong:](NSNumber forKey:{"numberWithLongLong:", objc_msgSend(v15, "unsignedLongLongValue")), @"uncompressed_size"}];
  }

  v16 = [dictionary objectForKey:SSDownloadMetadataKeyAssetInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dictionaryCopy = v16;
  }

  else
  {
    dictionaryCopy = dictionary;
  }

  if (dictionaryCopy)
  {
    v18 = [dictionaryCopy objectForKey:SSDownloadMetadataKeyAssetFileSize];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 setObject:v18 forKey:@"bytes_total"];
    }

    else
    {
      v18 = 0;
    }

    v19 = [dictionaryCopy objectForKey:SSDownloadMetadataKeyAssetFlavor];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 setObject:v19 forKey:@"store_flavor"];
    }
  }

  else
  {
    v18 = 0;
  }

  v20 = [dictionary objectForKey:SSDownloadMetadataKeyVariantIdentifier];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 setObject:v20 forKey:@"variant_id"];
  }

  v21 = [dictionary objectForKey:SSDownloadMetadataKeyHashChunks];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = [v21 objectForKey:SSDownloadMetadataKeyHashChunkHashes];
    v18 = [v21 objectForKey:SSDownloadMetadataKeyHashChunkSize];
  }

  else
  {
    v23 = [dictionary objectForKey:SSDownloadMetadataKeyMD5];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [NSArray arrayWithObject:v23];
    }

    else
    {
      v22 = 0;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 setObject:v18 forKey:@"bytes_to_hash"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = [NSPropertyListSerialization dataWithPropertyList:v22 format:200 options:0 error:0];
    if (v24)
    {
      [v8 setObject:v24 forKey:@"hash_array"];
    }
  }

  v25 = [dictionary objectForKey:SSDownloadMetadataKeySINFs];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v25 count])
  {
    v26 = [[DownloadDRM alloc] initWithSinfArray:v25];
    if ([(DownloadDRM *)v26 isDRMFree])
    {
      [v8 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", 1), @"is_drm_free"}];
    }

    v27 = [NSPropertyListSerialization dataWithPropertyList:v25 format:200 options:0 error:0];
    if ([(NSData *)v27 length])
    {
      [v8 setObject:v27 forKey:@"sinfs_data"];
    }
  }

  v28 = [dictionary objectForKey:SSDownloadMetadataKeyIsHLS];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v28 BOOLValue])
  {
    [v8 setObject:v28 forKey:@"is_hls"];
  }

  v29 = [dictionary objectForKey:v10];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 setObject:v29 forKey:@"path_extension"];
  }

  v30 = [dictionary objectForKey:SSDownloadMetadataKeyInitialODRSize];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v30 = +[NSNull null];
  }

  [v8 setObject:v30 forKey:@"initial_odr_size"];
  return v8;
}

- (id)_newAssetWithURL:(id)l assetType:(id)type
{
  v5 = [[SSMutableURLRequestProperties alloc] initWithURL:l];
  [v5 setITunesStoreRequest:1];
  v6 = [[DownloadAsset alloc] initWithURLRequestProperties:v5];
  [(DownloadAsset *)v6 setValue:type forProperty:@"asset_type"];

  return v6;
}

- (id)_newDeltaPackageAssetsWithAssetDictionary:(id)dictionary
{
  v5 = objc_alloc_init(NSMutableArray);
  v6 = [dictionary objectForKey:SSDownloadMetadataKeyDeltaPackages];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [LSApplicationProxy applicationProxyForIdentifier:[(StoreDownload *)self bundleIdentifier]];
    if ([v8 purchaserDSID])
    {
      v9 = +[SSLogConfig sharedDaemonConfig];
      if (!v9)
      {
        v9 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v9 shouldLog];
      if ([v9 shouldLogToDisk])
      {
        v11 = shouldLog | 2;
      }

      else
      {
        v11 = shouldLog;
      }

      if (!os_log_type_enabled([v9 OSLogObject], OS_LOG_TYPE_INFO))
      {
        v11 &= 2u;
      }

      if (v11)
      {
        v46 = 138412546;
        v47 = objc_opt_class();
        v48 = 2112;
        bundleIdentifier = [(StoreDownload *)self bundleIdentifier];
        LODWORD(v40) = 22;
        v38 = &v46;
        v12 = _os_log_send_and_compose_impl();
        if (v12)
        {
          v13 = v12;
          v14 = [NSString stringWithCString:v12 encoding:4, &v46, v40];
          free(v13);
          v38 = v14;
          SSFileLog();
        }
      }

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v15 = [v6 countByEnumeratingWithState:&v41 objects:v45 count:{16, v38}];
      if (v15)
      {
        v16 = v15;
        v17 = *v42;
        while (2)
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v42 != v17)
            {
              objc_enumerationMutation(v6);
            }

            v19 = *(*(&v41 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [(StoreDownload *)self _patchPackageDictionary:v19 matchesInstallApplication:v8])
            {
              v20 = +[SSLogConfig sharedDaemonConfig];
              if (!v20)
              {
                v20 = +[SSLogConfig sharedConfig];
              }

              shouldLog2 = [v20 shouldLog];
              if ([v20 shouldLogToDisk])
              {
                v22 = shouldLog2 | 2;
              }

              else
              {
                v22 = shouldLog2;
              }

              if (!os_log_type_enabled([v20 OSLogObject], OS_LOG_TYPE_INFO))
              {
                v22 &= 2u;
              }

              if (v22)
              {
                v23 = objc_opt_class();
                bundleIdentifier2 = [(StoreDownload *)self bundleIdentifier];
                v46 = 138412546;
                v47 = v23;
                v48 = 2112;
                bundleIdentifier = bundleIdentifier2;
                LODWORD(v40) = 22;
                v39 = &v46;
                v25 = _os_log_send_and_compose_impl();
                if (v25)
                {
                  v26 = v25;
                  v27 = [NSString stringWithCString:v25 encoding:4, &v46, v40];
                  free(v26);
                  v39 = v27;
                  SSFileLog();
                }
              }

              v28 = [(StoreDownload *)self _newPrimaryAssetsWithAssetDictionary:v19 assetType:SSDownloadAssetTypeDeltaPackage, v39];
              if (v28)
              {
                v29 = v28;
                [v5 addObjectsFromArray:v28];
              }

              else
              {
                v31 = +[SSLogConfig sharedDaemonConfig];
                if (!v31)
                {
                  v31 = +[SSLogConfig sharedConfig];
                }

                shouldLog3 = [v31 shouldLog];
                if ([v31 shouldLogToDisk])
                {
                  v33 = shouldLog3 | 2;
                }

                else
                {
                  v33 = shouldLog3;
                }

                if (!os_log_type_enabled([v31 OSLogObject], OS_LOG_TYPE_DEFAULT))
                {
                  v33 &= 2u;
                }

                if (v33)
                {
                  v34 = objc_opt_class();
                  bundleIdentifier3 = [(StoreDownload *)self bundleIdentifier];
                  v46 = 138412546;
                  v47 = v34;
                  v48 = 2112;
                  bundleIdentifier = bundleIdentifier3;
                  LODWORD(v40) = 22;
                  v36 = _os_log_send_and_compose_impl();
                  if (v36)
                  {
                    v37 = v36;
                    [NSString stringWithCString:v36 encoding:4, &v46, v40];
                    free(v37);
                    SSFileLog();
                  }
                }
              }

              goto LABEL_35;
            }
          }

          v16 = [v6 countByEnumeratingWithState:&v41 objects:v45 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }
    }

LABEL_35:
    objc_autoreleasePoolPop(v7);
  }

  return v5;
}

- (id)_newPrimaryAssetsWithAssetDictionary:(id)dictionary assetType:(id)type
{
  v7 = objc_alloc_init(NSMutableArray);
  v8 = [(StoreDownload *)self _newAssetPropertiesWithStoreDictionary:dictionary assetType:type];
  if (v8)
  {
    v9 = v8;
    [dictionary objectForKey:@"local-server-info"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", 1), @"is_local_cache_server"}];
    }

    if (![v9 objectForKey:@"path_extension"])
    {
      fileExtension = [(StoreDownload *)self fileExtension];
      if (fileExtension)
      {
        [v9 setObject:fileExtension forKey:@"path_extension"];
      }
    }

    v11 = objc_alloc_init(DownloadAsset);
    [(DownloadAsset *)v11 setValuesWithDictionary:v9];
    [v7 addObject:v11];
  }

  return v7;
}

- (BOOL)_patchPackageDictionary:(id)dictionary matchesInstallApplication:(id)application
{
  externalVersionIdentifier = [application externalVersionIdentifier];
  v7 = [dictionary objectForKey:SSDownloadMetadataKeyPriorVersionExternalIdentifier];
  v8 = [externalVersionIdentifier isEqual:v7];
  if (v8)
  {
    v9 = +[SSLogConfig sharedDaemonConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = shouldLog | 2;
    }

    else
    {
      v11 = shouldLog;
    }

    if (!os_log_type_enabled([v9 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v27 = 138413058;
      v28 = objc_opt_class();
      v29 = 2112;
      bundleIdentifier = [application bundleIdentifier];
      v31 = 2112;
      v32 = externalVersionIdentifier;
      v33 = 2112;
      v34 = v7;
      LODWORD(v26) = 42;
      v25 = &v27;
      v12 = _os_log_send_and_compose_impl();
      if (v12)
      {
        v13 = v12;
        v14 = [NSString stringWithCString:v12 encoding:4, &v27, v26];
        free(v13);
        v25 = v14;
        SSFileLog();
      }
    }

    applicationVariant = [application applicationVariant];
    v16 = [dictionary objectForKey:SSDownloadMetadataKeyVariantIdentifier];
    if (applicationVariant == v16 || (v8 = [applicationVariant isEqual:v16]) != 0)
    {
      v17 = +[SSLogConfig sharedDaemonConfig];
      if (!v17)
      {
        v17 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v17 shouldLog];
      if ([v17 shouldLogToDisk])
      {
        v19 = shouldLog2 | 2;
      }

      else
      {
        v19 = shouldLog2;
      }

      if (!os_log_type_enabled([v17 OSLogObject], OS_LOG_TYPE_DEBUG))
      {
        v19 &= 2u;
      }

      if (v19)
      {
        v20 = objc_opt_class();
        bundleIdentifier2 = [application bundleIdentifier];
        v27 = 138413058;
        v28 = v20;
        v29 = 2112;
        bundleIdentifier = bundleIdentifier2;
        v31 = 2112;
        v32 = applicationVariant;
        v33 = 2112;
        v34 = v16;
        LODWORD(v26) = 42;
        v22 = _os_log_send_and_compose_impl();
        if (v22)
        {
          v23 = v22;
          [NSString stringWithCString:v22 encoding:4, &v27, v26];
          free(v23);
          SSFileLog();
        }
      }

      LOBYTE(v8) = 1;
    }
  }

  return v8;
}

- (id)copyJobActivity
{
  v3 = objc_alloc_init(ISWeakLinkedClassForString());
  v4 = [NSNumber numberWithLongLong:[(StoreDownload *)self artistIdentifier]];
  [v3 setArtistID:v4];

  artistName = [(StoreDownload *)self artistName];
  [v3 setArtistName:artistName];

  bundleIdentifier = [(StoreDownload *)self bundleIdentifier];
  [v3 setBundleID:bundleIdentifier];

  redownloadActionParameters = [(StoreDownload *)self redownloadActionParameters];
  [v3 setBuyParams:redownloadActionParameters];

  cancelDownloadURL = [(StoreDownload *)self cancelDownloadURL];
  absoluteString = [cancelDownloadURL absoluteString];
  [v3 setCancelDownloadURL:absoluteString];

  collectionName = [(StoreDownload *)self collectionName];
  [v3 setCollectionName:collectionName];

  enableExtensions = [(StoreDownload *)self enableExtensions];
  [v3 setEnableExtensions:enableExtensions];

  [v3 setExplicitContent:{-[StoreDownload isExplicitContent](self, "isExplicitContent")}];
  genre = [(StoreDownload *)self genre];
  [v3 setGenre:genre];

  v13 = [NSNumber numberWithLongLong:[(StoreDownload *)self genreIdentifier]];
  [v3 setGenreID:v13];

  v14 = [NSNumber numberWithLongLong:[(StoreDownload *)self itemIdentifier]];
  [v3 setItemID:v14];

  kind = [(StoreDownload *)self kind];
  [v3 setKind:kind];

  [v3 setHasMessagesExtension:{-[StoreDownload hasMessagesExtension](self, "hasMessagesExtension")}];
  [v3 setLaunchProhibited:{-[StoreDownload launchProhibited](self, "launchProhibited")}];
  messagesArtworkURL = [(StoreDownload *)self messagesArtworkURL];
  absoluteString2 = [messagesArtworkURL absoluteString];
  [v3 setMessagesArtworkURL:absoluteString2];

  purchaseDate = [(StoreDownload *)self purchaseDate];
  [v3 setPurchaseDate:purchaseDate];

  releaseDate = [(StoreDownload *)self releaseDate];
  [v3 setReleaseDate:releaseDate];

  downloadKey = [(StoreDownload *)self downloadKey];
  [v3 setStoreDownloadKey:downloadKey];

  transactionIdentifier = [(StoreDownload *)self transactionIdentifier];
  [v3 setStoreTransactionID:transactionIdentifier];

  [v3 setSoftwareIconNeedsShine:{-[StoreDownload artworkIsPrerendered](self, "artworkIsPrerendered")}];
  thumbnailImageURL = [(StoreDownload *)self thumbnailImageURL];
  absoluteString3 = [thumbnailImageURL absoluteString];
  [v3 setThumbnailURL:absoluteString3];

  title = [(StoreDownload *)self title];
  [v3 setTitle:title];

  v25 = [(StoreDownload *)self valueForMetadataKey:SSDownloadMetadataKeyAppReceiptData];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 setAppReceiptData:v25];
  }

  v26 = [(StoreDownload *)self valueForMetadataKey:SSDownloadMetadataKeyBetaExternalVersionIdentifier];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 setBetaExternalVersionIdentifier:v26];
  }

  v27 = [(StoreDownload *)self valueForMetadataKey:SSDownloadMetadataKeyBundleVersion];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 setBundleVersion:v27];
  }

  v28 = [(StoreDownload *)self valueForMetadataKey:SSDownloadMetadataKeyCancelIfDuplicate];

  if (objc_opt_respondsToSelector())
  {
    [v3 setCancelIfDuplicate:{objc_msgSend(v28, "BOOLValue")}];
  }

  v29 = [(StoreDownload *)self valueForMetadataKey:SSDownloadMetadataKeyIsPurchaseRedownload];

  if (objc_opt_respondsToSelector())
  {
    [v3 setIsPurchasedRedownload:{objc_msgSend(v29, "BOOLValue")}];
  }

  v30 = [(StoreDownload *)self valueForMetadataKey:SSDownloadMetadataKeyIAdAttribution];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 setIAdAttribution:v30];
  }

  v31 = [(StoreDownload *)self valueForMetadataKey:SSDownloadMetadataKeyIAdConversionDate];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _newDateFormatter = [(StoreDownload *)self _newDateFormatter];
    v33 = [_newDateFormatter dateFromString:v31];
    if (v33)
    {
      [v3 setIAdConversionDate:v33];
    }
  }

  v34 = [(StoreDownload *)self valueForMetadataKey:SSDownloadMetadataKeyIAdImpressionDate];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _newDateFormatter2 = [(StoreDownload *)self _newDateFormatter];
    v36 = [_newDateFormatter2 dateFromString:v34];
    if (v36)
    {
      [v3 setIAdImpressionDate:v36];
    }
  }

  v37 = [(StoreDownload *)self valueForMetadataKey:SSDownloadPropertyIsInStoreQueue];

  if (objc_opt_respondsToSelector())
  {
    [v3 setIsInQueue:{objc_msgSend(v37, "BOOLValue")}];
  }

  v38 = [(StoreDownload *)self valueForMetadataKey:SSDownloadMetadataKeyStoreFrontID];

  if (objc_opt_respondsToSelector())
  {
    stringValue = [v38 stringValue];
    [v3 setStorefront:stringValue];
  }

  v40 = [(StoreDownload *)self valueForMetadataKey:SSDownloadMetadataKeyRating];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v41 = v40;
    v42 = [v41 objectForKey:@"label"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v3 setRatingLabel:v42];
    }

    v43 = [v41 objectForKey:@"rank"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v3 setRatingRank:v43];
    }
  }

  v44 = [(StoreDownload *)self valueForMetadataKey:SSDownloadMetadataKeySoftwareExternalVersionID];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 setSoftwareVersionExternalIdentifier:v44];
  }

  v45 = [(StoreDownload *)self valueForMetadataKey:SSDownloadMetadataKeyStoreCohort];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 setStoreCohort:v45];
  }

  v46 = [(StoreDownload *)self valueForMetadataKey:SSDownloadMetadataKeyVariantIdentifier];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 setVariantID:v46];
  }

  assets = [(StoreDownload *)self assets];
  v48 = [(StoreDownload *)self _newAssetArrayWithDownloadAssets:assets];

  [v3 setAssets:v48];
  return v3;
}

- (id)_newAssetArrayWithDownloadAssets:(id)assets
{
  assetsCopy = assets;
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = assetsCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        copyJobAsset = [*(*(&v13 + 1) + 8 * v9) copyJobAsset];
        [v4 addObject:copyJobAsset];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];
  return v11;
}

- (id)_newDateFormatter
{
  v2 = objc_alloc_init(NSDateFormatter);
  [v2 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss'Z'"];
  [v2 setLenient:1];
  v3 = [NSTimeZone timeZoneForSecondsFromGMT:0];
  [v2 setTimeZone:v3];

  return v2;
}

@end