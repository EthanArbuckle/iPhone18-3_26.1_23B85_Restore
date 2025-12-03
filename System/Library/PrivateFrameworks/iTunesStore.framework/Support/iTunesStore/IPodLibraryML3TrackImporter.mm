@interface IPodLibraryML3TrackImporter
- (BOOL)importLibraryItems:(id)items toMusicLibrary:(id)library importedItemPids:(id)pids;
- (id)_absoluteTimeValueForDateValue:(id)value;
- (id)_currentTrackChapterDataForTrackPid:(int64_t)pid libraryItem:(id)item usingLibrary:(id)library;
- (id)_currentTrackMovieInfoFromMetadata:(id)metadata;
- (id)_extendedContentRatingStringForLibraryItem:(id)item;
- (id)_importPropertiesFromLibraryItem:(id)item fromAccount:(id)account usingLibrary:(id)library;
- (id)_storeArtworkTokenFromLibraryItem:(id)item metadata:(id)metadata;
@end

@implementation IPodLibraryML3TrackImporter

- (BOOL)importLibraryItems:(id)items toMusicLibrary:(id)library importedItemPids:(id)pids
{
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 1;
  v9 = [+[SSAccountStore defaultStore](SSAccountStore "defaultStore")];
  if ([items count])
  {
    v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [items count]);
    v32 = 0u;
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    v11 = [items countByEnumeratingWithState:&v29 objects:v43 count:16];
    if (v11)
    {
      v12 = *v30;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(items);
          }

          [(NSMutableArray *)v10 addObject:[(IPodLibraryML3TrackImporter *)self _importPropertiesFromLibraryItem:*(*(&v29 + 1) + 8 * i) fromAccount:v9 usingLibrary:library]];
        }

        v11 = [items countByEnumeratingWithState:&v29 objects:v43 count:16];
      }

      while (v11);
    }

    v41 = @"track_items";
    v42 = v10;
    v28 = 0;
    v14 = [NSKeyedArchiver archivedDataWithRootObject:[NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1] requiringSecureCoding:1 error:&v28];
    if (v28)
    {
      v15 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v15)
      {
        v15 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v15 shouldLog];
      shouldLogToDisk = [v15 shouldLogToDisk];
      oSLogObject = [v15 OSLogObject];
      if (shouldLogToDisk)
      {
        shouldLog |= 2u;
      }

      if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        shouldLog &= 2u;
      }

      if (shouldLog)
      {
        v19 = objc_opt_class();
        v37 = 138543618;
        v38 = v19;
        v39 = 2114;
        v40 = v28;
        LODWORD(v26) = 22;
        v20 = _os_log_send_and_compose_impl();
        if (v20)
        {
          v21 = v20;
          [NSString stringWithCString:v20 encoding:4, &v37, v26];
          free(v21);
          SSFileLog();
        }
      }
    }

    v22 = dispatch_semaphore_create(0);
    global_queue = dispatch_get_global_queue(-32768, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100238024;
    block[3] = &unk_10032CFD8;
    block[4] = v14;
    block[5] = self;
    block[6] = pids;
    block[7] = items;
    block[8] = v22;
    block[9] = &v33;
    dispatch_async(global_queue, block);
    dispatch_semaphore_wait(v22, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v22);
  }

  v24 = *(v34 + 24);
  _Block_object_dispose(&v33, 8);
  return v24;
}

