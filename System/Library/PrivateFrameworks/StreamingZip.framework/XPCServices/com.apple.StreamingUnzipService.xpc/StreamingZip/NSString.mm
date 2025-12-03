@interface NSString
- (NSString)SZ_stringByDeletingTrailingSlashes;
@end

@implementation NSString

- (NSString)SZ_stringByDeletingTrailingSlashes
{
  v2 = [(NSString *)self stringByAppendingPathComponent:@"XX_REMOVEME_XX"];
  stringByDeletingLastPathComponent = [v2 stringByDeletingLastPathComponent];

  return stringByDeletingLastPathComponent;
}

@end