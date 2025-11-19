@interface MPSongManager
+ (id)sharedManager;
+ (void)releaseSharedManager;
- (MPSongManager)init;
- (MPSongManager)initWithPaths:(id)a3;
- (id)beatsForSongAtPath:(id)a3 progressCallback:(void *)a4 context:(void *)a5;
- (id)songMetadataForPath:(id)a3;
- (void)dealloc;
@end

@implementation MPSongManager

+ (id)sharedManager
{
  result = qword_1EF2C0;
  if (!qword_1EF2C0)
  {
    objc_sync_enter(a1);
    if (!qword_1EF2C0)
    {
      qword_1EF2C0 = [[MPSongManager alloc] initWithPaths:0];
    }

    objc_sync_exit(a1);
    return qword_1EF2C0;
  }

  return result;
}

+ (void)releaseSharedManager
{
  if (qword_1EF2C0)
  {
    objc_sync_enter(a1);

    qword_1EF2C0 = 0;

    objc_sync_exit(a1);
  }
}

- (MPSongManager)init
{
  v16.receiver = self;
  v16.super_class = MPSongManager;
  v2 = [(MPSongManager *)&v16 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSRecursiveLock);
    v2->mSongLock = v3;
    [(NSRecursiveLock *)v3 setName:@"MPSongManager.songLock"];
    v2->mSongCacheFilePath = 0;
    v2->mDaFunc = 0;
    v2->mSongDescriptions = objc_alloc_init(NSMutableDictionary);
    v4 = objc_alloc_init(NSMutableDictionary);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    mSongDescriptions = v2->mSongDescriptions;
    v6 = [(NSMutableDictionary *)mSongDescriptions countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(mSongDescriptions);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          if (![-[NSMutableDictionary objectForKey:](v2->mSongDescriptions objectForKey:{v10), "count"}])
          {
            [v4 setObject:+[NSDictionary dictionaryWithContentsOfFile:](NSDictionary forKey:{"dictionaryWithContentsOfFile:", -[NSBundle pathForResource:ofType:](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "pathForResource:ofType:", v10, @"plist", v10}];
          }
        }

        v7 = [(NSMutableDictionary *)mSongDescriptions countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v7);
    }

    if ([v4 count])
    {
      [(NSMutableDictionary *)v2->mSongDescriptions addEntriesFromDictionary:v4];
    }

    v2->mSongBeats = objc_alloc_init(NSMutableDictionary);
  }

  return v2;
}

- (void)dealloc
{
  self->mSongLock = 0;

  self->mSongDescriptions = 0;
  self->mSongBeats = 0;

  self->mSongCacheFilePath = 0;
  self->mSongMetaData = 0;
  v3.receiver = self;
  v3.super_class = MPSongManager;
  [(MPSongManager *)&v3 dealloc];
}

- (id)beatsForSongAtPath:(id)a3 progressCallback:(void *)a4 context:(void *)a5
{
  if (a3)
  {
    return [(NSMutableDictionary *)self->mSongBeats objectForKey:a3, a4, a5];
  }

  else
  {
    return 0;
  }
}

- (id)songMetadataForPath:(id)a3
{
  v4 = [a3 lastPathComponent];
  mSongMetaData = self->mSongMetaData;

  return [(NSMutableDictionary *)mSongMetaData objectForKey:v4];
}

- (MPSongManager)initWithPaths:(id)a3
{
  v4 = [(MPSongManager *)self init];
  if (v4)
  {
    v4->mSongMetaData = objc_alloc_init(NSMutableDictionary);
    v5 = +[NSMutableArray array];
    v6 = v5;
    if (a3)
    {
      [v5 addObjectsFromArray:a3];
    }

    else
    {
      [v5 addObject:{-[NSString stringByAppendingPathComponent:](-[NSBundle resourcePath](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "resourcePath"), "stringByAppendingPathComponent:", @"Content"}];
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = +[NSData dataWithContentsOfFile:](NSData, "dataWithContentsOfFile:", [*(*(&v14 + 1) + 8 * i) stringByAppendingPathComponent:@"Audio/SongDescriptions.plist"]);
          if (v11)
          {
            v12 = [NSPropertyListSerialization propertyListWithData:v11 options:2 format:0 error:0];
            if (v12)
            {
              [(NSMutableDictionary *)v4->mSongMetaData addEntriesFromDictionary:v12];
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  return v4;
}

@end