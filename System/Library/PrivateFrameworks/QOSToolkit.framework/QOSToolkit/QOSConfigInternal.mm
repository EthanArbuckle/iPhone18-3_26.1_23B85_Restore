@interface QOSConfigInternal
- (NSString)locale;
- (QOSConfigInternal)init;
- (QOSConfigInternal)initWithAppTarget:(int64_t)target locale:(id)locale;
@end

@implementation QOSConfigInternal

- (NSString)locale
{
  if (*(self + OBJC_IVAR___QOSConfigInternal_locale + 8))
  {
    v2 = *(self + OBJC_IVAR___QOSConfigInternal_locale);
    v3 = *(self + OBJC_IVAR___QOSConfigInternal_locale + 8);

    v4 = sub_261464920();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (QOSConfigInternal)initWithAppTarget:(int64_t)target locale:(id)locale
{
  if (locale)
  {
    v6 = sub_261464930();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = (self + OBJC_IVAR___QOSConfigInternal_issuesUrl);
  *v8 = 0;
  v8[1] = 0;
  v9 = (self + OBJC_IVAR___QOSConfigInternal_locationUrl);
  *v9 = 0;
  v9[1] = 0;
  v10 = self + OBJC_IVAR___QOSConfigInternal_issueRefreshFrequencyInSecs;
  *v10 = 0;
  v10[8] = 1;
  v11 = self + OBJC_IVAR___QOSConfigInternal_locationRefreshFrequencyInSecs;
  *v11 = 0;
  v11[8] = 1;
  v12 = self + OBJC_IVAR___QOSConfigInternal_syncStartDelayOffsetInSecs;
  *v12 = 0;
  v12[8] = 1;
  *(self + OBJC_IVAR___QOSConfigInternal_appTarget) = target;
  v13 = (self + OBJC_IVAR___QOSConfigInternal_locale);
  *v13 = v6;
  v13[1] = v7;
  v15.receiver = self;
  v15.super_class = type metadata accessor for QOSConfig();
  return [(QOSConfigInternal *)&v15 init];
}

- (QOSConfigInternal)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end