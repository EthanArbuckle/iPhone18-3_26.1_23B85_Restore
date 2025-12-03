@interface NSManagedObjectContext(MTPlaylist)
- (void)deletePlaylist:()MTPlaylist;
@end

@implementation NSManagedObjectContext(MTPlaylist)

- (void)deletePlaylist:()MTPlaylist
{
  v4 = a3;
  settings = [v4 settings];
  v6 = [settings copy];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__NSManagedObjectContext_MTPlaylist__deletePlaylist___block_invoke;
  v9[3] = &unk_1E856A0F0;
  v9[4] = self;
  [v6 enumerateObjectsUsingBlock:v9];
  defaultSettings = [v4 defaultSettings];

  if (defaultSettings)
  {
    defaultSettings2 = [v4 defaultSettings];
    [self deleteObject:defaultSettings2];
  }

  [self deleteObject:v4];
}

@end