- (id)_importPropertiesFromLibraryItem:(id)item fromAccount:(id)account usingLibrary:(id)library
{
  v8 = [NSMutableDictionary dictionaryWithCapacity:100];
  itemMetadata = [item itemMetadata];
  v10 = [IPodLibraryItem mediaTypeForStoreDownload:itemMetadata];
  if ([item libraryPersistentIdentifier])
  {
    libraryPersistentIdentifier = [item libraryPersistentIdentifier];
LABEL_3:
    [(NSMutableDictionary *)v8 setObject:[NSNumber forKey:"numberWithLongLong:" numberWithLongLong:libraryPersistentIdentifier], &off_10034C2A0];
    goto LABEL_4;
  }

  if ([item itemDownloadIdentifier])
  {
    v18 = +[ML3Track anyInLibrary:predicate:](ML3Track, "anyInLibrary:predicate:", library, +[ML3ComparisonPredicate predicateWithProperty:equalToValue:](ML3ComparisonPredicate, "predicateWithProperty:equalToValue:", ML3TrackPropertyDownloadIdentifier, [item itemDownloadIdentifier]));
    if (v18)
    {
      libraryPersistentIdentifier = [v18 persistentID];
      goto LABEL_3;
    }
  }

LABEL_4:
  [(NSMutableDictionary *)v8 setObject:[NSNumber forKey:"numberWithUnsignedInt:" numberWithUnsignedInt:v10], &off_10034C2B8];
  if ([itemMetadata collectionIndexInCollectionGroup])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [itemMetadata collectionIndexInCollectionGroup], &off_10034C2D0);
  }

  if ([itemMetadata indexInCollection])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [itemMetadata indexInCollection], &off_10034C2E8);
  }

  if ([itemMetadata episodeSortIdentifier])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [itemMetadata episodeSortIdentifier], &off_10034C300);
  }

  [(NSMutableDictionary *)v8 setObject:&off_10034C318 forKey:&off_10034C330];
  [(NSMutableDictionary *)v8 setObject:&__kCFBooleanFalse forKey:&off_10034C348];
  if ([itemMetadata artistName])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [itemMetadata artistName], &off_10034C360);
  }

  if ([itemMetadata seriesName])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [itemMetadata seriesName], &off_10034C378);
  }

  if ([itemMetadata collectionArtistName])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [itemMetadata collectionArtistName], &off_10034C390);
  }

  if ([itemMetadata genre])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [itemMetadata genre], &off_10034C3A8);
  }

  if ([item itemMediaPath])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [item itemMediaPath], &off_10034C3C0);
  }

  if ([itemMetadata collectionName])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [itemMetadata collectionName], &off_10034C3D8);
  }

  if ([itemMetadata composerName])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [itemMetadata composerName], &off_10034C3F0);
  }

  if ([itemMetadata showComposer])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [itemMetadata showComposer], &off_10034C408);
  }

  if ([itemMetadata isMusicShow])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [itemMetadata isMusicShow]), &off_10034C420);
  }

  if ([itemMetadata title])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [itemMetadata title], &off_10034C438);
  }

  if ([itemMetadata numberOfCollectionsInCollectionGroup])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [itemMetadata numberOfCollectionsInCollectionGroup], &off_10034C450);
  }

  if ([itemMetadata numberOfItemsInCollection])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [itemMetadata numberOfItemsInCollection], &off_10034C468);
  }

  if ([itemMetadata releaseYear])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [itemMetadata releaseYear], &off_10034C480);
  }

  [(NSMutableDictionary *)v8 setObject:&off_10034C318 forKey:&off_10034C498];
  [(NSMutableDictionary *)v8 setObject:[NSNumber forKey:"numberWithBool:" numberWithBool:?], &off_10034C4B0];
  -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [itemMetadata isCompilation]), &off_10034C4C8);
  -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", -[IPodLibraryML3TrackImporter _absoluteTimeValueForDateValue:](self, "_absoluteTimeValueForDateValue:", [itemMetadata purchaseDate]), &off_10034C4E0);
  [(NSMutableDictionary *)v8 setObject:&off_10034CD00 forKey:&off_10034C4F8];
  if ([itemMetadata isExplicitContent])
  {
    v12 = 1;
  }

  else
  {
    v12 = [objc_msgSend(itemMetadata "contentRating")];
  }

  [(NSMutableDictionary *)v8 setObject:[NSNumber forKey:"numberWithInteger:" numberWithInteger:v12], &off_10034C510];
  -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [objc_msgSend(itemMetadata "contentRating")]), &off_10034C528);
  [(NSMutableDictionary *)v8 setObject:&__kCFBooleanFalse forKey:&off_10034C540];
  if ([itemMetadata durationInMilliseconds])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [itemMetadata durationInMilliseconds], &off_10034C558);
  }

  [(NSMutableDictionary *)v8 setObject:&off_10034C318 forKey:&off_10034C570];
  [(NSMutableDictionary *)v8 setObject:&off_10034C318 forKey:&off_10034C588];
  if ([itemMetadata shortDescription])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [itemMetadata shortDescription], &off_10034C5A0);
  }

  if ([itemMetadata longDescription])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [itemMetadata longDescription], &off_10034C5B8);
  }

  if ([itemMetadata longSeasonDescription])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [itemMetadata longSeasonDescription], &off_10034C5D0);
  }

  if ([itemMetadata copyright])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [itemMetadata copyright], &off_10034C5E8);
  }

  [(NSMutableDictionary *)v8 setObject:&off_10034C318 forKey:&off_10034C600];
  [(NSMutableDictionary *)v8 setObject:[NSNumber forKey:"numberWithUnsignedInt:" numberWithUnsignedInt:v10], &off_10034C618];
  if ([itemMetadata workName])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [itemMetadata workName], &off_10034C630);
  }

  if ([itemMetadata movementName])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [itemMetadata movementName], &off_10034C648);
  }

  if ([itemMetadata movementNumber])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [itemMetadata movementNumber], &off_10034C660);
  }

  if ([itemMetadata movementCount])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [itemMetadata movementCount], &off_10034C678);
  }

  [(NSMutableDictionary *)v8 setObject:&off_10034C318 forKey:&off_10034C690];
  [(NSMutableDictionary *)v8 setObject:&off_10034C318 forKey:&off_10034C6A8];
  [(NSMutableDictionary *)v8 setObject:[NSNumber forKey:"numberWithBool:" numberWithBool:?], &off_10034C6C0];
  [(NSMutableDictionary *)v8 setObject:&off_10034CD10 forKey:&off_10034C6D8];
  [(NSMutableDictionary *)v8 setObject:&off_10034C318 forKey:&off_10034C6F0];
  if ([itemMetadata durationInMilliseconds])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [itemMetadata durationInMilliseconds], &off_10034C708);
  }

  [(NSMutableDictionary *)v8 setObject:&off_10034C318 forKey:&off_10034C720];
  if ([item itemDownloadIdentifier])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [item itemDownloadIdentifier], &off_10034C738);
  }

  [(NSMutableDictionary *)v8 setObject:&off_10034C318 forKey:&off_10034C750];
  [(NSMutableDictionary *)v8 setObject:&off_10034C318 forKey:&off_10034C768];
  [(NSMutableDictionary *)v8 setObject:&__kCFBooleanFalse forKey:&off_10034C780];
  +[NSDate timeIntervalSinceReferenceDate];
  [(NSMutableDictionary *)v8 setObject:[NSNumber numberWithDouble:?], &off_10034C798];
  [(NSMutableDictionary *)v8 setObject:&off_10034C318 forKey:&off_10034C7B0];
  [(NSMutableDictionary *)v8 setObject:&off_10034C318 forKey:&off_10034C7C8];
  [(NSMutableDictionary *)v8 setObject:[NSNumber forKey:"numberWithBool:" numberWithBool:?], &off_10034C7E0];
  [(NSMutableDictionary *)v8 setObject:&off_10034C318 forKey:&off_10034C7F8];
  [(NSMutableDictionary *)v8 setObject:&__kCFBooleanFalse forKey:&off_10034C810];
  if ([itemMetadata itemIdentifier])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [itemMetadata itemIdentifier]), &off_10034C828);
  }

  if ([itemMetadata composerIdentifier])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [itemMetadata composerIdentifier]), &off_10034C840);
  }

  if ([itemMetadata genreIdentifier])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [itemMetadata genreIdentifier]), &off_10034C858);
  }

  if ([itemMetadata collectionIdentifier])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [itemMetadata collectionIdentifier]), &off_10034C870);
  }

  [(NSMutableDictionary *)v8 setObject:&off_10034C318 forKey:&off_10034C888];
  if ([itemMetadata redownloadActionParameters])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [itemMetadata redownloadActionParameters], &off_10034C8A0);
  }

  [itemMetadata cloudIdentifier];
  [(NSMutableDictionary *)v8 setObject:[NSNumber forKey:"numberWithUnsignedLongLong:" numberWithUnsignedLongLong:?], &off_10034C8B8];
  [(NSMutableDictionary *)v8 setObject:&off_10034C318 forKey:&off_10034C8D0];
  if ([item protectionType] != 2)
  {
    [(NSMutableDictionary *)v8 setObject:&__kCFBooleanTrue forKey:&off_10034C8E8];
  }

  [(NSMutableDictionary *)v8 setObject:&off_10034C318 forKey:&off_10034C900];
  purchaserAccountIdentifier = [itemMetadata purchaserAccountIdentifier];
  if (purchaserAccountIdentifier || (purchaserAccountIdentifier = [account uniqueIdentifier]) != 0)
  {
    [(NSMutableDictionary *)v8 setObject:purchaserAccountIdentifier forKey:&off_10034C918];
  }

  downloaderAccountIdentifier = [itemMetadata downloaderAccountIdentifier];
  if (downloaderAccountIdentifier || (downloaderAccountIdentifier = [account uniqueIdentifier]) != 0)
  {
    [(NSMutableDictionary *)v8 setObject:downloaderAccountIdentifier forKey:&off_10034C930];
  }

  -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", -[IPodLibraryML3TrackImporter _absoluteTimeValueForDateValue:](self, "_absoluteTimeValueForDateValue:", [itemMetadata purchaseDate]), &off_10034C948);
  -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", -[IPodLibraryML3TrackImporter _absoluteTimeValueForDateValue:](self, "_absoluteTimeValueForDateValue:", [itemMetadata releaseDate]), &off_10034C960);
  if ([itemMetadata podcastEpisodeGUID])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [itemMetadata podcastEpisodeGUID], &off_10034C978);
  }

  if (-[IPodLibraryML3TrackImporter _stringValueForURLValue:](self, "_stringValueForURLValue:", [itemMetadata podcastFeedURL]))
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", -[IPodLibraryML3TrackImporter _stringValueForURLValue:](self, "_stringValueForURLValue:", [itemMetadata podcastFeedURL]), &off_10034C990);
  }

  if (-[IPodLibraryML3TrackImporter _stringValueForURLValue:](self, "_stringValueForURLValue:", [itemMetadata viewStoreItemURL]))
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", -[IPodLibraryML3TrackImporter _stringValueForURLValue:](self, "_stringValueForURLValue:", [itemMetadata viewStoreItemURL]), &off_10034C9A8);
  }

  v15 = SSDownloadMetadataKeyXID;
  if ([itemMetadata valueForMetadataKey:SSDownloadMetadataKeyXID])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [itemMetadata valueForMetadataKey:v15], &off_10034C9C0);
  }

  v16 = SSDownloadMetadataKeyAssetFlavor;
  if ([itemMetadata valueForMetadataKey:SSDownloadMetadataKeyAssetFlavor])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [itemMetadata valueForMetadataKey:v16], &off_10034C9D8);
  }

  if ([itemMetadata matchedStatus])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [itemMetadata matchedStatus], &off_10034C9F0);
  }

  if ([itemMetadata redownloadedStatus])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [itemMetadata redownloadedStatus], &off_10034CA08);
  }

  if ([itemMetadata launchExtrasUrl])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [itemMetadata launchExtrasUrl], &off_10034CA20);
  }

  if ([itemMetadata rentalID])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [itemMetadata rentalID], &off_10034CA38);
  }

  -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [itemMetadata isHighDefinition]), &off_10034CA50);
  -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [itemMetadata isRental]), &off_10034CA68);
  if (item)
  {
    v17 = [item chapters] != 0;
  }

  else
  {
    v17 = 0;
  }

  [(NSMutableDictionary *)v8 setObject:[NSNumber forKey:"numberWithBool:" numberWithBool:v17], &off_10034CA80];
  if ([itemMetadata seasonNumber])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [itemMetadata seasonNumber], &off_10034CA98);
  }

  if ([itemMetadata episodeIdentifier])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [itemMetadata episodeIdentifier], &off_10034CAB0);
  }

  if ([itemMetadata networkName])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [itemMetadata networkName], &off_10034CAC8);
  }

  if ([(IPodLibraryML3TrackImporter *)self _currentTrackMovieInfoFromMetadata:itemMetadata])
  {
    [(NSMutableDictionary *)v8 setObject:[(IPodLibraryML3TrackImporter *)self _currentTrackMovieInfoFromMetadata:itemMetadata] forKey:&off_10034CAE0];
  }

  v19 = [(IPodLibraryML3TrackImporter *)self _extendedContentRatingStringForLibraryItem:item];
  if ([v19 length])
  {
    [(NSMutableDictionary *)v8 setObject:v19 forKey:&off_10034CAF8];
  }

  if ([itemMetadata hlsPlaylistURL])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [objc_msgSend(itemMetadata "hlsPlaylistURL")], &off_10034CB10);
  }

  v20 = [itemMetadata valueForMetadataKey:SSDownloadMetadataKeyIsHLS];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v20 BOOLValue])
  {
    [(NSMutableDictionary *)v8 setObject:&__kCFBooleanTrue forKey:&off_10034CB28];
  }

  v21 = [itemMetadata valueForMetadataKey:SSDownloadMetadataKeyHasHDR];
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v21 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v23 = [itemMetadata valueForMetadataKey:SSDownloadMetadataKeyHasDolbyVision];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if ((bOOLValue & 1) == 0)
    {
      goto LABEL_130;
    }

    v25 = 1;
