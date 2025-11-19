@interface TRAPreferencesOrientation
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToOrientationPreferences:(id)a3;
- (TRAPreferencesOrientation)initWithOrientationPreferences:(id)a3;
- (TRAPreferencesOrientation)initWithSupportedMask:(unint64_t)a3 preferred:(int64_t)a4 determinesActiveOrientation:(BOOL)a5;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation TRAPreferencesOrientation

- (TRAPreferencesOrientation)initWithSupportedMask:(unint64_t)a3 preferred:(int64_t)a4 determinesActiveOrientation:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = TRAPreferencesOrientation;
  result = [(TRAPreferencesOrientation *)&v9 init];
  if (result)
  {
    result->_supportedOrientations = a3;
    result->_preferredOrientation = a4;
    result->_canDetermineActiveOrientation = a5;
  }

  return result;
}

- (TRAPreferencesOrientation)initWithOrientationPreferences:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 supportedOrientations];
  }

  else
  {
    v6 = 30;
  }

  v7 = -[TRAPreferencesOrientation initWithSupportedMask:preferred:determinesActiveOrientation:](self, "initWithSupportedMask:preferred:determinesActiveOrientation:", v6, [v5 preferredOrientation], objc_msgSend(v5, "canDetermineActiveOrientation"));

  return v7;
}

- (BOOL)isEqualToOrientationPreferences:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(TRAPreferencesOrientation *)a2 isEqualToOrientationPreferences:?];
  }

  if (self == v5)
  {
    v9 = 1;
    goto LABEL_10;
  }

  supportedOrientations = self->_supportedOrientations;
  if (supportedOrientations == [(TRAPreferencesOrientation *)v5 supportedOrientations]&& (preferredOrientation = self->_preferredOrientation, preferredOrientation == [(TRAPreferencesOrientation *)v5 preferredOrientation]))
  {
    canDetermineActiveOrientation = self->_canDetermineActiveOrientation;
    v9 = canDetermineActiveOrientation == [(TRAPreferencesOrientation *)v5 canDetermineActiveOrientation];
  }

  else
  {
LABEL_8:
    v9 = 0;
  }

LABEL_10:

  return v9;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [TRAMutablePreferencesOrientation allocWithZone:a3];

  return [(TRAPreferencesOrientation *)v4 initWithOrientationPreferences:self];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TRAPreferencesOrientation *)self isEqualToOrientationPreferences:v4];
  }

  return v5;
}

- (id)succinctDescription
{
  v2 = [(TRAPreferencesOrientation *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = TRAStringForBSInterfaceOrientationMask(self->_supportedOrientations);
  [v3 appendString:v4 withName:@"supports"];

  preferredOrientation = self->_preferredOrientation;
  if (preferredOrientation)
  {
    v6 = TRAStringForBSInterfaceOrientation(preferredOrientation);
    [v3 appendString:v6 withName:@"preferred"];
  }

  v7 = [v3 appendBool:self->_canDetermineActiveOrientation withName:@"determines active"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(TRAPreferencesOrientation *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (void)isEqualToOrientationPreferences:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"TRAPreferences.m" lineNumber:195 description:{@"Invalid parameter not satisfying: %@", @"preferences == nil || [preferences isKindOfClass:[TRAPreferencesOrientation class]]"}];
}

@end