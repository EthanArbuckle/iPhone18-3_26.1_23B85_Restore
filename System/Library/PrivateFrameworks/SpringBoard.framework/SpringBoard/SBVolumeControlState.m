@interface SBVolumeControlState
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation SBVolumeControlState

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(SBVolumeControlState);
  v5 = [(SBVolumeControlState *)self activeVolumeCategoryName];
  [(SBVolumeControlState *)v4 setActiveVolumeCategoryName:v5];

  [(SBVolumeControlState *)v4 setAudioPlayingSomewhere:[(SBVolumeControlState *)self isAudioPlayingSomewhere]];
  [(SBVolumeControlState *)v4 setCallOrFaceTimeActive:[(SBVolumeControlState *)self isCallOrFaceTimeActive]];
  [(SBVolumeControlState *)v4 setCurrentRouteHasVolumeControl:[(SBVolumeControlState *)self currentRouteHasVolumeControl]];
  [(SBVolumeControlState *)v4 setFullyMuted:[(SBVolumeControlState *)self isFullyMuted]];
  [(SBVolumeControlState *)v4 setLocked:[(SBVolumeControlState *)self isLocked]];
  [(SBVolumeControlState *)v4 setHostingAppOnLockScreen:[(SBVolumeControlState *)self isHostingAppOnLockScreen]];
  [(SBVolumeControlState *)v4 setShowingLockScreenMediaControls:[(SBVolumeControlState *)self isShowingLockScreenMediaControls]];
  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(SBVolumeControlState *)self activeVolumeCategoryName];
  [v3 appendString:v4 withName:@"activeVolumeCategoryName"];

  v5 = [v3 appendBool:-[SBVolumeControlState isAudioPlayingSomewhere](self withName:{"isAudioPlayingSomewhere"), @"isAudioPlayingSomewhere"}];
  v6 = [v3 appendBool:-[SBVolumeControlState isCallOrFaceTimeActive](self withName:{"isCallOrFaceTimeActive"), @"isCallOrFaceTimeActive"}];
  v7 = [v3 appendBool:-[SBVolumeControlState currentRouteHasVolumeControl](self withName:{"currentRouteHasVolumeControl"), @"currentRouteHasVolumeControl"}];
  v8 = [v3 appendBool:-[SBVolumeControlState isFullyMuted](self withName:{"isFullyMuted"), @"isFullyMuted"}];
  v9 = [v3 appendBool:-[SBVolumeControlState isLocked](self withName:{"isLocked"), @"isLocked"}];
  v10 = [v3 appendBool:-[SBVolumeControlState isHostingAppOnLockScreen](self withName:{"isHostingAppOnLockScreen"), @"isHostingAppOnLockScreen"}];
  v11 = [v3 appendBool:-[SBVolumeControlState isShowingLockScreenMediaControls](self withName:{"isShowingLockScreenMediaControls"), @"isShowingLockScreenMediaControls"}];
  v12 = [v3 build];

  return v12;
}

@end