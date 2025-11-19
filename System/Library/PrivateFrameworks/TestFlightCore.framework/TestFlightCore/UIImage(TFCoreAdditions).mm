@interface UIImage(TFCoreAdditions)
+ (id)tf_imageNamed:()TFCoreAdditions compatibleWithTraitCollection:;
@end

@implementation UIImage(TFCoreAdditions)

+ (id)tf_imageNamed:()TFCoreAdditions compatibleWithTraitCollection:
{
  v5 = MEMORY[0x277D755B8];
  v6 = a4;
  v7 = a3;
  v8 = +[TFBundle frameworkBundle];
  v9 = [v5 imageNamed:v7 inBundle:v8 compatibleWithTraitCollection:v6];

  return v9;
}

@end