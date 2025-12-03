@interface NSParagraphStyle(TVUIKitAdditions)
- (id)tv_paragraphStyleWithBaseWritingDirection:()TVUIKitAdditions;
@end

@implementation NSParagraphStyle(TVUIKitAdditions)

- (id)tv_paragraphStyleWithBaseWritingDirection:()TVUIKitAdditions
{
  v4 = [self mutableCopy];
  [v4 setBaseWritingDirection:a3];
  v5 = [v4 copy];

  return v5;
}

@end