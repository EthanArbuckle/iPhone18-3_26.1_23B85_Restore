@interface _UIVisualEffectEnvironment
- (_UIVisualEffectEnvironment)initWithHost:(id)host;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_applyBlurQualityToConfigurationDictionary:(id)dictionary;
@end

@implementation _UIVisualEffectEnvironment

- (_UIVisualEffectEnvironment)initWithHost:(id)host
{
  v5.receiver = self;
  v5.super_class = _UIVisualEffectEnvironment;
  result = [(_UIVisualEffectEnvironment *)&v5 init];
  if (result)
  {
    result->_effectView = host;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  v4[2] = self->_effectView;
  [v4 setAllowsDithering:self->_allowsDithering];
  [v4 setBlurQuality:self->_blurQuality];
  [v4 setUseSimpleVibrancy:self->_useSimpleVibrancy];
  [v4 setReducedTransperancy:self->_reducedTransperancy];
  [v4 setReducedMotion:self->_reducedMotion];
  v5 = [(UITraitCollection *)self->_traitCollection copy];
  [v4 setTraitCollection:v5];

  return v4;
}

- (id)description
{
  v11.receiver = self;
  v11.super_class = _UIVisualEffectEnvironment;
  v3 = [(_UIVisualEffectEnvironment *)&v11 description];
  v4 = [v3 mutableCopy];

  [v4 appendFormat:@" host=%p", self->_effectView];
  v5 = self->_blurQuality + 1;
  if (v5 > 4)
  {
    v6 = @"default";
  }

  else
  {
    v6 = off_1E70F6E78[v5];
  }

  [v4 appendFormat:@" traitCollection=%p blurQuality=%@", self->_traitCollection, v6];
  v7 = "";
  if (self->_useSimpleVibrancy)
  {
    v8 = " useSimpleVibrancy";
  }

  else
  {
    v8 = "";
  }

  if (self->_reducedTransperancy)
  {
    v9 = " reducedTransperancy";
  }

  else
  {
    v9 = "";
  }

  if (self->_reducedMotion)
  {
    v7 = " reducedMotion";
  }

  [v4 appendFormat:@" %s%s%s", v8, v9, v7];

  return v4;
}

- (void)_applyBlurQualityToConfigurationDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  blurQuality = self->_blurQuality;
  if (blurQuality > 1)
  {
    if (blurQuality != 2)
    {
      if (blurQuality != 3)
      {
        goto LABEL_12;
      }

      v6 = @"high";
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (blurQuality)
  {
    if (blurQuality != 1)
    {
      goto LABEL_12;
    }

    v6 = @"low";
    goto LABEL_11;
  }

  v8 = dictionaryCopy;
  v7 = [(UITraitCollection *)self->_traitCollection userInterfaceIdiom]== UIUserInterfaceIdiomCarPlay;
  dictionaryCopy = v8;
  if (v7)
  {
LABEL_10:
    v6 = @"medium";
LABEL_11:
    v9 = dictionaryCopy;
    [dictionaryCopy setObject:v6 forKeyedSubscript:*MEMORY[0x1E6979B60]];
    dictionaryCopy = v9;
  }

LABEL_12:
}

@end