@interface DedupeElementCompat
- (BOOL)isDuplicate;
- (DedupeElementCompat)init;
- (DedupeElementCompat)initWithUiObject:(id)a3 isDuplicate:(BOOL)a4 screenID:(id)a5;
- (void)setIsDuplicate:(BOOL)a3;
@end

@implementation DedupeElementCompat

- (BOOL)isDuplicate
{
  v3 = OBJC_IVAR___DedupeElementCompat_isDuplicate;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsDuplicate:(BOOL)a3
{
  v5 = OBJC_IVAR___DedupeElementCompat_isDuplicate;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (DedupeElementCompat)initWithUiObject:(id)a3 isDuplicate:(BOOL)a4 screenID:(id)a5
{
  if (a5)
  {
    v8 = sub_2702B402C();
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = (self + OBJC_IVAR___DedupeElementCompat_screenID);
  *v10 = 0;
  v10[1] = 0;
  *(&self->super.isa + OBJC_IVAR___DedupeElementCompat_uiObject) = a3;
  *(&self->super.isa + OBJC_IVAR___DedupeElementCompat_isDuplicate) = a4;
  *v10 = v8;
  v10[1] = v9;
  v13.receiver = self;
  v13.super_class = type metadata accessor for DedupeElement();
  v11 = a3;
  return [(DedupeElementCompat *)&v13 init];
}

- (DedupeElementCompat)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end