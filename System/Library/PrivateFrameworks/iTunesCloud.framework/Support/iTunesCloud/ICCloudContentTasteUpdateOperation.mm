@interface ICCloudContentTasteUpdateOperation
- (ICCloudContentTasteUpdateOperation)init;
- (ICCloudContentTasteUpdateOperation)initWithContentTasteUpdateItem:(id)item invalidateLocalCache:(BOOL)cache configuration:(id)configuration operationIdentifier:(id)identifier;
- (id)_contentTasteUpdateResponseWithServerResponse:(id)response expirationDate:(id)date revisionID:(unint64_t)d isCachedResponse:(BOOL)cachedResponse;
- (id)_prepareCachedResponseFromResponse:(id)response byAddingResponseTimeIntervalKey:(BOOL)key withResponseTimeInterval:(id)interval;
- (void)_getPBData:(id *)data includedContentTasteItemUpdates:(id *)updates fromContentTasteUpdateItems:(id)items;
- (void)_getStoreAdamIDLikedState:(id *)state playlistGlobalIDLikedState:(id *)likedState artistStoreAdamIDLikedState:(id *)dLikedState;
- (void)_prepareContentTasteResponse:(id *)response withContentTasteItems:(id *)items fromCachedContentTasteResponseItems:(id)responseItems includedContentTasteItems:(id)tasteItems;
- (void)_setCachedContentTasteResponse:(id)response;
- (void)_updateContentTasteForAlbumArtistItems:(id)items musicLibrary:(id)library mediaLibrary:(id)mediaLibrary withCompletion:(id)completion;
- (void)_updateContentTasteForGlobalPlaylists:(id)playlists musicLibrary:(id)library mediaLibrary:(id)mediaLibrary withCompletion:(id)completion;
- (void)_updateContentTasteForMediaItems:(id)items musicLibrary:(id)library mediaLibrary:(id)mediaLibrary withCompletion:(id)completion;
- (void)main;
@end

@implementation ICCloudContentTasteUpdateOperation

- (void)_updateContentTasteForGlobalPlaylists:(id)playlists musicLibrary:(id)library mediaLibrary:(id)mediaLibrary withCompletion:(id)completion
{
  playlistsCopy = playlists;
  libraryCopy = library;
  mediaLibraryCopy = mediaLibrary;
  completionCopy = completion;
  v14 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v61 = [playlistsCopy count];
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Updating content taste for %lu global playlists", buf, 0xCu);
  }

  if ([playlistsCopy count])
  {
    selfCopy = self;
    v38 = mediaLibraryCopy;
    allKeys = [playlistsCopy allKeys];
    v16 = COERCE_DOUBLE([allKeys mutableCopy]);

    v39 = libraryCopy;
    checkoutReaderConnection = [libraryCopy checkoutReaderConnection];
    +[NSDate timeIntervalSinceReferenceDate];
    v18 = v17;
    v40 = +[ML3DatabaseStatementRenderer defaultRenderer];
    v37 = +[NSMutableArray array];
    v42 = +[NSMutableArray array];
    v41 = +[NSMutableArray array];
    v19 = [*&v16 count];
    if (v19)
    {
      v20 = v19;
      do
      {
        v21 = playlistsCopy;
        if (v20 >= 0xFA)
        {
          *&v22 = 250;
        }

        else
        {
          v22 = *&v20;
        }

        v23 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v61 = v20;
          v62 = 2048;
          v63 = v22;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "processing playlists with pendingplayListCount: %lu, currentBatchCount: %lu", buf, 0x16u);
        }

        v24 = [v40 statementWithPrefix:@"SELECT container_pid inParameterCount:{liked_state, cloud_global_id FROM container WHERE cloud_global_id", *&v22}];
        v25 = [*&v16 subarrayWithRange:{objc_msgSend(*&v16, "count") - v20, *&v22}];
        v26 = [checkoutReaderConnection executeQuery:v24 withParameters:v25];

        v55[0] = _NSConcreteStackBlock;
        v55[1] = 3221225472;
        v55[2] = sub_100129A10;
        v55[3] = &unk_1001DF1B0;
        v56 = *&v16;
        playlistsCopy = v21;
        v57 = v21;
        v58 = v42;
        v59 = v41;
        [v26 enumerateRowsWithBlock:v55];
        v20 -= *&v22;
      }

      while (*&v20 != 0.0);
    }

    libraryCopy = v39;
    [v39 checkInDatabaseConnection:checkoutReaderConnection];
    if ([(ICCloudContentTasteUpdateOperation *)selfCopy isCancelled])
    {
      v27 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
      v28 = v37;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v61 = selfCopy;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}@ is cancelled", buf, 0xCu);
      }

      mediaLibraryCopy = v38;
      if (completionCopy)
      {
        (*(completionCopy + 2))(completionCopy, 0, 0, 0);
      }
    }

    else
    {
      v51[0] = _NSConcreteStackBlock;
      v51[1] = 3221225472;
      v51[2] = sub_100129C18;
      v51[3] = &unk_1001DF1D8;
      v29 = playlistsCopy;
      v52 = v29;
      v28 = v37;
      v30 = v37;
      v53 = v30;
      v54 = selfCopy;
      [*&v16 enumerateObjectsUsingBlock:v51];
      [*&v16 removeObjectsInArray:v30];
      v31 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = [*&v16 count];
        *buf = 134218242;
        v61 = v32;
        v62 = 2112;
        v63 = v16;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Playlist Import [Count:(%lu) - Ids:(%@)]", buf, 0x16u);
      }

      if ([*&v16 count])
      {
        v44[0] = _NSConcreteStackBlock;
        v44[1] = 3221225472;
        v44[2] = sub_100129D44;
        v44[3] = &unk_1001DF2F0;
        v49 = completionCopy;
        v44[4] = selfCopy;
        v45 = v29;
        v46 = v42;
        v47 = v41;
        v48 = *&v16;
        v50 = v18;
        mediaLibraryCopy = v38;
        [v38 addNonLibraryOwnedPlaylistsWithGlobalIDs:v48 completion:v44];
      }

      else
      {
        v33 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = [*&v16 count];
          +[NSDate timeIntervalSinceReferenceDate];
          *buf = 134218240;
          v61 = v34;
          v62 = 2048;
          v63 = v35 - v18;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Finished loading content taste for %lu playlists in %3f seconds", buf, 0x16u);
        }

        mediaLibraryCopy = v38;
        if (completionCopy)
        {
          (*(completionCopy + 2))(completionCopy, v42, v41, 0);
        }
      }
    }
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, 0);
  }
}

