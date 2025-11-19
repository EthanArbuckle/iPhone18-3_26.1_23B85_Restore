@interface UIBlurEffect
+ (UIBlurEffect)effectWithBlurRadius:(double)a3;
+ (UIBlurEffect)effectWithVariableBlurRadius:(double)a3 imageMask:(id)a4;
+ (id)_effectForLightMaterial:(id)a3 darkMaterial:(id)a4 bundle:(id)a5;
+ (id)_effectWithBlurRadius:(double)a3 scale:(double)a4;
+ (id)_effectWithInfiniteRadius;
+ (id)_effectWithInfiniteRadiusScale:(double)a3;
+ (id)_effectWithStyle:(int64_t)a3 tintColor:(id)a4 invertAutomaticStyle:(BOOL)a5;
+ (id)_effectWithVariableBlurRadius:(double)a3 imageMask:(id)a4 scale:(double)a5;
+ (id)_effectWithVariableBlurRadius:(double)a3 imageMask:(id)a4 scale:(double)a5 allowingAXAdaptation:(BOOL)a6;
- (BOOL)_isAutomaticStyle;
- (BOOL)isEqual:(id)a3;
- (UIBlurEffect)init;
- (UIBlurEffect)initWithCoder:(id)a3;
- (id)_initWithImplementation:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)effectForUserInterfaceStyle:(int64_t)a3;
- (id)effectSettings;
- (void)_updateEffectDescriptor:(id)a3 forEnvironment:(id)a4 usage:(int64_t)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UIBlurEffect

- (id)effectSettings
{
  v3 = +[_UILegacyEffectConverter sharedConverter];
  v4 = [v3 backdropSettingsForBlurStyle:{-[_UIBlurEffectImpl style](self->_impl, "style")}];

  return v4;
}

+ (id)_effectWithStyle:(int64_t)a3 tintColor:(id)a4 invertAutomaticStyle:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  if ((a3 & 0xFFFFFFFFFFFFFFFCLL) == 0x4B0 || (a3 - 6) < 0xF || (a3 - 1100) <= 2)
  {
    v10 = [[_UIBlurEffectCoreMaterialImpl alloc] initWithStyle:a3];
    v11 = [a1 alloc];
  }

  else
  {
    v9 = [a1 alloc];
    v10 = [[_UIBlurEffectLegacyImpl alloc] initWithStyle:a3 tintColor:v8 invertAutomaticStyle:v5];
    v11 = v9;
  }

  v12 = [v11 _initWithImplementation:v10];

  return v12;
}

+ (UIBlurEffect)effectWithBlurRadius:(double)a3
{
  v4 = [a1 alloc];
  v5 = [[_UIBlurEffectModernImpl alloc] initWithBlurRadius:a3 scale:0.0];
  v6 = [v4 _initWithImplementation:v5];

  return v6;
}

+ (id)_effectWithBlurRadius:(double)a3 scale:(double)a4
{
  v6 = [a1 alloc];
  v7 = [[_UIBlurEffectModernImpl alloc] initWithBlurRadius:a3 scale:a4];
  v8 = [v6 _initWithImplementation:v7];

  return v8;
}

+ (UIBlurEffect)effectWithVariableBlurRadius:(double)a3 imageMask:(id)a4
{
  v6 = a4;
  v7 = [a1 alloc];
  v8 = [[_UIBlurEffectVariableImpl alloc] initWithBaseRadius:v6 imageMask:1 scale:a3 allowAXAdaptation:0.0];

  v9 = [v7 _initWithImplementation:v8];

  return v9;
}

+ (id)_effectWithVariableBlurRadius:(double)a3 imageMask:(id)a4 scale:(double)a5
{
  v8 = a4;
  v9 = [a1 alloc];
  v10 = [[_UIBlurEffectVariableImpl alloc] initWithBaseRadius:v8 imageMask:1 scale:a3 allowAXAdaptation:a5];

  v11 = [v9 _initWithImplementation:v10];

  return v11;
}

+ (id)_effectWithVariableBlurRadius:(double)a3 imageMask:(id)a4 scale:(double)a5 allowingAXAdaptation:(BOOL)a6
{
  v6 = a6;
  v10 = a4;
  v11 = [a1 alloc];
  v12 = [[_UIBlurEffectVariableImpl alloc] initWithBaseRadius:v10 imageMask:v6 scale:a3 allowAXAdaptation:a5];

  v13 = [v11 _initWithImplementation:v12];

  return v13;
}

