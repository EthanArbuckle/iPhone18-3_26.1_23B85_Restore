@interface SBSMutableDisplayModeSettings
- (id)copyWithZone:(_NSZone *)a3;
- (void)setOverscanCompensation:(int64_t)a3;
- (void)setScale:(unint64_t)a3;
@end

@implementation SBSMutableDisplayModeSettings

- (void)setScale:(unint64_t)a3
{
  if (a3 >= 3)
  {
    [(SBSMutableDisplayModeSettings *)a2 setScale:?];
  }

  self->super._scale = a3;
}

- (void)setOverscanCompensation:(int64_t)a3
{
  if (a3 >= 3)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"SBSDisplayModeSettings.m" lineNumber:229 description:{@"Invalid parameter not satisfying: %@", @"overscanCompensation == SBSDisplayOverscanCompensationNone || overscanCompensation == SBSDisplayOverscanCompensationInsetBounds || overscanCompensation == SBSDisplayOverscanCompensationScaleContent"}];
  }

  self->super._overscanCompensation = a3;
}

- (id)copyWithZone:(_NSZone *)a3
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