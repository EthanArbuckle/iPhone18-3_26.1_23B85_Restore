@interface NSManagedObjectContext(MTTheme)
- (id)colorThemeForUuid:()MTTheme;
- (id)themeForUuid:()MTTheme;
@end

@implementation NSManagedObjectContext(MTTheme)

- (id)themeForUuid:()MTTheme
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"MTTheme"];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"uuid = %@", v4];
  [v5 setPredicate:v6];

  [v5 setReturnsObjectsAsFaults:0];
  v14 = 0;
  v7 = [a1 executeFetchRequest:v5 error:&v14];
  v8 = v14;
  v9 = v8;
  if (!v7)
  {
    [v8 logAndThrow:1];
  }

  if ([v7 count] >= 2)
  {
    v10 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v7 count];
      *buf = 138412546;
      v16 = v4;
      v17 = 2048;
      v18 = v11;
      _os_log_impl(&dword_21B365000, v10, OS_LOG_TYPE_DEFAULT, "WARNING: Duplicate themes for %@ (%ld)", buf, 0x16u);
    }
  }

  v12 = [v7 firstObject];

  return v12;
}

- (id)colorThemeForUuid:()MTTheme
{
  v1 = [a1 themeForUuid:?];
  v2 = [v1 convertToColorTheme];

  return v2;
}

@end