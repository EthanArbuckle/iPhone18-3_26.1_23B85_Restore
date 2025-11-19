@interface UIMotionEffect
- (NSDictionary)keyPathsAndRelativeValuesForViewerOffset:(UIOffset)viewerOffset;
- (UIMotionEffect)init;
- (UIMotionEffect)initWithCoder:(NSCoder *)coder;
- (id)_animationIdentifier;
- (id)_keyPathsAndRelativeValuesForPose:(id)a3;
- (id)_preferredMotionAnalyzerSettings;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_setPreferredMotionAnalyzerSettings:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

- (id)_keyPathsAndRelativeValuesForPose:(id)a3
{
  [a3 viewerOffset];

  return [(UIMotionEffect *)self keyPathsAndRelativeValuesForViewerOffset:?];
}

- (id)copyWithZone:(_NSZone *)a3
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

- (void)encodeWithCoder:(id)a3
{
  preferredMotionAnalyzerSettings = self->_preferredMotionAnalyzerSettings;
  v4 = a3;
  v5 = [(PTSettings *)preferredMotionAnalyzerSettings archiveDictionary];
  [v4 encodeObject:v5 forKey:@"preferredMotionAnalyzerSettingsDictionary"];
}

- (void)_setPreferredMotionAnalyzerSettings:(id)a3
{
  v5 = a3;
  preferredMotionAnalyzerSettings = self->_preferredMotionAnalyzerSettings;
  p_preferredMotionAnalyzerSettings = &self->_preferredMotionAnalyzerSettings;
  if (preferredMotionAnalyzerSettings != v5)
  {
    v8 = v5;
    objc_storeStrong(p_preferredMotionAnalyzerSettings, a3);
    v5 = v8;
  }
}

@end