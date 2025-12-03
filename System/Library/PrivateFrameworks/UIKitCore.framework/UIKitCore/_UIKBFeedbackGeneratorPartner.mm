@interface _UIKBFeedbackGeneratorPartner
+ (BOOL)_isVisceralEnabled;
+ (id)feedbackGeneratorWithCoordinateSpace:(id)space;
+ (id)feedbackGeneratorWithView:(id)view;
+ (void)cooldownSystemSoundsForObject:(id)object;
+ (void)preheatSystemSoundsForObject:(id)object;
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

+ (id)feedbackGeneratorWithView:(id)view
{
  viewCopy = view;
  if (+[_UIKBFeedbackGeneratorPartner _isVisceralEnabled])
  {
    v4 = objc_alloc_init(_UIKBFeedbackGenerator);
  }

  else
  {
    v4 = [(UIFeedbackGenerator *)[_UIKeyboardFeedbackGenerator alloc] initWithView:viewCopy];
  }

  v5 = v4;

  return v5;
}

+ (id)feedbackGeneratorWithCoordinateSpace:(id)space
{
  v4 = _viewFromCoordinateSpace(space);
  v5 = [self feedbackGeneratorWithView:v4];

  return v5;
}

+ (void)preheatSystemSoundsForObject:(id)object
{
  objectCopy = object;
  if ([objc_opt_class() _shouldPreheatAndCoolSystemSounds])
  {
    v3 = +[UIDevice currentDevice];
    [v3 _registerForSystemSounds:objectCopy];
  }
}

+ (void)cooldownSystemSoundsForObject:(id)object
{
  objectCopy = object;
  if ([objc_opt_class() _shouldPreheatAndCoolSystemSounds])
  {
    v3 = +[UIDevice currentDevice];
    [v3 _unregisterForSystemSounds:objectCopy];
  }
}

@end