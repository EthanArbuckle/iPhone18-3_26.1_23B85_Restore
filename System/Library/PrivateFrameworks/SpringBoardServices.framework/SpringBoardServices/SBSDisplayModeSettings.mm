@interface SBSDisplayModeSettings
+ (id)fromDefaultsRepresentation:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SBSDisplayModeSettings)initWithCoder:(id)a3;
- (SBSDisplayModeSettings)initWithScale:(unint64_t)a3 overscanCompensation:(int64_t)a4;
- (SBSDisplayModeSettings)initWithSettings:(id)a3;
- (id)defaultsRepresentation;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SBSDisplayModeSettings

- (SBSDisplayModeSettings)initWithSettings:(id)a3
{
  v4 = a3;
  v5 = [v4 scale];
  v6 = [v4 overscanCompensation];

  return [(SBSDisplayModeSettings *)self initWithScale:v5 overscanCompensation:v6];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_scale == v4->_scale && self->_overscanCompensation == v4->_overscanCompensation;
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

  v6 = [v3 build];

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [SBSMutableDisplayModeSettings allocWithZone:a3];

  return [(SBSDisplayModeSettings *)v4 initWithSettings:self];
}

- (SBSDisplayModeSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"scale"];
  v6 = [v4 decodeIntegerForKey:@"overscanCompensation"];

  return [(SBSDisplayModeSettings *)self initWithScale:v5 overscanCompensation:v6];
}

- (void)encodeWithCoder:(id)a3
{
  scale = self->_scale;
  v5 = a3;
  [v5 encodeInteger:scale forKey:@"scale"];
  [v5 encodeInteger:self->_overscanCompensation forKey:@"overscanCompensation"];
}

+ (id)fromDefaultsRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"scale"];
  v6 = [v5 integerValue];

  v7 = [v4 objectForKey:@"overscanCompensation"];

  v8 = [v7 integerValue];
  v9 = 0;
  if (v6 <= 2 && v8 <= 2)
  {
    v9 = [[a1 alloc] initWithScale:v6 overscanCompensation:v8];
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

- (SBSDisplayModeSettings)initWithScale:(unint64_t)a3 overscanCompensation:(int64_t)a4
{
  if (a3 >= 3)
  {
    [SBSDisplayModeSettings initWithScale:a2 overscanCompensation:self];
  }

  if (a4 >= 3)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"SBSDisplayModeSettings.m" lineNumber:206 description:{@"Invalid parameter not satisfying: %@", @"SBValidateOverscanCompensation(overscanCompensation)"}];
  }

  v10.receiver = self;
  v10.super_class = SBSDisplayModeSettings;
  result = [(SBSDisplayModeSettings *)&v10 init];
  if (result)
  {
    result->_scale = a3;
    result->_overscanCompensation = a4;
  }

  return result;
}

- (void)initWithScale:(uint64_t)a1 overscanCompensation:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSDisplayModeSettings.m" lineNumber:205 description:{@"Invalid parameter not satisfying: %@", @"SBValidateDisplayScale(scale)"}];
}

@end