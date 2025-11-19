@interface _UISceneSizeRestrictionsInertImpl
- (CGSize)maximumSize;
- (CGSize)minimumSize;
@end

@implementation _UISceneSizeRestrictionsInertImpl

- (CGSize)minimumSize
{
  width = self->minimumSize.width;
  height = self->minimumSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)maximumSize
{
  width = self->maximumSize.width;
  height = self->maximumSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end