@interface PPConstants
+ (id)groupIds;
@end

@implementation PPConstants

+ (id)groupIds
{
  v5[10] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.proactive.PersonalizationPortrait.HealthKitDonation";
  v5[1] = @"com.apple.proactive.PersonalizationPortrait.Maps.Collections";
  v5[2] = @"com.apple.proactive.PersonalizationPortrait.Maps.PinnedPlaces";
  v5[3] = @"com.apple.proactive.PersonalizationPortrait.Maps.Interactions";
  v5[4] = @"com.apple.proactive.PersonalizationPortrait.Notifications";
  v5[5] = @"com.apple.proactive.PersonalizationPortrait.NowPlayingDonation";
  v5[6] = @"com.apple.proactive.PersonalizationPortrait.PhotosGraphDonation";
  v5[7] = @"com.apple.proactive.PersonalizationPortrait.PhotosOneUpDonation";
  v5[8] = @"com.apple.proactive.PersonalizationPortrait.pptool";
  v5[9] = @"com.apple.proactive.PersonalizationPortrait.SiriDonation";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:10];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

@end