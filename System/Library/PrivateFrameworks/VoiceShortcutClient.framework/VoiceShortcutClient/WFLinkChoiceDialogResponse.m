@interface WFLinkChoiceDialogResponse
- (WFLinkChoiceDialogResponse)initWithBSXPCCoder:(id)a3;
- (WFLinkChoiceDialogResponse)initWithCoder:(id)a3;
- (WFLinkChoiceDialogResponse)initWithResponseCode:(int64_t)a3 selectedButtonIndex:(int64_t)a4;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFLinkChoiceDialogResponse

- (void)encodeWithBSXPCCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = WFLinkChoiceDialogResponse;
  v4 = a3;
  [(WFLinkSnippetDialogResponse *)&v5 encodeWithBSXPCCoder:v4];
  [v4 encodeInt64:-[WFLinkChoiceDialogResponse selectedButtonIndex](self forKey:{"selectedButtonIndex", v5.receiver, v5.super_class), @"selectedButtonIndex"}];
}

- (WFLinkChoiceDialogResponse)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = WFLinkChoiceDialogResponse;
  v5 = [(WFLinkSnippetDialogResponse *)&v8 initWithBSXPCCoder:v4];
  if (v5)
  {
    v5->_selectedButtonIndex = [v4 decodeInt64ForKey:@"selectedButtonIndex"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = WFLinkChoiceDialogResponse;
  v4 = a3;
  [(WFLinkSnippetDialogResponse *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:-[WFLinkChoiceDialogResponse selectedButtonIndex](self forKey:{"selectedButtonIndex", v5.receiver, v5.super_class), @"selectedButtonIndex"}];
}

- (WFLinkChoiceDialogResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = WFLinkChoiceDialogResponse;
  v5 = [(WFLinkSnippetDialogResponse *)&v8 initWithCoder:v4];
  if (v5)
  {
    v5->_selectedButtonIndex = [v4 decodeIntegerForKey:@"selectedButtonIndex"];
    v6 = v5;
  }

  return v5;
}

- (WFLinkChoiceDialogResponse)initWithResponseCode:(int64_t)a3 selectedButtonIndex:(int64_t)a4
{
  v9.receiver = self;
  v9.super_class = WFLinkChoiceDialogResponse;
  v5 = [(WFLinkSnippetDialogResponse *)&v9 initWithResponseCode:a3];
  v6 = v5;
  if (v5)
  {
    v5->_selectedButtonIndex = a4;
    v7 = v5;
  }

  return v6;
}

@end