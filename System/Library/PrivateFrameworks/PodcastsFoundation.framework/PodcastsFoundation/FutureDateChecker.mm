@interface FutureDateChecker
+ (BOOL)sharedInstanceShouldAssertTestsOnly;
+ (void)setSharedInstanceShouldAssertTestsOnly:(BOOL)only;
- (BOOL)isFutureWithDate:(id)date boundBy:(id)by;
- (BOOL)isFutureWithTimestamp:(double)timestamp;
- (_TtC18PodcastsFoundation17FutureDateChecker)init;
- (double)timestamp:(double)timestamp boundBy:(double)by;
- (double)timestampBoundByNow:(double)now;
- (double)timestampBoundByNowForDate:(id)date;
- (double)timestampForDate:(id)date boundBy:(id)by;
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

+ (void)setSharedInstanceShouldAssertTestsOnly:(BOOL)only
{
  if (qword_1ECAB3740 != -1)
  {
    onlyCopy = only;
    swift_once();
    only = onlyCopy;
  }

  *(qword_1ECAB20C8 + OBJC_IVAR____TtC18PodcastsFoundation17FutureDateChecker_assertOnFutures) = only;
}

- (BOOL)isFutureWithTimestamp:(double)timestamp
{
  selfCopy = self;
  sub_1D9176CDC();
  v6 = sub_1D9163AFC(timestamp, v5);

  return v6;
}

- (BOOL)isFutureWithDate:(id)date boundBy:(id)by
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
  if (by)
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
    selfCopy = self;
    sub_1D9176E2C();
    if (v22(v9, 1, v13) != 1)
    {
      sub_1D8CF5EF8(v9);
    }
  }

  else
  {
    (*(v14 + 32))(v17, v9, v13);
    selfCopy2 = self;
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

- (double)timestamp:(double)timestamp boundBy:(double)by
{
  if (sub_1D9163AFC(timestamp, by))
  {
    return by;
  }

  else
  {
    return timestamp;
  }
}

- (double)timestampForDate:(id)date boundBy:(id)by
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
  selfCopy = self;
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

- (double)timestampBoundByNow:(double)now
{
  selfCopy = self;
  sub_1D9176CDC();
  v6 = v5;
  v7 = sub_1D9163AFC(now, v5);

  if (v7)
  {
    return v6;
  }

  else
  {
    return now;
  }
}

- (double)timestampBoundByNowForDate:(id)date
{
  v4 = sub_1D9176E3C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9176DFC();
  selfCopy = self;
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