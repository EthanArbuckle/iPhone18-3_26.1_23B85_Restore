@interface PXEditAppDependencyManager
+ (void)addPendingEditsRequestProviderDependency:(id)dependency;
@end

@implementation PXEditAppDependencyManager

+ (void)addPendingEditsRequestProviderDependency:(id)dependency
{
  swift_unknownObjectRetain();
  sub_1B36F932C(dependency);

  swift_unknownObjectRelease();
}

@end