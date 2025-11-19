@interface SUIBNLRouterSummary
- (SUIBNLRouterSummary)initWithBuilder:(id)a3;
- (SUIBNLRouterSummary)initWithCoder:(id)a3;
@end

@implementation SUIBNLRouterSummary

- (SUIBNLRouterSummary)initWithBuilder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SUIBNLRouterSummary;
  v5 = [(SUIBNLRouterSummary *)&v12 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = objc_alloc_init(SUIBNLRouterSummaryMutation);
    v4[2](v4, v7);
    v8 = [(SUIBNLRouterSummaryMutation *)v7 rewrittenUtterance];
    v9 = [v8 copy];
    rewrittenUtterance = v6->_rewrittenUtterance;
    v6->_rewrittenUtterance = v9;
  }

  return v6;
}

- (SUIBNLRouterSummary)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SUIBNLRouterSummary::rewrittenUtterance"];

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