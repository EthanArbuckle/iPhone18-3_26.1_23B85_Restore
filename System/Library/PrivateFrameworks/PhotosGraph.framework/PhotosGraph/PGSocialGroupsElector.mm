@interface PGSocialGroupsElector
- (PGSocialGroupsElector)init;
- (id)electedSocialGroupsMaxNumberOfElectedSocialGroups:(int64_t)groups progressReporter:(id)reporter error:(id *)error;
@end

@implementation PGSocialGroupsElector

- (id)electedSocialGroupsMaxNumberOfElectedSocialGroups:(int64_t)groups progressReporter:(id)reporter error:(id *)error
{
  reporterCopy = reporter;
  selfCopy = self;
  SocialGroupsElector.electSocialGroups(maxNumberOfElectedSocialGroups:progressReporter:)(groups, reporterCopy);

  type metadata accessor for ElectedSocialGroup();
  v9 = sub_22F741160();

  return v9;
}

- (PGSocialGroupsElector)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end