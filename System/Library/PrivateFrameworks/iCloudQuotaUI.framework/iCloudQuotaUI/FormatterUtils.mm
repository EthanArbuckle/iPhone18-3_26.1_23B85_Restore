@interface FormatterUtils
+ (id)localizedSizeStringFor:(double)for unitStyle:(int64_t)style;
+ (id)totalSizeStringFor:(id)for;
- (_TtC13iCloudQuotaUI14FormatterUtils)init;
@end

@implementation FormatterUtils

+ (id)localizedSizeStringFor:(double)for unitStyle:(int64_t)style
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF858);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  bytes = [objc_opt_self() bytes];
  sub_2756C557C(0, &qword_2809FF868);
  sub_275795B00();
  if (qword_280A0D050 != -1)
  {
    swift_once();
  }

  [qword_280A0D8D8 setUnitStyle_];
  sub_2757983B0();
  (*(v6 + 8))(v8, v5);
  v10 = sub_275797F10();

  return v10;
}

+ (id)totalSizeStringFor:(id)for
{
  sub_2756C557C(0, &qword_2809FD6A0);
  v3 = sub_2757980E0();
  sub_27578360C(v3);

  v4 = sub_275797F10();

  return v4;
}

- (_TtC13iCloudQuotaUI14FormatterUtils)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FormatterUtils();
  return [(FormatterUtils *)&v3 init];
}

@end