- (void)_updateContentTasteForMediaItems:(id)items musicLibrary:(id)library mediaLibrary:(id)mediaLibrary withCompletion:(id)completion
{
  itemsCopy = items;
  libraryCopy = library;
  mediaLibraryCopy = mediaLibrary;
  completionCopy = completion;
  v9 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = [itemsCopy count];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Updating content taste for %lu items", &buf, 0xCu);
  }

  if ([itemsCopy count])
  {
    checkoutReaderConnection = [libraryCopy checkoutReaderConnection];
    +[NSDate timeIntervalSinceReferenceDate];
    v11 = v10;
    allKeys = [itemsCopy allKeys];
    v13 = [allKeys mutableCopy];

    *&buf = 0;
    *(&buf + 1) = &buf;
    v98 = 0x3032000000;
    v99 = sub_10012ADE4;
    v100 = sub_10012ADF4;
    v101 = 0;
    v45 = +[NSMutableArray array];
    v57 = +[NSMutableArray array];
    v58 = +[NSMutableArray array];
    v51 = +[NSMutableArray array];
    v52 = +[NSMutableArray array];
    v59 = +[ML3DatabaseStatementRenderer defaultRenderer];
    v48 = [libraryCopy valueForDatabaseProperty:@"NonMediaItemStoreAdamIds"];
    if ([v48 length])
    {
      v14 = [v48 componentsSeparatedByString:@"$"];
      v15 = [v14 valueForKey:@"longLongValue"];
      v16 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = v15;

      [v13 removeObjectsInArray:*(*(&buf + 1) + 40)];
      v17 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [*(*(&buf + 1) + 40) count];
        v19 = *(*(&buf + 1) + 40);
        *v93 = 134218242;
        *&v93[4] = v18;
        *&v93[12] = 2112;
        *&v93[14] = v19;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Removing [Count:(%lu), items:(%@)] non media items from import list", v93, 0x16u);
      }
    }

    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    obj = [[NSArray alloc] initWithObjects:{@"store_item_id", @"subscription_store_item_id", 0}];
    v55 = [obj countByEnumeratingWithState:&v89 objects:v96 count:16];
    if (v55)
    {
      v54 = *v90;
      do
      {
        for (i = 0; i != v55; i = i + 1)
        {
          if (*v90 != v54)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v89 + 1) + 8 * i);
          v21 = [v13 count];
          for (j = [CFSTR(""SELECT item_pid liked_state];
          {
            if (v21 >= 0xFA)
            {
              v23 = 250;
            }

            else
            {
              v23 = v21;
            }

            v24 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *v93 = 134218498;
              *&v93[4] = v21;
              *&v93[12] = 2048;
              *&v93[14] = v23;
              *&v93[22] = 2112;
              v94 = v20;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "processing tracks with pendingItemCount: %lu, currentBatchCount: %lu for property: %@", v93, 0x20u);
            }

            v25 = [v59 statementWithPrefix:j inParameterCount:v23];
            v26 = [v13 subarrayWithRange:{objc_msgSend(v13, "count") - v21, v23}];
            v27 = [checkoutReaderConnection executeQuery:v25 withParameters:v26];
            v84[0] = _NSConcreteStackBlock;
            v84[1] = 3221225472;
            v84[2] = sub_10012ADFC;
            v84[3] = &unk_1001DF278;
            v84[4] = v20;
            v85 = v13;
            v86 = itemsCopy;
            v87 = v57;
            v88 = v58;
            [v27 enumerateRowsWithBlock:v84];
          }
        }

        v55 = [obj countByEnumeratingWithState:&v89 objects:v96 count:16];
      }

      while (v55);
    }

    for (k = [v13 count]; k; k -= v29)
    {
      if (k >= 0xFA)
      {
        v29 = 250;
      }

      else
      {
        v29 = k;
      }

      v30 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *v93 = 134218240;
        *&v93[4] = k;
        *&v93[12] = 2048;
        *&v93[14] = v29;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "processing albums with pendingItemCount: %lu, currentBatchCount: %lu", v93, 0x16u);
      }

      v31 = [v59 statementWithPrefix:@"SELECT album_pid inParameterCount:{liked_state, store_playlist_id, item_store.item_pid, item_store.store_saga_id, item_store.is_subscription FROM album JOIN item_store ON (album.representative_item_pid == item_store.ROWID) WHERE item_store.store_playlist_id", v29}];
      v32 = [v13 subarrayWithRange:{objc_msgSend(v13, "count") - k, v29}];
      v33 = [checkoutReaderConnection executeQuery:v31 withParameters:v32];

      v79[0] = _NSConcreteStackBlock;
      v79[1] = 3221225472;
      v79[2] = sub_10012B210;
      v79[3] = &unk_1001DF1B0;
      v80 = v13;
      v81 = itemsCopy;
      v82 = v51;
      v83 = v52;
      [v33 enumerateRowsWithBlock:v79];
    }

    [libraryCopy checkInDatabaseConnection:checkoutReaderConnection];
    if ([(ICCloudContentTasteUpdateOperation *)self isCancelled])
    {
      v34 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *v93 = 138543362;
        *&v93[4] = self;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ is cancelled", v93, 0xCu);
      }

      if (completionCopy)
      {
        (*(completionCopy + 2))(completionCopy, 0, 0, 0, 0, 0, 0);
      }
    }

    else
    {
      v75[0] = _NSConcreteStackBlock;
      v75[1] = 3221225472;
      v75[2] = sub_10012B554;
      v75[3] = &unk_1001DF1D8;
      v35 = itemsCopy;
      v76 = v35;
      v36 = v45;
      v77 = v36;
      selfCopy = self;
      [v13 enumerateObjectsUsingBlock:v75];
      [v13 removeObjectsInArray:v36];
      v37 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = [v58 count];
        v39 = [v52 count];
        v40 = [v13 count];
        *v93 = 134218754;
        *&v93[4] = v38;
        *&v93[12] = 2048;
        *&v93[14] = v39;
        *&v93[22] = 2048;
        v94 = v40;
        LOWORD(v95) = 2112;
        *(&v95 + 2) = v13;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "updated [tracks:(%lu) albums:(%lu)] new items to import[count:(%lu) items:(%@)]", v93, 0x2Au);
      }

      if ([v13 count])
      {
        v41 = objc_autoreleasePoolPush();
        *v93 = 0;
        *&v93[8] = v93;
        *&v93[16] = 0x3032000000;
        v94 = sub_10012ADE4;
        *&v95 = sub_10012ADF4;
        *(&v95 + 1) = 0;
        v62[0] = _NSConcreteStackBlock;
        v62[1] = 3221225472;
        v62[2] = sub_10012B680;
        v62[3] = &unk_1001DF2A0;
        v63 = v13;
        v71 = completionCopy;
        v64 = v57;
        v65 = v58;
        v66 = v51;
        v67 = v52;
        selfCopy2 = self;
        v69 = libraryCopy;
        v70 = v35;
        p_buf = &buf;
        v73 = v93;
        v74 = v11;
        [mediaLibraryCopy addStoreItemIDs:v63 andAddTracksToCloudLibrary:0 withCompletion:v62];

        _Block_object_dispose(v93, 8);
        objc_autoreleasePoolPop(v41);
      }

      else
      {
        v42 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v43 = [v13 count];
          +[NSDate timeIntervalSinceReferenceDate];
          *v93 = 134218240;
          *&v93[4] = v43;
          *&v93[12] = 2048;
          *&v93[14] = v44 - v11;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "Finished loading content taste for %lu items/albums in %3f seconds", v93, 0x16u);
        }

        if (completionCopy)
        {
          (*(completionCopy + 2))(completionCopy, v57, v58, v51, v52, 0, 0);
        }
      }
    }

    _Block_object_dispose(&buf, 8);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, 0, 0, 0, 0);
  }
}

