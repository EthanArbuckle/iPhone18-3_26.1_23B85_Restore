@interface ML3MusicLibrary
- (BOOL)_updateUbiquitousDatabaseWithEntity:(id)entity syncRevision:(int64_t)revision usingConnection:(id)connection;
- (BOOL)removeAllUbiquitousMetadataUsingClientIdentity:(id)identity error:(id *)error;
- (BOOL)updateMusicLibraryWithClientIdentity:(id)identity applyUbiquitousBookmarkMetadataToTrackWithPersistentID:(int64_t)d;
- (BOOL)updateUbiquitousDatabaseWithClientIdentity:(id)identity removeUbiquitousMetadataFromTrackWithPersistentID:(int64_t)d error:(id *)error;
- (BOOL)updateWithEntity:(id)entity clientIdentity:(id)identity;
- (NSDate)dateLastSynced;
- (id)_keyValueStoreItemIdentifierForItem:(id)item;
- (id)_kvsEntityWithKVSKey:(id)key domain:(id)domain;
- (id)_queryForTracksNeedingPushWithEntityRevisionAnchor:(unint64_t)anchor orderingTerms:(id)terms;
- (id)beginTransactionWithItemsToSyncWithDomain:(id)domain enumerationBlock:(id)block;
- (id)readUbiquitousDatabaseMetadataValuesForIdentifiers:(id)identifiers forDomain:(id)domain clientIdentity:(id)identity;
- (int64_t)icd_preferredVideoQuality;
- (int64_t)icd_sagaCloudAddToPlaylistBehavior;
- (int64_t)icd_sagaCloudFavoriteSongAddToLibraryBehavior;
- (unint64_t)lastSyncedEntityRevision;
- (void)_populateMetadataValues:(id)values fromDataSourceTrack:(id)track;
- (void)_updateDatabaseByResetingSyncEntityRevisionForItemsWithIdentifiers:(id)identifiers;
- (void)commitUniversalPlaybackPositions:(id)positions context:(id)context domain:(id)domain domainVersion:(id)version;
- (void)icd_setPreferredVideoQuality:(int64_t)quality;
- (void)icd_setSagaCloudAddToPlaylistBehavior:(int64_t)behavior;
- (void)icd_setSagaCloudFavoriteSongAddToLibraryBehavior:(int64_t)behavior;
- (void)setDateLastSynced:(id)synced;
- (void)setLastSyncedEntityRevision:(unint64_t)revision;
@end

@implementation ML3MusicLibrary

- (unint64_t)lastSyncedEntityRevision
{
  v2 = [(ML3MusicLibrary *)self valueForDatabaseProperty:@"MLUbiquitousBookmarkEntityRevisionAnchor"];
  longLongValue = [v2 longLongValue];

  return longLongValue;
}

- (void)icd_setPreferredVideoQuality:(int64_t)quality
{
  if (quality >= 3)
  {
    quality = -1;
  }

  [(ML3MusicLibrary *)self setPreferredVideoQuality:quality];
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

- (void)icd_setSagaCloudFavoriteSongAddToLibraryBehavior:(int64_t)behavior
{
  if (behavior == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2 * (behavior == 2);
  }

  [(ML3MusicLibrary *)self setSagaCloudFavoriteSongAddToLibraryBehavior:v3];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v5 = ICCloudClientCloudFavoriteSongAddToLibraryBehaviorDidChangeNotification;

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v5, 0, 0, 1u);
}

