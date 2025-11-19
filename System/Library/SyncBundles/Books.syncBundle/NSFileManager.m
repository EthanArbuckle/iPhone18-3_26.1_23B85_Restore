@interface NSFileManager
- (BOOL)isDirectoryPath:(id)a3;
@end

@implementation NSFileManager

- (BOOL)isDirectoryPath:(id)a3
{
  v5 = 0;
  v3 = [+[NSFileManager defaultManager](NSFileManager fileExistsAtPath:"fileExistsAtPath:isDirectory:" isDirectory:a3, &v5];
  return v3 & v5;
}

@end