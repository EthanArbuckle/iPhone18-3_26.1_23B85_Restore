void sub_1000C656C(uint64_t a1, uint64_t a2)
{
  v7 = [[ICPlaybackPositionEntity alloc] initWithDomain:*(a1 + 32)];
  v4 = [[ML3Track alloc] initWithPersistentID:a2 inLibrary:*(a1 + 40)];
  v5 = [v4 valueForProperty:ML3TrackPropertyStoreBookmarkMetadataIdentifier];
  if ([v5 length])
  {
    [*(a1 + 40) _populateMetadataValues:v7 fromDataSourceTrack:v4];
    v6 = [*(a1 + 48) ubiquitousIdentifiersToSync];
    [v6 addObject:v5];
  }

  (*(*(a1 + 56) + 16))();
}

void sub_1000C6650(uint64_t a1, void *a2)
{
  v5 = [a2 stringForColumnIndex:0];
  v3 = [*(a1 + 32) _kvsEntityWithKVSKey:v5 domain:*(a1 + 40)];
  (*(*(a1 + 56) + 16))();
  v4 = [*(a1 + 48) ubiquitousIdentifiersToSync];
  [v4 addObject:v5];
}

void sub_1000C6C24(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x1000C6C30);
}

void sub_1000C6E70(uint64_t a1)
{
  v2 = [*(a1 + 32) _mediaContentTasteCacheFilePathForAccount:*(a1 + 40)];
  if (v2)
  {
    v3 = +[NSFileManager defaultManager];
    v8 = 0;
    v4 = [v3 removeItemAtPath:v2 error:&v8];
    v5 = v8;

    v6 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 138544130;
      v10 = v7;
      v11 = 2114;
      v12 = v2;
      v13 = 1024;
      v14 = v4;
      v15 = 2114;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Cached content taste response at %{public}@ was deleted with status=%{BOOL}u, error=%{public}@ ", buf, 0x26u);
    }
  }
}

void sub_1000C7020(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = *(*(a1 + 32) + 16);
  v27 = 0;
  v4 = [v2 contentsOfDirectoryAtPath:v3 error:&v27];
  v5 = v27;

  v6 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = [v4 count];
    *buf = 138543874;
    v30 = v7;
    v31 = 2048;
    v32 = v8;
    v33 = 2114;
    v34 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Got %lu content taste archives to remove with error %{public}@", buf, 0x20u);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v4;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v24;
    *&v11 = 138543874;
    v21 = v11;
    do
    {
      v14 = 0;
      v15 = v5;
      do
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v16 = [*(*(a1 + 32) + 16) stringByAppendingPathComponent:{*(*(&v23 + 1) + 8 * v14), v21}];
        v17 = +[NSFileManager defaultManager];
        v22 = v15;
        v18 = [v17 removeItemAtPath:v16 error:&v22];
        v5 = v22;

        if ((v18 & 1) == 0)
        {
          v19 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v20 = *(a1 + 32);
            *buf = v21;
            v30 = v20;
            v31 = 2114;
            v32 = v5;
            v33 = 2114;
            v34 = v16;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}@ Error %{public}@ removing archive at %{public}@", buf, 0x20u);
          }
        }

        v14 = v14 + 1;
        v15 = v5;
      }

      while (v12 != v14);
      v12 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v12);
  }
}

void sub_1000C73BC(uint64_t a1)
{
  v2 = [*(a1 + 32) _mediaContentTasteCacheFilePathForAccount:*(a1 + 40)];
  if (v2)
  {
    v3 = [*(a1 + 32) _prepareArchiveWithContentTasteReponse:*(a1 + 48)];
    v4 = v3;
    if (v3 && [v3 length])
    {
      v5 = +[NSFileManager defaultManager];
      v6 = *(*(a1 + 32) + 16);
      v14 = 0;
      v7 = [v5 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:&v14];
      v8 = v14;
      *(*(*(a1 + 56) + 8) + 24) = v7;

      if (*(*(*(a1 + 56) + 8) + 24) == 1)
      {
        *(*(*(a1 + 56) + 8) + 24) = [v4 writeToFile:v2 atomically:1];
        v9 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(a1 + 32);
          v11 = [*(a1 + 40) userIdentity];
          v12 = *(*(*(a1 + 56) + 8) + 24);
          *buf = 138544130;
          v16 = v10;
          v17 = 2114;
          v18 = v11;
          v19 = 2114;
          v20 = v2;
          v21 = 1024;
          v22 = v12;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ content taste response for %{public}@ was written to %{public}@ with status=%{BOOL}u", buf, 0x26u);
        }
      }

      else
      {
        v9 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v13 = *(a1 + 32);
          *buf = 138543618;
          v16 = v13;
          v17 = 2114;
          v18 = v8;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Error %{public}@ creating content taste update directory", buf, 0x16u);
        }
      }
    }

    else
    {
      v8 = +[NSFileManager defaultManager];
      [v8 removeItemAtPath:v2 error:0];
    }
  }
}

uint64_t sub_1000C772C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000C7744(uint64_t a1)
{
  v2 = [*(a1 + 32) _mediaContentTasteCacheFilePathForAccount:*(a1 + 40)];
  if (v2)
  {
    v3 = [*(a1 + 32) _prepareCachedResponseFromArchiveAtPath:v2];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  return _objc_release_x1();
}

void sub_1000C78E4(id a1)
{
  qword_100213CA8 = [[ICCloudContentTasteResponseCacheManager alloc] _init];

  _objc_release_x1();
}

void sub_1000C7F50(uint64_t a1, uint64_t a2, id *a3)
{
  v18 = *a3;
  if ([a3[1] longLongValue] < 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a3[1];
  }

  v7 = v6;
  if ([a3[2] longLongValue] < 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = a3[2];
  }

  v9 = v8;
  [a3[3] doubleValue];
  v10 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  v11 = [v10 earlierDate:*(a1 + 32)];

  if (v11 == v10)
  {

    v10 = 0;
  }

  [a3[4] doubleValue];
  v12 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  v13 = [v12 earlierDate:*(a1 + 32)];

  if (v13 == v12)
  {

    v12 = 0;
  }

  if (v7 || v9 || v10 || v12)
  {
    v14 = [NSMutableDictionary dictionaryWithCapacity:4];
    v15 = v14;
    if (v7)
    {
      [v14 setObject:v7 forKey:@"daap.incrementplaycount"];
    }

    if (v9)
    {
      [v15 setObject:v9 forKey:@"daap.incrementskipcount"];
    }

    if (v10)
    {
      [v15 setObject:v10 forKey:ML3TrackPropertyDatePlayed];
    }

    if (v12)
    {
      [v15 setObject:v12 forKey:ML3TrackPropertyDateSkipped];
    }

    [*(a1 + 40) addObject:v18];
    [*(a1 + 48) addObject:v15];
    v16 = *(a1 + 56);
    v17 = [NSNumber numberWithLongLong:a2];
    [v16 addObject:v17];
  }
}

void sub_1000C816C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    v13 = [v5 responseCode];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Bulk set item properties response code: %lu", &v12, 0xCu);
  }

  if (v6)
  {
    v8 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = 138543362;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Bulk set item properties response with error: %{public}@", &v12, 0xCu);
    }
  }

  v9 = *(a1 + 32);
  v10 = [v5 responseCode];
  if (v10 > 399)
  {
    if (v10 != 404 && v10 != 400)
    {
      goto LABEL_14;
    }

    v11 = 3;
  }

  else
  {
    v11 = 1;
    if (v10 != 200 && v10 != 204)
    {
LABEL_14:
      v11 = 2;
    }
  }

  [v9 setStatus:v11];
  dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t sub_1000C8300(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [ML3DatabasePrivacyContext alloc];
  v5 = [*(a1 + 32) clientIdentity];
  v6 = [v4 initWithClientIdentity:v5];
  v17 = v3;
  [v3 setPrivacyContext:v6];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = *(a1 + 40);
  v7 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    v10 = ML3TrackPropertyPlayCountRecent;
    v11 = ML3TrackPropertySkipCountRecent;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v13 = [*(*(&v19 + 1) + 8 * i) longLongValue];
        v14 = [ML3Track newWithPersistentID:v13 inLibrary:*(a1 + 48)];
        [v14 setValue:&off_1001ED720 forProperty:v10];
        [v14 setValue:&off_1001ED720 forProperty:v11];
        v15 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v24 = v13;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Play data update succeeded for track with persistent ID: %lld", buf, 0xCu);
        }
      }

      v8 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v8);
  }

  return 1;
}

uint64_t sub_1000C8C30(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v26[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26[0] & 0x7F) << v5;
        if ((v26[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v23 = objc_alloc_init(AMPMusicCatalogContent);
        [a1 addCatalogContent:v23];
        v26[0] = 0;
        v26[1] = 0;
        if (!PBReaderPlaceMark() || !sub_1000F12DC(v23, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 2)
      {
        v21 = PBReaderReadString();
        v22 = *(a1 + 24);
        *(a1 + 24) = v21;
      }

      else if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          LOBYTE(v26[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v26[0] & 0x7F) << v14;
          if ((v26[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_38;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_38:
        *(a1 + 8) = v20;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1000C9E60(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      *buf = 138543874;
      v66 = v8;
      v67 = 2114;
      v68 = v9;
      v69 = 2114;
      v70 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@ Unable to get message entries for identifier %{public}@. err=%{public}@", buf, 0x20u);
    }

    goto LABEL_30;
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v10 = [v5 countByEnumeratingWithState:&v60 objects:v64 count:16];
  if (v10)
  {
    v11 = v10;
    v51 = a1;
    v12 = 0;
    v54 = v5;
    v55 = 0;
    v13 = *v61;
    v52 = *v61;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v61 != v13)
        {
          objc_enumerationMutation(v5);
        }

        v15 = *(*(&v60 + 1) + 8 * i);
        v16 = [v15 applicationMessage];
        v17 = [v16 identifier];
        v18 = [v17 isEqualToString:@"non-subscriber-notification-content-opt-in"];

        if (v18)
        {
          v19 = v15;

          v12 = v19;
        }

        v20 = [v16 targets];
        v21 = [v20 containsObject:@"Library_Recommendation"];

        if (v21)
        {
          if (!v55 || (v22 = [v16 priority], -[NSObject applicationMessage](v55, "applicationMessage"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "priority"), v23, v22 > v24))
          {
            v25 = v15;

            v55 = v25;
          }

          v13 = v52;
          v5 = v54;
        }
      }

      v11 = [v5 countByEnumeratingWithState:&v60 objects:v64 count:16];
    }

    while (v11);
    v7 = v55;
    if (v55)
    {
      v6 = 0;
      if (v12)
      {
        v26 = [v55 applicationMessage];
        v27 = [v26 contentPages];
        v28 = [v27 firstObject];

        v29 = [v28 contentParameters];
        [v29 firstObject];
        v31 = v30 = v12;

        v32 = [v30 applicationMessage];
        v33 = [v32 contentPages];
        v34 = [v33 lastObject];

        v35 = [v34 contentParameters];
        LOBYTE(v33) = [v35 containsObject:v31];

        if ((v33 & 1) == 0)
        {
          [v30 applicationMessage];
          v36 = v53 = v28;
          v37 = [v55 applicationMessage];
          [v37 startDate];
          [v36 setStartDate:?];

          v38 = [v55 applicationMessage];
          [v38 endDate];
          [v36 setEndDate:?];

          v39 = [v36 contentPages];
          [v39 removeLastObject];

          v40 = *(v51 + 32);
          v41 = [v55 applicationMessage];
          v42 = [v41 contentPages];
          v43 = [v42 firstObject];
          v44 = [v40 _optInMessageContentForPriorityMessageContent:v43];
          [v36 addContentPages:v44];

          v45 = +[ICInAppMessageManager sharedManager];
          v58[0] = _NSConcreteStackBlock;
          v58[1] = 3221225472;
          v58[2] = sub_1000CA3F0;
          v58[3] = &unk_1001DFB10;
          v58[4] = *(v51 + 32);
          v59 = v30;
          [v45 updateMessageEntry:v59 completion:v58];

          v28 = v53;
          v7 = v55;
        }
      }

      else
      {
        v48 = *(v51 + 32);
        v49 = [v55 applicationMessage];
        v56[0] = _NSConcreteStackBlock;
        v56[1] = 3221225472;
        v56[2] = sub_1000CA4DC;
        v56[3] = &unk_1001DD288;
        v50 = *(v51 + 40);
        v56[4] = *(v51 + 32);
        v57 = v50;
        [v48 _optInMessageForPriorityMessage:v49 completion:v56];
      }

      v5 = v54;
      goto LABEL_30;
    }

    v7 = v12;
    a1 = v51;
    v6 = 0;
  }

  else
  {
    v7 = 0;
  }

  v46 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
  {
    v47 = *(a1 + 32);
    *buf = 138543362;
    v66 = v47;
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "%{public}@ Unable to find priority message.", buf, 0xCu);
  }

LABEL_30:
}

void sub_1000CA3F0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v5 = [*(a1 + 40) applicationMessage];
      v6 = [v5 identifier];
      v7 = 138543618;
      v8 = v4;
      v9 = 2114;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}@ Unable to update opt-in message entry %{public}@.", &v7, 0x16u);
    }
  }
}

void sub_1000CA4DC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = [v5 applicationMessage];
      v10 = [v9 identifier];
      *buf = 138543874;
      v17 = v8;
      v18 = 2114;
      v19 = v10;
      v20 = 2114;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@ Failed to create opt-in message %{public}@. err=%{public}@", buf, 0x20u);
    }
  }

  else
  {
    v11 = +[ICInAppMessageManager sharedManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000CA6A0;
    v12[3] = &unk_1001DE0A8;
    v12[4] = *(a1 + 32);
    v13 = v5;
    v14 = *(a1 + 40);
    v15 = 0;
    [v11 addMessageEntry:v13 completion:v12];
  }
}

void sub_1000CA6A0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = [*(a1 + 40) applicationMessage];
      v7 = [v6 identifier];
      *buf = 138543874;
      v22 = v5;
      v23 = 2114;
      v24 = v7;
      v25 = 2114;
      v26 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to save application message %{public}@. err=%{public}@", buf, 0x20u);
    }
  }

  else
  {
    v8 = +[ICInAppMessageManager sharedManager];
    v9 = [*(a1 + 40) applicationMessage];
    v10 = [v9 identifier];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000CA8E4;
    v17[3] = &unk_1001DFBB0;
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v18 = v12;
    v19 = v13;
    v20 = v14;
    [v8 downloadResourcesForMessageWithIdentifier:v10 bundleIdentifier:v11 completion:v17];

    v15 = +[ICInAppMessageManager sharedManager];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000CA9F0;
    v16[3] = &unk_1001DE828;
    v16[4] = *(a1 + 32);
    [v15 removeMessageEntryWithIdentifier:@"non-subscriber-notification-content-opt-in" forBundleIdentifier:@"com.apple.amp.inappmessages.private" completion:v16];

    v4 = v18;
  }
}

void sub_1000CA8E4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 40);
      v6 = [*(a1 + 48) applicationMessage];
      v7 = [v6 identifier];
      v8 = 138543874;
      v9 = v5;
      v10 = 2114;
      v11 = v7;
      v12 = 2114;
      v13 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to download resources for message %{public}@. err=%{public}@", &v8, 0x20u);
    }
  }
}

void sub_1000CA9F0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 138543874;
      v7 = v5;
      v8 = 2114;
      v9 = @"non-subscriber-notification-content-opt-in";
      v10 = 2114;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to remove message with identifier %{public}@. err=%{public}@", &v6, 0x20u);
    }
  }
}

void sub_1000CABC4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 48) + 16))();
    v7 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v17 = 138543874;
      v18 = v8;
      v19 = 2114;
      v20 = @"non-subscriber-opt-in-message";
      v21 = 2114;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@ Unable to retrieve message with identifier %{public}@. err=%{public}@", &v17, 0x20u);
    }
  }

  else
  {
    v7 = objc_alloc_init(ICIAMApplicationMessage);
    v9 = [v5 applicationMessage];
    [v7 mergeFrom:v9];

    [*(a1 + 40) startDate];
    [v7 setStartDate:?];
    [*(a1 + 40) endDate];
    [v7 setEndDate:?];
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) contentPages];
    v12 = [v11 firstObject];
    v13 = [v10 _optInMessageContentForPriorityMessageContent:v12];
    [v7 addContentPages:v13];

    v14 = [ICInAppMessageEntry alloc];
    v15 = ICBundleIdentifierForSystemApplicationType();
    v16 = [v14 initWithApplicationMessage:v7 bundleIdentifier:v15];

    (*(*(a1 + 48) + 16))();
  }
}

void sub_1000CB0EC(uint64_t a1, void *a2, void *a3)
{
  v95 = a2;
  v94 = a3;
  if (v94)
  {
    v4 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      *buf = 138543618;
      *&buf[4] = v5;
      *&buf[12] = 2112;
      *&buf[14] = v94;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}@ platform lookup failed. err=%@", buf, 0x16u);
    }

    (*(*(a1 + 64) + 16))();
LABEL_33:
    v105 = 0;
    v106 = &v105;
    v107 = 0x2050000000;
    v57 = qword_100213CC8;
    v108 = qword_100213CC8;
    if (!qword_100213CC8)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1000CC418;
      v110 = &unk_1001DF318;
      v111 = &v105;
      sub_1000CC418(buf);
      v57 = v106[3];
    }

    v58 = v57;
    _Block_object_dispose(&v105, 8);
    v59 = [v57 alloc];
    v60 = [v95 allItems];
    v44 = [v59 initWithLookupItems:v60];

    v105 = 0;
    v106 = &v105;
    v107 = 0x2050000000;
    v61 = qword_100213CD8;
    v108 = qword_100213CD8;
    if (!qword_100213CD8)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1000CC4E0;
      v110 = &unk_1001DF318;
      v111 = &v105;
      sub_1000CC4E0(buf);
      v61 = v106[3];
    }

    v62 = v61;
    _Block_object_dispose(&v105, 8);
    v63 = [v61 musicLibraryForUserAccount:0];
    v64 = [v63 databasePath];
    v105 = 0;
    v106 = &v105;
    v107 = 0x2050000000;
    v65 = qword_100213CE0;
    v108 = qword_100213CE0;
    if (!qword_100213CE0)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1000CC5A8;
      v110 = &unk_1001DF318;
      v111 = &v105;
      sub_1000CC5A8(buf);
      v65 = v106[3];
    }

    v66 = v65;
    _Block_object_dispose(&v105, 8);
    v67 = [v65 alloc];
    v68 = [v44 trackData];
    v69 = [v67 initWithLibraryPath:v64 trackData:v68 playlistData:0];

    [v69 setTracksAreLibraryOwnedContent:0];
    [v69 setPendingMatch:0];
    v105 = 0;
    v106 = &v105;
    v107 = 0x2050000000;
    v70 = qword_100213CE8;
    v108 = qword_100213CE8;
    if (!qword_100213CE8)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1000CC670;
      v110 = &unk_1001DF318;
      v111 = &v105;
      sub_1000CC670(buf);
      v70 = v106[3];
    }

    v71 = v70;
    _Block_object_dispose(&v105, 8);
    v72 = [v70 sharedMediaLibraryService];
    v97[0] = _NSConcreteStackBlock;
    v97[1] = 3221225472;
    v97[2] = sub_1000CC738;
    v97[3] = &unk_1001DD210;
    v97[4] = *(a1 + 32);
    v98 = *(a1 + 64);
    [v72 performImport:v69 fromSource:6 withProgressBlock:0 completionHandler:v97];

    goto LABEL_42;
  }

  v6 = +[ICDefaults standardDefaults];
  v7 = [v6 shouldForceLibraryRecommendationAnalysis];

  v8 = [v95 itemForIdentifier:*(a1 + 40)];
  v9 = v8;
  if (v8)
  {
    v77 = [v8 storeAdamID];
    v10 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = [v9 title];
      *buf = 138543874;
      *&buf[4] = v11;
      *&buf[12] = 2048;
      *&buf[14] = v77;
      *&buf[22] = 2114;
      v110 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Creating application message for adamID %lld : %{public}@", buf, 0x20u);
    }

    v13 = objc_alloc_init(ICIAMApplicationMessage);
    [v13 setAssetPrefetchStrategy:1];
    v14 = [v9 releaseDate];
    if (v14 && (+[NSDate now](NSDate, "now"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v14 compare:v15] == 1, v15, v16))
    {
      v17 = v14;
    }

    else
    {
      v18 = +[NSDate now];

      v17 = v18;
    }

    v76 = v17;
    v75 = [v17 dateByAddingTimeInterval:1209600.0];
    [v76 timeIntervalSince1970];
    [v13 setStartDate:?];
    [v75 timeIntervalSince1970];
    [v13 setEndDate:?];
    v19 = +[NSUUID UUID];
    v85 = [v19 UUIDString];

    [v13 setGlobalPresentationPolicyGroup:0];
    [v13 setCarousel:0];
    [v13 setHasCloseButton:1];
    [v13 setIdentifier:v85];
    [v13 setMaximumDisplays:0xFFFFFFFFLL];
    [v13 setMessageType:2];
    v20 = [*(a1 + 48) score];
    [v20 doubleValue];
    v22 = v21;

    [v13 setPriority:(v22 * 100.0)];
    [v13 addTarget:@"Library_Recommendation"];
    v92 = objc_alloc_init(ICIAMMessageRule);
    [v92 setIdentifier:@"page-detail-rule"];
    [v92 setType:1];
    [v92 setRuleOperator:0];
    v91 = objc_alloc_init(ICIAMTriggerCondition);
    [v91 setComparisonType:2];
    [v91 setDataType:2];
    v23 = [NSString stringWithFormat:@"eventType:page|pageId:%lld", v77];
    [v91 setIdentifier:v23];

    [v91 setTriggerValue:@"1"];
    v87 = objc_alloc_init(ICIAMMessageRule);
    [v87 setIdentifier:@"detail-event"];
    [v87 setType:0];
    [v87 setTriggerCondition:v91];
    [v92 addSubrules:v87];
    v90 = objc_alloc_init(ICIAMTriggerCondition);
    [v90 setIdentifier:@"isOptedInToNewArtistContent"];
    [v90 setComparisonType:0];
    [v90 setTriggerValue:@"true"];
    [v90 setDataType:0];
    v86 = objc_alloc_init(ICIAMMessageRule);
    [v86 setIdentifier:@"optin-context"];
    [v86 setType:0];
    [v86 setTriggerCondition:v90];
    [v92 addSubrules:v86];
    if ([v9 isExplicit])
    {
      v24 = objc_alloc_init(ICIAMTriggerCondition);
      [v24 setIdentifier:@"isExplicitContent"];
      [v24 setComparisonType:0];
      [v24 setTriggerValue:@"true"];
      [v24 setDataType:0];
      v25 = objc_alloc_init(ICIAMMessageRule);
      [v25 setIdentifier:@"is-explicit-rule"];
      [v25 setType:0];
      [v25 setTriggerCondition:v24];
      [v92 addSubrules:v25];
    }

    if ((v7 & 1) == 0)
    {
      v26 = objc_alloc_init(ICIAMTriggerCondition);
      [v26 setComparisonType:0];
      [v26 setDataType:0];
      [v26 setIdentifier:@"isAppleMusicSubscriber"];
      [v26 setTriggerValue:@"false"];
      v27 = objc_alloc_init(ICIAMMessageRule);
      [v27 setIdentifier:@"subscription-status-context"];
      [v27 setType:0];
      [v27 setTriggerCondition:v26];
      [v92 addSubrules:v27];
    }

    [v13 setRule:v92];
    v93 = objc_alloc_init(ICIAMMessageContent);
    [v93 setIdentifier:*(a1 + 40)];
    v28 = [v9 name];
    [v93 setTitle:v28];

    v29 = [v9 artistName];
    [v93 setSubtitle:v29];

    v83 = objc_alloc_init(ICIAMImage);
    v30 = +[NSUUID UUID];
    v31 = [v30 UUIDString];
    [v83 setIdentifier:v31];

    v32 = [v9 artworkInfos];
    v74 = [v32 firstObject];

    v73 = [v74 artworkURLWithSize:ICStoreArtworkInfoCropStyleBoundedBox cropStyle:ICStoreArtworkInfoImageFormatJPEG format:{210.0, 210.0}];
    v33 = [v73 absoluteString];
    [v83 setURL:v33];

    [v93 addImages:v83];
    v82 = objc_alloc_init(ICIAMParameter);
    [v82 setKey:@"adamId"];
    [v82 setValue:*(a1 + 40)];
    [v93 addContentParameters:v82];
    v81 = objc_alloc_init(ICIAMParameter);
    [v81 setKey:@"explicitContent"];
    if ([v9 isExplicit])
    {
      v34 = @"true";
    }

    else
    {
      v34 = @"false";
    }

    [v81 setValue:v34];
    [v93 addContentParameters:v81];
    v89 = objc_alloc_init(ICIAMMessageAction);
    [v89 setIdentifier:@"album-detail-segue"];
    [v89 setRequiresDelegate:1];
    [v89 setMessageRemovalPolicy:1];
    v35 = objc_alloc_init(ICIAMMetricEvent);
    [v35 setActionType:0];
    [v35 setEventType:@"click"];
    [v35 setPageId:@"LibraryContentBannerNonsubscriber"];
    [v35 setPageType:0];
    [v35 setTargetId:v85];
    [v35 setTargetType:3];
    v84 = [*(a1 + 56) recoId];
    v80 = objc_alloc_init(ICIAMParameter);
    [v80 setKey:@"recoId"];
    [v80 setValue:v84];
    [v35 addActionDetails:v80];
    [v89 setClickEvent:v35];
    [v93 addMessageActions:v89];
    v88 = objc_alloc_init(ICIAMMessageAction);
    [v88 setIdentifier:@"close-button"];
    [v88 setRequiresDelegate:1];
    [v88 setMessageRemovalPolicy:1];
    v36 = objc_alloc_init(ICIAMMetricEvent);
    [v36 setActionType:0];
    [v36 setEventType:@"click"];
    [v36 setPageId:@"LibraryContentBannerNonsubscriber"];
    [v36 setPageType:0];
    [v36 setTargetId:v85];
    [v36 setTargetType:4];
    v79 = objc_alloc_init(ICIAMParameter);
    [v79 setKey:@"recoId"];
    [v79 setValue:v84];
    [v36 addActionDetails:v79];
    [v88 setClickEvent:v36];
    [v93 addMessageActions:v88];
    [v13 addContentPages:v93];
    v37 = objc_alloc_init(ICIAMMetricEvent);
    [v37 setEventType:@"impressions"];
    [v37 setPageId:@"LibraryContentBannerNonsubscriber"];
    [v37 setPageType:0];
    v78 = objc_alloc_init(ICIAMImpressionNode);
    [v78 setImpressionType:@"banner"];
    [v78 setRecoAlgoId:v84];
    [v37 setImpression:v78];
    [v13 setImpressionEvent:v37];
    v38 = *(a1 + 32);
    if (v38[20] == 1)
    {
      v39 = [v38 _createLocalNotificationDictionaryForRecommendationResult:*(a1 + 48) storePlatformMetadata:v9 recommendationID:v84 identifier:v85];
      if (v39)
      {
        v40 = objc_alloc_init(ICIAMLocalNotification);
        v104 = 0;
        v41 = [NSJSONSerialization dataWithJSONObject:v39 options:0 error:&v104];
        v42 = v104;
        if (v41 && ([v41 base64EncodedStringWithOptions:0], (v43 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          [v40 setNotification:v43];
          [v13 setLocalNotification:v40];
        }

        else
        {
          v43 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            v47 = *(a1 + 32);
            *buf = 138543618;
            *&buf[4] = v47;
            *&buf[12] = 2114;
            *&buf[14] = v42;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "%{public}@ Failed to serialize local notification data. err=%{public}@", buf, 0x16u);
          }
        }
      }
    }

    v48 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v49 = *(a1 + 32);
      v50 = [v13 identifier];
      *buf = 138543874;
      *&buf[4] = v49;
      *&buf[12] = 2114;
      *&buf[14] = v50;
      *&buf[22] = 2048;
      v110 = v77;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%{public}@ Created new application message %{public}@ for adamID %lld", buf, 0x20u);
    }

    v51 = ICBundleIdentifierForSystemApplicationType();
    v52 = [[ICInAppMessageEntry alloc] initWithApplicationMessage:v13 bundleIdentifier:v51];
    [v52 setShouldDownloadResources:1];
    v53 = +[ICInAppMessageManager sharedManager];
    v99[0] = _NSConcreteStackBlock;
    v99[1] = 3221225472;
    v99[2] = sub_1000CC25C;
    v99[3] = &unk_1001DD1E8;
    v99[4] = *(a1 + 32);
    v100 = v13;
    v102 = v51;
    v103 = v77;
    v101 = v9;
    v54 = v51;
    v55 = v9;
    v56 = v13;
    [v53 addMessageEntry:v52 completion:v99];

    goto LABEL_33;
  }

  v44 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    v45 = *(a1 + 32);
    v46 = *(a1 + 40);
    *buf = 138543618;
    *&buf[4] = v45;
    *&buf[12] = 2112;
    *&buf[14] = v46;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "%{public}@ Unable to create message. There is no store platform data for AdamID: %@", buf, 0x16u);
  }

