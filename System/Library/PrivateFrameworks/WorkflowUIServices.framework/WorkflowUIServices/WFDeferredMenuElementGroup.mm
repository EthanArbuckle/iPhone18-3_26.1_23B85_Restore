@interface WFDeferredMenuElementGroup
- (BOOL)shouldCollapse;
- (WFDeferredMenuElementGroup)initWithProvider:(id)provider;
@end

@implementation WFDeferredMenuElementGroup

- (BOOL)shouldCollapse
{
  style = [(WFDeferredMenuElementGroup *)self style];
  if (style != 1)
  {
    LOBYTE(style) = [(WFDeferredMenuElementGroup *)self style]== 2;
  }

  return style;
}

- (WFDeferredMenuElementGroup)initWithProvider:(id)provider
{
  providerCopy = provider;
  v11.receiver = self;
  v11.super_class = WFDeferredMenuElementGroup;
  v5 = [(WFDeferredMenuElementGroup *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(WFDeferredMenuElementGroup *)v5 setStyle:0];
    v7 = [providerCopy copy];
    itemProvider = v6->_itemProvider;
    v6->_itemProvider = v7;

    v6->_estimatedItemCount = -1;
    v6->_mayContainSelectedItem = 1;
    v9 = v6;
  }

  return v6;
}

@end