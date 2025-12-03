@interface UIStatusBarNotChargingItemView
- (BOOL)updateForNewData:(id)data actions:(int)actions;
- (id)accessibilityHUDRepresentation;
@end

@implementation UIStatusBarNotChargingItemView

- (BOOL)updateForNewData:(id)data actions:(int)actions
{
  v5 = MEMORY[0x1E696AEC0];
  dataCopy = data;
  v7 = [v5 alloc];
  rawData = [dataCopy rawData];

  v9 = [v7 initWithCString:rawData + 2112 encoding:4];
  v10 = [v9 isEqualToString:self->_notChargingString];
  if ((v10 & 1) == 0)
  {
    objc_storeStrong(&self->_notChargingString, v9);
  }

  return v10 ^ 1;
}

- (id)accessibilityHUDRepresentation
{
  v2 = [[UIAccessibilityHUDItem alloc] initWithTitle:self->_notChargingString image:0 imageInsets:0.0, 0.0, 0.0, 0.0];

  return v2;
}

@end