LABEL_42:
}

void sub_1000CC25C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = [*(a1 + 40) identifier];
      v7 = *(a1 + 64);
      *buf = 138544130;
      v16 = v5;
      v17 = 2114;
      v18 = v6;
      v19 = 2048;
      v20 = v7;
      v21 = 2114;
      v22 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to save application message %{public}@ for adamID %lld. err=%{public}@", buf, 0x2Au);
    }
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 48) storeAdamID]);
    v14 = v9;
    v10 = [NSArray arrayWithObjects:&v14 count:1];
    [v8 _cacheMatchedRecommendations:v10];

    v11 = +[ICInAppMessageManager sharedManager];
    v12 = [*(a1 + 40) identifier];
    [v11 downloadResourcesForMessageWithIdentifier:v12 bundleIdentifier:*(a1 + 56) completion:&stru_1001DD1C0];

    v13 = *(a1 + 32);
    if ((v13[21] & 1) == 0)
    {
      [v13 _updateOptInIfNecessary];
    }
  }
}

void sub_1000CC418(uint64_t a1)
{
  sub_1000CC828();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ML3StoreItemTrackData");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100213CC8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getML3StoreItemTrackDataClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ICMusicLibraryRecommendationController.m" lineNumber:64 description:{@"Unable to find class %s", "ML3StoreItemTrackData"}];

    __break(1u);
  }
}

void sub_1000CC4E0(uint64_t a1)
{
  sub_1000CC828();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ML3MusicLibrary");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100213CD8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getML3MusicLibraryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ICMusicLibraryRecommendationController.m" lineNumber:62 description:{@"Unable to find class %s", "ML3MusicLibrary"}];

    __break(1u);
  }
}

void sub_1000CC5A8(uint64_t a1)
{
  sub_1000CC828();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ML3MutableDatabaseImport");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100213CE0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getML3MutableDatabaseImportClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ICMusicLibraryRecommendationController.m" lineNumber:63 description:{@"Unable to find class %s", "ML3MutableDatabaseImport"}];

    __break(1u);
  }
}

void sub_1000CC670(uint64_t a1)
{
  sub_1000CC828();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MLMediaLibraryService");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100213CE8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getMLMediaLibraryServiceClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ICMusicLibraryRecommendationController.m" lineNumber:65 description:{@"Unable to find class %s", "MLMediaLibraryService"}];

    __break(1u);
  }
}

void sub_1000CC738(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138543618;
      v9 = v7;
      v10 = 2114;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@ Failed to import lookup responses into media library. err=%{public}@", &v8, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000CC828()
{
  v3[0] = 0;
  if (!qword_100213CD0)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_1000CC978;
    v3[4] = &unk_1001DF350;
    v3[5] = v3;
    v4 = off_1001DD2A8;
    v5 = 0;
    qword_100213CD0 = _sl_dlopen();
  }

  if (!qword_100213CD0)
  {
    v1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"void *MusicLibraryLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"ICMusicLibraryRecommendationController.m" lineNumber:61 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_1000CC978(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100213CD0 = result;
  return result;
}

void sub_1000CCAB4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSDate now];
  [v4 timeIntervalSince1970];
  v6 = v5;

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v21 + 1) + 8 * v11) applicationMessage];
        v13 = [v12 targets];
        if ([v13 containsObject:@"Library_Recommendation"])
        {
          [v12 endDate];
          v15 = v14;

          if (v6 > v15)
          {
            v16 = +[ICInAppMessageManager sharedManager];
            v17 = [v12 identifier];
            v19[0] = _NSConcreteStackBlock;
            v19[1] = 3221225472;
            v19[2] = sub_1000CCCE0;
            v19[3] = &unk_1001DFB10;
            v18 = *(a1 + 32);
            v19[4] = *(a1 + 40);
            v20 = v12;
            [v16 removeMessageEntryWithIdentifier:v17 forBundleIdentifier:v18 completion:v19];
          }
        }

        else
        {
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }
}

void sub_1000CCCE0(uint64_t a1, uint64_t a2)
{
  v4 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v13 = 138543618;
      v14 = v6;
      v15 = 2114;
      v16 = v7;
      v8 = "%{public}@ Failed to remove expired message %{public}@";
      v9 = v5;
      v10 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v9, v10, v8, &v13, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = 138543618;
    v14 = v11;
    v15 = 2114;
    v16 = v12;
    v8 = "%{public}@ Removed expired message %{public}@";
    v9 = v5;
    v10 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }
}

void sub_1000CD088(id a1, ICStoreRequestContext *a2)
{
  v4 = a2;
  v2 = +[ICUserIdentity activeAccount];
  [(ICStoreRequestContext *)v4 setIdentity:v2];

  v3 = [[ICStoreURLResponseAuthenticationProvider alloc] initWithUserInteractionLevel:1];
  [(ICStoreRequestContext *)v4 setAuthenticationProvider:v3];

  [(ICStoreRequestContext *)v4 setAllowsExpiredBags:1];
  [(ICStoreRequestContext *)v4 setPersonalizationStyle:0];
}

void sub_1000CD5CC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    v4 = objc_begin_catch(a1);
    v5 = sub_1001028E4();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *(v3 - 128) = 138543618;
      *(v3 - 124) = v2;
      *(v3 - 116) = 2114;
      *(v3 - 114) = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@ Failed to cache or compile MLModel err=%{public}@", (v3 - 128), 0x16u);
    }

    objc_end_catch();
    JUMPOUT(0x1000CD5B8);
  }

  _Unwind_Resume(a1);
}

void sub_1000CDA5C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138543618;
      v10 = v8;
      v11 = 2114;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch recommendations model. err=%{public}@", &v9, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000CDCD8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 valueForKey:@"release_ix"];
  [v3 removeObjectForKey:@"release_ix"];
  if ([v4 count])
  {
    v5 = [*(a1 + 40) mlModel];
    v52 = 0;
    v6 = [[MLDictionaryFeatureProvider alloc] initWithDictionary:v3 error:&v52];
    v7 = v52;
    v51 = v7;
    v8 = [v5 predictionFromFeatures:v6 error:&v51];
    v9 = v51;

    v10 = [v8 featureValueForName:@"thresholded_score"];
    v11 = [v10 multiArrayValue];

    if (v9)
    {
      v12 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 32);
        *buf = 138543618;
        v54 = v13;
        v55 = 2114;
        v56 = v9;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@ Failed to compute scores. err=%{public}@", buf, 0x16u);
      }

      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v50 = objc_alloc_init(NSMutableArray);
      v16 = +[ICDefaults standardDefaults];
      v17 = [v16 allowLowAffinityRecommendations];

      v47 = v4;
      if ([v11 count] < 1)
      {
        goto LABEL_22;
      }

      v43 = v8;
      v44 = v6;
      v45 = v5;
      v46 = v3;
      v18 = 0;
      v49 = 0;
      v19 = 0.0;
      v20 = ICPushNotificationMessage_ptr;
      v48 = v11;
      do
      {
        v21 = [v11 objectAtIndexedSubscript:v18];
        [v21 doubleValue];
        if (((v22 == 0.0) & v17) == 1)
        {
          v23 = [v20[84] numberWithDouble:arc4random() / 4294967300.0];

          v21 = v23;
        }

        [v21 doubleValue];
        if (v24 > 0.0)
        {
          v25 = v17;
          v26 = [v4 objectAtIndex:v18];
          v27 = [v26 intValue];

          v28 = [*(a1 + 48) artistContentAtIndex:v27];
          v29 = [v28 catalogContentAtIndex:0];
          v30 = [v20[84] numberWithLongLong:{objc_msgSend(v29, "adamId")}];
          v31 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v29 releaseDate]);
          v32 = [[ICMusicLibraryRecommendationResult alloc] initWithAdamID:v30 date:v31 score:v21];
          [v50 addObject:v32];
          [v21 doubleValue];
          if (v33 > v19)
          {
            [v21 doubleValue];
            v19 = v34;
            v35 = a1;
            v36 = v32;

            v49 = v36;
            a1 = v35;
            v4 = v47;
          }

          v17 = v25;
          v11 = v48;
          v20 = ICPushNotificationMessage_ptr;
        }

        ++v18;
      }

      while ([v11 count] > v18);
      v5 = v45;
      v3 = v46;
      v9 = 0;
      v6 = v44;
      v8 = v43;
      if (v49)
      {
        v37 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = *(a1 + 32);
          v39 = [v50 count];
          *buf = 138543874;
          v54 = v38;
          v55 = 2048;
          v56 = v39;
          v57 = 2114;
          v58 = v50;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%{public}@ Found %lu new recommendations: %{public}@", buf, 0x20u);
        }

        v40 = v49;
      }

      else
      {
LABEL_22:
        v37 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          v41 = *(a1 + 32);
          v42 = [v11 count];
          *buf = 138543618;
          v54 = v41;
          v55 = 2048;
          v56 = v42;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%{public}@ Generated %lu matches, but zero results scored above the model score threshold.", buf, 0x16u);
        }

        v40 = 0;
      }

      (*(*(a1 + 56) + 16))();
      v4 = v47;
    }
  }

  else
  {
    v14 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      *buf = 138543362;
      v54 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ No matched results found", buf, 0xCu);
    }

    (*(*(a1 + 56) + 16))();
  }

  [*(a1 + 32) _clearMLModelCache];
}

void sub_1000CE430(id *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [a1[4] _retrievePreviousRecommendationMatchesFromCache];
    v5 = [NSSet setWithArray:v4];

    v6 = [v3 adamID];
    v7 = [v5 containsObject:v6];

    if (v7)
    {
      v8 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = a1[4];
        v10 = [v3 adamID];
        *buf = 138543618;
        v23 = v9;
        v24 = 2048;
        v25 = [v10 longLongValue];
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Matched recommendation already created for AdamID: %llu", buf, 0x16u);
      }
    }

    else
    {
      v13 = ICBundleIdentifierForSystemApplicationType();
      v14 = +[ICInAppMessageManager sharedManager];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000CE6CC;
      v16[3] = &unk_1001DD108;
      v15 = a1[4];
      v17 = v13;
      v18 = v15;
      v19 = v3;
      v20 = a1[5];
      v21 = a1[6];
      v8 = v13;
      [v14 messageEntriesForBundleIdentifier:v8 completion:v16];
    }
  }

  else
  {
    v11 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = a1[4];
      *buf = 138543362;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ No recommendations found.", buf, 0xCu);
    }

    (*(a1[6] + 2))();
  }
}

void sub_1000CE6CC(uint64_t a1, void *a2)
{
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v26;
    do
    {
      v6 = 0;
      do
      {
        if (*v26 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [*(*(&v25 + 1) + 8 * v6) applicationMessage];
        v8 = [v7 targets];
        v9 = [v8 containsObject:@"Library_Recommendation"];

        if (v9)
        {
          v10 = +[ICInAppMessageManager sharedManager];
          v11 = [v7 identifier];
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_1000CE9A4;
          v23[3] = &unk_1001DFB10;
          v12 = *(a1 + 32);
          v23[4] = *(a1 + 40);
          v24 = v7;
          [v10 removeMessageEntryWithIdentifier:v11 forBundleIdentifier:v12 completion:v23];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v4);
  }

  v13 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 40);
    v15 = [*(a1 + 48) adamID];
    v16 = [v15 longLongValue];
    *buf = 138543618;
    v30 = v14;
    v31 = 2048;
    v32 = v16;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Attempting to create new recommendation message for AdamID: %llu", buf, 0x16u);
  }

  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000CEAD4;
  v21[3] = &unk_1001DD8F0;
  v19 = *(a1 + 56);
  v22 = *(a1 + 64);
  [v17 _createApplicationMessagesForResult:v18 artistNewContentResponse:v19 completion:v21];
}

void sub_1000CE9A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v14 = 138543874;
      v15 = v6;
      v16 = 2114;
      v17 = v7;
      v18 = 2114;
      v19 = v3;
      v8 = "%{public}@ Failed to remove message %{public}@, err=%{public}@";
      v9 = v5;
      v10 = OS_LOG_TYPE_ERROR;
      v11 = 32;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v9, v10, v8, &v14, v11);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = 138543618;
    v15 = v12;
    v16 = 2114;
    v17 = v13;
    v8 = "%{public}@ Removing stale messages for new recommendation update. Removed message: %{public}@";
    v9 = v5;
    v10 = OS_LOG_TYPE_DEFAULT;
    v11 = 22;
    goto LABEL_6;
  }
}

void sub_1000CEC24(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    if (v5)
    {
      v7 = +[ICMusicSubscriptionStatusController sharedStatusController];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000CEDDC;
      v14[3] = &unk_1001DD0B8;
      v14[4] = *(a1 + 32);
      [v7 getSubscriptionStatusWithCompletionHandler:v14];
      goto LABEL_9;
    }

    v7 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    v13 = *(a1 + 32);
    *buf = 138543362;
    v16 = v13;
    v9 = "%{public}@ Skipping update because the user is not signed in";
    v10 = v7;
    v11 = OS_LOG_TYPE_DEFAULT;
    v12 = 12;
    goto LABEL_4;
  }

  v7 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    *buf = 138543618;
    v16 = v8;
    v17 = 2114;
    v18 = v6;
    v9 = "%{public}@ Skipping update because we failed to load account properties. err=%{public}@";
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 22;
LABEL_4:
    _os_log_impl(&_mh_execute_header, v10, v11, v9, buf, v12);
  }

LABEL_9:
}

void sub_1000CEDDC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[ICDefaults standardDefaults];
  v8 = [v7 shouldForceLibraryRecommendationAnalysis];

  if (v6)
  {
    v9 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      *buf = 138543618;
      v19 = v10;
      v20 = 2114;
      v21 = v6;
      v11 = "%{public}@ Skipping update because we failed to obtain the subscription status. err=%{public}@";
      v12 = v9;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 22;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v12, v13, v11, buf, v14);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  if (!(v8 & 1 | (([v5 hasCapability:128] & 1) == 0)))
  {
    v9 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      *buf = 138543362;
      v19 = v16;
      v11 = "%{public}@ Skipping update because the user is a subscriber";
      v12 = v9;
      v13 = OS_LOG_TYPE_DEFAULT;
      v14 = 12;
      goto LABEL_8;
    }

LABEL_9:

    goto LABEL_10;
  }

  v15 = *(a1 + 32);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000CEFB4;
  v17[3] = &unk_1001DD090;
  v17[4] = v15;
  [v15 _fetchRecommendationsSetAndModelWithCompletionHandler:v17];
LABEL_10:
}

void sub_1000CEFB4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000CF0C8;
    v6[3] = &unk_1001DE828;
    v6[4] = v3;
    [v3 _handleRecommendationsResponseModel:a2 completion:v6];
  }

  else
  {
    v4 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 138543362;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ No response model from the server - skipping update", buf, 0xCu);
    }
  }
}

void sub_1000CF0C8(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "%{public}@ Library Recommendations Computation Finished", &v4, 0xCu);
  }
}

void sub_1000CF428(uint64_t a1, void *a2)
{
  [a2 settingsSwitches];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v20 = 0u;
  v3 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = v3;
  v15 = a1;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = *v18;
  do
  {
    for (i = 0; i != v4; i = i + 1)
    {
      if (*v18 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v17 + 1) + 8 * i);
      v11 = [v10 identifier];
      v12 = [v11 isEqualToString:ICMusicAccountNotificationsSettingsSwitchArtistsAndShows];

      if (v12)
      {
        v6 = [v10 isToggled];
        v5 = [v10 hasBeenPreviouslyToggled];
        v7 = v6 | v5 ^ 1;
      }
    }

    v4 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
  }

  while (v4);
  a1 = v15;
  if (v7)
  {
    *(*(v15 + 32) + 20) = v6 & 1;
    *(*(v15 + 32) + 21) = v5 & 1;
    [*(v15 + 32) _performRecommendationsRequest];
  }

  else
  {
LABEL_12:
    v13 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      *buf = 138543362;
      v22 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ User has opted out of artist and shows notifications; recommendations request is skipped.", buf, 0xCu);
    }
  }
}

void sub_1000CFDA4(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Handle new AMPMusicArtistNewContentResponse from notification finished", &v4, 0xCu);
  }
}

void sub_1000D0168(uint64_t a1, void *a2)
{
  v3 = [a2 dictionaryForBagKey:ICURLBagKeyArtistNewContent];
  v4 = [v3 ic_numberValueForKey:@"min-refresh-freq-in-seconds"];
  if ([v4 longLongValue])
  {
    v5 = [v4 longLongValue];
  }

  else
  {
    v5 = 86400;
  }

  v6 = +[ICDefaults standardDefaults];
  v7 = [v6 shouldReduceLibraryRecommendationsXPCInterval];

  if (v7)
  {
    v8 = 1800;
  }

  else
  {
    v8 = v5;
  }

  *(*(a1 + 32) + 56) = v8;
  v9 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    *buf = 138543618;
    v14 = v10;
    v15 = 2048;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Scheduling periodic updates every %lld seconds", buf, 0x16u);
  }

  v11 = +[ICBGTaskScheduler sharedTaskScheduler];
  if (([v11 hasScheduledTask:@"com.apple.itunescloud.ICMusicLibraryRecommendationController.refresh"] & 1) == 0)
  {
    [v11 scheduleRecurringTask:@"com.apple.itunescloud.ICMusicLibraryRecommendationController.refresh" withInterval:0 afterDelay:v8 withUserData:v8];
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000D0374;
  v12[3] = &unk_1001DD5A8;
  v12[4] = *(a1 + 32);
  [v11 registerForTask:@"com.apple.itunescloud.ICMusicLibraryRecommendationController.refresh" handler:v12];
}

void sub_1000D0374(uint64_t a1)
{
  v3 = +[NSDate now];
  [v3 timeIntervalSince1970];
  *(*(a1 + 32) + 48) = v2;
  [*(a1 + 32) _performRecommendationsUpdate];
}

void sub_1000D06EC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = +[ICUserIdentityStore defaultIdentityStore];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D07A8;
  v7[3] = &unk_1001DF618;
  v7[4] = *(a1 + 32);
  v8 = v4;
  v6 = v4;
  [v5 synchronizeWithCompletionHandler:v7];
}

