@interface UIStoryboardViewControllerPlaceholder
- (UIStoryboardViewControllerPlaceholder)initWithCoder:(id)coder;
@end

@implementation UIStoryboardViewControllerPlaceholder

- (UIStoryboardViewControllerPlaceholder)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [UIProxyObject mappedObjectForCoder:coderCopy withIdentifier:@"UIStoryboardPlaceholder"];
  v6 = [coderCopy decodeObjectForKey:@"UIStoryboardIdentifier"];
  _storyboardDecodingContext = [coderCopy _storyboardDecodingContext];
  sourceSegueTemplate = [_storyboardDecodingContext sourceSegueTemplate];
  _storyboardDecodingContext2 = [coderCopy _storyboardDecodingContext];
  sender = [_storyboardDecodingContext2 sender];
  v11 = [v5 _instantiateViewControllerReferencedByPlaceholderWithIdentifier:v6 storyboardSegueTemplate:sourceSegueTemplate sender:sender];

  v12 = [coderCopy decodeObjectForKey:@"UIParentViewController"];

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