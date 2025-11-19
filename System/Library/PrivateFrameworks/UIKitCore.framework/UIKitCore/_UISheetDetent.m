@interface _UISheetDetent
+ (_UISheetDetent)_largeDetent;
+ (_UISheetDetent)_mediumDetent;
+ (id)_detentWithContainerViewBlock:(id)a3;
@end

@implementation _UISheetDetent

+ (_UISheetDetent)_mediumDetent
{
  if (qword_1ED49D7B0 != -1)
  {
    dispatch_once(&qword_1ED49D7B0, &__block_literal_global_136);
  }

  v3 = _MergedGlobals_1051;

  return v3;
}

+ (_UISheetDetent)_largeDetent
{
  if (qword_1ED49D7C0 != -1)
  {
    dispatch_once(&qword_1ED49D7C0, &__block_literal_global_2_8);
  }

  v3 = qword_1ED49D7B8;

  return v3;
}

+ (id)_detentWithContainerViewBlock:(id)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS____UISheetDetent;
  v3 = objc_msgSendSuper2(&v5, sel__detentWithContainerViewBlock_, a3);

  return v3;
}

@end