LABEL_129:
    [(NSMutableDictionary *)v8 setObject:[NSNumber forKey:"numberWithInteger:" numberWithInteger:v25], &off_10034CB40];
    goto LABEL_130;
  }

  bOOLValue2 = [v23 BOOLValue];
  if (bOOLValue2)
  {
    v25 = bOOLValue | 2;
  }

  else
  {
    v25 = 1;
  }

  if ((bOOLValue2 | bOOLValue))
  {
    goto LABEL_129;
  }

LABEL_130:
  v26 = [itemMetadata valueForMetadataKey:SSDownloadMetadataKeyHas4K];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v26 BOOLValue])
  {
    [(NSMutableDictionary *)v8 setObject:&off_10034CB58 forKey:&off_10034CB70];
  }

  v27 = [(IPodLibraryML3TrackImporter *)self _storeArtworkTokenFromLibraryItem:item metadata:itemMetadata];
  if (v27)
  {
    [(NSMutableDictionary *)v8 setObject:v27 forKey:&off_10034CB88];
  }

  v28 = [(NSMutableDictionary *)v8 objectForKey:&off_10034C2A0];
  if (v28)
  {
    v29 = -[IPodLibraryML3TrackImporter _currentTrackChapterDataForTrackPid:libraryItem:usingLibrary:](self, "_currentTrackChapterDataForTrackPid:libraryItem:usingLibrary:", [v28 longLongValue], item, library);
    if (v29)
    {
      [(NSMutableDictionary *)v8 setObject:v29 forKey:&off_10034CBA0];
    }
  }

  if ([itemMetadata artistIdentifier])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [itemMetadata artistIdentifier]), &off_10034CBB8);
  }

  return v8;
}

