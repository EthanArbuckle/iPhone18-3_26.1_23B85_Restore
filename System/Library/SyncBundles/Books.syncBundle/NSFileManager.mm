@interface NSFileManager
- (BOOL)isDirectoryPath:(id)path;
@end

@implementation NSFileManager

- (BOOL)isDirectoryPath:(id)path
{
  v5 = 0;
  v3 = [+[NSFileManager defaultManager](NSFileManager fileExistsAtPath:"fileExistsAtPath:isDirectory:" isDirectory:path, &v5];
  return v3 & v5;
}

@end