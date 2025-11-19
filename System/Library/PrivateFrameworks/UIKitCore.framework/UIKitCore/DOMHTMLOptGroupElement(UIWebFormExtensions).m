@interface DOMHTMLOptGroupElement(UIWebFormExtensions)
- (UIDOMHTMLOptGroupCell)createPickerCell;
- (UIDOMHTMLOptGroupSelectedItem)createSelectedItem;
- (uint64_t)itemTitle;
@end

@implementation DOMHTMLOptGroupElement(UIWebFormExtensions)

- (UIDOMHTMLOptGroupSelectedItem)createSelectedItem
{
  v1 = [[UIDOMHTMLOptGroupSelectedItem alloc] initWithHTMLOptGroupNode:a1];

  return v1;
}

- (UIDOMHTMLOptGroupCell)createPickerCell
{
  v1 = [[UIDOMHTMLOptGroupCell alloc] initWithHTMLOptGroupNode:a1];

  return v1;
}

- (uint64_t)itemTitle
{
  v5 = 0;
  v4 = 0;
  [a1 getTextWritingDirection:&v5 override:&v4];
  v2 = [a1 label];
  return [v2 _uikit_stringWithWritingDirection:v5 asOverride:v4];
}

@end