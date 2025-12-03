@interface UIBlurEffect
+ (UIBlurEffect)effectWithBlurRadius:(double)radius;
+ (UIBlurEffect)effectWithVariableBlurRadius:(double)radius imageMask:(id)mask;
+ (id)_effectForLightMaterial:(id)material darkMaterial:(id)darkMaterial bundle:(id)bundle;
+ (id)_effectWithBlurRadius:(double)radius scale:(double)scale;
+ (id)_effectWithInfiniteRadius;
+ (id)_effectWithInfiniteRadiusScale:(double)scale;
+ (id)_effectWithStyle:(int64_t)style tintColor:(id)color invertAutomaticStyle:(BOOL)automaticStyle;
+ (id)_effectWithVariableBlurRadius:(double)radius imageMask:(id)mask scale:(double)scale;
+ (id)_effectWithVariableBlurRadius:(double)radius imageMask:(id)mask scale:(double)scale allowingAXAdaptation:(BOOL)adaptation;
- (BOOL)_isAutomaticStyle;
- (BOOL)isEqual:(id)equal;
- (UIBlurEffect)init;
- (UIBlurEffect)initWithCoder:(id)coder;
- (id)_initWithImplementation:(id)implementation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)effectForUserInterfaceStyle:(int64_t)style;
- (id)effectSettings;
- (void)_updateEffectDescriptor:(id)descriptor forEnvironment:(id)environment usage:(int64_t)usage;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIBlurEffect

- (id)effectSettings
{
  v3 = +[_UILegacyEffectConverter sharedConverter];
  v4 = [v3 backdropSettingsForBlurStyle:{-[_UIBlurEffectImpl style](self->_impl, "style")}];

  return v4;
}

+ (id)_effectWithStyle:(int64_t)style tintColor:(id)color invertAutomaticStyle:(BOOL)automaticStyle
{
  automaticStyleCopy = automaticStyle;
  colorCopy = color;
  if ((style & 0xFFFFFFFFFFFFFFFCLL) == 0x4B0 || (style - 6) < 0xF || (style - 1100) <= 2)
  {
    v10 = [[_UIBlurEffectCoreMaterialImpl alloc] initWithStyle:style];
    v11 = [self alloc];
  }

  else
  {
    v9 = [self alloc];
    v10 = [[_UIBlurEffectLegacyImpl alloc] initWithStyle:style tintColor:colorCopy invertAutomaticStyle:automaticStyleCopy];
    v11 = v9;
  }

  v12 = [v11 _initWithImplementation:v10];

  return v12;
}

+ (UIBlurEffect)effectWithBlurRadius:(double)radius
{
  v4 = [self alloc];
  v5 = [[_UIBlurEffectModernImpl alloc] initWithBlurRadius:radius scale:0.0];
  v6 = [v4 _initWithImplementation:v5];

  return v6;
}

+ (id)_effectWithBlurRadius:(double)radius scale:(double)scale
{
  v6 = [self alloc];
  v7 = [[_UIBlurEffectModernImpl alloc] initWithBlurRadius:radius scale:scale];
  v8 = [v6 _initWithImplementation:v7];

  return v8;
}

+ (UIBlurEffect)effectWithVariableBlurRadius:(double)radius imageMask:(id)mask
{
  maskCopy = mask;
  v7 = [self alloc];
  v8 = [[_UIBlurEffectVariableImpl alloc] initWithBaseRadius:maskCopy imageMask:1 scale:radius allowAXAdaptation:0.0];

  v9 = [v7 _initWithImplementation:v8];

  return v9;
}

+ (id)_effectWithVariableBlurRadius:(double)radius imageMask:(id)mask scale:(double)scale
{
  maskCopy = mask;
  v9 = [self alloc];
  v10 = [[_UIBlurEffectVariableImpl alloc] initWithBaseRadius:maskCopy imageMask:1 scale:radius allowAXAdaptation:scale];

  v11 = [v9 _initWithImplementation:v10];

  return v11;
}

