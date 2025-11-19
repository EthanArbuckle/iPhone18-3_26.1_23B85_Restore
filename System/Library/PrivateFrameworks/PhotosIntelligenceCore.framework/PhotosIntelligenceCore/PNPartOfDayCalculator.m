@interface PNPartOfDayCalculator
+ (void)partOfDayLocalizedStringsForLocalDate:(id)a3 result:(id)a4;
@end

@implementation PNPartOfDayCalculator

+ (void)partOfDayLocalizedStringsForLocalDate:(id)a3 result:(id)a4
{
  v5 = sub_25E635570();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(a4);
  sub_25E635550();
  ObjCClassMetadata = swift_getObjCClassMetadata();
  sub_25E5F74C4(v9, ObjCClassMetadata, v10);
  (*(v6 + 8))(v9, v5);
}

@end