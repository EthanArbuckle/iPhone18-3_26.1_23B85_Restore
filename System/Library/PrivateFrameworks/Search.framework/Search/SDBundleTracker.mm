@interface SDBundleTracker
+ (id)sharedBundleTracker;
- (SDBundleTracker)init;
- (id)_infoForKey:(id)a3;
- (void)_saveInfoForBundleWithKey:(id)a3;
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

- (id)_infoForKey:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_trackingInfos objectForKey:v4];
  if (!v5)
  {
    v5 = [[SDBundleTrackingInfo alloc] initWithCompositeIdentifier:v4];
    [(NSMutableDictionary *)self->_trackingInfos setObject:v5 forKey:v4];
  }

  return v5;
}

- (void)_saveInfoForBundleWithKey:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_trackingInfos objectForKey:a3];
  [v3 save];
}

@end