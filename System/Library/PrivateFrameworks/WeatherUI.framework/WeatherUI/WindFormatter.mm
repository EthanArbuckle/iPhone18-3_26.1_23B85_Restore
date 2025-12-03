@interface WindFormatter
- (NSLocale)locale;
- (void)setLocale:(id)locale;
@end

@implementation WindFormatter

- (NSLocale)locale
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07890);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  selfCopy = self;
  WindFormatter.locale.getter(v5);

  v7 = sub_1BCE19280();
  v8 = 0;
  if (__swift_getEnumTagSinglePayload(v5, 1, v7) != 1)
  {
    v8 = sub_1BCE19140();
    (*(*(v7 - 8) + 8))(v5, v7);
  }

  return v8;
}

- (void)setLocale:(id)locale
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07890);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  if (locale)
  {
    sub_1BCE19170();
    v8 = sub_1BCE19280();
    v9 = 0;
  }

  else
  {
    v8 = sub_1BCE19280();
    v9 = 1;
  }

  __swift_storeEnumTagSinglePayload(v7, v9, 1, v8);
  selfCopy = self;
  WindFormatter.locale.setter(v7);
}

@end