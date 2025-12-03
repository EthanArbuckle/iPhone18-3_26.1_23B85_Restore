@interface VCInteractionDonationFetcher
+ (id)donationWithInteractionIdentifier:(id)identifier applicationBundleIdentifier:(id)bundleIdentifier;
+ (id)streams;
@end

@implementation VCInteractionDonationFetcher

+ (id)donationWithInteractionIdentifier:(id)identifier applicationBundleIdentifier:(id)bundleIdentifier
{
  v16[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  if ([identifierCopy length] && objc_msgSend(bundleIdentifierCopy, "length"))
  {
    v8 = MEMORY[0x1E69979D0];
    intentsSourceID = [MEMORY[0x1E69979E0] intentsSourceID];
    v16[0] = identifierCopy;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v11 = [v8 predicateForEventsWithSourceID:intentsSourceID bundleID:bundleIdentifierCopy itemIDs:v10];

    v12 = [self fetchDonationsWithPredicate:v11 limit:1 filteringForTopLevel:0];
    firstObject = [v12 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return firstObject;
}

+ (id)streams
{
  v6[1] = *MEMORY[0x1E69E9840];
  appIntentsStream = [MEMORY[0x1E69979E8] appIntentsStream];
  v6[0] = appIntentsStream;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

@end