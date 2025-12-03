@interface SKTCCServiceObserver
- (SKTCCServiceObserver)init;
- (int64_t)_mediaEventsStreamIsAuthorizedForBundles;
- (void)_subscribeForTCCEvents;
- (void)dealloc;
@end

@implementation SKTCCServiceObserver

- (SKTCCServiceObserver)init
{
  v6.receiver = self;
  v6.super_class = SKTCCServiceObserver;
  v2 = [(SKTCCServiceObserver *)&v6 init];
  v3 = v2;
  if (v2)
  {
    _mediaEventsStreamIsAuthorizedForBundles = [(SKTCCServiceObserver *)v2 _mediaEventsStreamIsAuthorizedForBundles];
    v3->_identifier = @"SKMediaEventsHelper";
    v3->_numberOfAuthorizedBundles = _mediaEventsStreamIsAuthorizedForBundles;
    v3->_q = dispatch_queue_create("com.apple.SensorKit.SKMediaEventsHelper.TCCEvents", 0);
    [(SKTCCServiceObserver *)v3 _subscribeForTCCEvents];
  }

  return v3;
}

- (void)dealloc
{
  [(NSString *)[(SKTCCServiceObserver *)self identifier] UTF8String];
  tcc_events_unsubscribe();
  dispatch_release(self->_q);

  v3.receiver = self;
  v3.super_class = SKTCCServiceObserver;
  [(SKTCCServiceObserver *)&v3 dealloc];
}

- (void)_subscribeForTCCEvents
{
  keys = [kTCCServiceSensorKitMediaEvents UTF8String];
  values = xpc_BOOL_create(1);
  v3 = xpc_dictionary_create(&keys, &values, 1uLL);
  tcc_events_filter_create_with_criteria();
  objc_initWeak(&location, self);
  [(NSString *)self->_identifier UTF8String];
  q = self->_q;
  objc_copyWeak(&v5, &location);
  tcc_events_subscribe();

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (int64_t)_mediaEventsStreamIsAuthorizedForBundles
{
  v2 = TCCAccessCopyBundleIdentifiersForService();
  v3 = [v2 count];

  v4 = qword_100008800;
  if (os_log_type_enabled(qword_100008800, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Number of authorized bundles:%li", &v6, 0xCu);
  }

  return v3;
}

@end