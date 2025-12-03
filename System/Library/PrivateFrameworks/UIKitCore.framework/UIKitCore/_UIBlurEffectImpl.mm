@interface _UIBlurEffectImpl
+ (id)implementationFromCoder:(id)coder;
- (BOOL)_needsUpdateForTransitionFromEnvironment:(id)environment toEnvironment:(id)toEnvironment usage:(int64_t)usage;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation _UIBlurEffectImpl

+ (id)implementationFromCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy containsValueForKey:@"UIBlurEffectMaterialStyle"])
  {
    v4 = -[_UIBlurEffectCoreMaterialImpl initWithStyle:]([_UIBlurEffectCoreMaterialImpl alloc], "initWithStyle:", [coderCopy decodeIntegerForKey:@"UIBlurEffectMaterialStyle"]);
LABEL_8:
    v6 = v4;
    goto LABEL_9;
  }

  if ([coderCopy containsValueForKey:@"UIBlurEffectAutomaticStyle"])
  {
    v5 = @"UIBlurEffectAutomaticStyle";
LABEL_7:
    v4 = -[_UIBlurEffectLegacyImpl initWithStyle:tintColor:invertAutomaticStyle:]([_UIBlurEffectLegacyImpl alloc], "initWithStyle:tintColor:invertAutomaticStyle:", [coderCopy decodeIntegerForKey:v5], 0, 0);
    goto LABEL_8;
  }

  if ([coderCopy containsValueForKey:@"UIBlurEffectStyle"])
  {
    v5 = @"UIBlurEffectStyle";
    goto LABEL_7;
  }

  if ([coderCopy containsValueForKey:@"UIBlurEffectInfiniteRadius"])
  {
    v4 = +[_UIBlurEffectAverageImpl sharedInstance];
    goto LABEL_8;
  }

  [coderCopy decodeDoubleForKey:@"UIBlurEffectRadius"];
  v9 = v8;
  [coderCopy decodeDoubleForKey:@"UIBlurEffectScale"];
  v11 = v10;
  if (![coderCopy containsValueForKey:@"UIBlurEffectImageMask"])
  {
    v4 = [[_UIBlurEffectModernImpl alloc] initWithBlurRadius:v9 scale:v11];
    goto LABEL_8;
  }

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UIBlurEffectImageMask"];
  v6 = -[_UIBlurEffectVariableImpl initWithBaseRadius:imageMask:scale:allowAXAdaptation:]([_UIBlurEffectVariableImpl alloc], "initWithBaseRadius:imageMask:scale:allowAXAdaptation:", v12, [coderCopy _ui_decodeBoolForKey:@"UIBlurEffectAllowAXAdaptation" defaultValue:1], v9, v11);

LABEL_9:

  return v6;
}

- (unint64_t)hash
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIBlurEffect.m" lineNumber:471 description:@"Subclass must implement"];

  return 0;
}

- (BOOL)isEqual:(id)equal
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIBlurEffect.m" lineNumber:477 description:@"Subclass must implement"];

  return 0;
}

- (BOOL)_needsUpdateForTransitionFromEnvironment:(id)environment toEnvironment:(id)toEnvironment usage:(int64_t)usage
{
  environmentCopy = environment;
  toEnvironmentCopy = toEnvironment;
  allowsDithering = [environmentCopy allowsDithering];
  if (allowsDithering == [toEnvironmentCopy allowsDithering] && (v9 = objc_msgSend(environmentCopy, "blurQuality"), v9 == objc_msgSend(toEnvironmentCopy, "blurQuality")) && (v10 = objc_msgSend(environmentCopy, "reducedTransperancy"), v10 == objc_msgSend(toEnvironmentCopy, "reducedTransperancy")))
  {
    traitCollection = [environmentCopy traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];
    traitCollection2 = [toEnvironmentCopy traitCollection];
    v11 = userInterfaceIdiom != [traitCollection2 userInterfaceIdiom];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

@end