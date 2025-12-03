@interface WFWidgetConfigurationAttributionYahooFinanceLogoAttachment
- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(unint64_t)index;
- (WFWidgetConfigurationAttributionYahooFinanceLogoAttachment)init;
@end

@implementation WFWidgetConfigurationAttributionYahooFinanceLogoAttachment

- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(unint64_t)index
{
  v7 = ceil(fragment.size.height * 26.0 / 30.0);
  v8 = [(WFWidgetConfigurationAttributionYahooFinanceLogoAttachment *)self image:container];
  [v8 size];
  v10 = v9;
  image = [(WFWidgetConfigurationAttributionYahooFinanceLogoAttachment *)self image];
  [image size];
  v13 = v7 * (v10 / v12);

  v14 = -ceil(v7 * 0.21);
  v15 = 0.0;
  v16 = v13;
  v17 = v7;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v14;
  result.origin.x = v15;
  return result;
}

- (WFWidgetConfigurationAttributionYahooFinanceLogoAttachment)init
{
  v7.receiver = self;
  v7.super_class = WFWidgetConfigurationAttributionYahooFinanceLogoAttachment;
  v2 = [(WFWidgetConfigurationAttributionYahooFinanceLogoAttachment *)&v7 initWithData:0 ofType:0];
  if (v2)
  {
    v3 = [UIImage imageNamed:@"YahooFinance"];
    v4 = [v3 imageWithRenderingMode:2];

    [(WFWidgetConfigurationAttributionYahooFinanceLogoAttachment *)v2 setImage:v4];
    v5 = v2;
  }

  return v2;
}

@end