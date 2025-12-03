@interface PXStateBadgeView
- (PXStateBadgeView)initWithState:(id)state;
- (id)symbolWithState:(id)state;
- (void)setState:(id)state;
@end

@implementation PXStateBadgeView

- (id)symbolWithState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"Rejected"])
  {
    v4 = @"❌";
  }

  else if ([stateCopy isEqualToString:@"Chosen"])
  {
    v4 = @"✅";
  }

  else if ([stateCopy isEqualToString:@"ForceChosen"])
  {
    v4 = @"✳️";
  }

  else
  {
    v5 = [stateCopy isEqualToString:@"Required"];
    v6 = @"⁉️";
    if (!stateCopy)
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

- (void)setState:(id)state
{
  v4 = [(PXStateBadgeView *)self symbolWithState:state];
  [(PXTextSymbolView *)self setSymbol:v4];
}

- (PXStateBadgeView)initWithState:(id)state
{
  v4 = [(PXStateBadgeView *)self symbolWithState:state];
  v7.receiver = self;
  v7.super_class = PXStateBadgeView;
  v5 = [(PXTextSymbolView *)&v7 initWithSymbol:v4];

  return v5;
}

@end