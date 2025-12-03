@interface NSMutableDictionary(SUCoreDictionary)
- (void)setSafeObject:()SUCoreDictionary forKey:;
@end

@implementation NSMutableDictionary(SUCoreDictionary)

- (void)setSafeObject:()SUCoreDictionary forKey:
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    [self setObject:v6 forKey:v7];
  }

  else if (!v7)
  {
    v9 = +[SUCoreLog sharedLogger];
    oslog = [v9 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      [NSMutableDictionary(SUCoreDictionary) setSafeObject:oslog forKey:?];
    }
  }
}

@end