void sub_1000D07A8(uint64_t a1)
{
  v2 = +[ICUserIdentityStore defaultIdentityStore];
  v3 = +[ICUserIdentity activeAccount];
  v4 = [v2 DSIDForUserIdentity:v3 outError:0];

  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = *(a1 + 32);
  if (v4 != v5[5])
  {
    [v5 stopSystemService];
    [*(a1 + 32) startSystemService];
  }

  if (![*(a1 + 40) hasCapability:128] || (+[ICDefaults standardDefaults](ICDefaults, "standardDefaults"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "shouldForceLibraryRecommendationAnalysis"), v6, v7))
  {
    [*(a1 + 32) scheduleRecommendationsRefreshTimer];
  }

  else
  {
LABEL_7:
    [*(a1 + 32) stopSystemService];
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 40);
  *(v8 + 40) = v4;
}

void sub_1000D0A98(id a1)
{
  qword_100213CC0 = objc_alloc_init(ICMusicLibraryRecommendationController);

  _objc_release_x1();
}

void sub_1000D0D78(id a1)
{
  v1 = [[ICDAAPPropertyInfo alloc] _init];
  v2 = qword_100213D00;
  qword_100213D00 = v1;

  [qword_100213D00 mapProperty:@"daap.incrementplaycount" toCode:1634953584 valueType:5];
  [qword_100213D00 mapProperty:@"com.apple.itunes.cloud-artwork-token" toCode:1634026324 valueType:9];
  [qword_100213D00 mapProperty:ML3ContainerPropertyName toCode:1835626093 valueType:9];
  [qword_100213D00 mapProperty:ML3ContainerPropertyDescription toCode:1634037860 valueType:9];
  [qword_100213D00 mapProperty:ML3ContainerPropertyDatePlayed toCode:1835362672 valueType:10];
  [qword_100213D00 mapProperty:ML3ContainerPropertyDateCreated toCode:1835362657 valueType:10];
  [qword_100213D00 mapProperty:ML3ContainerPropertyLikedState toCode:1634036851 valueType:1];
  [qword_100213D00 mapProperty:ML3ContainerPropertyCloudIsPublic toCode:1634358088 valueType:1];
  [qword_100213D00 mapProperty:ML3ContainerPropertyCloudIsVisible toCode:1634363766 valueType:1];
  [qword_100213D00 mapProperty:ML3ContainerPropertyCloudAuthorStoreID toCode:1634353481 valueType:7];
  [qword_100213D00 mapProperty:ML3ContainerPropertyParentPersistentID toCode:1836082031 valueType:5];
  [qword_100213D00 mapProperty:ML3ContainerPropertyExternalVendorIdentifier toCode:1634358889 valueType:9];
  [qword_100213D00 mapProperty:ML3ContainerPropertyExternalVendorDisplayName toCode:1634358894 valueType:9];
  [qword_100213D00 mapProperty:ML3ContainerPropertyExternalVendorContainerTag toCode:1634358900 valueType:9];
  [qword_100213D00 mapProperty:ML3ContainerPropertyCoverArtworkRecipe toCode:1634353490 valueType:9];
  [qword_100213D00 mapProperty:ML3ContainerPropertyCollaborationMode toCode:1634353999 valueType:5];
  v3 = qword_100213D00;
  v4 = ML3ContainerPropertyEditSessionID;

  [v3 mapProperty:v4 toCode:1634354515 valueType:9];
}

void sub_1000D1038(id a1)
{
  v1 = [[ICDAAPPropertyInfo alloc] _init];
  v2 = qword_100213CF0;
  qword_100213CF0 = v1;

  [qword_100213CF0 mapProperty:@"daap.incrementplaycount" toCode:1634953584 valueType:5];
  [qword_100213CF0 mapProperty:@"daap.incrementskipcount" toCode:1634953587 valueType:5];
  [qword_100213CF0 mapProperty:@"dmap.itemhidden" toCode:1835624553 valueType:1];
  [qword_100213CF0 mapProperty:ML3TrackPropertyUserRating toCode:1634956658 valueType:1];
  [qword_100213CF0 mapProperty:ML3TrackPropertyHidden toCode:1835624553 valueType:1];
  [qword_100213CF0 mapProperty:ML3TrackPropertyDatePlayed toCode:1634955372 valueType:10];
  [qword_100213CF0 mapProperty:ML3TrackPropertyDateSkipped toCode:1634954084 valueType:10];
  [qword_100213CF0 mapProperty:ML3TrackPropertyLikedState toCode:1634036851 valueType:1];
  [qword_100213CF0 mapProperty:ML3TrackPropertyAlbumLikedState toCode:1634361708 valueType:1];
  [qword_100213CF0 mapProperty:ML3TrackPropertyLikedStateChangedDate toCode:1634036850 valueType:10];
  [qword_100213CF0 mapProperty:ML3AlbumArtistPropertyLikedState toCode:1634036851 valueType:1];
  [qword_100213CF0 mapProperty:ML3AlbumArtistPropertyLikedStateChangedDate toCode:1634036850 valueType:10];
  [qword_100213CF0 mapProperty:ML3AlbumPropertyLikedState toCode:1634036851 valueType:1];
  v3 = qword_100213CF0;
  v4 = ML3AlbumPropertyLikedStateChangedDate;

  [v3 mapProperty:v4 toCode:1634036850 valueType:10];
}

BOOL sub_1000D1624(void *a1, const __CFString *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    memset(&cf[1], 0, sizeof(audit_token_t));
    [a1 auditToken];
    cf[0] = cf[1];
    v4 = SecTaskCreateWithAuditToken(0, cf);
    if (!v4)
    {
      return 0;
    }

    v5 = v4;
    *cf[0].val = 0;
    v6 = SecTaskCopyValueForEntitlement(v4, a2, cf);
    if (*cf[0].val)
    {
      CFRelease(*cf[0].val);
    }

    else if (v6)
    {
      TypeID = CFBooleanGetTypeID();
      if (TypeID == CFGetTypeID(v6))
      {
        v2 = CFBooleanGetValue(v6) != 0;
        goto LABEL_7;
      }
    }

    v2 = 0;
LABEL_7:
    CFRelease(v5);
  }

  return v2;
}

void sub_1000D1B00(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.itunescloudd", "SDK");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = objc_opt_class();
    NSStringFromClass(v9);
    v10 = v22 = v6;
    v11 = *(a1 + 32);
    if ([v11 method])
    {
      v12 = @"POST";
    }

    else
    {
      v12 = @"GET";
    }

    v13 = [*(a1 + 32) action];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [v5 responseCode];
    v17 = [v5 responseData];
    *buf = 138545154;
    v24 = v10;
    v25 = 2048;
    v26 = v11;
    v27 = 2114;
    v28 = v12;
    v29 = 2114;
    v30 = v13;
    v31 = 2114;
    v32 = v15;
    v33 = 2048;
    v34 = v5;
    v35 = 2048;
    v36 = v16;
    v37 = 2048;
    v38 = [v17 length];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p method=%{public}@ action=%{public}@> received response: <%{public}@: %p code=%ld, length=%{bytes}lu>", buf, 0x52u);

    v6 = v22;
  }

  if (v6)
  {
    v18 = os_log_create("com.apple.amp.itunescloudd", "SDK");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v24 = v6;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "JaliscoHideItemOperation failed with error: %{public}@", buf, 0xCu);
    }
  }

  v19 = *(a1 + 40);
  v20 = [v5 responseCode];
  if (v20 > 399)
  {
    if (v20 != 404 && v20 != 400)
    {
      goto LABEL_17;
    }

    v21 = 3;
  }

  else
  {
    v21 = 1;
    if (v20 != 200 && v20 != 204)
    {
LABEL_17:
      v21 = 2;
    }
  }

  [v19 setStatus:v21];
  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_1000D2308(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = a1[4];
      v10 = [v6 msv_description];
      v14 = 138543618;
      v15 = v9;
      v16 = 2114;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@ Finished request to end collaboration error=%{public}@", &v14, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = a1[4];
    v14 = 138543362;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished request to end collaboration", &v14, 0xCu);
  }

  v12 = [v5 responseCode];
  if (v12 > 399)
  {
    if (v12 == 404 || v12 == 400)
    {
      v13 = 3;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v13 = 1;
  if (v12 != 200 && v12 != 204)
  {
LABEL_13:
    v13 = 2;
  }

LABEL_14:
  [a1[4] setStatus:v13];
  [a1[4] setError:v6];
  if (!v6)
  {
    *(a1[4] + 106) = [v5 updateRequired];
    *(a1[4] + 114) = [a1[5] longLongValue];
  }

  [a1[6] endTransaction];
  [a1[4] finish];
}

void sub_1000D2E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(&a46, 8);
  _Unwind_Resume(a1);
}

void sub_1000D2EEC(uint64_t a1)
{
  v3 = [*(a1 + 32) localDatabaseUpdateCompletionHandler];
  v2 = [*(a1 + 32) error];
  v3[2](v3, v2);
}

uint64_t sub_1000D2F60(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000D2F78(uint64_t a1, void *a2)
{
  v3 = a2;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v4 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 32) persistentID]);
  v47[0] = v4;
  v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) ml3EntityType]);
  v47[1] = v5;
  v6 = [NSArray arrayWithObjects:v47 count:2];
  v7 = [v3 executeQuery:@"SELECT pin_pid withParameters:{default_action from library_pins WHERE entity_pid=? AND entity_type=?", v6}];

  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1000D386C;
  v35[3] = &unk_1001DEED8;
  v35[4] = *(a1 + 32);
  v35[5] = &v36;
  [v7 enumerateRowsWithBlock:v35];
  if (![*(a1 + 32) pinPersistentID])
  {
    v14 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      *buf = 138543362;
      v42 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@ Entity is not pinned", buf, 0xCu);
    }

    v16 = [NSError msv_errorWithDomain:ICErrorDomain code:-8405 debugDescription:@"cannot find pinned entity"];
    [*(a1 + 32) setError:v16];

    goto LABEL_9;
  }

  v8 = v37[3];
  if (v8 == [*(a1 + 32) action])
  {
    v9 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = [v10 pinPersistentID];
      v12 = v37[3];
      v13 = NSStringFromICLibraryPinAction();
      *buf = 138543874;
      v42 = v10;
      v43 = 2048;
      v44 = v11;
      v45 = 2114;
      v46 = v13;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@ Default action of pinned item with pid=%lld is already in correct state: %{public}@", buf, 0x20u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
    [*(a1 + 32) setStatus:1];
LABEL_9:
    [*(a1 + 32) setState:1];
    goto LABEL_21;
  }

  v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) action]);
  v40[0] = v17;
  v18 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [*(a1 + 32) pinPersistentID]);
  v40[1] = v18;
  v19 = [NSArray arrayWithObjects:v40 count:2];
  v20 = *(*(a1 + 56) + 8);
  obj = *(v20 + 40);
  v21 = [v3 executeUpdate:@"UPDATE library_pins SET default_action=? WHERE pin_pid=?" withParameters:v19 error:&obj];
  objc_storeStrong((v20 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v21;

  if (v21)
  {
    v22 = [*(a1 + 32) musicLibrary];
    *(*(*(a1 + 48) + 8) + 24) = +[ML3LibraryPin incrementRevisionWithLibrary:persistentID:deletionType:revisionType:usingConnection:](ML3LibraryPin, "incrementRevisionWithLibrary:persistentID:deletionType:revisionType:usingConnection:", v22, [*(a1 + 32) pinPersistentID], 0, 0, v3);

    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      v23 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = *(a1 + 32);
        v25 = [v24 pinPersistentID];
        *buf = 138543618;
        v42 = v24;
        v43 = 2048;
        v44 = v25;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}@ Could not update entity revision for pinPID=%lld", buf, 0x16u);
      }
    }

    [*(a1 + 32) setState:1];
  }

  else
  {
    v26 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = *(a1 + 32);
      v28 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138543618;
      v42 = v27;
      v43 = 2114;
      v44 = v28;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%{public}@ could not update default action of pinned entity - error=%{public}@", buf, 0x16u);
    }
  }

  v29 = *(*(*(a1 + 56) + 8) + 40);
  if (v29)
  {
    v30 = [v29 msv_errorByRemovingUnsafeUserInfo];
    v31 = [NSError msv_errorWithDomain:ICErrorDomain code:-8406 underlyingError:v30 debugDescription:@"Could not set properties locally"];
    [*(a1 + 32) setError:v31];
  }

LABEL_21:
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000D38D0;
  v33[3] = &unk_1001DEF00;
  v33[4] = *(a1 + 32);
  [v3 enqueueBlockForTransactionCommit:v33];

  _Block_object_dispose(&v36, 8);
  return 1;
}

void sub_1000D3568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000D3590(uint64_t a1)
{
  v3 = [*(a1 + 32) localDatabaseUpdateCompletionHandler];
  v2 = [*(a1 + 32) error];
  v3[2](v3, v2);
}

void sub_1000D3604(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = *(a1 + 32);
    v12 = [v11 method];
    v13 = @"POST";
    if (!v12)
    {
      v13 = @"GET";
    }

    v25 = v13;
    v14 = [*(a1 + 32) action];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v5 responseCode];
    v18 = [v5 responseData];
    *buf = 138545154;
    v27 = v10;
    v28 = 2048;
    v29 = v11;
    v30 = 2114;
    v31 = v25;
    v32 = 2114;
    v33 = v14;
    v34 = 2114;
    v35 = v16;
    v36 = 2048;
    v37 = v5;
    v38 = 2048;
    v39 = v17;
    v40 = 2048;
    v41 = [v18 length];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p method=%{public}@ action=%{public}@> received response: <%{public}@: %p code=%ld, length=%{bytes}lu>", buf, 0x52u);
  }

  if (v6)
  {
    v19 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 32);
      v20 = *(a1 + 40);
      *buf = 138543874;
      v27 = v20;
      v28 = 2114;
      v29 = v21;
      v30 = 2114;
      v31 = v6;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}@ %{public}@ failed with error: %{public}@", buf, 0x20u);
    }
  }

  v22 = *(*(a1 + 56) + 8);
  v23 = *(v22 + 40);
  *(v22 + 40) = v5;
  v24 = v5;

  [*(a1 + 40) setError:v6];
  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_1000D386C(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setPinPersistentID:{objc_msgSend(v3, "int64ForColumnIndex:", 0)}];
  v4 = [v3 int64ForColumnIndex:1];

  *(*(*(a1 + 40) + 8) + 24) = v4;
}

void sub_1000D38D0(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) musicLibrary];
    [v3 notifyEntitiesAddedOrRemoved];

    v4 = [*(a1 + 32) musicLibrary];
    [v4 notifyContentsDidChange];
  }

  v5 = [*(a1 + 32) localDatabaseUpdateCompletionHandler];

  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000D39B0;
    block[3] = &unk_1001DF578;
    block[4] = *(a1 + 32);
    dispatch_async(v6, block);
  }
}

void sub_1000D39B0(uint64_t a1)
{
  v3 = [*(a1 + 32) localDatabaseUpdateCompletionHandler];
  v2 = [*(a1 + 32) error];
  v3[2](v3, v2);
}

void sub_1000D3E0C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(a1 + 56);
  v4 = *(a1 + 48);
  ICDAAPUtilitiesWriteContainer();
}

void sub_1000D3ED4(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000D3FA0;
  v6[3] = &unk_1001DD3A8;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v10 = *(a1 + 56);
  v9 = *(a1 + 48);
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void sub_1000D3FA0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v12 = *(a1 + 56);
  v10 = v6;
  v7 = *(a1 + 40);
  v11 = *(a1 + 48);
  v8 = v6;
  v9 = v5;
  ICDAAPUtilitiesWriteContainer();
}

void sub_1000D4090(uint64_t a1, void *a2)
{
  v3 = a2;
  *(a1 + 56);
  v4 = *(a1 + 32);
  ICDAAPUtilitiesWriteProperty();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D4168;
  v7[3] = &unk_1001DE390;
  v5 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = v3;
  v6 = v3;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

void sub_1000D4168(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) hasInfoForProperty:v5])
  {
    [*(a1 + 32) elementCodeForProperty:v5];
    [*(a1 + 32) valueTypeForProperty:v5];
    v7 = *(a1 + 40);
    ICDAAPUtilitiesWriteProperty();
  }

  else
  {
    v8 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "No DAAP code found for item property: %{public}@", &v9, 0xCu);
    }
  }
}

void sub_1000D4390(uint64_t a1)
{
  v5 = *(a1 + 56);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  ICDAAPUtilitiesWriteContainer();
}

void sub_1000D4458(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 56))
  {
    v4 = 1835625572;
  }

  else
  {
    v4 = 1835624804;
  }

  if (*(a1 + 56))
  {
    v5 = 7;
  }

  else
  {
    v5 = 5;
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000D4550;
  v8[3] = &unk_1001DD358;
  v6 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v3;
  v13 = v4;
  v12 = v5;
  v11 = *(a1 + 48);
  v7 = v3;
  [v6 enumerateObjectsUsingBlock:v8];
}

void sub_1000D4550(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v13 = *(a1 + 64);
  v7 = *(a1 + 40);
  v12 = *(a1 + 56);
  v10 = v6;
  v11 = *(a1 + 48);
  v8 = v6;
  v9 = v5;
  ICDAAPUtilitiesWriteContainer();
}

void sub_1000D4648(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 64);
  v5 = *(a1 + 56);
  v6 = *(a1 + 32);
  ICDAAPUtilitiesWriteProperty();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000D4708;
  v9[3] = &unk_1001DE390;
  v7 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = v3;
  v8 = v3;
  [v7 enumerateKeysAndObjectsUsingBlock:v9];
}

void sub_1000D4708(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) hasInfoForProperty:v5])
  {
    [*(a1 + 32) elementCodeForProperty:v5];
    [*(a1 + 32) valueTypeForProperty:v5];
    v7 = *(a1 + 40);
    ICDAAPUtilitiesWriteProperty();
  }

  else
  {
    v8 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "No DAAP code found for item property: %{public}@", &v9, 0xCu);
    }
  }
}

void sub_1000D5158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1000D519C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v14[0] = *(v3 + 130);
  v4 = *(v3 + 146);
  v5 = a2;
  v6 = [NSNumber numberWithInteger:v4];
  v14[1] = v6;
  v7 = [NSNumber numberWithInteger:*(*(a1 + 32) + 138)];
  v14[2] = v7;
  v8 = [NSArray arrayWithObjects:v14 count:3];

  v9 = [v5 executeQuery:@"SELECT entity_pid withParameters:{entity_type, artwork_variant_type from artwork_token WHERE artwork_token = ? AND artwork_source_type = ? AND artwork_type = ?", v8}];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000D5404;
  v11[3] = &unk_1001DD4E8;
  v10 = *(a1 + 56);
  v12 = *(a1 + 40);
  v13 = v10;
  [v9 enumerateRowsWithBlock:v11];
}

void sub_1000D5314(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 musicLibrary];
  [v5 importArtworkTokenForEntityPersistentID:*(*(*(a1 + 40) + 8) + 24) entityType:*(*(*(a1 + 48) + 8) + 24) artworkToken:*(*(a1 + 32) + 130) artworkType:*(*(a1 + 32) + 138) sourceType:*(*(a1 + 32) + 146) variantType:1 usingConnection:v4];

  v6 = [*(a1 + 32) musicLibrary];
  [v6 updateBestArtworkTokenForEntityPersistentID:*(*(*(a1 + 40) + 8) + 24) entityType:*(*(*(a1 + 48) + 8) + 24) artworkType:*(*(a1 + 32) + 138) variantType:1 retrievalTime:1 preserveExistingAvailableToken:v4 usingConnection:0.0];
}

void sub_1000D5404(void *a1, void *a2)
{
  *(*(a1[4] + 8) + 24) = 1;
  v3 = a2;
  *(*(a1[5] + 8) + 24) = [v3 int64ForColumnIndex:0];
  *(*(a1[6] + 8) + 24) = [v3 intForColumnIndex:1];
  v4 = [v3 intForColumnIndex:2];

  if (v4 == 1)
  {
    *(*(a1[7] + 8) + 24) = 1;
  }
}

id sub_1000D6698(uint64_t a1)
{
  [*(a1 + 40) mediaType];
  v2 = NSStringFromMLMediaType();
  [*(a1 + 32) setObject:v2 forKeyedSubscript:@"mediaType"];

  [*(a1 + 48) timeIntervalSinceNow];
  v4 = [NSNumber numberWithDouble:fabs(v3)];
  [*(a1 + 32) setObject:v4 forKeyedSubscript:@"duration"];

  [*(a1 + 32) setObject:&__kCFBooleanFalse forKeyedSubscript:@"success"];
  v5 = [NSNumber numberWithBool:*(a1 + 64)];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:@"cachingEnabled"];

  v6 = [NSNumber numberWithUnsignedLongLong:*(a1 + 56)];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:@"availableStorage"];

  v7 = *(a1 + 32);

  return v7;
}

id sub_1000D67AC(id *a1)
{
  [a1[5] mediaType];
  v2 = NSStringFromMLMediaType();
  [a1[4] setObject:v2 forKeyedSubscript:@"mediaType"];

  [a1[6] timeIntervalSinceNow];
  v4 = [NSNumber numberWithDouble:fabs(v3)];
  [a1[4] setObject:v4 forKeyedSubscript:@"duration"];

  [a1[4] setObject:&__kCFBooleanFalse forKeyedSubscript:@"success"];
  [a1[4] setObject:&__kCFBooleanTrue forKeyedSubscript:@"noToken"];
  v5 = a1[4];

  return v5;
}

id sub_1000D6878(id *a1)
{
  [a1[5] mediaType];
  v2 = NSStringFromMLMediaType();
  [a1[4] setObject:v2 forKeyedSubscript:@"mediaType"];

  [a1[6] timeIntervalSinceNow];
  v4 = [NSNumber numberWithDouble:fabs(v3)];
  [a1[4] setObject:v4 forKeyedSubscript:@"duration"];

  [a1[4] setObject:&__kCFBooleanFalse forKeyedSubscript:@"success"];
  [a1[4] setObject:&__kCFBooleanTrue forKeyedSubscript:@"noAssetURL"];
  v5 = a1[4];

  return v5;
}

