@interface AirDropBonjourProbe
- (void)startAirDropScanWithDuration:(double)a3;
@end

@implementation AirDropBonjourProbe

- (void)startAirDropScanWithDuration:(double)a3
{
  [(BonjourProbe *)self setIncludeAWDL:1, a3];
  v4.receiver = self;
  v4.super_class = AirDropBonjourProbe;
  [(BonjourProbe *)&v4 startBonjourScanForService:@"_airdrop._tcp" onInterfaceNamed:0];
}

@end