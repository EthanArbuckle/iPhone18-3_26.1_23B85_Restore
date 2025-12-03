@interface STRestrictionsConverter
+ (id)numberByAgePresetKeyExcludingImageGenerationForRestrictions:(id)restrictions;
+ (id)numberByAgePresetKeyForRestrictions:(id)restrictions;
+ (id)updatedRestrictions:(id)restrictions withImageGenerationRestriction:(int64_t)restriction;
+ (id)updatedRestrictions:(id)restrictions withValueByAgePresetKey:(id)key;
+ (int64_t)imageGenerationRestrictionFromRestrictions:(id)restrictions;
- (STRestrictionsConverter)init;
@end

@implementation STRestrictionsConverter

+ (id)numberByAgePresetKeyForRestrictions:(id)restrictions
{
  swift_getObjCClassMetadata();
  restrictionsCopy = restrictions;
  v5 = sub_1B83B6AA4(restrictionsCopy);
  sub_1B83B70B0(sub_1B83B7078, 0, sub_1B83B70A4, 0, v5);

  sub_1B83A1210(0, &qword_1EBA836E8, 0x1E696AD98);
  v6 = sub_1B83DDC6C();

  return v6;
}

+ (id)numberByAgePresetKeyExcludingImageGenerationForRestrictions:(id)restrictions
{
  restrictionsCopy = restrictions;
  restrictionsMutableCopy = [restrictionsCopy restrictionsMutableCopy];
  [restrictionsMutableCopy setAllowImageCreation_];
  numberByAgePresetKeyForRestrictions_ = [self numberByAgePresetKeyForRestrictions_];
  sub_1B83A1210(0, &qword_1EBA836E8, 0x1E696AD98);
  sub_1B83DDC7C();

  v7 = sub_1B83DDC6C();

  return v7;
}

+ (id)updatedRestrictions:(id)restrictions withValueByAgePresetKey:(id)key
{
  v5 = sub_1B83DDC7C();
  restrictionsCopy = restrictions;
  v7 = sub_1B83B91B4(restrictionsCopy, v5);

  return v7;
}

+ (id)updatedRestrictions:(id)restrictions withImageGenerationRestriction:(int64_t)restriction
{
  restrictionsCopy = restrictions;
  restrictionsMutableCopy = [restrictionsCopy restrictionsMutableCopy];
  v7 = restrictionsMutableCopy;
  if (restriction == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = restriction == 1;
  }

  [restrictionsMutableCopy setAllowImageCreation_];

  return v7;
}

+ (int64_t)imageGenerationRestrictionFromRestrictions:(id)restrictions
{
  result = [restrictions allowImageCreation];
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