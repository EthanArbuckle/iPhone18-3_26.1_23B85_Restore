@interface NewsUserProfileShim
- (NSSet)purchasedTagIDs;
- (_TtC10StocksCoreP33_6F15235305946077A82EB95D8E9A724719NewsUserProfileShim)init;
- (void)prepareForUseWithCompletion:(id)completion;
@end

@implementation NewsUserProfileShim

- (_TtC10StocksCoreP33_6F15235305946077A82EB95D8E9A724719NewsUserProfileShim)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSSet)purchasedTagIDs
{
  v2 = *&self->userProfile[OBJC_IVAR____TtC10StocksCoreP33_6F15235305946077A82EB95D8E9A724719NewsUserProfileShim_userProfile + 16];
  v3 = sub_1DACB71E4();
  sub_1DAA5518C(v3);

  v4 = sub_1DACB97F4();

  return v4;
}

- (void)prepareForUseWithCompletion:(id)completion
{
  v3 = _Block_copy(completion);
  if (v3)
  {
    v4 = v3;
    (*(v3 + 2))();

    _Block_release(v4);
  }
}

@end