@interface WOTipKitIdentifier
+ (NSString)activityTypeRoomVisited;
+ (NSString)editWorkoutViewsVisited;
+ (NSString)workoutStarted;
- (WOTipKitIdentifier)init;
@end

@implementation WOTipKitIdentifier

+ (NSString)activityTypeRoomVisited
{
  v2 = MEMORY[0x20F30BAD0](0xD000000000000036, 0x800000020CB95A60);

  return v2;
}

+ (NSString)editWorkoutViewsVisited
{
  v2 = MEMORY[0x20F30BAD0](0xD000000000000036, 0x800000020CB95AA0);

  return v2;
}

+ (NSString)workoutStarted
{
  v2 = MEMORY[0x20F30BAD0](0xD00000000000002BLL, 0x800000020CB95A20);

  return v2;
}

- (WOTipKitIdentifier)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TipKitIdentifier();
  return [(WOTipKitIdentifier *)&v3 init];
}

@end