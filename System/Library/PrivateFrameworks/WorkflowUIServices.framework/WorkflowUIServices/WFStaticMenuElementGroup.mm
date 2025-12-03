@interface WFStaticMenuElementGroup
- (BOOL)shouldCollapse;
- (WFStaticMenuElementGroup)initWithMenuElements:(id)elements;
@end

@implementation WFStaticMenuElementGroup

- (BOOL)shouldCollapse
{
  style = [(WFStaticMenuElementGroup *)self style];
  if (style != 1)
    LOBYTE(style) = -[WFStaticMenuElementGroup style](self, "style") == 2 && (-[WFStaticMenuElementGroup menuElements](self, "menuElements"), v4 = {;
  }

  return style;
}

- (WFStaticMenuElementGroup)initWithMenuElements:(id)elements
{
  elementsCopy = elements;
  v11.receiver = self;
  v11.super_class = WFStaticMenuElementGroup;
  v5 = [(WFStaticMenuElementGroup *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(WFStaticMenuElementGroup *)v5 setStyle:0];
    v7 = [elementsCopy copy];
    menuElements = v6->_menuElements;
    v6->_menuElements = v7;

    v9 = v6;
  }

  return v6;
}

@end