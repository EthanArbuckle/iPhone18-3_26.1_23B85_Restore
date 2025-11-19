@interface ML3MusicLibrary
- (BOOL)_updateUbiquitousDatabaseWithEntity:(id)a3 syncRevision:(int64_t)a4 usingConnection:(id)a5;
- (BOOL)removeAllUbiquitousMetadataUsingClientIdentity:(id)a3 error:(id *)a4;
- (BOOL)updateMusicLibraryWithClientIdentity:(id)a3 applyUbiquitousBookmarkMetadataToTrackWithPersistentID:(int64_t)a4;
- (BOOL)updateUbiquitousDatabaseWithClientIdentity:(id)a3 removeUbiquitousMetadataFromTrackWithPersistentID:(int64_t)a4 error:(id *)a5;
- (BOOL)updateWithEntity:(id)a3 clientIdentity:(id)a4;
- (NSDate)dateLastSynced;
- (id)_keyValueStoreItemIdentifierForItem:(id)a3;
- (id)_kvsEntityWithKVSKey:(id)a3 domain:(id)a4;
- (id)_queryForTracksNeedingPushWithEntityRevisionAnchor:(unint64_t)a3 orderingTerms:(id)a4;
- (id)beginTransactionWithItemsToSyncWithDomain:(id)a3 enumerationBlock:(id)a4;
- (id)readUbiquitousDatabaseMetadataValuesForIdentifiers:(id)a3 forDomain:(id)a4 clientIdentity:(id)a5;
- (int64_t)icd_preferredVideoQuality;
- (int64_t)icd_sagaCloudAddToPlaylistBehavior;
- (int64_t)icd_sagaCloudFavoriteSongAddToLibraryBehavior;
- (unint64_t)lastSyncedEntityRevision;
- (void)_populateMetadataValues:(id)a3 fromDataSourceTrack:(id)a4;
- (void)_updateDatabaseByResetingSyncEntityRevisionForItemsWithIdentifiers:(id)a3;
- (void)commitUniversalPlaybackPositions:(id)a3 context:(id)a4 domain:(id)a5 domainVersion:(id)a6;
- (void)icd_setPreferredVideoQuality:(int64_t)a3;
- (void)icd_setSagaCloudAddToPlaylistBehavior:(int64_t)a3;
- (void)icd_setSagaCloudFavoriteSongAddToLibraryBehavior:(int64_t)a3;
- (void)setDateLastSynced:(id)a3;
- (void)setLastSyncedEntityRevision:(unint64_t)a3;
@end

@implementation ML3MusicLibrary

- (unint64_t)lastSyncedEntityRevision
{
  v2 = [(ML3MusicLibrary *)self valueForDatabaseProperty:@"MLUbiquitousBookmarkEntityRevisionAnchor"];
  v3 = [v2 longLongValue];

  return v3;
}

- (void)icd_setPreferredVideoQuality:(int64_t)a3
{
  if (a3 >= 3)
  {
    a3 = -1;
  }

  [(ML3MusicLibrary *)self setPreferredVideoQuality:a3];
}

- (int64_t)icd_preferredVideoQuality
{
  result = [(ML3MusicLibrary *)self preferredVideoQuality];
  if (result >= 3)
  {
    return -1;
  }

  return result;
}

- (void)icd_setSagaCloudFavoriteSongAddToLibraryBehavior:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2 * (a3 == 2);
  }

  [(ML3MusicLibrary *)self setSagaCloudFavoriteSongAddToLibraryBehavior:v3];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v5 = ICCloudClientCloudFavoriteSongAddToLibraryBehaviorDidChangeNotification;

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v5, 0, 0, 1u);
}

- (void)icd_setSagaCloudAddToPlaylistBehavior:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2 * (a3 == 2);
  }

  [(ML3MusicLibrary *)self setSagaCloudAddToPlaylistBehavior:v3];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v5 = ICCloudClientCloudAddToPlaylistBehaviorDidChangeNotification;

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v5, 0, 0, 1u);
}

