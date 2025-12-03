@interface XPCNotificationObserver
- (void)didChangeEnvironment;
@end

@implementation XPCNotificationObserver

- (void)didChangeEnvironment
{
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100008D04(v0, qword_1003FAA40);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "XPC observer: didChangeEnvironment, resetting session cache.", v3, 2u);
  }

  sharedSession = [objc_opt_self() sharedSession];
  [sharedSession resetSessionCache];
}

@end