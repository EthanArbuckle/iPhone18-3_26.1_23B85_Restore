@interface WFDeferredMenuElementGroup
- (BOOL)shouldCollapse;
- (WFDeferredMenuElementGroup)initWithProvider:(id)a3;
@end

@implementation WFDeferredMenuElementGroup

- (BOOL)shouldCollapse
{
  v3 = [(WFDeferredMenuElementGroup *)self style];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(WFDeferredMenuElementGroup *)self style]== 2;
  }

  return v3;
}

- (WFDeferredMenuElementGroup)initWithProvider:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = WFDeferredMenuElementGroup;
  v5 = [(WFDeferredMenuElementGroup *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(WFDeferredMenuElementGroup *)v5 setStyle:0];
    v7 = [v4 copy];
    itemProvider = v6->_itemProvider;
    v6->_itemProvider = v7;

    v6->_estimatedItemCount = -1;
    v6->_mayContainSelectedItem = 1;
    v9 = v6;
  }

  return v6;
}

@end