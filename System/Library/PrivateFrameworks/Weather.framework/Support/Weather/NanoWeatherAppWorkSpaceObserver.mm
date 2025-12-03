@interface NanoWeatherAppWorkSpaceObserver
+ (id)sharedWorkspaceObserver;
- (NanoWeatherAppWorkSpaceObserver)init;
- (NanoWeatherAppWorkSpaceObserverDelegate)delegate;
- (id)_weatherApplicationProxyFromProxies:(id)proxies;
- (void)_weatherApplicationStateDidChange:(unint64_t)change forApplicationProxies:(id)proxies;
- (void)dealloc;
- (void)startObservingAppInstallation;
- (void)stopObservingAppInstallation;
@end

@implementation NanoWeatherAppWorkSpaceObserver

+ (id)sharedWorkspaceObserver
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001568;
  block[3] = &unk_10000C440;
  block[4] = self;
  if (qword_100011488 != -1)
  {
    dispatch_once(&qword_100011488, block);
  }

  v2 = qword_100011480;

  return v2;
}

- (NanoWeatherAppWorkSpaceObserver)init
{
  v6.receiver = self;
  v6.super_class = NanoWeatherAppWorkSpaceObserver;
  v2 = [(NanoWeatherAppWorkSpaceObserver *)&v6 init];
  if (v2)
  {
    v3 = +[LSApplicationWorkspace defaultWorkspace];
    defaultAppWorkspace = v2->_defaultAppWorkspace;
    v2->_defaultAppWorkspace = v3;
  }

  return v2;
}

- (void)dealloc
{
  [(NanoWeatherAppWorkSpaceObserver *)self stopObservingAppInstallation];
  v3.receiver = self;
  v3.super_class = NanoWeatherAppWorkSpaceObserver;
  [(NanoWeatherAppWorkSpaceObserver *)&v3 dealloc];
}

- (id)_weatherApplicationProxyFromProxies:(id)proxies
{
  proxiesCopy = proxies;
  v4 = [proxiesCopy indexOfObjectPassingTest:&stru_10000C480];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [proxiesCopy objectAtIndexedSubscript:v4];
  }

  return v5;
}

- (void)_weatherApplicationStateDidChange:(unint64_t)change forApplicationProxies:(id)proxies
{
  proxiesCopy = proxies;
  delegate = [(NanoWeatherAppWorkSpaceObserver *)self delegate];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000017C4;
  v9[3] = &unk_10000C4D0;
  v9[4] = self;
  v10 = proxiesCopy;
  changeCopy = change;
  v8 = proxiesCopy;
  [delegate performBlockAsXPCXaction:v9];
}

- (void)startObservingAppInstallation
{
  v3 = sub_1000010B8(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Start observing for Weather App installation", v5, 2u);
  }

  defaultAppWorkspace = [(NanoWeatherAppWorkSpaceObserver *)self defaultAppWorkspace];
  [defaultAppWorkspace addObserver:self];
}

- (void)stopObservingAppInstallation
{
  v3 = sub_1000010B8(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Stop observing for Weather App installation", v5, 2u);
  }

  defaultAppWorkspace = [(NanoWeatherAppWorkSpaceObserver *)self defaultAppWorkspace];
  [defaultAppWorkspace removeObserver:self];
}

- (NanoWeatherAppWorkSpaceObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end