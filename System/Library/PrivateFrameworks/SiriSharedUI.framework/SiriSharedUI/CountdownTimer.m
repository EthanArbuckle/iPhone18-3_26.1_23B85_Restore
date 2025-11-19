@interface CountdownTimer
- (void)notifyDelegate;
@end

@implementation CountdownTimer

- (void)notifyDelegate
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *&self->delegate[8];
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 8);

    v5(ObjectType, v3);
    swift_unknownObjectRelease();
  }
}

@end