- (void)_updateContentTasteForAlbumArtistItems:(id)items musicLibrary:(id)library mediaLibrary:(id)mediaLibrary withCompletion:(id)completion
{
  itemsCopy = items;
  libraryCopy = library;
  mediaLibraryCopy = mediaLibrary;
  completionCopy = completion;
  v10 = [itemsCopy count];
  v11 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Updating content taste for %lu album artists", &buf, 0xCu);
  }

  if (v10)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    v13 = v12;
    checkoutReaderConnection = [libraryCopy checkoutReaderConnection];
    allKeys = [itemsCopy allKeys];
    v15 = [allKeys mutableCopy];

    v44 = +[NSMutableArray array];
    v52 = +[NSMutableArray array];
    v51 = +[NSMutableArray array];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v82 = 0x3032000000;
    v83 = sub_10012ADE4;
    v84 = sub_10012ADF4;
    v85 = 0;
    v46 = [libraryCopy valueForDatabaseProperty:@"ArtistsMatchingDifferentStoreAdamIds"];
    if ([v46 length])
    {
      v16 = [NSSet alloc];
      v17 = objc_opt_class();
      v18 = [v16 initWithObjects:{v17, objc_opt_class(), 0}];
      v48 = MSVUnarchivedObjectOfClasses();

      if (_NSIsNSArray())
      {
        [v15 removeObjectsInArray:v48];
        v10 = [v15 count];
        v19 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v48 count];
          *v86 = 134218498;
          *&v86[4] = v20;
          *&v86[12] = 2112;
          *&v86[14] = v48;
          *&v86[22] = 1024;
          LODWORD(v87) = v10;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Removing [Count:(%lu), artists:(%@)] mapped to different store_ids, pendingItemsCount=%d", v86, 0x1Cu);
        }

        goto LABEL_13;
      }

      [libraryCopy databaseConnectionAllowingWrites:1 withBlock:&stru_1001DF188];
    }

    v48 = 0;
