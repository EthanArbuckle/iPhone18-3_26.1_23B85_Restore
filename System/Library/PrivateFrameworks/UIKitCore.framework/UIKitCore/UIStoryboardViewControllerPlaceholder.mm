@interface UIStoryboardViewControllerPlaceholder
- (UIStoryboardViewControllerPlaceholder)initWithCoder:(id)a3;
@end

@implementation UIStoryboardViewControllerPlaceholder

- (UIStoryboardViewControllerPlaceholder)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [UIProxyObject mappedObjectForCoder:v4 withIdentifier:@"UIStoryboardPlaceholder"];
  v6 = [v4 decodeObjectForKey:@"UIStoryboardIdentifier"];
  v7 = [v4 _storyboardDecodingContext];
  v8 = [v7 sourceSegueTemplate];
  v9 = [v4 _storyboardDecodingContext];
  v10 = [v9 sender];
  v11 = [v5 _instantiateViewControllerReferencedByPlaceholderWithIdentifier:v6 storyboardSegueTemplate:v8 sender:v10];

  v12 = [v4 decodeObjectForKey:@"UIParentViewController"];

  if (v11)
  {
    v13 = v11[192];
    v11[192] = v13 | 0x100;
    [v11 setParentViewController:v12];
    v11[192] = v11[192] & 0xFEFF | v13 & 0x100;
  }

  v14 = v11;
  return v14;
}

@end