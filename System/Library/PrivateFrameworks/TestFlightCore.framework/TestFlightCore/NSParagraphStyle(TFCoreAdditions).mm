@interface NSParagraphStyle(TFCoreAdditions)
- (id)tf_paragraphStyleWithBaseWritingDirection:()TFCoreAdditions;
@end

@implementation NSParagraphStyle(TFCoreAdditions)

- (id)tf_paragraphStyleWithBaseWritingDirection:()TFCoreAdditions
{
  v4 = [self mutableCopy];
  [v4 setBaseWritingDirection:a3];
  v5 = [v4 copy];

  return v5;
}

@end