LABEL_13:
    if (v10 >= 1)
    {
      do
      {
        if (v10 >= 0xFA)
        {
          v21 = 250;
        }

        else
        {
          v21 = v10;
        }

        v22 = +[ML3DatabaseStatementRenderer defaultRenderer];
        v23 = [v22 statementWithPrefix:@"SELECT album_artist_pid inParameterCount:{liked_state, cloud_universal_library_id, store_id FROM album_artist WHERE store_id ", v21}];
        v24 = [v15 subarrayWithRange:{objc_msgSend(v15, "count") - v10, v21}];
        v25 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *v86 = 134218240;
          *&v86[4] = v10;
          *&v86[12] = 2048;
          *&v86[14] = v21;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "processing album artists with pendingItemCount: %lu, currentBatchCount: %lu", v86, 0x16u);
        }

        v26 = [checkoutReaderConnection executeQuery:v23 withParameters:v24];
        v72[0] = _NSConcreteStackBlock;
        v72[1] = 3221225472;
        v72[2] = sub_10012C974;
        v72[3] = &unk_1001DF1B0;
        v73 = v15;
        v74 = itemsCopy;
        v75 = v52;
        v76 = v51;
        [v26 enumerateRowsWithBlock:v72];

        v27 = v10 <= v21;
        v10 -= v21;
      }

      while (!v27);
    }

    [libraryCopy checkInDatabaseConnection:checkoutReaderConnection];
    if ([(ICCloudContentTasteUpdateOperation *)self isCancelled])
    {
      v28 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *v86 = 138543362;
        *&v86[4] = self;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ is cancelled", v86, 0xCu);
      }

      if (completionCopy)
      {
        (*(completionCopy + 2))(completionCopy, 0, 0, 0, 0);
      }
    }

    else
    {
      v68[0] = _NSConcreteStackBlock;
      v68[1] = 3221225472;
      v68[2] = sub_10012CC30;
      v68[3] = &unk_1001DF1D8;
      v29 = itemsCopy;
      v69 = v29;
      v30 = v44;
      v70 = v30;
      selfCopy = self;
      [v15 enumerateObjectsUsingBlock:v68];
      [v15 removeObjectsInArray:v30];
      v31 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = [v15 count];
        *v86 = 134218242;
        *&v86[4] = v32;
        *&v86[12] = 2112;
        *&v86[14] = v15;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Album Artist Import [Count:(%lu) - Ids:(%@)]", v86, 0x16u);
      }

      if ([v15 count])
      {
        v33 = objc_autoreleasePoolPush();
        +[NSMutableArray array];
        v66[0] = _NSConcreteStackBlock;
        v66[1] = 3221225472;
        v66[2] = sub_10012CD5C;
        v34 = v66[3] = &unk_1001DF200;
        v67 = v34;
        [v15 enumerateObjectsUsingBlock:v66];
        v77 = 0;
        v78 = &v77;
        v79 = 0x2050000000;
        v35 = qword_100213E88;
        v80 = qword_100213E88;
        if (!qword_100213E88)
        {
          *v86 = _NSConcreteStackBlock;
          *&v86[8] = 3221225472;
          *&v86[16] = sub_10012CE78;
          v87 = &unk_1001DF318;
          v88 = &v77;
          sub_10012CE78(v86);
          v35 = v78[3];
        }

        v36 = v35;
        _Block_object_dispose(&v77, 8);
        v37 = [[v35 alloc] initUsingLocalDeviceLibraryDestinationWithImportElements:v34 referralObject:0 usingLocalLibraryDestination:0 usingCloudLibraryDestination:0];
        v54[0] = _NSConcreteStackBlock;
        v54[1] = 3221225472;
        v54[2] = sub_10012CF40;
        v54[3] = &unk_1001DF250;
        v38 = v34;
        v55 = v38;
        v63 = completionCopy;
        selfCopy2 = self;
        v57 = libraryCopy;
        v58 = v29;
        v59 = v52;
        v60 = v51;
        v61 = v15;
        v65 = v13;
        v62 = v48;
        p_buf = &buf;
        [mediaLibraryCopy performStoreAlbumArtistLibraryImport:v37 withCompletion:v54];

        objc_autoreleasePoolPop(v33);
      }

      else
      {
        v39 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = [v15 count];
          +[NSDate timeIntervalSinceReferenceDate];
          *v86 = 134218240;
          *&v86[4] = v40;
          *&v86[12] = 2048;
          *&v86[14] = v41 - v13;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Finished loading content taste for %lu album artists in %3f seconds", v86, 0x16u);
        }

        [v15 addObjectsFromArray:v48];
        if ([v15 count])
        {
          v42 = MSVArchivedDataWithRootObject();
          v43 = *(*(&buf + 1) + 40);
          *(*(&buf + 1) + 40) = v42;
        }

        if (completionCopy)
        {
          (*(completionCopy + 2))(completionCopy, v52, v51, *(*(&buf + 1) + 40), 0);
        }
      }
    }

    _Block_object_dispose(&buf, 8);
    goto LABEL_40;
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, 0, 0);
  }

