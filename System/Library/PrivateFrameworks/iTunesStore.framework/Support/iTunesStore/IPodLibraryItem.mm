@interface IPodLibraryItem
+ (unsigned)mediaTypeForStoreDownload:(id)a3;
- (BOOL)hasItemArtwork;
- (IPodLibraryItem)init;
- (NSArray)chapters;
- (NSData)itemArtworkData;
- (NSDictionary)additionalEntityProperties;
- (NSString)itemDownloadIdentifier;
- (NSString)itemMediaPath;
- (StoreDownload)itemMetadata;
- (double)durationInSeconds;
- (id)_copyChapterVideoTracksForAsset:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)assetType;
- (int64_t)downloadType;
- (int64_t)libraryPersistentIdentifier;
- (int64_t)protectionType;
- (int64_t)updateType;
- (void)dealloc;
- (void)loadPropertiesFromMediaPath:(id)a3 includeTracks:(BOOL)a4;
- (void)setAdditionalEntityProperties:(id)a3;
- (void)setAssetType:(int64_t)a3;
- (void)setChapters:(id)a3;
- (void)setDownloadType:(int64_t)a3;
- (void)setDurationInSeconds:(double)a3;
- (void)setItemArtworkData:(id)a3;
- (void)setItemDownloadIdentifier:(id)a3;
- (void)setItemMediaPath:(id)a3;
- (void)setItemMetadata:(id)a3;
- (void)setLibraryPersistentIdentifier:(int64_t)a3;
- (void)setProtectionType:(int64_t)a3;
- (void)setUpdateType:(int64_t)a3;
- (void)setValue:(id)a3 forAdditionalEntityProperty:(id)a4;
@end

@implementation IPodLibraryItem

- (IPodLibraryItem)init
{
  v4.receiver = self;
  v4.super_class = IPodLibraryItem;
  v2 = [(IPodLibraryItem *)&v4 init];
  if (v2)
  {
    v2->_dispatchQueue = dispatch_queue_create("com.apple.itunesstored.IPodLibraryItem", 0);
  }

  return v2;
}