+ (id)_effectWithVariableBlurRadius:(double)radius imageMask:(id)mask scale:(double)scale allowingAXAdaptation:(BOOL)adaptation
{
  adaptationCopy = adaptation;
  maskCopy = mask;
  v11 = [self alloc];
  v12 = [[_UIBlurEffectVariableImpl alloc] initWithBaseRadius:maskCopy imageMask:adaptationCopy scale:radius allowAXAdaptation:scale];

  v13 = [v11 _initWithImplementation:v12];

  return v13;
}

+ (id)_effectForLightMaterial:(id)material darkMaterial:(id)darkMaterial bundle:(id)bundle
{
  bundleCopy = bundle;
  darkMaterialCopy = darkMaterial;
  v10 = _UICoreMaterialSanitizeMaterial(material);
  v11 = _UICoreMaterialSanitizeMaterial(darkMaterialCopy);

  if (v10 | v11)
  {
    v13 = [[_UIBlurEffectCoreMaterialImpl alloc] initWithLightMaterial:v10 darkMaterial:v11 bundle:bundleCopy];
    v12 = [[self alloc] _initWithImplementation:v13];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)_effectWithInfiniteRadius
{
  v2 = [self alloc];
  v3 = +[_UIBlurEffectAverageImpl sharedInstance];
  v4 = [v2 _initWithImplementation:v3];

  return v4;
}

+ (id)_effectWithInfiniteRadiusScale:(double)scale
{
  v4 = [self alloc];
  v5 = [[_UIBlurEffectAverageImpl alloc] initWithScale:scale];
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

- (id)_initWithImplementation:(id)implementation
{
  implementationCopy = implementation;
  v9.receiver = self;
  v9.super_class = UIBlurEffect;
  v6 = [(UIBlurEffect *)&v9 init];
  p_isa = &v6->super.super.isa;
  if (v6)
  {
    objc_storeStrong(&v6->_impl, implementation);
    [p_isa[1] setEffect:p_isa];
  }

  return p_isa;
}

- (UIBlurEffect)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = UIBlurEffect;
  v5 = [(UIVisualEffect *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [_UIBlurEffectImpl implementationFromCoder:coderCopy];
    impl = v5->_impl;
    v5->_impl = v6;

    [(_UIBlurEffectImpl *)v5->_impl setEffect:v5];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = UIBlurEffect;
  coderCopy = coder;
  [(UIVisualEffect *)&v5 encodeWithCoder:coderCopy];
  [(_UIBlurEffectImpl *)self->_impl encodeWithCoder:coderCopy, v5.receiver, v5.super_class];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  p_isa = &equalCopy->super.super.isa;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else if (equalCopy && [(UIBlurEffect *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v6 = [p_isa[1] isEqual:self->_impl];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_updateEffectDescriptor:(id)descriptor forEnvironment:(id)environment usage:(int64_t)usage
{
  descriptorCopy = descriptor;
  impl = self->_impl;
  environmentCopy = environment;
  [(_UIBlurEffectImpl *)impl _updateEffectDescriptor:descriptorCopy forEnvironment:environmentCopy usage:usage];
  LODWORD(impl) = [environmentCopy allowsBlurring];

  if (impl)
  {
    [descriptorCopy setDisableInPlaceFiltering:1];
  }

  if (usage == 1)
  {
    [descriptorCopy setAllowsVibrancyInContent:1];
    [descriptorCopy setLayerHitTestsAsOpaque:1];
  }
}

- (id)copyWithZone:(_NSZone *)zone
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

- (id)effectForUserInterfaceStyle:(int64_t)style
{
  v5 = [(_UIBlurEffectImpl *)self->_impl implementationForUserInterfaceStyle:?];
  if (v5 == self->_impl)
  {
    v9.receiver = self;
    v9.super_class = UIBlurEffect;
    v6 = [(UIVisualEffect *)&v9 effectForUserInterfaceStyle:style];
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
  style = [(_UIBlurEffectImpl *)self->_impl style];
  result = 1;
  if ((style - 4) >= 2 && style != 1000)
  {
    return style > 4999;
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