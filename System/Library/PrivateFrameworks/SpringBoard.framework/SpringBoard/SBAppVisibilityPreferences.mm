@interface SBAppVisibilityPreferences
- (BOOL)update;
- (SBAppVisibilityPreferences)initWithDefaultVisible:(BOOL)visible bundleID:(id)d containerPath:(id)path;
- (id)description;
- (uint64_t)setCurrentlyVisible:(uint64_t)result;
@end

@implementation SBAppVisibilityPreferences

- (BOOL)update
{
  CFPreferencesAppSynchronize(self->_bundleID);
  _CFPreferencesAppSynchronizeWithContainer();
  keyExistsAndHasValidFormat = 0;
  _CFPreferencesGetAppBooleanValueWithContainer();
  isDefaultVisible = CFPreferencesGetAppBooleanValue(@"SBIconVisibility", self->_bundleID, &keyExistsAndHasValidFormat) != 0;
  if (!keyExistsAndHasValidFormat)
  {
    isDefaultVisible = [(SBAppVisibilityPreferences *)self isDefaultVisible];
  }

  isCurrentlyVisible = [(SBAppVisibilityPreferences *)self isCurrentlyVisible];
  self->_currentlyVisible = isDefaultVisible;
  return isDefaultVisible ^ isCurrentlyVisible;
}

- (SBAppVisibilityPreferences)initWithDefaultVisible:(BOOL)visible bundleID:(id)d containerPath:(id)path
{
  dCopy = d;
  pathCopy = path;
  v16.receiver = self;
  v16.super_class = SBAppVisibilityPreferences;
  v10 = [(SBAppVisibilityPreferences *)&v16 init];
  if (v10)
  {
    v11 = [dCopy copy];
    bundleID = v10->_bundleID;
    v10->_bundleID = v11;

    v13 = [pathCopy copy];
    containerPath = v10->_containerPath;
    v10->_containerPath = v13;

    v10->_defaultVisible = visible;
    v10->_currentlyVisible = visible;
    [(SBAppVisibilityPreferences *)v10 update];
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p, bundle=%@ default=%i current=%i>", v5, self, self->_bundleID, -[SBAppVisibilityPreferences isDefaultVisible](self, "isDefaultVisible"), -[SBAppVisibilityPreferences isCurrentlyVisible](self, "isCurrentlyVisible")];

  return v6;
}

- (uint64_t)setCurrentlyVisible:(uint64_t)result
{
  if (result)
  {
    *(result + 25) = a2;
  }

  return result;
}

@end