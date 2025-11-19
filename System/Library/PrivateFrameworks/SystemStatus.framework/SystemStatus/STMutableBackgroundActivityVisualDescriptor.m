@interface STMutableBackgroundActivityVisualDescriptor
- (id)copyWithZone:(_NSZone *)a3;
- (void)setBackgroundColorRepresentation:(id)a3;
- (void)setCrossfadableActivities:(id)a3;
- (void)setFontSizeAdjustment:(double)a3;
- (void)setImageName:(id)a3;
- (void)setPackageName:(id)a3;
- (void)setPreferredContinuousAnimationName:(id)a3;
- (void)setPreferredVisualEffectName:(id)a3;
- (void)setPrefersToKeepContentVisible:(BOOL)a3;
- (void)setPrefersToSuppressDefaultUserInteractionHandler:(BOOL)a3;
- (void)setPrefersToSuppressPulse:(BOOL)a3;
- (void)setSystemImageName:(id)a3;
- (void)setTextLabel:(id)a3;
- (void)setVerticalOffsetInPixels:(double)a3;
@end

@implementation STMutableBackgroundActivityVisualDescriptor

- (void)setSystemImageName:(id)a3
{
  v4 = a3;
  systemImageName = self->super._systemImageName;
  v8 = v4;
  if ((BSEqualObjects() & 1) == 0)
  {
    v6 = [v8 copy];
    v7 = self->super._systemImageName;
    self->super._systemImageName = v6;
  }
}

- (void)setImageName:(id)a3
{
  v4 = a3;
  imageName = self->super._imageName;
  v8 = v4;
  if ((BSEqualObjects() & 1) == 0)
  {
    v6 = [v8 copy];
    v7 = self->super._imageName;
    self->super._imageName = v6;
  }
}

- (void)setPackageName:(id)a3
{
  v4 = a3;
  packageName = self->super._packageName;
  v8 = v4;
  if ((BSEqualObjects() & 1) == 0)
  {
    v6 = [v8 copy];
    v7 = self->super._packageName;
    self->super._packageName = v6;
  }
}

- (void)setTextLabel:(id)a3
{
  v4 = a3;
  textLabel = self->super._textLabel;
  v8 = v4;
  if ((BSEqualObjects() & 1) == 0)
  {
    v6 = [v8 copy];
    v7 = self->super._textLabel;
    self->super._textLabel = v6;
  }
}

- (void)setBackgroundColorRepresentation:(id)a3
{
  v5 = a3;
  backgroundColorRepresentation = self->super._backgroundColorRepresentation;
  p_backgroundColorRepresentation = &self->super._backgroundColorRepresentation;
  v8 = v5;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(p_backgroundColorRepresentation, a3);
  }
}

- (void)setVerticalOffsetInPixels:(double)a3
{
  if (self->super._verticalOffsetInPixels != a3)
  {
    self->super._verticalOffsetInPixels = a3;
  }
}

- (void)setFontSizeAdjustment:(double)a3
{
  if (self->super._fontSizeAdjustment != a3)
  {
    self->super._fontSizeAdjustment = a3;
  }
}

- (void)setPrefersToKeepContentVisible:(BOOL)a3
{
  if (self->super._prefersToKeepContentVisible != a3)
  {
    self->super._prefersToKeepContentVisible = a3;
  }
}

- (void)setPreferredVisualEffectName:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = @"none";
  }

  preferredVisualEffectName = self->super._preferredVisualEffectName;
  v8 = v4;
  if ((BSEqualObjects() & 1) == 0)
  {
    v6 = [(__CFString *)v8 copy];
    v7 = self->super._preferredVisualEffectName;
    self->super._preferredVisualEffectName = v6;
  }
}

- (void)setPreferredContinuousAnimationName:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = @"pulseBackground";
  }

  preferredContinuousAnimationName = self->super._preferredContinuousAnimationName;
  v8 = v4;
  if ((BSEqualObjects() & 1) == 0)
  {
    v6 = [(__CFString *)v8 copy];
    v7 = self->super._preferredContinuousAnimationName;
    self->super._preferredContinuousAnimationName = v6;
  }
}

- (void)setPrefersToSuppressDefaultUserInteractionHandler:(BOOL)a3
{
  if (self->super._prefersToSuppressDefaultUserInteractionHandler != a3)
  {
    self->super._prefersToSuppressDefaultUserInteractionHandler = a3;
  }
}

- (void)setCrossfadableActivities:(id)a3
{
  v4 = a3;
  crossfadableActivities = self->super._crossfadableActivities;
  v8 = v4;
  if ((BSEqualObjects() & 1) == 0)
  {
    v6 = [v8 copy];
    v7 = self->super._crossfadableActivities;
    self->super._crossfadableActivities = v6;
  }
}

- (void)setPrefersToSuppressPulse:(BOOL)a3
{
  v4 = STBackgroundActivityContinuousAnimationNone;
  if (!a3)
  {
    v5 = [(STBackgroundActivityVisualDescriptor *)self preferredContinuousAnimationName];
    v6 = [v5 isEqual:@"none"];

    if (!v6)
    {
      return;
    }

    v4 = STBackgroundActivityContinuousAnimationPulseBackground;
  }

  v7 = *v4;

  [(STMutableBackgroundActivityVisualDescriptor *)self setPreferredContinuousAnimationName:v7];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  _copyValuesFromDescriptorToDescriptor(self, v4);
  return v4;
}

@end