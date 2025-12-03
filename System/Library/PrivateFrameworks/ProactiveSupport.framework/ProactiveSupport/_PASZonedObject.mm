@interface _PASZonedObject
+ (id)allocWithZone:(_NSZone *)zone;
- (_NSZone)allocationZone;
- (void)dealloc;
@end

@implementation _PASZonedObject

- (_NSZone)allocationZone
{
  v4 = MEMORY[0x1AC566370]();
  if (!v4)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  return v4;
}

- (void)dealloc
{
  v4 = MEMORY[0x1AC566370]();
  v5 = objc_destructInstance(self);
  if (!v5)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  NSZoneFree(v4, v5);
}

+ (id)allocWithZone:(_NSZone *)zone
{
  InstanceSize = class_getInstanceSize(self);
  v6 = NSZoneCalloc(zone, 1uLL, InstanceSize);

  return objc_constructInstance(self, v6);
}

@end