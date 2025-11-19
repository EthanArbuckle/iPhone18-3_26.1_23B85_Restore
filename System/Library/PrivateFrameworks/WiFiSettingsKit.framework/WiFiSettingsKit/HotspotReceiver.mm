@interface HotspotReceiver
- (_TtC15WiFiSettingsKit15HotspotReceiver)init;
- (void)session:(id)a3 updatedFoundDevices:(id)a4;
@end

@implementation HotspotReceiver

- (void)session:(id)a3 updatedFoundDevices:(id)a4
{
  v6 = sub_2741C7FEC();
  v7 = a3;
  v8 = self;
  sub_2740BA558(v6);
}

- (_TtC15WiFiSettingsKit15HotspotReceiver)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for HotspotReceiver();
  return [(HotspotReceiver *)&v3 init];
}

@end