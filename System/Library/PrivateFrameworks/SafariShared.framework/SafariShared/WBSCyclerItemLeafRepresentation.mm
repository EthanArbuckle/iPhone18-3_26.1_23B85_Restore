@interface WBSCyclerItemLeafRepresentation
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation WBSCyclerItemLeafRepresentation

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [WBSCyclerItemLeafRepresentation alloc];
  title = [(WBSCyclerItemRepresentation *)self title];
  uniqueIdentifier = [(WBSCyclerItemRepresentation *)self uniqueIdentifier];
  v7 = [(WBSCyclerItemRepresentation *)v4 initWithTitle:title uniqueIdentifier:uniqueIdentifier];

  extraAttributes = [(WBSCyclerItemRepresentation *)self extraAttributes];
  [(WBSCyclerItemRepresentation *)v7 setExtraAttributes:extraAttributes];

  return v7;
}

@end