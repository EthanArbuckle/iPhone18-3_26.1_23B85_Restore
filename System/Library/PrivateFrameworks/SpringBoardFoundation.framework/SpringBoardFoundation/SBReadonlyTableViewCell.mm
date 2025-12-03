@interface SBReadonlyTableViewCell
- (void)updateDisplayedValue;
@end

@implementation SBReadonlyTableViewCell

- (void)updateDisplayedValue
{
  detailTextLabel = [(SBReadonlyTableViewCell *)self detailTextLabel];
  v3 = [(PTUIRowTableViewCell *)self row];
  value = [v3 value];
  [detailTextLabel setText:value];
}

@end