void sub_1000D6944(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) isCancelled];
  v8 = v7;
  if (v6 || (v7 & 1) != 0)
  {
    v22 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    v23 = v22;
    if (v6)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v24 = *(a1 + 32);
        v25 = *(a1 + 40);
        v26 = [v6 msv_description];
        *buf = 138544130;
        v57 = v24;
        v58 = 2114;
        v59 = v25;
        v60 = 1024;
        LODWORD(v61[0]) = v8;
        WORD2(v61[0]) = 2114;
        *(v61 + 6) = v26;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}@ Finished downloading artwork from '%{public}@' (isCancelled=%{BOOL}u) error=%{public}@", buf, 0x26u);
      }
    }

    else if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *(a1 + 32);
      v31 = *(a1 + 40);
      *buf = 138543874;
      v57 = v30;
      v58 = 2114;
      v59 = v31;
      v60 = 1024;
      LODWORD(v61[0]) = v8;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished downloading artwork from '%{public}@' (isCancelled=%{BOOL}u)", buf, 0x1Cu);
    }

    v39 = *(a1 + 48);
    v40 = *(a1 + 32);
    v41 = *(a1 + 56);
    v42 = v6;
    AnalyticsSendEventLazy();
    [*(a1 + 32) setError:v42];
    [*(a1 + 32) finish];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [v5 urlResponse];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 statusCode] == 200)
    {
      v11 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        v13 = *(a1 + 40);
        *buf = 138543618;
        v57 = v12;
        v58 = 2114;
        v59 = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Downloaded artwork successfully from '%{public}@'", buf, 0x16u);
      }

      v37 = v9;

      v14 = [v5 bodyDataURL];
      v15 = [*(a1 + 32) _resizedImageDataFromLocation:v14];
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_1000D6F94;
      v50[3] = &unk_1001DD448;
      v50[4] = *(a1 + 32);
      v51 = v10;
      v16 = v14;
      v52 = v16;
      v53 = *(a1 + 48);
      v54 = *(a1 + 56);
      v55 = 0;
      v17 = objc_retainBlock(v50);
      v38 = [*(a1 + 32) musicLibrary];
      v18 = [*(a1 + 32) artworkToken];
      v36 = [*(a1 + 32) artworkType];
      v35 = [*(a1 + 32) sourceType];
      v34 = [*(a1 + 32) mediaType];
      v19 = [*(a1 + 32) variantType];
      if (v15)
      {
        v48[0] = _NSConcreteStackBlock;
        v48[1] = 3221225472;
        v48[2] = sub_1000D719C;
        v48[3] = &unk_1001DD8F0;
        v20 = &v49;
        v49 = v17;
        v21 = v17;
        LOBYTE(v33) = 0;
        [v38 importOriginalArtworkFromImageData:v15 withArtworkToken:v18 artworkType:v36 sourceType:v35 mediaType:v34 variantType:v19 shouldPerformColorAnalysis:v33 completion:v48];
      }

      else
      {
        v46[0] = _NSConcreteStackBlock;
        v46[1] = 3221225472;
        v46[2] = sub_1000D71AC;
        v46[3] = &unk_1001DD8F0;
        v20 = &v47;
        v47 = v17;
        v32 = v17;
        LOBYTE(v33) = 0;
        [v38 importOriginalArtworkFromFileURL:v16 withArtworkToken:v18 artworkType:v36 sourceType:v35 mediaType:v34 variantType:v19 shouldPerformColorAnalysis:v33 completion:v46];
      }

      v9 = v37;
    }

    else
    {
      v27 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = *(a1 + 32);
        v29 = *(a1 + 40);
        *buf = 138543874;
        v57 = v28;
        v58 = 2114;
        v59 = v29;
        v60 = 2114;
        v61[0] = v5;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%{public}@ Failed to download artwork. URL = %{public}@), response=%{public}@", buf, 0x20u);
      }

      v43 = *(a1 + 48);
      v44 = *(a1 + 32);
      v45 = *(a1 + 56);
      AnalyticsSendEventLazy();
      [*(a1 + 32) setError:0];
      [*(a1 + 32) finish];

      v16 = v43;
    }

    objc_autoreleasePoolPop(v9);
  }
}

void sub_1000D6F94(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = [*(a1 + 40) statusCode];
      v7 = [*(a1 + 32) assetURL];
      v8 = [v3 msv_description];
      *buf = 138544130;
      v17 = v5;
      v18 = 2048;
      v19 = v6;
      v20 = 2114;
      v21 = v7;
      v22 = 2114;
      v23 = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to download artwork with HTTP status code %lld (URL = %{public}@) error=%{public}@", buf, 0x2Au);
    }
  }

  v9 = +[NSFileManager defaultManager];
  [v9 removeItemAtURL:*(a1 + 48) error:0];

  v11 = *(a1 + 56);
  v12 = *(a1 + 32);
  v13 = *(a1 + 64);
  v14 = v3;
  v15 = *(a1 + 72);
  v10 = v3;
  AnalyticsSendEventLazy();
  [*(a1 + 32) setError:*(a1 + 72)];
  [*(a1 + 32) finish];
}

id sub_1000D71BC(id *a1)
{
  [a1[5] mediaType];
  v2 = NSStringFromMLMediaType();
  [a1[4] setObject:v2 forKeyedSubscript:@"mediaType"];

  [a1[6] timeIntervalSinceNow];
  v4 = [NSNumber numberWithDouble:fabs(v3)];
  [a1[4] setObject:v4 forKeyedSubscript:@"duration"];

  [a1[4] setObject:&__kCFBooleanFalse forKeyedSubscript:@"success"];
  [a1[4] setObject:&__kCFBooleanFalse forKeyedSubscript:@"isCancelled"];
  v5 = [a1[7] msv_analyticSignature];
  [a1[4] setObject:v5 forKeyedSubscript:@"errorstring"];

  v6 = a1[4];

  return v6;
}

id sub_1000D72B0(uint64_t a1)
{
  [*(a1 + 40) mediaType];
  v2 = NSStringFromMLMediaType();
  [*(a1 + 32) setObject:v2 forKeyedSubscript:@"mediaType"];

  [*(a1 + 48) timeIntervalSinceNow];
  v4 = [NSNumber numberWithDouble:fabs(v3)];
  [*(a1 + 32) setObject:v4 forKeyedSubscript:@"duration"];

  [*(a1 + 32) setObject:&__kCFBooleanFalse forKeyedSubscript:@"success"];
  v5 = [NSNumber numberWithBool:*(a1 + 64)];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:@"isCancelled"];

  v6 = [*(a1 + 56) msv_analyticSignature];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:@"errorstring"];

  v7 = *(a1 + 32);

  return v7;
}

id sub_1000D73C0(uint64_t a1)
{
  [*(a1 + 40) mediaType];
  v2 = NSStringFromMLMediaType();
  [*(a1 + 32) setObject:v2 forKeyedSubscript:@"mediaType"];

  [*(a1 + 48) timeIntervalSinceNow];
  v4 = [NSNumber numberWithDouble:fabs(v3)];
  [*(a1 + 32) setObject:v4 forKeyedSubscript:@"duration"];

  [*(a1 + 32) setObject:&__kCFBooleanTrue forKeyedSubscript:@"success"];
  v5 = [NSNumber numberWithInt:*(a1 + 56) == 0];
  [*(a1 + 32) setObject:v5 forKeyedSubscript:@"importSuccess"];

  v6 = [*(a1 + 64) msv_analyticSignature];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:@"errorstring"];

  v7 = *(a1 + 32);

  return v7;
}

void sub_1000D91D0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 writeUInt32:v3 withCode:1836413810];
  [v4 writeUInt8:*(a1 + 36) withCode:1634354764];
}

id sub_1000D9684(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = os_log_create("com.apple.amp.itunescloudd", "PlayActivity");
    v5 = 900.0;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v12 = 138543362;
      v13 = v6;
      v7 = "%{public}@ Failed to load the bag - will use default frequency";
      v8 = v4;
      v9 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, v7, &v12, v9);
    }
  }

  else
  {
    v5 = [a2 int64ValueForBagKey:@"play-activity-feed-post-frequency"];
    v4 = os_log_create("com.apple.amp.itunescloudd", "PlayActivity");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v12 = 138543618;
      v13 = v10;
      v14 = 2048;
      v15 = v5;
      v7 = "%{public}@ Retrieved flush frequency from bag value: %f";
      v8 = v4;
      v9 = 22;
      goto LABEL_6;
    }
  }

  return [*(a1 + 40) scheduleTask:@"com.apple.itunescloud.ICPlayActivityServer.flush_task" afterDelay:0 withUserData:v5];
}

void sub_1000D98FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D9920(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1000D9938(void *a1)
{
  v1 = a1[4];
  v2 = *(a1[5] + 8);
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v1 hasPendingPlayActivityEvents:v2 + 24 returningError:&obj];
  objc_storeStrong((v3 + 40), obj);
  return v4;
}

void sub_1000D99EC(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ICPlayActivityServerProtocol];
  v2 = qword_100213D20;
  qword_100213D20 = v1;

  v3 = qword_100213D20;
  v4 = objc_opt_class();
  v5 = [NSSet setWithObjects:v4, objc_opt_class(), 0];
  [v3 setClasses:v5 forSelector:"insertPlayActivityEvents:shouldFlush:withCompletionHandler:" argumentIndex:0 ofReply:0];
}

void sub_1000D9B74(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) msv_errorByRemovingUnsafeUserInfo];
  (*(v1 + 16))(v1, v2);
}

void sub_1000D9E98(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "PlayActivity");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138543618;
    v6 = v3;
    v7 = 1024;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ connection from pid %i was interrupted", &v5, 0x12u);
  }
}

void sub_1000D9F5C(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "PlayActivity");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138543618;
    v6 = v3;
    v7 = 1024;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ connection from pid %i was invalidated", &v5, 0x12u);
  }
}

void sub_1000DA314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DA348(uint64_t a1)
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v18 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v17 + 1) + 8 * v6);
      v8 = *(a1 + 40);
      v9 = *(*(a1 + 56) + 8);
      obj = *(v9 + 40);
      v10 = [v8 insertPlayActivityEvent:v7 returningError:&obj];
      objc_storeStrong((v9 + 40), obj);
      *(*(*(a1 + 48) + 8) + 24) = v10;
      if (*(*(*(a1 + 48) + 8) + 24) != 1)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (*(*(*(a1 + 48) + 8) + 24))
  {
    v11 = 1;
  }

  else if (*(*(*(a1 + 56) + 8) + 40))
  {
    v11 = 0;
  }

  else
  {
    v12 = [NSError errorWithDomain:ICErrorDomain code:0 userInfo:0];
    v13 = *(*(a1 + 56) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    v11 = *(*(*(a1 + 48) + 8) + 24);
  }

  return v11 & 1;
}

void sub_1000DA67C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000DA6A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained error];
  v4 = os_log_create("com.apple.amp.itunescloudd", "PlayActivity");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v15 = v5;
    v16 = 2114;
    v17 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ finished flushing play activity events with error %{public}@", buf, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(*(a1 + 32) + 16);
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_1000DA818;
    v11 = &unk_1001DF5A0;
    v13 = v6;
    v12 = v3;
    dispatch_async(v7, &v8);
  }

  [*(a1 + 32) _scheduleNextPlayActivityFlushOperationReplacingExisting:{1, v8, v9, v10, v11}];
}

void sub_1000DA818(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) msv_errorByRemovingUnsafeUserInfo];
  (*(v1 + 16))(v1, v2);
}

void sub_1000DACC4(id a1)
{
  qword_100213D18 = [[ICPlayActivityServer alloc] _init];

  _objc_release_x1();
}

void sub_1000DAFA8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [ICAsyncBlockOperation alloc];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1000DB144;
    v16 = &unk_1001DD7E0;
    v17 = *(a1 + 40);
    v20 = *(a1 + 48);
    v8 = v5;
    v9 = *(a1 + 32);
    v18 = v8;
    v19 = v9;
    v10 = [v7 initWithStartHandler:&v13];
    [v10 setName:{@"com.apple.itunescloudd.enhancedAudioSharedKeyRefreshOperation", v13, v14, v15, v16}];
    [*(*(a1 + 32) + 8) addOperation:v10];

    v11 = v17;
  }

  else
  {
    v11 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      *buf = 138543618;
      v22 = v12;
      v23 = 2114;
      v24 = v6;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch the bag. err=%{public}@", buf, 0x16u);
    }
  }
}

void sub_1000DB144(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = [[ICContentKeySession alloc] initWithRequestContext:*(a1 + 32)];
  [v3 setBypassCache:*(a1 + 56)];
  [v3 setRequestOfflineKeys:1];
  [v3 setAdamID:&off_1001ED780];
  [v3 setKeyServerProtocolType:1];
  v4 = a1;
  [*(a1 + 40) enhancedAudioConfiguration];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v15 = v20 = 0u;
  v5 = [v15 prefetchSKDs];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = os_log_create("com.apple.amp.itunescloudd", "Default");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(v4 + 48);
          *buf = 138543618;
          v22 = v12;
          v23 = 2114;
          v24 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Requesting refresh for key %{public}@", buf, 0x16u);
        }

        [v3 processKeyWithIdentifier:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v7);
  }

  [v3 waitForAllKeysToProcess];
  v13 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(v4 + 48);
    *buf = 138543362;
    v22 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished refreshing offline HLS keys", buf, 0xCu);
  }

  [v16 finishWithError:0];
}

void sub_1000DB3B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MSVAutoBugCaptureDomainiTunesCloud;
  v5 = [v3 identifier];
  v6 = [v3 adamID];
  v7 = [NSString stringWithFormat:@"Failed to invalidate key '%@', adamID %@", v5, v6];
  [MSVAutoBugCapture snapshotWithDomain:v4 type:@"Bug" subType:@"Key Management" context:v7 triggerThresholdValues:&stru_1001E0388 events:0 completion:0];

  v8 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = *(a1 + 32);
    v10 = [v3 identifier];
    v11 = [v3 adamID];
    *buf = 138543874;
    v13 = v9;
    v14 = 2114;
    v15 = v10;
    v16 = 2114;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@ Failed to invalidate key '%{public}@', adamID=%{public}@", buf, 0x20u);
  }
}

void sub_1000DB8F4(uint64_t a1)
{
  v2 = [ML3BitMaskPredicate predicateWithProperty:ML3TrackPropertyMediaType mask:1032 value:8];
  v16[0] = v2;
  v3 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyHasNonPurgeableAsset equalToInteger:1];
  v16[1] = v3;
  v4 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyHLSAssetTraits value:&off_1001ED780 comparison:2];
  v16[2] = v4;
  v5 = [NSArray arrayWithObjects:v16 count:3];
  v6 = [ML3AllCompoundPredicate predicateMatchingPredicates:v5];

  v7 = [ML3Track unrestrictedAllItemsQueryWithlibrary:*(a1 + 32) predicate:v6 orderingTerms:0];
  v15[0] = ML3TrackPropertyFilePath;
  v15[1] = ML3TrackPropertyTitle;
  v15[2] = ML3TrackPropertyAssetStoreItemID;
  v15[3] = ML3TrackPropertySubscriptionStoreItemID;
  v8 = [NSArray arrayWithObjects:v15 count:4];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000DC0D4;
  v12[3] = &unk_1001DD690;
  v12[4] = *(a1 + 40);
  v13 = v8;
  v11 = *(a1 + 48);
  v9 = v11;
  v14 = v11;
  v10 = v8;
  [v7 enumeratePersistentIDsAndProperties:v10 usingBlock:v12];
}

void sub_1000DBB30(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000DBBD4;
  v2[3] = &unk_1001DD708;
  objc_copyWeak(&v3, (a1 + 40));
  [v1 enumerateKeysAndObjectsUsingBlock:v2];
  objc_destroyWeak(&v3);
}

void sub_1000DBBD4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [v6 objectForKeyedSubscript:ML3TrackPropertyFilePath];
  v9 = [v6 objectForKeyedSubscript:ML3TrackPropertyTitle];
  v10 = [ML3MusicLibrary mediaFolderPathByAppendingPathComponent:v8];
  v11 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v30 = WeakRetained;
    v31 = 2114;
    v32 = v9;
    v33 = 2114;
    v34 = v5;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Fetching missing offline key for track '%{public}@' (%{public}@)", buf, 0x20u);
  }

  v12 = [ICAsyncBlockOperation alloc];
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_1000DBE38;
  v23 = &unk_1001DD6E0;
  v24 = WeakRetained;
  v25 = v6;
  v26 = v9;
  v27 = v5;
  v28 = v10;
  v13 = v10;
  v14 = v5;
  v15 = v9;
  v16 = v6;
  v17 = WeakRetained;
  v18 = [v12 initWithStartHandler:&v20];
  v19 = [NSString stringWithFormat:@"com.apple.itunescloudd.enhancedAudioOfflineKeyFetchOperation.%@]", v14, v20, v21, v22, v23];
  [v18 setName:v19];

  [v17[1] addOperation:v18];
}

void sub_1000DBE38(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 _storeRequestContext];
  v6 = [*(a1 + 40) objectForKeyedSubscript:ML3TrackPropertyAssetStoreItemID];
  if (![v6 longLongValue])
  {
    v7 = [*(a1 + 40) objectForKeyedSubscript:ML3TrackPropertySubscriptionStoreItemID];

    v6 = v7;
  }

  v8 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v21 = 138543874;
    v22 = v9;
    v23 = 2114;
    v24 = v10;
    v25 = 2114;
    v26 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Fetching offline key for track '%{public}@' (%{public}@)", &v21, 0x20u);
  }

  v12 = [[ICFileContentKeyStore alloc] initWithPath:*(a1 + 64)];
  v13 = [[ICContentKeySession alloc] initWithRequestContext:v5 keyStore:v12];
  [v13 setAdamID:v6];
  [v13 setRequestOfflineKeys:1];
  [v13 setKeyServerProtocolType:1];
  v14 = [NSURL fileURLWithPath:*(a1 + 64)];
  v15 = [AVURLAsset URLAssetWithURL:v14 options:0];

  [v13 addAsset:v15 shouldPreloadKeys:1 waitForKeyIdentifiers:1];
  [v13 waitForAllKeysToProcess];
  v16 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 32);
    v18 = *(a1 + 48);
    v19 = *(a1 + 56);
    v20 = *(a1 + 64);
    v21 = 138544130;
    v22 = v17;
    v23 = 2114;
    v24 = v18;
    v25 = 2114;
    v26 = v19;
    v27 = 2114;
    v28 = v20;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished  track %{public}@ because the file '%{public}@' (%{public}@) isn't HLS", &v21, 0x2Au);
  }

  [v4 finishWithError:0];
}

void sub_1000DC0D4(uint64_t a1, uint64_t a2, id *a3)
{
  v26 = a2;
  v5 = *a3;
  v6 = a3[1];
  v7 = [ML3MusicLibrary mediaFolderPathByAppendingPathComponent:v5];
  v35 = 1;
  v8 = +[NSFileManager defaultManager];
  v9 = [v8 fileExistsAtPath:v7 isDirectory:&v35];
  v10 = v35;

  if (v9 & v10)
  {
    v11 = [v7 pathExtension];
    v12 = ML3OfflineHLSFileExtensions();
    v13 = [v12 containsObject:v11];

    if (v13)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
      v14 = [[ICFileContentKeyStore alloc] initWithPath:v7];
      *v42 = 0;
      *&v42[8] = v42;
      *&v42[16] = 0x2020000000;
      LOBYTE(v43) = 1;
      v27 = _NSConcreteStackBlock;
      v28 = 3221225472;
      v29 = sub_1000DC528;
      v30 = &unk_1001DD668;
      v15 = *(a1 + 32);
      v33 = v42;
      v31 = v15;
      v16 = v6;
      v32 = v16;
      v34 = v26;
      [v14 enumerateKeyEntriesUsingBlock:&v27];
      if (*(*&v42[8] + 24) == 1)
      {
        v17 = os_log_create("com.apple.amp.itunescloudd", "Default");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = *(a1 + 32);
          *buf = 138543874;
          v37 = v18;
          v38 = 2114;
          v39 = v16;
          v40 = 2048;
          v41 = v26;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ Found track missing offline key: '%{public}@' (%lld)", buf, 0x20u);
        }

        v19 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [*(a1 + 40) count]);
        for (i = 0; i < [*(a1 + 40) count]; ++i)
        {
          v21 = [*(a1 + 40) objectAtIndexedSubscript:i];
          [v19 setObject:a3[i] forKey:v21];
        }

        v24 = *(a1 + 48);
        v25 = [NSNumber numberWithLongLong:v26];
        [v24 setObject:v19 forKey:v25];
      }

      _Block_object_dispose(v42, 8);
    }

    else
    {
      v14 = os_log_create("com.apple.amp.itunescloudd", "Default");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a1 + 32);
        *v42 = 138544130;
        *&v42[4] = v23;
        *&v42[12] = 2114;
        *&v42[14] = v6;
        *&v42[22] = 2048;
        v43 = v26;
        v44 = 2114;
        v45 = v7;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipping track '%{public}@' (%llu) because the file '%{public}@' isn't HLS", v42, 0x2Au);
      }
    }
  }

  else
  {
    v11 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a1 + 32);
      *v42 = 138544130;
      *&v42[4] = v22;
      *&v42[12] = 2114;
      *&v42[14] = v6;
      *&v42[22] = 2048;
      v43 = v26;
      v44 = 2114;
      v45 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipping track '%{public}@' (%llu) because the asset file '%{public}@' doesn't exist or is not a directory", v42, 0x2Au);
    }
  }
}

void sub_1000DC4FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000DC528(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 keyData];

  if (v4)
  {
LABEL_6:
    *(*(a1[6] + 8) + 24) = 0;
    goto LABEL_7;
  }

  if ([v3 failureCount] >= 5)
  {
    v5 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v7 = a1[5];
      v8 = a1[7];
      v9 = 138544130;
      v10 = v6;
      v11 = 2114;
      v12 = v7;
      v13 = 2048;
      v14 = v8;
      v15 = 2048;
      v16 = [v3 failureCount];
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipping track '%{public}@' (%llu) because the failure count of %lu exceeds the retry limit", &v9, 0x2Au);
    }

    goto LABEL_6;
  }

LABEL_7:
}

void sub_1000DD958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DD980(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000DD998(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 libraryUID];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_1000DEE04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DEE30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000DEE48(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.itunescloudd", "SDK");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v5 responseCode];
    v11 = [v5 responseData];
    v16 = 138544386;
    v17 = v9;
    v18 = 2048;
    v19 = v5;
    v20 = 2048;
    v21 = v10;
    v22 = 2048;
    v23 = [v11 length];
    v24 = 1024;
    v25 = [v5 responseCode];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Books ItemsRequest retrieved a response: <%{public}@: %p code=%ld, length=%{bytes}lu> -- Code: %d", &v16, 0x30u);
  }

  if (v6)
  {
    v12 = os_log_create("com.apple.amp.itunescloudd", "SDK");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = 138543362;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Books ItemsRequest failed with error: %{public}@", &v16, 0xCu);
    }
  }

  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v5;
  v15 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000DF0D0(id a1)
{
  qword_100213D40 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ICMediaLibraryAccessPermissionsHelper];

  _objc_release_x1();
}

void sub_1000DF1FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (*(a1 + 32))
  {
    [v3 setIdentity:?];
  }

  else
  {
    v4 = +[ICUserIdentity activeAccount];
    [v7 setIdentity:v4];
  }

  if (*(a1 + 40))
  {
    [v7 setClientInfo:?];
  }

  else
  {
    v5 = +[ICClientInfo defaultInfo];
    [v7 setClientInfo:v5];
  }

  v6 = [[ICStoreURLResponseAuthenticationProvider alloc] initWithUserInteractionLevel:1];
  [v7 setAuthenticationProvider:v6];

  [v7 setAllowsExpiredBags:1];
}

void sub_1000DF440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000DF460(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[1];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000DF4EC;
    block[3] = &unk_1001DF578;
    block[4] = v2;
    dispatch_barrier_async(v3, block);
  }
}

void sub_1000DF790(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = v3;
  if (*(a1 + 32))
  {
    [v3 setIdentity:?];
  }

  else
  {
    v4 = +[ICUserIdentity activeAccount];
    [v10 setIdentity:v4];
  }

  v5 = [[ICStoreURLResponseAuthenticationProvider alloc] initWithUserInteractionLevel:1];
  [v10 setAuthenticationProvider:v5];

  [v10 setAllowsExpiredBags:1];
  [v10 setPersonalizationStyle:2];
  v6 = +[ICClientInfo defaultInfo];
  v7 = [v6 mutableCopy];

  if (*(a1 + 40))
  {
    v8 = [[ICClientInfo alloc] initWithBundleIdentifier:*(a1 + 40)];
    [v7 setRequestingBundleIdentifier:*(a1 + 40)];
    v9 = [v8 clientVersion];
    [v7 setRequestingBundleVersion:v9];
  }

  [v10 setClientInfo:v7];
}

void sub_1000DFAB4(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = a2;
    v5 = [NSSet setWithObject:v3];
    [v2 _registerFailureToRevokeMusicUserTokensForApplicationsWithIdentifiers:v5 error:v4];
  }
}

