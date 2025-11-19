@interface WebBookmarkSecondaryCollection
- (id)initSecondarySafariBookmarkCollectionWithName:(id)a3;
@end

@implementation WebBookmarkSecondaryCollection

- (id)initSecondarySafariBookmarkCollectionWithName:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() safariDirectoryPath];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.db", v4];

  v7 = [v5 stringByAppendingPathComponent:v6];
  v8 = [v7 stringByResolvingSymlinksInPath];

  v9 = [[WBCollectionConfiguration alloc] initWithCollectionType:0 databasePath:v8 readonly:0];
  v12.receiver = self;
  v12.super_class = WebBookmarkSecondaryCollection;
  v10 = [(WebBookmarkCollection *)&v12 initWithConfiguration:v9];

  return v10;
}

@end