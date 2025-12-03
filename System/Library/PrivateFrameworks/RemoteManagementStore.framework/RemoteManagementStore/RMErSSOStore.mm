@interface RMErSSOStore
+ (BOOL)isPreEnrollmentErSSOStore:(id)store;
- (RMErSSOStore)init;
- (id)appDetailsFromDeclarations:(id)declarations error:(id *)error;
- (void)createErSSOStoreWithDeclarations:(id)declarations chosenBundleID:(id)d personaID:(id)iD isUserEnrollment:(BOOL)enrollment completionHandler:(id)handler;
- (void)linkErSSOStoreToMDMWithProfileIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier completionHandler:(id)handler;
- (void)waitForActiveAndValidDeclarationsInErSSOStoreWithTimeout:(double)timeout completionHandler:(id)handler;
@end

@implementation RMErSSOStore

- (id)appDetailsFromDeclarations:(id)declarations error:(id *)error
{
  v5 = sub_261E725C8();
  selfCopy = self;
  sub_261E665B4(v5);

  v7 = sub_261E72478();

  return v7;
}

- (void)createErSSOStoreWithDeclarations:(id)declarations chosenBundleID:(id)d personaID:(id)iD isUserEnrollment:(BOOL)enrollment completionHandler:(id)handler
{
  v10 = _Block_copy(handler);
  v11 = sub_261E725C8();
  v12 = sub_261E724D8();
  v14 = v13;
  if (iD)
  {
    v15 = sub_261E724D8();
    iD = v16;
  }

  else
  {
    v15 = 0;
  }

  v17 = swift_allocObject();
  *(v17 + 16) = v10;
  selfCopy = self;
  sub_261E5EBB8(v11, v12, v14, v15, iD, enrollment, sub_261E6C5EC, v17);
}

- (void)waitForActiveAndValidDeclarationsInErSSOStoreWithTimeout:(double)timeout completionHandler:(id)handler
{
  ObjectType = swift_getObjectType();
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF6260, &qword_261E756F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v16 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = sub_261E72628();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = self;
  *(v14 + 40) = timeout;
  *(v14 + 48) = sub_261E6C5EC;
  *(v14 + 56) = v12;
  *(v14 + 64) = ObjectType;
  selfCopy = self;
  sub_261E5F950(0, 0, v10, &unk_261E757A8, v14);
}

- (void)linkErSSOStoreToMDMWithProfileIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier completionHandler:(id)handler
{
  ObjectType = swift_getObjectType();
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF6260, &qword_261E756F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v22 - v10;
  v12 = _Block_copy(handler);
  v13 = sub_261E724D8();
  v15 = v14;
  if (accountIdentifier)
  {
    accountIdentifier = sub_261E724D8();
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
  v20[7] = accountIdentifier;
  v20[8] = v17;
  v20[9] = sub_261E6C5EC;
  v20[10] = v18;
  v20[11] = ObjectType;
  selfCopy = self;
  sub_261E5F950(0, 0, v11, &unk_261E75758, v20);
}

+ (BOOL)isPreEnrollmentErSSOStore:(id)store
{
  swift_unknownObjectRetain();
  v4 = sub_261E6C24C(store);
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