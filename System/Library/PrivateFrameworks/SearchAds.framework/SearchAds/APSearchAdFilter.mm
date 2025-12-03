@interface APSearchAdFilter
+ (void)setFilter:(id)filter;
- (APSearchAdFilter)filterWithAds:(id)ads;
- (APSearchAdFilter)init;
@end

@implementation APSearchAdFilter

+ (void)setFilter:(id)filter
{
  swift_beginAccess();
  v4 = qword_2810C4360;
  qword_2810C4360 = filter;
  filterCopy = filter;
}

- (APSearchAdFilter)filterWithAds:(id)ads
{
  sub_264E52098();
  v4 = sub_264E563D4();
  v5 = *&self->filter[OBJC_IVAR___APSearchAdFilter_filter + 16];
  v6 = *&self->filter[OBJC_IVAR___APSearchAdFilter_filter + 24];
  sub_264E514BC((&self->super.isa + OBJC_IVAR___APSearchAdFilter_filter), v5);
  v7 = *(v6 + 8);
  selfCopy = self;
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