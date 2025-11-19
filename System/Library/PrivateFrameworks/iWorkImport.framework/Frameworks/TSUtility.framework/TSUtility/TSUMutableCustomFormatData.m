@interface TSUMutableCustomFormatData
+ (id)customFormatData;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation TSUMutableCustomFormatData

+ (id)customFormatData
{
  v2 = objc_alloc_init(TSUMutableCustomFormatData);

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[TSUCustomFormatData allocWithZone:?]];
  [(TSUCustomFormatData *)self p_copySelfTo:v4];
  return v4;
}

@end