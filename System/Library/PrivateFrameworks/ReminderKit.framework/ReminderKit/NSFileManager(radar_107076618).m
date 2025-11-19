@interface NSFileManager(radar_107076618)
+ (id)remcrtt_createTemporaryFileDirectoryURLIfNeeded;
@end

@implementation NSFileManager(radar_107076618)

+ (id)remcrtt_createTemporaryFileDirectoryURLIfNeeded
{
  v0 = MEMORY[0x1E695DFF8];
  v1 = NSTemporaryDirectory();
  v2 = [v0 fileURLWithPath:v1];

  return v2;
}

@end