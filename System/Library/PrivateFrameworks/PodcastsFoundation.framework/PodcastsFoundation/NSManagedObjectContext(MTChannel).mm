@interface NSManagedObjectContext(MTChannel)
- (id)channelForStoreId:()MTChannel;
@end

@implementation NSManagedObjectContext(MTChannel)

- (id)channelForStoreId:()MTChannel
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__3;
  v10 = __Block_byref_object_dispose__3;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__NSManagedObjectContext_MTChannel__channelForStoreId___block_invoke;
  v5[3] = &unk_1E856A0C8;
  v5[5] = &v6;
  v5[6] = a3;
  v5[4] = self;
  [self performBlockAndWait:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

@end