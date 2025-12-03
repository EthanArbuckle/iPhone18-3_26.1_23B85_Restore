@interface SBSMutableDisplayModeSettings
- (id)copyWithZone:(_NSZone *)zone;
- (void)setOverscanCompensation:(int64_t)compensation;
- (void)setScale:(unint64_t)scale;
@end

@implementation SBSMutableDisplayModeSettings

- (void)setScale:(unint64_t)scale
{
  if (scale >= 3)
  {
    [(SBSMutableDisplayModeSettings *)a2 setScale:?];
  }

  self->super._scale = scale;
}

- (void)setOverscanCompensation:(int64_t)compensation
{
  if (compensation >= 3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SBSDisplayModeSettings.m" lineNumber:229 description:{@"Invalid parameter not satisfying: %@", @"overscanCompensation == SBSDisplayOverscanCompensationNone || overscanCompensation == SBSDisplayOverscanCompensationInsetBounds || overscanCompensation == SBSDisplayOverscanCompensationScaleContent"}];
  }

  self->super._overscanCompensation = compensation;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SBSDisplayModeSettings alloc];

  return [(SBSDisplayModeSettings *)v4 initWithSettings:self];
}

- (void)setScale:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSDisplayModeSettings.m" lineNumber:223 description:{@"Invalid parameter not satisfying: %@", @"scale == SBSDisplayScaleStandard || scale == SBSDisplayScaleLargerText || scale == SBSDisplayScaleMoreSpace"}];
}

@end