@interface PNStoryRemoteConfiguration
+ (NSString)personalTraitsEntityConfiguration;
- (id)fileURLForFactorKey:(id)key error:(id *)error;
@end

@implementation PNStoryRemoteConfiguration

+ (NSString)personalTraitsEntityConfiguration
{
  static StoryRemoteConfiguration.personalTraitsEntityConfiguration.getter();
  v2 = sub_1C755065C();

  return v2;
}

- (id)fileURLForFactorKey:(id)key error:(id *)error
{
  v5 = sub_1C754DD2C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C755068C();
  selfCopy = self;
  sub_1C6F85DE8();

  v10 = sub_1C754DC8C();
  (*(v6 + 8))(v8, v5);

  return v10;
}

@end