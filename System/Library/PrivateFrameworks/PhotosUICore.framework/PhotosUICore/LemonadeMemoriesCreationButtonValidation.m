@interface LemonadeMemoriesCreationButtonValidation
- (_TtC12PhotosUICore40LemonadeMemoriesCreationButtonValidation)init;
- (_TtC12PhotosUICore40LemonadeMemoriesCreationButtonValidation)initWithPhotoLibrary:(id)a3;
- (id)observeMemoryCreationButtonAvailabilityWithUpdateHandler:(id)a3;
- (void)fetchMemoryCreationButtonAvailabilityWithCompletionHandler:(id)a3;
- (void)invalidateObservationFor:(id)a3;
@end

@implementation LemonadeMemoriesCreationButtonValidation

- (_TtC12PhotosUICore40LemonadeMemoriesCreationButtonValidation)initWithPhotoLibrary:(id)a3
{
  *(&self->super.isa + OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesCreationButtonValidation____lazy_storage___availabilityManager) = 0;
  v4 = OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesCreationButtonValidation_logger;
  v5 = a3;
  v6 = sub_1A3C4A780();
  v7 = sub_1A5246F24();
  (*(*(v7 - 8) + 16))(self + v4, v6, v7);
  v8 = OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesCreationButtonValidation_updateHandlers;
  *(&self->super.isa + v8) = sub_1A480CB3C(MEMORY[0x1E69E7CC0]);
  *(&self->super.isa + OBJC_IVAR____TtC12PhotosUICore40LemonadeMemoriesCreationButtonValidation_photoLibrary) = v5;
  v10.receiver = self;
  v10.super_class = type metadata accessor for LemonadeMemoriesCreationButtonValidation();
  return [(LemonadeMemoriesCreationButtonValidation *)&v10 init];
}

- (void)fetchMemoryCreationButtonAvailabilityWithCompletionHandler:(id)a3
{
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1A524CCB4();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1A5365078;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1A5365088;
  v12[5] = v11;
  v13 = self;
  sub_1A403AC74(0, 0, v7, &unk_1A5365098, v12);
}

- (id)observeMemoryCreationButtonAvailabilityWithUpdateHandler:(id)a3
{
  v5 = sub_1A52411C4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _Block_copy(a3);
  _Block_copy(v9);
  v10 = self;
  sub_1A480A830(v10, v9, v8);
  _Block_release(v9);

  v11 = sub_1A5241174();
  (*(v6 + 8))(v8, v5);

  return v11;
}

- (void)invalidateObservationFor:(id)a3
{
  v4 = sub_1A52411C4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - v9;
  sub_1A5241194();
  (*(v5 + 16))(v7, v10, v4);
  swift_beginAccess();
  v11 = self;
  sub_1A480AEC4(0, 0, v7);
  swift_endAccess();
  sub_1A4809ED0();

  (*(v5 + 8))(v10, v4);
}

- (_TtC12PhotosUICore40LemonadeMemoriesCreationButtonValidation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end