- (void)icd_setSagaCloudAddToPlaylistBehavior:(int64_t)behavior
{
  if (behavior == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2 * (behavior == 2);
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
  sagaCloudAddToPlaylistBehavior = [(ML3MusicLibrary *)self sagaCloudAddToPlaylistBehavior];
  if (sagaCloudAddToPlaylistBehavior == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (sagaCloudAddToPlaylistBehavior == 2);
  }
}

- (BOOL)_updateUbiquitousDatabaseWithEntity:(id)entity syncRevision:(int64_t)revision usingConnection:(id)connection
{
  entityCopy = entity;
  connectionCopy = connection;
  playbackPositionKey = [entityCopy playbackPositionKey];
  v10 = [playbackPositionKey length];

  if (v10)
  {
    bookmarkTime = [entityCopy bookmarkTime];
    if (bookmarkTime)
    {
      bookmarkTime2 = [entityCopy bookmarkTime];
      [bookmarkTime2 doubleValue];
      v14 = [NSNumber numberWithDouble:v13 * 1000.0];
    }

    else
    {
      v14 = &off_1001ED708;
    }

    playbackPositionKey2 = [entityCopy playbackPositionKey];
    v33[0] = playbackPositionKey2;
    userPlayCount = [entityCopy userPlayCount];
    v18 = userPlayCount;
    if (userPlayCount)
    {
      v19 = userPlayCount;
    }

    else
    {
      v19 = &off_1001ED708;
    }

    v33[1] = v19;
    hasBeenPlayed = [entityCopy hasBeenPlayed];
    v21 = hasBeenPlayed;
    if (hasBeenPlayed)
    {
      v22 = hasBeenPlayed;
    }

    else
    {
      v22 = &off_1001ED708;
    }

    v33[2] = v22;
    v33[3] = v14;
    bookmarkTimestamp = [entityCopy bookmarkTimestamp];
    v24 = bookmarkTimestamp;
    if (bookmarkTimestamp)
    {
      v25 = bookmarkTimestamp;
    }

    else
    {
      v25 = &off_1001ED708;
    }

    v33[4] = v25;
    v26 = [NSNumber numberWithLongLong:revision];
    v33[5] = v26;
    v27 = [NSArray arrayWithObjects:v33 count:6];
    v15 = [connectionCopy executeUpdate:@"INSERT OR REPLACE INTO cloud_kvs (key withParameters:play_count_user error:{has_been_played, bookmark_time_ms, bookmark_sync_timestamp, bookmark_sync_revision) VALUES (?, ?, ?, ?, ?, ?)", v27, 0}];

    if ((v15 & 1) == 0)
    {
      v28 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        playbackPositionKey3 = [entityCopy playbackPositionKey];
        v31 = 138412290;
        v32 = playbackPositionKey3;
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

- (void)_updateDatabaseByResetingSyncEntityRevisionForItemsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if ([identifiersCopy count])
  {
    v5 = +[ML3DatabaseStatementRenderer defaultRenderer];
    [v5 statementWithPrefix:@"UPDATE cloud_kvs SET bookmark_sync_revision = 0 WHERE key" inParameterCount:{objc_msgSend(identifiersCopy, "count")}];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000C3178;
    v8 = v7[3] = &unk_1001DEDD0;
    v9 = identifiersCopy;
    v6 = v8;
    [(ML3MusicLibrary *)self performDatabaseTransactionWithBlock:v7];
  }
}

- (id)_queryForTracksNeedingPushWithEntityRevisionAnchor:(unint64_t)anchor orderingTerms:(id)terms
{
  v6 = ML3TrackPropertyRememberBookmarkTime;
  termsCopy = terms;
  v8 = [ML3ComparisonPredicate predicateWithProperty:v6 equalToValue:&__kCFBooleanTrue];
  v9 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyStoreBookmarkMetadataTimestamp value:&off_1001ED708 comparison:2];
  v10 = ML3TrackPropertyStoreBookmarkMetadataEntityRevision;
  v11 = [NSNumber numberWithUnsignedLongLong:anchor];
  v12 = [ML3ComparisonPredicate predicateWithProperty:v10 value:v11 comparison:4];

  v17[0] = v8;
  v17[1] = v9;
  v17[2] = v12;
  v13 = [NSArray arrayWithObjects:v17 count:3];
  v14 = [ML3AllCompoundPredicate predicateMatchingPredicates:v13];

  v15 = [ML3Track unrestrictedAllItemsQueryWithlibrary:self predicate:v14 orderingTerms:termsCopy];

  return v15;
}

- (id)_keyValueStoreItemIdentifierForItem:(id)item
{
  itemCopy = item;
  v4 = ML3TrackPropertyStoreItemID;
  v5 = ML3TrackPropertySubscriptionStoreItemID;
  v38[0] = ML3TrackPropertyStoreItemID;
  v38[1] = ML3TrackPropertySubscriptionStoreItemID;
  v6 = ML3TrackPropertyMediaType;
  v38[2] = ML3TrackPropertyMediaType;
  v7 = [NSArray arrayWithObjects:v38 count:3];
  v8 = sub_1000C3740(itemCopy, v7);
  v9 = [v8 objectForKey:v6];
  unsignedIntValue = [v9 unsignedIntValue];

  v11 = [v8 objectForKey:v4];
  v12 = _NSIsNSString();
  v13 = [v8 objectForKey:v4];
  v14 = v13;
  if (v12)
  {
    longLongValue = [v13 longLongValue];
  }

  else
  {
    longLongValue = [v13 unsignedLongLongValue];
  }

  v16 = longLongValue;

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
    if (unsignedIntValue != 256 && unsignedIntValue != 4096)
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

  v25 = sub_1000C3740(itemCopy, v24);

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

  v8 = sub_1000C3740(itemCopy, v7);

  v22 = ICPlaybackPositionEntityIdentifierForProperties();
  if (v22)
  {
    goto LABEL_12;
  }

  v35[0] = v28;
  v35[1] = v30;
  v24 = [NSArray arrayWithObjects:v35 count:2];

  v25 = sub_1000C3740(itemCopy, v24);

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

    v8 = sub_1000C3740(itemCopy, v7);

    v22 = ICPlaybackPositionEntityIdentifierForProperties();
    if (v22)
    {
      goto LABEL_12;
    }

    v33 = v28;
    v31 = [NSArray arrayWithObjects:&v33 count:1];

    v32 = sub_1000C3740(itemCopy, v31);

    v23 = ICPlaybackPositionEntityIdentifierForProperties();
    v7 = v31;
    v8 = v32;
  }

LABEL_15:

  return v23;
}