- (id)_absoluteTimeValueForDateValue:(id)value
{
  [value timeIntervalSinceReferenceDate];

  return [NSNumber numberWithDouble:?];
}

- (id)_currentTrackMovieInfoFromMetadata:(id)metadata
{
  videoDetailsDictionary = [metadata videoDetailsDictionary];
  if (videoDetailsDictionary)
  {
    videoDetailsDictionary = [NSPropertyListSerialization dataWithPropertyList:videoDetailsDictionary format:100 options:0 error:0];
    if (videoDetailsDictionary)
    {
      videoDetailsDictionary = [[NSString alloc] initWithData:videoDetailsDictionary encoding:4];
    }
  }

  return videoDetailsDictionary;
}

- (id)_storeArtworkTokenFromLibraryItem:(id)item metadata:(id)metadata
{
  if (![item hasItemArtwork])
  {
    return 0;
  }

  collectionIdentifier = [metadata collectionIdentifier];
  if (collectionIdentifier)
  {
    return [NSString stringWithFormat:@"store_collection_id=%llu", collectionIdentifier];
  }

  itemIdentifier = [metadata itemIdentifier];
  if (itemIdentifier)
  {
    return [NSString stringWithFormat:@"store_item_id=%llu", itemIdentifier];
  }

  v8 = +[NSUUID UUID];

  return [(NSUUID *)v8 UUIDString];
}

- (id)_currentTrackChapterDataForTrackPid:(int64_t)pid libraryItem:(id)item usingLibrary:(id)library
{
  pidCopy = pid;
  if (!pid)
  {
    pidCopy = [item libraryPersistentIdentifier];
  }

  chapters = [item chapters];

  return [ML3Track flattenedChapterDataWithImportChapters:chapters library:library trackPersistentID:pidCopy];
}

- (id)_extendedContentRatingStringForLibraryItem:(id)item
{
  v3 = [objc_msgSend(item "itemMetadata")];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  rank = [v3 rank];
  ratingLabel = [v4 ratingLabel];
  v7 = +[SSItemContentRating stringForRatingSystem:](SSItemContentRating, "stringForRatingSystem:", [v4 ratingSystem]);
  ratingDescription = [v4 ratingDescription];
  if (![v7 length] || !objc_msgSend(ratingLabel, "length"))
  {
    return 0;
  }

  v9 = &stru_10033CC30;
  if (ratingDescription)
  {
    v9 = ratingDescription;
  }

  return [NSString stringWithFormat:@"%@|%@|%ld|%@", v7, ratingLabel, rank, v9];
}

@end