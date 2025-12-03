@interface _UIMaterial
+ (_UIMaterial)_labelMaterial;
+ (id)_solariumMaterialForColor:(id)color traitCollection:(id)collection;
+ (id)_systemGreenEffect;
+ (id)materialForSystemColorName:(id)name;
+ (id)vibrancyEffectWithA:(double)a B:(double)b C:(double)c D:(double)d E:(double)e F:(double)f;
- (_UIMaterial)initWithVibrancy:(int64_t)vibrancy forBlurEffectStyle:(int64_t)style;
- (_UIMaterial)initWithVibrantVisualEffect:(id)effect;
- (id)description;
- (id)initWithBlur:(id *)blur;
- (id)initWithVisualEffect:(id *)effect;
@end

@implementation _UIMaterial

+ (id)_systemGreenEffect
{
  v0 = objc_opt_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33___UIMaterial__systemGreenEffect__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v0;
  if (qword_1ED49B930 != -1)
  {
    dispatch_once(&qword_1ED49B930, block);
  }

  v1 = qword_1ED49B928;

  return v1;
}

+ (_UIMaterial)_labelMaterial
{
  v2 = sub_188B569CC();

  return v2;
}

+ (id)_solariumMaterialForColor:(id)color traitCollection:(id)collection
{
  colorCopy = color;
  collectionCopy = collection;
  v7 = sub_189050FD0(colorCopy, collectionCopy);

  return v7;
}

+ (id)materialForSystemColorName:(id)name
{
  nameCopy = name;
  objc_opt_self();
  if (qword_1ED49B920 != -1)
  {
    dispatch_once(&qword_1ED49B920, &__block_literal_global_1813);
  }

  v4 = qword_1ED49B918;
  v5 = [v4 objectForKeyedSubscript:nameCopy];

  return v5;
}

- (id)initWithBlur:(id *)blur
{
  blurCopy = blur;
  if (blur)
  {
    v3 = [UIBlurEffect effectWithStyle:a2];
    blurCopy = [(_UIMaterial *)blurCopy initWithVisualEffect:v3];
  }

  return blurCopy;
}

+ (id)vibrancyEffectWithA:(double)a B:(double)b C:(double)c D:(double)d E:(double)e F:(double)f
{
  objc_opt_self();
  v12 = a / 100.0;
  v13 = b / 100.0;
  v14 = c / 100.0;
  v15 = d / 100.0;
  v16 = e / 100.0;
  v29 = v12;
  v28 = xmmword_18A67C7A0;
  v31 = v13;
  v30 = xmmword_18A67C820;
  v33 = v14;
  v32 = xmmword_18A67C830;
  v20 = xmmword_18A67C7A0;
  v34 = xmmword_18A65AB30;
  v35 = 0;
  v21 = v15;
  v22 = xmmword_18A67C820;
  v23 = v16;
  v24 = xmmword_18A67C830;
  v17 = f / 100.0;
  v25 = v17;
  v26 = xmmword_18A65AB30;
  v27 = 0;
  v18 = [UIVibrancyEffect _vibrantEffectWithLightCAColorMatrix:&v28 darkCAColorMatrix:&v20 alpha:1.0];

  return v18;
}

- (id)initWithVisualEffect:(id *)effect
{
  v3 = a2;
  if (effect)
  {
    v7.receiver = effect;
    v7.super_class = _UIMaterial;
    effect = objc_msgSendSuper2(&v7, sel_init);
    if (effect)
    {
      obj = 0;
      v6 = 0;
      _UIVisualEffectViewUpgradeLegacyEffect(v3, &v6, &obj);
      objc_storeStrong(effect + 3, obj);
      objc_storeStrong(effect + 2, v6);
    }
  }

  return effect;
}

- (_UIMaterial)initWithVibrancy:(int64_t)vibrancy forBlurEffectStyle:(int64_t)style
{
  v6 = [UIBlurEffect effectWithStyle:style];
  v7 = [UIVibrancyEffect effectForBlurEffect:v6 style:vibrancy];

  v8 = [(_UIMaterial *)self initWithVibrantVisualEffect:v7];
  return v8;
}

- (_UIMaterial)initWithVibrantVisualEffect:(id)effect
{
  effectCopy = effect;
  if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_VibrancyDebug, @"VibrancyDebug") & 1) == 0 && byte_1ED48B1BC)
  {
    v5 = +[_UIMaterial _systemGreenEffect];

    effectCopy = v5;
  }

  v6 = [(_UIMaterial *)&self->super.isa initWithVisualEffect:effectCopy];
  v7 = v6;
  if (v6)
  {
    *(v6 + 8) = 1;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  contentEffects = [(_UIMaterial *)self contentEffects];
  backgroundEffects = [(_UIMaterial *)self backgroundEffects];
  v8 = [v3 stringWithFormat:@"<%@: %p contentEffects: %@, backgroundEffects: %@>", v5, self, contentEffects, backgroundEffects];;

  return v8;
}

@end