void sub_1000DFD0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 urlForBagKey:ICURLBagKeyRevokeMusicUserTokenURL];
  if (v6)
  {
    v7 = [NSMutableURLRequest requestWithURL:v6];
    [v7 setHTTPMethod:@"POST"];
    v8 = objc_alloc_init(NSMutableDictionary);
    v9 = [*(a1 + 48) deviceInfo];
    v10 = [v9 deviceGUID];

    if (v10)
    {
      [v8 setObject:v10 forKey:@"guid"];
    }

    v11 = [NSJSONSerialization dataWithJSONObject:v8 options:0 error:0];
    if (v11)
    {
      [v7 setHTTPBody:v11];
      [v7 setValue:ICHTTPHeaderContentTypeJSON forHTTPHeaderField:ICHTTPHeaderKeyContentType];
    }

    v12 = [[ICStoreURLRequest alloc] initWithURLRequest:v7 requestContext:*(a1 + 48)];
    v13 = +[ICURLSessionManager defaultSession];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000E000C;
    v21[3] = &unk_1001DDFE0;
    v20 = *(a1 + 32);
    v14 = *(&v20 + 1);
    v15 = *(a1 + 56);
    v16 = *(a1 + 64);
    *&v17 = v15;
    *(&v17 + 1) = v16;
    v22 = v20;
    v23 = v17;
    [v13 enqueueDataRequest:v12 withCompletionHandler:v21];
  }

  else
  {
    if (v5)
    {
      v18 = v5;
    }

    else
    {
      v18 = [NSError errorWithDomain:ICErrorDomain code:-7201 userInfo:0];
    }

    v7 = v18;
    v19 = os_log_create("com.apple.amp.itunescloudd", "SDK");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v25 = v7;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to load revocation url from bag. err=%{public}@", buf, 0xCu);
    }

    [*(a1 + 32) _registerFailureToRevokeMusicUserTokensForApplicationIdentifier:*(a1 + 40) error:v7];
    (*(*(a1 + 64) + 16))();
  }
}

void sub_1000E000C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.itunescloudd", "Default");
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = [v4 msv_description];
      v14 = 138544130;
      v15 = v7;
      v16 = 2114;
      v17 = v8;
      v18 = 2114;
      v19 = v9;
      v20 = 2114;
      v21 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@ Completed revocation of music kit user tokens for application '%{public}@' and user identity %{public}@ error=%{public}@", &v14, 0x2Au);
    }

    [*(a1 + 32) _registerFailureToRevokeMusicUserTokensForApplicationIdentifier:*(a1 + 40) error:v4];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      v14 = 138543874;
      v15 = v11;
      v16 = 2114;
      v17 = v12;
      v18 = 2114;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Completed revocation of music kit user tokens for application '%{public}@' and user identity %{public}@", &v14, 0x20u);
    }
  }

  (*(*(a1 + 56) + 16))();
}

void sub_1000E07F8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 msv_errorByRemovingUnsafeUserInfo];
  (*(v2 + 16))(v2, v3);
}

void sub_1000E0E1C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v3 = [NSNumber numberWithInt:*(a1 + 56)];
  v7 = [v2 objectForKeyedSubscript:v3];

  if (!v7)
  {
    v7 = +[NSMutableArray array];
    v4 = *(*(a1 + 32) + 40);
    v5 = [NSNumber numberWithInt:*(a1 + 56)];
    [v4 setObject:v7 forKeyedSubscript:v5];

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v6 = objc_retainBlock(*(a1 + 40));
  [v7 addObject:v6];
}

void sub_1000E0F10(uint64_t a1)
{
  AnalyticsSendEvent();
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000E0FDC;
  v6[3] = &unk_1001DD8C8;
  v7 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v8 = v4;
  v9 = v5;
  v10 = *(a1 + 64);
  [v2 _displayNotificationForBuilder:v3 withReplyBlock:v6];
}

void sub_1000E0FDC(uint64_t a1, int a2, void *a3)
{
  v20 = a1;
  v4 = a3;
  v5 = os_log_create("com.apple.amp.itunescloudd", "SDK");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (a2)
  {
    if (v6)
    {
      v7 = *(v20 + 32);
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "User accepted to renew premissions for all expired bundle identifiers %{public}@", &buf, 0xCu);
    }

    TCCExpirationResetService();
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = *(v20 + 32);
    v8 = [obj countByEnumeratingWithState:&v28 objects:v40 count:16];
    if (v8)
    {
      v9 = *v29;
      do
      {
        v10 = 0;
        do
        {
          if (*v29 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v28 + 1) + 8 * v10);
          v38 = kTCCSetNoKill;
          v39 = &__kCFBooleanTrue;
          [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1, v20];
          TCCAccessSetForBundleIdWithOptions();
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [obj countByEnumeratingWithState:&v28 objects:v40 count:16];
      }

      while (v8);
    }
  }

  else
  {
    if (v6)
    {
      v12 = *(v20 + 40);
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v12;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "User rejected to renew premissions for all expired bundle identifiers, resetting for %{public}@", &buf, 0xCu);
    }

    v13 = *(v20 + 40);
    TCCExpirationResetServiceForBundleIdentifier();
  }

  AnalyticsSendEvent();
  *&buf = 0;
  *(&buf + 1) = &buf;
  v34 = 0x3032000000;
  v35 = sub_1000E13B0;
  v36 = sub_1000E13C0;
  v37 = 0;
  v14 = *(v20 + 48);
  v15 = *(v14 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E13C8;
  block[3] = &unk_1001DD8A0;
  block[4] = v14;
  block[5] = &buf;
  v27 = *(v20 + 56);
  dispatch_barrier_sync(v15, block);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v16 = *(*(&buf + 1) + 40);
  v17 = [v16 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v17)
  {
    v18 = *v23;
    do
    {
      v19 = 0;
      do
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v16);
        }

        (*(*(*(&v22 + 1) + 8 * v19) + 16))();
        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [v16 countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v17);
  }

  _Block_object_dispose(&buf, 8);
}

uint64_t sub_1000E13B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000E13C8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v3 = [NSNumber numberWithInt:*(a1 + 48)];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(a1 + 32) + 40);
  v8 = [NSNumber numberWithInt:*(a1 + 48)];
  [v7 setObject:0 forKeyedSubscript:v8];
}

void sub_1000E1654(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138543874;
    v6 = v3;
    v7 = 1024;
    v8 = v4;
    v9 = 2114;
    v10 = @"com.apple.itunescloudd.tcchelper";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ connection from pid %i was interrupted for service %{public}@.", &v5, 0x1Cu);
  }
}

void sub_1000E172C(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138543874;
    v6 = v3;
    v7 = 1024;
    v8 = v4;
    v9 = 2114;
    v10 = @"com.apple.itunescloudd.tcchelper";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ connection from pid %i was invalidated for service %{public}@.", &v5, 0x1Cu);
  }
}

void sub_1000E1C9C(id a1)
{
  qword_100213D30 = [[MediaLibraryAccessRevocationController alloc] _init];

  _objc_release_x1();
}

void sub_1000E2D14(id a1, NSError *a2)
{
  v2 = a2;
  v3 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "initiated a keep local session for pins with error=%{public}@", &v4, 0xCu);
  }
}

void sub_1000E2DCC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "could not initiate a keep local session for pinned items. error=%{public}@", &v4, 0xCu);
  }
}

void sub_1000E2FB4(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) count])
  {
    v5 = 0;
    v6 = ICPushNotificationMessage_ptr;
    *&v4 = 134217984;
    v37 = v4;
    do
    {
      v7 = [*(a1 + 32) objectAtIndexedSubscript:{v5, v37}];
      v8 = [v7 longLongValue];

      v9 = [*(a1 + 40) objectAtIndexedSubscript:v5];
      v10 = [v9 integerValue];

      if (v10 > 3)
      {
        if (v10 == 4)
        {
          v45[0] = &off_1001ED798;
          v29 = [NSNumber numberWithLongLong:v8];
          v45[1] = v29;
          v30 = [v6[314] arrayWithObjects:v45 count:2];
          v39 = 0;
          v31 = [v3 executeUpdate:@"UPDATE album set keep_local=? WHERE album_pid=?" withParameters:v30 error:&v39];
          v14 = v39;

          if (!v31)
          {
            v19 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218242;
              v50 = v8;
              v51 = 2114;
              v52 = v14;
              v35 = v19;
              v36 = "Could not set keep local on albumPID=%lld, error=%{public}@";
LABEL_30:
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, v36, buf, 0x16u);
            }

LABEL_31:
            v18 = v14;
            goto LABEL_32;
          }

          v44[0] = &off_1001ED7C8;
          v44[1] = &off_1001ED7B0;
          v44[2] = &off_1001ED7C8;
          v32 = [NSNumber numberWithLongLong:v8];
          v44[3] = v32;
          v33 = [v6[314] arrayWithObjects:v44 count:4];
          v38 = v14;
          v34 = [v3 executeUpdate:@"UPDATE item set keep_local=? withParameters:keep_local_constraints=? WHERE (in_my_library AND keep_local < ? AND album_pid=?)" error:{v33, &v38}];
          v18 = v38;

          if ((v34 & 1) == 0)
          {
            v19 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
            if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_32;
            }

            *buf = 134218242;
            v50 = v8;
            v51 = 2114;
            v52 = v18;
            v20 = v19;
            v21 = "Could not set keep local for album items (albumPID=%lld), error=%{public}@";
            goto LABEL_25;
          }
        }

        else
        {
          if (v10 != 7)
          {
LABEL_15:
            v19 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = v37;
              v50 = v8;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Could not set keep local on unknown type PID=%lld", buf, 0xCu);
            }

            v18 = 0;
            goto LABEL_32;
          }

          v48[0] = &off_1001ED798;
          v48[1] = &off_1001ED7B0;
          v48[2] = &off_1001ED7C8;
          v22 = [NSNumber numberWithLongLong:v8];
          v48[3] = v22;
          v23 = [NSNumber numberWithUnsignedInt:*(a1 + 48)];
          v48[4] = v23;
          v24 = [v6[314] arrayWithObjects:v48 count:5];
          v42 = 0;
          v25 = [v3 executeUpdate:@"UPDATE item set keep_local=? withParameters:keep_local_constraints=? WHERE (in_my_library AND keep_local <= ? AND item.album_artist_pid=? AND media_type & ? != 0)" error:{v24, &v42}];
          v18 = v42;

          if ((v25 & 1) == 0)
          {
            v19 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218242;
              v50 = v8;
              v51 = 2114;
              v52 = v18;
              v20 = v19;
              v21 = "Could not set keep local on tracks with albumArtistPID=%lld, error=%{public}@";
              goto LABEL_25;
            }

LABEL_32:
          }
        }
      }

      else if (v10)
      {
        if (v10 != 1)
        {
          goto LABEL_15;
        }

        v47[0] = &off_1001ED798;
        v11 = [NSNumber numberWithLongLong:v8];
        v47[1] = v11;
        v12 = [v6[314] arrayWithObjects:v47 count:2];
        v41 = 0;
        v13 = [v3 executeUpdate:@"UPDATE container set keep_local=? WHERE container_pid=?" withParameters:v12 error:&v41];
        v14 = v41;

        if (!v13)
        {
          v19 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218242;
            v50 = v8;
            v51 = 2114;
            v52 = v14;
            v35 = v19;
            v36 = "Could not set keep local on containerPID=%lld, error=%{public}@";
            goto LABEL_30;
          }

          goto LABEL_31;
        }

        v46[0] = &off_1001ED7C8;
        v46[1] = &off_1001ED7B0;
        v46[2] = &off_1001ED7C8;
        v15 = [NSNumber numberWithLongLong:v8];
        v46[3] = v15;
        v16 = [v6[314] arrayWithObjects:v46 count:4];
        v40 = v14;
        v17 = [v3 executeUpdate:@"UPDATE item set keep_local=? withParameters:keep_local_constraints=? WHERE keep_local < ? AND item_pid IN (SELECT item_pid FROM container_item WHERE container_pid=?)" error:{v16, &v40}];
        v18 = v40;

        if ((v17 & 1) == 0)
        {
          v19 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218242;
            v50 = v8;
            v51 = 2114;
            v52 = v18;
            v20 = v19;
            v21 = "Could not set keep local for container items (containerPID=%lld), error=%{public}@";
            goto LABEL_25;
          }

          goto LABEL_32;
        }
      }

      else
      {
        v53[0] = &off_1001ED798;
        v53[1] = &off_1001ED7B0;
        v26 = [NSNumber numberWithLongLong:v8];
        v53[2] = v26;
        v53[3] = &off_1001ED7C8;
        v27 = [v6[314] arrayWithObjects:v53 count:4];
        v43 = 0;
        v28 = [v3 executeUpdate:@"UPDATE item set keep_local=? withParameters:keep_local_constraints=? WHERE (item_pid=? AND keep_local <= ?)" error:{v27, &v43}];
        v18 = v43;

        if ((v28 & 1) == 0)
        {
          v19 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_32;
          }

          *buf = 134218242;
          v50 = v8;
          v51 = 2114;
          v52 = v18;
          v20 = v19;
          v21 = "Could not set keep local on trackPID=%lld, error=%{public}@";
LABEL_25:
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, v21, buf, 0x16u);
          goto LABEL_32;
        }
      }

      ++v5;
      v6 = ICPushNotificationMessage_ptr;
    }

    while ([*(a1 + 32) count] > v5);
  }
}

void sub_1000E3938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E396C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000E3984(uint64_t a1, void *a2)
{
  v3 = [a2 executeQuery:{@"SELECT entity_pid, entity_type FROM library_pins ORDER BY position"}];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000E3A1C;
  v4[3] = &unk_1001DD988;
  v5 = *(a1 + 32);
  [v3 enumerateRowsWithBlock:v4];
}

void sub_1000E3A1C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 int64ForColumnIndex:0];
  v5 = [v3 intForColumnIndex:1];

  v6 = v5;
  v7 = *(*(*(a1 + 32) + 8) + 40);
  v8 = [NSNumber numberWithLongLong:v4];
  [v7 addObject:v8];

  v9 = *(*(*(a1 + 40) + 8) + 40);
  v10 = [NSNumber numberWithInteger:v6];
  [v9 addObject:v10];
}

id sub_1000E418C(uint64_t a1)
{
  [*(a1 + 32) _savePendingChanges:0];
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000E4250;
    block[3] = &unk_1001DF5C8;
    v6 = v2;
    dispatch_async(v3, block);
  }

  return [*(a1 + 40) endTransaction];
}

void sub_1000E4428(id *a1)
{
  v2 = a1 + 4;
  v3 = [a1[4] _pendingChanges];
  v4 = [v3 count];
  v5 = *(*v2 + 4);
  v6 = [objc_opt_class() logCategory];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v8 = a1[4];
    *buf = 138543874;
    *&buf[4] = v8;
    *&buf[12] = 2048;
    *&buf[14] = v4;
    *&buf[22] = 2114;
    v44 = v3;
    v9 = "%{public}@ Processing %lu pending changes: %{public}@";
    v10 = v6;
    v11 = 32;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v12 = a1[4];
    *buf = 138543362;
    *&buf[4] = v12;
    v9 = "%{public}@  No pending changes to process.";
    v10 = v6;
    v11 = 12;
  }

  _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
LABEL_7:

  v13 = [v3 mutableCopy];
  v14 = objc_alloc_init(NSOperationQueue);
  [v14 setName:@"com.apple.itunescloudd.CloudPendingChangesCoordinator.operationQueue"];
  [v14 setMaxConcurrentOperationCount:1];
  [v14 setQualityOfService:-1];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2810000000;
  v44 = "";
  v45 = 0;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v3;
  v15 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v15)
  {
    v17 = *v35;
    *&v16 = 138543618;
    v28 = v16;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v35 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v34 + 1) + 8 * i);
        v20 = *(a1[4] + 4);
        v21 = [objc_opt_class() logCategory];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = a1[4];
          *v38 = v28;
          v39 = v22;
          v40 = 2114;
          v41 = v19;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ Enqueueing pending change operation %{public}@", v38, 0x16u);
        }

        v23 = [a1[5] underlyingConnection];
        [v19 setConnection:v23];

        objc_initWeak(v38, v19);
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_1000E48C0;
        v30[3] = &unk_1001DDA40;
        objc_copyWeak(&v33, v38);
        v32 = buf;
        v31 = v13;
        [v19 setCompletionBlock:v30];
        [v14 addOperation:v19];

        objc_destroyWeak(&v33);
        objc_destroyWeak(v38);
      }

      v15 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v15);
  }

  [v14 waitUntilAllOperationsAreFinished];
  if ([v13 count])
  {
    v24 = *(a1[4] + 4);
    v25 = [objc_opt_class() logCategory];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = a1[4];
      v27 = [v13 count];
      *v38 = 138543618;
      v39 = v26;
      v40 = 2048;
      v41 = v27;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ %lu pending changes failed again, persisting for another time.", v38, 0x16u);
    }
  }

  [a1[4] _savePendingChanges:{v13, v28}];
  [a1[6] endTransaction];
  _Block_object_dispose(buf, 8);
}

void sub_1000E48C0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained status] != 2)
  {
    os_unfair_lock_lock((*(*(a1 + 40) + 8) + 32));
    [*(a1 + 32) removeObject:WeakRetained];
    os_unfair_lock_unlock((*(*(a1 + 40) + 8) + 32));
  }
}

void sub_1000E4AF8(uint64_t a1)
{
  v2 = [*(a1 + 32) _pendingChanges];
  v4 = [v2 mutableCopy];

  v3 = v4;
  if (!v4)
  {
    v3 = [[NSMutableArray alloc] initWithCapacity:1];
  }

  v5 = v3;
  [v3 addObject:*(a1 + 40)];
  [*(a1 + 32) _savePendingChanges:v5];
  [*(a1 + 48) endTransaction];
}

id sub_1000E4DF8()
{
  v0 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v1 = [v0 lastObject];

  v6[0] = v1;
  v6[1] = @"com.apple.itunescloudd";
  v2 = [NSArray arrayWithObjects:v6 count:2];
  v3 = [NSString pathWithComponents:v2];

  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    [NSException raise:NSInternalInconsistencyException format:@"unable to create cache directory"];
    v4 = 0;
  }

  return v4;
}

id sub_1000E4F18()
{
  v0 = sub_1000E4DF8();
  v1 = [v0 stringByAppendingPathComponent:@"ArtworkDownloads"];

  return v1;
}

uint64_t sub_1000E54B0(void *a1, char a2, void *a3)
{
  v5 = a1;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = sub_1000E5AD0;
  v55 = sub_1000E5AE0;
  v56 = 0;
  v6 = [v5 userIdentity];
  v7 = [ML3MusicLibrary musicLibraryForUserAccount:v6];

  v8 = [v7 sagaCloudLibraryCUID];
  v9 = [v7 sagaCloudLibraryTroveID];
  if ([v8 length] && objc_msgSend(v9, "length"))
  {
    v10 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Device is already registered with CUID and TroveID", buf, 2u);
    }

    *(v58 + 24) = 1;
  }

  if ((v58[3] & 1) == 0)
  {
    v11 = [ICStoreRequestContext alloc];
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_1000E5AE8;
    v48[3] = &unk_1001DDA68;
    v49 = v5;
    v50 = a2;
    v12 = [v11 initWithBlock:v48];
    *buf = 0;
    v43 = buf;
    v44 = 0x3032000000;
    v45 = sub_1000E5AD0;
    v46 = sub_1000E5AE0;
    v47 = 0;
    v13 = dispatch_semaphore_create(0);
    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = sub_1000E5AD0;
    v40 = sub_1000E5AE0;
    v41 = 0;
    v14 = +[ICURLBagProvider sharedBagProvider];
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000E5BF0;
    v32[3] = &unk_1001DE320;
    v34 = &v36;
    v35 = buf;
    v15 = v13;
    v33 = v15;
    [v14 getBagForRequestContext:v12 withCompletionHandler:v32];

    dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
    if (*(v43 + 5))
    {
      v16 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(v43 + 5);
        *v61 = 138543362;
        v62 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Failed to load url bag. err=%{public}@", v61, 0xCu);
      }
    }

    else
    {
      v16 = [v37[5] urlForBagKey:ICURLBagKeyCloudAddComputer];
      v18 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      if (v16)
      {
        if (v19)
        {
          *v61 = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Sending request to register device", v61, 2u);
        }

        v20 = dispatch_semaphore_create(0);
        v26 = [[ICStoreURLRequest alloc] initWithURL:v16 requestContext:v12];
        v21 = +[ICURLSessionManager defaultSession];
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_1000E5C8C;
        v27[3] = &unk_1001DDA90;
        v28 = v7;
        v30 = &v57;
        v31 = &v51;
        v22 = v20;
        v29 = v22;
        [v21 enqueueDataRequest:v26 withCompletionHandler:v27];

        dispatch_semaphore_wait(v22, 0xFFFFFFFFFFFFFFFFLL);
      }

      else
      {
        if (v19)
        {
          *v61 = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Failed to register device because url bag is missing the 'cloud-add-computer' key", v61, 2u);
        }

        v23 = [NSError errorWithDomain:ICErrorDomain code:-7201 userInfo:0];
        v22 = v52[5];
        v52[5] = v23;
      }
    }

    _Block_object_dispose(&v36, 8);
    _Block_object_dispose(buf, 8);
  }

  if (a3)
  {
    *a3 = v52[5];
  }

  v24 = *(v58 + 24);

  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v57, 8);

  return v24 & 1;
}

void sub_1000E5A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 208), 8);
  _Block_object_dispose((v31 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E5AD0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000E5AE8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 userIdentity];
  [v4 setIdentity:v5];

  v6 = [*(a1 + 32) userIdentityStore];
  [v4 setIdentityStore:v6];

  v7 = +[ICClientInfo defaultInfo];
  [v4 setClientInfo:v7];

  v8 = [ICStoreURLResponseAuthenticationProvider alloc];
  if (*(a1 + 40))
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  v10 = [v8 initWithUserInteractionLevel:v9];
  [v4 setAuthenticationProvider:v10];

  v11 = objc_alloc_init(ICStoreDialogResponseHandler);
  [v4 setStoreDialogResponseHandler:v11];
}

