@interface UIImage(UserSafety)
+ (id)usImageNamed:()UserSafety;
@end

@implementation UIImage(UserSafety)

+ (id)usImageNamed:()UserSafety
{
  v3 = a3;
  v4 = objc_opt_class();
  mainBundle = [MEMORY[0x277D4D390] mainBundle];
  v6 = [v4 imageNamed:v3 inBundle:mainBundle compatibleWithTraitCollection:0];

  return v6;
}

@end