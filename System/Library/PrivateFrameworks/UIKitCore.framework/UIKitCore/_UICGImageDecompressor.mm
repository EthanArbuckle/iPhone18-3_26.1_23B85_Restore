@interface _UICGImageDecompressor
- (CGImage)waitForImageRef;
- (_UICGImageDecompressor)init;
@end

@implementation _UICGImageDecompressor

- (_UICGImageDecompressor)init
{
  v5.receiver = self;
  v5.super_class = _UICGImageDecompressor;
  v2 = [(_UICGImageDecompressor *)&v5 init];
  if ([(_UICGImageDecompressor *)v2 isMemberOfClass:objc_opt_class()])
  {

    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot instantiate abstract class _UICGImageDecompressor" userInfo:0];
    objc_exception_throw(v4);
  }

  return v2;
}

- (CGImage)waitForImageRef
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Abstract method not implemented" userInfo:0];
  objc_exception_throw(v2);
}

@end