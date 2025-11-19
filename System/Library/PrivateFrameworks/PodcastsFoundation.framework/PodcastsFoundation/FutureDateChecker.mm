@interface FutureDateChecker
+ (BOOL)sharedInstanceShouldAssertTestsOnly;
+ (void)setSharedInstanceShouldAssertTestsOnly:(BOOL)a3;
- (BOOL)isFutureWithDate:(id)a3 boundBy:(id)a4;
- (BOOL)isFutureWithTimestamp:(double)a3;
- (_TtC18PodcastsFoundation17FutureDateChecker)init;
- (double)timestamp:(double)a3 boundBy:(double)a4;
- (double)timestampBoundByNow:(double)a3;
- (double)timestampBoundByNowForDate:(id)a3;
- (double)timestampForDate:(id)a3 boundBy:(id)a4;
@end

@implementation FutureDateChecker

+ (BOOL)sharedInstanceShouldAssertTestsOnly
{
  if (qword_1ECAB3740 != -1)
  {
    swift_once();
  }

  return *(qword_1ECAB20C8 + OBJC_IVAR____TtC18PodcastsFoundation17FutureDateChecker_assertOnFutures);
}

+ (void)setSharedInstanceShouldAssertTestsOnly:(BOOL)a3
{
  if (qword_1ECAB3740 != -1)
  {
    v3 = a3;
    swift_once();
    a3 = v3;
  }

  *(qword_1ECAB20C8 + OBJC_IVAR____TtC18PodcastsFoundation17FutureDateChecker_assertOnFutures) = a3;
}

- (BOOL)isFutureWithTimestamp:(double)a3
{
  v4 = self;
  sub_1D9176CDC();
  v6 = sub_1D9163AFC(a3, v5);

  return v6;
}

- (BOOL)isFutureWithDate:(id)a3 boundBy:(id)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  v13 = sub_1D9176E3C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v31 - v19;
  sub_1D9176DFC();
  if (a4)
  {
    sub_1D9176DFC();
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  (*(v14 + 56))(v12, v21, 1, v13);
  sub_1D8CF6B1C(v12, v9);
  v22 = *(v14 + 48);
  if (v22(v9, 1, v13) == 1)
  {
    v23 = self;
    sub_1D9176E2C();
    if (v22(v9, 1, v13) != 1)
    {
      sub_1D8CF5EF8(v9);
    }
  }

  else
  {
    (*(v14 + 32))(v17, v9, v13);
    v24 = self;
  }

  sub_1D9176CCC();
  v26 = v25;
  sub_1D9176CCC();
  v28 = sub_1D9163AFC(v26, v27);

  v29 = *(v14 + 8);
  v29(v17, v13);
  sub_1D8CF5EF8(v12);
  v29(v20, v13);
  return v28;
}

- (double)timestamp:(double)a3 boundBy:(double)a4
{
  if (sub_1D9163AFC(a3, a4))
  {
    return a4;
  }

  else
  {
    return a3;
  }
}

- (double)timestampForDate:(id)a3 boundBy:(id)a4
{
  v5 = sub_1D9176E3C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  sub_1D9176DFC();
  sub_1D9176DFC();
  v13 = self;
  sub_1D9176CCC();
  v15 = v14;
  sub_1D9176CCC();
  v17 = v16;
  v18 = sub_1D9163AFC(v15, v16);

  v19 = *(v6 + 8);
  v19(v9, v5);
  v19(v12, v5);
  if (v18)
  {
    return v17;
  }

  else
  {
    return v15;
  }
}

- (double)timestampBoundByNow:(double)a3
{
  v4 = self;
  sub_1D9176CDC();
  v6 = v5;
  v7 = sub_1D9163AFC(a3, v5);

  if (v7)
  {
    return v6;
  }

  else
  {
    return a3;
  }
}

- (double)timestampBoundByNowForDate:(id)a3
{
  v4 = sub_1D9176E3C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9176DFC();
  v9 = self;
  sub_1D9176CCC();
  v11 = v10;
  sub_1D9176CDC();
  v13 = v12;
  LOBYTE(self) = sub_1D9163AFC(v11, v12);

  (*(v5 + 8))(v8, v4);
  if (self)
  {
    return v13;
  }

  else
  {
    return v11;
  }
}

- (_TtC18PodcastsFoundation17FutureDateChecker)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end