- (id)_kvsEntityWithKVSKey:(id)key domain:(id)domain
{
  keyCopy = key;
  domainCopy = domain;
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
  v8 = keyCopy;
  v13 = v8;
  v16 = &v17;
  v9 = domainCopy;
  v14 = v9;
  selfCopy = self;
  [(ML3MusicLibrary *)self performDatabaseTransactionWithBlock:v12];
  v10 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v10;
}

- (void)_populateMetadataValues:(id)values fromDataSourceTrack:(id)track
{
  valuesCopy = values;
  trackCopy = track;
  v7 = [(ML3MusicLibrary *)self _keyValueStoreItemIdentifierForItem:trackCopy];
  [valuesCopy setPlaybackPositionKey:v7];

  v8 = [trackCopy valueForProperty:ML3TrackPropertyStoreBookmarkMetadataTimestamp];
  [valuesCopy setBookmarkTimestamp:v8];

  v9 = [trackCopy valueForProperty:ML3TrackPropertyHasBeenPlayed];
  [valuesCopy setHasBeenPlayed:v9];

  v10 = [trackCopy valueForProperty:ML3TrackPropertyPlayCountUser];
  [valuesCopy setUserPlayCount:v10];

  v11 = [trackCopy valueForProperty:ML3TrackPropertyBookmarkTime];

  [valuesCopy setBookmarkTime:v11];
  bookmarkTime = [valuesCopy bookmarkTime];

  if (bookmarkTime)
  {
    bookmarkTime2 = [valuesCopy bookmarkTime];
    [bookmarkTime2 doubleValue];
    v15 = [NSNumber numberWithDouble:v14 / 1000.0];
    [valuesCopy setBookmarkTime:v15];
  }
}

- (BOOL)updateUbiquitousDatabaseWithClientIdentity:(id)identity removeUbiquitousMetadataFromTrackWithPersistentID:(int64_t)d error:(id *)error
{
  identityCopy = identity;
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
  v9 = [[ML3Track alloc] initWithPersistentID:d inLibrary:self];
  v10 = [v9 valueForProperty:ML3TrackPropertyStoreBookmarkMetadataIdentifier];
  if ([v10 length])
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000C4074;
    v13[3] = &unk_1001DCEE8;
    v14 = identityCopy;
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
    *error = v19[5];
    v11 = *(v25 + 24);
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v11 & 1;
}

- (BOOL)updateWithEntity:(id)entity clientIdentity:(id)identity
{
  entityCopy = entity;
  identityCopy = identity;
  selfCopy = self;
  playbackPositionKey = [entityCopy playbackPositionKey];
  v10 = [playbackPositionKey length];

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
    v15 = identityCopy;
    v16 = entityCopy;
    v18 = selfCopy;
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
      *&buf[4] = selfCopy;
      *&buf[12] = 2114;
      *&buf[14] = entityCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@ Entity has no playbackPositionKey. entity=%{public}@", buf, 0x16u);
    }

    v11 = 0;
  }

  return v11 & 1;
}

