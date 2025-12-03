@interface VFXSceneLoadOptions
- (MTLCommandQueue)commandQueue;
- (MTLDevice)device;
- (NSString)clientID;
- (__CFXWorld)world;
- (void)registerVFX2AuthoringSystems:(BOOL)systems;
- (void)setClientID:(id)d;
@end

@implementation VFXSceneLoadOptions

- (__CFXWorld)world
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (MTLDevice)device
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (MTLCommandQueue)commandQueue
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (NSString)clientID
{
  if (*(self + OBJC_IVAR___VFXSceneLoadOptions_clientID + 8))
  {

    v2 = sub_1AFDFCEC8();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setClientID:(id)d
{
  if (d)
  {
    v4 = sub_1AFDFCEF8();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___VFXSceneLoadOptions_clientID);
  *v6 = v4;
  v6[1] = v5;
}

- (void)registerVFX2AuthoringSystems:(BOOL)systems
{
  v3 = 2147517449;
  if (systems)
  {
    v3 = 0x1008000840FLL;
  }

  *(self + OBJC_IVAR___VFXSceneLoadOptions_systemRegistrationOptions) = v3;
}

@end