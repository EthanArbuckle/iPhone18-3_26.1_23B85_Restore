@interface CXChannelUpdate
- (CXCallUpdate)csd_callUpdate;
@end

@implementation CXChannelUpdate

- (CXCallUpdate)csd_callUpdate
{
  v3 = objc_alloc_init(CXCallUpdate);
  if (([(CXChannelUpdate *)self hasSet]& 1) != 0)
  {
    activeRemoteParticipant = [(CXChannelUpdate *)self activeRemoteParticipant];
    [v3 setActiveRemoteParticipant:activeRemoteParticipant];
  }

  if (([(CXChannelUpdate *)self hasSet]& 0x40) != 0)
  {
    name = [(CXChannelUpdate *)self name];
    [v3 setLocalizedCallerName:name];
  }

  if (([(CXChannelUpdate *)self hasSet]& 0x80) != 0)
  {
    sandboxExtendedImageURL = [(CXChannelUpdate *)self sandboxExtendedImageURL];
    [v3 setLocalizedCallerImageURL:sandboxExtendedImageURL];
  }

  if (([(CXChannelUpdate *)self hasSet]& 0x100) != 0)
  {
    [v3 setServiceStatus:{-[CXChannelUpdate serviceStatus](self, "serviceStatus")}];
  }

  if (([(CXChannelUpdate *)self hasSet]& 0x200) != 0)
  {
    [v3 setTransmissionMode:{-[CXChannelUpdate transmissionMode](self, "transmissionMode")}];
  }

  if (([(CXChannelUpdate *)self hasSet]& 0x400) != 0)
  {
    [v3 setAccessoryButtonEventsEnabled:{-[CXChannelUpdate accessoryButtonEventsEnabled](self, "accessoryButtonEventsEnabled")}];
  }

  return v3;
}

@end