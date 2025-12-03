@interface USUIInterventionScreenBullet
+ (id)bullet:(id)bullet imageName:(id)name emoji:(id)emoji;
@end

@implementation USUIInterventionScreenBullet

+ (id)bullet:(id)bullet imageName:(id)name emoji:(id)emoji
{
  emojiCopy = emoji;
  nameCopy = name;
  bulletCopy = bullet;
  v10 = objc_opt_new();
  [v10 setText:bulletCopy];

  [v10 setImageName:nameCopy];
  [v10 setEmoji:emojiCopy];

  return v10;
}

@end