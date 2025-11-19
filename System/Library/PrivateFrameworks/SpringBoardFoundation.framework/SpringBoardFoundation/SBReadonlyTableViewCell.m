@interface SBReadonlyTableViewCell
- (void)updateDisplayedValue;
@end

@implementation SBReadonlyTableViewCell

- (void)updateDisplayedValue
{
  v5 = [(SBReadonlyTableViewCell *)self detailTextLabel];
  v3 = [(PTUIRowTableViewCell *)self row];
  v4 = [v3 value];
  [v5 setText:v4];
}

@end