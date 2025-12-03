@interface TRAPreferencesOrientation
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToOrientationPreferences:(id)preferences;
- (TRAPreferencesOrientation)initWithOrientationPreferences:(id)preferences;
- (TRAPreferencesOrientation)initWithSupportedMask:(unint64_t)mask preferred:(int64_t)preferred determinesActiveOrientation:(BOOL)orientation;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation TRAPreferencesOrientation

- (TRAPreferencesOrientation)initWithSupportedMask:(unint64_t)mask preferred:(int64_t)preferred determinesActiveOrientation:(BOOL)orientation
{
  v9.receiver = self;
  v9.super_class = TRAPreferencesOrientation;
  result = [(TRAPreferencesOrientation *)&v9 init];
  if (result)
  {
    result->_supportedOrientations = mask;
    result->_preferredOrientation = preferred;
    result->_canDetermineActiveOrientation = orientation;
  }

  return result;
}

- (TRAPreferencesOrientation)initWithOrientationPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v5 = preferencesCopy;
  if (preferencesCopy)
  {
    supportedOrientations = [preferencesCopy supportedOrientations];
  }

  else
  {
    supportedOrientations = 30;
  }

  v7 = -[TRAPreferencesOrientation initWithSupportedMask:preferred:determinesActiveOrientation:](self, "initWithSupportedMask:preferred:determinesActiveOrientation:", supportedOrientations, [v5 preferredOrientation], objc_msgSend(v5, "canDetermineActiveOrientation"));

  return v7;
}

- (BOOL)isEqualToOrientationPreferences:(id)preferences
{
  preferencesCopy = preferences;
  if (!preferencesCopy)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(TRAPreferencesOrientation *)a2 isEqualToOrientationPreferences:?];
  }

  if (self == preferencesCopy)
  {
    v9 = 1;
    goto LABEL_10;
  }

  supportedOrientations = self->_supportedOrientations;
  if (supportedOrientations == [(TRAPreferencesOrientation *)preferencesCopy supportedOrientations]&& (preferredOrientation = self->_preferredOrientation, preferredOrientation == [(TRAPreferencesOrientation *)preferencesCopy preferredOrientation]))
  {
    canDetermineActiveOrientation = self->_canDetermineActiveOrientation;
    v9 = canDetermineActiveOrientation == [(TRAPreferencesOrientation *)preferencesCopy canDetermineActiveOrientation];
  }

  else
  {
LABEL_8:
    v9 = 0;
  }

LABEL_10:

  return v9;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TRAMutablePreferencesOrientation allocWithZone:zone];

  return [(TRAPreferencesOrientation *)v4 initWithOrientationPreferences:self];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TRAPreferencesOrientation *)self isEqualToOrientationPreferences:equalCopy];
  }

  return v5;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(TRAPreferencesOrientation *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
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

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(TRAPreferencesOrientation *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (void)isEqualToOrientationPreferences:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"TRAPreferences.m" lineNumber:195 description:{@"Invalid parameter not satisfying: %@", @"preferences == nil || [preferences isKindOfClass:[TRAPreferencesOrientation class]]"}];
}

@end