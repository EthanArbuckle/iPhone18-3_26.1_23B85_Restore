@interface NSFileManager
@end

@implementation NSFileManager

uint64_t __104__NSFileManager_UserNotificationsCore__unc_contentsSortedByLastModificationDateOfDirectoryAtPath_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectForKeyedSubscript:@"lastModDate"];
  v6 = [v4 objectForKeyedSubscript:@"lastModDate"];

  v7 = [v5 compare:v6];
  return v7;
}

@end