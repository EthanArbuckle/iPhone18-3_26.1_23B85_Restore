@interface WBSCyclerItemLeafRepresentation
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation WBSCyclerItemLeafRepresentation

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [WBSCyclerItemLeafRepresentation alloc];
  v5 = [(WBSCyclerItemRepresentation *)self title];
  v6 = [(WBSCyclerItemRepresentation *)self uniqueIdentifier];
  v7 = [(WBSCyclerItemRepresentation *)v4 initWithTitle:v5 uniqueIdentifier:v6];

  v8 = [(WBSCyclerItemRepresentation *)self extraAttributes];
  [(WBSCyclerItemRepresentation *)v7 setExtraAttributes:v8];

  return v7;
}

@end