@interface PUSlideshowSettingsViewModelChange
- (BOOL)hasChanges;
@end

@implementation PUSlideshowSettingsViewModelChange

- (BOOL)hasChanges
{
  v4.receiver = self;
  v4.super_class = PUSlideshowSettingsViewModelChange;
  return [(PUViewModelChange *)&v4 hasChanges]|| [(PUSlideshowSettingsViewModelChange *)self presetDidChange]|| [(PUSlideshowSettingsViewModelChange *)self mediaItemDidChange]|| [(PUSlideshowSettingsViewModelChange *)self shouldRepeatDidChange]|| [(PUSlideshowSettingsViewModelChange *)self stepDurationDidChange]|| [(PUSlideshowSettingsViewModelChange *)self musicOnDidChange];
}

@end