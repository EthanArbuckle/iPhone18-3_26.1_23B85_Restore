@interface USUIInterventionScreenBullet
+ (id)bullet:(id)a3 imageName:(id)a4 emoji:(id)a5;
@end

@implementation USUIInterventionScreenBullet

+ (id)bullet:(id)a3 imageName:(id)a4 emoji:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_new();
  [v10 setText:v9];

  [v10 setImageName:v8];
  [v10 setEmoji:v7];

  return v10;
}

@end