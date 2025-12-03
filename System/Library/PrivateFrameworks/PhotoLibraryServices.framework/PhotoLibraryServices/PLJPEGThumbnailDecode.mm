@interface PLJPEGThumbnailDecode
+ (id)decodeSessionOptions;
+ (id)decodeSessionOptionsForMaxPixelSize:(id)size;
@end

@implementation PLJPEGThumbnailDecode

+ (id)decodeSessionOptionsForMaxPixelSize:(id)size
{
  sizeCopy = size;
  _baseSessionOptions = [self _baseSessionOptions];
  v6 = _baseSessionOptions;
  if (sizeCopy)
  {
    [_baseSessionOptions setObject:sizeCopy forKey:*MEMORY[0x1E6991AE0]];
  }

  return v6;
}

+ (id)decodeSessionOptions
{
  pl_dispatch_once();
  v2 = decodeSessionOptions_decodeSessionOptions;

  return v2;
}

void __45__PLJPEGThumbnailDecode_decodeSessionOptions__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _baseSessionOptions];
  if (PLIsPTPD())
  {
    v1 = [MEMORY[0x1E696AD98] numberWithInt:1111970369];
    [v4 setObject:v1 forKey:*MEMORY[0x1E6991AE8]];
  }

  v2 = [v4 copy];
  v3 = decodeSessionOptions_decodeSessionOptions;
  decodeSessionOptions_decodeSessionOptions = v2;
}

@end