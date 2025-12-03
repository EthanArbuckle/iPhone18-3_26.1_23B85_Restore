@interface UIMotionEffect
- (NSDictionary)keyPathsAndRelativeValuesForViewerOffset:(UIOffset)viewerOffset;
- (UIMotionEffect)init;
- (UIMotionEffect)initWithCoder:(NSCoder *)coder;
- (id)_animationIdentifier;
- (id)_keyPathsAndRelativeValuesForPose:(id)pose;
- (id)_preferredMotionAnalyzerSettings;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_setPreferredMotionAnalyzerSettings:(id)settings;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIMotionEffect

- (id)_preferredMotionAnalyzerSettings
{
  v2 = self->_preferredMotionAnalyzerSettings;

  return v2;
}

- (id)_animationIdentifier
{
  animationIdentifier = self->_animationIdentifier;
  if (!animationIdentifier)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v4 stringWithFormat:@"<%@: %p>", v6, self];
    v8 = self->_animationIdentifier;
    self->_animationIdentifier = v7;

    animationIdentifier = self->_animationIdentifier;
  }

  return animationIdentifier;
}

- (UIMotionEffect)init
{
  v6.receiver = self;
  v6.super_class = UIMotionEffect;
  v2 = [(UIMotionEffect *)&v6 init];
  v3 = v2;
  if (v2)
  {
    UIMotionEffectCommonInit(v2);
    v4 = v3;
  }

  return v3;
}

- (NSDictionary)keyPathsAndRelativeValuesForViewerOffset:(UIOffset)viewerOffset
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)_keyPathsAndRelativeValuesForPose:(id)pose
{
  [pose viewerOffset];

  return [(UIMotionEffect *)self keyPathsAndRelativeValuesForViewerOffset:?];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 _setPreferredMotionAnalyzerSettings:self->_preferredMotionAnalyzerSettings];
  return v4;
}

- (UIMotionEffect)initWithCoder:(NSCoder *)coder
{
  v8.receiver = self;
  v8.super_class = UIMotionEffect;
  v3 = coder;
  v4 = [(UIMotionEffect *)&v8 init];
  UIMotionEffectCommonInit(v4);
  v5 = [(NSCoder *)v3 decodeObjectForKey:@"preferredMotionAnalyzerSettingsDictionary", v8.receiver, v8.super_class];

  if (v5)
  {
    v6 = [(PTSettings *)_UIMotionAnalyzerSettings settingsFromArchiveDictionary:v5];
    [(UIMotionEffect *)v4 _setPreferredMotionAnalyzerSettings:v6];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  preferredMotionAnalyzerSettings = self->_preferredMotionAnalyzerSettings;
  coderCopy = coder;
  archiveDictionary = [(PTSettings *)preferredMotionAnalyzerSettings archiveDictionary];
  [coderCopy encodeObject:archiveDictionary forKey:@"preferredMotionAnalyzerSettingsDictionary"];
}

- (void)_setPreferredMotionAnalyzerSettings:(id)settings
{
  settingsCopy = settings;
  preferredMotionAnalyzerSettings = self->_preferredMotionAnalyzerSettings;
  p_preferredMotionAnalyzerSettings = &self->_preferredMotionAnalyzerSettings;
  if (preferredMotionAnalyzerSettings != settingsCopy)
  {
    v8 = settingsCopy;
    objc_storeStrong(p_preferredMotionAnalyzerSettings, settings);
    settingsCopy = v8;
  }
}

@end