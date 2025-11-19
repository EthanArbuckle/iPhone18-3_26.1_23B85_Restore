@interface DisplayLink
- (void)_displayLinkFired;
@end

@implementation DisplayLink

- (void)_displayLinkFired
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *&self->delegate[8];
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 8);

    v5(v6, ObjectType, v3);
    swift_unknownObjectRelease();
  }
}

@end