@interface NSCharacterSet(CRCharacterSet)
+ (id)_crArabicCombiningDiacriticCharacterSet;
+ (id)_crArabicDiacriticCharacterSet;
+ (id)_crArabicDigitCharacterSet;
+ (id)_crArabicTanweenDiacriticCharacterSet;
+ (id)_crBasicArabicCharacterSet;
+ (id)_crBiDiMirroredCharacterSet;
+ (id)_crJapaneseKoreanAsUnknownScriptCharacterSet;
+ (id)_crUnknownScriptCharacterSet;
@end

@implementation NSCharacterSet(CRCharacterSet)

+ (id)_crUnknownScriptCharacterSet
{
  if (qword_1ED95FF08 != -1)
  {
    dispatch_once(&qword_1ED95FF08, &__block_literal_global_186);
  }

  v1 = qword_1ED95FF10;

  return v1;
}

+ (id)_crJapaneseKoreanAsUnknownScriptCharacterSet
{
  if (qword_1ED95FF18 != -1)
  {
    dispatch_once(&qword_1ED95FF18, &__block_literal_global_190);
  }

  v1 = qword_1ED95FF20;

  return v1;
}

+ (id)_crBiDiMirroredCharacterSet
{
  if (qword_1ED95FF28 != -1)
  {
    dispatch_once(&qword_1ED95FF28, &__block_literal_global_192);
  }

  v1 = qword_1ED95FF30;

  return v1;
}

+ (id)_crBasicArabicCharacterSet
{
  if (qword_1ED95FF38 != -1)
  {
    dispatch_once(&qword_1ED95FF38, &__block_literal_global_197);
  }

  v1 = qword_1ED95FF40;

  return v1;
}

+ (id)_crArabicDigitCharacterSet
{
  if (qword_1ED95FF48 != -1)
  {
    dispatch_once(&qword_1ED95FF48, &__block_literal_global_317);
  }

  v1 = qword_1ED95FF50;

  return v1;
}

+ (id)_crArabicDiacriticCharacterSet
{
  if (qword_1ED95FF58 != -1)
  {
    dispatch_once(&qword_1ED95FF58, &__block_literal_global_322);
  }

  v1 = qword_1ED95FF60;

  return v1;
}

+ (id)_crArabicTanweenDiacriticCharacterSet
{
  if (qword_1ED95FF68 != -1)
  {
    dispatch_once(&qword_1ED95FF68, &__block_literal_global_351);
  }

  v1 = qword_1ED95FF70;

  return v1;
}

+ (id)_crArabicCombiningDiacriticCharacterSet
{
  if (qword_1ED95FF78 != -1)
  {
    dispatch_once(&qword_1ED95FF78, &__block_literal_global_356);
  }

  v1 = qword_1ED95FF80;

  return v1;
}

@end