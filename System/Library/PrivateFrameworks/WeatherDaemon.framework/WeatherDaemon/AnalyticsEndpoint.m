@interface AnalyticsEndpoint
- (NSString)name;
- (NSString)sharedContainerIdentifier;
- (NSURL)url;
@end

@implementation AnalyticsEndpoint

- (NSURL)url
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_10007C37C();

  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  (*(v3 + 8))(v6, v2);

  return v9;
}

- (NSString)name
{

  sub_10007C4C0();

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (NSString)sharedContainerIdentifier
{

  sub_10007C560();
  v3 = v2;

  if (v3)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end