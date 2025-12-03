@interface MLSyncKeepLocalEvaluationResult
- (BOOL)addTrackWithPersistentId:(int64_t)id properties:(id)properties downloadType:(int)type;
- (MLSyncKeepLocalEvaluationResult)init;
- (NSDictionary)trackProperties;
- (NSOrderedSet)automaticDownloads;
- (NSOrderedSet)manualDownloads;
- (id)getTrackPropertiesForPersistentID:(int64_t)d;
- (void)updateTrackProperties:(id)properties forPersistendID:(int64_t)d;
@end

@implementation MLSyncKeepLocalEvaluationResult

- (void)updateTrackProperties:(id)properties forPersistendID:(int64_t)d
{
  trackProperties = self->_trackProperties;
  propertiesCopy = properties;
  v7 = [NSNumber numberWithLongLong:d];
  [(NSMutableDictionary *)trackProperties setObject:propertiesCopy forKey:v7];
}

- (id)getTrackPropertiesForPersistentID:(int64_t)d
{
  trackProperties = self->_trackProperties;
  v4 = [NSNumber numberWithLongLong:d];
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

- (BOOL)addTrackWithPersistentId:(int64_t)id properties:(id)properties downloadType:(int)type
{
  propertiesCopy = properties;
  v9 = [NSNumber numberWithLongLong:id];
  v10 = [propertiesCopy objectForKey:ML3TrackPropertyTotalSize];
  longLongValue = [v10 longLongValue];

  v12 = [(NSMutableDictionary *)self->_trackProperties objectForKey:v9];

  if (!v12)
  {
    [(NSMutableDictionary *)self->_trackProperties setObject:propertiesCopy forKey:v9];
    if (type == 1)
    {
      v13 = 40;
      v14 = 16;
      goto LABEL_6;
    }

    if (!type)
    {
      v13 = 56;
      v14 = 8;
LABEL_6:
      [*(&self->super.isa + v14) addObject:v9];
      *(&self->super.isa + v13) = (*(&self->super.isa + v13) + longLongValue);
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