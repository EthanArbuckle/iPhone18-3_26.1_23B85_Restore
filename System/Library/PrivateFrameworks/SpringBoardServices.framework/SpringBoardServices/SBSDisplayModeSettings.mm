@interface SBSDisplayModeSettings
+ (id)fromDefaultsRepresentation:(id)representation;
- (BOOL)isEqual:(id)equal;
- (SBSDisplayModeSettings)initWithCoder:(id)coder;
- (SBSDisplayModeSettings)initWithScale:(unint64_t)scale overscanCompensation:(int64_t)compensation;
- (SBSDisplayModeSettings)initWithSettings:(id)settings;
- (id)defaultsRepresentation;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SBSDisplayModeSettings

- (SBSDisplayModeSettings)initWithSettings:(id)settings
{
  settingsCopy = settings;
  scale = [settingsCopy scale];
  overscanCompensation = [settingsCopy overscanCompensation];

  return [(SBSDisplayModeSettings *)self initWithScale:scale overscanCompensation:overscanCompensation];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_scale == equalCopy->_scale && self->_overscanCompensation == equalCopy->_overscanCompensation;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = SBSDisplayScaleDescription(self->_scale);
  [v3 appendString:v4 withName:@"scale"];

  v5 = SBSDisplayOverscanCompensationDescription(self->_overscanCompensation);
  [v3 appendString:v5 withName:@"overscan"];

  build = [v3 build];

  return build;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [SBSMutableDisplayModeSettings allocWithZone:zone];

  return [(SBSDisplayModeSettings *)v4 initWithSettings:self];
}

- (SBSDisplayModeSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"scale"];
  v6 = [coderCopy decodeIntegerForKey:@"overscanCompensation"];

  return [(SBSDisplayModeSettings *)self initWithScale:v5 overscanCompensation:v6];
}

- (void)encodeWithCoder:(id)coder
{
  scale = self->_scale;
  coderCopy = coder;
  [coderCopy encodeInteger:scale forKey:@"scale"];
  [coderCopy encodeInteger:self->_overscanCompensation forKey:@"overscanCompensation"];
}

+ (id)fromDefaultsRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy objectForKey:@"scale"];
  integerValue = [v5 integerValue];

  v7 = [representationCopy objectForKey:@"overscanCompensation"];

  integerValue2 = [v7 integerValue];
  v9 = 0;
  if (integerValue <= 2 && integerValue2 <= 2)
  {
    v9 = [[self alloc] initWithScale:integerValue overscanCompensation:integerValue2];
  }

  return v9;
}

- (id)defaultsRepresentation
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"scale";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_scale];
  v7[1] = @"overscanCompensation";
  v8[0] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_overscanCompensation];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (SBSDisplayModeSettings)initWithScale:(unint64_t)scale overscanCompensation:(int64_t)compensation
{
  if (scale >= 3)
  {
    [SBSDisplayModeSettings initWithScale:a2 overscanCompensation:self];
  }

  if (compensation >= 3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SBSDisplayModeSettings.m" lineNumber:206 description:{@"Invalid parameter not satisfying: %@", @"SBValidateOverscanCompensation(overscanCompensation)"}];
  }

  v10.receiver = self;
  v10.super_class = SBSDisplayModeSettings;
  result = [(SBSDisplayModeSettings *)&v10 init];
  if (result)
  {
    result->_scale = scale;
    result->_overscanCompensation = compensation;
  }

  return result;
}

- (void)initWithScale:(uint64_t)a1 overscanCompensation:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSDisplayModeSettings.m" lineNumber:205 description:{@"Invalid parameter not satisfying: %@", @"SBValidateDisplayScale(scale)"}];
}

@end