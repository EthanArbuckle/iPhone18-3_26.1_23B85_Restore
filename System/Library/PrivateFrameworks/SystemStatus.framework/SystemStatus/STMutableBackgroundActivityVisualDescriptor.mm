@interface STMutableBackgroundActivityVisualDescriptor
- (id)copyWithZone:(_NSZone *)zone;
- (void)setBackgroundColorRepresentation:(id)representation;
- (void)setCrossfadableActivities:(id)activities;
- (void)setFontSizeAdjustment:(double)adjustment;
- (void)setImageName:(id)name;
- (void)setPackageName:(id)name;
- (void)setPreferredContinuousAnimationName:(id)name;
- (void)setPreferredVisualEffectName:(id)name;
- (void)setPrefersToKeepContentVisible:(BOOL)visible;
- (void)setPrefersToSuppressDefaultUserInteractionHandler:(BOOL)handler;
- (void)setPrefersToSuppressPulse:(BOOL)pulse;
- (void)setSystemImageName:(id)name;
- (void)setTextLabel:(id)label;
- (void)setVerticalOffsetInPixels:(double)pixels;
@end

@implementation STMutableBackgroundActivityVisualDescriptor

- (void)setSystemImageName:(id)name
{
  nameCopy = name;
  systemImageName = self->super._systemImageName;
  v8 = nameCopy;
  if ((BSEqualObjects() & 1) == 0)
  {
    v6 = [v8 copy];
    v7 = self->super._systemImageName;
    self->super._systemImageName = v6;
  }
}

- (void)setImageName:(id)name
{
  nameCopy = name;
  imageName = self->super._imageName;
  v8 = nameCopy;
  if ((BSEqualObjects() & 1) == 0)
  {
    v6 = [v8 copy];
    v7 = self->super._imageName;
    self->super._imageName = v6;
  }
}

- (void)setPackageName:(id)name
{
  nameCopy = name;
  packageName = self->super._packageName;
  v8 = nameCopy;
  if ((BSEqualObjects() & 1) == 0)
  {
    v6 = [v8 copy];
    v7 = self->super._packageName;
    self->super._packageName = v6;
  }
}

- (void)setTextLabel:(id)label
{
  labelCopy = label;
  textLabel = self->super._textLabel;
  v8 = labelCopy;
  if ((BSEqualObjects() & 1) == 0)
  {
    v6 = [v8 copy];
    v7 = self->super._textLabel;
    self->super._textLabel = v6;
  }
}

- (void)setBackgroundColorRepresentation:(id)representation
{
  representationCopy = representation;
  backgroundColorRepresentation = self->super._backgroundColorRepresentation;
  p_backgroundColorRepresentation = &self->super._backgroundColorRepresentation;
  v8 = representationCopy;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(p_backgroundColorRepresentation, representation);
  }
}

- (void)setVerticalOffsetInPixels:(double)pixels
{
  if (self->super._verticalOffsetInPixels != pixels)
  {
    self->super._verticalOffsetInPixels = pixels;
  }
}

- (void)setFontSizeAdjustment:(double)adjustment
{
  if (self->super._fontSizeAdjustment != adjustment)
  {
    self->super._fontSizeAdjustment = adjustment;
  }
}

- (void)setPrefersToKeepContentVisible:(BOOL)visible
{
  if (self->super._prefersToKeepContentVisible != visible)
  {
    self->super._prefersToKeepContentVisible = visible;
  }
}

- (void)setPreferredVisualEffectName:(id)name
{
  nameCopy = name;
  if (!nameCopy)
  {
    nameCopy = @"none";
  }

  preferredVisualEffectName = self->super._preferredVisualEffectName;
  v8 = nameCopy;
  if ((BSEqualObjects() & 1) == 0)
  {
    v6 = [(__CFString *)v8 copy];
    v7 = self->super._preferredVisualEffectName;
    self->super._preferredVisualEffectName = v6;
  }
}

- (void)setPreferredContinuousAnimationName:(id)name
{
  nameCopy = name;
  if (!nameCopy)
  {
    nameCopy = @"pulseBackground";
  }

  preferredContinuousAnimationName = self->super._preferredContinuousAnimationName;
  v8 = nameCopy;
  if ((BSEqualObjects() & 1) == 0)
  {
    v6 = [(__CFString *)v8 copy];
    v7 = self->super._preferredContinuousAnimationName;
    self->super._preferredContinuousAnimationName = v6;
  }
}

- (void)setPrefersToSuppressDefaultUserInteractionHandler:(BOOL)handler
{
  if (self->super._prefersToSuppressDefaultUserInteractionHandler != handler)
  {
    self->super._prefersToSuppressDefaultUserInteractionHandler = handler;
  }
}

- (void)setCrossfadableActivities:(id)activities
{
  activitiesCopy = activities;
  crossfadableActivities = self->super._crossfadableActivities;
  v8 = activitiesCopy;
  if ((BSEqualObjects() & 1) == 0)
  {
    v6 = [v8 copy];
    v7 = self->super._crossfadableActivities;
    self->super._crossfadableActivities = v6;
  }
}

- (void)setPrefersToSuppressPulse:(BOOL)pulse
{
  v4 = STBackgroundActivityContinuousAnimationNone;
  if (!pulse)
  {
    preferredContinuousAnimationName = [(STBackgroundActivityVisualDescriptor *)self preferredContinuousAnimationName];
    v6 = [preferredContinuousAnimationName isEqual:@"none"];

    if (!v6)
    {
      return;
    }

    v4 = STBackgroundActivityContinuousAnimationPulseBackground;
  }

  v7 = *v4;

  [(STMutableBackgroundActivityVisualDescriptor *)self setPreferredContinuousAnimationName:v7];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  _copyValuesFromDescriptorToDescriptor(self, v4);
  return v4;
}

@end