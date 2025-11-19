@interface PLMediaMiningUtilities
+ (id)sortDescriptorsForSortingItemsByTime;
@end

@implementation PLMediaMiningUtilities

+ (id)sortDescriptorsForSortingItemsByTime
{
  v7[3] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"pl_startDate" ascending:1];
  v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"pl_endDate" ascending:{1, v2}];
  v7[1] = v3;
  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"pl_numberOfAssets" ascending:1];
  v7[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];

  return v5;
}

@end