@interface TLAlertQueuePlayerItemHapticTracks
- (TLAlertQueuePlayerItemHapticTracks)initWithHapticPlayerItemTrack:(id)a3 attenuatedHapticPlayerItemTrack:(id)a4;
@end

@implementation TLAlertQueuePlayerItemHapticTracks

- (TLAlertQueuePlayerItemHapticTracks)initWithHapticPlayerItemTrack:(id)a3 attenuatedHapticPlayerItemTrack:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TLAlertQueuePlayerItemHapticTracks;
  v9 = [(TLAlertQueuePlayerItemHapticTracks *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_hapticPlayerItemTrack, a3);
    objc_storeStrong(&v10->_attenuatedHapticPlayerItemTrack, a4);
  }

  return v10;
}

@end