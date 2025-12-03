@interface DOMHTMLOptionElement(UIWebFormExtensions)
- (UIDOMHTMLOptionPickerCell)createPickerCell;
- (UIDOMHTMLOptionSelectedItem)createSelectedItem;
- (uint64_t)itemTitle;
- (uint64_t)populateCell:()UIWebFormExtensions;
@end

@implementation DOMHTMLOptionElement(UIWebFormExtensions)

- (UIDOMHTMLOptionSelectedItem)createSelectedItem
{
  v1 = [[UIDOMHTMLOptionSelectedItem alloc] initWithHTMLOptionNode:self];

  return v1;
}

- (UIDOMHTMLOptionPickerCell)createPickerCell
{
  v1 = [[UIDOMHTMLOptionPickerCell alloc] initWithHTMLOptionNode:self];

  return v1;
}

- (uint64_t)populateCell:()UIWebFormExtensions
{
  [objc_msgSend(a3 "textLabel")];
  [objc_msgSend(a3 "textLabel")];
  [a3 setSelectionStyle:{objc_msgSend(self, "disabled") ^ 1}];
  if ([self selected])
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  return [a3 setAccessoryType:v5];
}

- (uint64_t)itemTitle
{
  v2 = [objc_msgSend(self "text")];
  v5 = 0;
  v4 = 0;
  [self getTextWritingDirection:&v5 override:&v4];
  return [v2 _uikit_stringWithWritingDirection:v5 asOverride:v4];
}

@end