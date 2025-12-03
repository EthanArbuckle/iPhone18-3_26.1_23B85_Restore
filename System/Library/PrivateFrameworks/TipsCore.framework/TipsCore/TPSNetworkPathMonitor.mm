@interface TPSNetworkPathMonitor
+ (BOOL)isNetworkError:(id)error;
+ (TPSNetworkPathMonitor)sharedMonitor;
- (TPSNetworkPathMonitor)init;
- (void)addObserverForKey:(id)key using:(id)using;
- (void)removeObserverForKey:(id)key;
- (void)start;
- (void)stop;
@end

@implementation TPSNetworkPathMonitor

+ (TPSNetworkPathMonitor)sharedMonitor
{
  if (qword_1EDD44950 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDD44958;

  return v3;
}

- (void)start
{
  selfCopy = self;
  NetworkMonitorProxy.start()();
}

- (void)stop
{
  selfCopy = self;
  NetworkMonitorProxy.stop()();
}

- (void)addObserverForKey:(id)key using:(id)using
{
  v6 = sub_1C014BD80();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(using);
  sub_1C014BD60();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  selfCopy = self;
  NetworkMonitorProxy.addObserver(for:using:)(v10, sub_1C0118CC8, v12);

  (*(v7 + 8))(v10, v6);
}

- (void)removeObserverForKey:(id)key
{
  v4 = sub_1C014BD80();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C014BD60();
  selfCopy = self;
  NetworkMonitorProxy.removeObserver(_:)(v8);

  (*(v5 + 8))(v8, v4);
}

+ (BOOL)isNetworkError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = sub_1C014C230();
  v7 = v6;

  v8 = *MEMORY[0x1E696A978];
  if (v5 == sub_1C014C230() && v7 == v9)
  {
  }

  else
  {
    v11 = sub_1C014C9F0();

    if ((v11 & 1) == 0)
    {

      return 0;
    }
  }

  code = [errorCopy code];

  return code == -1009;
}

- (TPSNetworkPathMonitor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end