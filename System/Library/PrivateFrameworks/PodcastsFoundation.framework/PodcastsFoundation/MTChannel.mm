@interface MTChannel
+ (id)createOrFindChannelFromFeedChannelItem:(id)item personalizedRequest:(BOOL)request context:(id)context;
+ (id)predicateForChannelWithStoreId:(int64_t)id;
+ (id)predicateForFollowedChannel;
+ (id)predicateForLibraryChannel;
+ (id)sortDescriptorsForLibraryChannelsPage;
- (int64_t)resolvedShowCount;
@end

@implementation MTChannel

+ (id)predicateForLibraryChannel
{
  v15[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AB28];
  v3 = +[MTChannel predicateForMultiShowChannel];
  v15[0] = v3;
  v4 = MEMORY[0x1E696AB28];
  v5 = +[MTChannel predicateForSubscribedChannel];
  v6 = +[MTChannel predicateForFollowedChannel];
  v14[1] = v6;
  v7 = +[MTChannel predicateForFavoritedChannel];
  v14[2] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];
  v9 = [v4 orPredicateWithSubpredicates:v8];
  v15[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v11 = [v2 andPredicateWithSubpredicates:v10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)predicateForFollowedChannel
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AB28];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K > 0", @"followedShowCount"];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [v2 andPredicateWithSubpredicates:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (int64_t)resolvedShowCount
{
  if ([(MTChannel *)self availableShowCount]< 1)
  {

    return [(MTChannel *)self showCount];
  }

  else
  {

    return [(MTChannel *)self availableShowCount];
  }
}

+ (id)createOrFindChannelFromFeedChannelItem:(id)item personalizedRequest:(BOOL)request context:(id)context
{
  requestCopy = request;
  itemCopy = item;
  contextCopy = context;
  storeId = [itemCopy storeId];
  longLongValue = [storeId longLongValue];

  v11 = [contextCopy channelForStoreId:longLongValue];
  if (!v11)
  {
    v11 = [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:@"MTChannel" inManagedObjectContext:contextCopy];
    [v11 setStoreId:longLongValue];
  }

  name = [itemCopy name];
  [v11 setName:name];

  displayType = [itemCopy displayType];
  [v11 setDisplayType:displayType];

  artworkURL = [itemCopy artworkURL];
  [v11 setArtworkURL:artworkURL];

  logoImageURL = [itemCopy logoImageURL];
  [v11 setLogoImageURL:logoImageURL];

  [itemCopy logoImageWidth];
  [v11 setLogoImageWidth:?];
  [itemCopy logoImageHeight];
  [v11 setLogoImageHeight:?];
  backgroundColor = [itemCopy backgroundColor];
  [v11 setBackgroundColor:backgroundColor];

  uberBackgroundJoeColor = [itemCopy uberBackgroundJoeColor];
  [v11 setUberBackgroundJoeColor:uberBackgroundJoeColor];

  uberBackgroundImageURL = [itemCopy uberBackgroundImageURL];
  [v11 setUberBackgroundImageURL:uberBackgroundImageURL];

  v19 = [itemCopy url];
  [v11 setUrl:v19];

  [v11 setShowCount:{objc_msgSend(itemCopy, "showCount")}];
  if (requestCopy)
  {
    [v11 setAvailableShowCount:{objc_msgSend(itemCopy, "availableShowCount")}];
  }

  subscriptionName = [itemCopy subscriptionName];
  v21 = subscriptionName;
  if (subscriptionName && [subscriptionName length])
  {
    [v11 setSubscriptionName:v21];
  }

  else if (([v11 subscriptionActive] & 1) == 0)
  {
    fallbackSubscriptionName = [itemCopy fallbackSubscriptionName];
    [v11 setSubscriptionName:fallbackSubscriptionName];
  }

  return v11;
}

+ (id)predicateForChannelWithStoreId:(int64_t)id
{
  v3 = MEMORY[0x1E696AE18];
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:id];
  v5 = [v3 predicateWithFormat:@"%K == %@", @"storeId", v4];

  return v5;
}

+ (id)sortDescriptorsForLibraryChannelsPage
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"interest.interestValue" ascending:0];
  v7[0] = v2;
  v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"name" ascending:1 selector:sel_localizedStandardCompare_];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end