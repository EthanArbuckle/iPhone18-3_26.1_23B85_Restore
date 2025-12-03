@interface NSString(WBSCloudBookmarksRecordNamingExtras)
- (uint64_t)safari_isSpecialFolderRecordName;
@end

@implementation NSString(WBSCloudBookmarksRecordNamingExtras)

- (uint64_t)safari_isSpecialFolderRecordName
{
  if ([self isEqualToString:@"Favorites Bar"] & 1) != 0 || (objc_msgSend(self, "isEqualToString:", @"Bookmarks Menu") & 1) != 0 || (objc_msgSend(self, "isEqualToString:", @"Reading List"))
  {
    return 1;
  }

  return [self isEqualToString:@"com.apple.Safari.TopBookmark"];
}

@end