@interface _UIMaterial
+ (_UIMaterial)_labelMaterial;
+ (id)_solariumMaterialForColor:(id)a3 traitCollection:(id)a4;
+ (id)_systemGreenEffect;
+ (id)materialForSystemColorName:(id)a3;
+ (id)vibrancyEffectWithA:(double)a1 B:(double)a2 C:(double)a3 D:(double)a4 E:(double)a5 F:(double)a6;
- (_UIMaterial)initWithVibrancy:(int64_t)a3 forBlurEffectStyle:(int64_t)a4;
- (_UIMaterial)initWithVibrantVisualEffect:(id)a3;
- (id)description;
- (id)initWithBlur:(id *)a1;
- (id)initWithVisualEffect:(id *)a1;
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

+ (id)_solariumMaterialForColor:(id)a3 traitCollection:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_189050FD0(v5, v6);

  return v7;
}

+ (id)materialForSystemColorName:(id)a3
{
  v3 = a3;
  objc_opt_self();
  if (qword_1ED49B920 != -1)
  {
    dispatch_once(&qword_1ED49B920, &__block_literal_global_1813);
  }

  v4 = qword_1ED49B918;
  v5 = [v4 objectForKeyedSubscript:v3];

  return v5;
}

- (id)initWithBlur:(id *)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = [UIBlurEffect effectWithStyle:a2];
    v2 = [(_UIMaterial *)v2 initWithVisualEffect:v3];
  }

  return v2;
}

+ (id)vibrancyEffectWithA:(double)a1 B:(double)a2 C:(double)a3 D:(double)a4 E:(double)a5 F:(double)a6
{
  objc_opt_self();
  v12 = a1 / 100.0;
  v13 = a2 / 100.0;
  v14 = a3 / 100.0;
  v15 = a4 / 100.0;
  v16 = a5 / 100.0;
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
  v17 = a6 / 100.0;
  v25 = v17;
  v26 = xmmword_18A65AB30;
  v27 = 0;
  v18 = [UIVibrancyEffect _vibrantEffectWithLightCAColorMatrix:&v28 darkCAColorMatrix:&v20 alpha:1.0];

  return v18;
}

- (id)initWithVisualEffect:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = _UIMaterial;
    a1 = objc_msgSendSuper2(&v7, sel_init);
    if (a1)
    {
      obj = 0;
      v6 = 0;
      _UIVisualEffectViewUpgradeLegacyEffect(v3, &v6, &obj);
      objc_storeStrong(a1 + 3, obj);
      objc_storeStrong(a1 + 2, v6);
    }
  }

  return a1;
}

- (_UIMaterial)initWithVibrancy:(int64_t)a3 forBlurEffectStyle:(int64_t)a4
{
  v6 = [UIBlurEffect effectWithStyle:a4];
  v7 = [UIVibrancyEffect effectForBlurEffect:v6 style:a3];

  v8 = [(_UIMaterial *)self initWithVibrantVisualEffect:v7];
  return v8;
}

- (_UIMaterial)initWithVibrantVisualEffect:(id)a3
{
  v4 = a3;
  if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_VibrancyDebug, @"VibrancyDebug") & 1) == 0 && byte_1ED48B1BC)
  {
    v5 = +[_UIMaterial _systemGreenEffect];

    v4 = v5;
  }

  v6 = [(_UIMaterial *)&self->super.isa initWithVisualEffect:v4];
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
  v6 = [(_UIMaterial *)self contentEffects];
  v7 = [(_UIMaterial *)self backgroundEffects];
  v8 = [v3 stringWithFormat:@"<%@: %p contentEffects: %@, backgroundEffects: %@>", v5, self, v6, v7];;

  return v8;
}

@end