void sub_1000E5BF0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000E5C8C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138543362;
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to register device. err=%{public}@", &v18, 0xCu);
    }
  }

  else
  {
    v7 = [v5 bodyData];
    v8 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134217984;
      v19 = [v7 length];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received response (length = %{bytes}lu)", &v18, 0xCu);
    }

    v9 = [v5 parsedBodyDictionary];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138543362;
        v19 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Register device response: %{public}@", &v18, 0xCu);
      }

      v11 = [v9 objectForKey:@"cloud-info"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [v11 objectForKey:@"cuid"];
        v13 = [v11 objectForKey:@"troveid"];
        if ([v12 length] && objc_msgSend(v13, "length"))
        {
          v14 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v18 = 138543618;
            v19 = v12;
            v20 = 2114;
            v21 = v13;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Successfully registered device (CUID: %{public}@, TroveID: %{public}@)", &v18, 0x16u);
          }

          [*(a1 + 32) setSagaCloudLibraryCUID:v12];
          [*(a1 + 32) setSagaCloudLibraryTroveID:v13];
          *(*(*(a1 + 48) + 8) + 24) = 1;
        }
      }
    }

    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      v15 = [NSError ic_cloudClientErrorWithCode:2022 userInfo:0];
      v16 = *(*(a1 + 56) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_1000E5FD8(int a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (MSVDeviceOSIsInternalInstall())
  {
    v78 = a3;
    v82 = v19;
    v83 = v18;
    v20 = objc_alloc_init(NSFileManager);
    v21 = off_1001DDC50[a1];
    v22 = MSVMediaLoggingDirectory();
    v93[0] = v22;
    v93[1] = @"DaapDebugging";
    v93[2] = v21;
    v23 = [NSArray arrayWithObjects:v93 count:3];
    v24 = [NSURL fileURLWithPathComponents:v23];

    v25 = [v24 URLByAppendingPathComponent:@"Initial" isDirectory:1];
    v80 = v15;
    v81 = v17;
    v84 = v16;
    v79 = v24;
    if (a2)
    {
      v76 = a2;
      v26 = +[NSMutableDictionary dictionary];
      v27 = NSURLIsDirectoryKey;
      v92[0] = NSURLIsDirectoryKey;
      v92[1] = NSURLCreationDateKey;
      v28 = [NSArray arrayWithObjects:v92 count:2];
      v77 = v20;
      v29 = v20;
      v30 = v26;
      v31 = [v29 enumeratorAtURL:v24 includingPropertiesForKeys:v28 options:4 errorHandler:0];

      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v32 = v31;
      v33 = [v32 countByEnumeratingWithState:&v87 objects:v91 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v88;
        do
        {
          for (i = 0; i != v34; i = i + 1)
          {
            if (*v88 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = *(*(&v87 + 1) + 8 * i);
            if (([v37 ic_referencesSameFile:v25] & 1) == 0)
            {
              v86 = 0;
              v38 = [v37 getResourceValue:&v86 forKey:v27 error:0];
              v39 = v86;
              v40 = v39;
              if (v38 && [v39 BOOLValue])
              {
                v41 = v32;
                v42 = v25;
                v43 = v30;
                v85 = 0;
                v44 = [v37 getResourceValue:&v85 forKey:NSURLCreationDateKey error:0];
                v45 = v85;
                if ((v44 & 1) == 0)
                {
                  v46 = +[NSDate distantPast];

                  v45 = v46;
                }

                v30 = v43;
                [v43 setObject:v37 forKey:v45];

                v25 = v42;
                v32 = v41;
                v27 = NSURLIsDirectoryKey;
              }
            }
          }

          v34 = [v32 countByEnumeratingWithState:&v87 objects:v91 count:16];
        }

        while (v34);
      }

      v15 = v80;
      if ([v30 count] >= 4)
      {
        v47 = [v30 allKeys];
        v48 = [v47 sortedArrayUsingComparator:&stru_1001DDAD0];

        if ([v48 count] != 3)
        {
          v49 = 0;
          do
          {
            v50 = [v48 objectAtIndex:v49];
            v51 = [v30 objectForKey:v50];

            [v77 removeItemAtURL:v51 error:0];
            ++v49;
          }

          while (v49 < [v48 count] - 3);
        }
      }

      v52 = [NSString stringWithFormat:@"Revision_%u_to_%u", v76, v78];
      v53 = [v79 URLByAppendingPathComponent:v52 isDirectory:1];

      v20 = v77;
    }

    else
    {
      [v20 removeItemAtURL:v24 error:0];
      v53 = v25;
    }

    [v20 createDirectoryAtURL:v53 withIntermediateDirectories:1 attributes:0 error:0];
    if ([v15 count])
    {
      v54 = 0;
      do
      {
        v55 = [v15 objectAtIndex:v54];
        v56 = [NSString stringWithFormat:@"track_data_%lu.daap", ++v54];
        v57 = [v53 URLByAppendingPathComponent:v56 isDirectory:0];

        [v20 copyItemAtURL:v55 toURL:v57 error:0];
      }

      while (v54 < [v15 count]);
    }

    v58 = v84;
    if ([v84 count])
    {
      v59 = 0;
      do
      {
        v60 = [v58 objectAtIndex:v59];
        v61 = [NSString stringWithFormat:@"playlist_data_%lu.daap", ++v59];
        v62 = [v53 URLByAppendingPathComponent:v61 isDirectory:0];

        [v20 copyItemAtURL:v60 toURL:v62 error:0];
        v58 = v84;
      }

      while (v59 < [v84 count]);
    }

    v63 = v83;
    if ([v83 count])
    {
      v64 = 0;
      do
      {
        v65 = [v63 objectAtIndex:v64];
        v66 = [NSString stringWithFormat:@"album_data_%lu.daap", ++v64];
        v67 = [v53 URLByAppendingPathComponent:v66 isDirectory:0];

        [v20 copyItemAtURL:v65 toURL:v67 error:0];
        v63 = v83;
      }

      while (v64 < [v83 count]);
    }

    if ([v81 count])
    {
      v68 = 0;
      do
      {
        v69 = [v81 objectAtIndex:v68];
        v70 = [NSString stringWithFormat:@"artist_data_%lu.daap", ++v68];
        v71 = [v53 URLByAppendingPathComponent:v70 isDirectory:0];

        [v20 copyItemAtURL:v69 toURL:v71 error:0];
      }

      while (v68 < [v81 count]);
    }

    v19 = v82;
    if ([v82 count])
    {
      v72 = 0;
      do
      {
        v73 = [v19 objectAtIndex:v72];
        v74 = [NSString stringWithFormat:@"pins_data_%lu.daap", ++v72];
        v75 = [v53 URLByAppendingPathComponent:v74 isDirectory:0];

        v19 = v82;
        [v20 copyItemAtURL:v73 toURL:v75 error:0];
      }

      while (v72 < [v82 count]);
    }

    v18 = v83;
    v16 = v84;
    v15 = v80;
    v17 = v81;
  }
}

void sub_1000E6784(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [NSNumber numberWithBool:v3];
  [v4 setMergeToCloudLibraryPreference:v5];

  v6 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8[0] = 67109120;
    v8[1] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Updating mergeToICMLPreference to %d for activeLockerAccount", v8, 8u);
  }
}

void sub_1000E687C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000E695C;
    v7[3] = &unk_1001DF5A0;
    v9 = v5;
    v8 = v4;
    dispatch_async(v6, v7);
  }
}

void sub_1000E6970(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a4;
  v10 = [v7 userIdentityStore];
  v11 = [v7 userIdentity];
  v12 = +[NSDate date];
  v46[0] = 0;
  v13 = [v10 getPropertiesForUserIdentity:v11 error:v46];
  v14 = v46[0];
  if (!v14 && v13)
  {
    v25 = v12;
    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = sub_1000E5AD0;
    v41 = sub_1000E5AE0;
    v15 = [v13 cloudLibraryStateReason];
    v42 = [v15 mutableCopy];

    v16 = @"AutoEnableCloudLibraryFailureReasonKey";
    if (a3 == 1)
    {
      v16 = @"EnableCloudLibraryFailureReasonKey";
    }

    v17 = v16;
    v24 = [v38[5] objectForKey:v17];
    if (v38[5] && ([v24 isEqualToNumber:v8] & 1) != 0)
    {
      if (!v9)
      {
LABEL_13:

        _Block_object_dispose(&v37, 8);
        v12 = v25;
        goto LABEL_14;
      }

      v23 = v17;
      v18 = v8;
      v19 = dispatch_get_global_queue(0, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000E7044;
      block[3] = &unk_1001DF5A0;
      v20 = &v28;
      v21 = &v27;
      v27 = 0;
      v28 = v9;
      dispatch_async(v19, block);
    }

    else
    {
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_1000E6D8C;
      v34[3] = &unk_1001DDC00;
      v36[1] = &v37;
      v35 = v8;
      v36[0] = v17;
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_1000E6E4C;
      v29[3] = &unk_1001DDB60;
      v33 = &v37;
      v30 = v7;
      v31 = v12;
      v32 = v9;
      [v10 insertPropertiesForUserIdentity:v11 andPostAccountChangeNotification:0 usingBlock:v34 completionHandler:v29];
      v23 = v17;
      v18 = v8;
      v20 = &v35;
      v21 = v36;

      v19 = v30;
    }

    v8 = v18;
    v17 = v23;
    goto LABEL_13;
  }

  if (v9)
  {
    v22 = dispatch_get_global_queue(0, 0);
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_1000E6D78;
    v43[3] = &unk_1001DF5A0;
    v45 = v9;
    v44 = v14;
    dispatch_async(v22, v43);
  }

LABEL_14:
}

void sub_1000E6D8C(void *a1, void *a2)
{
  v3 = *(*(a1[6] + 8) + 40);
  v4 = a1[4];
  v5 = a1[5];
  v6 = a2;
  if (v3)
  {
    [v3 setObject:v4 forKey:v5];
  }

  else
  {
    v7 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v4, v5, 0];
    v8 = *(a1[6] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  [a2 setCloudLibraryStateReason:*(*(a1[6] + 8) + 40)];
}

void sub_1000E6E4C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(*(a1 + 56) + 8) + 40);
    v7 = [*(a1 + 32) userIdentity];
    v8 = [v7 accountDSID];
    v9 = +[NSDate date];
    [v9 timeIntervalSinceDate:*(a1 + 40)];
    *buf = 138544130;
    v18 = v6;
    v19 = 2114;
    v20 = v8;
    v21 = 2114;
    v22 = v4;
    v23 = 2048;
    v24 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_CloudLibraryUtilitiesUpdateUserIdentityWithReason finished updating (cloudLibraryStateReason=%{public}@) for account [%{public}@] with error=%{public}@ in %f seconds", buf, 0x2Au);
  }

  if (!v4)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, ICCloudClientEnableCloudLibraryFailureTypeChangedNotification, 0, 0, 1u);
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    v13 = dispatch_get_global_queue(0, 0);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000E7058;
    v14[3] = &unk_1001DF5A0;
    v16 = v12;
    v15 = v4;
    dispatch_async(v13, v14);
  }
}

void sub_1000E706C(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v7 = [NSNumber numberWithInteger:a2];
  sub_1000E6970(v6, v7, 2, v5);
}

void sub_1000E7110(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = a2;
  [v3 removeObjectForKey:@"EnableCloudLibraryFailureReasonKey"];
  [*(*(*(a1 + 32) + 8) + 40) removeObjectForKey:@"AutoEnableCloudLibraryFailureReasonKey"];
  [v4 setCloudLibraryStateReason:*(*(*(a1 + 32) + 8) + 40)];
}

void sub_1000E719C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(a1[7] + 8) + 40);
    v7 = a1[4];
    v8 = +[NSDate date];
    [v8 timeIntervalSinceDate:a1[5]];
    *buf = 138544130;
    v16 = v6;
    v17 = 2114;
    v18 = v7;
    v19 = 2114;
    v20 = v4;
    v21 = 2048;
    v22 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CloudLibraryUtilitiesUpdateAccountRemoveEnableICMLErrorReason finished updating (cloudLibraryStateReason=%{public}@) for %{public}@ with error=%{public}@ in %f seconds", buf, 0x2Au);
  }

  v10 = a1[6];
  if (v10)
  {
    v11 = dispatch_get_global_queue(0, 0);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000E735C;
    v12[3] = &unk_1001DF5A0;
    v14 = v10;
    v13 = v4;
    dispatch_async(v11, v12);
  }
}

void sub_1000E7384(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [NSNumber numberWithInteger:v4];
  if (v3)
  {
    [v3 setObject:v6 forKey:@"CloudLibraryStateReasonKey"];
  }

  else
  {
    v7 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v6, @"CloudLibraryStateReasonKey", 0];
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  [a2 setCloudLibraryStateReason:*(*(*(a1 + 32) + 8) + 40)];
}

void sub_1000E748C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(a1[7] + 8) + 40);
    v7 = a1[4];
    v8 = +[NSDate date];
    [v8 timeIntervalSinceDate:a1[5]];
    *buf = 138544130;
    v16 = v6;
    v17 = 2114;
    v18 = v7;
    v19 = 2114;
    v20 = v4;
    v21 = 2048;
    v22 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Finished updating cloudLibraryStateReason=%{public}@ for %{public}@ with error=%{public}@ in %f seconds", buf, 0x2Au);
  }

  v10 = a1[6];
  if (v10)
  {
    v11 = dispatch_get_global_queue(0, 0);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000E764C;
    v12[3] = &unk_1001DF5A0;
    v14 = v10;
    v13 = v4;
    dispatch_async(v11, v12);
  }
}

Class sub_1000E7678(uint64_t a1)
{
  v6[0] = 0;
  if (!qword_100213D58)
  {
    v6[1] = _NSConcreteStackBlock;
    v6[2] = 3221225472;
    v6[3] = sub_1000E7864;
    v6[4] = &unk_1001DF350;
    v6[5] = v6;
    v7 = off_1001DDC20;
    v8 = 0;
    qword_100213D58 = _sl_dlopen();
  }

  if (!qword_100213D58)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"CloudLibraryUtilities.m" lineNumber:38 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("MPCloudController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"Class getMPCloudControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"CloudLibraryUtilities.m" lineNumber:39 description:{@"Unable to find class %s", "MPCloudController"}];

LABEL_10:
    __break(1u);
  }

  qword_100213D50 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000E7864(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100213D58 = result;
  return result;
}

id sub_1000E78D8()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100213D60;
  v7 = qword_100213D60;
  if (!qword_100213D60)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000E79B8;
    v3[3] = &unk_1001DF318;
    v3[4] = &v4;
    sub_1000E79B8(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1000E79A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_1000E79B8(uint64_t a1)
{
  v6[0] = 0;
  if (!qword_100213D68)
  {
    v6[1] = _NSConcreteStackBlock;
    v6[2] = 3221225472;
    v6[3] = sub_1000E7BA4;
    v6[4] = &unk_1001DF350;
    v6[5] = v6;
    v7 = off_1001DDC38;
    v8 = 0;
    qword_100213D68 = _sl_dlopen();
  }

  if (!qword_100213D68)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *AirTrafficDeviceLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"CloudLibraryUtilities.m" lineNumber:34 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("ATDeviceSettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"Class getATDeviceSettingsClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"CloudLibraryUtilities.m" lineNumber:35 description:{@"Unable to find class %s", "ATDeviceSettings"}];

LABEL_10:
    __break(1u);
  }

  qword_100213D60 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000E7BA4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100213D68 = result;
  return result;
}

void sub_1000E7C18(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NSError msv_errorWithDomain:ICErrorDomain code:-7007 debugDescription:@"Privacy acknowledgement required to check subscription status"];
  (*(v1 + 16))(v1, 0, 0, v2);
}

uint64_t sub_1000E8180(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v29 = PBReaderReadString();
          v30 = 24;
          goto LABEL_44;
        }

        if (v13 != 4)
        {
LABEL_40:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_53;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 36) |= 2u;
        while (1)
        {
          v35 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v35 & 0x7F) << v21;
          if ((v35 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_52;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_52:
        *(a1 + 32) = v27;
      }

      else
      {
        if (v13 == 1)
        {
          v29 = PBReaderReadString();
          v30 = 16;
LABEL_44:
          v31 = *(a1 + v30);
          *(a1 + v30) = v29;

          goto LABEL_53;
        }

        if (v13 != 2)
        {
          goto LABEL_40;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 36) |= 1u;
        while (1)
        {
          v34 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v34 & 0x7F) << v14;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_48;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_48:
        *(a1 + 8) = v20;
      }

LABEL_53:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1000E930C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose((v33 - 224), 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E936C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000E9384(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.itunescloudd", "SDK");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = *(a1 + 32);
    v12 = [v11 method];
    v13 = @"POST";
    if (!v12)
    {
      v13 = @"GET";
    }

    v26 = v13;
    v14 = [*(a1 + 32) action];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v5 responseCode];
    v18 = [v5 responseData];
    *buf = 138545154;
    v28 = v10;
    v29 = 2048;
    v30 = v11;
    v31 = 2114;
    v32 = v26;
    v33 = 2114;
    v34 = v14;
    v35 = 2114;
    v36 = v16;
    v37 = 2048;
    v38 = v5;
    v39 = 2048;
    v40 = v17;
    v41 = 2048;
    v42 = [v18 length];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<%{public}@: %p method=%{public}@ action=%{public}@> received response: <%{public}@: %p code=%ld, length=%{bytes}lu>", buf, 0x52u);
  }

  if (v6)
  {
    v19 = os_log_create("com.apple.amp.itunescloudd", "SDK");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v28 = v6;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "SagaCloudSDKAddOperation failed with error: %{public}@", buf, 0xCu);
    }
  }

  v20 = *(*(a1 + 48) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v5;
  v22 = v5;

  v23 = *(*(a1 + 56) + 8);
  v24 = *(v23 + 40);
  *(v23 + 40) = v6;
  v25 = v6;

  dispatch_semaphore_signal(*(a1 + 40));
}

void *sub_1000E95E4(void *a1)
{
  v5[0] = 0;
  if (!qword_100213D78)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_1000E978C;
    v5[4] = &unk_1001DF350;
    v5[5] = v5;
    v6 = off_1001DDCB0;
    v7 = 0;
    qword_100213D78 = _sl_dlopen();
  }

  v2 = qword_100213D78;
  if (!qword_100213D78)
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"SagaCloudSDKAddOperation.m" lineNumber:30 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "MPErrorDomain");
  *(*(a1[4] + 8) + 24) = result;
  qword_100213D70 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t sub_1000E9768(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), a2);
  }

  return result;
}

uint64_t sub_1000E978C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100213D78 = result;
  return result;
}

void sub_1000EA08C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 134218240;
    v10 = v5;
    v11 = 2048;
    v12 = [v3 responseCode];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%p received response status code: %lu", &v9, 0x16u);
  }

  v6 = *(a1 + 40);
  v7 = [v3 responseCode];
  if (v7 > 399)
  {
    if (v7 != 404 && v7 != 400)
    {
      goto LABEL_10;
    }

    v8 = 3;
  }

  else
  {
    v8 = 1;
    if (v7 != 200 && v7 != 204)
    {
LABEL_10:
      v8 = 2;
    }
  }

  [v6 setStatus:v8];
  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_1000EB8CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000EB974;
  v6[3] = &unk_1001DDDC0;
  v8 = *(a1 + 40);
  v6[4] = v4;
  v7 = v3;
  v5 = v3;
  [v4 _performMusicUserProfileRequestWithUserProfileContext:v5 ignoreCache:1 completion:v6];
}

void sub_1000EB974(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EBA58;
  block[3] = &unk_1001DDD98;
  v12 = v6;
  v13 = v7;
  v16 = *(a1 + 48);
  v14 = *(a1 + 40);
  v15 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, block);
}

void sub_1000EBA58(uint64_t a1)
{
  if (*(a1 + 32) && [*(a1 + 40) _errorIsRecoverable:?] && *(a1 + 64) <= 2u)
  {
    v2 = os_log_create("com.apple.amp.itunescloudd", "UserState");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 64) + 1;
      v5 = *(a1 + 32);
      v4 = *(a1 + 40);
      v16 = 134218498;
      v17 = v4;
      v18 = 1024;
      *v19 = v3;
      *&v19[4] = 2112;
      *&v19[6] = v5;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "<ICDMusicUserSocialProfileProvider: %p> Error is recoverable, retrying attempt %u in background. error=%@", &v16, 0x1Cu);
    }

    [*(*(a1 + 40) + 8) addObject:*(a1 + 48)];
    [*(a1 + 40) _onQueue_setupRetrySourceForAttempt:(*(a1 + 64) + 1)];
  }

  else
  {
    [*(*(a1 + 40) + 8) removeObject:*(a1 + 48)];
    if (![*(*(a1 + 40) + 8) count])
    {
      [*(a1 + 40) _onQueue_teardownRetrySource];
      v6 = +[ICEnvironmentMonitor sharedMonitor];
      [v6 unregisterObserver:*(a1 + 40)];
    }

    v7 = *(*(a1 + 40) + 32);
    v8 = v7;
    if (*(a1 + 32) || ![v7 conformsToProtocol:&OBJC_PROTOCOL___ICDMusicUserSocialProfileProviderDelegate])
    {
      v13 = os_log_create("com.apple.amp.itunescloudd", "UserState");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = *(a1 + 32);
        v14 = *(a1 + 40);
        v16 = 134218242;
        v17 = v14;
        v18 = 2112;
        *v19 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "<ICDMusicUserSocialProfileProvider: %p> Error is unrecoverable - dropping retry. error=%@", &v16, 0x16u);
      }
    }

    else
    {
      v9 = os_log_create("com.apple.amp.itunescloudd", "UserState");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 40);
        v11 = *(a1 + 56);
        v16 = 134218498;
        v17 = v10;
        v18 = 2114;
        *v19 = v8;
        *&v19[8] = 2114;
        *&v19[10] = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "<ICDMusicUserSocialProfileProvider: %p> Updating delegate %{public}@ with profile %{public}@", &v16, 0x20u);
      }

      v12 = *(a1 + 56);
      v13 = [*(a1 + 48) storeRequestContext];
      [v8 updateUserProfile:v12 forRequestContext:v13];
    }
  }
}

void sub_1000EBE6C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = +[ICEnvironmentMonitor sharedMonitor];
    v4 = [v3 isRemoteServerLikelyReachable];

    if (v4)
    {
      [WeakRetained _onQueue_retryPendingUpdateAttempt:*(a1 + 48)];
    }

    else
    {
      v5 = os_log_create("com.apple.amp.itunescloudd", "UserState");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 32);
        v8 = 134217984;
        v9 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<ICDMusicUserSocialProfileProvider: %p> Postponing retry for favorable environment", &v8, 0xCu);
      }

      v7 = +[ICEnvironmentMonitor sharedMonitor];
      [v7 registerObserver:*(a1 + 32)];

      [WeakRetained _onQueue_teardownRetrySource];
    }
  }
}

void sub_1000EC208(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v12 = [v3 clientInfo];
  v5 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
  v6 = [v12 clientIdentifier];
  v7 = [v12 clientVersion];
  v8 = [ICClientInfo clientInfoForMusicKitRequestWithClientIdentifier:v6 clientVersion:v7 bundleIdentifier:v5];

  [v4 setClientInfo:v8];
  v9 = [*(a1 + 32) identity];
  [v4 setIdentity:v9];

  v10 = [*(a1 + 32) identityStore];
  [v4 setIdentityStore:v10];

  v11 = [*(a1 + 32) authenticationProvider];
  [v4 setAuthenticationProvider:v11];
}

void sub_1000EC33C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.itunescloudd", "UserState_Oversize");
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = a1[4];
      v10 = a1[5];
      v11 = [v5 parsedBodyDictionary];
      v22 = 134219011;
      v23 = v9;
      v24 = 2114;
      v25 = v10;
      v26 = 2114;
      v27 = v5;
      v28 = 2114;
      v29 = v6;
      v30 = 2113;
      v31 = v11;
      v12 = "<ICDMusicUserSocialProfileProvider: %p> Encountered error for MusicKit request %{public}@. response=%{public}@ error=%{public}@ responseBody=%{private}@";
      v13 = v8;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 52;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v13, v14, v12, &v22, v15);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v16 = a1[4];
    v17 = a1[5];
    v11 = [v5 parsedBodyDictionary];
    v22 = 134218755;
    v23 = v16;
    v24 = 2114;
    v25 = v17;
    v26 = 2114;
    v27 = v5;
    v28 = 2113;
    v29 = v11;
    v12 = "<ICDMusicUserSocialProfileProvider: %p> Received response for MusicKit request: %{public}@. response=%{public}@ responseBody=%{private}@";
    v13 = v8;
    v14 = OS_LOG_TYPE_DEFAULT;
    v15 = 42;
    goto LABEL_6;
  }

  (*(a1[6] + 16))(a1[6], v5, v6, v18, v19, v20, v21);
}

