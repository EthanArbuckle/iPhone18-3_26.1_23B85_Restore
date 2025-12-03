@interface WFLinkChoiceDialogResponse
- (WFLinkChoiceDialogResponse)initWithBSXPCCoder:(id)coder;
- (WFLinkChoiceDialogResponse)initWithCoder:(id)coder;
- (WFLinkChoiceDialogResponse)initWithResponseCode:(int64_t)code selectedButtonIndex:(int64_t)index;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFLinkChoiceDialogResponse

- (void)encodeWithBSXPCCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = WFLinkChoiceDialogResponse;
  coderCopy = coder;
  [(WFLinkSnippetDialogResponse *)&v5 encodeWithBSXPCCoder:coderCopy];
  [coderCopy encodeInt64:-[WFLinkChoiceDialogResponse selectedButtonIndex](self forKey:{"selectedButtonIndex", v5.receiver, v5.super_class), @"selectedButtonIndex"}];
}

- (WFLinkChoiceDialogResponse)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = WFLinkChoiceDialogResponse;
  v5 = [(WFLinkSnippetDialogResponse *)&v8 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v5->_selectedButtonIndex = [coderCopy decodeInt64ForKey:@"selectedButtonIndex"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = WFLinkChoiceDialogResponse;
  coderCopy = coder;
  [(WFLinkSnippetDialogResponse *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[WFLinkChoiceDialogResponse selectedButtonIndex](self forKey:{"selectedButtonIndex", v5.receiver, v5.super_class), @"selectedButtonIndex"}];
}

- (WFLinkChoiceDialogResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = WFLinkChoiceDialogResponse;
  v5 = [(WFLinkSnippetDialogResponse *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_selectedButtonIndex = [coderCopy decodeIntegerForKey:@"selectedButtonIndex"];
    v6 = v5;
  }

  return v5;
}

- (WFLinkChoiceDialogResponse)initWithResponseCode:(int64_t)code selectedButtonIndex:(int64_t)index
{
  v9.receiver = self;
  v9.super_class = WFLinkChoiceDialogResponse;
  v5 = [(WFLinkSnippetDialogResponse *)&v9 initWithResponseCode:code];
  v6 = v5;
  if (v5)
  {
    v5->_selectedButtonIndex = index;
    v7 = v5;
  }

  return v6;
}

@end