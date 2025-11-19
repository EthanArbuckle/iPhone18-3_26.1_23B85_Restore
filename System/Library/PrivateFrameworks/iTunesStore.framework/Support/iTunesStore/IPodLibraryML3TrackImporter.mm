@interface IPodLibraryML3TrackImporter
- (BOOL)importLibraryItems:(id)a3 toMusicLibrary:(id)a4 importedItemPids:(id)a5;
- (id)_absoluteTimeValueForDateValue:(id)a3;
- (id)_currentTrackChapterDataForTrackPid:(int64_t)a3 libraryItem:(id)a4 usingLibrary:(id)a5;
- (id)_currentTrackMovieInfoFromMetadata:(id)a3;
- (id)_extendedContentRatingStringForLibraryItem:(id)a3;
- (id)_importPropertiesFromLibraryItem:(id)a3 fromAccount:(id)a4 usingLibrary:(id)a5;
- (id)_storeArtworkTokenFromLibraryItem:(id)a3 metadata:(id)a4;
@end

@implementation IPodLibraryML3TrackImporter

- (BOOL)importLibraryItems:(id)a3 toMusicLibrary:(id)a4 importedItemPids:(id)a5
{
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 1;
  v9 = [+[SSAccountStore defaultStore](SSAccountStore "defaultStore")];
  if ([a3 count])
  {
    v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [a3 count]);
    v32 = 0u;
    v30 = 0u;
    v31 = 0u;
    v29 = 0u;
    v11 = [a3 countByEnumeratingWithState:&v29 objects:v43 count:16];
    if (v11)
    {
      v12 = *v30;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(a3);
          }

          [(NSMutableArray *)v10 addObject:[(IPodLibraryML3TrackImporter *)self _importPropertiesFromLibraryItem:*(*(&v29 + 1) + 8 * i) fromAccount:v9 usingLibrary:a4]];
        }

        v11 = [a3 countByEnumeratingWithState:&v29 objects:v43 count:16];
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

      v16 = [v15 shouldLog];
      v17 = [v15 shouldLogToDisk];
      v18 = [v15 OSLogObject];
      if (v17)
      {
        v16 |= 2u;
      }

      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v16 &= 2u;
      }

      if (v16)
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
    block[6] = a5;
    block[7] = a3;
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

