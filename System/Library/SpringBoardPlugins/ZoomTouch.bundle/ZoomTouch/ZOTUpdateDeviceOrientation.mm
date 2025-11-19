@interface ZOTUpdateDeviceOrientation
@end

@implementation ZOTUpdateDeviceOrientation

void __ZOTUpdateDeviceOrientation_block_invoke(id a1)
{
  v1 = +[AXSpringBoardServer server];
  [v1 activeApplicationOrientation];
}

@end