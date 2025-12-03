@interface PFBugReport
- (NSString)domainString;
- (NSString)errorKindString;
- (NSString)signature;
- (NSString)systemString;
- (PFBugReport)init;
@end

@implementation PFBugReport

- (NSString)domainString
{
  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v2;
}

- (NSString)systemString
{
  v4 = *(&self->super.isa + OBJC_IVAR___PFBugReport_system);
  PodcastsSystem.rawValue.getter();
  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v2;
}

- (NSString)errorKindString
{
  sub_1D914FDE0();
  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v2;
}

- (NSString)signature
{
  selfCopy = self;
  sub_1D91500D8();

  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v3;
}

- (PFBugReport)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end