- (int64_t)icd_sagaCloudFavoriteSongAddToLibraryBehavior
{
  result = [(ML3MusicLibrary *)self sagaCloudAddToPlaylistBehavior];
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

- (int64_t)icd_sagaCloudAddToPlaylistBehavior
{
  v2 = [(ML3MusicLibrary *)self sagaCloudAddToPlaylistBehavior];
  if (v2 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (v2 == 2);
  }
}

- (BOOL)_updateUbiquitousDatabaseWithEntity:(id)a3 syncRevision:(int64_t)a4 usingConnection:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v7 playbackPositionKey];
  v10 = [v9 length];

  if (v10)
  {
    v11 = [v7 bookmarkTime];
    if (v11)
    {
      v12 = [v7 bookmarkTime];
      [v12 doubleValue];
      v14 = [NSNumber numberWithDouble:v13 * 1000.0];
    }

    else
    {
      v14 = &off_1001ED708;
    }

    v16 = [v7 playbackPositionKey];
    v33[0] = v16;
    v17 = [v7 userPlayCount];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = &off_1001ED708;
    }

    v33[1] = v19;
    v20 = [v7 hasBeenPlayed];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = &off_1001ED708;
    }

    v33[2] = v22;
    v33[3] = v14;
    v23 = [v7 bookmarkTimestamp];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = &off_1001ED708;
    }

    v33[4] = v25;
    v26 = [NSNumber numberWithLongLong:a4];
    v33[5] = v26;
    v27 = [NSArray arrayWithObjects:v33 count:6];
    v15 = [v8 executeUpdate:@"INSERT OR REPLACE INTO cloud_kvs (key withParameters:play_count_user error:{has_been_played, bookmark_time_ms, bookmark_sync_timestamp, bookmark_sync_revision) VALUES (?, ?, ?, ?, ?, ?)", v27, 0}];

    if ((v15 & 1) == 0)
    {
      v28 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = [v7 playbackPositionKey];
        v31 = 138412290;
        v32 = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "failed to update ubiquitous bookmarkmatadata for identifier %@.", &v31, 0xCu);
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)_updateDatabaseByResetingSyncEntityRevisionForItemsWithIdentifiers:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = +[ML3DatabaseStatementRenderer defaultRenderer];
    [v5 statementWithPrefix:@"UPDATE cloud_kvs SET bookmark_sync_revision = 0 WHERE key" inParameterCount:{objc_msgSend(v4, "count")}];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000C3178;
    v8 = v7[3] = &unk_1001DEDD0;
    v9 = v4;
    v6 = v8;
    [(ML3MusicLibrary *)self performDatabaseTransactionWithBlock:v7];
  }
}

- (id)_queryForTracksNeedingPushWithEntityRevisionAnchor:(unint64_t)a3 orderingTerms:(id)a4
{
  v6 = ML3TrackPropertyRememberBookmarkTime;
  v7 = a4;
  v8 = [ML3ComparisonPredicate predicateWithProperty:v6 equalToValue:&__kCFBooleanTrue];
  v9 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyStoreBookmarkMetadataTimestamp value:&off_1001ED708 comparison:2];
  v10 = ML3TrackPropertyStoreBookmarkMetadataEntityRevision;
  v11 = [NSNumber numberWithUnsignedLongLong:a3];
  v12 = [ML3ComparisonPredicate predicateWithProperty:v10 value:v11 comparison:4];

  v17[0] = v8;
  v17[1] = v9;
  v17[2] = v12;
  v13 = [NSArray arrayWithObjects:v17 count:3];
  v14 = [ML3AllCompoundPredicate predicateMatchingPredicates:v13];

  v15 = [ML3Track unrestrictedAllItemsQueryWithlibrary:self predicate:v14 orderingTerms:v7];

  return v15;
}