- (id)_importPropertiesFromLibraryItem:(id)a3 fromAccount:(id)a4 usingLibrary:(id)a5
{
  v8 = [NSMutableDictionary dictionaryWithCapacity:100];
  v9 = [a3 itemMetadata];
  v10 = [IPodLibraryItem mediaTypeForStoreDownload:v9];
  if ([a3 libraryPersistentIdentifier])
  {
    v11 = [a3 libraryPersistentIdentifier];
LABEL_3:
    [(NSMutableDictionary *)v8 setObject:[NSNumber forKey:"numberWithLongLong:" numberWithLongLong:v11], &off_10034C2A0];
    goto LABEL_4;
  }

  if ([a3 itemDownloadIdentifier])
  {
    v18 = +[ML3Track anyInLibrary:predicate:](ML3Track, "anyInLibrary:predicate:", a5, +[ML3ComparisonPredicate predicateWithProperty:equalToValue:](ML3ComparisonPredicate, "predicateWithProperty:equalToValue:", ML3TrackPropertyDownloadIdentifier, [a3 itemDownloadIdentifier]));
    if (v18)
    {
      v11 = [v18 persistentID];
      goto LABEL_3;
    }
  }

LABEL_4:
  [(NSMutableDictionary *)v8 setObject:[NSNumber forKey:"numberWithUnsignedInt:" numberWithUnsignedInt:v10], &off_10034C2B8];
  if ([v9 collectionIndexInCollectionGroup])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [v9 collectionIndexInCollectionGroup], &off_10034C2D0);
  }

  if ([v9 indexInCollection])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [v9 indexInCollection], &off_10034C2E8);
  }

  if ([v9 episodeSortIdentifier])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [v9 episodeSortIdentifier], &off_10034C300);
  }

  [(NSMutableDictionary *)v8 setObject:&off_10034C318 forKey:&off_10034C330];
  [(NSMutableDictionary *)v8 setObject:&__kCFBooleanFalse forKey:&off_10034C348];
  if ([v9 artistName])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [v9 artistName], &off_10034C360);
  }

  if ([v9 seriesName])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [v9 seriesName], &off_10034C378);
  }

  if ([v9 collectionArtistName])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [v9 collectionArtistName], &off_10034C390);
  }

  if ([v9 genre])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [v9 genre], &off_10034C3A8);
  }

  if ([a3 itemMediaPath])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [a3 itemMediaPath], &off_10034C3C0);
  }

  if ([v9 collectionName])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [v9 collectionName], &off_10034C3D8);
  }

  if ([v9 composerName])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [v9 composerName], &off_10034C3F0);
  }

  if ([v9 showComposer])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [v9 showComposer], &off_10034C408);
  }

  if ([v9 isMusicShow])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 isMusicShow]), &off_10034C420);
  }

  if ([v9 title])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [v9 title], &off_10034C438);
  }

  if ([v9 numberOfCollectionsInCollectionGroup])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [v9 numberOfCollectionsInCollectionGroup], &off_10034C450);
  }

  if ([v9 numberOfItemsInCollection])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [v9 numberOfItemsInCollection], &off_10034C468);
  }

  if ([v9 releaseYear])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [v9 releaseYear], &off_10034C480);
  }

  [(NSMutableDictionary *)v8 setObject:&off_10034C318 forKey:&off_10034C498];
  [(NSMutableDictionary *)v8 setObject:[NSNumber forKey:"numberWithBool:" numberWithBool:?], &off_10034C4B0];
  -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 isCompilation]), &off_10034C4C8);
  -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", -[IPodLibraryML3TrackImporter _absoluteTimeValueForDateValue:](self, "_absoluteTimeValueForDateValue:", [v9 purchaseDate]), &off_10034C4E0);
  [(NSMutableDictionary *)v8 setObject:&off_10034CD00 forKey:&off_10034C4F8];
  if ([v9 isExplicitContent])
  {
    v12 = 1;
  }

  else
  {
    v12 = [objc_msgSend(v9 "contentRating")];
  }

  [(NSMutableDictionary *)v8 setObject:[NSNumber forKey:"numberWithInteger:" numberWithInteger:v12], &off_10034C510];
  -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [objc_msgSend(v9 "contentRating")]), &off_10034C528);
  [(NSMutableDictionary *)v8 setObject:&__kCFBooleanFalse forKey:&off_10034C540];
  if ([v9 durationInMilliseconds])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [v9 durationInMilliseconds], &off_10034C558);
  }

  [(NSMutableDictionary *)v8 setObject:&off_10034C318 forKey:&off_10034C570];
  [(NSMutableDictionary *)v8 setObject:&off_10034C318 forKey:&off_10034C588];
  if ([v9 shortDescription])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [v9 shortDescription], &off_10034C5A0);
  }

  if ([v9 longDescription])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [v9 longDescription], &off_10034C5B8);
  }

  if ([v9 longSeasonDescription])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [v9 longSeasonDescription], &off_10034C5D0);
  }

  if ([v9 copyright])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [v9 copyright], &off_10034C5E8);
  }

  [(NSMutableDictionary *)v8 setObject:&off_10034C318 forKey:&off_10034C600];
  [(NSMutableDictionary *)v8 setObject:[NSNumber forKey:"numberWithUnsignedInt:" numberWithUnsignedInt:v10], &off_10034C618];
  if ([v9 workName])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [v9 workName], &off_10034C630);
  }

  if ([v9 movementName])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [v9 movementName], &off_10034C648);
  }

  if ([v9 movementNumber])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [v9 movementNumber], &off_10034C660);
  }

  if ([v9 movementCount])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [v9 movementCount], &off_10034C678);
  }

  [(NSMutableDictionary *)v8 setObject:&off_10034C318 forKey:&off_10034C690];
  [(NSMutableDictionary *)v8 setObject:&off_10034C318 forKey:&off_10034C6A8];
  [(NSMutableDictionary *)v8 setObject:[NSNumber forKey:"numberWithBool:" numberWithBool:?], &off_10034C6C0];
  [(NSMutableDictionary *)v8 setObject:&off_10034CD10 forKey:&off_10034C6D8];
  [(NSMutableDictionary *)v8 setObject:&off_10034C318 forKey:&off_10034C6F0];
  if ([v9 durationInMilliseconds])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [v9 durationInMilliseconds], &off_10034C708);
  }

  [(NSMutableDictionary *)v8 setObject:&off_10034C318 forKey:&off_10034C720];
  if ([a3 itemDownloadIdentifier])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [a3 itemDownloadIdentifier], &off_10034C738);
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
  if ([v9 itemIdentifier])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v9 itemIdentifier]), &off_10034C828);
  }

  if ([v9 composerIdentifier])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v9 composerIdentifier]), &off_10034C840);
  }

  if ([v9 genreIdentifier])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v9 genreIdentifier]), &off_10034C858);
  }

  if ([v9 collectionIdentifier])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v9 collectionIdentifier]), &off_10034C870);
  }

  [(NSMutableDictionary *)v8 setObject:&off_10034C318 forKey:&off_10034C888];
  if ([v9 redownloadActionParameters])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [v9 redownloadActionParameters], &off_10034C8A0);
  }

  [v9 cloudIdentifier];
  [(NSMutableDictionary *)v8 setObject:[NSNumber forKey:"numberWithUnsignedLongLong:" numberWithUnsignedLongLong:?], &off_10034C8B8];
  [(NSMutableDictionary *)v8 setObject:&off_10034C318 forKey:&off_10034C8D0];
  if ([a3 protectionType] != 2)
  {
    [(NSMutableDictionary *)v8 setObject:&__kCFBooleanTrue forKey:&off_10034C8E8];
  }

  [(NSMutableDictionary *)v8 setObject:&off_10034C318 forKey:&off_10034C900];
  v13 = [v9 purchaserAccountIdentifier];
  if (v13 || (v13 = [a4 uniqueIdentifier]) != 0)
  {
    [(NSMutableDictionary *)v8 setObject:v13 forKey:&off_10034C918];
  }

  v14 = [v9 downloaderAccountIdentifier];
  if (v14 || (v14 = [a4 uniqueIdentifier]) != 0)
  {
    [(NSMutableDictionary *)v8 setObject:v14 forKey:&off_10034C930];
  }

  -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", -[IPodLibraryML3TrackImporter _absoluteTimeValueForDateValue:](self, "_absoluteTimeValueForDateValue:", [v9 purchaseDate]), &off_10034C948);
  -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", -[IPodLibraryML3TrackImporter _absoluteTimeValueForDateValue:](self, "_absoluteTimeValueForDateValue:", [v9 releaseDate]), &off_10034C960);
  if ([v9 podcastEpisodeGUID])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [v9 podcastEpisodeGUID], &off_10034C978);
  }

  if (-[IPodLibraryML3TrackImporter _stringValueForURLValue:](self, "_stringValueForURLValue:", [v9 podcastFeedURL]))
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", -[IPodLibraryML3TrackImporter _stringValueForURLValue:](self, "_stringValueForURLValue:", [v9 podcastFeedURL]), &off_10034C990);
  }

  if (-[IPodLibraryML3TrackImporter _stringValueForURLValue:](self, "_stringValueForURLValue:", [v9 viewStoreItemURL]))
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", -[IPodLibraryML3TrackImporter _stringValueForURLValue:](self, "_stringValueForURLValue:", [v9 viewStoreItemURL]), &off_10034C9A8);
  }

  v15 = SSDownloadMetadataKeyXID;
  if ([v9 valueForMetadataKey:SSDownloadMetadataKeyXID])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [v9 valueForMetadataKey:v15], &off_10034C9C0);
  }

  v16 = SSDownloadMetadataKeyAssetFlavor;
  if ([v9 valueForMetadataKey:SSDownloadMetadataKeyAssetFlavor])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [v9 valueForMetadataKey:v16], &off_10034C9D8);
  }

  if ([v9 matchedStatus])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [v9 matchedStatus], &off_10034C9F0);
  }

  if ([v9 redownloadedStatus])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [v9 redownloadedStatus], &off_10034CA08);
  }

  if ([v9 launchExtrasUrl])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [v9 launchExtrasUrl], &off_10034CA20);
  }

  if ([v9 rentalID])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [v9 rentalID], &off_10034CA38);
  }

  -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 isHighDefinition]), &off_10034CA50);
  -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 isRental]), &off_10034CA68);
  if (a3)
  {
    v17 = [a3 chapters] != 0;
  }

  else
  {
    v17 = 0;
  }

  [(NSMutableDictionary *)v8 setObject:[NSNumber forKey:"numberWithBool:" numberWithBool:v17], &off_10034CA80];
  if ([v9 seasonNumber])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [v9 seasonNumber], &off_10034CA98);
  }

  if ([v9 episodeIdentifier])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [v9 episodeIdentifier], &off_10034CAB0);
  }

  if ([v9 networkName])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [v9 networkName], &off_10034CAC8);
  }

  if ([(IPodLibraryML3TrackImporter *)self _currentTrackMovieInfoFromMetadata:v9])
  {
    [(NSMutableDictionary *)v8 setObject:[(IPodLibraryML3TrackImporter *)self _currentTrackMovieInfoFromMetadata:v9] forKey:&off_10034CAE0];
  }

  v19 = [(IPodLibraryML3TrackImporter *)self _extendedContentRatingStringForLibraryItem:a3];
  if ([v19 length])
  {
    [(NSMutableDictionary *)v8 setObject:v19 forKey:&off_10034CAF8];
  }

  if ([v9 hlsPlaylistURL])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", [objc_msgSend(v9 "hlsPlaylistURL")], &off_10034CB10);
  }

  v20 = [v9 valueForMetadataKey:SSDownloadMetadataKeyIsHLS];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v20 BOOLValue])
  {
    [(NSMutableDictionary *)v8 setObject:&__kCFBooleanTrue forKey:&off_10034CB28];
  }

  v21 = [v9 valueForMetadataKey:SSDownloadMetadataKeyHasHDR];
  if (objc_opt_respondsToSelector())
  {
    v22 = [v21 BOOLValue];
  }

  else
  {
    v22 = 0;
  }

  v23 = [v9 valueForMetadataKey:SSDownloadMetadataKeyHasDolbyVision];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if ((v22 & 1) == 0)
    {
      goto LABEL_130;
    }

    v25 = 1;
