@interface TVOpenInMusicView
- (void)applyLayoutAttributes:(id)a3;
- (void)openInMusicPressed:(id)a3;
- (void)prepareForReuse;
@end

@implementation TVOpenInMusicView

- (void)applyLayoutAttributes:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for TVOpenInMusicView();
  v15.receiver = self;
  v15.super_class = v8;
  v9 = a3;
  v10 = self;
  [(TVOpenInMusicView *)&v15 applyLayoutAttributes:v9];
  v11 = [v9 indexPath];
  sub_20C1331E4();

  v12 = sub_20C133244();
  (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
  v13 = OBJC_IVAR____TtC9SeymourUI17TVOpenInMusicView_indexPath;
  swift_beginAccess();
  sub_20B59784C(v7, v10 + v13);
  swift_endAccess();
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for TVOpenInMusicView();
  v2 = v4.receiver;
  [(TVOpenInMusicView *)&v4 prepareForReuse];
  v3 = &v2[OBJC_IVAR____TtC9SeymourUI17TVOpenInMusicView_shelf];
  *v3 = 0;
  *(v3 + 1) = 0;

  swift_unknownObjectRelease();
}

- (void)openInMusicPressed:(id)a3
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = a3;
    v9 = self;
    swift_unknownObjectRelease();
    if (*(&v9->super.super.super.super.isa + OBJC_IVAR____TtC9SeymourUI17TVOpenInMusicView_shelf))
    {
      v6 = *(&v9->super.super.super._responderFlags + OBJC_IVAR____TtC9SeymourUI17TVOpenInMusicView_shelf);
      ObjectType = swift_getObjectType();
      v8 = *(v6 + 80);
      swift_unknownObjectRetain();
      v8(ObjectType, v6);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

@end