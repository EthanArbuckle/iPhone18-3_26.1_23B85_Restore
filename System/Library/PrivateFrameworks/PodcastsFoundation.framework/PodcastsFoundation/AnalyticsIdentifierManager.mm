@interface AnalyticsIdentifierManager
+ (NSString)kMTResetIdentifierKey;
+ (_TtC18PodcastsFoundation26AnalyticsIdentifierManager)sharedInstance;
- (id)identifierPromise;
- (void)resetIdentifiers;
- (void)resetIfNeeded;
- (void)setIdentifierPromise:(id)promise;
- (void)updateIdentifiers;
@end

@implementation AnalyticsIdentifierManager

+ (NSString)kMTResetIdentifierKey
{
  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v2;
}

+ (_TtC18PodcastsFoundation26AnalyticsIdentifierManager)sharedInstance
{
  if (qword_1EDCD2A78 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDCD2A80;

  return v3;
}

- (id)identifierPromise
{
  v3 = OBJC_IVAR____TtC18PodcastsFoundation26AnalyticsIdentifierManager_identifierPromise;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIdentifierPromise:(id)promise
{
  v5 = OBJC_IVAR____TtC18PodcastsFoundation26AnalyticsIdentifierManager_identifierPromise;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = promise;
  promiseCopy = promise;
}

- (void)updateIdentifiers
{
  selfCopy = self;
  sub_1D8DAAEA4();
}

- (void)resetIdentifiers
{
  selfCopy = self;
  sub_1D8F8779C();
}

- (void)resetIfNeeded
{
  selfCopy = self;
  sub_1D8DB2F50();
}

@end