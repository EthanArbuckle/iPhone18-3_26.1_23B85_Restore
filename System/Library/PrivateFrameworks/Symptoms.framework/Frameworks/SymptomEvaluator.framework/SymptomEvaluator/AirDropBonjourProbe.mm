@interface AirDropBonjourProbe
- (void)startAirDropScanWithDuration:(double)duration;
@end

@implementation AirDropBonjourProbe

- (void)startAirDropScanWithDuration:(double)duration
{
  [(BonjourProbe *)self setIncludeAWDL:1, duration];
  v4.receiver = self;
  v4.super_class = AirDropBonjourProbe;
  [(BonjourProbe *)&v4 startBonjourScanForService:@"_airdrop._tcp" onInterfaceNamed:0];
}

@end