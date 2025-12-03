@interface ICMusicLibraryArtistAffinityAnalyzer
- (id)_requestItemProperties;
- (id)aggregateLibraryRecommendationMetricsFromSnapshots:(id)snapshots;
- (id)createFeatureProviderDictionaryFromNewContentResponse:(id)response withLibraryArtistSnapshots:(id)snapshots;
- (void)performLibraryAnalysisFromResponse:(id)response withCompletionHandler:(id)handler;
- (void)performLibraryAnalysisWithCompletionHandler:(id)handler;
@end

@implementation ICMusicLibraryArtistAffinityAnalyzer

- (id)_requestItemProperties
{
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v2 = qword_100213B00;
  v66 = qword_100213B00;
  if (!qword_100213B00)
  {
    v3 = sub_10003AB00();
    v64[3] = dlsym(v3, "MPModelRelationshipSongArtist");
    qword_100213B00 = v64[3];
    v2 = v64[3];
  }

  _Block_object_dispose(&v63, 8);
  if (!v2)
  {
    v43 = +[NSAssertionHandler currentHandler];
    v44 = [NSString stringWithUTF8String:"NSString *getMPModelRelationshipSongArtist(void)"];
    [v43 handleFailureInFunction:v44 file:@"ICMusicLibraryArtistAffinityAnalyzer.m" lineNumber:42 description:{@"%s", dlerror()}];

    goto LABEL_44;
  }

  v4 = *v2;
  v71[0] = v4;
  v5 = sub_10003AC54();
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v6 = qword_100213B10;
  v66 = qword_100213B10;
  if (!qword_100213B10)
  {
    v7 = sub_10003AB00();
    v64[3] = dlsym(v7, "MPModelPropertyArtistName");
    qword_100213B10 = v64[3];
    v6 = v64[3];
  }

  _Block_object_dispose(&v63, 8);
  if (!v6)
  {
    v45 = +[NSAssertionHandler currentHandler];
    v46 = [NSString stringWithUTF8String:"NSString *getMPModelPropertyArtistName(void)"];
    [v45 handleFailureInFunction:v46 file:@"ICMusicLibraryArtistAffinityAnalyzer.m" lineNumber:35 description:{@"%s", dlerror()}];

    goto LABEL_44;
  }

  v8 = *v6;
  v70 = v8;
  v9 = [NSArray arrayWithObjects:&v70 count:1];
  v10 = [v5 propertySetWithProperties:v9];
  v72[0] = v10;
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v11 = qword_100213B18;
  v66 = qword_100213B18;
  if (!qword_100213B18)
  {
    v12 = sub_10003AB00();
    v64[3] = dlsym(v12, "MPModelRelationshipSongAlbum");
    qword_100213B18 = v64[3];
    v11 = v64[3];
  }

  _Block_object_dispose(&v63, 8);
  if (!v11)
  {
    v47 = +[NSAssertionHandler currentHandler];
    v48 = [NSString stringWithUTF8String:"NSString *getMPModelRelationshipSongAlbum(void)"];
    [v47 handleFailureInFunction:v48 file:@"ICMusicLibraryArtistAffinityAnalyzer.m" lineNumber:43 description:{@"%s", dlerror()}];

    goto LABEL_44;
  }

  v13 = *v11;
  v71[1] = v13;
  v14 = sub_10003AC54();
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v15 = qword_100213B20;
  v66 = qword_100213B20;
  if (!qword_100213B20)
  {
    v16 = sub_10003AB00();
    v64[3] = dlsym(v16, "MPModelPropertyAlbumTitle");
    qword_100213B20 = v64[3];
    v15 = v64[3];
  }

  _Block_object_dispose(&v63, 8);
  if (!v15)
  {
    v49 = +[NSAssertionHandler currentHandler];
    v50 = [NSString stringWithUTF8String:"NSString *getMPModelPropertyAlbumTitle(void)"];
    [v49 handleFailureInFunction:v50 file:@"ICMusicLibraryArtistAffinityAnalyzer.m" lineNumber:34 description:{@"%s", dlerror()}];

    goto LABEL_44;
  }

  v69 = *v15;
  v17 = v69;
  v18 = [NSArray arrayWithObjects:&v69 count:1];
  v19 = [v14 propertySetWithProperties:v18];
  v72[1] = v19;
  v20 = [NSDictionary dictionaryWithObjects:v72 forKeys:v71 count:2];

  v21 = objc_alloc(sub_10003AC54());
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v22 = qword_100213B28;
  v66 = qword_100213B28;
  if (!qword_100213B28)
  {
    v23 = sub_10003AB00();
    v64[3] = dlsym(v23, "MPModelPropertySongTitle");
    qword_100213B28 = v64[3];
    v22 = v64[3];
  }

  _Block_object_dispose(&v63, 8);
  if (!v22)
  {
    v51 = +[NSAssertionHandler currentHandler];
    v52 = [NSString stringWithUTF8String:"NSString *getMPModelPropertySongTitle(void)"];
    [v51 handleFailureInFunction:v52 file:@"ICMusicLibraryArtistAffinityAnalyzer.m" lineNumber:37 description:{@"%s", dlerror()}];

    goto LABEL_44;
  }

  v24 = *v22;
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v25 = qword_100213B30;
  v66 = qword_100213B30;
  v67[0] = v24;
  if (!qword_100213B30)
  {
    v26 = sub_10003AB00();
    v64[3] = dlsym(v26, "MPModelPropertySongPlayCount");
    qword_100213B30 = v64[3];
    v25 = v64[3];
  }

  _Block_object_dispose(&v63, 8);
  if (!v25)
  {
    v53 = +[NSAssertionHandler currentHandler];
    v54 = [NSString stringWithUTF8String:"NSString *getMPModelPropertySongPlayCount(void)"];
    [v53 handleFailureInFunction:v54 file:@"ICMusicLibraryArtistAffinityAnalyzer.m" lineNumber:38 description:{@"%s", dlerror()}];

    goto LABEL_44;
  }

  v27 = *v25;
  v67[1] = v27;
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v28 = qword_100213B38;
  v66 = qword_100213B38;
  if (!qword_100213B38)
  {
    v29 = sub_10003AB00();
    v64[3] = dlsym(v29, "MPModelPropertySongSkipCount");
    qword_100213B38 = v64[3];
    v28 = v64[3];
  }

  _Block_object_dispose(&v63, 8);
  if (!v28)
  {
    v55 = +[NSAssertionHandler currentHandler];
    v56 = [NSString stringWithUTF8String:"NSString *getMPModelPropertySongSkipCount(void)"];
    [v55 handleFailureInFunction:v56 file:@"ICMusicLibraryArtistAffinityAnalyzer.m" lineNumber:39 description:{@"%s", dlerror()}];

    goto LABEL_44;
  }

  v30 = *v28;
  v67[2] = v30;
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v31 = qword_100213B40;
  v66 = qword_100213B40;
  if (!qword_100213B40)
  {
    v32 = sub_10003AB00();
    v64[3] = dlsym(v32, "MPModelPropertySongLastDevicePlaybackDate");
    qword_100213B40 = v64[3];
    v31 = v64[3];
  }

  _Block_object_dispose(&v63, 8);
  if (!v31)
  {
    v57 = +[NSAssertionHandler currentHandler];
    v58 = [NSString stringWithUTF8String:"NSString *getMPModelPropertySongLastDevicePlaybackDate(void)"];
    [v57 handleFailureInFunction:v58 file:@"ICMusicLibraryArtistAffinityAnalyzer.m" lineNumber:36 description:{@"%s", dlerror()}];

    goto LABEL_44;
  }

  v33 = *v31;
  v67[3] = v33;
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v34 = qword_100213B48;
  v66 = qword_100213B48;
  if (!qword_100213B48)
  {
    v35 = sub_10003AB00();
    v64[3] = dlsym(v35, "MPModelPropertySongLibraryAddedDate");
    qword_100213B48 = v64[3];
    v34 = v64[3];
  }

  _Block_object_dispose(&v63, 8);
  if (!v34)
  {
    v59 = +[NSAssertionHandler currentHandler];
    v60 = [NSString stringWithUTF8String:"NSString *getMPModelPropertySongLibraryAddedDate(void)"];
    [v59 handleFailureInFunction:v60 file:@"ICMusicLibraryArtistAffinityAnalyzer.m" lineNumber:40 description:{@"%s", dlerror()}];

    goto LABEL_44;
  }

  v36 = *v34;
  v67[4] = v36;
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v37 = qword_100213B50;
  v66 = qword_100213B50;
  if (!qword_100213B50)
  {
    v38 = sub_10003AB00();
    v64[3] = dlsym(v38, "MPModelPropertySongUserRating");
    qword_100213B50 = v64[3];
    v37 = v64[3];
  }

  _Block_object_dispose(&v63, 8);
  if (!v37)
  {
    v61 = +[NSAssertionHandler currentHandler];
    v62 = [NSString stringWithUTF8String:"NSString *getMPModelPropertySongUserRating(void)"];
    [v61 handleFailureInFunction:v62 file:@"ICMusicLibraryArtistAffinityAnalyzer.m" lineNumber:41 description:{@"%s", dlerror()}];

LABEL_44:
    __break(1u);
  }

  v68 = *v37;
  v39 = v68;
  v40 = [NSArray arrayWithObjects:v67 count:6];

  v41 = [v21 initWithProperties:v40 relationships:v20];

  return v41;
}

