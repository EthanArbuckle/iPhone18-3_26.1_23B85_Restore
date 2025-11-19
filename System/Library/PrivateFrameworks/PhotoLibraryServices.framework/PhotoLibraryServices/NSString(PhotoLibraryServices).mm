@interface NSString(PhotoLibraryServices)
- (id)_pl_stringByReplacingPathExtension:()PhotoLibraryServices;
@end

@implementation NSString(PhotoLibraryServices)

- (id)_pl_stringByReplacingPathExtension:()PhotoLibraryServices
{
  v4 = a3;
  v5 = [a1 stringByDeletingPathExtension];
  v6 = [v5 stringByAppendingPathExtension:v4];

  return v6;
}

@end