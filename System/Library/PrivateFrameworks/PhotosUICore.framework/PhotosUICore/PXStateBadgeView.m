@interface PXStateBadgeView
- (PXStateBadgeView)initWithState:(id)a3;
- (id)symbolWithState:(id)a3;
- (void)setState:(id)a3;
@end

@implementation PXStateBadgeView

- (id)symbolWithState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Rejected"])
  {
    v4 = @"❌";
  }

  else if ([v3 isEqualToString:@"Chosen"])
  {
    v4 = @"✅";
  }

  else if ([v3 isEqualToString:@"ForceChosen"])
  {
    v4 = @"✳️";
  }

  else
  {
    v5 = [v3 isEqualToString:@"Required"];
    v6 = @"⁉️";
    if (!v3)
    {
      v6 = 0;
    }

    if (v5)
    {
      v4 = @"🔑";
    }

    else
    {
      v4 = v6;
    }
  }

  return v4;
}

- (void)setState:(id)a3
{
  v4 = [(PXStateBadgeView *)self symbolWithState:a3];
  [(PXTextSymbolView *)self setSymbol:v4];
}

- (PXStateBadgeView)initWithState:(id)a3
{
  v4 = [(PXStateBadgeView *)self symbolWithState:a3];
  v7.receiver = self;
  v7.super_class = PXStateBadgeView;
  v5 = [(PXTextSymbolView *)&v7 initWithSymbol:v4];

  return v5;
}

@end