LABEL_129:
    [(NSMutableDictionary *)v8 setObject:[NSNumber forKey:"numberWithInteger:" numberWithInteger:v25], &off_10034CB40];
    goto LABEL_130;
  }

  v24 = [v23 BOOLValue];
  if (v24)
  {
    v25 = v22 | 2;
  }

  else
  {
    v25 = 1;
  }

  if ((v24 | v22))
  {
    goto LABEL_129;
  }

LABEL_130:
  v26 = [v9 valueForMetadataKey:SSDownloadMetadataKeyHas4K];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v26 BOOLValue])
  {
    [(NSMutableDictionary *)v8 setObject:&off_10034CB58 forKey:&off_10034CB70];
  }

  v27 = [(IPodLibraryML3TrackImporter *)self _storeArtworkTokenFromLibraryItem:a3 metadata:v9];
  if (v27)
  {
    [(NSMutableDictionary *)v8 setObject:v27 forKey:&off_10034CB88];
  }

  v28 = [(NSMutableDictionary *)v8 objectForKey:&off_10034C2A0];
  if (v28)
  {
    v29 = -[IPodLibraryML3TrackImporter _currentTrackChapterDataForTrackPid:libraryItem:usingLibrary:](self, "_currentTrackChapterDataForTrackPid:libraryItem:usingLibrary:", [v28 longLongValue], a3, a5);
    if (v29)
    {
      [(NSMutableDictionary *)v8 setObject:v29 forKey:&off_10034CBA0];
    }
  }

  if ([v9 artistIdentifier])
  {
    -[NSMutableDictionary setObject:forKey:](v8, "setObject:forKey:", +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v9 artistIdentifier]), &off_10034CBB8);
  }

  return v8;
}

