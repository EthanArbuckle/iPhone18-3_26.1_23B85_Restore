@interface GradientView
+ (Class)layerClass;
@end

@implementation GradientView

+ (Class)layerClass
{
  static GradientView.layerClass.getter();

  return swift_getObjCClassFromMetadata();
}

@end