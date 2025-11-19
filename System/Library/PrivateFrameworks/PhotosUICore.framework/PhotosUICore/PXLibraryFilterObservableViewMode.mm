@interface PXLibraryFilterObservableViewMode
- (_TtC12PhotosUICore33PXLibraryFilterObservableViewMode)init;
- (_TtC12PhotosUICore33PXLibraryFilterObservableViewMode)initWithViewMode:(int64_t)a3;
- (int64_t)viewMode;
- (void)setViewMode:(int64_t)a3;
@end

@implementation PXLibraryFilterObservableViewMode

- (_TtC12PhotosUICore33PXLibraryFilterObservableViewMode)initWithViewMode:(int64_t)a3
{
  ObjectType = swift_getObjectType();
  sub_1A5241604();
  *(&self->super.isa + OBJC_IVAR____TtC12PhotosUICore33PXLibraryFilterObservableViewMode___viewMode) = a3;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(PXLibraryFilterObservableViewMode *)&v7 init];
}

- (int64_t)viewMode
{
  swift_getKeyPath();
  sub_1A3DB2494();
  v3 = self;
  sub_1A52415D4();

  v4 = *(&v3->super.isa + OBJC_IVAR____TtC12PhotosUICore33PXLibraryFilterObservableViewMode___viewMode);

  return v4;
}

- (void)setViewMode:(int64_t)a3
{
  v4 = self;
  sub_1A3DB2180(a3);
}

- (_TtC12PhotosUICore33PXLibraryFilterObservableViewMode)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end