- (BOOL)updateMusicLibraryWithClientIdentity:(id)identity applyUbiquitousBookmarkMetadataToTrackWithPersistentID:(int64_t)d
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000C4D0C;
  v8[3] = &unk_1001DCE48;
  identityCopy = identity;
  v9 = identityCopy;
  selfCopy = self;
  v11 = &v13;
  dCopy = d;
  [(ML3MusicLibrary *)self performDatabaseTransactionWithBlock:v8];
  LOBYTE(d) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return d;
}

- (BOOL)removeAllUbiquitousMetadataUsingClientIdentity:(id)identity error:(id *)error
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
  identityCopy = identity;
  v10 = identityCopy;
  v11 = &v19;
  v12 = &v13;
  [(ML3MusicLibrary *)self databaseConnectionAllowingWrites:1 withBlock:v9];
  if (v20[3])
  {
    v7 = 1;
  }

  else
  {
    *error = v14[5];
    v7 = *(v20 + 24);
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  return v7 & 1;
}

- (id)readUbiquitousDatabaseMetadataValuesForIdentifiers:(id)identifiers forDomain:(id)domain clientIdentity:(id)identity
{
  identifiersCopy = identifiers;
  domainCopy = domain;
  identityCopy = identity;
  if ([identifiersCopy count])
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
    v14 = identityCopy;
    v15 = identifiersCopy;
    v16 = domainCopy;
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

- (void)commitUniversalPlaybackPositions:(id)positions context:(id)context domain:(id)domain domainVersion:(id)version
{
  positionsCopy = positions;
  contextCopy = context;
  domainCopy = domain;
  versionCopy = version;
  v37 = contextCopy;
  transactionEntityRevision = [contextCopy transactionEntityRevision];
  v12 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Starting commit", buf, 0xCu);
  }

  selfCopy2 = self;

  v14 = +[NSMutableDictionary dictionary];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = positionsCopy;
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
        playbackPositionKey = [v20 playbackPositionKey];
        if (playbackPositionKey)
        {
          v22 = [ML3ComparisonPredicate predicateWithProperty:v18 equalToValue:playbackPositionKey];
          v23 = [ML3Track anyInLibrary:selfCopy2 predicate:v22];

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
  v47 = transactionEntityRevision;
  v27 = v25;
  v46 = v27;
  [(ML3MusicLibrary *)selfCopy2 performDatabaseTransactionWithBlock:v44];
  v28 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = selfCopy2;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ Done Updating Local Items", buf, 0xCu);
  }

  [v26 removeObjectsForKeys:v27];
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1000C5D90;
  v39[3] = &unk_1001DCDF8;
  v39[4] = selfCopy2;
  v40 = versionCopy;
  v41 = v26;
  v42 = domainCopy;
  v43 = transactionEntityRevision;
  v29 = domainCopy;
  v30 = v26;
  v31 = versionCopy;
  [(ML3MusicLibrary *)selfCopy2 performDatabaseTransactionWithBlock:v39];
  ubiquitousIdentifiersToSync = [v37 ubiquitousIdentifiersToSync];
  [(ML3MusicLibrary *)selfCopy2 _updateDatabaseByResetingSyncEntityRevisionForItemsWithIdentifiers:ubiquitousIdentifiersToSync];

  v33 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = selfCopy2;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ Done Updating ubiquitous_bookmarks table (all items)", buf, 0xCu);
  }
}

- (id)beginTransactionWithItemsToSyncWithDomain:(id)domain enumerationBlock:(id)block
{
  domainCopy = domain;
  blockCopy = block;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000C6300;
  v15[3] = &unk_1001DCD58;
  v15[4] = self;
  v8 = [[ICDPlaybackPositionDatabaseContext alloc] initWithLibrary:self];
  v16 = v8;
  v17 = domainCopy;
  v18 = blockCopy;
  v9 = blockCopy;
  v10 = domainCopy;
  selfCopy = self;
  [(ML3MusicLibrary *)selfCopy performReadOnlyDatabaseTransactionWithBlock:v15];
  v12 = v18;
  v13 = v8;

  return v8;
}

- (void)setDateLastSynced:(id)synced
{
  [synced timeIntervalSinceReferenceDate];
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

- (void)setLastSyncedEntityRevision:(unint64_t)revision
{
  v4 = [NSNumber numberWithUnsignedLongLong:revision];
  [(ML3MusicLibrary *)self setValue:v4 forDatabaseProperty:@"MLUbiquitousBookmarkEntityRevisionAnchor"];
}

@end