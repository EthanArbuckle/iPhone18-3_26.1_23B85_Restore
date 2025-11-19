@interface SKRFlowExtensionSubsystem
+ (id)initForPlugInKit;
- (SKRFlowExtensionSubsystem)init;
@end

@implementation SKRFlowExtensionSubsystem

+ (id)initForPlugInKit
{
  [objc_opt_self() _startListening];
  v2 = [objc_allocWithZone(type metadata accessor for FlowExtensionSubsystem()) init];

  return v2;
}

- (SKRFlowExtensionSubsystem)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FlowExtensionSubsystem();
  return [(SKRFlowExtensionSubsystem *)&v3 init];
}

@end