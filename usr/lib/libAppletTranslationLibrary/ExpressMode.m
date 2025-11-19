@interface ExpressMode
+ (BOOL)applyAssertionConfiguration:(id)a3 toSecureElement:(id)a4 inSessionWithPassUniqueIDs:(id)a5 hasActivatedApplets:(BOOL *)a6 performActivations:(BOOL)a7 useLegacyBehavior:(BOOL)a8 error:(id *)a9;
+ (BOOL)applyConfiguration:(id)a3 toSecureElement:(id)a4 inSessionWithAID:(id)a5 hasActivatedApplets:(BOOL *)a6 performActivations:(BOOL)a7 useLegacyBehavior:(BOOL)a8 error:(id *)a9;
+ (BOOL)getFastPathWithPassInformation:(id)a3 fastPathOut:(BOOL *)a4 useLegacyBehavior:(BOOL)a5 error:(id *)a6;
+ (id)checkCompatibilityWithPassInformation:(id)a3 error:(id *)a4;
+ (id)checkCompatibilityWithPassInformation:(id)a3 useLegacyBehavior:(BOOL)a4 error:(id *)a5;
@end

@implementation ExpressMode

+ (id)checkCompatibilityWithPassInformation:(id)a3 useLegacyBehavior:(BOOL)a4 error:(id *)a5
{
  v6 = a3;
  sub_22EFA3414(v6, a4);

  sub_22EF70EBC(0, &qword_27DA9E028, 0x277CBEAC0);
  v7 = sub_22EFB653C();

  return v7;
}

+ (id)checkCompatibilityWithPassInformation:(id)a3 error:(id *)a4
{
  v4 = qword_281477D68;
  v5 = a3;
  if (v4 != -1)
  {
    swift_once();
  }

  sub_22EF85014(v5, 1, 0);
  v7 = v6;

  sub_22EF71704(v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
  v8 = sub_22EFB653C();

  return v8;
}

+ (BOOL)getFastPathWithPassInformation:(id)a3 fastPathOut:(BOOL *)a4 useLegacyBehavior:(BOOL)a5 error:(id *)a6
{
  v8 = a3;
  sub_22EFA35A4(v8, a4, a5);

  return 1;
}

+ (BOOL)applyConfiguration:(id)a3 toSecureElement:(id)a4 inSessionWithAID:(id)a5 hasActivatedApplets:(BOOL *)a6 performActivations:(BOOL)a7 useLegacyBehavior:(BOOL)a8 error:(id *)a9
{
  v12 = a5;
  if (a5)
  {
    v15 = a3;
    v16 = a4;
    v17 = v12;
    v12 = sub_22EFB61DC();
    v19 = v18;
  }

  else
  {
    v20 = a3;
    v21 = a4;
    v19 = 0xF000000000000000;
  }

  sub_22EFA60A4(a3, a4, v12, v19, a6, a7, a8);

  sub_22EF708B4(v12, v19);
  return 1;
}

+ (BOOL)applyAssertionConfiguration:(id)a3 toSecureElement:(id)a4 inSessionWithPassUniqueIDs:(id)a5 hasActivatedApplets:(BOOL *)a6 performActivations:(BOOL)a7 useLegacyBehavior:(BOOL)a8 error:(id *)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  sub_22EFA783C(v14, v15, a5, a6, a7, a8);

  return 1;
}

@end