- (id)_keyValueStoreItemIdentifierForItem:(id)a3
{
  v3 = a3;
  v4 = ML3TrackPropertyStoreItemID;
  v5 = ML3TrackPropertySubscriptionStoreItemID;
  v38[0] = ML3TrackPropertyStoreItemID;
  v38[1] = ML3TrackPropertySubscriptionStoreItemID;
  v6 = ML3TrackPropertyMediaType;
  v38[2] = ML3TrackPropertyMediaType;
  v7 = [NSArray arrayWithObjects:v38 count:3];
  v8 = sub_1000C3740(v3, v7);
  v9 = [v8 objectForKey:v6];
  v10 = [v9 unsignedIntValue];

  v11 = [v8 objectForKey:v4];
  v12 = _NSIsNSString();
  v13 = [v8 objectForKey:v4];
  v14 = v13;
  if (v12)
  {
    v15 = [v13 longLongValue];
  }

  else
  {
    v15 = [v13 unsignedLongLongValue];
  }

  v16 = v15;

  if (v16)
  {
    goto LABEL_10;
  }

  v17 = [v8 objectForKey:v5];
  v18 = _NSIsNSString();
  v19 = [v8 objectForKey:v5];
  v20 = v19;
  v21 = (v18 & 1) != 0 ? [v19 longLongValue] : objc_msgSend(v19, "unsignedLongLongValue");
  v16 = v21;

  if (v16)
  {
LABEL_10:
    if (v10 != 256 && v10 != 4096)
    {
      v22 = [NSString stringWithFormat:@"%llu", v16];
LABEL_12:
      v23 = v22;
      goto LABEL_15;
    }
  }

  v37[0] = ML3TrackPropertyFeedURL;
  v37[1] = ML3TrackPropertyPodcastExternalGUID;
  v24 = [NSArray arrayWithObjects:v37 count:2];

  v25 = sub_1000C3740(v3, v24);

  v26 = ICPlaybackPositionEntityIdentifierForProperties();
  if (v26)
  {
    goto LABEL_14;
  }

  v28 = ML3TrackPropertyTitle;
  v29 = ML3TrackPropertyArtist;
  v36[0] = ML3TrackPropertyTitle;
  v36[1] = ML3TrackPropertyArtist;
  v30 = ML3TrackPropertyAlbum;
  v36[2] = ML3TrackPropertyAlbum;
  v7 = [NSArray arrayWithObjects:v36 count:3];

  v8 = sub_1000C3740(v3, v7);

  v22 = ICPlaybackPositionEntityIdentifierForProperties();
  if (v22)
  {
    goto LABEL_12;
  }

  v35[0] = v28;
  v35[1] = v30;
  v24 = [NSArray arrayWithObjects:v35 count:2];

  v25 = sub_1000C3740(v3, v24);

  v26 = ICPlaybackPositionEntityIdentifierForProperties();
  if (v26)
  {
LABEL_14:
    v23 = v26;
    v7 = v24;
    v8 = v25;
  }

  else
  {
    v34[0] = v28;
    v34[1] = v29;
    v7 = [NSArray arrayWithObjects:v34 count:2];

    v8 = sub_1000C3740(v3, v7);

    v22 = ICPlaybackPositionEntityIdentifierForProperties();
    if (v22)
    {
      goto LABEL_12;
    }

    v33 = v28;
    v31 = [NSArray arrayWithObjects:&v33 count:1];

    v32 = sub_1000C3740(v3, v31);

    v23 = ICPlaybackPositionEntityIdentifierForProperties();
    v7 = v31;
    v8 = v32;
  }

LABEL_15:

  return v23;
}

- (id)_kvsEntityWithKVSKey:(id)a3 domain:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1000C39F8;
  v21 = sub_1000C3A08;
  v22 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000C3A10;
  v12[3] = &unk_1001DCF38;
  v8 = v6;
  v13 = v8;
  v16 = &v17;
  v9 = v7;
  v14 = v9;
  v15 = self;
  [(ML3MusicLibrary *)self performDatabaseTransactionWithBlock:v12];
  v10 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v10;
}

