@interface MLSyncKeepLocalEvaluationResult
- (BOOL)addTrackWithPersistentId:(int64_t)a3 properties:(id)a4 downloadType:(int)a5;
- (MLSyncKeepLocalEvaluationResult)init;
- (NSDictionary)trackProperties;
- (NSOrderedSet)automaticDownloads;
- (NSOrderedSet)manualDownloads;
- (id)getTrackPropertiesForPersistentID:(int64_t)a3;
- (void)updateTrackProperties:(id)a3 forPersistendID:(int64_t)a4;
@end

@implementation MLSyncKeepLocalEvaluationResult

- (void)updateTrackProperties:(id)a3 forPersistendID:(int64_t)a4
{
  trackProperties = self->_trackProperties;
  v6 = a3;
  v7 = [NSNumber numberWithLongLong:a4];
  [(NSMutableDictionary *)trackProperties setObject:v6 forKey:v7];
}

- (id)getTrackPropertiesForPersistentID:(int64_t)a3
{
  trackProperties = self->_trackProperties;
  v4 = [NSNumber numberWithLongLong:a3];
  v5 = [(NSMutableDictionary *)trackProperties objectForKey:v4];

  return v5;
}

- (NSDictionary)trackProperties
{
  v2 = [(NSMutableDictionary *)self->_trackProperties copy];

  return v2;
}

- (NSOrderedSet)manualDownloads
{
  v2 = [(NSMutableOrderedSet *)self->_manualDownloads copy];

  return v2;
}

- (NSOrderedSet)automaticDownloads
{
  v2 = [(NSMutableOrderedSet *)self->_automaticDownloads copy];

  return v2;
}

- (BOOL)addTrackWithPersistentId:(int64_t)a3 properties:(id)a4 downloadType:(int)a5
{
  v8 = a4;
  v9 = [NSNumber numberWithLongLong:a3];
  v10 = [v8 objectForKey:ML3TrackPropertyTotalSize];
  v11 = [v10 longLongValue];

  v12 = [(NSMutableDictionary *)self->_trackProperties objectForKey:v9];

  if (!v12)
  {
    [(NSMutableDictionary *)self->_trackProperties setObject:v8 forKey:v9];
    if (a5 == 1)
    {
      v13 = 40;
      v14 = 16;
      goto LABEL_6;
    }

    if (!a5)
    {
      v13 = 56;
      v14 = 8;
LABEL_6:
      [*(&self->super.isa + v14) addObject:v9];
      *(&self->super.isa + v13) = (*(&self->super.isa + v13) + v11);
    }
  }

  return v12 == 0;
}

- (MLSyncKeepLocalEvaluationResult)init
{
  v10.receiver = self;
  v10.super_class = MLSyncKeepLocalEvaluationResult;
  v2 = [(MLSyncKeepLocalEvaluationResult *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableOrderedSet);
    automaticDownloads = v2->_automaticDownloads;
    v2->_automaticDownloads = v3;

    v5 = objc_alloc_init(NSMutableOrderedSet);
    manualDownloads = v2->_manualDownloads;
    v2->_manualDownloads = v5;

    v7 = +[NSMutableDictionary dictionary];
    trackProperties = v2->_trackProperties;
    v2->_trackProperties = v7;
  }

  return v2;
}

@end