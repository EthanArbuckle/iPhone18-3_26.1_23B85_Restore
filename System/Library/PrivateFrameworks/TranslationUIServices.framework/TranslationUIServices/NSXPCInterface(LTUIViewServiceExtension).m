@interface NSXPCInterface(LTUIViewServiceExtension)
+ (id)__LTUI_viewServiceExtensionHostInterface;
+ (id)__LTUI_viewServiceExtensionInterface;
@end

@implementation NSXPCInterface(LTUIViewServiceExtension)

+ (id)__LTUI_viewServiceExtensionInterface
{
  if (__LTUI_viewServiceExtensionInterface_onceToken != -1)
  {
    +[NSXPCInterface(LTUIViewServiceExtension) __LTUI_viewServiceExtensionInterface];
  }

  v1 = __LTUI_viewServiceExtensionInterface_interface;

  return v1;
}

+ (id)__LTUI_viewServiceExtensionHostInterface
{
  if (__LTUI_viewServiceExtensionHostInterface_onceToken != -1)
  {
    +[NSXPCInterface(LTUIViewServiceExtension) __LTUI_viewServiceExtensionHostInterface];
  }

  v1 = __LTUI_viewServiceExtensionHostInterface_interface;

  return v1;
}

@end