- (void)_populateMetadataValues:(id)a3 fromDataSourceTrack:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = [(ML3MusicLibrary *)self _keyValueStoreItemIdentifierForItem:v6];
  [v16 setPlaybackPositionKey:v7];

  v8 = [v6 valueForProperty:ML3TrackPropertyStoreBookmarkMetadataTimestamp];
  [v16 setBookmarkTimestamp:v8];

  v9 = [v6 valueForProperty:ML3TrackPropertyHasBeenPlayed];
  [v16 setHasBeenPlayed:v9];

  v10 = [v6 valueForProperty:ML3TrackPropertyPlayCountUser];
  [v16 setUserPlayCount:v10];

  v11 = [v6 valueForProperty:ML3TrackPropertyBookmarkTime];

  [v16 setBookmarkTime:v11];
  v12 = [v16 bookmarkTime];

  if (v12)
  {
    v13 = [v16 bookmarkTime];
    [v13 doubleValue];
    v15 = [NSNumber numberWithDouble:v14 / 1000.0];
    [v16 setBookmarkTime:v15];
  }
}

- (BOOL)updateUbiquitousDatabaseWithClientIdentity:(id)a3 removeUbiquitousMetadataFromTrackWithPersistentID:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1000C39F8;
  v22 = sub_1000C3A08;
  v23 = 0;
  v9 = [[ML3Track alloc] initWithPersistentID:a4 inLibrary:self];
  v10 = [v9 valueForProperty:ML3TrackPropertyStoreBookmarkMetadataIdentifier];
  if ([v10 length])
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000C4074;
    v13[3] = &unk_1001DCEE8;
    v14 = v8;
    v16 = &v24;
    v15 = v10;
    v17 = &v18;
    [(ML3MusicLibrary *)self databaseConnectionAllowingWrites:1 withBlock:v13];
  }

  if (v25[3])
  {
    v11 = 1;
  }

  else
  {
    *a5 = v19[5];
    v11 = *(v25 + 24);
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v11 & 1;
}

- (BOOL)updateWithEntity:(id)a3 clientIdentity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = [v6 playbackPositionKey];
  v10 = [v9 length];

  if (v10)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v21 = 0;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000C4368;
    v14[3] = &unk_1001DCEC0;
    v15 = v7;
    v16 = v6;
    v18 = v8;
    v19 = buf;
    v17 = v18;
    [(ML3MusicLibrary *)v18 performDatabaseTransactionWithBlock:v14];
    v11 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v12 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = v8;
      *&buf[12] = 2114;
      *&buf[14] = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@ Entity has no playbackPositionKey. entity=%{public}@", buf, 0x16u);
    }

    v11 = 0;
  }

  return v11 & 1;
}

- (BOOL)updateMusicLibraryWithClientIdentity:(id)a3 applyUbiquitousBookmarkMetadataToTrackWithPersistentID:(int64_t)a4
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000C4D0C;
  v8[3] = &unk_1001DCE48;
  v6 = a3;
  v9 = v6;
  v10 = self;
  v11 = &v13;
  v12 = a4;
  [(ML3MusicLibrary *)self performDatabaseTransactionWithBlock:v8];
  LOBYTE(a4) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return a4;
}

- (BOOL)removeAllUbiquitousMetadataUsingClientIdentity:(id)a3 error:(id *)a4
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1000C39F8;
  v17 = sub_1000C3A08;
  v18 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000C52D8;
  v9[3] = &unk_1001DD538;
  v6 = a3;
  v10 = v6;
  v11 = &v19;
  v12 = &v13;
  [(ML3MusicLibrary *)self databaseConnectionAllowingWrites:1 withBlock:v9];
  if (v20[3])
  {
    v7 = 1;
  }

  else
  {
    *a4 = v14[5];
    v7 = *(v20 + 24);
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  return v7 & 1;
}

