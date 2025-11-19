@interface VCInteractionDonationFetcher
+ (id)donationWithInteractionIdentifier:(id)a3 applicationBundleIdentifier:(id)a4;
+ (id)streams;
@end

@implementation VCInteractionDonationFetcher

+ (id)donationWithInteractionIdentifier:(id)a3 applicationBundleIdentifier:(id)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 length] && objc_msgSend(v7, "length"))
  {
    v8 = MEMORY[0x1E69979D0];
    v9 = [MEMORY[0x1E69979E0] intentsSourceID];
    v16[0] = v6;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v11 = [v8 predicateForEventsWithSourceID:v9 bundleID:v7 itemIDs:v10];

    v12 = [a1 fetchDonationsWithPredicate:v11 limit:1 filteringForTopLevel:0];
    v13 = [v12 firstObject];
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)streams
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69979E8] appIntentsStream];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

@end