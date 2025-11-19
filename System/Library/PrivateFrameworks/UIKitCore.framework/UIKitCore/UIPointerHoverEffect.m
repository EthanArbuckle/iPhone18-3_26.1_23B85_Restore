@interface UIPointerHoverEffect
- (BOOL)isEqual:(id)a3;
- (UIPointerHoverEffect)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)settings;
- (unint64_t)hash;
- (unint64_t)options;
@end

@implementation UIPointerHoverEffect

- (UIPointerHoverEffect)init
{
  v5.receiver = self;
  v5.super_class = UIPointerHoverEffect;
  v2 = [(UIPointerHoverEffect *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(UIPointerHoverEffect *)v2 setPreferredTintMode:1];
    [(UIPointerHoverEffect *)v3 setPrefersScaledContent:1];
  }

  return v3;
}

- (unint64_t)options
{
  v3 = [(UIPointerHoverEffect *)self preferredTintMode];
  v4 = 9;
  if (v3 != UIPointerEffectTintModeUnderlay)
  {
    v4 = 1;
  }

  if (v3 == UIPointerEffectTintModeOverlay)
  {
    v5 = 5;
  }

  else
  {
    v5 = v4;
  }

  if ([(UIPointerHoverEffect *)self prefersShadow])
  {
    v5 |= 0x10uLL;
  }

  if ([(UIPointerHoverEffect *)self prefersScaledContent])
  {
    v5 |= 0x20uLL;
  }

  if ([(UIPointerHoverEffect *)self _tintViewTakesOnPointerShape])
  {
    v5 |= 0xC00uLL;
  }

  if ([(UIPointerHoverEffect *)self _tintViewUsesPointerMaterial])
  {
    return v5 & 0xFFFFFFFFFFFFBFF3 | 0x4008;
  }

  else
  {
    return v5;
  }
}

- (id)settings
{
  v2 = +[_UIPointerSettingsDomain rootSettings];
  v3 = [v2 hoverEffectSettings];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = UIPointerHoverEffect;
  v4 = [(UIPointerEffect *)&v6 copyWithZone:a3];
  [v4 setPreferredTintMode:{-[UIPointerHoverEffect preferredTintMode](self, "preferredTintMode")}];
  [v4 setPrefersScaledContent:{-[UIPointerHoverEffect prefersScaledContent](self, "prefersScaledContent")}];
  [v4 setPrefersShadow:{-[UIPointerHoverEffect prefersShadow](self, "prefersShadow")}];
  [v4 set_tintViewTakesOnPointerShape:{-[UIPointerHoverEffect _tintViewTakesOnPointerShape](self, "_tintViewTakesOnPointerShape")}];
  [v4 set_tintViewUsesPointerMaterial:{-[UIPointerHoverEffect _tintViewUsesPointerMaterial](self, "_tintViewUsesPointerMaterial")}];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = UIPointerHoverEffect;
  if ([(UIPointerEffect *)&v13 isEqual:v4])
  {
    v5 = v4;
    v6 = [v5 preferredTintMode];
    if (v6 == -[UIPointerHoverEffect preferredTintMode](self, "preferredTintMode") && (v7 = [v5 prefersScaledContent], v7 == -[UIPointerHoverEffect prefersScaledContent](self, "prefersScaledContent")) && (v8 = objc_msgSend(v5, "prefersShadow"), v8 == -[UIPointerHoverEffect prefersShadow](self, "prefersShadow")) && (v9 = objc_msgSend(v5, "_tintViewTakesOnPointerShape"), v9 == -[UIPointerHoverEffect _tintViewTakesOnPointerShape](self, "_tintViewTakesOnPointerShape")))
    {
      v12 = [v5 _tintViewUsesPointerMaterial];
      v10 = v12 ^ [(UIPointerHoverEffect *)self _tintViewUsesPointerMaterial]^ 1;
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = UIPointerHoverEffect;
  v3 = [(UIPointerEffect *)&v9 hash];
  v4 = [(UIPointerHoverEffect *)self preferredTintMode];
  v5 = v4 ^ [(UIPointerHoverEffect *)self prefersScaledContent];
  v6 = v5 ^ [(UIPointerHoverEffect *)self prefersShadow];
  v7 = v6 ^ [(UIPointerHoverEffect *)self _tintViewTakesOnPointerShape]^ v3;
  return v7 ^ [(UIPointerHoverEffect *)self _tintViewUsesPointerMaterial];
}

@end