@interface NSString(NSStringDrawingExtension)
- (double)_sizeWithSize:()NSStringDrawingExtension attributes:;
@end

@implementation NSString(NSStringDrawingExtension)

- (double)_sizeWithSize:()NSStringDrawingExtension attributes:
{
  if (a2 <= 0.0 || a3 <= 0.0)
  {
    return *MEMORY[0x1E696AA88];
  }

  [self boundingRectWithSize:1 options:a5 attributes:0 context:{v5, v6}];
  return v7;
}

@end