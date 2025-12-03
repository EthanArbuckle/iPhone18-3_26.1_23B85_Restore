@interface DOMHTMLOptGroupElement(UIWebFormExtensions)
- (UIDOMHTMLOptGroupCell)createPickerCell;
- (UIDOMHTMLOptGroupSelectedItem)createSelectedItem;
- (uint64_t)itemTitle;
@end

@implementation DOMHTMLOptGroupElement(UIWebFormExtensions)

- (UIDOMHTMLOptGroupSelectedItem)createSelectedItem
{
  v1 = [[UIDOMHTMLOptGroupSelectedItem alloc] initWithHTMLOptGroupNode:self];

  return v1;
}

- (UIDOMHTMLOptGroupCell)createPickerCell
{
  v1 = [[UIDOMHTMLOptGroupCell alloc] initWithHTMLOptGroupNode:self];

  return v1;
}

- (uint64_t)itemTitle
{
  v5 = 0;
  v4 = 0;
  [self getTextWritingDirection:&v5 override:&v4];
  label = [self label];
  return [label _uikit_stringWithWritingDirection:v5 asOverride:v4];
}

@end