@interface NSString(PhotoLibraryServices)
- (id)_pl_stringByReplacingPathExtension:()PhotoLibraryServices;
@end

@implementation NSString(PhotoLibraryServices)

- (id)_pl_stringByReplacingPathExtension:()PhotoLibraryServices
{
  v4 = a3;
  stringByDeletingPathExtension = [self stringByDeletingPathExtension];
  v6 = [stringByDeletingPathExtension stringByAppendingPathExtension:v4];

  return v6;
}

@end