- (id)aggregateLibraryRecommendationMetricsFromSnapshots:(id)snapshots
{
  snapshotsCopy = snapshots;
  v4 = objc_alloc_init(NSMutableDictionary);
  v29 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = snapshotsCopy;
  v5 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v34;
    v30 = *v34;
    v31 = v4;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v34 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v33 + 1) + 8 * i);
        if ([v9 isValid])
        {
          artistMetadataDescriptor = [v9 artistMetadataDescriptor];
          v11 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llu", [artistMetadataDescriptor storeAdamID]);

          v12 = [v4 valueForKey:v11];
          if (v12)
          {
            [v12 setCumulativePlayCount:{objc_msgSend(v9, "playCount") + objc_msgSend(v12, "cumulativePlayCount")}];
            [v12 setCumulativeSkipCount:{objc_msgSend(v9, "skipCount") + objc_msgSend(v12, "cumulativeSkipCount")}];
            albumMetadataDescriptor = [v9 albumMetadataDescriptor];
            uniqueAlbums = [v12 uniqueAlbums];
            v15 = [uniqueAlbums containsObject:albumMetadataDescriptor];

            if ((v15 & 1) == 0)
            {
              uniqueAlbums2 = [v12 uniqueAlbums];
              [uniqueAlbums2 addObject:albumMetadataDescriptor];
            }

            songMetadataDescriptor = [v9 songMetadataDescriptor];
            uniqueSongs = [v12 uniqueSongs];
            v19 = [uniqueSongs containsObject:songMetadataDescriptor];

            if ((v19 & 1) == 0)
            {
              uniqueSongs2 = [v12 uniqueSongs];
              [uniqueSongs2 addObject:songMetadataDescriptor];
            }

            libraryAddedDate = [v9 libraryAddedDate];
            if (libraryAddedDate)
            {
              v22 = [v29 components:28 fromDate:libraryAddedDate];
              uniqueDatesWithAddedContent = [v12 uniqueDatesWithAddedContent];
              [uniqueDatesWithAddedContent addObject:v22];
            }

            lastPlayedDate = [v9 lastPlayedDate];
            if (lastPlayedDate)
            {
              lastPlayedDate2 = [v12 lastPlayedDate];
              v26 = [lastPlayedDate2 laterDate:lastPlayedDate];

              [v12 setLastPlayedDate:v26];
            }

            v7 = v30;
            v4 = v31;
          }

          else
          {
            albumMetadataDescriptor = [[ICMusicLibraryArtistAffinitySnapshot alloc] initWithContentItemSnapshot:v9];
            [v4 setValue:albumMetadataDescriptor forKey:v11];
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v6);
  }

  allValues = [v4 allValues];

  return allValues;
}

