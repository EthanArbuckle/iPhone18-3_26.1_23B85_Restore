@interface UIImage(SensitiveContentAnalysis)
+ (id)scImageNamed:()SensitiveContentAnalysis;
@end

@implementation UIImage(SensitiveContentAnalysis)

+ (id)scImageNamed:()SensitiveContentAnalysis
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = +[SCUIResources mainBundle];
  v6 = [v4 imageNamed:v3 inBundle:v5 compatibleWithTraitCollection:0];

  return v6;
}

@end