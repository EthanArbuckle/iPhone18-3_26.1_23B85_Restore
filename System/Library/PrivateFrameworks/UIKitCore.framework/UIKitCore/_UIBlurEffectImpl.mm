@interface _UIBlurEffectImpl
+ (id)implementationFromCoder:(id)a3;
- (BOOL)_needsUpdateForTransitionFromEnvironment:(id)a3 toEnvironment:(id)a4 usage:(int64_t)a5;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation _UIBlurEffectImpl

+ (id)implementationFromCoder:(id)a3
{
  v3 = a3;
  if ([v3 containsValueForKey:@"UIBlurEffectMaterialStyle"])
  {
    v4 = -[_UIBlurEffectCoreMaterialImpl initWithStyle:]([_UIBlurEffectCoreMaterialImpl alloc], "initWithStyle:", [v3 decodeIntegerForKey:@"UIBlurEffectMaterialStyle"]);
LABEL_8:
    v6 = v4;
    goto LABEL_9;
  }

  if ([v3 containsValueForKey:@"UIBlurEffectAutomaticStyle"])
  {
    v5 = @"UIBlurEffectAutomaticStyle";
LABEL_7:
    v4 = -[_UIBlurEffectLegacyImpl initWithStyle:tintColor:invertAutomaticStyle:]([_UIBlurEffectLegacyImpl alloc], "initWithStyle:tintColor:invertAutomaticStyle:", [v3 decodeIntegerForKey:v5], 0, 0);
    goto LABEL_8;
  }

  if ([v3 containsValueForKey:@"UIBlurEffectStyle"])
  {
    v5 = @"UIBlurEffectStyle";
    goto LABEL_7;
  }

  if ([v3 containsValueForKey:@"UIBlurEffectInfiniteRadius"])
  {
    v4 = +[_UIBlurEffectAverageImpl sharedInstance];
    goto LABEL_8;
  }

  [v3 decodeDoubleForKey:@"UIBlurEffectRadius"];
  v9 = v8;
  [v3 decodeDoubleForKey:@"UIBlurEffectScale"];
  v11 = v10;
  if (![v3 containsValueForKey:@"UIBlurEffectImageMask"])
  {
    v4 = [[_UIBlurEffectModernImpl alloc] initWithBlurRadius:v9 scale:v11];
    goto LABEL_8;
  }

  v12 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"UIBlurEffectImageMask"];
  v6 = -[_UIBlurEffectVariableImpl initWithBaseRadius:imageMask:scale:allowAXAdaptation:]([_UIBlurEffectVariableImpl alloc], "initWithBaseRadius:imageMask:scale:allowAXAdaptation:", v12, [v3 _ui_decodeBoolForKey:@"UIBlurEffectAllowAXAdaptation" defaultValue:1], v9, v11);

LABEL_9:

  return v6;
}

- (unint64_t)hash
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"UIBlurEffect.m" lineNumber:471 description:@"Subclass must implement"];

  return 0;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"UIBlurEffect.m" lineNumber:477 description:@"Subclass must implement"];

  return 0;
}

- (BOOL)_needsUpdateForTransitionFromEnvironment:(id)a3 toEnvironment:(id)a4 usage:(int64_t)a5
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 allowsDithering];
  if (v8 == [v7 allowsDithering] && (v9 = objc_msgSend(v6, "blurQuality"), v9 == objc_msgSend(v7, "blurQuality")) && (v10 = objc_msgSend(v6, "reducedTransperancy"), v10 == objc_msgSend(v7, "reducedTransperancy")))
  {
    v13 = [v6 traitCollection];
    v14 = [v13 userInterfaceIdiom];
    v15 = [v7 traitCollection];
    v11 = v14 != [v15 userInterfaceIdiom];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

@end