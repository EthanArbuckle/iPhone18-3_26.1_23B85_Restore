@interface TPSNetworkPathMonitor
+ (BOOL)isNetworkError:(id)a3;
+ (TPSNetworkPathMonitor)sharedMonitor;
- (TPSNetworkPathMonitor)init;
- (void)addObserverForKey:(id)a3 using:(id)a4;
- (void)removeObserverForKey:(id)a3;
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
  v2 = self;
  NetworkMonitorProxy.start()();
}

- (void)stop
{
  v2 = self;
  NetworkMonitorProxy.stop()();
}

- (void)addObserverForKey:(id)a3 using:(id)a4
{
  v6 = sub_1C014BD80();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  sub_1C014BD60();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = self;
  NetworkMonitorProxy.addObserver(for:using:)(v10, sub_1C0118CC8, v12);

  (*(v7 + 8))(v10, v6);
}

- (void)removeObserverForKey:(id)a3
{
  v4 = sub_1C014BD80();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C014BD60();
  v9 = self;
  NetworkMonitorProxy.removeObserver(_:)(v8);

  (*(v5 + 8))(v8, v4);
}

+ (BOOL)isNetworkError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
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

  v13 = [v3 code];

  return v13 == -1009;
}

- (TPSNetworkPathMonitor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end