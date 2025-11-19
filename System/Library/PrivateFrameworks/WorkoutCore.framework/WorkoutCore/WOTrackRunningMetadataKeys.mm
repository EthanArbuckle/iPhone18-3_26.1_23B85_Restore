@interface WOTrackRunningMetadataKeys
+ (NSString)promptedForTrackMode;
+ (NSString)startedFirstTrackWorkout;
+ (NSString)trackIdentifier;
+ (NSString)unitIdentifier;
- (WOTrackRunningMetadataKeys)init;
@end

@implementation WOTrackRunningMetadataKeys

+ (NSString)unitIdentifier
{
  v2 = MEMORY[0x20F2E6C00](0xD000000000000013, 0x800000020B46B380);

  return v2;
}

+ (NSString)trackIdentifier
{
  v2 = MEMORY[0x20F2E6C00](0xD000000000000023, 0x800000020B46B3A0);

  return v2;
}

+ (NSString)promptedForTrackMode
{
  v2 = MEMORY[0x20F2E6C00](0xD000000000000030, 0x800000020B46B3D0);

  return v2;
}

+ (NSString)startedFirstTrackWorkout
{
  v2 = MEMORY[0x20F2E6C00](0xD00000000000001BLL, 0x800000020B46B410);

  return v2;
}

- (WOTrackRunningMetadataKeys)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TrackRunningMetadataKeys();
  return [(WOTrackRunningMetadataKeys *)&v3 init];
}

@end