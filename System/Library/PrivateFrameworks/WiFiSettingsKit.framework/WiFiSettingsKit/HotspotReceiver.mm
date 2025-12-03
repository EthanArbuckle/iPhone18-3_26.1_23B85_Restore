@interface HotspotReceiver
- (_TtC15WiFiSettingsKit15HotspotReceiver)init;
- (void)session:(id)session updatedFoundDevices:(id)devices;
@end

@implementation HotspotReceiver

- (void)session:(id)session updatedFoundDevices:(id)devices
{
  v6 = sub_2741C7FEC();
  sessionCopy = session;
  selfCopy = self;
  sub_2740BA558(v6);
}

- (_TtC15WiFiSettingsKit15HotspotReceiver)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for HotspotReceiver();
  return [(HotspotReceiver *)&v3 init];
}

@end