- (void)performLibraryAnalysisWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v5 = objc_alloc_init(sub_10003B614());
  [v5 setLabel:@"LibraryRecommendationArtistAffinity"];
  v6 = [sub_10003B6F4() kindWithVariants:3];
  [v5 setItemKind:v6];

  _requestItemProperties = [(ICMusicLibraryArtistAffinityAnalyzer *)self _requestItemProperties];
  [v5 setItemProperties:_requestItemProperties];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10003B7D4;
  v9[3] = &unk_1001DA988;
  v9[4] = self;
  objc_copyWeak(&v11, &location);
  v8 = handlerCopy;
  v10 = v8;
  [v5 performWithResponseHandler:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (id)createFeatureProviderDictionaryFromNewContentResponse:(id)response withLibraryArtistSnapshots:(id)snapshots
{
  responseCopy = response;
  snapshotsCopy = snapshots;
  v6 = +[NSMutableDictionary dictionary];
  if ([snapshotsCopy count])
  {
    v7 = 0;
    do
    {
      v8 = [snapshotsCopy objectAtIndex:v7];
      v9 = [NSNumber numberWithInt:v7];
      v10 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v8 artistAdamID]);
      [v6 setObject:v9 forKey:v10];

      ++v7;
    }

    while ([snapshotsCopy count] > v7);
  }

  v87 = objc_alloc_init(NSMutableArray);
  v86 = objc_alloc_init(NSMutableArray);
  v88 = snapshotsCopy;
  v76 = v6;
  obj = [responseCopy artistContentsCount];
  if (obj)
  {
    for (i = 0; i != obj; ++i)
    {
      v12 = [responseCopy artistContentAtIndex:i];
      v13 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v12 adamId]);
      v14 = [v6 objectForKey:v13];
      v15 = v14;
      if (v14)
      {
        v16 = [snapshotsCopy objectAtIndex:{objc_msgSend(v14, "intValue")}];
        v112 = 0u;
        v113 = 0u;
        v114 = 0u;
        v115 = 0u;
        v96 = v16;
        uniqueAlbums = [v16 uniqueAlbums];
        v82 = [uniqueAlbums countByEnumeratingWithState:&v112 objects:v123 count:16];
        if (v82)
        {
          v18 = *v113;
          v92 = v12;
          v89 = v13;
          v84 = uniqueAlbums;
          v80 = *v113;
          do
          {
            v19 = 0;
            do
            {
              if (*v113 != v18)
              {
                objc_enumerationMutation(uniqueAlbums);
              }

              v20 = *(*(&v112 + 1) + 8 * v19);
              v108 = 0u;
              v109 = 0u;
              v110 = 0u;
              v111 = 0u;
              catalogContents = [v12 catalogContents];
              v22 = [catalogContents countByEnumeratingWithState:&v108 objects:v122 count:16];
              if (v22)
              {
                v23 = v22;
                v24 = *v109;
                while (2)
                {
                  for (j = 0; j != v23; j = j + 1)
                  {
                    if (*v109 != v24)
                    {
                      objc_enumerationMutation(catalogContents);
                    }

                    v26 = *(*(&v108 + 1) + 8 * j);
                    storeAdamID = [v20 storeAdamID];
                    if (storeAdamID == [v26 adamId])
                    {

                      snapshotsCopy = v88;
                      v13 = v89;
                      v6 = v76;
                      v12 = v92;
                      goto LABEL_24;
                    }
                  }

                  v23 = [catalogContents countByEnumeratingWithState:&v108 objects:v122 count:16];
                  if (v23)
                  {
                    continue;
                  }

                  break;
                }
              }

              v19 = v19 + 1;
              uniqueAlbums = v84;
              v6 = v76;
              v12 = v92;
              v13 = v89;
              v18 = v80;
            }

            while (v19 != v82);
            snapshotsCopy = v88;
            v82 = [v84 countByEnumeratingWithState:&v112 objects:v123 count:16];
          }

          while (v82);
        }

        v28 = [NSNumber numberWithInt:i];
        [v87 addObject:v28];

        [v86 addObject:v15];
LABEL_24:
      }
    }
  }

  v29 = v87;
  v30 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v87 count]);
  v121[0] = v30;
  v121[1] = &off_1001ED138;
  v31 = [NSArray arrayWithObjects:v121 count:2];
  v107 = 0;
  v85 = [[MLMultiArray alloc] initWithShape:v31 dataType:131104 error:&v107];
  v32 = v107;
  v106 = v32;
  v83 = [[MLMultiArray alloc] initWithShape:v31 dataType:131104 error:&v106];
  v33 = v106;

  v105 = v33;
  v81 = [[MLMultiArray alloc] initWithShape:v31 dataType:131104 error:&v105];
  v34 = v105;

  v104 = v34;
  v79 = [[MLMultiArray alloc] initWithShape:v31 dataType:131104 error:&v104];
  v35 = v104;

  v103 = v35;
  v93 = v31;
  v78 = [[MLMultiArray alloc] initWithShape:v31 dataType:65600 error:&v103];
  v97 = v103;

  v36 = +[NSMutableDictionary dictionary];
  v77 = v30;
  if ([v30 unsignedLongValue])
  {
    v37 = 0;
    do
    {
      v38 = [v29 objectAtIndex:v37];
      intValue = [v38 intValue];

      v90 = [responseCopy artistContentAtIndex:intValue];
      v40 = [v90 catalogContentAtIndex:0];
      contentFeatures = [v40 contentFeatures];

      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      obja = contentFeatures;
      v42 = [obja countByEnumeratingWithState:&v99 objects:v120 count:16];
      if (v42)
      {
        v43 = v42;
        v44 = *v100;
        do
        {
          for (k = 0; k != v43; k = k + 1)
          {
            if (*v100 != v44)
            {
              objc_enumerationMutation(obja);
            }

            v46 = *(*(&v99 + 1) + 8 * k);
            v47 = [v46 key];
            if (!v37)
            {
              v48 = [MLMultiArray alloc];
              v98 = v97;
              v49 = [v48 initWithShape:v93 dataType:65600 error:&v98];
              v50 = v98;

              [v36 setObject:v49 forKey:v47];
              v97 = v50;
            }

            v51 = [v36 objectForKey:v47];
            [v46 valueAtIndex:0];
            v52 = [NSNumber numberWithFloat:?];
            [v51 setObject:v52 atIndexedSubscript:v37];
          }

          v43 = [obja countByEnumeratingWithState:&v99 objects:v120 count:16];
        }

        while (v43);
      }

      v53 = [v86 objectAtIndex:v37];
      intValue2 = [v53 intValue];

      snapshotsCopy = v88;
      v55 = [v88 objectAtIndex:intValue2];
      uniqueDatesWithAddedContent = [v55 uniqueDatesWithAddedContent];
      v57 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [uniqueDatesWithAddedContent count]);
      [v85 setObject:v57 atIndexedSubscript:v37];

      uniqueAlbums2 = [v55 uniqueAlbums];
      v59 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [uniqueAlbums2 count]);
      [v83 setObject:v59 atIndexedSubscript:v37];

      v60 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v55 cumulativePlayCount]);
      [v81 setObject:v60 atIndexedSubscript:v37];

      v61 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v55 daysSinceLastPlayedDate]);
      [v79 setObject:v61 atIndexedSubscript:v37];

      [v55 averagePlaysPerItemAdded];
      v62 = [NSNumber numberWithDouble:?];
      [v78 setObject:v62 atIndexedSubscript:v37];

      ++v37;
      v29 = v87;
    }

    while ([v77 unsignedLongValue] > v37);
  }

  v63 = [v29 count];
  if (v63 != [v85 count])
  {
    __assert_rtn("[ICMusicLibraryArtistAffinityAnalyzer createFeatureProviderDictionaryFromNewContentResponse:withLibraryArtistSnapshots:]", "ICMusicLibraryArtistAffinityAnalyzer.m", 163, "releaseIx.count == daysWithAdds.count");
  }

  v64 = [v29 count];
  if (v64 != [v83 count])
  {
    __assert_rtn("[ICMusicLibraryArtistAffinityAnalyzer createFeatureProviderDictionaryFromNewContentResponse:withLibraryArtistSnapshots:]", "ICMusicLibraryArtistAffinityAnalyzer.m", 164, "releaseIx.count == albumCount.count");
  }

  v65 = [v29 count];
  if (v65 != [v81 count])
  {
    __assert_rtn("[ICMusicLibraryArtistAffinityAnalyzer createFeatureProviderDictionaryFromNewContentResponse:withLibraryArtistSnapshots:]", "ICMusicLibraryArtistAffinityAnalyzer.m", 165, "releaseIx.count == playCount.count");
  }

  v66 = [v29 count];
  if (v66 != [v79 count])
  {
    __assert_rtn("[ICMusicLibraryArtistAffinityAnalyzer createFeatureProviderDictionaryFromNewContentResponse:withLibraryArtistSnapshots:]", "ICMusicLibraryArtistAffinityAnalyzer.m", 166, "releaseIx.count == daysSinceLastPlay.count");
  }

  v67 = [v29 count];
  if (v67 != [v78 count])
  {
    __assert_rtn("[ICMusicLibraryArtistAffinityAnalyzer createFeatureProviderDictionaryFromNewContentResponse:withLibraryArtistSnapshots:]", "ICMusicLibraryArtistAffinityAnalyzer.m", 167, "releaseIx.count == playsPerItem.count");
  }

  v68 = +[NSMutableDictionary dictionary];
  v69 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy5 = self;
    v118 = 2114;
    v119 = v85;
    _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "%{public}@ MLModel inputs: unique days with added content: %{public}@", buf, 0x16u);
  }

  [v68 setValue:v85 forKey:@"days_with_adds"];
  v70 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy5 = self;
    v118 = 2114;
    v119 = v83;
    _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "%{public}@ MLModel inputs: number of unique albums: %{public}@", buf, 0x16u);
  }

  [v68 setValue:v83 forKey:@"num_albums"];
  v71 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
  if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy5 = self;
    v118 = 2114;
    v119 = v81;
    _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "%{public}@ MLModel inputs: cumulative song play count: %{public}@", buf, 0x16u);
  }

  [v68 setValue:v81 forKey:@"num_plays"];
  v72 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy5 = self;
    v118 = 2114;
    v119 = v79;
    _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "%{public}@ MLModel inputs: number of days since last play: %{public}@", buf, 0x16u);
  }

  [v68 setValue:v79 forKey:@"days_since_last_play"];
  v73 = os_log_create("com.apple.amp.itunescloudd", "LibraryRecommendations");
  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy5 = self;
    v118 = 2114;
    v119 = v78;
    _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "%{public}@ MLModel inputs: average plays per item added: %{public}@", buf, 0x16u);
  }

  [v68 setValue:v78 forKey:@"plays_per_item"];
  [v68 addEntriesFromDictionary:v36];
  [v68 setValue:v29 forKey:@"release_ix"];

  return v68;
}

- (void)performLibraryAnalysisFromResponse:(id)response withCompletionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  v8 = objc_alloc_init(sub_10003B614());
  [v8 setLabel:@"LibraryRecommendationArtistAffinity"];
  v9 = [sub_10003B6F4() kindWithVariants:3];
  [v8 setItemKind:v9];

  _requestItemProperties = [(ICMusicLibraryArtistAffinityAnalyzer *)self _requestItemProperties];
  [v8 setItemProperties:_requestItemProperties];

  objc_initWeak(&location, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10003C9C4;
  v13[3] = &unk_1001DA960;
  objc_copyWeak(&v16, &location);
  v13[4] = self;
  v11 = responseCopy;
  v14 = v11;
  v12 = handlerCopy;
  v15 = v12;
  [v8 performWithResponseHandler:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

@end