- (id)_absoluteTimeValueForDateValue:(id)a3
{
  [a3 timeIntervalSinceReferenceDate];

  return [NSNumber numberWithDouble:?];
}

- (id)_currentTrackMovieInfoFromMetadata:(id)a3
{
  v3 = [a3 videoDetailsDictionary];
  if (v3)
  {
    v3 = [NSPropertyListSerialization dataWithPropertyList:v3 format:100 options:0 error:0];
    if (v3)
    {
      v3 = [[NSString alloc] initWithData:v3 encoding:4];
    }
  }

  return v3;
}

- (id)_storeArtworkTokenFromLibraryItem:(id)a3 metadata:(id)a4
{
  if (![a3 hasItemArtwork])
  {
    return 0;
  }

  v5 = [a4 collectionIdentifier];
  if (v5)
  {
    return [NSString stringWithFormat:@"store_collection_id=%llu", v5];
  }

  v7 = [a4 itemIdentifier];
  if (v7)
  {
    return [NSString stringWithFormat:@"store_item_id=%llu", v7];
  }

  v8 = +[NSUUID UUID];

  return [(NSUUID *)v8 UUIDString];
}

- (id)_currentTrackChapterDataForTrackPid:(int64_t)a3 libraryItem:(id)a4 usingLibrary:(id)a5
{
  v7 = a3;
  if (!a3)
  {
    v7 = [a4 libraryPersistentIdentifier];
  }

  v8 = [a4 chapters];

  return [ML3Track flattenedChapterDataWithImportChapters:v8 library:a5 trackPersistentID:v7];
}

- (id)_extendedContentRatingStringForLibraryItem:(id)a3
{
  v3 = [objc_msgSend(a3 "itemMetadata")];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [v3 rank];
  v6 = [v4 ratingLabel];
  v7 = +[SSItemContentRating stringForRatingSystem:](SSItemContentRating, "stringForRatingSystem:", [v4 ratingSystem]);
  v8 = [v4 ratingDescription];
  if (![v7 length] || !objc_msgSend(v6, "length"))
  {
    return 0;
  }

  v9 = &stru_10033CC30;
  if (v8)
  {
    v9 = v8;
  }

  return [NSString stringWithFormat:@"%@|%@|%ld|%@", v7, v6, v5, v9];
}

@end