LABEL_40:
}

- (void)_prepareContentTasteResponse:(id *)response withContentTasteItems:(id *)items fromCachedContentTasteResponseItems:(id)responseItems includedContentTasteItems:(id)tasteItems
{
  responseItemsCopy = responseItems;
  tasteItemsCopy = tasteItems;
  v9 = objc_alloc_init(NSMutableArray);
  v10 = objc_alloc_init(NSMutableArray);
  v11 = objc_alloc_init(NSMutableSet);
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_10012DAC0;
  v43[3] = &unk_1001DF148;
  v30 = objc_alloc_init(NSMutableSet);
  v44 = v30;
  v29 = v11;
  v45 = v29;
  v12 = objc_retainBlock(v43);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v13 = tasteItemsCopy;
  v14 = [v13 countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v40;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v40 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v39 + 1) + 8 * i);
        if ((v12[2])(v12, v18))
        {
          [v9 addObject:{v18, v29, v30}];
          [v10 addObject:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v15);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v19 = responseItemsCopy;
  v20 = [v19 countByEnumeratingWithState:&v35 objects:v46 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v36;
    do
    {
      for (j = 0; j != v21; j = j + 1)
      {
        if (*v36 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v35 + 1) + 8 * j);
        if ((v12[2])(v12, v24))
        {
          [v9 addObject:v24];
          [v10 addObject:v24];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v35 objects:v46 count:16];
    }

    while (v21);
  }

  v34 = 0;
  [(ICCloudContentTasteUpdateOperation *)self _getPBData:&v34 includedContentTasteItemUpdates:0 fromContentTasteUpdateItems:v10];
  v25 = v34;
  v26 = v25;
  if (response)
  {
    v27 = v25;
    *response = v26;
  }

  if (items)
  {
    v28 = v10;
    *items = v10;
  }
}

- (id)_prepareCachedResponseFromResponse:(id)response byAddingResponseTimeIntervalKey:(BOOL)key withResponseTimeInterval:(id)interval
{
  keyCopy = key;
  intervalCopy = interval;
  responseCopy = response;
  userInfo = [responseCopy userInfo];
  v10 = [userInfo mutableCopy];

  if (keyCopy)
  {
    if (intervalCopy)
    {
      if (!v10)
      {
        v10 = [[NSMutableDictionary alloc] initWithCapacity:1];
      }

      [v10 setObject:intervalCopy forKey:@"_MediaContentTasteUpdateResponseTimeIntervalSinceReferenceDate"];
    }
  }

  else
  {
    [v10 removeObjectForKey:@"_MediaContentTasteUpdateResponseTimeIntervalSinceReferenceDate"];
    if (![v10 count])
    {

      v10 = 0;
    }
  }

  v11 = [NSCachedURLResponse alloc];
  response = [responseCopy response];
  data = [responseCopy data];
  storagePolicy = [responseCopy storagePolicy];

  v15 = [v11 initWithResponse:response data:data userInfo:v10 storagePolicy:storagePolicy];

  return v15;
}

