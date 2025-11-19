@interface TUApplicationContentSizeCategoryProvider
- (NSString)currentContentSizeCategory;
@end

@implementation TUApplicationContentSizeCategoryProvider

- (NSString)currentContentSizeCategory
{
  v2 = self;
  v3 = ApplicationContentSizeCategoryProvider.currentContentSizeCategory.getter();

  return v3;
}

@end