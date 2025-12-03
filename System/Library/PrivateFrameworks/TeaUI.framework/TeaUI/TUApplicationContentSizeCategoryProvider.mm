@interface TUApplicationContentSizeCategoryProvider
- (NSString)currentContentSizeCategory;
@end

@implementation TUApplicationContentSizeCategoryProvider

- (NSString)currentContentSizeCategory
{
  selfCopy = self;
  v3 = ApplicationContentSizeCategoryProvider.currentContentSizeCategory.getter();

  return v3;
}

@end