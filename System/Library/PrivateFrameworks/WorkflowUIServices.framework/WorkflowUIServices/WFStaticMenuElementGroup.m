@interface WFStaticMenuElementGroup
- (BOOL)shouldCollapse;
- (WFStaticMenuElementGroup)initWithMenuElements:(id)a3;
@end

@implementation WFStaticMenuElementGroup

- (BOOL)shouldCollapse
{
  v3 = [(WFStaticMenuElementGroup *)self style];
  if (v3 != 1)
    LOBYTE(v3) = -[WFStaticMenuElementGroup style](self, "style") == 2 && (-[WFStaticMenuElementGroup menuElements](self, "menuElements"), v4 = {;
  }

  return v3;
}

- (WFStaticMenuElementGroup)initWithMenuElements:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = WFStaticMenuElementGroup;
  v5 = [(WFStaticMenuElementGroup *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(WFStaticMenuElementGroup *)v5 setStyle:0];
    v7 = [v4 copy];
    menuElements = v6->_menuElements;
    v6->_menuElements = v7;

    v9 = v6;
  }

  return v6;
}

@end