- (void)_setCachedContentTasteResponse:(id)response
{
  responseCopy = response;
  v5 = +[ICCloudContentTasteResponseCacheManager sharedCloudContentTasteResponseCacheManager];
  [v5 setCachedContentTasteUpdateResponse:responseCopy forConnectionConfiguration:self->_configuration];
}

- (void)_getStoreAdamIDLikedState:(id *)state playlistGlobalIDLikedState:(id *)likedState artistStoreAdamIDLikedState:(id *)dLikedState
{
  v31 = +[NSMutableDictionary dictionary];
  v29 = +[NSMutableDictionary dictionary];
  v30 = +[NSMutableDictionary dictionary];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  selfCopy = self;
  contentTasteItems = [(ICCloudContentTasteUpdateResponse *)self->_contentTasteUpdateResponse contentTasteItems];
  v7 = [contentTasteItems countByEnumeratingWithState:&v32 objects:v43 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v33;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(contentTasteItems);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        storeID = [v11 storeID];
        contentTasteType = [v11 contentTasteType];
        v14 = contentTasteType;
        v15 = 1;
        if (contentTasteType == 1)
        {
          v15 = 2;
        }

        if (contentTasteType == 2)
        {
          v16 = 3;
        }

        else
        {
          v16 = v15;
        }

        updateActionTimeStamp = [v11 updateActionTimeStamp];
        if (!storeID)
        {
          globalPlaylistID = [v11 globalPlaylistID];
          if (![globalPlaylistID length])
          {
            goto LABEL_22;
          }

          v19 = [NSNumber numberWithInteger:v16];
          v36[0] = v19;
          v36[1] = updateActionTimeStamp;
          v20 = [NSArray arrayWithObjects:v36 count:2];
          v21 = v30;
          v22 = v20;
          v23 = globalPlaylistID;
          goto LABEL_21;
        }

        if ([v11 contentTasteItem] != 8)
        {
          globalPlaylistID = [NSNumber numberWithInteger:v16];
          v37[0] = globalPlaylistID;
          v37[1] = updateActionTimeStamp;
          v19 = [NSArray arrayWithObjects:v37 count:2];
          v20 = [NSNumber numberWithLongLong:storeID];
          v21 = v31;
LABEL_20:
          v22 = v19;
          v23 = v20;
LABEL_21:
          [v21 setObject:v22 forKey:v23];

          goto LABEL_22;
        }

        if (v14 != 1)
        {
          globalPlaylistID = [NSNumber numberWithInteger:v16];
          v38[0] = globalPlaylistID;
          v38[1] = updateActionTimeStamp;
          v19 = [NSArray arrayWithObjects:v38 count:2];
          v20 = [NSNumber numberWithLongLong:storeID];
          v21 = v29;
          goto LABEL_20;
        }

        globalPlaylistID = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
        if (os_log_type_enabled(globalPlaylistID, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v40 = selfCopy;
          v41 = 2114;
          v42 = v11;
          _os_log_impl(&_mh_execute_header, globalPlaylistID, OS_LOG_TYPE_DEFAULT, "%{public}@ Skip setting tasteType for content taste item=%{public}@", buf, 0x16u);
        }

LABEL_22:
      }

      v8 = [contentTasteItems countByEnumeratingWithState:&v32 objects:v43 count:16];
    }

    while (v8);
  }

  if (state)
  {
    *state = v31;
  }

  if (likedState)
  {
    *likedState = v30;
  }

  if (dLikedState)
  {
    v24 = v29;
    *dLikedState = v29;
  }
}