+ (id)_effectForLightMaterial:(id)a3 darkMaterial:(id)a4 bundle:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = _UICoreMaterialSanitizeMaterial(a3);
  v11 = _UICoreMaterialSanitizeMaterial(v9);

  if (v10 | v11)
  {
    v13 = [[_UIBlurEffectCoreMaterialImpl alloc] initWithLightMaterial:v10 darkMaterial:v11 bundle:v8];
    v12 = [[a1 alloc] _initWithImplementation:v13];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)_effectWithInfiniteRadius
{
  v2 = [a1 alloc];
  v3 = +[_UIBlurEffectAverageImpl sharedInstance];
  v4 = [v2 _initWithImplementation:v3];

  return v4;
}

+ (id)_effectWithInfiniteRadiusScale:(double)a3
{
  v4 = [a1 alloc];
  v5 = [[_UIBlurEffectAverageImpl alloc] initWithScale:a3];
  v6 = [v4 _initWithImplementation:v5];

  return v6;
}

- (UIBlurEffect)init
{
  v3 = [(UIBlurEffect *)self methodForSelector:sel_effectSettings];
  if (v3 == [UIBlurEffect instanceMethodForSelector:sel_effectSettings])
  {
    v4 = [[_UIBlurEffectModernImpl alloc] initWithBlurRadius:0.0 scale:0.0];
  }

  else
  {
    v4 = [[_UIBlurEffectLegacyImpl alloc] initWithStyle:0x8000000000000000 tintColor:0 invertAutomaticStyle:0];
  }

  v5 = v4;
  v6 = [(UIBlurEffect *)self _initWithImplementation:v4];

  return v6;
}

- (id)_initWithImplementation:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = UIBlurEffect;
  v6 = [(UIBlurEffect *)&v9 init];
  p_isa = &v6->super.super.isa;
  if (v6)
  {
    objc_storeStrong(&v6->_impl, a3);
    [p_isa[1] setEffect:p_isa];
  }

  return p_isa;
}

- (UIBlurEffect)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UIBlurEffect;
  v5 = [(UIVisualEffect *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [_UIBlurEffectImpl implementationFromCoder:v4];
    impl = v5->_impl;
    v5->_impl = v6;

    [(_UIBlurEffectImpl *)v5->_impl setEffect:v5];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = UIBlurEffect;
  v4 = a3;
  [(UIVisualEffect *)&v5 encodeWithCoder:v4];
  [(_UIBlurEffectImpl *)self->_impl encodeWithCoder:v4, v5.receiver, v5.super_class];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  p_isa = &v4->super.super.isa;
  if (v4 == self)
  {
    v6 = 1;
  }

  else if (v4 && [(UIBlurEffect *)v4 isMemberOfClass:objc_opt_class()])
  {
    v6 = [p_isa[1] isEqual:self->_impl];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_updateEffectDescriptor:(id)a3 forEnvironment:(id)a4 usage:(int64_t)a5
{
  v10 = a3;
  impl = self->_impl;
  v9 = a4;
  [(_UIBlurEffectImpl *)impl _updateEffectDescriptor:v10 forEnvironment:v9 usage:a5];
  LODWORD(impl) = [v9 allowsBlurring];

  if (impl)
  {
    [v10 setDisableInPlaceFiltering:1];
  }

  if (a5 == 1)
  {
    [v10 setAllowsVibrancyInContent:1];
    [v10 setLayerHitTestsAsOpaque:1];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  if ([(_UIBlurEffectImpl *)self->_impl requiresCopying])
  {
    v3 = objc_alloc(objc_opt_class());
    v4 = [(_UIBlurEffectImpl *)self->_impl copy];
    v5 = [v3 _initWithImplementation:v4];

    return v5;
  }

  else
  {

    return self;
  }
}

- (id)effectForUserInterfaceStyle:(int64_t)a3
{
  v5 = [(_UIBlurEffectImpl *)self->_impl implementationForUserInterfaceStyle:?];
  if (v5 == self->_impl)
  {
    v9.receiver = self;
    v9.super_class = UIBlurEffect;
    v6 = [(UIVisualEffect *)&v9 effectForUserInterfaceStyle:a3];
  }

  else
  {
    v6 = [objc_alloc(objc_opt_class()) _initWithImplementation:v5];
  }

  v7 = v6;

  return v7;
}

- (BOOL)_isAutomaticStyle
{
  v2 = [(_UIBlurEffectImpl *)self->_impl style];
  result = 1;
  if ((v2 - 4) >= 2 && v2 != 1000)
  {
    return v2 > 4999;
  }

  return result;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = UIBlurEffect;
  v3 = [(UIBlurEffect *)&v6 description];
  v4 = [v3 mutableCopy];

  [(_UIBlurEffectImpl *)self->_impl appendDescriptionTo:v4];

  return v4;
}

@end