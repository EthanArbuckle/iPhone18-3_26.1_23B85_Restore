@interface NanoWeatherAppWorkSpaceObserver
+ (id)sharedWorkspaceObserver;
- (NanoWeatherAppWorkSpaceObserver)init;
- (NanoWeatherAppWorkSpaceObserverDelegate)delegate;
- (id)_weatherApplicationProxyFromProxies:(id)a3;
- (void)_weatherApplicationStateDidChange:(unint64_t)a3 forApplicationProxies:(id)a4;
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
  block[4] = a1;
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

- (id)_weatherApplicationProxyFromProxies:(id)a3
{
  v3 = a3;
  v4 = [v3 indexOfObjectPassingTest:&stru_10000C480];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 objectAtIndexedSubscript:v4];
  }

  return v5;
}

- (void)_weatherApplicationStateDidChange:(unint64_t)a3 forApplicationProxies:(id)a4
{
  v6 = a4;
  v7 = [(NanoWeatherAppWorkSpaceObserver *)self delegate];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000017C4;
  v9[3] = &unk_10000C4D0;
  v9[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  [v7 performBlockAsXPCXaction:v9];
}

- (void)startObservingAppInstallation
{
  v3 = sub_1000010B8(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Start observing for Weather App installation", v5, 2u);
  }

  v4 = [(NanoWeatherAppWorkSpaceObserver *)self defaultAppWorkspace];
  [v4 addObserver:self];
}

- (void)stopObservingAppInstallation
{
  v3 = sub_1000010B8(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Stop observing for Weather App installation", v5, 2u);
  }

  v4 = [(NanoWeatherAppWorkSpaceObserver *)self defaultAppWorkspace];
  [v4 removeObserver:self];
}

- (NanoWeatherAppWorkSpaceObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end