- (id)readUbiquitousDatabaseMetadataValuesForIdentifiers:(id)a3 forDomain:(id)a4 clientIdentity:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count])
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = sub_1000C39F8;
    v22 = sub_1000C3A08;
    v23 = objc_alloc_init(NSMutableArray);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000C5524;
    v13[3] = &unk_1001DD6B8;
    v14 = v10;
    v15 = v8;
    v16 = v9;
    v17 = &v18;
    [(ML3MusicLibrary *)self databaseConnectionAllowingWrites:0 withBlock:v13];
    v11 = v19[5];

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v11 = &__NSArray0__struct;
  }

  return v11;
}

- (void)commitUniversalPlaybackPositions:(id)a3 context:(id)a4 domain:(id)a5 domainVersion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v35 = a5;
  v36 = a6;
  v37 = v11;
  v34 = [v11 transactionEntityRevision];
  v12 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v54 = self;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Starting commit", buf, 0xCu);
  }

  v13 = self;

  v14 = +[NSMutableDictionary dictionary];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v10;
  v15 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v49;
    v18 = ML3TrackPropertyStoreBookmarkMetadataIdentifier;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v49 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v48 + 1) + 8 * i);
        v21 = [v20 playbackPositionKey];
        if (v21)
        {
          v22 = [ML3ComparisonPredicate predicateWithProperty:v18 equalToValue:v21];
          v23 = [ML3Track anyInLibrary:v13 predicate:v22];

          if (v23)
          {
            [v14 setObject:v23 forKey:v20];
          }

          else
          {
            v24 = +[NSNull null];
            [v14 setObject:v24 forKey:v20];
          }
        }
      }

      v16 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v16);
  }

  v25 = +[NSMutableArray array];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_1000C5CFC;
  v44[3] = &unk_1001DCDA8;
  v26 = v14;
  v45 = v26;
  v47 = v34;
  v27 = v25;
  v46 = v27;
  [(ML3MusicLibrary *)v13 performDatabaseTransactionWithBlock:v44];
  v28 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v54 = v13;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ Done Updating Local Items", buf, 0xCu);
  }

  [v26 removeObjectsForKeys:v27];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1000C5D90;
  v39[3] = &unk_1001DCDF8;
  v39[4] = v13;
  v40 = v36;
  v41 = v26;
  v42 = v35;
  v43 = v34;
  v29 = v35;
  v30 = v26;
  v31 = v36;
  [(ML3MusicLibrary *)v13 performDatabaseTransactionWithBlock:v39];
  v32 = [v37 ubiquitousIdentifiersToSync];
  [(ML3MusicLibrary *)v13 _updateDatabaseByResetingSyncEntityRevisionForItemsWithIdentifiers:v32];

  v33 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v54 = v13;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ Done Updating ubiquitous_bookmarks table (all items)", buf, 0xCu);
  }
}

- (id)beginTransactionWithItemsToSyncWithDomain:(id)a3 enumerationBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000C6300;
  v15[3] = &unk_1001DCD58;
  v15[4] = self;
  v8 = [[ICDPlaybackPositionDatabaseContext alloc] initWithLibrary:self];
  v16 = v8;
  v17 = v6;
  v18 = v7;
  v9 = v7;
  v10 = v6;
  v11 = self;
  [(ML3MusicLibrary *)v11 performReadOnlyDatabaseTransactionWithBlock:v15];
  v12 = v18;
  v13 = v8;

  return v8;
}

- (void)setDateLastSynced:(id)a3
{
  [a3 timeIntervalSinceReferenceDate];
  v4 = [NSNumber numberWithDouble:?];
  [(ML3MusicLibrary *)self setValue:v4 forDatabaseProperty:@"MPDateLastSynced"];
}

- (NSDate)dateLastSynced
{
  v2 = [(ML3MusicLibrary *)self valueForDatabaseProperty:@"MPDateLastSynced"];
  if (objc_opt_respondsToSelector())
  {
    [v2 doubleValue];
    v3 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setLastSyncedEntityRevision:(unint64_t)a3
{
  v4 = [NSNumber numberWithUnsignedLongLong:a3];
  [(ML3MusicLibrary *)self setValue:v4 forDatabaseProperty:@"MLUbiquitousBookmarkEntityRevisionAnchor"];
}

@end