@interface NSXPCInterface(ICSystemPaperExtension)
+ (id)ic_extensionInterface;
+ (id)ic_hostInterface;
@end

@implementation NSXPCInterface(ICSystemPaperExtension)

+ (id)ic_extensionInterface
{
  if (ic_extensionInterface_onceToken != -1)
  {
    +[NSXPCInterface(ICSystemPaperExtension) ic_extensionInterface];
  }

  v1 = ic_extensionInterface_extensionInterface;

  return v1;
}

+ (id)ic_hostInterface
{
  if (ic_hostInterface_onceToken != -1)
  {
    +[NSXPCInterface(ICSystemPaperExtension) ic_hostInterface];
  }

  v1 = ic_hostInterface_hostInterface;

  return v1;
}

@end