@interface TLAlertQueuePlayerItemHapticTracks
- (TLAlertQueuePlayerItemHapticTracks)initWithHapticPlayerItemTrack:(id)track attenuatedHapticPlayerItemTrack:(id)itemTrack;
@end

@implementation TLAlertQueuePlayerItemHapticTracks

- (TLAlertQueuePlayerItemHapticTracks)initWithHapticPlayerItemTrack:(id)track attenuatedHapticPlayerItemTrack:(id)itemTrack
{
  trackCopy = track;
  itemTrackCopy = itemTrack;
  v12.receiver = self;
  v12.super_class = TLAlertQueuePlayerItemHapticTracks;
  v9 = [(TLAlertQueuePlayerItemHapticTracks *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_hapticPlayerItemTrack, track);
    objc_storeStrong(&v10->_attenuatedHapticPlayerItemTrack, itemTrack);
  }

  return v10;
}

@end