- (id)_contentTasteUpdateResponseWithServerResponse:(id)response expirationDate:(id)date revisionID:(unint64_t)d isCachedResponse:(BOOL)cachedResponse
{
  cachedResponseCopy = cachedResponse;
  responseCopy = response;
  dateCopy = date;
  v9 = [[ICCloudContentTastePBFusePreferences alloc] initWithData:responseCopy];
  dCopy = d;
  v35 = v9;
  if (!v9)
  {
    v11 = 0;
LABEL_6:
    v12 = 0;
    goto LABEL_7;
  }

  v10 = v9->_preferences;
  v11 = v10;
  if (!v10 || ![(NSMutableArray *)v10 count])
  {
    goto LABEL_6;
  }

  v12 = [NSMutableArray arrayWithCapacity:[(NSMutableArray *)v11 count]];
LABEL_7:
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v11;
  v13 = [(NSMutableArray *)obj countByEnumeratingWithState:&v40 objects:v54 count:16];
  if (!v13)
  {
    goto LABEL_46;
  }

  v14 = v13;
  v15 = *v41;
  do
  {
    v16 = 0;
    do
    {
      if (*v41 != v15)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v40 + 1) + 8 * v16);
      v18 = objc_alloc_init(ICCloudContentTasteUpdateItem);
      v19 = v18;
      if (v17)
      {
        [(ICCloudContentTasteUpdateItem *)v18 setStoreID:*(v17 + 16)];
        v20 = *(v17 + 40);
        if (v20 == 2)
        {
          v21 = 2;
        }

        else
        {
          v21 = v20 == 1;
        }

        [(ICCloudContentTasteUpdateItem *)v19 setContentTasteType:v21];
        if ((*(v17 + 48) & 8) != 0)
        {
          v23 = *(v17 + 44);
          v24 = 4;
          if (v23 != 46)
          {
            v24 = 0;
          }

          if (v23 == 20)
          {
            v24 = 8;
          }

          if (v23 == 5)
          {
            v24 = 2;
          }

          v25 = 3;
          if (v23 != 2)
          {
            v25 = 0;
          }

          if (v23 == 1)
          {
            v25 = 1;
          }

          if (v23 <= 4)
          {
            v22 = v25;
          }

          else
          {
            v22 = v24;
          }
        }

        else
        {
          v22 = 0;
        }

        [(ICCloudContentTasteUpdateItem *)v19 setContentTasteItem:v22];
        v26 = *(v17 + 8);
      }

      else
      {
        [(ICCloudContentTasteUpdateItem *)v18 setStoreID:0];
        [(ICCloudContentTasteUpdateItem *)v19 setContentTasteType:0];
        [(ICCloudContentTasteUpdateItem *)v19 setContentTasteItem:0];
        v26 = 0.0;
      }

      v27 = [NSDate dateWithTimeIntervalSince1970:(v26 / 1000.0)];
      [(ICCloudContentTasteUpdateItem *)v19 setUpdateActionTimeStamp:v27];

      if ([(ICCloudContentTasteUpdateItem *)v19 contentTasteItem]== 4)
      {
        if (v17)
        {
          v28 = *(v17 + 32);
        }

        else
        {
          v28 = 0;
        }

LABEL_35:
        v29 = v28;
        [(ICCloudContentTasteUpdateItem *)v19 setGlobalPlaylistID:v29];

        goto LABEL_37;
      }

      if (![(ICCloudContentTasteUpdateItem *)v19 contentTasteItem]&& ![(ICCloudContentTasteUpdateItem *)v19 storeID])
      {
        if (v17)
        {
          v28 = *(v17 + 32);
          if (v28)
          {
            goto LABEL_35;
          }
        }
      }

LABEL_37:
      [v12 addObject:v19];

      v16 = v16 + 1;
    }

    while (v14 != v16);
    v30 = [(NSMutableArray *)obj countByEnumeratingWithState:&v40 objects:v54 count:16];
    v14 = v30;
  }

  while (v30);
LABEL_46:

  v31 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste_Oversize");
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544386;
    selfCopy = self;
    v46 = 2114;
    v47 = v12;
    v48 = 2114;
    v49 = dateCopy;
    v50 = 2048;
    v51 = dCopy;
    v52 = 1024;
    v53 = cachedResponseCopy;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ prepared %{public}@ content taste update items with expiration date %{public}@, revisionID %llu, isCached %d from server response", buf, 0x30u);
  }

  v32 = objc_alloc_init(ICCloudContentTasteUpdateResponse);
  [(ICCloudContentTasteUpdateResponse *)v32 setContentTasteItems:v12];
  [(ICCloudContentTasteUpdateResponse *)v32 setExpirationDate:dateCopy];
  [(ICCloudContentTasteUpdateResponse *)v32 setCachedResponse:cachedResponseCopy];
  [(ICCloudContentTasteUpdateResponse *)v32 setResponseRevisionID:dCopy];

  return v32;
}

