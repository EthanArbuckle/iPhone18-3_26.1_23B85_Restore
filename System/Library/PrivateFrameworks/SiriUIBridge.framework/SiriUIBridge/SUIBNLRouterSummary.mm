@interface SUIBNLRouterSummary
- (SUIBNLRouterSummary)initWithBuilder:(id)builder;
- (SUIBNLRouterSummary)initWithCoder:(id)coder;
@end

@implementation SUIBNLRouterSummary

- (SUIBNLRouterSummary)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v12.receiver = self;
  v12.super_class = SUIBNLRouterSummary;
  v5 = [(SUIBNLRouterSummary *)&v12 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = objc_alloc_init(SUIBNLRouterSummaryMutation);
    builderCopy[2](builderCopy, v7);
    rewrittenUtterance = [(SUIBNLRouterSummaryMutation *)v7 rewrittenUtterance];
    v9 = [rewrittenUtterance copy];
    rewrittenUtterance = v6->_rewrittenUtterance;
    v6->_rewrittenUtterance = v9;
  }

  return v6;
}

- (SUIBNLRouterSummary)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SUIBNLRouterSummary::rewrittenUtterance"];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __37__SUIBNLRouterSummary_initWithCoder___block_invoke;
  v9[3] = &unk_2784BFDC0;
  v10 = v5;
  v6 = v5;
  v7 = [(SUIBNLRouterSummary *)self initWithBuilder:v9];

  return v7;
}

@end