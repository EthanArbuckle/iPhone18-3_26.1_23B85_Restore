@interface SDBundleTracker
+ (id)sharedBundleTracker;
- (SDBundleTracker)init;
- (id)_infoForKey:(id)key;
- (void)_saveInfoForBundleWithKey:(id)key;
@end

@implementation SDBundleTracker

+ (id)sharedBundleTracker
{
  pthread_once(&stru_1000A7B60, sub_1000038E4);
  v2 = qword_1000A81D0;

  return v2;
}

- (SDBundleTracker)init
{
  v6.receiver = self;
  v6.super_class = SDBundleTracker;
  v2 = [(SDBundleTracker *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    trackingInfos = v2->_trackingInfos;
    v2->_trackingInfos = v3;
  }

  return v2;
}

- (id)_infoForKey:(id)key
{
  keyCopy = key;
  v5 = [(NSMutableDictionary *)self->_trackingInfos objectForKey:keyCopy];
  if (!v5)
  {
    v5 = [[SDBundleTrackingInfo alloc] initWithCompositeIdentifier:keyCopy];
    [(NSMutableDictionary *)self->_trackingInfos setObject:v5 forKey:keyCopy];
  }

  return v5;
}

- (void)_saveInfoForBundleWithKey:(id)key
{
  v3 = [(NSMutableDictionary *)self->_trackingInfos objectForKey:key];
  [v3 save];
}

@end