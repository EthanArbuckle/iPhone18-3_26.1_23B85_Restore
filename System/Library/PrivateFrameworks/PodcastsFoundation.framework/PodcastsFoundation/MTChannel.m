@interface MTChannel
+ (id)createOrFindChannelFromFeedChannelItem:(id)a3 personalizedRequest:(BOOL)a4 context:(id)a5;
+ (id)predicateForChannelWithStoreId:(int64_t)a3;
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

+ (id)createOrFindChannelFromFeedChannelItem:(id)a3 personalizedRequest:(BOOL)a4 context:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = a5;
  v9 = [v7 storeId];
  v10 = [v9 longLongValue];

  v11 = [v8 channelForStoreId:v10];
  if (!v11)
  {
    v11 = [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:@"MTChannel" inManagedObjectContext:v8];
    [v11 setStoreId:v10];
  }

  v12 = [v7 name];
  [v11 setName:v12];

  v13 = [v7 displayType];
  [v11 setDisplayType:v13];

  v14 = [v7 artworkURL];
  [v11 setArtworkURL:v14];

  v15 = [v7 logoImageURL];
  [v11 setLogoImageURL:v15];

  [v7 logoImageWidth];
  [v11 setLogoImageWidth:?];
  [v7 logoImageHeight];
  [v11 setLogoImageHeight:?];
  v16 = [v7 backgroundColor];
  [v11 setBackgroundColor:v16];

  v17 = [v7 uberBackgroundJoeColor];
  [v11 setUberBackgroundJoeColor:v17];

  v18 = [v7 uberBackgroundImageURL];
  [v11 setUberBackgroundImageURL:v18];

  v19 = [v7 url];
  [v11 setUrl:v19];

  [v11 setShowCount:{objc_msgSend(v7, "showCount")}];
  if (v6)
  {
    [v11 setAvailableShowCount:{objc_msgSend(v7, "availableShowCount")}];
  }

  v20 = [v7 subscriptionName];
  v21 = v20;
  if (v20 && [v20 length])
  {
    [v11 setSubscriptionName:v21];
  }

  else if (([v11 subscriptionActive] & 1) == 0)
  {
    v22 = [v7 fallbackSubscriptionName];
    [v11 setSubscriptionName:v22];
  }

  return v11;
}

+ (id)predicateForChannelWithStoreId:(int64_t)a3
{
  v3 = MEMORY[0x1E696AE18];
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
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