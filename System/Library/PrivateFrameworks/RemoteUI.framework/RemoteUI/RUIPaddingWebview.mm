@interface RUIPaddingWebview
- (void)layoutMarginsDidChange;
@end

@implementation RUIPaddingWebview

- (void)layoutMarginsDidChange
{
  v8.receiver = self;
  v8.super_class = RUIPaddingWebview;
  [(RUIPaddingWebview *)&v8 layoutMarginsDidChange];
  v3 = MEMORY[0x277CCACA8];
  [(RUIPaddingWebview *)self layoutMargins];
  v5 = v4;
  [(RUIPaddingWebview *)self layoutMargins];
  v7 = [v3 stringWithFormat:@"document.body.style.marginLeft = '%fpx' document.body.style.marginRight = '%fpx';", v5, v6];;
  [(RUIPaddingWebview *)self evaluateJavaScript:v7 completionHandler:0];
}

@end