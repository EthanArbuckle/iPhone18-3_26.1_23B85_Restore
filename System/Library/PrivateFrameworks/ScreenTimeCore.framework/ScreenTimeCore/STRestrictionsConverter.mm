@interface STRestrictionsConverter
+ (id)numberByAgePresetKeyExcludingImageGenerationForRestrictions:(id)a3;
+ (id)numberByAgePresetKeyForRestrictions:(id)a3;
+ (id)updatedRestrictions:(id)a3 withImageGenerationRestriction:(int64_t)a4;
+ (id)updatedRestrictions:(id)a3 withValueByAgePresetKey:(id)a4;
+ (int64_t)imageGenerationRestrictionFromRestrictions:(id)a3;
- (STRestrictionsConverter)init;
@end

@implementation STRestrictionsConverter

+ (id)numberByAgePresetKeyForRestrictions:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_1B83B6AA4(v4);
  sub_1B83B70B0(sub_1B83B7078, 0, sub_1B83B70A4, 0, v5);

  sub_1B83A1210(0, &qword_1EBA836E8, 0x1E696AD98);
  v6 = sub_1B83DDC6C();

  return v6;
}

+ (id)numberByAgePresetKeyExcludingImageGenerationForRestrictions:(id)a3
{
  v4 = a3;
  v5 = [v4 restrictionsMutableCopy];
  [v5 setAllowImageCreation_];
  v6 = [a1 numberByAgePresetKeyForRestrictions_];
  sub_1B83A1210(0, &qword_1EBA836E8, 0x1E696AD98);
  sub_1B83DDC7C();

  v7 = sub_1B83DDC6C();

  return v7;
}

+ (id)updatedRestrictions:(id)a3 withValueByAgePresetKey:(id)a4
{
  v5 = sub_1B83DDC7C();
  v6 = a3;
  v7 = sub_1B83B91B4(v6, v5);

  return v7;
}

+ (id)updatedRestrictions:(id)a3 withImageGenerationRestriction:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 restrictionsMutableCopy];
  v7 = v6;
  if (a4 == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = a4 == 1;
  }

  [v6 setAllowImageCreation_];

  return v7;
}

+ (int64_t)imageGenerationRestrictionFromRestrictions:(id)a3
{
  result = [a3 allowImageCreation];
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

- (STRestrictionsConverter)init
{
  v3.receiver = self;
  v3.super_class = STRestrictionsConverter;
  return [(STRestrictionsConverter *)&v3 init];
}

@end