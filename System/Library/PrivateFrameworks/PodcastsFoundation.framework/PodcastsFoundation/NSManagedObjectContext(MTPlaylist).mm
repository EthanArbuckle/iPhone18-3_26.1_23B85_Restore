@interface NSManagedObjectContext(MTPlaylist)
- (void)deletePlaylist:()MTPlaylist;
@end

@implementation NSManagedObjectContext(MTPlaylist)

- (void)deletePlaylist:()MTPlaylist
{
  v4 = a3;
  v5 = [v4 settings];
  v6 = [v5 copy];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__NSManagedObjectContext_MTPlaylist__deletePlaylist___block_invoke;
  v9[3] = &unk_1E856A0F0;
  v9[4] = a1;
  [v6 enumerateObjectsUsingBlock:v9];
  v7 = [v4 defaultSettings];

  if (v7)
  {
    v8 = [v4 defaultSettings];
    [a1 deleteObject:v8];
  }

  [a1 deleteObject:v4];
}

@end