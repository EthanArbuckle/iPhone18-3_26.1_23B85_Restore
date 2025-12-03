@interface SFFileVaultRecoveryKeyStore
- (SFFileVaultRecoveryKeyStore)init;
- (void)deleteRecoveryKeyForVolumeID:(NSString *)d serialNumber:(NSString *)number completion:(id)completion;
- (void)recoveryKeyForVolumeID:(NSString *)d serialNumber:(NSString *)number completion:(id)completion;
- (void)recoveryKeysForSerialNumber:(NSString *)number completion:(id)completion;
- (void)saveRecoveryKeyWithRequest:(SFFileVaultRecoveryKeySaveRequest *)request completion:(id)completion;
@end

@implementation SFFileVaultRecoveryKeyStore

- (void)saveRecoveryKeyWithRequest:(SFFileVaultRecoveryKeySaveRequest *)request completion:(id)completion
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72130, &qword_26453E608) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = request;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_26453931C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_26453E6A0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_26453E6A8;
  v14[5] = v13;
  requestCopy = request;
  selfCopy = self;
  sub_264535B24(0, 0, v9, &unk_26453E6B0, v14);
}

- (void)recoveryKeyForVolumeID:(NSString *)d serialNumber:(NSString *)number completion:(id)completion
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72130, &qword_26453E608) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = d;
  v13[3] = number;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_26453931C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_26453E680;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_26453E688;
  v16[5] = v15;
  dCopy = d;
  numberCopy = number;
  selfCopy = self;
  sub_264535B24(0, 0, v11, &unk_26453E690, v16);
}

- (void)recoveryKeysForSerialNumber:(NSString *)number completion:(id)completion
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72130, &qword_26453E608) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = number;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_26453931C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_26453E660;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_26453E668;
  v14[5] = v13;
  numberCopy = number;
  selfCopy = self;
  sub_264535B24(0, 0, v9, &unk_26453E670, v14);
}

- (void)deleteRecoveryKeyForVolumeID:(NSString *)d serialNumber:(NSString *)number completion:(id)completion
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF72130, &qword_26453E608) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = d;
  v13[3] = number;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_26453931C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_26453E618;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_26453E628;
  v16[5] = v15;
  dCopy = d;
  numberCopy = number;
  selfCopy = self;
  sub_264535B24(0, 0, v11, &unk_26453E638, v16);
}

- (SFFileVaultRecoveryKeyStore)init
{
  *(&self->super.isa + OBJC_IVAR___SFFileVaultRecoveryKeyStore____lazy_storage___listenerProxy) = 0;
  v3.receiver = self;
  v3.super_class = SFFileVaultRecoveryKeyStore;
  return [(SFFileVaultRecoveryKeyStore *)&v3 init];
}

@end