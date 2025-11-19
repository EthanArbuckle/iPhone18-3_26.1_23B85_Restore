@interface PMPasswordOptionsController
+ (id)makePasswordOptionsViewController;
- (PMPasswordOptionsController)init;
@end

@implementation PMPasswordOptionsController

+ (id)makePasswordOptionsViewController
{
  type metadata accessor for PMPasswordOptionsViewController();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];

  return v2;
}

- (PMPasswordOptionsController)init
{
  v3.receiver = self;
  v3.super_class = PMPasswordOptionsController;
  return [(PMPasswordOptionsController *)&v3 init];
}

@end