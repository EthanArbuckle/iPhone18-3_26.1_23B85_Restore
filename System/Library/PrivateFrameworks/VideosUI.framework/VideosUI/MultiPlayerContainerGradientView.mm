@interface MultiPlayerContainerGradientView
+ (Class)layerClass;
- (void)layoutSublayersOfLayer:(id)layer;
@end

@implementation MultiPlayerContainerGradientView

+ (Class)layerClass
{
  sub_1E395DFA8();

  return swift_getObjCClassFromMetadata();
}

- (void)layoutSublayersOfLayer:(id)layer
{
  layerCopy = layer;
  selfCopy = self;
  v6 = OUTLINED_FUNCTION_1_26();
  sub_1E3FD78C0(v6);
}

@end