- (void)_getPBData:(id *)data includedContentTasteItemUpdates:(id *)updates fromContentTasteUpdateItems:(id)items
{
  dataCopy = data;
  itemsCopy = items;
  v7 = itemsCopy;
  updatesCopy = updates;
  if (itemsCopy && [itemsCopy count])
  {
    if (updates)
    {
      v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v7 count]);
    }

    else
    {
      v8 = 0;
    }

    v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v7 count]);
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v7;
  v10 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v38;
    do
    {
      v13 = 0;
      do
      {
        if (*v38 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v37 + 1) + 8 * v13);
        v15 = objc_alloc_init(ICCloudContentTastePBFuseItemPreference);
        storeID = [v14 storeID];
        if (v15)
        {
          *&v15->_has |= 2u;
          v15->_adamId = storeID;
          globalPlaylistID = [v14 globalPlaylistID];
          objc_storeStrong(&v15->_externalId, globalPlaylistID);

          contentTasteType = [v14 contentTasteType];
          v19 = contentTasteType == 1;
          if (contentTasteType == 2)
          {
            v19 = 2;
          }

          v15->_preference = v19;
          *&v15->_has |= 8u;
          v15->_preferenceType = 0;
        }

        else
        {
          [v14 globalPlaylistID];

          [v14 contentTasteType];
        }

        updateActionTimeStamp = [v14 updateActionTimeStamp];
        [updateActionTimeStamp timeIntervalSinceNow];
        v22 = v21;

        if (v15)
        {
          *&v15->_has |= 4u;
          v15->_createdOffsetMillis = 1000 * fmax(-v22, 0.0);
        }

        updateActionTimeStamp2 = [v14 updateActionTimeStamp];
        [updateActionTimeStamp2 timeIntervalSince1970];
        v25 = v24;

        if (v15)
        {
          *&v15->_has |= 1u;
          v15->_actionTimestampMillis = (v25 * 1000.0);
        }

        v26 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          if (v15)
          {
            actionTimestampMillis = v15->_actionTimestampMillis;
          }

          else
          {
            actionTimestampMillis = 0;
          }

          *buf = 138543874;
          selfCopy = self;
          v43 = 2114;
          v44 = v14;
          v45 = 2048;
          v46 = actionTimestampMillis;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ Adding content taste item=%{public}@. actionTimestampMillis=%lld", buf, 0x20u);
        }

        [v9 addObject:v15];
        [v8 addObject:v14];

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v28 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
      v11 = v28;
    }

    while (v28);
  }

  v29 = dataCopy;
  if (dataCopy)
  {
    if (![v9 count])
    {
      *dataCopy = 0;
      if (!updatesCopy)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

    v30 = objc_alloc_init(ICCloudContentTastePBFusePreferences);
    v31 = v30;
    if (v30)
    {
      objc_storeStrong(&v30->_preferences, v9);
    }

    *v29 = [(ICCloudContentTastePBFusePreferences *)v31 data];
  }

  if (updatesCopy)
  {
LABEL_36:
    v32 = v8;
    *updatesCopy = v8;
  }

LABEL_37:
}

- (void)main
{
  if ([(ICCloudContentTasteUpdateOperation *)self isCancelled])
  {
    v3 = [NSError errorWithDomain:ICErrorDomain code:-7004 userInfo:0];
    error = self->_error;
    self->_error = v3;

    _objc_release_x1(v3, error);
  }

  else
  {
    userIdentity = [(ICConnectionConfiguration *)self->_configuration userIdentity];
    v6 = [ICStoreRequestContext alloc];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10012ECA0;
    v23[3] = &unk_1001DEFB8;
    v7 = userIdentity;
    v24 = v7;
    v8 = [v6 initWithBlock:v23];
    v9 = [ICPrivacyInfo sharedPrivacyInfoForUserIdentity:v7];
    privacyAcknowledgementRequiredForMusic = [v9 privacyAcknowledgementRequiredForMusic];

    if (privacyAcknowledgementRequiredForMusic)
    {
      v11 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy2 = self;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Skipping content tast update because privacy acknowledgement is required", buf, 0xCu);
      }

      v12 = [NSError errorWithDomain:ICErrorDomain code:-7007 userInfo:0];
      v13 = self->_error;
      self->_error = v12;
    }

    else
    {
      +[NSDate timeIntervalSinceReferenceDate];
      v15 = v14;
      v16 = dispatch_semaphore_create(0);
      v17 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy2 = self;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ Starting content taste update for media entities", buf, 0xCu);
      }

      v18 = +[ICURLBagProvider sharedBagProvider];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10012ED14;
      v19[3] = &unk_1001DF120;
      v19[4] = self;
      v22 = v15;
      v20 = v8;
      v21 = v16;
      v13 = v16;
      [v18 getBagForRequestContext:v20 withCompletionHandler:v19];

      dispatch_semaphore_wait(&v13->super, 0xFFFFFFFFFFFFFFFFLL);
    }
  }
}

- (ICCloudContentTasteUpdateOperation)initWithContentTasteUpdateItem:(id)item invalidateLocalCache:(BOOL)cache configuration:(id)configuration operationIdentifier:(id)identifier
{
  itemCopy = item;
  configurationCopy = configuration;
  identifierCopy = identifier;
  v19.receiver = self;
  v19.super_class = ICCloudContentTasteUpdateOperation;
  v14 = [(ICCloudContentTasteUpdateOperation *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_contentTasteItem, item);
    v15->_invalidateLocalCache = cache;
    objc_storeStrong(&v15->_configuration, configuration);
    objc_storeStrong(&v15->_operationIdentifier, identifier);
    v16 = objc_alloc_init(NSOperationQueue);
    operationQueue = v15->_operationQueue;
    v15->_operationQueue = v16;

    [(NSOperationQueue *)v15->_operationQueue setName:@"com.apple.iTunesCloud.ICUpdateContentTasteOperation.operationQueue"];
    [(NSOperationQueue *)v15->_operationQueue setMaxConcurrentOperationCount:3];
  }

  return v15;
}

- (ICCloudContentTasteUpdateOperation)init
{
  [NSException raise:NSInvalidArgumentException format:@"-init is not supported, use initWithContentTasteUpdateItems:invalidateLocalCache:dsid"];

  return 0;
}

@end