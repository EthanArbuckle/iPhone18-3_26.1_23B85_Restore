@interface NSValue(PXEdgeInsets)
+ (id)valueWithPXEdgeInsets:()PXEdgeInsets;
- (double)PXEdgeInsetsValue;
@end

@implementation NSValue(PXEdgeInsets)

- (double)PXEdgeInsetsValue
{
  v2[0] = PXEdgeInsetsNull;
  v2[1] = unk_1B4075370;
  [self getValue:v2];
  return *v2;
}

+ (id)valueWithPXEdgeInsets:()PXEdgeInsets
{
  *v6 = self;
  *&v6[1] = a2;
  *&v6[2] = a3;
  *&v6[3] = a4;
  v4 = [objc_alloc(MEMORY[0x1E696B098]) initWithBytes:v6 objCType:"{UIEdgeInsets=dddd}"];

  return v4;
}

@end