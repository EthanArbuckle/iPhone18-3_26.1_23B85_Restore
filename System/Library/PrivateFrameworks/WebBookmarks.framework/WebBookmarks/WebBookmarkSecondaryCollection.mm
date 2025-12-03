@interface WebBookmarkSecondaryCollection
- (id)initSecondarySafariBookmarkCollectionWithName:(id)name;
@end

@implementation WebBookmarkSecondaryCollection

- (id)initSecondarySafariBookmarkCollectionWithName:(id)name
{
  nameCopy = name;
  safariDirectoryPath = [objc_opt_class() safariDirectoryPath];
  nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.db", nameCopy];

  v7 = [safariDirectoryPath stringByAppendingPathComponent:nameCopy];
  stringByResolvingSymlinksInPath = [v7 stringByResolvingSymlinksInPath];

  v9 = [[WBCollectionConfiguration alloc] initWithCollectionType:0 databasePath:stringByResolvingSymlinksInPath readonly:0];
  v12.receiver = self;
  v12.super_class = WebBookmarkSecondaryCollection;
  v10 = [(WebBookmarkCollection *)&v12 initWithConfiguration:v9];

  return v10;
}

@end