void sub_1000EC730(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if ([v5 statusCode] == 200)
    {
      v7 = [v6 parsedBodyDictionary];
      v8 = [[ICMusicUserProfile alloc] initWithMediaAPIResponse:v7];
      if (v8)
      {
        v9 = os_log_create("com.apple.amp.itunescloudd", "UserState");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *(a1 + 32);
          v10 = [v8 name];
          v11 = [v8 handle];
          v19 = [v8 collaborationAllowed];
          v12 = [v8 isOnboarded];
          v13 = [v8 socialProfileID];
          v14 = [v8 socialProfile];
          *buf = 134219779;
          v22 = v20;
          v23 = 2048;
          v24 = v8;
          v25 = 2113;
          v26 = v10;
          v27 = 2113;
          v28 = v11;
          v29 = 1024;
          v30 = v19;
          v31 = 1024;
          v32 = v12;
          v33 = 2113;
          v34 = v13;
          v35 = 2114;
          v36 = v14;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "<ICDMusicUserSocialProfileProvider: %p> Created <ICMusicUserProfile %p> name=%{private}@ handle=%{private}@ collaborationAllowed=%{BOOL}u isOnboarded=%{BOOL}u socialProfileID=%{private}@ socialProfile=%{public}@", buf, 0x4Au);
        }
      }

      v15 = [v7 objectForKeyedSubscript:@"data"];

      if (v15)
      {
        [*(a1 + 32) _cacheResponse:v7 forContext:*(a1 + 40)];
      }

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v16 = os_log_create("com.apple.amp.itunescloudd", "UserState");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = *(a1 + 32);
        *buf = 134217984;
        v22 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "<ICDMusicUserSocialProfileProvider: %p> Failed to create user profile from response.", buf, 0xCu);
      }

      v18 = *(a1 + 48);
      v7 = [NSError errorWithDomain:ICErrorDomain code:-7102 userInfo:0];
      (*(v18 + 16))(v18, 0, v7);
    }
  }
}

id sub_1000ED4F0(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "UserState_Oversize");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) isRemoteServerLikelyReachable];
    v6 = 134218240;
    v7 = v3;
    v8 = 1024;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "<ICDMusicUserSocialProfileProvider: %p> environmentMonitorDidChangeNetworkReachability remoteServerLikelyReachable=%{BOOL}u", &v6, 0x12u);
  }

  return [*(a1 + 32) _onQueue_retryPendingUpdateAttempt:0];
}

void sub_1000ED944(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "UserState");
    v8 = v7;
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = *(a1 + 32);
        v10 = [v6 msv_description];
        *buf = 134218498;
        v35 = v9;
        v36 = 2114;
        v37 = v5;
        v38 = 2114;
        v39 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "<ICDMusicUserSocialProfileProvider: %p> Subscription status request completed with response: %{public}@ error=%{public}@", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      *buf = 134218242;
      v35 = v15;
      v36 = 2114;
      v37 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "<ICDMusicUserSocialProfileProvider: %p> Subscription status request completed with response: %{public}@", buf, 0x16u);
    }

    v16 = [ICDMusicUserSocialProfileRequestContext alloc];
    v17 = *(a1 + 40);
    v18 = [v5 subscriptionStatus];
    v19 = [(ICDMusicUserSocialProfileRequestContext *)v16 initWithStoreRequestContext:v17 subscriptionStatus:v18];

    v20 = *(a1 + 32);
    if (*(a1 + 56))
    {
      [v20 _clearCacheForContext:v19];
    }

    else
    {
      v26 = [v20 _getCachedResponseForContext:v19];
      if (v26)
      {
        v25 = v26;
        v27 = os_log_create("com.apple.amp.itunescloudd", "UserState_Oversize");
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = *(a1 + 32);
          *buf = 134218243;
          v35 = v28;
          v36 = 2113;
          v37 = v25;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "<ICDMusicUserSocialProfileProvider: %p> Short-circuiting with cached response: %{private}@.", buf, 0x16u);
        }

        v29 = *(a1 + 48);
        v30 = [[ICMusicUserProfile alloc] initWithMediaAPIResponse:v25];
        (*(v29 + 16))(v29, v30, 0);

        goto LABEL_18;
      }
    }

    v21 = *(a1 + 32);
    v22 = *(a1 + 56);
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000EDD1C;
    v31[3] = &unk_1001DDCD0;
    v23 = *(a1 + 48);
    v24 = *(a1 + 32);
    v33 = v23;
    v31[4] = v24;
    v32 = v19;
    [v21 _performMusicUserProfileRequestWithUserProfileContext:v32 ignoreCache:v22 completion:v31];

    v25 = v33;
LABEL_18:

LABEL_19:
    goto LABEL_20;
  }

  v11 = os_log_create("com.apple.amp.itunescloudd", "UserState");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = *(a1 + 32);
    v13 = [*(a1 + 40) identity];
    *buf = 134218499;
    v35 = v12;
    v36 = 2113;
    v37 = v13;
    v38 = 2114;
    v39 = v6;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "<ICDMusicUserSocialProfileProvider: %p> Failed to fetch subscription status for identity=%{private}@ error=%{public}@", buf, 0x20u);
  }

  v14 = *(a1 + 48);
  if (!v6)
  {
    v19 = [NSError errorWithDomain:ICErrorDomain code:0 userInfo:0];
    (*(v14 + 16))(v14, 0, v19);
    goto LABEL_19;
  }

  (*(v14 + 16))(v14, 0, v6);
LABEL_20:
}

void sub_1000EDD1C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 48) + 16);
  if (v6)
  {
    v7();
    if ([*(a1 + 32) _errorIsRecoverable:v6])
    {
      v9 = *(a1 + 32);
      v8 = *(a1 + 40);
      v10 = *(v9 + 16);
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000EDE10;
      v11[3] = &unk_1001DF618;
      v11[4] = v9;
      v12 = v8;
      dispatch_async(v10, v11);
    }
  }

  else
  {
    v7();
  }
}

id sub_1000EDE10(uint64_t a1)
{
  [*(*(a1 + 32) + 8) addObject:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _onQueue_setupRetrySourceForAttempt:0];
}

void sub_1000EDF68(id a1)
{
  qword_100213D80 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ICCloudBadgingProtocol];

  _objc_release_x1();
}

uint64_t sub_1000EE038(uint64_t a1)
{
  v2 = [*(a1 + 32) badgeActionMetricsEventForIdentifier:@"appIcon"];
  if (v2)
  {
    [*(a1 + 32) enqueueMetricsEvent:v2];
    [*(a1 + 32) clearBadgeActionMetricsEventForIdentifier:@"appIcon"];
  }

  return _objc_release_x1();
}

uint64_t sub_1000EEDB8(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___ICAppleMusicAPITokenCollection__userToken;
LABEL_21:
        v14 = PBReaderReadString();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___ICAppleMusicAPITokenCollection__developerToken;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

void sub_1000F0458(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [a2 urlResponse];
    v7 = [v6 statusCode];
    if (v7 > 399)
    {
      if (v7 == 404 || v7 == 400)
      {
        v8 = 3;
LABEL_13:
        [*(a1 + 32) setStatus:v8];
        if ([*(a1 + 32) status] != 1)
        {
          v10 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v11 = 134217984;
            v12 = [v6 statusCode];
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Cloud library opt-out request failed with non-2xx status code %ld", &v11, 0xCu);
          }
        }

        goto LABEL_18;
      }
    }

    else
    {
      v8 = 1;
      if (v7 == 200 || v7 == 204)
      {
        goto LABEL_13;
      }
    }

    v8 = 2;
    goto LABEL_13;
  }

  v9 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v11 = 138543362;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Cloud library opt-out request failed with error: %{public}@", &v11, 0xCu);
  }

  [*(a1 + 32) setStatus:2];
LABEL_18:
  dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t sub_1000F12DC(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v51[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v51 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v51[0] & 0x7F) << v5;
        if ((v51[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        break;
      }

      if (v13 == 4)
      {
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 48) |= 4u;
        while (1)
        {
          LOBYTE(v51[0]) = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:v51 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v51[0] & 0x7F) << v29;
          if ((v51[0] & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v11 = v30++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_81;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v31;
        }

LABEL_81:
        v48 = 24;
        goto LABEL_90;
      }

      if (v13 == 5)
      {
        v41 = 0;
        v42 = 0;
        v43 = 0;
        *(a1 + 48) |= 0x10u;
        while (1)
        {
          LOBYTE(v51[0]) = 0;
          v44 = [a2 position] + 1;
          if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
          {
            v46 = [a2 data];
            [v46 getBytes:v51 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v43 |= (v51[0] & 0x7F) << v41;
          if ((v51[0] & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v11 = v42++ >= 9;
          if (v11)
          {
            LOBYTE(v47) = 0;
            goto LABEL_92;
          }
        }

        v47 = (v43 != 0) & ~[a2 hasError];
LABEL_92:
        *(a1 + 44) = v47;
        goto LABEL_93;
      }

      if (v13 != 6)
      {
        goto LABEL_54;
      }

      v21 = objc_alloc_init(AMPMusicFeature);
      [a1 addContentFeatures:v21];
      v51[0] = 0;
      v51[1] = 0;
      if (!PBReaderPlaceMark() || !sub_100080F2C(v21, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_93:
      v49 = [a2 position];
      if (v49 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 1:
        v22 = 0;
        v23 = 0;
        v24 = 0;
        *(a1 + 48) |= 8u;
        while (1)
        {
          LOBYTE(v51[0]) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:v51 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v51[0] & 0x7F) << v22;
          if ((v51[0] & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v11 = v23++ >= 9;
          if (v11)
          {
            v28 = 0;
            goto LABEL_77;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v24;
        }

LABEL_77:
        *(a1 + 40) = v28;
        goto LABEL_93;
      case 2:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 48) |= 1u;
        while (1)
        {
          LOBYTE(v51[0]) = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:v51 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v51[0] & 0x7F) << v35;
          if ((v51[0] & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v11 = v36++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_89;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v37;
        }

LABEL_89:
        v48 = 8;
        goto LABEL_90;
      case 3:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 48) |= 2u;
        while (1)
        {
          LOBYTE(v51[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v51 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v51[0] & 0x7F) << v14;
          if ((v51[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_85;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_85:
        v48 = 16;
LABEL_90:
        *(a1 + v48) = v20;
        goto LABEL_93;
    }

LABEL_54:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_93;
  }

  return [a2 hasError] ^ 1;
}

void sub_1000F22F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F230C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000F2324(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = a2;
  v9 = +[RemoveCloudSourcesOperation _icCloudSourceToMLCloudSourceMapDescription];
  v5 = [v9 objectForKeyedSubscript:v4];

  v6 = [v3 stringByAppendingFormat:@"%@, ", v5];
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void sub_1000F2504(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = +[RemoveCloudSourcesOperation _icCloudSourceToMLCloudSourceMap];
  v4 = [v5 objectForKeyedSubscript:v3];

  [v2 addObject:v4];
}

void sub_1000F28EC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) DSID];
    v11 = 138543874;
    v12 = v6;
    v13 = 2048;
    v14 = [v7 longLongValue];
    v15 = 2114;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - Removing account %lld as the active locker account finished with error=%{public}@", &v11, 0x20u);
  }

  ICSiriPostDynamiteClientStateChangedNotification();
  v8 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 32);
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%{public}@ - Posting notification [ICCloudClientIsAuthenticatedDidChangeNotification]", &v11, 0xCu);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, ICCloudClientIsAuthenticatedDidChangeNotification, 0, 0, 1u);
  (*(*(a1 + 48) + 16))();
}

void sub_1000F2C90(id *a1)
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    *buf = 138543362;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ - Cancelling any outstanding saga track downloads.", buf, 0xCu);
  }

  sub_10007E848(a1[5]);
  v4 = [a1[4] _mlRemoveSourceAttributeFromICRemoveSource];
  v15 = MLDatabaseOperationAttributeRemoveCloudSourcesKey;
  v16 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v6 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[4];
    *buf = 138543618;
    v12 = v7;
    v13 = 2114;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - Removing sources from all tracks: %{public}@", buf, 0x16u);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000F2E70;
  v9[3] = &unk_1001DE1C8;
  v8 = a1[5];
  v10 = a1[6];
  [v8 removeCloudSourcesWithAttributes:v5 completionHandler:v9];
}

void sub_1000F3260(uint64_t a1)
{
  v2 = [*(a1 + 32) musicLibrary];
  [v2 notifyContentsDidChange];
  v3 = objc_alloc_init(CSSearchableIndex);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000F3410;
  v10[3] = &unk_1001DE828;
  v10[4] = *(a1 + 32);
  [v3 deleteInteractionsWithGroupIdentifiers:&off_1001EE368 bundleID:@"com.apple.Music" protectionClass:0 completionHandler:v10];

  v4 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    +[NSDate timeIntervalSinceReferenceDate];
    v7 = v6 - *(a1 + 48);
    *buf = 138543618;
    v12 = v5;
    v13 = 2048;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - Completed disabling cloud library in %.2f seconds", buf, 0x16u);
  }

  v8 = [*(a1 + 32) musicLibrary];
  v9 = MSVTCCIdentityForCurrentProcess();
  [v8 setClientIdentity:v9];

  [*(a1 + 40) endTransaction];
  [*(a1 + 32) finish];
}

void sub_1000F3410(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = [v3 msv_description];
      v7 = 138543618;
      v8 = v5;
      v9 = 2114;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to remove playback intents error=%{public}@", &v7, 0x16u);
    }
  }
}

void sub_1000F3550(id a1)
{
  v3[0] = &off_1001ED828;
  v3[1] = &off_1001ED858;
  v4[0] = @"Purchase History";
  v4[1] = @"Subscription";
  v3[2] = &off_1001ED810;
  v3[3] = &off_1001ED840;
  v4[2] = @"Saga";
  v4[3] = @"Purchase History For Media Items";
  v1 = [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
  v2 = qword_100213D90;
  qword_100213D90 = v1;
}

void sub_1000F4080(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 urlForBagKey:*(*(a1 + 32) + 8)];
  v7 = v6;
  if (a2 && v6)
  {
    v8 = [[NSMutableURLRequest alloc] initWithURL:v6];
    [v8 setHTTPMethod:@"POST"];
    [v8 setValue:ICHTTPHeaderContentTypeXApplePlist forHTTPHeaderField:ICHTTPHeaderKeyContentType];
    [v8 setHTTPBody:*(a1 + 40)];
    v9 = [[ICStoreURLRequest alloc] initWithURLRequest:v8 requestContext:*(a1 + 48)];
    v10 = +[ICURLSessionManager defaultSession];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000F42F8;
    v15[3] = &unk_1001DE030;
    v15[4] = *(a1 + 32);
    v16 = *(a1 + 56);
    [v10 enqueueDataRequest:v9 withCompletionHandler:v15];

LABEL_9:
    goto LABEL_10;
  }

  v11 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 8);
    *buf = 138543874;
    v18 = v12;
    v19 = 2114;
    v20 = v13;
    v21 = 2114;
    v22 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch URL from bag using key %{public}@. error=%{public}@", buf, 0x20u);
  }

  v14 = *(a1 + 56);
  if (!v5)
  {
    v8 = [NSError errorWithDomain:ICErrorDomain code:-7200 userInfo:0];
    (*(v14 + 16))(v14, 0, v8);
    goto LABEL_9;
  }

  (*(v14 + 16))(v14, 0, v5);
LABEL_10:
}

void sub_1000F42F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = [v5 parsedBodyDictionary];
      v11 = [v6 msv_description];
      v14 = 138544130;
      v15 = v9;
      v16 = 2114;
      v17 = v5;
      v18 = 2114;
      v19 = v10;
      v20 = 2114;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@ request completed with response: %{public}@ body: %{public}@ error=%{public}@", &v14, 0x2Au);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    v13 = [v5 parsedBodyDictionary];
    v14 = 138543874;
    v15 = v12;
    v16 = 2114;
    v17 = v5;
    v18 = 2114;
    v19 = v13;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ request completed with response: %{public}@ body: %{public}@", &v14, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000F4BDC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 playbackPositionKey];
  v5 = [v4 length];

  if (v5)
  {
    v6 = *(*(a1 + 32) + 32);
    v7 = [v3 playbackPositionKey];
    v8 = [v6 objectForKeyedSubscript:v7];

    if (v8)
    {
      v9 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [v3 playbackPositionKey];
        v11 = *(*(a1 + 32) + 32);
        v12 = [v3 playbackPositionKey];
        v13 = [v11 objectForKeyedSubscript:v12];
        v16 = 138543874;
        v17 = v10;
        v18 = 2114;
        v19 = v13;
        v20 = 2114;
        v21 = v3;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "ERROR: metadataItemsFromDataSource already contains item for entityIdentifier %{public}@. existingItem=%{public}@ newItem=%{public}@", &v16, 0x20u);
      }
    }

    v14 = *(*(a1 + 32) + 32);
    v15 = [v3 playbackPositionKey];
    [v14 setObject:v3 forKey:v15];
  }

  else
  {
    v15 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412290;
      v17 = v3;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "ERROR: will skip syncing item with no sync metadataIdentifier: %@", &v16, 0xCu);
    }
  }
}

void sub_1000F4DF0(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = a1[4];
      *buf = 138543874;
      *&buf[4] = v8;
      *&buf[12] = 2114;
      *&buf[14] = v5;
      *&buf[22] = 2114;
      v57 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@ Encountered error with reponse: %{public}@ error=%{public}@", buf, 0x20u);
    }

    [a1[4] _finishWithError:v6];
  }

  else
  {
    v33 = [*(a1[4] + 2) playbackPositionDomain];
    v9 = [ICDPlaybackPositionResponseDataSync alloc];
    v10 = [v5 parsedBodyDictionary];
    v11 = [(ICDPlaybackPositionResponseDataSync *)v9 initWithResponseDictionary:v10 forDomain:v33];

    v12 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition_Oversize");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = a1[4];
      v32 = [(ICDPlaybackPositionResponseDataSync *)v11 syncAnchor];
      v31 = [(ICDPlaybackPositionResponseDataSync *)v11 updatedKeys];
      v14 = [(ICDPlaybackPositionResponseDataSync *)v11 conflictedKeys];
      v15 = [(ICDPlaybackPositionResponseDataSync *)v11 deletedKeys];
      v16 = [(ICDPlaybackPositionResponseDataSync *)v11 successfullyUpdatedKeys];
      v17 = [(ICDPlaybackPositionResponseDataSync *)v11 successfullyDeletedKeys];
      *buf = 138545154;
      *&buf[4] = v13;
      *&buf[12] = 2114;
      *&buf[14] = v5;
      *&buf[22] = 2112;
      v57 = v32;
      *v58 = 2112;
      *&v58[2] = v31;
      *&v58[10] = 2112;
      *&v58[12] = v14;
      v59 = 2112;
      v60 = v15;
      v61 = 2112;
      v62 = v16;
      v63 = 2112;
      v64 = v17;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Received sync response: %{public}@\n syncAnchor=%@\n updatedKeys=%@\n conflictedKeys=%@\n deletedKeys=%@\n successfullyUpdatedKeys=%@\n successfullyDeletedKeys=%@", buf, 0x52u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v57 = sub_1000F5438;
    *v58 = sub_1000F5448;
    *&v58[8] = 0;
    v46 = 0;
    v47 = &v46;
    v48 = 0x3032000000;
    v49 = sub_1000F5438;
    v50 = sub_1000F5448;
    v51 = 0;
    v18 = a1[4];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_1000F5450;
    v45[3] = &unk_1001DDF90;
    v45[4] = buf;
    v45[5] = &v46;
    [v18 _parseResponseData:v11 completion:v45];
    v19 = [(ICDPlaybackPositionResponseDataSync *)v11 syncAnchor];
    if (!v19)
    {
      v20 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = a1[4];
        *v52 = 138543362;
        v53 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}@ responseData.syncAnchor=nil", v52, 0xCu);
      }

      v19 = @"0";
    }

    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_1000F54D8;
    v38[3] = &unk_1001DDFB8;
    v22 = v19;
    v39 = v22;
    v44 = buf;
    v40 = a1[5];
    v41 = a1[6];
    v23 = v33;
    v24 = a1[4];
    v42 = v23;
    v43 = v24;
    v25 = objc_retainBlock(v38);
    if ([v47[5] count])
    {
      v26 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = a1[4];
        v28 = [v47[5] allKeys];
        *v52 = 138543618;
        v53 = v27;
        v54 = 2112;
        v55 = v28;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending merged items to server: %@", v52, 0x16u);
      }

      v29 = a1[4];
      v30 = v47[5];
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_1000F55F8;
      v34[3] = &unk_1001DDFE0;
      v34[4] = v29;
      v35 = v5;
      v36 = v23;
      v37 = v25;
      [v29 _performSyncWithSyncAnchor:v22 itemsToSync:v30 conflictDetectionType:@"none" completion:v34];
    }

    else
    {
      (v25[2])(v25, 0);
    }

    _Block_object_dispose(&v46, 8);
    _Block_object_dispose(buf, 8);
  }
}

void sub_1000F5400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 208), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F5438(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000F5450(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1000F54D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(*(*(a1 + 72) + 8) + 40);
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Committing merged items with domainRevision: %@ to local database: %@", &v9, 0x16u);
  }

  v7 = *(a1 + 40);
  v8 = [*(*(*(a1 + 72) + 8) + 40) allValues];
  [v7 commitUniversalPlaybackPositions:v8 context:*(a1 + 48) domain:*(a1 + 56) domainVersion:*(a1 + 32)];

  [*(a1 + 64) _finishWithError:v3];
}

void sub_1000F55F8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v13 = 138543618;
      v14 = v6;
      v15 = 2114;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@ Received error for KVS merge request. error=%{public}@", &v13, 0x16u);
    }
  }

  else
  {
    v7 = [ICDPlaybackPositionResponseDataSync alloc];
    v8 = [*(a1 + 40) parsedBodyDictionary];
    v5 = [(ICDPlaybackPositionResponseDataSync *)v7 initWithResponseDictionary:v8 forDomain:*(a1 + 48)];

    v9 = [v5 conflictedKeys];
    v10 = [v9 count];

    if (v10)
    {
      v11 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = *(a1 + 32);
        v13 = 138543362;
        v14 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@ WARNING: sent resolved conflict to server, but still received conflicts in the response, saving those for next time...", &v13, 0xCu);
      }
    }
  }

  (*(*(a1 + 56) + 16))();
}

void sub_1000F60D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v8 = [*(a1 + 48) userIdentity];
      v9 = [v8 accountDSID];
      *v23 = 138544130;
      *&v23[4] = v6;
      *&v23[12] = 2114;
      *&v23[14] = v7;
      *&v23[22] = 2114;
      v24 = v9;
      LOWORD(v25) = 2114;
      *(&v25 + 2) = v3;
      v10 = "%{public}@ - Unable to deactivate handler - class=%{public}@ dsid=%{public}@ error=%{public}@";
      v11 = v5;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 42;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v11, v12, v10, v23, v13);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v8 = [*(a1 + 48) userIdentity];
    v9 = [v8 accountDSID];
    *v23 = 138543874;
    *&v23[4] = v14;
    *&v23[12] = 2114;
    *&v23[14] = v15;
    *&v23[22] = 2114;
    v24 = v9;
    v10 = "%{public}@ - Handler is no longer active - class=%{public}@ dsid=%{public}@";
    v11 = v5;
    v12 = OS_LOG_TYPE_DEFAULT;
    v13 = 32;
    goto LABEL_6;
  }

  if (*(a1 + 56) && ICSystemApplicationIsInstalled())
  {
    v16 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      v18 = *(a1 + 40);
      v19 = *(a1 + 56);
      v20 = [*(a1 + 64) userIdentity];
      v21 = [v20 accountDSID];
      *v23 = 138544130;
      *&v23[4] = v17;
      *&v23[12] = 2048;
      *&v23[14] = v19;
      *&v23[22] = 2114;
      v24 = v18;
      LOWORD(v25) = 2114;
      *(&v25 + 2) = v21;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ - Activating handler %p - class=%{public}@ dsid=%{public}@", v23, 0x2Au);
    }

    [*(a1 + 56) becomeActive];
  }

  v22 = [*(a1 + 40) deleteHandlerForConfiguration:{*(a1 + 48), *v23, *&v23[16], v24, v25}];
}

