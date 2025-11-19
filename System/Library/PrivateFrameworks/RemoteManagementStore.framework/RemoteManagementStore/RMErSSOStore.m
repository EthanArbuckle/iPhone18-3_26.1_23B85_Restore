@interface RMErSSOStore
+ (BOOL)isPreEnrollmentErSSOStore:(id)a3;
- (RMErSSOStore)init;
- (id)appDetailsFromDeclarations:(id)a3 error:(id *)a4;
- (void)createErSSOStoreWithDeclarations:(id)a3 chosenBundleID:(id)a4 personaID:(id)a5 isUserEnrollment:(BOOL)a6 completionHandler:(id)a7;
- (void)linkErSSOStoreToMDMWithProfileIdentifier:(id)a3 accountIdentifier:(id)a4 completionHandler:(id)a5;
- (void)waitForActiveAndValidDeclarationsInErSSOStoreWithTimeout:(double)a3 completionHandler:(id)a4;
@end

@implementation RMErSSOStore

- (id)appDetailsFromDeclarations:(id)a3 error:(id *)a4
{
  v5 = sub_261E725C8();
  v6 = self;
  sub_261E665B4(v5);

  v7 = sub_261E72478();

  return v7;
}

- (void)createErSSOStoreWithDeclarations:(id)a3 chosenBundleID:(id)a4 personaID:(id)a5 isUserEnrollment:(BOOL)a6 completionHandler:(id)a7
{
  v10 = _Block_copy(a7);
  v11 = sub_261E725C8();
  v12 = sub_261E724D8();
  v14 = v13;
  if (a5)
  {
    v15 = sub_261E724D8();
    a5 = v16;
  }

  else
  {
    v15 = 0;
  }

  v17 = swift_allocObject();
  *(v17 + 16) = v10;
  v18 = self;
  sub_261E5EBB8(v11, v12, v14, v15, a5, a6, sub_261E6C5EC, v17);
}

- (void)waitForActiveAndValidDeclarationsInErSSOStoreWithTimeout:(double)a3 completionHandler:(id)a4
{
  ObjectType = swift_getObjectType();
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF6260, &qword_261E756F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v16 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = sub_261E72628();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = self;
  *(v14 + 40) = a3;
  *(v14 + 48) = sub_261E6C5EC;
  *(v14 + 56) = v12;
  *(v14 + 64) = ObjectType;
  v15 = self;
  sub_261E5F950(0, 0, v10, &unk_261E757A8, v14);
}

- (void)linkErSSOStoreToMDMWithProfileIdentifier:(id)a3 accountIdentifier:(id)a4 completionHandler:(id)a5
{
  ObjectType = swift_getObjectType();
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF6260, &qword_261E756F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v22 - v10;
  v12 = _Block_copy(a5);
  v13 = sub_261E724D8();
  v15 = v14;
  if (a4)
  {
    a4 = sub_261E724D8();
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = swift_allocObject();
  *(v18 + 16) = v12;
  v19 = sub_261E72628();
  (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = self;
  v20[5] = v13;
  v20[6] = v15;
  v20[7] = a4;
  v20[8] = v17;
  v20[9] = sub_261E6C5EC;
  v20[10] = v18;
  v20[11] = ObjectType;
  v21 = self;
  sub_261E5F950(0, 0, v11, &unk_261E75758, v20);
}

+ (BOOL)isPreEnrollmentErSSOStore:(id)a3
{
  swift_unknownObjectRetain();
  v4 = sub_261E6C24C(a3);
  swift_unknownObjectRelease();
  return v4 & 1;
}

- (RMErSSOStore)init
{
  v3.receiver = self;
  v3.super_class = RMErSSOStore;
  return [(RMErSSOStore *)&v3 init];
}

@end