@interface NSString(WBSCloudBookmarksRecordNamingExtras)
- (uint64_t)safari_isSpecialFolderRecordName;
@end

@implementation NSString(WBSCloudBookmarksRecordNamingExtras)

- (uint64_t)safari_isSpecialFolderRecordName
{
  if ([a1 isEqualToString:@"Favorites Bar"] & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"Bookmarks Menu") & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"Reading List"))
  {
    return 1;
  }

  return [a1 isEqualToString:@"com.apple.Safari.TopBookmark"];
}

@end