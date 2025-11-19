@interface _UIKBFeedbackGeneratorPartner
+ (BOOL)_isVisceralEnabled;
+ (id)feedbackGeneratorWithCoordinateSpace:(id)a3;
+ (id)feedbackGeneratorWithView:(id)a3;
+ (void)cooldownSystemSoundsForObject:(id)a3;
+ (void)preheatSystemSoundsForObject:(id)a3;
@end

@implementation _UIKBFeedbackGeneratorPartner

+ (BOOL)_isVisceralEnabled
{
  if ((+[_UIKBFeedbackGenerator _solariumKeyboardFeedbackEnabled]& 1) != 0)
  {
    LOBYTE(v2) = 1;
    return v2;
  }

  v2 = _os_feature_enabled_impl();
  v4 = MGGetBoolAnswer();
  if (!v2 || !v4)
  {
    return v2;
  }

  return _os_feature_enabled_impl();
}

+ (id)feedbackGeneratorWithView:(id)a3
{
  v3 = a3;
  if (+[_UIKBFeedbackGeneratorPartner _isVisceralEnabled])
  {
    v4 = objc_alloc_init(_UIKBFeedbackGenerator);
  }

  else
  {
    v4 = [(UIFeedbackGenerator *)[_UIKeyboardFeedbackGenerator alloc] initWithView:v3];
  }

  v5 = v4;

  return v5;
}

+ (id)feedbackGeneratorWithCoordinateSpace:(id)a3
{
  v4 = _viewFromCoordinateSpace(a3);
  v5 = [a1 feedbackGeneratorWithView:v4];

  return v5;
}

+ (void)preheatSystemSoundsForObject:(id)a3
{
  v4 = a3;
  if ([objc_opt_class() _shouldPreheatAndCoolSystemSounds])
  {
    v3 = +[UIDevice currentDevice];
    [v3 _registerForSystemSounds:v4];
  }
}

+ (void)cooldownSystemSoundsForObject:(id)a3
{
  v4 = a3;
  if ([objc_opt_class() _shouldPreheatAndCoolSystemSounds])
  {
    v3 = +[UIDevice currentDevice];
    [v3 _unregisterForSystemSounds:v4];
  }
}

@end