void sub_1000F6AF8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = [*(a1 + 48) userIdentity];
      v8 = [v7 accountDSID];
      v10 = 138544130;
      v11 = v5;
      v12 = 2114;
      v13 = v6;
      v14 = 2114;
      v15 = v8;
      v16 = 2114;
      v17 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}@ - Unable to deactivate handler with deauthentication [deleting it anyway] - class=%{public}@ dsid=%{public}@ error=%{public}@", &v10, 0x2Au);
    }
  }

  v9 = [*(a1 + 40) deleteHandlerForConfiguration:*(a1 + 48)];
  dispatch_group_leave(*(a1 + 56));
}

void sub_1000F6FC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) libraryManagementPolicy];
  v5 = *(a1 + 48);
  v6 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v4 == v5)
  {
    if (v7)
    {
      v8 = *(a1 + 32);
      v14 = 138543618;
      v15 = v8;
      v16 = 1024;
      LODWORD(v17) = [v8 libraryManagementPolicy];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - policy type is unchanged (%d)", &v14, 0x12u);
    }
  }

  else
  {
    if (v7)
    {
      v9 = *(a1 + 32);
      v10 = [v9 libraryManagementPolicy];
      if (v10 > 2)
      {
        v11 = @"Unknown";
      }

      else
      {
        v11 = off_1001DE0F0[v10];
      }

      v12 = *(a1 + 48);
      if (v12 > 2)
      {
        v13 = @"Unknown";
      }

      else
      {
        v13 = off_1001DE0F0[v12];
      }

      v14 = 138543874;
      v15 = v9;
      v16 = 2114;
      v17 = v11;
      v18 = 2114;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - Changing policy type from %{public}@ to %{public}@", &v14, 0x20u);
    }

    [*(a1 + 32) setLibraryManagementPolicy:*(a1 + 48)];
    if ([*(a1 + 32) libraryManagementPolicy] == 2)
    {
      [*(a1 + 32) _processSupportedConfigurationsChange:*(a1 + 40) initialSetup:0];
    }
  }

  [v3 finishWithError:0];
}

void sub_1000F7448(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543362;
    v51 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - updateHandlersWithAccountStateChange", buf, 0xCu);
  }

  if (([*(a1 + 32) isSetupCompleted] & 1) == 0)
  {
    v32 = +[NSAssertionHandler currentHandler];
  }

  if (([*(a1 + 40) activeConfigurationChanged] & 1) == 0 && (objc_msgSend(*(a1 + 40), "supportedConfigurationsChanged") & 1) == 0)
  {
    v29 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *(a1 + 32);
      v31 = *(a1 + 40);
      *buf = 138543618;
      v51 = v30;
      v52 = 2112;
      v53 = v31;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ - No changes detected - %@", buf, 0x16u);
    }

    goto LABEL_48;
  }

  v6 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    *buf = 138543618;
    v51 = v7;
    v52 = 2112;
    v53 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ - Change detected: %@", buf, 0x16u);
  }

  if ([*(a1 + 32) libraryManagementPolicy] == 2 && objc_msgSend(*(a1 + 40), "supportedConfigurationsChanged"))
  {
    v9 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      *buf = 138543362;
      v51 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ - Supported configurations changed", buf, 0xCu);
    }

    [*(a1 + 32) _processSupportedConfigurationsChange:*(a1 + 40) initialSetup:0];
  }

  else if ((![*(a1 + 32) libraryManagementPolicy] || objc_msgSend(*(a1 + 32), "libraryManagementPolicy") == 1) && objc_msgSend(*(a1 + 40), "activeConfigurationChanged"))
  {
    v11 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      *buf = 138543362;
      v51 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ - Active account changed", buf, 0xCu);
    }

    [*(a1 + 32) _processActiveConfigurationChange:*(a1 + 40) initialSetup:0];
  }

  if ([*(a1 + 32) libraryManagementPolicy] == 2)
  {
    v33 = v3;
    v13 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      *buf = 138543362;
      v51 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ - Verifying handlers are active", buf, 0xCu);
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = +[ICDHandlerCoordinator _managedHandlerClasses];
    v36 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v36)
    {
      v35 = *v45;
      do
      {
        v15 = 0;
        do
        {
          if (*v45 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v37 = v15;
          v16 = *(*(&v44 + 1) + 8 * v15);
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v17 = a1;
          v18 = [*(a1 + 40) finalState];
          v19 = [v18 supportedConfigurations];

          v20 = [v19 countByEnumeratingWithState:&v40 objects:v48 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v41;
            do
            {
              for (i = 0; i != v21; i = i + 1)
              {
                if (*v41 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = [v16 handlerForConfiguration:*(*(&v40 + 1) + 8 * i)];
                if (([v24 isActive] & 1) == 0)
                {
                  v25 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                  {
                    v26 = *(v17 + 32);
                    *buf = 138543618;
                    v51 = v26;
                    v52 = 2114;
                    v53 = v24;
                    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ - activating handler %{public}@", buf, 0x16u);
                  }

                  [v24 becomeActive];
                }
              }

              v21 = [v19 countByEnumeratingWithState:&v40 objects:v48 count:16];
            }

            while (v21);
          }

          v15 = v37 + 1;
          a1 = v17;
        }

        while ((v37 + 1) != v36);
        v36 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v36);
    }

    v3 = v33;
  }

  if ([*(a1 + 32) libraryManagementPolicy] != 2 && objc_msgSend(*(a1 + 32), "libraryManagementPolicy") != 1)
  {
LABEL_48:
    [v3 finishWithError:0];
    goto LABEL_49;
  }

  v27 = *(a1 + 32);
  v28 = *(a1 + 40);
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1000F7A94;
  v38[3] = &unk_1001DE828;
  v39 = v3;
  [v27 _deauthenticateUnsupportedConfigurationsFromChange:v28 initialSetup:0 completion:v38];

LABEL_49:
}

void sub_1000F7B78(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543362;
    v27 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - setupHandlersWithAccountStateChange", buf, 0xCu);
  }

  if ([*(a1 + 32) isSetupCompleted])
  {
    v23 = +[NSAssertionHandler currentHandler];
  }

  v6 = [*(a1 + 40) activeConfigurationChanged];
  v7 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) initialState];
    v11 = [*(a1 + 40) finalState];
    *buf = 138543874;
    v27 = v9;
    v28 = 2112;
    v29 = v10;
    v30 = 2112;
    v31 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - setupHandlers - Account change on startup [restore - [%@] -> [%@]]", buf, 0x20u);
  }

  else
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    v12 = *(a1 + 32);
    v10 = [*(a1 + 40) initialState];
    *buf = 138543618;
    v27 = v12;
    v28 = 2112;
    v29 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - setupHandlers - No account change on startup [restore - [%@]]", buf, 0x16u);
  }

LABEL_11:
  v13 = [*(a1 + 32) libraryManagementPolicy];
  v14 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
  if (v13 == 2)
  {
    if (v15)
    {
      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      *buf = 138543618;
      v27 = v16;
      v28 = 2112;
      v29 = v17;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%{public}@ - setupHandlers - Parallel MU setup - State Change=%@", buf, 0x16u);
    }

    [*(a1 + 32) _processSupportedConfigurationsChange:*(a1 + 40) initialSetup:1];
  }

  else
  {
    if (v15)
    {
      v18 = *(a1 + 32);
      v19 = *(a1 + 40);
      *buf = 138543618;
      v27 = v18;
      v28 = 2112;
      v29 = v19;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "%{public}@ - setupHandlers - Single & Sequential MU setups - State Change=%@", buf, 0x16u);
    }

    [*(a1 + 32) _processActiveConfigurationChange:*(a1 + 40) initialSetup:1];
  }

  if ([*(a1 + 32) libraryManagementPolicy] == 2 || objc_msgSend(*(a1 + 32), "libraryManagementPolicy") == 1)
  {
    v21 = *(a1 + 32);
    v20 = *(a1 + 40);
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000F7F4C;
    v24[3] = &unk_1001DFB10;
    v24[4] = v21;
    v25 = v3;
    [v21 _deauthenticateUnsupportedConfigurationsFromChange:v20 initialSetup:0 completion:v24];
  }

  else
  {
    [*(a1 + 32) setSetupCompleted:1];
    v22 = +[NSNotificationCenter defaultCenter];
    [v22 postNotificationName:@"ICDHandlerCoordinatorDidFinishInitializationNotificationName" object:*(a1 + 32)];
    [v3 finishWithError:0];
  }
}

void sub_1000F7F4C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setSetupCompleted:1];
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 postNotificationName:@"ICDHandlerCoordinatorDidFinishInitializationNotificationName" object:*(a1 + 32)];
  [*(a1 + 40) finishWithError:v4];
}

void sub_1000F838C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F8B08;
  block[3] = &unk_1001DE1A0;
  v7 = *(a1 + 32);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

void sub_1000F845C(uint64_t a1)
{
  if ([*(a1 + 32) connectionState])
  {
    v2 = os_log_create("com.apple.amp.itunescloudd", "Connections");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(*(a1 + 32) + 16);
      *buf = 134217984;
      v20 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Unable to connect, current state: %ld", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    *(*(a1 + 32) + 16) = 1;
    v4 = [*(a1 + 32) configuration];
    v5 = [v4 libraryBagKey];

    if ([v5 length])
    {
      v6 = [ICStoreRequestContext alloc];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1000F870C;
      v18[3] = &unk_1001DEFB8;
      v18[4] = *(a1 + 32);
      v7 = [v6 initWithBlock:v18];
      v8 = +[ICURLBagProvider sharedBagProvider];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000F877C;
      v14[3] = &unk_1001DE218;
      v9 = v5;
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v15 = v9;
      v16 = v10;
      v17 = v11;
      [v8 getBagForRequestContext:v7 withCompletionHandler:v14];
    }

    else
    {
      v12 = os_log_create("com.apple.amp.itunescloudd", "Connections");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "No library bag key. Failed to determine database ID.", buf, 2u);
      }

      *(*(a1 + 32) + 16) = 0;
      v13 = *(a1 + 40);
      v7 = [NSError ic_cloudClientErrorWithCode:2013 userInfo:0];
      (*(v13 + 16))(v13, 0, v7);
    }
  }
}

void sub_1000F870C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  v3 = [v2 userIdentity];
  [v4 setIdentity:v3];

  [v4 setPersonalizationStyle:2];
}

void sub_1000F877C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "Connections");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v6 msv_description];
      *buf = 138543362;
      v23 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to fetch bag error=%{public}@", buf, 0xCu);
    }
  }

  v9 = [v5 dictionaryForBagKey:*(a1 + 32)];
  v10 = [v9 objectForKey:@"database-id"];
  v11 = [v10 unsignedIntValue];

  v12 = [v9 objectForKey:@"database-name"];
  v13 = [*(a1 + 40) queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000F896C;
  block[3] = &unk_1001DE1F0;
  v21 = v11;
  v14 = *(a1 + 48);
  block[4] = *(a1 + 40);
  v18 = v12;
  v19 = v9;
  v20 = v14;
  v15 = v9;
  v16 = v12;
  dispatch_async(v13, block);
}

void sub_1000F896C(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  if (v2)
  {
    *(v3 + 8) = v2;
    *(*(a1 + 32) + 16) = 2;
    v4 = os_log_create("com.apple.amp.itunescloudd", "Connections");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = *(*(a1 + 32) + 8);
      v11 = 138543618;
      v12 = v5;
      v13 = 1024;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Cloud database: %{public}@ (DatabaseID = %u)", &v11, 0x12u);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    *(v3 + 16) = 0;
    v7 = os_log_create("com.apple.amp.itunescloudd", "Connections");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 48);
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to load database ID, bag library: %{public}@", &v11, 0xCu);
    }

    v9 = *(a1 + 56);
    v10 = [NSError ic_cloudClientErrorWithCode:2013 userInfo:0];
    (*(v9 + 16))(v9, 0, v10);
  }
}

Class sub_1000F9440(uint64_t a1)
{
  v6[0] = 0;
  if (!qword_100213DA8)
  {
    v6[1] = _NSConcreteStackBlock;
    v6[2] = 3221225472;
    v6[3] = sub_1000FA408;
    v6[4] = &unk_1001DF350;
    v6[5] = v6;
    v7 = off_1001DE238;
    v8 = 0;
    qword_100213DA8 = _sl_dlopen();
  }

  if (!qword_100213DA8)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"CloudLibraryConnection.m" lineNumber:27 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("MPPlaybackUserDefaults");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"Class getMPPlaybackUserDefaultsClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"CloudLibraryConnection.m" lineNumber:28 description:{@"Unable to find class %s", "MPPlaybackUserDefaults"}];

LABEL_10:
    __break(1u);
  }

  qword_100213DA0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1000F962C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v11 = a2;
  v4 = [v3 configuration];
  v5 = [v4 userIdentity];
  [v11 setIdentity:v5];

  v6 = [*(a1 + 32) configuration];
  v7 = [v6 userIdentityStore];
  [v11 setIdentityStore:v7];

  v8 = +[ICClientInfo defaultInfo];
  [v11 setClientInfo:v8];

  v9 = [[ICStoreURLResponseAuthenticationProvider alloc] initWithUserInteractionLevel:{objc_msgSend(*(a1 + 40), "verificationInteractionLevel")}];
  [v11 setAuthenticationProvider:v9];

  v10 = objc_alloc_init(ICStoreDialogResponseHandler);
  [v11 setStoreDialogResponseHandler:v10];

  [v11 setPersonalizationStyle:{objc_msgSend(*(a1 + 40), "requestPersonalizationStyle")}];
}

void sub_1000F976C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v8 = os_log_create("com.apple.amp.itunescloudd", "Connections");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 138543618;
      v84 = v9;
      v85 = 2114;
      v86 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Failed to send request to %{public}@. err=%{public}@", buf, 0x16u);
    }

    goto LABEL_16;
  }

  if (!*(a1 + 40))
  {
    v7 = 0;
    if (v5)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

  v8 = +[NSFileManager defaultManager];
  v10 = [*(a1 + 40) path];
  v11 = [v10 stringByDeletingLastPathComponent];
  v80 = 0;
  [v8 createDirectoryAtPath:v11 withIntermediateDirectories:1 attributes:0 error:&v80];
  v7 = v80;
  [v8 removeItemAtPath:v10 error:0];
  v12 = [v5 bodyDataURL];
  if (v12)
  {
    v13 = v12;
    v14 = [v5 bodyDataURL];
    v15 = [v14 absoluteString];
    v16 = [v8 fileExistsAtPath:v15];

    if (v16)
    {
      v17 = [v5 bodyDataURL];
      v18 = *(a1 + 40);
      v79 = v7;
      [v8 linkItemAtURL:v17 toURL:v18 error:&v79];
      v19 = v79;

      v20 = [v5 bodyDataURL];
      [v8 removeItemAtURL:v20 error:0];
LABEL_10:
      v7 = v19;

      goto LABEL_11;
    }
  }

  v21 = [v5 bodyData];

  if (v21)
  {
    v20 = [v5 bodyData];
    v78 = v7;
    [v20 writeToFile:v10 options:1 error:&v78];
    v19 = v78;

    goto LABEL_10;
  }

LABEL_11:
  if (v7)
  {
    v22 = os_log_create("com.apple.amp.itunescloudd", "Connections");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(a1 + 40);
      *buf = 138543618;
      v84 = v23;
      v85 = 2114;
      v86 = v7;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Failed to write response data to %{public}@. err=%{public}@", buf, 0x16u);
    }
  }

LABEL_16:
  if (v5)
  {
LABEL_17:
    v24 = [v5 urlResponse];
    v25 = [v24 allHeaderFields];
    v26 = [v24 statusCode];
    v27 = [v5 bodyData];
    v28 = [v24 MIMEType];
    v76 = v25;
    v77 = v27;
    v29 = [ICDResponse responseWithCode:v26 headerFields:v25 data:v27 MIMEType:v28 error:0];
    if (v26 - 200 <= 6 && ((1 << (v26 + 56)) & 0x51) != 0)
    {
      v30 = [*(a1 + 48) canonicalResponseForResponse:v29];
      v31 = os_log_create("com.apple.amp.itunescloudd", "Connections");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v72 = v7;
        v32 = *(a1 + 48);
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        v35 = v29;
        v36 = [v30 responseCode];
        [v30 responseData];
        v37 = loga = v28;
        v38 = [v37 length];
        *buf = 134219010;
        v84 = v32;
        v7 = v72;
        v85 = 2114;
        v86 = v34;
        v87 = 2048;
        v88 = v30;
        v89 = 2048;
        v90 = v36;
        v29 = v35;
        v91 = 2048;
        v92 = v38;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Received request %p response: <%{public}@: %p code=%ld, length=%{bytes}lu>", buf, 0x34u);

        v28 = loga;
      }

      if (*(a1 + 40))
      {
        [v30 setResponseDataFileURL:?];
      }

      v39 = *(*(a1 + 64) + 16);
      goto LABEL_38;
    }

    if (v26 == 401)
    {
      v40 = os_log_create("com.apple.amp.itunescloudd", "Connections");
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Response: (HTTP 401) - Not Authenticated", buf, 2u);
      }

LABEL_37:

      v45 = *(a1 + 64);
      v30 = [NSError ic_cloudClientErrorWithCode:2017 userInfo:0];
      v39 = *(v45 + 16);
LABEL_38:
      v39();
LABEL_39:

      goto LABEL_40;
    }

    if ((v26 & 0xFFFFFFFFFFFFFFFBLL) == 0x190)
    {
      v40 = os_log_create("com.apple.amp.itunescloudd", "Connections");
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v84 = v26;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Response: (HTTP %lu) - Bad Request/No Found", buf, 0xCu);
      }

      goto LABEL_37;
    }

    v46 = [ICDResponseDataParser parseErrorInResponseData:v27];
    v30 = v46;
    if (v26 != 403)
    {
      v54 = os_log_create("com.apple.amp.itunescloudd", "Connections");
      v55 = os_log_type_enabled(v54, OS_LOG_TYPE_ERROR);
      v56 = v29;
      if (v30)
      {
        if (v55)
        {
          *buf = 134218242;
          v84 = v26;
          v85 = 2114;
          v86 = v30;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "Unhandled Response: (HTTP %lu)\nParsed response data as DMAP error: %{public}@", buf, 0x16u);
        }
      }

      else if (v55)
      {
        v60 = [[NSString alloc] initWithData:v77 encoding:4];
        v61 = v60;
        if (v60)
        {
          v62 = v60;
        }

        else
        {
          v62 = v77;
        }

        *buf = 134218242;
        v84 = v26;
        v85 = 2114;
        v86 = v62;
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "Unhandled Response: (HTTP %lu)\nRaw response data: %{public}@", buf, 0x16u);
      }

      v63 = *(a1 + 64);
      v64 = [NSError ic_cloudClientErrorWithCode:2018 userInfo:0];
      (*(v63 + 16))(v63, 0, v64);

      v29 = v56;
      goto LABEL_39;
    }

    if (!v46)
    {
      v57 = sub_1001027CC();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "Response: (HTTP 403) - Response Missing DMAP Status Code", buf, 2u);
      }

      v58 = *(a1 + 64);
      v51 = [NSError ic_cloudClientErrorWithCode:2019 userInfo:0];
      v59 = *(v58 + 16);
      goto LABEL_78;
    }

    v73 = v29;
    log = v28;
    v47 = [v46 objectForKey:&off_1001ED870];
    v48 = [v47 unsignedIntegerValue];

    v81 = @"CloudLibraryConnectionRequestForbiddenAdditonalErrorCodeKey";
    v49 = [NSNumber numberWithUnsignedInteger:v48];
    v82 = v49;
    v50 = [NSDictionary dictionaryWithObjects:&v82 forKeys:&v81 count:1];
    v51 = [NSError ic_cloudClientErrorWithCode:2019 userInfo:v50];

    if (v48 > 951)
    {
      v29 = v73;
      v28 = log;
      if ((v48 - 958) < 2)
      {
        v52 = sub_1001027CC();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v84 = v48;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "Response: (HTTP 403, DMAP %lu) - Collaboration limit exceeded.", buf, 0xCu);
        }

        goto LABEL_77;
      }

      if (v48 == 952)
      {
        v67 = sub_1001027CC();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v84) = 952;
          _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "Response: (HTTP 403, DMAP %d) - Cloud DAAP Temporary Disconnect Requested.", buf, 8u);
        }

        v68 = [v30 objectForKey:&off_1001ED888];
        v69 = [v68 unsignedIntegerValue];

        if (v69)
        {
          v70 = v69;
        }

        else
        {
          v70 = 300;
        }

        v71 = sub_1001027CC();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v84 = v70;
          _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "Will retry request in %lu seconds", buf, 0xCu);
        }

        sleep(v70);
        [*(a1 + 56) _onQueue_sendRequest:*(a1 + 48) withInternalResponseHandler:*(a1 + 64)];
        v29 = v73;
        v28 = log;
        goto LABEL_79;
      }

      if (v48 == 954)
      {
        v52 = sub_1001027CC();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v84) = 954;
          v53 = "Response: (HTTP 403, DMAP %d) - Cloud DAAP Item Limit Exceeded (no additional items may be added to the library).";
          goto LABEL_73;
        }

LABEL_77:

        v59 = *(*(a1 + 64) + 16);
LABEL_78:
        v59();
LABEL_79:

        goto LABEL_39;
      }
    }

    else
    {
      v29 = v73;
      v28 = log;
      switch(v48)
      {
        case 403:
          v52 = sub_1001027CC();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v53 = "Response: (HTTP 403, DMAP 403) - Request forbidden.";
            v65 = v52;
            v66 = 2;
LABEL_76:
            _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, v53, buf, v66);
            goto LABEL_77;
          }

          goto LABEL_77;
        case 950:
          v52 = sub_1001027CC();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            LODWORD(v84) = 950;
            v53 = "Response: (HTTP 403, DMAP %d) - Cloud DAAP Subscription Lapsed.";
            goto LABEL_73;
          }

          goto LABEL_77;
        case 951:
          v52 = sub_1001027CC();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            LODWORD(v84) = 951;
            v53 = "Response: (HTTP 403, DMAP %d) - Cloud DAAP Client Expired (client DAAP version is less than the minimum version supported by the server).";
LABEL_73:
            v65 = v52;
            v66 = 8;
            goto LABEL_76;
          }

          goto LABEL_77;
      }
    }

    v52 = sub_1001027CC();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v84 = v48;
      v53 = "Response: (HTTP 403, DMAP %lu) - Unknown code.";
      v65 = v52;
      v66 = 12;
      goto LABEL_76;
    }

    goto LABEL_77;
  }

LABEL_29:
  v41 = os_log_create("com.apple.amp.itunescloudd", "Connections");
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    v42 = *(a1 + 48);
    *buf = 134218242;
    v84 = v42;
    v85 = 2114;
    v86 = v7;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Received no response for request %p, error %{public}@", buf, 0x16u);
  }

  v43 = *(a1 + 64);
  if (v7)
  {
    (*(v43 + 16))(v43, 0, v7);
  }

  else
  {
    v44 = [NSError ic_cloudClientErrorWithCode:2018 userInfo:0];
    (*(v43 + 16))(v43, 0, v44);
  }

LABEL_40:
}

ICURLSession *__cdecl sub_1000FA3A0(id a1)
{
  v1 = +[NSURLSessionConfiguration ic_defaultSessionConfiguration];
  v2 = [[ICURLSession alloc] initWithConfiguration:v1 maxConcurrentRequests:4 qualityOfService:-1];

  return v2;
}