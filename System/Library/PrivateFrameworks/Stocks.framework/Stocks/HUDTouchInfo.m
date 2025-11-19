@interface HUDTouchInfo
- (CGPoint)locationInHUD;
- (CGPoint)plottedLocation;
- (UITouch)touch;
- (id)description;
- (void)setStockValue:(id *)a3;
@end

@implementation HUDTouchInfo

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  WeakRetained = objc_loadWeakRetained(&self->_touch);
  v5 = [v3 stringWithFormat:@"HUDTouchInfo %p with touch = %@", self, WeakRetained];

  return v5;
}

- (void)setStockValue:(id *)a3
{
  v3 = *&a3->var0;
  self->_stockValue.volume = a3->var2;
  *&self->_stockValue.unixTime = v3;
}

- (CGPoint)plottedLocation
{
  x = self->_plottedLocation.x;
  y = self->_plottedLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)locationInHUD
{
  x = self->_locationInHUD.x;
  y = self->_locationInHUD.y;
  result.y = y;
  result.x = x;
  return result;
}

- (UITouch)touch
{
  WeakRetained = objc_loadWeakRetained(&self->_touch);

  return WeakRetained;
}

@end