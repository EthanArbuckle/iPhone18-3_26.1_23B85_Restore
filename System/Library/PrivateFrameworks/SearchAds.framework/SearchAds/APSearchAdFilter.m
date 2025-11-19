@interface APSearchAdFilter
+ (void)setFilter:(id)a3;
- (APSearchAdFilter)filterWithAds:(id)a3;
- (APSearchAdFilter)init;
@end

@implementation APSearchAdFilter

+ (void)setFilter:(id)a3
{
  swift_beginAccess();
  v4 = qword_2810C4360;
  qword_2810C4360 = a3;
  v5 = a3;
}

- (APSearchAdFilter)filterWithAds:(id)a3
{
  sub_264E52098();
  v4 = sub_264E563D4();
  v5 = *&self->filter[OBJC_IVAR___APSearchAdFilter_filter + 16];
  v6 = *&self->filter[OBJC_IVAR___APSearchAdFilter_filter + 24];
  sub_264E514BC((&self->super.isa + OBJC_IVAR___APSearchAdFilter_filter), v5);
  v7 = *(v6 + 8);
  v8 = self;
  v7(v4, v5, v6);

  v9 = sub_264E563C4();

  return v9;
}

- (APSearchAdFilter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end