@interface PGSocialGroupsElector
- (PGSocialGroupsElector)init;
- (id)electedSocialGroupsMaxNumberOfElectedSocialGroups:(int64_t)a3 progressReporter:(id)a4 error:(id *)a5;
@end

@implementation PGSocialGroupsElector

- (id)electedSocialGroupsMaxNumberOfElectedSocialGroups:(int64_t)a3 progressReporter:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = self;
  SocialGroupsElector.electSocialGroups(maxNumberOfElectedSocialGroups:progressReporter:)(a3, v7);

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