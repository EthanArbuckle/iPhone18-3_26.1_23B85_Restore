@interface PhotosDetailsNavigationViewControllerTransitionOptions
- (CGRect)frameOfSourceInDestination;
@end

@implementation PhotosDetailsNavigationViewControllerTransitionOptions

- (CGRect)frameOfSourceInDestination
{
  v2 = self;
  sub_1C12340D4();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

@end