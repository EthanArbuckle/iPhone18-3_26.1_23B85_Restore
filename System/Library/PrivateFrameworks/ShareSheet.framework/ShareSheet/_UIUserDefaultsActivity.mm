@interface _UIUserDefaultsActivity
- (_UIUserDefaultsActivity)initWithActivityCategory:(int64_t)category;
- (_UIUserDefaultsActivity)initWithUserDefaults:(id)defaults activityCategory:(int64_t)category;
- (id)_actionImage;
- (id)_activityImage;
- (id)_systemImageName;
- (id)activityTitle;
@end

@implementation _UIUserDefaultsActivity

- (_UIUserDefaultsActivity)initWithActivityCategory:(int64_t)category
{
  v5.receiver = self;
  v5.super_class = _UIUserDefaultsActivity;
  result = [(UIActivity *)&v5 init];
  if (result)
  {
    result->_activityCategory = category;
  }

  return result;
}

- (_UIUserDefaultsActivity)initWithUserDefaults:(id)defaults activityCategory:(int64_t)category
{
  defaultsCopy = defaults;
  v8 = [(_UIUserDefaultsActivity *)self initWithActivityCategory:category];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_userDefaults, defaults);
  }

  return v9;
}

- (id)activityTitle
{
  v2 = _ShareSheetBundle();
  v3 = [v2 localizedStringForKey:@"More" value:@"More" table:@"Localizable"];

  return v3;
}

- (id)_activityImage
{
  if (_activityImage_onceToken != -1)
  {
    [_UIUserDefaultsActivity _activityImage];
  }

  v3 = _activityImage___image;

  return v3;
}

- (id)_actionImage
{
  v3 = objc_opt_class();
  v4 = MEMORY[0x1E69DCAB8];
  v5 = _ShareSheetBundle();
  v6 = [v4 imageNamed:@"UIActivityUserDefaults" inBundle:v5];
  contentSizeCategory = [(UIActivity *)self contentSizeCategory];
  v8 = [v3 _actionImageForActionRepresentationImage:v6 contentSizeCategory:contentSizeCategory];

  return v8;
}

- (id)_systemImageName
{
  if ([(_UIUserDefaultsActivity *)self activityCategory])
  {
    return 0;
  }

  else
  {
    return @"ellipsis";
  }
}

@end