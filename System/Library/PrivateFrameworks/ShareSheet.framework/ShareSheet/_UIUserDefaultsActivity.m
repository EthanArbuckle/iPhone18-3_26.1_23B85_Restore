@interface _UIUserDefaultsActivity
- (_UIUserDefaultsActivity)initWithActivityCategory:(int64_t)a3;
- (_UIUserDefaultsActivity)initWithUserDefaults:(id)a3 activityCategory:(int64_t)a4;
- (id)_actionImage;
- (id)_activityImage;
- (id)_systemImageName;
- (id)activityTitle;
@end

@implementation _UIUserDefaultsActivity

- (_UIUserDefaultsActivity)initWithActivityCategory:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = _UIUserDefaultsActivity;
  result = [(UIActivity *)&v5 init];
  if (result)
  {
    result->_activityCategory = a3;
  }

  return result;
}

- (_UIUserDefaultsActivity)initWithUserDefaults:(id)a3 activityCategory:(int64_t)a4
{
  v7 = a3;
  v8 = [(_UIUserDefaultsActivity *)self initWithActivityCategory:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_userDefaults, a3);
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
  v7 = [(UIActivity *)self contentSizeCategory];
  v8 = [v3 _actionImageForActionRepresentationImage:v6 contentSizeCategory:v7];

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