- (void)dealloc
{
  dispatch_release(self->_dispatchQueue);

  v3.receiver = self;
  v3.super_class = IPodLibraryItem;
  [(IPodLibraryItem *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100177044;
  block[3] = &unk_10032A398;
  block[4] = v5;
  block[5] = self;
  block[6] = a3;
  dispatch_sync(dispatchQueue, block);
  return v5;
}

+ (unsigned)mediaTypeForStoreDownload:(id)a3
{
  v4 = [a3 kind];
  v5 = [a3 podcastType];
  v6 = [v5 isEqualToString:SSDownloadPodcastTypeITunesU];
  if ([v4 isEqualToString:SSDownloadKindPodcast])
  {
    v7 = v6 == 0;
    v8 = 4;
    v9 = 32;
  }

  else if ([v4 isEqualToString:SSDownloadKindVideoPodcast])
  {
    v7 = v6 == 0;
    v8 = 256;
    v9 = 4096;
  }

  else
  {
    if ([v4 isEqualToString:SSDownloadKindAudiobook])
    {
      return 2;
    }

    if ([v4 isEqualToString:SSDownloadKindMovie])
    {
      return 2048;
    }

    if ([v4 isEqualToString:SSDownloadKindTelevisionEpisode])
    {
      return 512;
    }

    v7 = [v4 isEqualToString:SSDownloadKindMusicVideo] == 0;
    v8 = 8;
    v9 = 1032;
  }

  if (v7)
  {
    return v8;
  }

  else
  {
    return v9;
  }
}

- (NSDictionary)additionalEntityProperties
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_100177330;
  v10 = sub_100177340;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10017734C;
  v5[3] = &unk_1003277E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)assetType
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100177430;
  v5[3] = &unk_1003277E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSArray)chapters
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_100177330;
  v10 = sub_100177340;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100177534;
  v5[3] = &unk_1003277E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)downloadType
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100177618;
  v5[3] = &unk_1003277E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (double)durationInSeconds
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001776D8;
  v5[3] = &unk_1003277E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)hasItemArtwork
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001777D8;
  v5[3] = &unk_10032A3C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSData)itemArtworkData
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_100177330;
  v10 = sub_100177340;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10017790C;
  v5[3] = &unk_1003277E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSString)itemDownloadIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_100177330;
  v10 = sub_100177340;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100177A34;
  v5[3] = &unk_1003277E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSString)itemMediaPath
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_100177330;
  v10 = sub_100177340;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100177B5C;
  v5[3] = &unk_1003277E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (StoreDownload)itemMetadata
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = sub_100177330;
  v10 = sub_100177340;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100177C84;
  v5[3] = &unk_1003277E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (int64_t)libraryPersistentIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100177E74;
  v5[3] = &unk_1003277E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)loadPropertiesFromMediaPath:(id)a3 includeTracks:(BOOL)a4
{
  v4 = a4;
  v6 = [[AVURLAsset alloc] initWithURL:+[NSURL fileURLWithPath:](NSURL options:{"fileURLWithPath:", a3), 0}];
  if (!v6)
  {
    return;
  }

  v7 = v6;
  v8 = dispatch_semaphore_create(0);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1001780D8;
  v20[3] = &unk_100327378;
  v20[4] = v8;
  [v7 loadValuesAsynchronouslyForKeys:+[NSArray arrayWithObjects:](NSArray completionHandler:{"arrayWithObjects:", @"duration", @"tracks", 0), v20}];
  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v8);
  v9 = [v7 tracksWithMediaType:AVMediaTypeVideo];
  if ([v9 count])
  {
    v10 = [(IPodLibraryItem *)self _copyChapterVideoTracksForAsset:v7];
    v11 = [v10 count];
    if (v11 >= [v9 count])
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    if (v4)
    {
      goto LABEL_7;
    }

LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  v12 = [objc_msgSend(v7 tracksWithMediaType:{AVMediaTypeAudio), "count"}] != 0;
  if (!v4)
  {
    goto LABEL_9;
  }

LABEL_7:
  v13 = [ML3Track importChaptersByParsingAsset:v7];
LABEL_10:
  [v7 duration];
  v14 = ISWeakLinkedSymbolForString();
  if (v14)
  {
    v21 = v18;
    v22 = v19;
    v14(&v21);
  }

  else
  {
    v15 = 0;
  }

  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001780E0;
  block[3] = &unk_10032A3E8;
  block[5] = v13;
  block[6] = v12;
  block[7] = v15;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (int64_t)protectionType
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001781E0;
  v5[3] = &unk_1003277E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setAdditionalEntityProperties:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100178268;
  v4[3] = &unk_100327350;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setAssetType:(int64_t)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100178324;
  v4[3] = &unk_100327808;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)setChapters:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001783A4;
  v4[3] = &unk_100327350;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)setDownloadType:(int64_t)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100178460;
  v4[3] = &unk_100327808;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setDurationInSeconds:(double)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001784E4;
  v4[3] = &unk_100327808;
  v4[4] = self;
  *&v4[5] = a3;
  dispatch_async(dispatchQueue, v4);
}

- (void)setItemArtworkData:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100178568;
  v4[3] = &unk_100327350;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setItemDownloadIdentifier:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100178624;
  v4[3] = &unk_100327350;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setItemMediaPath:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001786E0;
  v4[3] = &unk_100327350;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setItemMetadata:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10017879C;
  v4[3] = &unk_100327350;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setLibraryPersistentIdentifier:(int64_t)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100178858;
  v4[3] = &unk_100327808;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setProtectionType:(int64_t)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001788D8;
  v4[3] = &unk_100327808;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setUpdateType:(int64_t)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100178958;
  v4[3] = &unk_100327808;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setValue:(id)a3 forAdditionalEntityProperty:(id)a4
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001789DC;
  block[3] = &unk_1003273E0;
  block[4] = a3;
  block[5] = self;
  block[6] = a4;
  dispatch_sync(dispatchQueue, block);
}

- (int64_t)updateType
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100178B08;
  v5[3] = &unk_1003277E0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)_copyChapterVideoTracksForAsset:(id)a3
{
  v4 = objc_alloc_init(NSMutableArray);
  v5 = [a3 trackReferences];
  v6 = [v5 objectForKey:AVAssetChapterListTrackReferencesKey];
  if ([v6 count] >= 2)
  {
    v7 = 1;
    do
    {
      v8 = [a3 trackWithTrackID:{objc_msgSend(objc_msgSend(v6, "objectAtIndex:", v7), "intValue")}];
      if ([objc_msgSend(v8 "mediaType")])
      {
        [v4 addObject:v8];
      }

      v7 += 2;
    }

    while (v7 < [v6 count]);
  }

  return v4;
}

@end