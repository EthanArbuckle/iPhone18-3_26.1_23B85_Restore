@interface CSGeoServicesListener
- (CSGeoServicesListener)initWithDispatchSilo:(id)a3;
- (void)navigationListener:(id)a3 didChangeNavigationState:(unint64_t)a4 transportType:(int)a5;
@end

@implementation CSGeoServicesListener

- (CSGeoServicesListener)initWithDispatchSilo:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = CSGeoServicesListener;
  v6 = [(CSGeoServicesListener *)&v12 init];
  objc_storeStrong(&v6->_silo, a3);
  v7 = [GEONavigationListener alloc];
  v8 = [(CLDispatchSilo *)v6->_silo queue];
  v9 = [v7 initWithQueue:v8];
  navigationListener = v6->_navigationListener;
  v6->_navigationListener = v9;

  [(GEONavigationListener *)v6->_navigationListener setDelegate:v6];
  v6->_navigationTransportTypeAvailable = 0;
  v6->_navigationTransportType = 4;

  return v6;
}

- (void)navigationListener:(id)a3 didChangeNavigationState:(unint64_t)a4 transportType:(int)a5
{
  v8 = a3;
  if (a4 == 2)
  {
    v9 = a5;
  }

  else
  {
    v9 = 4;
  }

  self->_navigationTransportTypeAvailable = a4 == 2;
  self->_navigationTransportType = v9;
  if (qword_1004567D8 != -1)
  {
    sub_100358560();
  }

  v10 = qword_1004567E0;
  if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_DEBUG))
  {
    navigationTransportType = self->_navigationTransportType;
    v12[0] = 67109120;
    v12[1] = navigationTransportType;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Updated transport type, %d", v12, 8u);
  }
}

@end